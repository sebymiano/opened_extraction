/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
/* Copyright Authors of Cilium */

#ifndef __BPF_CTX_SKB_H_
#define __BPF_CTX_SKB_H_

#define __ctx_buff		__sk_buff
#define __ctx_is		__ctx_skb

#include "common.h"
#include "../helpers_skb.h"

#ifndef TC_ACT_OK
# define TC_ACT_OK		0
#endif

#ifndef TC_ACT_SHOT
# define TC_ACT_SHOT		2
#endif

#ifndef TC_ACT_REDIRECT
# define TC_ACT_REDIRECT	7
#endif

#define CTX_ACT_OK		TC_ACT_OK
#define CTX_ACT_DROP		TC_ACT_SHOT
#define CTX_ACT_TX		TC_ACT_REDIRECT
#define CTX_ACT_REDIRECT	TC_ACT_REDIRECT

/* Discouraged since prologue will unclone full skb. */
#define CTX_DIRECT_WRITE_OK	0

#define META_PIVOT		field_sizeof(struct __sk_buff, cb)

#define ctx_load_bytes		skb_load_bytes
#define ctx_store_bytes		skb_store_bytes

#define ctx_adjust_hroom	skb_adjust_room

#define ctx_change_type		skb_change_type
#define ctx_change_proto	skb_change_proto
#define ctx_change_tail		skb_change_tail

#define ctx_pull_data		skb_pull_data

#define ctx_get_tunnel_key	skb_get_tunnel_key
#define ctx_set_tunnel_key	skb_set_tunnel_key

#define ctx_event_output	skb_event_output

#define ctx_adjust_meta		({ -ENOTSUPP; })

/* Avoid expensive calls into the kernel flow dissector if it's not an L4
 * hash. We currently only use the hash for debugging. If needed later, we
 * can map it to BPF_FUNC(get_hash_recalc) to get the L4 hash.
 */
#define get_hash(ctx)		ctx->hash
#define get_hash_recalc(ctx)	get_hash(ctx)

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 60,
 Endline: 64,
 Funcname: ctx_redirect,
 Input: (const struct  __sk_buff * ctx __maybe_unused, int ifindex, __u32 flags),
 Output: int,
 Helpers: [redirect,],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused int
ctx_redirect(const struct __sk_buff *ctx __maybe_unused, int ifindex, __u32 flags)
{
	return redirect(ifindex, flags);
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 66,
 Endline: 70,
 Funcname: ctx_redirect_peer,
 Input: (const struct  __sk_buff * ctx __maybe_unused, int ifindex, __u32 flags),
 Output: int,
 Helpers: [redirect,],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused int
ctx_redirect_peer(const struct __sk_buff *ctx __maybe_unused, int ifindex, __u32 flags)
{
	return redirect_peer(ifindex, flags);
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 72,
 Endline: 76,
 Funcname: ctx_adjust_troom,
 Input: (struct  __sk_buff *ctx, const __s32 len_diff),
 Output: int,
 Helpers: [skb_change_tail,],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused int
ctx_adjust_troom(struct __sk_buff *ctx, const __s32 len_diff)
{
	return skb_change_tail(ctx, ctx->len + len_diff, 0);
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 78,
 Endline: 82,
 Funcname: ctx_full_len,
 Input: (const struct  __sk_buff *ctx),
 Output: __u64,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused __u64
ctx_full_len(const struct __sk_buff *ctx)
{
	return ctx->len;
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 84,
 Endline: 88,
 Funcname: ctx_wire_len,
 Input: (const struct  __sk_buff *ctx),
 Output: __u32,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused __u32
ctx_wire_len(const struct __sk_buff *ctx)
{
	return ctx->wire_len;
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 90,
 Endline: 94,
 Funcname: ctx_store_meta,
 Input: (struct  __sk_buff *ctx, const __u32 off, __u32 data),
 Output: void,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused void
ctx_store_meta(struct __sk_buff *ctx, const __u32 off, __u32 data)
{
	ctx->cb[off] = data;
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 96,
 Endline: 100,
 Funcname: ctx_load_meta,
 Input: (const struct  __sk_buff *ctx, const __u32 off),
 Output: __u32,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused __u32
ctx_load_meta(const struct __sk_buff *ctx, const __u32 off)
{
	return ctx->cb[off];
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 102,
 Endline: 106,
 Funcname: ctx_get_protocol,
 Input: (const struct  __sk_buff *ctx),
 Output: __u16,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused __u16
ctx_get_protocol(const struct __sk_buff *ctx)
{
	return (__u16)ctx->protocol;
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/include/bpf/ctx/skb.h,
 Startline: 108,
 Endline: 112,
 Funcname: ctx_get_ifindex,
 Input: (const struct  __sk_buff *ctx),
 Output: __u32,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __maybe_unused __u32
ctx_get_ifindex(const struct __sk_buff *ctx)
{
	return ctx->ifindex;
}

#endif /* __BPF_CTX_SKB_H_ */
