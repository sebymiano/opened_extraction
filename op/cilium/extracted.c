/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
/* Copyright Authors of Cilium */

#define RECORD_FLOW_INFO
#include <bpf/ctx/skb.h>
#include <bpf/api.h>
#include "node_config.h"
#include "lib/common.h"
#include "lib/csum.h"
#include "lib/drop.h"

#ifndef NODEPORT_H_OPENED_FRAMEWORK
#define NODEPORT_H_OPENED_FRAMEWORK
#include "nodeport.h"
#endif 



#ifndef TAILCALL_H_OPENED_FRAMEWORK
#define TAILCALL_H_OPENED_FRAMEWORK
#include "tailcall.h"
#endif 

#ifndef COMMON_H_OPENED_FRAMEWORK
#define COMMON_H_OPENED_FRAMEWORK
#include "common.h"
#endif 

#ifndef EDT_H_OPENED_FRAMEWORK
#define EDT_H_OPENED_FRAMEWORK
#include "edt.h"
#endif 

#ifndef MAPS_H_OPENED_FRAMEWORK
#define MAPS_H_OPENED_FRAMEWORK
#include "maps.h"
#endif 

#ifndef IPV6_H_OPENED_FRAMEWORK
#define IPV6_H_OPENED_FRAMEWORK
#include "ipv6.h"
#endif 

#ifndef ETH_H_OPENED_FRAMEWORK
#define ETH_H_OPENED_FRAMEWORK
#include "eth.h"
#endif 

#ifndef DBG_H_OPENED_FRAMEWORK
#define DBG_H_OPENED_FRAMEWORK
#include "dbg.h"
#endif 

#ifndef TRACE_H_OPENED_FRAMEWORK
#define TRACE_H_OPENED_FRAMEWORK
#include "trace.h"
#endif 

#ifndef L3_H_OPENED_FRAMEWORK
#define L3_H_OPENED_FRAMEWORK
#include "l3.h"
#endif 

#ifndef DROP_H_OPENED_FRAMEWORK
#define DROP_H_OPENED_FRAMEWORK
#include "drop.h"
#endif 

#ifndef IDENTITY_H_OPENED_FRAMEWORK
#define IDENTITY_H_OPENED_FRAMEWORK
#include "identity.h"
#endif 

#ifndef ARP_H_OPENED_FRAMEWORK
#define ARP_H_OPENED_FRAMEWORK
#include "arp.h"
#endif 

#ifndef ENCAP_H_OPENED_FRAMEWORK
#define ENCAP_H_OPENED_FRAMEWORK
#include "encap.h"
#endif 

#ifndef EPS_H_OPENED_FRAMEWORK
#define EPS_H_OPENED_FRAMEWORK
#include "eps.h"
#endif 

#ifndef COMMON_H_OPENED_FRAMEWORK
#define COMMON_H_OPENED_FRAMEWORK
#include "common.h"
#endif 

#ifndef SKB_H_OPENED_FRAMEWORK
#define SKB_H_OPENED_FRAMEWORK
#include "skb.h"
#endif 
#ifndef METRICS_H_OPENED_FRAMEWORK
#define METRICS_H_OPENED_FRAMEWORK
#include "metrics.h"
#endif 

static int __send_drop_notify_res; //from bpf/tests/drop_notify_test.c#L44 OPENED

/* Extracted from 
 /home/sayandes/opened_extraction/examples/cilium/bpf_overlay.c 
 startLine: 401 endLine: 428
 */ 
static __always_inline bool is_esp(struct __ctx_buff *ctx, __u16 proto)
{
	void *data, *data_end;
	__u8 protocol = 0;
	struct ipv6hdr *ip6 __maybe_unused;
	struct iphdr *ip4 __maybe_unused;

	switch (proto) {
#ifdef ENABLE_IPV6
	case bpf_htons(ETH_P_IPV6):
		if (!revalidate_data_pull(ctx, &data, &data_end, &ip6))
			return false;
		protocol = ip6->nexthdr;
		break;
#endif
#ifdef ENABLE_IPV4
	case bpf_htons(ETH_P_IP):
		if (!revalidate_data_pull(ctx, &data, &data_end, &ip4))
			return false;
		protocol = ip4->protocol;
		break;
#endif
	default:
		return false;
	}

	return protocol == IPPROTO_ESP;
}
/* Extracted from 
 /home/sayandes/opened_extraction/examples/cilium/tests/drop_notify_test.c 
 startLine: 47 endLine: 52
 */ 
