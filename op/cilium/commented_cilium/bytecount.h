/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
/* Copyright Authors of Cilium */

struct {
	__uint(type, BPF_MAP_TYPE_HASH);
	__type(key, __u32);
	__type(value, __u64);
	__uint(max_entries, 1024);
} bytecount_map __section_maps_btf;

/* 
 OPENED COMMENT BEGIN 
 { 
 File: /root/examples/cilium/custom/bytecount.h,
 Startline: 11,
 Endline: 24,
 Funcname: custom_prog,
 Input: (const struct  __ctx_buff *ctx, __u32 identity),
 Output: void,
 Helpers: [map_lookup_elem,map_update_elem,],
 Read_maps: [  bytecount_map,],
 Update_maps: [ bytecount_map,],
 Func Description: TO BE ADDED, 
 Commentor: TO BE ADDED (<name>,<email>) 
 } 
 OPENED COMMENT END 
 */ 
static __always_inline
void custom_prog(const struct __ctx_buff *ctx, __u32 identity)
{
	__u64 len, *bytecount;

	len = ctx_full_len(ctx);

	bytecount = map_lookup_elem(&bytecount_map, &identity);
	if (bytecount)
		__sync_fetch_and_add(bytecount, len);
	else
		/* No entry for endpoint in hashmap, attempt to create one */
		map_update_elem(&bytecount_map, &identity, &len, BPF_ANY);
}
