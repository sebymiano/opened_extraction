/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
/* Copyright Authors of Cilium */

#ifndef __LIB_ENCRYPT_H_
#define __LIB_ENCRYPT_H_

#include <bpf/ctx/skb.h>
#include <bpf/api.h>
#include <linux/if_ether.h>
#include <linux/ip.h>

#include "lib/common.h"

#ifdef ENABLE_IPSEC
/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/lib/encrypt.h,
 Startline: 15,
 Endline: 75,
 Funcname: do_decrypt,
 Input: (struct  __ctx_buff *ctx, __u16 proto),
 Output: int,
 Helpers: [redirect,],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline int
do_decrypt(struct __ctx_buff *ctx, __u16 proto)
{
	void *data, *data_end;
	__u8 protocol = 0;
	bool decrypted;
#ifdef ENABLE_IPV6
	struct ipv6hdr *ip6;
#endif
#ifdef ENABLE_IPV4
	struct iphdr *ip4;
#endif

	decrypted = ((ctx->mark & MARK_MAGIC_HOST_MASK) == MARK_MAGIC_DECRYPT);

	switch (proto) {
#ifdef ENABLE_IPV6
	case bpf_htons(ETH_P_IPV6):
		if (!revalidate_data_pull(ctx, &data, &data_end, &ip6)) {
			ctx->mark = 0;
			return CTX_ACT_OK;
		}
		protocol = ip6->nexthdr;
		break;
#endif
#ifdef ENABLE_IPV4
	case bpf_htons(ETH_P_IP):
		if (!revalidate_data_pull(ctx, &data, &data_end, &ip4)) {
			ctx->mark = 0;
			return CTX_ACT_OK;
		}
		protocol = ip4->protocol;
		break;
#endif
	default:
		return CTX_ACT_OK;
	}

	if (!decrypted) {
		/* Allow all non-ESP packets up the stack per normal case
		 * without encryption enabled.
		 */
		if (protocol != IPPROTO_ESP)
			return CTX_ACT_OK;
		/* Decrypt "key" is determined by SPI */
		ctx->mark = MARK_MAGIC_DECRYPT;
		/* We are going to pass this up the stack for IPsec decryption
		 * but eth_type_trans may already have labeled this as an
		 * OTHERHOST type packet. To avoid being dropped by IP stack
		 * before IPSec can be processed mark as a HOST packet.
		 */
		ctx_change_type(ctx, PACKET_HOST);
		return CTX_ACT_OK;
	}
	ctx->mark = 0;
#ifdef ENABLE_ENDPOINT_ROUTES
	return CTX_ACT_OK;
#else
	return ctx_redirect(ctx, CILIUM_IFINDEX, 0);
#endif /* ENABLE_ROUTING */
}
#else
/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/lib/encrypt.h,
 Startline: 77,
 Endline: 81,
 Funcname: do_decrypt,
 Input: (struct  __ctx_buff  __maybe_unused *ctx, __u16 __maybe_unused proto),
 Output: int,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline int
do_decrypt(struct __ctx_buff __maybe_unused *ctx, __u16 __maybe_unused proto)
{
	return CTX_ACT_OK;
}
#endif /* ENABLE_IPSEC */
#endif /* __LIB_ENCRYPT_H_ */