# if 0
void mock_tail_call(void *ctx, __maybe_unused const void *map, __maybe_unused __u32 index)
{
  /* We can even unit-test the function which is actually called by the tailcall */
  /* within the callback. */
  __send_drop_notify_res = __send_drop_notify(ctx);
}
#endif
/* Extracted from 
 /home/sayandes/opened_extraction/examples/cilium/bpf_overlay.c 
 startLine: 435 endLine: 527
 */ 
int from_overlay(struct __ctx_buff *ctx)
{
	__u16 proto;
	int ret;

	bpf_clear_meta(ctx);
	bpf_skip_nodeport_clear(ctx);

	if (!validate_ethertype(ctx, &proto)) {
		/* Pass unknown traffic to the stack */
		ret = CTX_ACT_OK;
		goto out;
	}

/* We need to handle following possible packets come to this program
 *
 * 1. ESP packets coming from overlay (encrypted and not marked)
 * 2. Non-ESP packets coming from overlay (plain and not marked)
 * 3. Non-ESP packets coming from stack re-inserted by xfrm (plain
 *    and marked with MARK_MAGIC_DECRYPT and has an identity as
 *    well, IPSec mode only)
 *
 * 1. will be traced with TRACE_REASON_ENCRYPTED
 * 2. will be traced without TRACE_REASON_ENCRYPTED
 * 3. will be traced without TRACE_REASON_ENCRYPTED, and with identity
 *
 * Note that 1. contains the ESP packets someone else generated.
 * In that case, we trace it as "encrypted", but it doesn't mean
 * "encrypted by Cilium".
 *
 * When IPSec is disabled, we won't use TRACE_REASON_ENCRYPTED even
 * if the packets are ESP, because it doesn't matter for the
 * non-IPSec mode.
 */
#ifdef ENABLE_IPSEC
	if (is_esp(ctx, proto))
		send_trace_notify(ctx, TRACE_FROM_OVERLAY, 0, 0, 0,
				  ctx->ingress_ifindex, TRACE_REASON_ENCRYPTED,
				  TRACE_PAYLOAD_LEN);
	else
#endif
	{
		__u32 identity = 0;
		enum trace_point obs_point = TRACE_FROM_OVERLAY;

		/* Non-ESP packet marked with MARK_MAGIC_DECRYPT is a packet
		 * re-inserted from the stack.
		 */
		if ((ctx->mark & MARK_MAGIC_HOST_MASK) == MARK_MAGIC_DECRYPT) {
			identity = get_identity(ctx);
			obs_point = TRACE_FROM_STACK;
		}

		send_trace_notify(ctx, obs_point, identity, 0, 0,
				  ctx->ingress_ifindex,
				  TRACE_REASON_UNKNOWN, TRACE_PAYLOAD_LEN);
	}

	switch (proto) {
	case bpf_htons(ETH_P_IPV6):
#ifdef ENABLE_IPV6
		ep_tail_call(ctx, CILIUM_CALL_IPV6_FROM_OVERLAY);
		ret = DROP_MISSED_TAIL_CALL;
#else
		ret = DROP_UNKNOWN_L3;
#endif
		break;

	case bpf_htons(ETH_P_IP):
#ifdef ENABLE_IPV4
		ep_tail_call(ctx, CILIUM_CALL_IPV4_FROM_OVERLAY);
		ret = DROP_MISSED_TAIL_CALL;
#else
		ret = DROP_UNKNOWN_L3;
#endif
		break;

#ifdef ENABLE_VTEP
	case bpf_htons(ETH_P_ARP):
		ep_tail_call(ctx, CILIUM_CALL_ARP);
		ret = DROP_MISSED_TAIL_CALL;
		break;
#endif

	default:
		/* Pass unknown traffic to the stack */
		ret = CTX_ACT_OK;
	}
out:
	if (IS_ERR(ret))
		return send_drop_notify_error(ctx, 0, ret, CTX_ACT_DROP, METRIC_INGRESS);
	return ret;
}

BPF_LICENSE("GPL");
//char _license[] SEC("license") = "GPL";