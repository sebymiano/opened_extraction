/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
/* Copyright Authors of Cilium */

#ifndef __HASH_H_
#define __HASH_H_

#include "common.h"
#include "jhash.h"

/* The daddr is explicitly excluded from the hash here in order to allow for
 * backend selection to choose the same backend even on different service VIPs.
 */
/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/lib/hash.h,
 Startline: 13,
 Endline: 18,
 Funcname: hash_from_tuple_v4,
 Input: (const struct ipv4_ct_tuple *tuple),
 Output: __u32,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __u32 hash_from_tuple_v4(const struct ipv4_ct_tuple *tuple)
{
	return jhash_3words(tuple->saddr,
			    ((__u32)tuple->dport << 16) | tuple->sport,
			    tuple->nexthdr, HASH_INIT4_SEED);
}

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/lib/hash.h,
 Startline: 20,
 Endline: 35,
 Funcname: hash_from_tuple_v6,
 Input: (const struct ipv6_ct_tuple *tuple),
 Output: __u32,
 Helpers: [],
 Read_maps: [],
 Update_maps: [],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline __u32 hash_from_tuple_v6(const struct ipv6_ct_tuple *tuple)
{
	__u32 a, b, c;

	a = tuple->saddr.p1;
	b = tuple->saddr.p2;
	c = tuple->saddr.p3;
	__jhash_mix(a, b, c);
	a += tuple->saddr.p4;
	b += ((__u32)tuple->dport << 16) | tuple->sport;
	c += tuple->nexthdr;
	__jhash_mix(a, b, c);
	a += HASH_INIT6_SEED;
	__jhash_final(a, b, c);
	return c;
}

#endif /* __HASH_H_ */
