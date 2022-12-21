; ModuleID = './balancer_kern.bc'
source_filename = "bpf/balancer_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_def = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.____btf_map_ctl_array = type { i32, %struct.ctl_value }
%struct.ctl_value = type { %union.anon }
%union.anon = type { i64 }
%struct.____btf_map_vip_map = type { %struct.vip_definition, %struct.vip_meta }
%struct.vip_definition = type { %union.anon.0, i16, i8 }
%union.anon.0 = type { [4 x i32] }
%struct.vip_meta = type { i32, i32 }
%struct.____btf_map_fallback_cache = type { %struct.flow_key, %struct.real_pos_lru }
%struct.flow_key = type { %union.anon.1, %union.anon.2, %union.anon.3, i8 }
%union.anon.1 = type { [4 x i32] }
%union.anon.2 = type { [4 x i32] }
%union.anon.3 = type { i32 }
%struct.real_pos_lru = type { i32, i64 }
%struct.____btf_map_ch_rings = type { i32, i32 }
%struct.____btf_map_reals = type { i32, %struct.real_definition }
%struct.real_definition = type { %union.anon.4, i8 }
%union.anon.4 = type { [4 x i32] }
%struct.____btf_map_reals_stats = type { i32, %struct.lb_stats }
%struct.lb_stats = type { i64, i64 }
%struct.____btf_map_stats = type { i32, %struct.lb_stats }
%struct.____btf_map_server_id_map = type { i32, i32 }
%struct.xdp_md = type { i32, i32, i32, i32, i32 }
%struct.packet_description = type { %struct.flow_key, i32, i8, i8 }
%struct.eth_hdr = type { [6 x i8], [6 x i8], i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.5 }
%union.anon.5 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@ctl_array = dso_local global %struct.bpf_map_def { i32 2, i32 4, i32 8, i32 16, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !0
@____btf_map_ctl_array = dso_local global %struct.____btf_map_ctl_array zeroinitializer, section ".maps.ctl_array", align 8, !dbg !76
@vip_map = dso_local global %struct.bpf_map_def { i32 1, i32 20, i32 8, i32 512, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !97
@____btf_map_vip_map = dso_local global %struct.____btf_map_vip_map zeroinitializer, section ".maps.vip_map", align 4, !dbg !110
@lru_mapping = dso_local global %struct.bpf_map_def { i32 12, i32 4, i32 4, i32 128, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !134
@fallback_cache = dso_local global %struct.bpf_map_def { i32 9, i32 40, i32 16, i32 1000, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !136
@____btf_map_fallback_cache = dso_local global %struct.____btf_map_fallback_cache zeroinitializer, section ".maps.fallback_cache", align 8, !dbg !138
@ch_rings = dso_local global %struct.bpf_map_def { i32 2, i32 4, i32 4, i32 33554944, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !169
@____btf_map_ch_rings = dso_local global %struct.____btf_map_ch_rings zeroinitializer, section ".maps.ch_rings", align 4, !dbg !171
@reals = dso_local global %struct.bpf_map_def { i32 2, i32 4, i32 20, i32 4096, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !177
@____btf_map_reals = dso_local global %struct.____btf_map_reals zeroinitializer, section ".maps.reals", align 4, !dbg !179
@reals_stats = dso_local global %struct.bpf_map_def { i32 6, i32 4, i32 16, i32 4096, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !193
@____btf_map_reals_stats = dso_local global %struct.____btf_map_reals_stats zeroinitializer, section ".maps.reals_stats", align 8, !dbg !195
@stats = dso_local global %struct.bpf_map_def { i32 6, i32 4, i32 16, i32 1024, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !205
@____btf_map_stats = dso_local global %struct.____btf_map_stats zeroinitializer, section ".maps.stats", align 8, !dbg !207
@server_id_map = dso_local global %struct.bpf_map_def { i32 2, i32 4, i32 4, i32 16777214, i32 0, i32 0, i32 0 }, section "maps", align 4, !dbg !213
@____btf_map_server_id_map = dso_local global %struct.____btf_map_server_id_map zeroinitializer, section ".maps.server_id_map", align 4, !dbg !215
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !221
@llvm.used = appending global [19 x i8*] [i8* bitcast (%struct.____btf_map_ch_rings* @____btf_map_ch_rings to i8*), i8* bitcast (%struct.____btf_map_ctl_array* @____btf_map_ctl_array to i8*), i8* bitcast (%struct.____btf_map_fallback_cache* @____btf_map_fallback_cache to i8*), i8* bitcast (%struct.____btf_map_reals* @____btf_map_reals to i8*), i8* bitcast (%struct.____btf_map_reals_stats* @____btf_map_reals_stats to i8*), i8* bitcast (%struct.____btf_map_server_id_map* @____btf_map_server_id_map to i8*), i8* bitcast (%struct.____btf_map_stats* @____btf_map_stats to i8*), i8* bitcast (%struct.____btf_map_vip_map* @____btf_map_vip_map to i8*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (i32 (%struct.xdp_md*)* @balancer_ingress to i8*), i8* bitcast (%struct.bpf_map_def* @ch_rings to i8*), i8* bitcast (%struct.bpf_map_def* @ctl_array to i8*), i8* bitcast (%struct.bpf_map_def* @fallback_cache to i8*), i8* bitcast (%struct.bpf_map_def* @lru_mapping to i8*), i8* bitcast (%struct.bpf_map_def* @reals to i8*), i8* bitcast (%struct.bpf_map_def* @reals_stats to i8*), i8* bitcast (%struct.bpf_map_def* @server_id_map to i8*), i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* bitcast (%struct.bpf_map_def* @vip_map to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define dso_local i32 @balancer_ingress(%struct.xdp_md* %0) #0 section "xdp-balancer" !dbg !251 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.real_pos_lru, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  call void @llvm.dbg.declare(metadata [4 x i32]* %9, metadata !276, metadata !DIExpression()), !dbg !358
  %10 = alloca %struct.packet_description, align 4
  %11 = alloca %struct.vip_definition, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.real_pos_lru, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [6 x i8], align 1
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !472, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !472, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !472, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata [6 x i8]* %27, metadata !472, metadata !DIExpression()), !dbg !535
  %28 = alloca %struct.packet_description, align 4
  %29 = alloca %struct.vip_definition, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !263, metadata !DIExpression()), !dbg !539
  %38 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 0, !dbg !540
  %39 = load i32, i32* %38, align 4, !dbg !540, !tbaa !541
  %40 = zext i32 %39 to i64, !dbg !546
  %41 = inttoptr i64 %40 to i8*, !dbg !547
  call void @llvm.dbg.value(metadata i8* %41, metadata !264, metadata !DIExpression()), !dbg !548
  %42 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 1, !dbg !549
  %43 = load i32, i32* %42, align 4, !dbg !549, !tbaa !550
  %44 = zext i32 %43 to i64, !dbg !551
  %45 = inttoptr i64 %44 to i8*, !dbg !552
  call void @llvm.dbg.value(metadata i8* %45, metadata !265, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i32 14, metadata !275, metadata !DIExpression()), !dbg !554
  %46 = getelementptr i8, i8* %41, i64 14, !dbg !555
  %47 = icmp ugt i8* %46, %45, !dbg !557
  br i1 %47, label %1494, label %48, !dbg !558

48:                                               ; preds = %1
  %49 = inttoptr i64 %40 to %struct.eth_hdr*, !dbg !559
  call void @llvm.dbg.value(metadata %struct.eth_hdr* %49, metadata !266, metadata !DIExpression()), !dbg !560
  %50 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %49, i64 0, i32 2, !dbg !561
  %51 = load i16, i16* %50, align 2, !dbg !561, !tbaa !562
  switch i16 %51, label %1494 [
    i16 8, label %52
    i16 -8826, label %754
  ], !dbg !565

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %41, metadata !422, metadata !DIExpression()) #5, !dbg !566
  call void @llvm.dbg.value(metadata i64 14, metadata !423, metadata !DIExpression()) #5, !dbg !567
  call void @llvm.dbg.value(metadata i8* %45, metadata !424, metadata !DIExpression()) #5, !dbg !568
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !426, metadata !DIExpression()) #5, !dbg !569
  call void @llvm.dbg.value(metadata %struct.real_definition* null, metadata !429, metadata !DIExpression()) #5, !dbg !570
  %53 = bitcast %struct.packet_description* %28 to i8*, !dbg !571
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %53) #5, !dbg !571
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %53, i8 0, i64 48, i1 false) #5, !dbg !572
  %54 = bitcast %struct.vip_definition* %29 to i8*, !dbg !573
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %54) #5, !dbg !573
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %54, i8 0, i64 20, i1 false) #5, !dbg !574
  %55 = bitcast i32* %30 to i8*, !dbg !575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %55) #5, !dbg !575
  %56 = bitcast i32* %31 to i8*, !dbg !576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56) #5, !dbg !576
  call void @llvm.dbg.value(metadata i32 0, metadata !441, metadata !DIExpression()) #5, !dbg !577
  store i32 0, i32* %31, align 4, !dbg !577, !tbaa !578
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !391, metadata !DIExpression()) #5, !dbg !579
  call void @llvm.dbg.value(metadata i64 14, metadata !393, metadata !DIExpression()) #5, !dbg !580
  call void @llvm.dbg.value(metadata i8* %41, metadata !395, metadata !DIExpression()) #5, !dbg !581
  call void @llvm.dbg.value(metadata i8* %45, metadata !396, metadata !DIExpression()) #5, !dbg !582
  call void @llvm.dbg.value(metadata i8* %46, metadata !400, metadata !DIExpression()) #5, !dbg !583
  %57 = getelementptr i8, i8* %41, i64 34, !dbg !584
  %58 = icmp ugt i8* %57, %45, !dbg !586
  br i1 %58, label %752, label %59, !dbg !587

59:                                               ; preds = %52
  %60 = load i8, i8* %46, align 4, !dbg !588
  %61 = and i8 %60, 15, !dbg !588
  %62 = icmp eq i8 %61, 5, !dbg !590
  br i1 %62, label %63, label %752, !dbg !591

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, i8* %41, i64 15, !dbg !592
  %65 = load i8, i8* %64, align 1, !dbg !592, !tbaa !593
  %66 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 3, !dbg !595
  store i8 %65, i8* %66, align 1, !dbg !596, !tbaa !597
  %67 = getelementptr inbounds i8, i8* %41, i64 23, !dbg !600
  %68 = load i8, i8* %67, align 1, !dbg !600, !tbaa !601
  %69 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 3, !dbg !602
  store i8 %68, i8* %69, align 4, !dbg !603, !tbaa !604
  %70 = getelementptr inbounds i8, i8* %41, i64 16, !dbg !605
  %71 = bitcast i8* %70 to i16*, !dbg !605
  %72 = load i16, i16* %71, align 2, !dbg !605, !tbaa !606
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #5
  call void @llvm.dbg.value(metadata i64 34, metadata !393, metadata !DIExpression()) #5, !dbg !580
  %74 = getelementptr inbounds i8, i8* %41, i64 20, !dbg !607
  %75 = bitcast i8* %74 to i16*, !dbg !607
  %76 = load i16, i16* %75, align 2, !dbg !607, !tbaa !609
  %77 = and i16 %76, -193, !dbg !610
  %78 = icmp eq i16 %77, 0, !dbg !610
  br i1 %78, label %79, label %752, !dbg !611

79:                                               ; preds = %63
  %80 = icmp eq i8 %68, 1, !dbg !612
  br i1 %80, label %81, label %164, !dbg !613

81:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %41, metadata !516, metadata !DIExpression()) #5, !dbg !614
  call void @llvm.dbg.value(metadata i8* %45, metadata !517, metadata !DIExpression()) #5, !dbg !615
  call void @llvm.dbg.value(metadata i64 34, metadata !518, metadata !DIExpression()) #5, !dbg !616
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !519, metadata !DIExpression()) #5, !dbg !617
  %82 = getelementptr i8, i8* %41, i64 42, !dbg !618
  %83 = icmp ugt i8* %82, %45, !dbg !620
  br i1 %83, label %752, label %84, !dbg !621

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8* %57, metadata !520, metadata !DIExpression()) #5, !dbg !622
  %85 = load i8, i8* %57, align 4, !dbg !623, !tbaa !624
  switch i8 %85, label %752 [
    i8 8, label %86
    i8 3, label %146
  ], !dbg !626

86:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8* %41, metadata !482, metadata !DIExpression()) #5, !dbg !627
  call void @llvm.dbg.value(metadata i8* %45, metadata !483, metadata !DIExpression()) #5, !dbg !628
  call void @llvm.dbg.value(metadata i32 0, metadata !508, metadata !DIExpression()) #5, !dbg !629
  call void @llvm.dbg.value(metadata i64 0, metadata !509, metadata !DIExpression()) #5, !dbg !630
  call void @llvm.dbg.value(metadata i64 0, metadata !510, metadata !DIExpression()) #5, !dbg !631
  call void @llvm.dbg.value(metadata i64 14, metadata !510, metadata !DIExpression()) #5, !dbg !631
  call void @llvm.dbg.value(metadata i8* %46, metadata !484, metadata !DIExpression()) #5, !dbg !632
  call void @llvm.dbg.value(metadata i64 34, metadata !510, metadata !DIExpression()) #5, !dbg !631
  call void @llvm.dbg.value(metadata i8* %57, metadata !485, metadata !DIExpression()) #5, !dbg !633
  store i8 0, i8* %57, align 4, !dbg !634, !tbaa !624
  %87 = getelementptr inbounds i8, i8* %41, i64 36, !dbg !635
  %88 = bitcast i8* %87 to i16*, !dbg !635
  %89 = load i16, i16* %88, align 2, !dbg !636, !tbaa !637
  %90 = add i16 %89, 8, !dbg !636
  store i16 %90, i16* %88, align 2, !dbg !636, !tbaa !637
  %91 = getelementptr inbounds i8, i8* %41, i64 22, !dbg !638
  store i8 64, i8* %91, align 4, !dbg !639, !tbaa !640
  %92 = getelementptr inbounds i8, i8* %41, i64 30, !dbg !641
  %93 = bitcast i8* %92 to i32*, !dbg !641
  %94 = load i32, i32* %93, align 4, !dbg !641, !tbaa !642
  call void @llvm.dbg.value(metadata i32 %94, metadata !508, metadata !DIExpression()) #5, !dbg !629
  %95 = getelementptr inbounds i8, i8* %41, i64 26, !dbg !643
  %96 = bitcast i8* %95 to i32*, !dbg !643
  %97 = load i32, i32* %96, align 4, !dbg !643, !tbaa !644
  store i32 %97, i32* %93, align 4, !dbg !645, !tbaa !642
  store i32 %94, i32* %96, align 4, !dbg !646, !tbaa !644
  %98 = getelementptr inbounds i8, i8* %41, i64 24, !dbg !647
  %99 = bitcast i8* %98 to i16*, !dbg !647
  call void @llvm.dbg.value(metadata i8* %46, metadata !648, metadata !DIExpression()) #5, !dbg !659
  %100 = bitcast i8* %46 to i16*, !dbg !661
  call void @llvm.dbg.value(metadata i16* %100, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %100, metadata !656, metadata !DIExpression()) #5, !dbg !662
  %101 = load i16, i16* %100, align 2, !dbg !664, !tbaa !667
  %102 = zext i16 %101 to i64, !dbg !664
  call void @llvm.dbg.value(metadata i32 1, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %71, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 1, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %71, metadata !656, metadata !DIExpression()) #5, !dbg !662
  %103 = getelementptr inbounds i8, i8* %41, i64 18, !dbg !668
  %104 = bitcast i8* %103 to i16*, !dbg !668
  %105 = zext i16 %72 to i64, !dbg !664
  call void @llvm.dbg.value(metadata i32 2, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %104, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 2, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %104, metadata !656, metadata !DIExpression()) #5, !dbg !662
  %106 = load i16, i16* %104, align 2, !dbg !664, !tbaa !667
  %107 = zext i16 %106 to i64, !dbg !664
  call void @llvm.dbg.value(metadata i32 3, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %75, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 3, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %75, metadata !656, metadata !DIExpression()) #5, !dbg !662
  %108 = bitcast i8* %91 to i16*, !dbg !668
  %109 = zext i16 %76 to i64, !dbg !664
  call void @llvm.dbg.value(metadata i32 4, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %108, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 4, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %108, metadata !656, metadata !DIExpression()) #5, !dbg !662
  %110 = load i16, i16* %108, align 2, !dbg !664, !tbaa !667
  %111 = zext i16 %110 to i64, !dbg !664
  call void @llvm.dbg.value(metadata i32 5, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %99, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 5, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i16* %99, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 6, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i8* %95, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 6, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i8* %95, metadata !656, metadata !DIExpression()) #5, !dbg !662
  %112 = and i32 %94, 65535, !dbg !664
  call void @llvm.dbg.value(metadata i32 7, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i32 7, metadata !657, metadata !DIExpression()) #5, !dbg !663
  %113 = lshr i32 %94, 16, !dbg !664
  call void @llvm.dbg.value(metadata i32 8, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i8* %92, metadata !656, metadata !DIExpression()) #5, !dbg !662
  call void @llvm.dbg.value(metadata i32 8, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i8* %92, metadata !656, metadata !DIExpression()) #5, !dbg !662
  %114 = and i32 %97, 65535, !dbg !664
  call void @llvm.dbg.value(metadata i32 9, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i32 9, metadata !657, metadata !DIExpression()) #5, !dbg !663
  %115 = lshr i32 %97, 16, !dbg !664
  %116 = add nuw nsw i32 %113, %112, !dbg !669
  %117 = add nuw nsw i32 %116, %114, !dbg !669
  %118 = add nuw nsw i32 %117, %115, !dbg !669
  %119 = zext i32 %118 to i64, !dbg !669
  %120 = add nuw nsw i64 %109, %105, !dbg !669
  %121 = add nuw nsw i64 %120, %102, !dbg !669
  %122 = add nuw nsw i64 %121, %119, !dbg !669
  %123 = add nuw nsw i64 %122, %107, !dbg !669
  %124 = add nuw nsw i64 %123, %111, !dbg !669
  call void @llvm.dbg.value(metadata i32 10, metadata !657, metadata !DIExpression()) #5, !dbg !663
  call void @llvm.dbg.value(metadata i64 %124, metadata !670, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %124, metadata !670, metadata !DIExpression()) #5, !dbg !676
  %125 = lshr i64 %124, 16, !dbg !679
  %126 = icmp eq i64 %125, 0, !dbg !679
  %127 = and i64 %124, 65535, !dbg !684
  %128 = add nuw nsw i64 %127, %125, !dbg !684
  %129 = select i1 %126, i64 %124, i64 %128, !dbg !684
  call void @llvm.dbg.value(metadata i32 1, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %129, metadata !670, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i32 1, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %129, metadata !670, metadata !DIExpression()) #5, !dbg !676
  %130 = lshr i64 %129, 16, !dbg !679
  %131 = icmp eq i64 %130, 0, !dbg !679
  %132 = and i64 %129, 65535, !dbg !684
  %133 = add nuw nsw i64 %132, %130, !dbg !684
  %134 = select i1 %131, i64 %129, i64 %133, !dbg !684
  call void @llvm.dbg.value(metadata i32 2, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %134, metadata !670, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i32 2, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %134, metadata !670, metadata !DIExpression()) #5, !dbg !676
  %135 = lshr i64 %134, 16, !dbg !679
  %136 = icmp eq i64 %135, 0, !dbg !679
  %137 = and i64 %134, 65535, !dbg !684
  %138 = add nuw nsw i64 %137, %135, !dbg !684
  %139 = select i1 %136, i64 %134, i64 %138, !dbg !684
  call void @llvm.dbg.value(metadata i32 3, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %139, metadata !670, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i32 3, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %139, metadata !670, metadata !DIExpression()) #5, !dbg !676
  %140 = lshr i64 %139, 16, !dbg !679
  %141 = add i64 %140, %139, !dbg !684
  call void @llvm.dbg.value(metadata i32 4, metadata !675, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %141, metadata !670, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i64 %141, metadata !670, metadata !DIExpression()) #5, !dbg !676
  call void @llvm.dbg.value(metadata i64 %141, metadata !509, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_xor, DW_OP_stack_value)) #5, !dbg !630
  %142 = trunc i64 %141 to i16, !dbg !685
  %143 = xor i16 %142, -1, !dbg !685
  store i16 %143, i16* %99, align 2, !dbg !686, !tbaa !687
  call void @llvm.dbg.value(metadata i8* %41, metadata !475, metadata !DIExpression()) #5, !dbg !688
  call void @llvm.dbg.value(metadata i8* undef, metadata !476, metadata !DIExpression()) #5, !dbg !689
  %144 = getelementptr inbounds [6 x i8], [6 x i8]* %27, i64 0, i64 0, !dbg !690
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %144), !dbg !690
  call void @llvm.dbg.value(metadata i8* %41, metadata !477, metadata !DIExpression()) #5, !dbg !691
  %145 = getelementptr inbounds i8, i8* %41, i64 6, !dbg !692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %144, i8* nonnull align 2 %145, i64 6, i1 false) #5, !dbg !693
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %145, i8* nonnull align 2 %41, i64 6, i1 false) #5, !dbg !694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %41, i8* nonnull align 1 %144, i64 6, i1 false) #5, !dbg !695
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %144), !dbg !696
  br label %752, !dbg !697

146:                                              ; preds = %84
  call void @llvm.dbg.value(metadata i64 42, metadata !518, metadata !DIExpression()) #5, !dbg !616
  %147 = getelementptr inbounds i8, i8* %41, i64 62, !dbg !698
  %148 = icmp ugt i8* %147, %45, !dbg !700
  br i1 %148, label %752, label %149, !dbg !701

149:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i8* %82, metadata !521, metadata !DIExpression()) #5, !dbg !702
  %150 = load i8, i8* %82, align 4, !dbg !703
  %151 = and i8 %150, 15, !dbg !703
  %152 = icmp eq i8 %151, 5, !dbg !705
  br i1 %152, label %153, label %752, !dbg !706

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, i8* %41, i64 51, !dbg !707
  %155 = load i8, i8* %154, align 1, !dbg !707, !tbaa !601
  store i8 %155, i8* %69, align 4, !dbg !708, !tbaa !604
  %156 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !709
  store i8 1, i8* %156, align 4, !dbg !710, !tbaa !711
  %157 = getelementptr inbounds i8, i8* %41, i64 58, !dbg !712
  %158 = bitcast i8* %157 to i32*, !dbg !712
  %159 = load i32, i32* %158, align 4, !dbg !712, !tbaa !642
  %160 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !713
  store i32 %159, i32* %160, align 4, !dbg !714, !tbaa !715
  %161 = getelementptr inbounds i8, i8* %41, i64 54, !dbg !716
  %162 = bitcast i8* %161 to i32*, !dbg !716
  %163 = load i32, i32* %162, align 4, !dbg !716, !tbaa !644
  call void @llvm.dbg.value(metadata i32 -1, metadata !399, metadata !DIExpression()) #5, !dbg !717
  br label %172, !dbg !718

164:                                              ; preds = %79
  %165 = getelementptr inbounds i8, i8* %41, i64 26, !dbg !719
  %166 = bitcast i8* %165 to i32*, !dbg !719
  %167 = load i32, i32* %166, align 4, !dbg !719, !tbaa !644
  %168 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !721
  store i32 %167, i32* %168, align 4, !dbg !722, !tbaa !715
  %169 = getelementptr inbounds i8, i8* %41, i64 30, !dbg !723
  %170 = bitcast i8* %169 to i32*, !dbg !723
  %171 = load i32, i32* %170, align 4, !dbg !723, !tbaa !642
  br label %172

172:                                              ; preds = %164, %153
  %173 = phi i32 [ %171, %164 ], [ %163, %153 ]
  %174 = phi i8 [ 0, %164 ], [ 1, %153 ]
  %175 = phi i8 [ %68, %164 ], [ %155, %153 ], !dbg !724
  %176 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 1, i32 0, i64 0, !dbg !725
  store i32 %173, i32* %176, align 4, !dbg !725, !tbaa !715
  call void @llvm.dbg.value(metadata i32 -1, metadata !439, metadata !DIExpression()) #5, !dbg !726
  call void @llvm.dbg.value(metadata i8 %175, metadata !438, metadata !DIExpression()) #5, !dbg !727
  switch i8 %175, label %752 [
    i8 6, label %177
    i8 17, label %205
  ], !dbg !728

177:                                              ; preds = %172
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  call void @llvm.dbg.value(metadata i8* %41, metadata !729, metadata !DIExpression()) #5, !dbg !761
  call void @llvm.dbg.value(metadata i8* %45, metadata !734, metadata !DIExpression()) #5, !dbg !766
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !736, metadata !DIExpression()) #5, !dbg !767
  %178 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !768
  %179 = icmp ne i8 %174, 0, !dbg !769
  call void @llvm.dbg.value(metadata i64 14, metadata !770, metadata !DIExpression()) #5, !dbg !777
  %180 = select i1 %179, i64 62, i64 34, !dbg !779
  call void @llvm.dbg.value(metadata i64 %180, metadata !738, metadata !DIExpression()) #5, !dbg !780
  %181 = getelementptr i8, i8* %41, i64 %180, !dbg !781
  call void @llvm.dbg.value(metadata i8* %181, metadata !739, metadata !DIExpression()) #5, !dbg !782
  %182 = getelementptr inbounds i8, i8* %181, i64 20, !dbg !783
  %183 = icmp ugt i8* %182, %45, !dbg !785
  br i1 %183, label %752, label %184, !dbg !786

184:                                              ; preds = %177
  %185 = getelementptr inbounds i8, i8* %181, i64 12, !dbg !787
  %186 = bitcast i8* %185 to i16*, !dbg !787
  %187 = load i16, i16* %186, align 4, !dbg !787
  %188 = and i16 %187, 512, !dbg !787
  %189 = icmp eq i16 %188, 0, !dbg !789
  br i1 %189, label %192, label %190, !dbg !790

190:                                              ; preds = %184
  %191 = or i8 %174, 2, !dbg !791
  store i8 %191, i8* %178, align 4, !dbg !791, !tbaa !711
  br label %192, !dbg !793

192:                                              ; preds = %190, %184
  br i1 %179, label %199, label %193, !dbg !794

193:                                              ; preds = %192
  %194 = bitcast i8* %181 to i16*, !dbg !795
  %195 = load i16, i16* %194, align 4, !dbg !795, !tbaa !798
  %196 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !800
  %197 = bitcast %union.anon.3* %196 to i16*, !dbg !801
  store i16 %195, i16* %197, align 4, !dbg !802, !tbaa !715
  %198 = getelementptr inbounds i8, i8* %181, i64 2, !dbg !803
  br label %224, !dbg !804

199:                                              ; preds = %192
  %200 = getelementptr inbounds i8, i8* %181, i64 2, !dbg !805
  %201 = bitcast i8* %200 to i16*, !dbg !805
  %202 = load i16, i16* %201, align 2, !dbg !805, !tbaa !807
  %203 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !808
  %204 = bitcast %union.anon.3* %203 to i16*, !dbg !809
  store i16 %202, i16* %204, align 4, !dbg !810, !tbaa !715
  br label %224

205:                                              ; preds = %172
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  call void @llvm.dbg.value(metadata i8* %41, metadata !811, metadata !DIExpression()) #5, !dbg !828
  call void @llvm.dbg.value(metadata i8* %45, metadata !814, metadata !DIExpression()) #5, !dbg !833
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !816, metadata !DIExpression()) #5, !dbg !834
  %206 = icmp ne i8 %174, 0, !dbg !835
  call void @llvm.dbg.value(metadata i64 14, metadata !770, metadata !DIExpression()) #5, !dbg !836
  %207 = select i1 %206, i64 62, i64 34, !dbg !838
  call void @llvm.dbg.value(metadata i64 %207, metadata !818, metadata !DIExpression()) #5, !dbg !839
  %208 = getelementptr i8, i8* %41, i64 %207, !dbg !840
  call void @llvm.dbg.value(metadata i8* %208, metadata !819, metadata !DIExpression()) #5, !dbg !841
  %209 = getelementptr inbounds i8, i8* %208, i64 8, !dbg !842
  %210 = icmp ugt i8* %209, %45, !dbg !844
  br i1 %210, label %752, label %211, !dbg !845

211:                                              ; preds = %205
  br i1 %206, label %218, label %212, !dbg !846

212:                                              ; preds = %211
  %213 = bitcast i8* %208 to i16*, !dbg !847
  %214 = load i16, i16* %213, align 2, !dbg !847, !tbaa !850
  %215 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !852
  %216 = bitcast %union.anon.3* %215 to i16*, !dbg !853
  store i16 %214, i16* %216, align 4, !dbg !854, !tbaa !715
  %217 = getelementptr inbounds i8, i8* %208, i64 2, !dbg !855
  br label %224, !dbg !856

218:                                              ; preds = %211
  %219 = getelementptr inbounds i8, i8* %208, i64 2, !dbg !857
  %220 = bitcast i8* %219 to i16*, !dbg !857
  %221 = load i16, i16* %220, align 2, !dbg !857, !tbaa !859
  %222 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !860
  %223 = bitcast %union.anon.3* %222 to i16*, !dbg !861
  store i16 %221, i16* %223, align 4, !dbg !862, !tbaa !715
  br label %224

224:                                              ; preds = %218, %212, %199, %193
  %225 = phi %union.anon.3* [ %222, %218 ], [ %215, %212 ], [ %203, %199 ], [ %196, %193 ]
  %226 = phi i8* [ %208, %218 ], [ %217, %212 ], [ %181, %199 ], [ %198, %193 ]
  %227 = bitcast i8* %226 to i16*, !dbg !863
  %228 = load i16, i16* %227, align 2, !dbg !863, !tbaa !667
  %229 = bitcast %union.anon.3* %225 to [2 x i16]*, !dbg !863
  %230 = getelementptr inbounds [2 x i16], [2 x i16]* %229, i64 0, i64 1, !dbg !863
  store i16 %228, i16* %230, align 2, !dbg !863, !tbaa !715
  %231 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %29, i64 0, i32 0, i32 0, i64 0, !dbg !864
  store i32 %173, i32* %231, align 4, !dbg !867, !tbaa !715
  %232 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, !dbg !868
  %233 = getelementptr inbounds [2 x i16], [2 x i16]* %229, i64 0, i64 1, !dbg !869
  %234 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %29, i64 0, i32 1, !dbg !870
  store i16 %228, i16* %234, align 4, !dbg !871, !tbaa !872
  %235 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %29, i64 0, i32 2, !dbg !874
  store i8 %175, i8* %235, align 2, !dbg !875, !tbaa !876
  %236 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @vip_map to i8*), i8* nonnull %54) #5, !dbg !877
  %237 = bitcast i8* %236 to %struct.vip_meta*, !dbg !877
  call void @llvm.dbg.value(metadata %struct.vip_meta* %237, metadata !433, metadata !DIExpression()) #5, !dbg !878
  %238 = icmp eq i8* %236, null, !dbg !879
  br i1 %238, label %239, label %249, !dbg !881

239:                                              ; preds = %224
  store i16 0, i16* %234, align 4, !dbg !882, !tbaa !872
  %240 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @vip_map to i8*), i8* nonnull %54) #5, !dbg !884
  %241 = bitcast i8* %240 to %struct.vip_meta*, !dbg !884
  call void @llvm.dbg.value(metadata %struct.vip_meta* %241, metadata !433, metadata !DIExpression()) #5, !dbg !878
  %242 = icmp eq i8* %240, null, !dbg !885
  br i1 %242, label %752, label %243, !dbg !887

243:                                              ; preds = %239
  %244 = bitcast i8* %240 to i32*, !dbg !888
  %245 = load i32, i32* %244, align 4, !dbg !888, !tbaa !890
  %246 = and i32 %245, 8, !dbg !892
  %247 = icmp eq i32 %246, 0, !dbg !892
  br i1 %247, label %248, label %249, !dbg !893

248:                                              ; preds = %243
  store i16 0, i16* %233, align 2, !dbg !894, !tbaa !715
  br label %249, !dbg !896

249:                                              ; preds = %248, %243, %224
  %250 = phi %struct.vip_meta* [ %237, %224 ], [ %241, %243 ], [ %241, %248 ], !dbg !897
  call void @llvm.dbg.value(metadata %struct.vip_meta* %250, metadata !433, metadata !DIExpression()) #5, !dbg !878
  %251 = sub nsw i64 %44, %40, !dbg !898
  %252 = icmp sgt i64 %251, 1514, !dbg !900
  br i1 %252, label %752, label %253, !dbg !901

253:                                              ; preds = %249
  %254 = bitcast i32* %32 to i8*, !dbg !902
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %254) #5, !dbg !902
  call void @llvm.dbg.value(metadata i32 512, metadata !443, metadata !DIExpression()) #5, !dbg !903
  store i32 512, i32* %32, align 4, !dbg !903, !tbaa !578
  %255 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %254) #5, !dbg !904
  call void @llvm.dbg.value(metadata i8* %255, metadata !435, metadata !DIExpression()) #5, !dbg !905
  %256 = icmp eq i8* %255, null, !dbg !906
  br i1 %256, label %750, label %257, !dbg !908

257:                                              ; preds = %253
  %258 = bitcast i8* %255 to i64*, !dbg !909
  %259 = load i64, i64* %258, align 8, !dbg !910, !tbaa !911
  %260 = add i64 %259, 1, !dbg !910
  store i64 %260, i64* %258, align 8, !dbg !910, !tbaa !911
  %261 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %250, i64 0, i32 0, !dbg !914
  %262 = load i32, i32* %261, align 4, !dbg !914, !tbaa !890
  %263 = and i32 %262, 4, !dbg !915
  %264 = icmp eq i32 %263, 0, !dbg !915
  br i1 %264, label %388, label %265, !dbg !916

265:                                              ; preds = %257
  %266 = bitcast i32* %33 to i8*, !dbg !917
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %266) #5, !dbg !917
  call void @llvm.dbg.value(metadata i32 519, metadata !444, metadata !DIExpression()) #5, !dbg !918
  store i32 519, i32* %33, align 4, !dbg !918, !tbaa !578
  %267 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %266) #5, !dbg !919
  call void @llvm.dbg.value(metadata i8* %267, metadata !447, metadata !DIExpression()) #5, !dbg !920
  %268 = icmp eq i8* %267, null, !dbg !921
  br i1 %268, label %382, label %269, !dbg !923

269:                                              ; preds = %265
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  call void @llvm.dbg.value(metadata i8* %41, metadata !924, metadata !DIExpression()) #5, !dbg !945
  call void @llvm.dbg.value(metadata i8* %45, metadata !929, metadata !DIExpression()) #5, !dbg !947
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !931, metadata !DIExpression()) #5, !dbg !948
  %270 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !949
  %271 = load i8, i8* %270, align 4, !dbg !949, !tbaa !711
  %272 = and i8 %271, 1, !dbg !950
  %273 = icmp eq i8 %272, 0, !dbg !951
  call void @llvm.dbg.value(metadata i64 14, metadata !770, metadata !DIExpression()) #5, !dbg !952
  %274 = select i1 %273, i64 34, i64 62, !dbg !954
  call void @llvm.dbg.value(metadata i64 %274, metadata !933, metadata !DIExpression()) #5, !dbg !955
  %275 = getelementptr i8, i8* %41, i64 %274, !dbg !956
  %276 = getelementptr i8, i8* %275, i64 8, !dbg !958
  %277 = getelementptr i8, i8* %276, i64 1, !dbg !959
  %278 = icmp ugt i8* %277, %45, !dbg !960
  br i1 %278, label %378, label %279, !dbg !961

279:                                              ; preds = %269
  call void @llvm.dbg.value(metadata i8* %276, metadata !934, metadata !DIExpression()) #5, !dbg !962
  call void @llvm.dbg.value(metadata i8* %276, metadata !935, metadata !DIExpression()) #5, !dbg !963
  call void @llvm.dbg.value(metadata i8* null, metadata !936, metadata !DIExpression()) #5, !dbg !964
  %280 = load i8, i8* %276, align 1, !dbg !965, !tbaa !715
  %281 = icmp slt i8 %280, 0, !dbg !966
  br i1 %281, label %282, label %293, !dbg !967

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, i8* %276, i64 14, !dbg !968
  %284 = icmp ugt i8* %283, %45, !dbg !970
  %285 = and i8 %280, 32, !dbg !971
  %286 = icmp eq i8 %285, 0, !dbg !973
  %287 = or i1 %284, %286, !dbg !974
  br i1 %287, label %378, label %288, !dbg !974

288:                                              ; preds = %282
  %289 = getelementptr inbounds i8, i8* %276, i64 5, !dbg !975
  %290 = load i8, i8* %289, align 1, !dbg !975, !tbaa !977
  %291 = icmp ult i8 %290, 8, !dbg !979
  %292 = getelementptr inbounds i8, i8* %276, i64 6, !dbg !980
  br i1 %291, label %378, label %296

293:                                              ; preds = %279
  %294 = getelementptr inbounds i8, i8* %276, i64 9, !dbg !981
  %295 = icmp ugt i8* %294, %45, !dbg !984
  br i1 %295, label %378, label %296, !dbg !985

296:                                              ; preds = %293, %288
  %297 = phi i8* [ %277, %293 ], [ %292, %288 ]
  %298 = load i8, i8* %297, align 1, !dbg !986, !tbaa !715
  %299 = lshr i8 %298, 6, !dbg !987
  call void @llvm.dbg.value(metadata i8 %299, metadata !940, metadata !DIExpression()) #5, !dbg !988
  switch i8 %299, label %378 [
    i8 1, label %300
    i8 2, label %312
  ], !dbg !989

300:                                              ; preds = %296
  %301 = and i8 %298, 63, !dbg !990
  %302 = zext i8 %301 to i32, !dbg !990
  %303 = shl nuw nsw i32 %302, 10, !dbg !992
  %304 = getelementptr inbounds i8, i8* %297, i64 1, !dbg !993
  %305 = load i8, i8* %304, align 1, !dbg !993, !tbaa !715
  %306 = zext i8 %305 to i32, !dbg !993
  %307 = shl nuw nsw i32 %306, 2, !dbg !994
  %308 = or i32 %307, %303, !dbg !995
  %309 = getelementptr inbounds i8, i8* %297, i64 2, !dbg !996
  %310 = load i8, i8* %309, align 1, !dbg !996, !tbaa !715
  %311 = lshr i8 %310, 6, !dbg !997
  br label %324, !dbg !998

312:                                              ; preds = %296
  %313 = getelementptr inbounds i8, i8* %297, i64 1, !dbg !999
  %314 = load i8, i8* %313, align 1, !dbg !999, !tbaa !715
  %315 = zext i8 %314 to i32, !dbg !999
  %316 = shl nuw nsw i32 %315, 16, !dbg !1000
  %317 = getelementptr inbounds i8, i8* %297, i64 2, !dbg !1001
  %318 = load i8, i8* %317, align 1, !dbg !1001, !tbaa !715
  %319 = zext i8 %318 to i32, !dbg !1001
  %320 = shl nuw nsw i32 %319, 8, !dbg !1002
  %321 = or i32 %320, %316, !dbg !1003
  %322 = getelementptr inbounds i8, i8* %297, i64 3, !dbg !1004
  %323 = load i8, i8* %322, align 1, !dbg !1004, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %328, metadata !941, metadata !DIExpression()) #5, !dbg !1005
  br label %324

324:                                              ; preds = %312, %300
  %325 = phi i8 [ %323, %312 ], [ %311, %300 ]
  %326 = phi i32 [ %321, %312 ], [ %308, %300 ]
  %327 = zext i8 %325 to i32, !dbg !1006
  %328 = or i32 %326, %327, !dbg !1006
  call void @llvm.dbg.value(metadata i32 %328, metadata !448, metadata !DIExpression()) #5, !dbg !1007
  %329 = icmp sgt i32 %328, 0, !dbg !1008
  br i1 %329, label %330, label %378, !dbg !1009

330:                                              ; preds = %324
  call void @llvm.dbg.value(metadata i32 %328, metadata !1010, metadata !DIExpression()) #5, !dbg !1017
  %331 = bitcast i32* %26 to i8*, !dbg !1019
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %331) #5, !dbg !1019
  call void @llvm.dbg.value(metadata i32 520, metadata !1015, metadata !DIExpression()) #5, !dbg !1020
  store i32 520, i32* %26, align 4, !dbg !1020, !tbaa !578
  %332 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %331) #5, !dbg !1021
  call void @llvm.dbg.value(metadata i8* %332, metadata !1016, metadata !DIExpression()) #5, !dbg !1022
  %333 = icmp eq i8* %332, null, !dbg !1023
  br i1 %333, label %341, label %334, !dbg !1025

334:                                              ; preds = %330
  %335 = icmp sgt i32 %328, 65535, !dbg !1026
  %336 = getelementptr inbounds i8, i8* %332, i64 8, !dbg !1028
  %337 = select i1 %335, i8* %336, i8* %332, !dbg !1028
  %338 = bitcast i8* %337 to i64*, !dbg !1029
  %339 = load i64, i64* %338, align 8, !dbg !1029, !tbaa !1030
  %340 = add i64 %339, 1, !dbg !1029
  store i64 %340, i64* %338, align 8, !dbg !1029, !tbaa !1030
  br label %341, !dbg !1031

341:                                              ; preds = %334, %330
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %331) #5, !dbg !1031
  %342 = bitcast i32* %34 to i8*, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %342) #5, !dbg !1032
  call void @llvm.dbg.value(metadata i32 %328, metadata !449, metadata !DIExpression()) #5, !dbg !1033
  store i32 %328, i32* %34, align 4, !dbg !1033, !tbaa !578
  %343 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @server_id_map to i8*), i8* nonnull %342) #5, !dbg !1034
  %344 = icmp eq i8* %343, null, !dbg !1035
  br i1 %344, label %373, label %345, !dbg !1037

345:                                              ; preds = %341
  %346 = bitcast i8* %343 to i32*, !dbg !1034
  call void @llvm.dbg.value(metadata i32* %346, metadata !452, metadata !DIExpression()) #5, !dbg !1038
  %347 = load i32, i32* %346, align 4, !dbg !1039, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %347, metadata !449, metadata !DIExpression()) #5, !dbg !1033
  store i32 %347, i32* %34, align 4, !dbg !1041, !tbaa !578
  %348 = icmp eq i32 %347, 0, !dbg !1042
  br i1 %348, label %349, label %360, !dbg !1044

349:                                              ; preds = %345
  %350 = bitcast i32* %25 to i8*, !dbg !1045
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %350) #5, !dbg !1045
  call void @llvm.dbg.value(metadata i32 521, metadata !1050, metadata !DIExpression()) #5, !dbg !1054
  store i32 521, i32* %25, align 4, !dbg !1054, !tbaa !578
  %351 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %350) #5, !dbg !1055
  %352 = icmp eq i8* %351, null, !dbg !1056
  br i1 %352, label %358, label %353, !dbg !1058

353:                                              ; preds = %349
  call void @llvm.dbg.value(metadata i8* %351, metadata !1051, metadata !DIExpression()) #5, !dbg !1059
  %354 = getelementptr inbounds i8, i8* %351, i64 8, !dbg !1060
  %355 = bitcast i8* %354 to i64*, !dbg !1060
  %356 = load i64, i64* %355, align 8, !dbg !1061, !tbaa !1062
  %357 = add i64 %356, 1, !dbg !1061
  store i64 %357, i64* %355, align 8, !dbg !1061, !tbaa !1062
  br label %358, !dbg !1063

358:                                              ; preds = %353, %349
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %350) #5, !dbg !1063
  %359 = load i32, i32* %34, align 4, !dbg !1064, !tbaa !578
  br label %360, !dbg !1065

360:                                              ; preds = %358, %345
  %361 = phi i32 [ %359, %358 ], [ %347, %345 ], !dbg !1064
  call void @llvm.dbg.value(metadata i32 %361, metadata !449, metadata !DIExpression()) #5, !dbg !1033
  %362 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1066
  store i32 %361, i32* %362, align 4, !dbg !1067, !tbaa !1068
  %363 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals to i8*), i8* nonnull %342) #5, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %363, metadata !429, metadata !DIExpression()) #5, !dbg !570
  %364 = icmp eq i8* %363, null, !dbg !1070
  br i1 %364, label %365, label %383, !dbg !1072

365:                                              ; preds = %360
  %366 = bitcast i32* %24 to i8*, !dbg !1073
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %366) #5, !dbg !1073
  call void @llvm.dbg.value(metadata i32 521, metadata !1076, metadata !DIExpression()) #5, !dbg !1080
  store i32 521, i32* %24, align 4, !dbg !1080, !tbaa !578
  %367 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %366) #5, !dbg !1081
  %368 = icmp eq i8* %367, null, !dbg !1082
  br i1 %368, label %377, label %369, !dbg !1084

369:                                              ; preds = %365
  call void @llvm.dbg.value(metadata i8* %367, metadata !1077, metadata !DIExpression()) #5, !dbg !1085
  %370 = bitcast i8* %367 to i64*, !dbg !1086
  %371 = load i64, i64* %370, align 8, !dbg !1087, !tbaa !911
  %372 = add i64 %371, 1, !dbg !1087
  store i64 %372, i64* %370, align 8, !dbg !1087, !tbaa !911
  br label %377, !dbg !1088

373:                                              ; preds = %341
  %374 = bitcast i8* %267 to i64*, !dbg !1089
  %375 = load i64, i64* %374, align 8, !dbg !1091, !tbaa !911
  %376 = add i64 %375, 1, !dbg !1091
  store i64 %376, i64* %374, align 8, !dbg !1091, !tbaa !911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #5, !dbg !1092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %266) #5, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %363, metadata !429, metadata !DIExpression()) #5, !dbg !570
  br label %388, !dbg !1094

377:                                              ; preds = %369, %365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %366) #5, !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #5, !dbg !1092
  br label %382

378:                                              ; preds = %324, %296, %293, %288, %282, %269
  %379 = bitcast i8* %267 to i64*, !dbg !1095
  %380 = load i64, i64* %379, align 8, !dbg !1097, !tbaa !911
  %381 = add i64 %380, 1, !dbg !1097
  store i64 %381, i64* %379, align 8, !dbg !1097, !tbaa !911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %266) #5, !dbg !1093
  br label %388, !dbg !1094

382:                                              ; preds = %377, %265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %266) #5, !dbg !1093
  br label %750

383:                                              ; preds = %360
  %384 = getelementptr inbounds i8, i8* %267, i64 8, !dbg !1098
  %385 = bitcast i8* %384 to i64*, !dbg !1098
  %386 = load i64, i64* %385, align 8, !dbg !1099, !tbaa !1062
  %387 = add i64 %386, 1, !dbg !1099
  store i64 %387, i64* %385, align 8, !dbg !1099, !tbaa !1062
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #5, !dbg !1092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %266) #5, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %363, metadata !429, metadata !DIExpression()) #5, !dbg !570
  br label %569, !dbg !1094

388:                                              ; preds = %378, %373, %257
  %389 = load i32, i32* %261, align 4, !dbg !1100, !tbaa !890
  %390 = and i32 %389, 1, !dbg !1102
  %391 = icmp eq i32 %390, 0, !dbg !1102
  br i1 %391, label %394, label %392, !dbg !1103

392:                                              ; preds = %388
  %393 = bitcast %union.anon.3* %232 to i16*, !dbg !1104
  store i16 0, i16* %393, align 4, !dbg !1106, !tbaa !715
  br label %394, !dbg !1107

394:                                              ; preds = %392, %388
  %395 = bitcast i32* %35 to i8*, !dbg !1108
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %395) #5, !dbg !1108
  %396 = call i64 inttoptr (i64 8 to i64 ()*)() #5, !dbg !1109
  %397 = trunc i64 %396 to i32, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %397, metadata !454, metadata !DIExpression()) #5, !dbg !1110
  store i32 %397, i32* %35, align 4, !dbg !1110, !tbaa !578
  %398 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @lru_mapping to i8*), i8* nonnull %395) #5, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %398, metadata !457, metadata !DIExpression()) #5, !dbg !1112
  %399 = icmp eq i8* %398, null, !dbg !1113
  br i1 %399, label %400, label %409, !dbg !1114

400:                                              ; preds = %394
  call void @llvm.dbg.value(metadata i8* bitcast (%struct.bpf_map_def* @fallback_cache to i8*), metadata !457, metadata !DIExpression()) #5, !dbg !1112
  %401 = bitcast i32* %36 to i8*, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %401) #5, !dbg !1115
  call void @llvm.dbg.value(metadata i32 515, metadata !458, metadata !DIExpression()) #5, !dbg !1116
  store i32 515, i32* %36, align 4, !dbg !1116, !tbaa !578
  %402 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %401) #5, !dbg !1117
  %403 = icmp eq i8* %402, null, !dbg !1118
  br i1 %403, label %408, label %404, !dbg !1120

404:                                              ; preds = %400
  call void @llvm.dbg.value(metadata i8* %402, metadata !461, metadata !DIExpression()) #5, !dbg !1121
  %405 = bitcast i8* %402 to i64*, !dbg !1122
  %406 = load i64, i64* %405, align 8, !dbg !1123, !tbaa !911
  %407 = add i64 %406, 1, !dbg !1123
  store i64 %407, i64* %405, align 8, !dbg !1123, !tbaa !911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %401) #5, !dbg !1124
  br label %409

408:                                              ; preds = %400
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %401) #5, !dbg !1124
  br label %566

409:                                              ; preds = %404, %394
  %410 = phi i8* [ %398, %394 ], [ bitcast (%struct.bpf_map_def* @fallback_cache to i8*), %404 ], !dbg !1125
  call void @llvm.dbg.value(metadata i8* %410, metadata !457, metadata !DIExpression()) #5, !dbg !1112
  %411 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 2, !dbg !1126
  %412 = load i8, i8* %411, align 4, !dbg !1126, !tbaa !711
  %413 = and i8 %412, 2, !dbg !1128
  %414 = icmp eq i8 %413, 0, !dbg !1128
  br i1 %414, label %415, label %441, !dbg !1129

415:                                              ; preds = %409
  %416 = load i32, i32* %261, align 4, !dbg !1130, !tbaa !890
  %417 = and i32 %416, 2, !dbg !1131
  %418 = icmp eq i32 %417, 0, !dbg !1131
  br i1 %418, label %419, label %441, !dbg !1132

419:                                              ; preds = %415
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1133, metadata !DIExpression()) #5, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %410, metadata !1140, metadata !DIExpression()) #5, !dbg !1148
  %420 = bitcast i32* %23 to i8*, !dbg !1149
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %420) #5, !dbg !1149
  %421 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* %410, i8* nonnull %53) #5, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %421, metadata !1141, metadata !DIExpression()) #5, !dbg !1151
  %422 = icmp eq i8* %421, null, !dbg !1152
  br i1 %422, label %434, label %423, !dbg !1154

423:                                              ; preds = %419
  %424 = load i8, i8* %69, align 4, !dbg !1155, !tbaa !604
  %425 = icmp eq i8 %424, 17, !dbg !1157
  br i1 %425, label %426, label %435, !dbg !1158

426:                                              ; preds = %423
  %427 = call i64 inttoptr (i64 5 to i64 ()*)() #5, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %427, metadata !1143, metadata !DIExpression()) #5, !dbg !1161
  %428 = getelementptr inbounds i8, i8* %421, i64 8, !dbg !1162
  %429 = bitcast i8* %428 to i64*, !dbg !1162
  %430 = load i64, i64* %429, align 8, !dbg !1162, !tbaa !1164
  %431 = sub i64 %427, %430, !dbg !1166
  %432 = icmp ugt i64 %431, 30000000000, !dbg !1167
  br i1 %432, label %434, label %433, !dbg !1168

433:                                              ; preds = %426
  store i64 %427, i64* %429, align 8, !dbg !1169, !tbaa !1164
  br label %435, !dbg !1170

434:                                              ; preds = %426, %419
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %420) #5, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %439, metadata !429, metadata !DIExpression()) #5, !dbg !570
  br label %441, !dbg !1172

435:                                              ; preds = %433, %423
  %436 = bitcast i8* %421 to i32*, !dbg !1173
  %437 = load i32, i32* %436, align 8, !dbg !1173, !tbaa !1174
  call void @llvm.dbg.value(metadata i32 %437, metadata !1144, metadata !DIExpression()) #5, !dbg !1175
  store i32 %437, i32* %23, align 4, !dbg !1176, !tbaa !578
  %438 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1177
  store i32 %437, i32* %438, align 4, !dbg !1178, !tbaa !1068
  %439 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals to i8*), i8* nonnull %420) #5, !dbg !1179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %420) #5, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %439, metadata !429, metadata !DIExpression()) #5, !dbg !570
  %440 = icmp eq i8* %439, null, !dbg !1180
  br i1 %440, label %441, label %567, !dbg !1172

441:                                              ; preds = %435, %434, %415, %409
  %442 = load i8, i8* %69, align 4, !dbg !1181, !tbaa !604
  %443 = icmp eq i8 %442, 6, !dbg !1182
  br i1 %443, label %444, label %460, !dbg !1183

444:                                              ; preds = %441
  %445 = bitcast i32* %37 to i8*, !dbg !1184
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %445) #5, !dbg !1184
  call void @llvm.dbg.value(metadata i32 513, metadata !462, metadata !DIExpression()) #5, !dbg !1185
  store i32 513, i32* %37, align 4, !dbg !1185, !tbaa !578
  %446 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %445) #5, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %446, metadata !467, metadata !DIExpression()) #5, !dbg !1187
  %447 = icmp eq i8* %446, null, !dbg !1188
  br i1 %447, label %459, label %448, !dbg !1190

448:                                              ; preds = %444
  %449 = load i8, i8* %411, align 4, !dbg !1191, !tbaa !711
  %450 = and i8 %449, 2, !dbg !1193
  %451 = icmp eq i8 %450, 0, !dbg !1193
  %452 = getelementptr inbounds i8, i8* %446, i64 8, !dbg !1194
  %453 = bitcast i8* %452 to i64*, !dbg !1194
  %454 = bitcast i8* %446 to i64*, !dbg !1194
  %455 = select i1 %451, i64* %453, i64* %454, !dbg !1194
  %456 = select i1 %451, i64* %453, i64* %454, !dbg !1194
  %457 = load i64, i64* %455, align 8, !dbg !1195, !tbaa !1030
  %458 = add i64 %457, 1, !dbg !1195
  store i64 %458, i64* %456, align 8, !dbg !1195, !tbaa !1030
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %445) #5, !dbg !1196
  br label %460

459:                                              ; preds = %444
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %445) #5, !dbg !1196
  br label %566

460:                                              ; preds = %448, %441
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1197, metadata !DIExpression()) #5, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.vip_meta* %250, metadata !1203, metadata !DIExpression()) #5, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %410, metadata !1205, metadata !DIExpression()) #5, !dbg !1220
  %461 = bitcast %struct.real_pos_lru* %21 to i8*, !dbg !1221
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %461) #5, !dbg !1221
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %461, i8 0, i64 16, i1 false) #5, !dbg !1222
  call void @llvm.dbg.value(metadata i8 0, metadata !1207, metadata !DIExpression()) #5, !dbg !1223
  call void @llvm.dbg.value(metadata i8 0, metadata !1208, metadata !DIExpression()) #5, !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, metadata !1210, metadata !DIExpression()) #5, !dbg !1225
  %462 = bitcast i32* %22 to i8*, !dbg !1226
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %462) #5, !dbg !1226
  %463 = bitcast i32* %20 to i8*, !dbg !1227
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %463) #5, !dbg !1227
  call void @llvm.dbg.value(metadata i32 514, metadata !1233, metadata !DIExpression()) #5, !dbg !1236
  store i32 514, i32* %20, align 4, !dbg !1236, !tbaa !578
  %464 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %463) #5, !dbg !1237
  %465 = icmp eq i8* %464, null, !dbg !1238
  br i1 %465, label %480, label %466, !dbg !1240

466:                                              ; preds = %460
  call void @llvm.dbg.value(metadata i8* %464, metadata !1234, metadata !DIExpression()) #5, !dbg !1241
  %467 = call i64 inttoptr (i64 5 to i64 ()*)() #5, !dbg !1242
  %468 = getelementptr inbounds i8, i8* %464, i64 8, !dbg !1243
  %469 = bitcast i8* %468 to i64*, !dbg !1243
  %470 = load i64, i64* %469, align 8, !dbg !1243, !tbaa !1062
  %471 = sub i64 %467, %470, !dbg !1245
  %472 = icmp ugt i64 %471, 1000000000, !dbg !1246
  %473 = bitcast i8* %464 to i64*, !dbg !1247
  br i1 %472, label %474, label %475, !dbg !1248

474:                                              ; preds = %466
  store i64 1, i64* %473, align 8, !dbg !1249, !tbaa !911
  store i64 %467, i64* %469, align 8, !dbg !1251, !tbaa !1062
  br label %479, !dbg !1252

475:                                              ; preds = %466
  %476 = load i64, i64* %473, align 8, !dbg !1253, !tbaa !911
  %477 = add i64 %476, 1, !dbg !1253
  store i64 %477, i64* %473, align 8, !dbg !1253, !tbaa !911
  %478 = icmp ugt i64 %477, 125000, !dbg !1255
  br i1 %478, label %480, label %479, !dbg !1257

479:                                              ; preds = %475, %474
  br label %480, !dbg !1258

480:                                              ; preds = %479, %475, %460
  %481 = phi i64 [ 0, %460 ], [ %467, %479 ], [ %467, %475 ], !dbg !1259
  %482 = phi i1 [ true, %460 ], [ false, %479 ], [ true, %475 ], !dbg !1260
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %463) #5, !dbg !1261
  %483 = load i32, i32* %261, align 4, !dbg !1262, !tbaa !890
  %484 = and i32 %483, 8, !dbg !1264
  %485 = icmp eq i32 %484, 0, !dbg !1264
  br i1 %485, label %486, label %490, !dbg !1265

486:                                              ; preds = %480
  %487 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0
  %488 = load i32, i32* %487, align 4, !dbg !1266, !tbaa !715
  %489 = add i32 %488, -525483785, !dbg !1265
  br label %493, !dbg !1265

490:                                              ; preds = %480
  %491 = load i16, i16* %233, align 2, !dbg !1275, !tbaa !715
  %492 = bitcast %union.anon.3* %232 to i16*, !dbg !1277
  store i16 %491, i16* %492, align 4, !dbg !1278, !tbaa !715
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %53, i8 0, i64 16, i1 false) #5, !dbg !1279
  br label %493, !dbg !1280

493:                                              ; preds = %490, %486
  %494 = phi i32 [ %489, %486 ], [ -525483785, %490 ]
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1272, metadata !DIExpression()) #5, !dbg !1281
  %495 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 2, i32 0, !dbg !1282
  %496 = load i32, i32* %495, align 4, !dbg !1282, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %496, metadata !1284, metadata !DIExpression()) #5, !dbg !1291
  call void @llvm.dbg.value(metadata i32 33554944, metadata !1290, metadata !DIExpression()) #5, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %496, metadata !1294, metadata !DIExpression()) #5, !dbg !1302
  call void @llvm.dbg.value(metadata i32 0, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1301, metadata !DIExpression()) #5, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %494, metadata !1299, metadata !DIExpression()) #5, !dbg !1306
  %497 = add i32 %496, -525483785, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %497, metadata !1294, metadata !DIExpression()) #5, !dbg !1302
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  %498 = xor i32 %497, -525483785, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %498, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %497, metadata !1310, metadata !DIExpression()) #5, !dbg !1316
  call void @llvm.dbg.value(metadata i32 14, metadata !1315, metadata !DIExpression()) #5, !dbg !1318
  %499 = shl i32 %497, 14, !dbg !1319
  %500 = lshr i32 %497, 18, !dbg !1320
  %501 = or i32 %500, %499, !dbg !1321
  %502 = sub i32 %498, %501, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %502, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  %503 = xor i32 %502, %494, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %503, metadata !1299, metadata !DIExpression()) #5, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %502, metadata !1310, metadata !DIExpression()) #5, !dbg !1322
  call void @llvm.dbg.value(metadata i32 11, metadata !1315, metadata !DIExpression()) #5, !dbg !1324
  %504 = shl i32 %502, 11, !dbg !1325
  %505 = lshr i32 %502, 21, !dbg !1326
  %506 = or i32 %505, %504, !dbg !1327
  %507 = sub i32 %503, %506, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %507, metadata !1299, metadata !DIExpression()) #5, !dbg !1306
  %508 = xor i32 %507, %497, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %508, metadata !1294, metadata !DIExpression()) #5, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %507, metadata !1310, metadata !DIExpression()) #5, !dbg !1328
  call void @llvm.dbg.value(metadata i32 25, metadata !1315, metadata !DIExpression()) #5, !dbg !1330
  %509 = shl i32 %507, 25, !dbg !1331
  %510 = lshr i32 %507, 7, !dbg !1332
  %511 = or i32 %510, %509, !dbg !1333
  %512 = sub i32 %508, %511, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %512, metadata !1294, metadata !DIExpression()) #5, !dbg !1302
  %513 = xor i32 %512, %502, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %513, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %512, metadata !1310, metadata !DIExpression()) #5, !dbg !1334
  call void @llvm.dbg.value(metadata i32 16, metadata !1315, metadata !DIExpression()) #5, !dbg !1336
  %514 = shl i32 %512, 16, !dbg !1337
  %515 = lshr i32 %512, 16, !dbg !1338
  %516 = or i32 %515, %514, !dbg !1339
  %517 = sub i32 %513, %516, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %517, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  %518 = xor i32 %517, %507, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %518, metadata !1299, metadata !DIExpression()) #5, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %517, metadata !1310, metadata !DIExpression()) #5, !dbg !1340
  call void @llvm.dbg.value(metadata i32 4, metadata !1315, metadata !DIExpression()) #5, !dbg !1342
  %519 = shl i32 %517, 4, !dbg !1343
  %520 = lshr i32 %517, 28, !dbg !1344
  %521 = or i32 %520, %519, !dbg !1345
  %522 = sub i32 %518, %521, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %522, metadata !1299, metadata !DIExpression()) #5, !dbg !1306
  %523 = xor i32 %522, %512, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %523, metadata !1294, metadata !DIExpression()) #5, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %522, metadata !1310, metadata !DIExpression()) #5, !dbg !1346
  call void @llvm.dbg.value(metadata i32 14, metadata !1315, metadata !DIExpression()) #5, !dbg !1348
  %524 = shl i32 %522, 14, !dbg !1349
  %525 = lshr i32 %522, 18, !dbg !1350
  %526 = or i32 %525, %524, !dbg !1351
  %527 = sub i32 %523, %526, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %527, metadata !1294, metadata !DIExpression()) #5, !dbg !1302
  %528 = xor i32 %527, %517, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %528, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %527, metadata !1310, metadata !DIExpression()) #5, !dbg !1352
  call void @llvm.dbg.value(metadata i32 24, metadata !1315, metadata !DIExpression()) #5, !dbg !1354
  %529 = shl i32 %527, 24, !dbg !1355
  %530 = lshr i32 %527, 8, !dbg !1356
  %531 = or i32 %530, %529, !dbg !1357
  %532 = sub i32 %528, %531, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %532, metadata !1300, metadata !DIExpression()) #5, !dbg !1304
  %533 = urem i32 %532, 65537, !dbg !1358
  call void @llvm.dbg.value(metadata i32 %533, metadata !1211, metadata !DIExpression()) #5, !dbg !1359
  %534 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %250, i64 0, i32 1, !dbg !1360
  %535 = load i32, i32* %534, align 4, !dbg !1360, !tbaa !1361
  %536 = mul i32 %535, 65537, !dbg !1362
  %537 = add i32 %533, %536, !dbg !1363
  call void @llvm.dbg.value(metadata i32 %537, metadata !1212, metadata !DIExpression()) #5, !dbg !1364
  store i32 %537, i32* %22, align 4, !dbg !1365, !tbaa !578
  %538 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @ch_rings to i8*), i8* nonnull %462) #5, !dbg !1366
  %539 = icmp eq i8* %538, null, !dbg !1367
  br i1 %539, label %560, label %540, !dbg !1369

540:                                              ; preds = %493
  %541 = bitcast i8* %538 to i32*, !dbg !1366
  call void @llvm.dbg.value(metadata i32* %541, metadata !1209, metadata !DIExpression()) #5, !dbg !1370
  %542 = load i32, i32* %541, align 4, !dbg !1371, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %542, metadata !1212, metadata !DIExpression()) #5, !dbg !1364
  store i32 %542, i32* %22, align 4, !dbg !1372, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %542, metadata !1212, metadata !DIExpression()) #5, !dbg !1364
  %543 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1373
  store i32 %542, i32* %543, align 4, !dbg !1374, !tbaa !1068
  %544 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals to i8*), i8* nonnull %462) #5, !dbg !1375
  %545 = icmp eq i8* %544, null, !dbg !1376
  br i1 %545, label %560, label %546, !dbg !1378

546:                                              ; preds = %540
  %547 = load i32, i32* %261, align 4, !dbg !1379, !tbaa !890
  %548 = and i32 %547, 2, !dbg !1381
  %549 = icmp ne i32 %548, 0, !dbg !1381
  %550 = or i1 %482, %549, !dbg !1382
  br i1 %550, label %561, label %551, !dbg !1382

551:                                              ; preds = %546
  %552 = load i8, i8* %69, align 4, !dbg !1383, !tbaa !604
  %553 = icmp eq i8 %552, 17, !dbg !1386
  br i1 %553, label %554, label %556, !dbg !1387

554:                                              ; preds = %551
  call void @llvm.dbg.value(metadata i64 %481, metadata !1210, metadata !DIExpression()) #5, !dbg !1225
  %555 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %21, i64 0, i32 1, !dbg !1388
  store i64 %481, i64* %555, align 8, !dbg !1390, !tbaa !1164
  br label %556, !dbg !1391

556:                                              ; preds = %554, %551
  %557 = load i32, i32* %22, align 4, !dbg !1392, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %557, metadata !1212, metadata !DIExpression()) #5, !dbg !1364
  %558 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %21, i64 0, i32 0, !dbg !1393
  store i32 %557, i32* %558, align 8, !dbg !1394, !tbaa !1174
  %559 = call i32 inttoptr (i64 2 to i32 (i8*, i8*, i8*, i64)*)(i8* %410, i8* nonnull %53, i8* nonnull %461, i64 0) #5, !dbg !1395
  br label %561, !dbg !1396

560:                                              ; preds = %540, %493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %462) #5, !dbg !1397
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %461) #5, !dbg !1397
  br label %566, !dbg !1398

561:                                              ; preds = %556, %546
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %462) #5, !dbg !1397
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %461) #5, !dbg !1397
  %562 = getelementptr inbounds i8, i8* %255, i64 8, !dbg !1399
  %563 = bitcast i8* %562 to i64*, !dbg !1399
  %564 = load i64, i64* %563, align 8, !dbg !1400, !tbaa !1062
  %565 = add i64 %564, 1, !dbg !1400
  store i64 %565, i64* %563, align 8, !dbg !1400, !tbaa !1062
  br label %567, !dbg !1401

566:                                              ; preds = %560, %459, %408
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %395) #5, !dbg !1402
  br label %750

567:                                              ; preds = %561, %435
  %568 = phi i8* [ %544, %561 ], [ %439, %435 ], !dbg !570
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %395) #5, !dbg !1402
  br label %569

569:                                              ; preds = %567, %383
  %570 = phi i8* [ %568, %567 ], [ %363, %383 ], !dbg !570
  %571 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @ctl_array to i8*), i8* nonnull %56) #5, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %571, metadata !427, metadata !DIExpression()) #5, !dbg !1404
  %572 = icmp eq i8* %571, null, !dbg !1405
  br i1 %572, label %750, label %573, !dbg !1407

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %250, i64 0, i32 1, !dbg !1408
  %575 = load i32, i32* %574, align 4, !dbg !1408, !tbaa !1361
  call void @llvm.dbg.value(metadata i32 %575, metadata !440, metadata !DIExpression()) #5, !dbg !1409
  store i32 %575, i32* %30, align 4, !dbg !1410, !tbaa !578
  %576 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %55) #5, !dbg !1411
  %577 = icmp eq i8* %576, null, !dbg !1412
  br i1 %577, label %750, label %578, !dbg !1414

578:                                              ; preds = %573
  call void @llvm.dbg.value(metadata i8* %576, metadata !435, metadata !DIExpression()) #5, !dbg !905
  call void @llvm.dbg.value(metadata i16 %73, metadata !442, metadata !DIExpression()) #5, !dbg !1415
  %579 = zext i16 %73 to i64, !dbg !1416
  %580 = bitcast i8* %576 to <2 x i64>*, !dbg !1417
  %581 = load <2 x i64>, <2 x i64>* %580, align 8, !dbg !1417, !tbaa !1030
  %582 = insertelement <2 x i64> <i64 1, i64 undef>, i64 %579, i32 1, !dbg !1417
  %583 = add <2 x i64> %582, %581, !dbg !1417
  %584 = bitcast i8* %576 to <2 x i64>*, !dbg !1417
  store <2 x i64> %583, <2 x i64>* %584, align 8, !dbg !1417, !tbaa !1030
  %585 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 1, !dbg !1418
  %586 = bitcast i32* %585 to i8*, !dbg !1419
  %587 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals_stats to i8*), i8* nonnull %586) #5, !dbg !1420
  %588 = icmp eq i8* %587, null, !dbg !1421
  br i1 %588, label %750, label %589, !dbg !1423

589:                                              ; preds = %578
  call void @llvm.dbg.value(metadata i8* %587, metadata !435, metadata !DIExpression()) #5, !dbg !905
  call void @llvm.dbg.value(metadata i16 %73, metadata !442, metadata !DIExpression()) #5, !dbg !1415
  %590 = bitcast i8* %587 to <2 x i64>*, !dbg !1424
  %591 = load <2 x i64>, <2 x i64>* %590, align 8, !dbg !1424, !tbaa !1030
  %592 = add <2 x i64> %582, %591, !dbg !1424
  %593 = bitcast i8* %587 to <2 x i64>*, !dbg !1424
  store <2 x i64> %592, <2 x i64>* %593, align 8, !dbg !1424, !tbaa !1030
  call void @llvm.dbg.value(metadata i8* %570, metadata !429, metadata !DIExpression()) #5, !dbg !570
  %594 = getelementptr inbounds i8, i8* %570, i64 16, !dbg !1425
  %595 = load i8, i8* %594, align 4, !dbg !1425, !tbaa !1427
  %596 = and i8 %595, 1, !dbg !1429
  %597 = icmp eq i8 %596, 0, !dbg !1429
  call void @llvm.dbg.value(metadata i16 %73, metadata !442, metadata !DIExpression()) #5, !dbg !1415
  call void @llvm.dbg.value(metadata i16 %73, metadata !442, metadata !DIExpression()) #5, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !572
  br i1 %597, label %652, label %598, !dbg !1430

598:                                              ; preds = %589
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !1431, metadata !DIExpression()) #5, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %571, metadata !1437, metadata !DIExpression()) #5, !dbg !1456
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1439, metadata !DIExpression()) #5, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %570, metadata !1440, metadata !DIExpression()) #5, !dbg !1458
  call void @llvm.dbg.value(metadata i32 undef, metadata !1441, metadata !DIExpression()) #5, !dbg !1459
  %599 = bitcast %struct.xdp_md* %0 to i8*, !dbg !1460
  %600 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %599, i32 -40) #5, !dbg !1462
  %601 = icmp eq i32 %600, 0, !dbg !1462
  br i1 %601, label %602, label %750, !dbg !1463

602:                                              ; preds = %598
  %603 = load i32, i32* %38, align 4, !dbg !1464, !tbaa !541
  %604 = zext i32 %603 to i64, !dbg !1465
  %605 = inttoptr i64 %604 to i8*, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %605, metadata !1442, metadata !DIExpression()) #5, !dbg !1467
  %606 = load i32, i32* %42, align 4, !dbg !1468, !tbaa !550
  %607 = zext i32 %606 to i64, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %607, metadata !1443, metadata !DIExpression()) #5, !dbg !1470
  %608 = inttoptr i64 %604 to %struct.eth_hdr*, !dbg !1471
  call void @llvm.dbg.value(metadata %struct.eth_hdr* %608, metadata !1445, metadata !DIExpression()) #5, !dbg !1472
  %609 = getelementptr i8, i8* %605, i64 14, !dbg !1473
  call void @llvm.dbg.value(metadata i8* %609, metadata !1444, metadata !DIExpression()) #5, !dbg !1474
  %610 = getelementptr i8, i8* %605, i64 40, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %610, metadata !1446, metadata !DIExpression()) #5, !dbg !1476
  %611 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %608, i64 1, !dbg !1477
  %612 = inttoptr i64 %607 to %struct.eth_hdr*, !dbg !1479
  %613 = icmp ugt %struct.eth_hdr* %611, %612, !dbg !1480
  br i1 %613, label %750, label %614, !dbg !1481

614:                                              ; preds = %602
  %615 = getelementptr inbounds i8, i8* %605, i64 54, !dbg !1482
  %616 = bitcast i8* %615 to %struct.eth_hdr*, !dbg !1482
  %617 = icmp ugt %struct.eth_hdr* %616, %612, !dbg !1483
  br i1 %617, label %750, label %618, !dbg !1484

618:                                              ; preds = %614
  %619 = bitcast i8* %615 to %struct.ipv6hdr*, !dbg !1485
  %620 = inttoptr i64 %607 to %struct.ipv6hdr*, !dbg !1486
  %621 = icmp ugt %struct.ipv6hdr* %619, %620, !dbg !1487
  br i1 %621, label %750, label %622, !dbg !1488

622:                                              ; preds = %618
  %623 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %608, i64 0, i32 0, i64 0, !dbg !1489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %623, i8* nonnull align 8 %571, i64 6, i1 false) #5, !dbg !1489
  %624 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %608, i64 0, i32 1, i64 0, !dbg !1490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %624, i8* align 2 %610, i64 6, i1 false) #5, !dbg !1490
  %625 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %608, i64 0, i32 2, !dbg !1491
  store i16 -8826, i16* %625, align 2, !dbg !1492, !tbaa !562
  call void @llvm.dbg.value(metadata i8 4, metadata !1451, metadata !DIExpression()) #5, !dbg !1493
  %626 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1494
  %627 = load i32, i32* %626, align 4, !dbg !1494, !tbaa !715
  %628 = bitcast %union.anon.3* %232 to i16*, !dbg !1497
  %629 = load i16, i16* %628, align 4, !dbg !1497, !tbaa !715
  %630 = zext i16 %629 to i32, !dbg !1497
  %631 = xor i32 %627, %630, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %631, metadata !1448, metadata !DIExpression()) #5, !dbg !1499
  call void @llvm.dbg.value(metadata i16 %73, metadata !1447, metadata !DIExpression()) #5, !dbg !1500
  call void @llvm.dbg.value(metadata i8 4, metadata !1451, metadata !DIExpression()) #5, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %631, metadata !1448, metadata !DIExpression()) #5, !dbg !1499
  call void @llvm.dbg.value(metadata i16 %73, metadata !1447, metadata !DIExpression()) #5, !dbg !1500
  call void @llvm.dbg.value(metadata i32 1, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #5, !dbg !1501
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #5, !dbg !1501
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #5, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %631, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #5, !dbg !1501
  %632 = load i8, i8* %66, align 1, !dbg !1502, !tbaa !597
  call void @llvm.dbg.value(metadata i8* %609, metadata !1503, metadata !DIExpression()) #5, !dbg !1514
  call void @llvm.dbg.value(metadata i8 %632, metadata !1509, metadata !DIExpression()) #5, !dbg !1516
  call void @llvm.dbg.value(metadata i32* undef, metadata !1510, metadata !DIExpression()) #5, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %570, metadata !1511, metadata !DIExpression()) #5, !dbg !1518
  call void @llvm.dbg.value(metadata i16 %73, metadata !1512, metadata !DIExpression()) #5, !dbg !1519
  call void @llvm.dbg.value(metadata i8 4, metadata !1513, metadata !DIExpression()) #5, !dbg !1520
  %633 = getelementptr inbounds i8, i8* %605, i64 15, !dbg !1521
  %634 = getelementptr inbounds i8, i8* %605, i64 16
  %635 = bitcast i8* %634 to i16*, !dbg !1521
  store i16 0, i16* %635, align 1, !dbg !1521
  %636 = lshr i8 %632, 4, !dbg !1522
  %637 = or i8 %636, 96, !dbg !1523
  store i8 %637, i8* %609, align 4, !dbg !1523
  %638 = shl i8 %632, 4, !dbg !1524
  store i8 %638, i8* %633, align 1, !dbg !1525, !tbaa !715
  %639 = getelementptr inbounds i8, i8* %605, i64 20, !dbg !1526
  store i8 4, i8* %639, align 2, !dbg !1527, !tbaa !1528
  %640 = getelementptr inbounds i8, i8* %605, i64 18, !dbg !1531
  %641 = bitcast i8* %640 to i16*, !dbg !1531
  store i16 %72, i16* %641, align 4, !dbg !1532, !tbaa !1533
  %642 = getelementptr inbounds i8, i8* %605, i64 21, !dbg !1534
  store i8 64, i8* %642, align 1, !dbg !1535, !tbaa !1536
  %643 = getelementptr inbounds i8, i8* %605, i64 22, !dbg !1537
  %644 = bitcast i8* %643 to i32*, !dbg !1537
  store i32 1, i32* %644, align 4, !dbg !1537
  %645 = getelementptr inbounds i8, i8* %605, i64 26, !dbg !1537
  %646 = bitcast i8* %645 to i32*, !dbg !1537
  store i32 0, i32* %646, align 4, !dbg !1537
  %647 = getelementptr inbounds i8, i8* %605, i64 30, !dbg !1537
  %648 = bitcast i8* %647 to i32*, !dbg !1537
  store i32 0, i32* %648, align 4, !dbg !1537
  %649 = getelementptr inbounds i8, i8* %605, i64 34, !dbg !1537
  %650 = bitcast i8* %649 to i32*, !dbg !1537
  store i32 %631, i32* %650, align 4, !dbg !1537
  %651 = getelementptr inbounds i8, i8* %605, i64 38, !dbg !1538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %651, i8* nonnull align 4 %570, i64 16, i1 false) #5, !dbg !1538
  br label %750, !dbg !1539

652:                                              ; preds = %589
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !1540, metadata !DIExpression()) #5, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %571, metadata !1545, metadata !DIExpression()) #5, !dbg !1560
  call void @llvm.dbg.value(metadata %struct.packet_description* %28, metadata !1546, metadata !DIExpression()) #5, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %570, metadata !1547, metadata !DIExpression()) #5, !dbg !1562
  call void @llvm.dbg.value(metadata i32 undef, metadata !1548, metadata !DIExpression()) #5, !dbg !1563
  %653 = bitcast %union.anon.3* %232 to i16*, !dbg !1564
  %654 = load i16, i16* %653, align 4, !dbg !1564, !tbaa !715
  %655 = call i16 @llvm.bswap.i16(i16 %654) #5
  %656 = zext i16 %655 to i32, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %656, metadata !1554, metadata !DIExpression()) #5, !dbg !1565
  %657 = shl nuw i32 %656, 16, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %657, metadata !1554, metadata !DIExpression()) #5, !dbg !1565
  %658 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1567
  %659 = load i32, i32* %658, align 4, !dbg !1567, !tbaa !715
  call void @llvm.dbg.value(metadata i64 0, metadata !1555, metadata !DIExpression()) #5, !dbg !1568
  %660 = bitcast %struct.xdp_md* %0 to i8*, !dbg !1569
  %661 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %660, i32 -20) #5, !dbg !1571
  %662 = icmp eq i32 %661, 0, !dbg !1571
  br i1 %662, label %663, label %750, !dbg !1572

663:                                              ; preds = %652
  %664 = load i32, i32* %38, align 4, !dbg !1573, !tbaa !541
  %665 = zext i32 %664 to i64, !dbg !1574
  %666 = inttoptr i64 %665 to i8*, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %666, metadata !1549, metadata !DIExpression()) #5, !dbg !1576
  %667 = load i32, i32* %42, align 4, !dbg !1577, !tbaa !550
  %668 = zext i32 %667 to i64, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %668, metadata !1550, metadata !DIExpression()) #5, !dbg !1579
  %669 = inttoptr i64 %665 to %struct.eth_hdr*, !dbg !1580
  call void @llvm.dbg.value(metadata %struct.eth_hdr* %669, metadata !1552, metadata !DIExpression()) #5, !dbg !1581
  %670 = getelementptr i8, i8* %666, i64 14, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %670, metadata !1551, metadata !DIExpression()) #5, !dbg !1583
  %671 = getelementptr i8, i8* %666, i64 20, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %671, metadata !1553, metadata !DIExpression()) #5, !dbg !1585
  %672 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %669, i64 1, !dbg !1586
  %673 = inttoptr i64 %668 to %struct.eth_hdr*, !dbg !1588
  %674 = icmp ugt %struct.eth_hdr* %672, %673, !dbg !1589
  br i1 %674, label %750, label %675, !dbg !1590

675:                                              ; preds = %663
  %676 = getelementptr inbounds i8, i8* %666, i64 34, !dbg !1591
  %677 = bitcast i8* %676 to %struct.eth_hdr*, !dbg !1591
  %678 = icmp ugt %struct.eth_hdr* %677, %673, !dbg !1592
  br i1 %678, label %750, label %679, !dbg !1593

679:                                              ; preds = %675
  %680 = bitcast i8* %676 to %struct.iphdr*, !dbg !1594
  %681 = inttoptr i64 %668 to %struct.iphdr*, !dbg !1595
  %682 = icmp ugt %struct.iphdr* %680, %681, !dbg !1596
  br i1 %682, label %750, label %683, !dbg !1597

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %669, i64 0, i32 0, i64 0, !dbg !1598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %684, i8* nonnull align 8 %571, i64 6, i1 false) #5, !dbg !1598
  %685 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %669, i64 0, i32 1, i64 0, !dbg !1599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %685, i8* align 2 %671, i64 6, i1 false) #5, !dbg !1599
  %686 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %669, i64 0, i32 2, !dbg !1600
  store i16 8, i16* %686, align 2, !dbg !1601, !tbaa !562
  %687 = load i8, i8* %66, align 1, !dbg !1602, !tbaa !597
  %688 = and i32 %659, -65536, !dbg !1603
  %689 = xor i32 %657, %688, !dbg !1603
  %690 = or i32 %689, 4268, !dbg !1604
  %691 = bitcast i8* %570 to i32*, !dbg !1605
  %692 = load i32, i32* %691, align 4, !dbg !1605, !tbaa !715
  call void @llvm.dbg.value(metadata i8* %670, metadata !1606, metadata !DIExpression()) #5, !dbg !1617
  call void @llvm.dbg.value(metadata i8 %687, metadata !1611, metadata !DIExpression()) #5, !dbg !1619
  call void @llvm.dbg.value(metadata i32 %690, metadata !1612, metadata !DIExpression()) #5, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %692, metadata !1613, metadata !DIExpression()) #5, !dbg !1621
  call void @llvm.dbg.value(metadata i16 %73, metadata !1614, metadata !DIExpression()) #5, !dbg !1622
  call void @llvm.dbg.value(metadata i8 4, metadata !1615, metadata !DIExpression()) #5, !dbg !1623
  call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()) #5, !dbg !1624
  store i8 69, i8* %670, align 4, !dbg !1625
  %693 = bitcast i8* %671 to i16*, !dbg !1626
  store i16 0, i16* %693, align 2, !dbg !1627, !tbaa !609
  %694 = getelementptr inbounds i8, i8* %666, i64 23, !dbg !1628
  store i8 4, i8* %694, align 1, !dbg !1629, !tbaa !601
  %695 = getelementptr inbounds i8, i8* %666, i64 24, !dbg !1630
  %696 = bitcast i8* %695 to i16*, !dbg !1630
  %697 = getelementptr inbounds i8, i8* %666, i64 15, !dbg !1631
  store i8 %687, i8* %697, align 1, !dbg !1632, !tbaa !593
  %698 = add i16 %73, 20, !dbg !1633
  %699 = call i16 @llvm.bswap.i16(i16 %698) #5
  %700 = getelementptr inbounds i8, i8* %666, i64 16, !dbg !1634
  %701 = bitcast i8* %700 to i16*, !dbg !1634
  store i16 %699, i16* %701, align 2, !dbg !1635, !tbaa !606
  %702 = getelementptr inbounds i8, i8* %666, i64 30, !dbg !1636
  %703 = bitcast i8* %702 to i32*, !dbg !1636
  store i32 %692, i32* %703, align 4, !dbg !1637, !tbaa !642
  %704 = getelementptr inbounds i8, i8* %666, i64 26, !dbg !1638
  %705 = bitcast i8* %704 to i32*, !dbg !1638
  store i32 %690, i32* %705, align 4, !dbg !1639, !tbaa !644
  %706 = getelementptr inbounds i8, i8* %666, i64 22, !dbg !1640
  store i8 64, i8* %706, align 4, !dbg !1641, !tbaa !640
  call void @llvm.dbg.value(metadata i8* %670, metadata !648, metadata !DIExpression()) #5, !dbg !1642
  %707 = bitcast i8* %670 to i16*, !dbg !1644
  call void @llvm.dbg.value(metadata i16* %707, metadata !656, metadata !DIExpression()) #5, !dbg !1645
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i16* %707, metadata !656, metadata !DIExpression()) #5, !dbg !1645
  %708 = load i16, i16* %707, align 2, !dbg !1647, !tbaa !667
  %709 = zext i16 %708 to i64, !dbg !1647
  call void @llvm.dbg.value(metadata i32 1, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 1, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  %710 = getelementptr inbounds i8, i8* %666, i64 18, !dbg !1648
  %711 = bitcast i8* %710 to i16*, !dbg !1648
  %712 = zext i16 %699 to i64, !dbg !1647
  call void @llvm.dbg.value(metadata i32 2, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i16* %711, metadata !656, metadata !DIExpression()) #5, !dbg !1645
  call void @llvm.dbg.value(metadata i32 2, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i16* %711, metadata !656, metadata !DIExpression()) #5, !dbg !1645
  %713 = load i16, i16* %711, align 2, !dbg !1647, !tbaa !667
  %714 = zext i16 %713 to i64, !dbg !1647
  call void @llvm.dbg.value(metadata i32 3, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 3, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  %715 = bitcast i8* %706 to i16*, !dbg !1648
  call void @llvm.dbg.value(metadata i32 4, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i16* %715, metadata !656, metadata !DIExpression()) #5, !dbg !1645
  call void @llvm.dbg.value(metadata i32 4, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i16* %715, metadata !656, metadata !DIExpression()) #5, !dbg !1645
  %716 = load i16, i16* %715, align 2, !dbg !1647, !tbaa !667
  %717 = zext i16 %716 to i64, !dbg !1647
  call void @llvm.dbg.value(metadata i32 5, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 5, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 6, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 6, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 7, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 7, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  %718 = lshr exact i32 %689, 16, !dbg !1647
  %719 = zext i32 %718 to i64, !dbg !1647
  call void @llvm.dbg.value(metadata i32 8, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 8, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  %720 = and i32 %692, 65535, !dbg !1647
  %721 = zext i32 %720 to i64, !dbg !1647
  call void @llvm.dbg.value(metadata i32 9, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i32 9, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  %722 = lshr i32 %692, 16, !dbg !1647
  %723 = zext i32 %722 to i64, !dbg !1647
  %724 = add nuw nsw i64 %712, 4268, !dbg !1649
  %725 = add nuw nsw i64 %724, %719, !dbg !1649
  %726 = add nuw nsw i64 %725, %721, !dbg !1649
  %727 = add nuw nsw i64 %726, %723, !dbg !1649
  %728 = add nuw nsw i64 %727, %709, !dbg !1649
  %729 = add nuw nsw i64 %728, %714, !dbg !1649
  %730 = add i64 %729, %717, !dbg !1649
  call void @llvm.dbg.value(metadata i32 10, metadata !657, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %730, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %730, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  %731 = lshr i64 %730, 16, !dbg !1653
  %732 = icmp eq i64 %731, 0, !dbg !1653
  %733 = and i64 %730, 65535, !dbg !1654
  %734 = add nuw nsw i64 %733, %731, !dbg !1654
  %735 = select i1 %732, i64 %730, i64 %734, !dbg !1654
  call void @llvm.dbg.value(metadata i32 1, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %735, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  call void @llvm.dbg.value(metadata i32 1, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %735, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  %736 = lshr i64 %735, 16, !dbg !1653
  %737 = icmp eq i64 %736, 0, !dbg !1653
  %738 = and i64 %735, 65535, !dbg !1654
  %739 = add nuw nsw i64 %738, %736, !dbg !1654
  %740 = select i1 %737, i64 %735, i64 %739, !dbg !1654
  call void @llvm.dbg.value(metadata i32 2, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %740, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  call void @llvm.dbg.value(metadata i32 2, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %740, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  %741 = lshr i64 %740, 16, !dbg !1653
  %742 = icmp eq i64 %741, 0, !dbg !1653
  %743 = and i64 %740, 65535, !dbg !1654
  %744 = add nuw nsw i64 %743, %741, !dbg !1654
  %745 = select i1 %742, i64 %740, i64 %744, !dbg !1654
  call void @llvm.dbg.value(metadata i32 3, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %745, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  call void @llvm.dbg.value(metadata i32 3, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %745, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  %746 = lshr i64 %745, 16, !dbg !1653
  %747 = add i64 %746, %745, !dbg !1654
  call void @llvm.dbg.value(metadata i32 4, metadata !675, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %747, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %747, metadata !670, metadata !DIExpression()) #5, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %747, metadata !1616, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_xor, DW_OP_stack_value)) #5, !dbg !1624
  %748 = trunc i64 %747 to i16, !dbg !1655
  %749 = xor i16 %748, -1, !dbg !1655
  store i16 %749, i16* %696, align 2, !dbg !1656, !tbaa !687
  br label %750, !dbg !1657

750:                                              ; preds = %683, %679, %675, %663, %652, %622, %618, %614, %602, %598, %578, %573, %569, %566, %382, %253
  %751 = phi i32 [ 1, %382 ], [ 1, %253 ], [ 1, %569 ], [ 1, %573 ], [ 1, %578 ], [ 1, %566 ], [ 3, %683 ], [ 3, %622 ], [ 1, %598 ], [ 1, %618 ], [ 1, %614 ], [ 1, %602 ], [ 1, %652 ], [ 1, %679 ], [ 1, %675 ], [ 1, %663 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %254) #5, !dbg !1658
  br label %752

752:                                              ; preds = %52, %59, %63, %81, %84, %86, %146, %149, %172, %177, %205, %239, %249, %750
  %753 = phi i32 [ %751, %750 ], [ 2, %172 ], [ 2, %239 ], [ 1, %249 ], [ 1, %177 ], [ 1, %205 ], [ 3, %86 ], [ 1, %81 ], [ 2, %84 ], [ 1, %146 ], [ 1, %149 ], [ 1, %63 ], [ 1, %59 ], [ 1, %52 ], !dbg !897
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56) #5, !dbg !1658
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %55) #5, !dbg !1658
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %54) #5, !dbg !1658
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %53) #5, !dbg !1658
  br label %1494, !dbg !1659

754:                                              ; preds = %48
  call void @llvm.dbg.value(metadata i8* %41, metadata !422, metadata !DIExpression()) #5, !dbg !1660
  call void @llvm.dbg.value(metadata i64 14, metadata !423, metadata !DIExpression()) #5, !dbg !1661
  call void @llvm.dbg.value(metadata i8* %45, metadata !424, metadata !DIExpression()) #5, !dbg !1662
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !426, metadata !DIExpression()) #5, !dbg !1663
  call void @llvm.dbg.value(metadata %struct.real_definition* null, metadata !429, metadata !DIExpression()) #5, !dbg !1664
  %755 = bitcast %struct.packet_description* %10 to i8*, !dbg !1665
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %755) #5, !dbg !1665
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %755, i8 0, i64 48, i1 false) #5, !dbg !1666
  %756 = bitcast %struct.vip_definition* %11 to i8*, !dbg !1667
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %756) #5, !dbg !1667
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %756, i8 0, i64 20, i1 false) #5, !dbg !1668
  %757 = bitcast i32* %12 to i8*, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %757) #5, !dbg !1669
  %758 = bitcast i32* %13 to i8*, !dbg !1670
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %758) #5, !dbg !1670
  call void @llvm.dbg.value(metadata i32 0, metadata !441, metadata !DIExpression()) #5, !dbg !1671
  store i32 0, i32* %13, align 4, !dbg !1671, !tbaa !578
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !391, metadata !DIExpression()) #5, !dbg !1672
  call void @llvm.dbg.value(metadata i64 14, metadata !393, metadata !DIExpression()) #5, !dbg !1673
  call void @llvm.dbg.value(metadata i8* %41, metadata !395, metadata !DIExpression()) #5, !dbg !1674
  call void @llvm.dbg.value(metadata i8* %45, metadata !396, metadata !DIExpression()) #5, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %46, metadata !416, metadata !DIExpression()) #5, !dbg !1676
  %759 = getelementptr i8, i8* %41, i64 54, !dbg !1677
  %760 = icmp ugt i8* %759, %45, !dbg !1679
  br i1 %760, label %1492, label %761, !dbg !1680

761:                                              ; preds = %754
  call void @llvm.dbg.value(metadata i64 40, metadata !398, metadata !DIExpression()) #5, !dbg !1681
  %762 = getelementptr inbounds i8, i8* %41, i64 20, !dbg !1682
  %763 = load i8, i8* %762, align 2, !dbg !1682, !tbaa !1528
  %764 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 3, !dbg !1683
  store i8 %763, i8* %764, align 4, !dbg !1684, !tbaa !604
  %765 = load i8, i8* %46, align 4, !dbg !1685
  %766 = shl i8 %765, 4, !dbg !1686
  %767 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 3, !dbg !1687
  %768 = getelementptr inbounds i8, i8* %41, i64 15, !dbg !1688
  %769 = load i8, i8* %768, align 1, !dbg !1689, !tbaa !715
  %770 = lshr i8 %769, 4, !dbg !1690
  %771 = or i8 %770, %766, !dbg !1691
  store i8 %771, i8* %767, align 1, !dbg !1692, !tbaa !597
  %772 = getelementptr inbounds i8, i8* %41, i64 18, !dbg !1693
  %773 = bitcast i8* %772 to i16*, !dbg !1693
  %774 = load i16, i16* %773, align 4, !dbg !1693, !tbaa !1533
  %775 = tail call i16 @llvm.bswap.i16(i16 %774) #5
  call void @llvm.dbg.value(metadata i64 54, metadata !393, metadata !DIExpression()) #5, !dbg !1673
  switch i8 %763, label %803 [
    i8 44, label %1492
    i8 58, label %776
  ], !dbg !1694

776:                                              ; preds = %761
  call void @llvm.dbg.value(metadata i8* %41, metadata !373, metadata !DIExpression()) #5, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %45, metadata !374, metadata !DIExpression()) #5, !dbg !1696
  call void @llvm.dbg.value(metadata i64 54, metadata !375, metadata !DIExpression()) #5, !dbg !1697
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !376, metadata !DIExpression()) #5, !dbg !1698
  %777 = getelementptr i8, i8* %41, i64 62, !dbg !1699
  %778 = icmp ugt i8* %777, %45, !dbg !1701
  br i1 %778, label %1492, label %779, !dbg !1702

779:                                              ; preds = %776
  call void @llvm.dbg.value(metadata i8* %759, metadata !377, metadata !DIExpression()) #5, !dbg !1703
  %780 = load i8, i8* %759, align 4, !dbg !1704, !tbaa !1705
  switch i8 %780, label %1492 [
    i8 -128, label %781
    i8 2, label %792
    i8 1, label %792
  ], !dbg !1707

781:                                              ; preds = %779
  call void @llvm.dbg.value(metadata i8* %41, metadata !282, metadata !DIExpression()) #5, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %45, metadata !283, metadata !DIExpression()) #5, !dbg !1709
  %782 = bitcast [4 x i32]* %9 to i8*, !dbg !1710
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %782), !dbg !1710
  call void @llvm.dbg.value(metadata i64 0, metadata !357, metadata !DIExpression()) #5, !dbg !1711
  call void @llvm.dbg.value(metadata i64 14, metadata !357, metadata !DIExpression()) #5, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %41, metadata !284, metadata !DIExpression(DW_OP_plus_uconst, 14, DW_OP_stack_value)) #5, !dbg !1712
  call void @llvm.dbg.value(metadata i64 54, metadata !357, metadata !DIExpression()) #5, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %759, metadata !314, metadata !DIExpression()) #5, !dbg !1713
  store i8 -127, i8* %759, align 4, !dbg !1714, !tbaa !1705
  %783 = getelementptr inbounds i8, i8* %41, i64 56, !dbg !1715
  %784 = bitcast i8* %783 to i16*, !dbg !1715
  %785 = load i16, i16* %784, align 2, !dbg !1716, !tbaa !1717
  %786 = add i16 %785, -1, !dbg !1716
  store i16 %786, i16* %784, align 2, !dbg !1716, !tbaa !1717
  %787 = getelementptr inbounds i8, i8* %41, i64 21, !dbg !1718
  store i8 64, i8* %787, align 1, !dbg !1719, !tbaa !1536
  %788 = getelementptr inbounds i8, i8* %41, i64 22, !dbg !1720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %782, i8* nonnull align 4 %788, i64 16, i1 false) #5, !dbg !1721
  %789 = getelementptr inbounds i8, i8* %41, i64 38, !dbg !1722
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %788, i8* nonnull align 4 %789, i64 16, i1 false) #5, !dbg !1723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %789, i8* nonnull align 16 %782, i64 16, i1 false) #5, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %41, metadata !475, metadata !DIExpression()) #5, !dbg !1725
  call void @llvm.dbg.value(metadata i8* undef, metadata !476, metadata !DIExpression()) #5, !dbg !1726
  %790 = getelementptr inbounds [6 x i8], [6 x i8]* %27, i64 0, i64 0, !dbg !1727
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %790), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %41, metadata !477, metadata !DIExpression()) #5, !dbg !1728
  %791 = getelementptr inbounds i8, i8* %41, i64 6, !dbg !1729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %790, i8* nonnull align 2 %791, i64 6, i1 false) #5, !dbg !1730
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %791, i8* nonnull align 2 %41, i64 6, i1 false) #5, !dbg !1731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %41, i8* nonnull align 1 %790, i64 6, i1 false) #5, !dbg !1732
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %790), !dbg !1733
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %782), !dbg !1734
  br label %1492, !dbg !1735

792:                                              ; preds = %779, %779
  call void @llvm.dbg.value(metadata i64 62, metadata !375, metadata !DIExpression()) #5, !dbg !1697
  %793 = getelementptr inbounds i8, i8* %41, i64 102, !dbg !1736
  %794 = icmp ugt i8* %793, %45, !dbg !1738
  br i1 %794, label %1492, label %795, !dbg !1739

795:                                              ; preds = %792
  call void @llvm.dbg.value(metadata i8* %41, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 62, DW_OP_stack_value)) #5, !dbg !1740
  %796 = getelementptr inbounds i8, i8* %41, i64 68, !dbg !1741
  %797 = load i8, i8* %796, align 2, !dbg !1741, !tbaa !1528
  store i8 %797, i8* %764, align 4, !dbg !1742, !tbaa !604
  %798 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !1743
  store i8 1, i8* %798, align 4, !dbg !1744, !tbaa !711
  %799 = getelementptr inbounds i8, i8* %41, i64 86, !dbg !1745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %755, i8* nonnull align 4 %799, i64 16, i1 false) #5, !dbg !1746
  %800 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 1, i32 0, i64 0, !dbg !1747
  %801 = bitcast i32* %800 to i8*, !dbg !1747
  %802 = getelementptr inbounds i8, i8* %41, i64 70, !dbg !1748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %801, i8* nonnull align 4 %802, i64 16, i1 false) #5, !dbg !1747
  call void @llvm.dbg.value(metadata i32 -1, metadata !399, metadata !DIExpression()) #5, !dbg !1749
  br label %808, !dbg !1750

803:                                              ; preds = %761
  %804 = getelementptr inbounds i8, i8* %41, i64 22, !dbg !1751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %755, i8* nonnull align 4 %804, i64 16, i1 false) #5, !dbg !1753
  %805 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 1, i32 0, i64 0, !dbg !1754
  %806 = bitcast i32* %805 to i8*, !dbg !1754
  %807 = getelementptr inbounds i8, i8* %41, i64 38, !dbg !1755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %806, i8* nonnull align 4 %807, i64 16, i1 false) #5, !dbg !1754
  br label %808

808:                                              ; preds = %803, %795
  %809 = phi i8 [ 0, %803 ], [ 1, %795 ]
  %810 = phi i8 [ %763, %803 ], [ %797, %795 ], !dbg !1756
  call void @llvm.dbg.value(metadata i32 -1, metadata !439, metadata !DIExpression()) #5, !dbg !1757
  call void @llvm.dbg.value(metadata i8 %810, metadata !438, metadata !DIExpression()) #5, !dbg !1758
  switch i8 %810, label %1492 [
    i8 6, label %811
    i8 17, label %839
  ], !dbg !1759

811:                                              ; preds = %808
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %41, metadata !729, metadata !DIExpression()) #5, !dbg !1760
  call void @llvm.dbg.value(metadata i8* %45, metadata !734, metadata !DIExpression()) #5, !dbg !1762
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !736, metadata !DIExpression()) #5, !dbg !1763
  %812 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !1764
  %813 = icmp ne i8 %809, 0, !dbg !1765
  call void @llvm.dbg.value(metadata i64 14, metadata !770, metadata !DIExpression()) #5, !dbg !1766
  %814 = select i1 %813, i64 102, i64 54, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %814, metadata !738, metadata !DIExpression()) #5, !dbg !1769
  %815 = getelementptr i8, i8* %41, i64 %814, !dbg !1770
  call void @llvm.dbg.value(metadata i8* %815, metadata !739, metadata !DIExpression()) #5, !dbg !1771
  %816 = getelementptr inbounds i8, i8* %815, i64 20, !dbg !1772
  %817 = icmp ugt i8* %816, %45, !dbg !1773
  br i1 %817, label %1492, label %818, !dbg !1774

818:                                              ; preds = %811
  %819 = getelementptr inbounds i8, i8* %815, i64 12, !dbg !1775
  %820 = bitcast i8* %819 to i16*, !dbg !1775
  %821 = load i16, i16* %820, align 4, !dbg !1775
  %822 = and i16 %821, 512, !dbg !1775
  %823 = icmp eq i16 %822, 0, !dbg !1776
  br i1 %823, label %826, label %824, !dbg !1777

824:                                              ; preds = %818
  %825 = or i8 %809, 2, !dbg !1778
  store i8 %825, i8* %812, align 4, !dbg !1778, !tbaa !711
  br label %826, !dbg !1779

826:                                              ; preds = %824, %818
  br i1 %813, label %833, label %827, !dbg !1780

827:                                              ; preds = %826
  %828 = bitcast i8* %815 to i16*, !dbg !1781
  %829 = load i16, i16* %828, align 4, !dbg !1781, !tbaa !798
  %830 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1782
  %831 = bitcast %union.anon.3* %830 to i16*, !dbg !1783
  store i16 %829, i16* %831, align 4, !dbg !1784, !tbaa !715
  %832 = getelementptr inbounds i8, i8* %815, i64 2, !dbg !1785
  br label %858, !dbg !1786

833:                                              ; preds = %826
  %834 = getelementptr inbounds i8, i8* %815, i64 2, !dbg !1787
  %835 = bitcast i8* %834 to i16*, !dbg !1787
  %836 = load i16, i16* %835, align 2, !dbg !1787, !tbaa !807
  %837 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1788
  %838 = bitcast %union.anon.3* %837 to i16*, !dbg !1789
  store i16 %836, i16* %838, align 4, !dbg !1790, !tbaa !715
  br label %858

839:                                              ; preds = %808
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %41, metadata !811, metadata !DIExpression()) #5, !dbg !1791
  call void @llvm.dbg.value(metadata i8* %45, metadata !814, metadata !DIExpression()) #5, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !816, metadata !DIExpression()) #5, !dbg !1794
  %840 = icmp ne i8 %809, 0, !dbg !1795
  call void @llvm.dbg.value(metadata i64 14, metadata !770, metadata !DIExpression()) #5, !dbg !1796
  %841 = select i1 %840, i64 102, i64 54, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %841, metadata !818, metadata !DIExpression()) #5, !dbg !1799
  %842 = getelementptr i8, i8* %41, i64 %841, !dbg !1800
  call void @llvm.dbg.value(metadata i8* %842, metadata !819, metadata !DIExpression()) #5, !dbg !1801
  %843 = getelementptr inbounds i8, i8* %842, i64 8, !dbg !1802
  %844 = icmp ugt i8* %843, %45, !dbg !1803
  br i1 %844, label %1492, label %845, !dbg !1804

845:                                              ; preds = %839
  br i1 %840, label %852, label %846, !dbg !1805

846:                                              ; preds = %845
  %847 = bitcast i8* %842 to i16*, !dbg !1806
  %848 = load i16, i16* %847, align 2, !dbg !1806, !tbaa !850
  %849 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1807
  %850 = bitcast %union.anon.3* %849 to i16*, !dbg !1808
  store i16 %848, i16* %850, align 4, !dbg !1809, !tbaa !715
  %851 = getelementptr inbounds i8, i8* %842, i64 2, !dbg !1810
  br label %858, !dbg !1811

852:                                              ; preds = %845
  %853 = getelementptr inbounds i8, i8* %842, i64 2, !dbg !1812
  %854 = bitcast i8* %853 to i16*, !dbg !1812
  %855 = load i16, i16* %854, align 2, !dbg !1812, !tbaa !859
  %856 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1813
  %857 = bitcast %union.anon.3* %856 to i16*, !dbg !1814
  store i16 %855, i16* %857, align 4, !dbg !1815, !tbaa !715
  br label %858

858:                                              ; preds = %852, %846, %833, %827
  %859 = phi %union.anon.3* [ %856, %852 ], [ %849, %846 ], [ %837, %833 ], [ %830, %827 ]
  %860 = phi i8* [ %842, %852 ], [ %851, %846 ], [ %815, %833 ], [ %832, %827 ]
  %861 = bitcast i8* %860 to i16*, !dbg !1816
  %862 = load i16, i16* %861, align 2, !dbg !1816, !tbaa !667
  %863 = bitcast %union.anon.3* %859 to [2 x i16]*, !dbg !1816
  %864 = getelementptr inbounds [2 x i16], [2 x i16]* %863, i64 0, i64 1, !dbg !1816
  store i16 %862, i16* %864, align 2, !dbg !1816, !tbaa !715
  %865 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 1, i32 0, i64 0, !dbg !1817
  %866 = bitcast i32* %865 to i8*, !dbg !1818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %756, i8* nonnull align 4 %866, i64 16, i1 false) #5, !dbg !1818
  %867 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, !dbg !1820
  %868 = getelementptr inbounds [2 x i16], [2 x i16]* %863, i64 0, i64 1, !dbg !1821
  %869 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %11, i64 0, i32 1, !dbg !1822
  store i16 %862, i16* %869, align 4, !dbg !1823, !tbaa !872
  %870 = getelementptr inbounds %struct.vip_definition, %struct.vip_definition* %11, i64 0, i32 2, !dbg !1824
  store i8 %810, i8* %870, align 2, !dbg !1825, !tbaa !876
  %871 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @vip_map to i8*), i8* nonnull %756) #5, !dbg !1826
  %872 = bitcast i8* %871 to %struct.vip_meta*, !dbg !1826
  call void @llvm.dbg.value(metadata %struct.vip_meta* %872, metadata !433, metadata !DIExpression()) #5, !dbg !1827
  %873 = icmp eq i8* %871, null, !dbg !1828
  br i1 %873, label %874, label %884, !dbg !1829

874:                                              ; preds = %858
  store i16 0, i16* %869, align 4, !dbg !1830, !tbaa !872
  %875 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @vip_map to i8*), i8* nonnull %756) #5, !dbg !1831
  %876 = bitcast i8* %875 to %struct.vip_meta*, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.vip_meta* %876, metadata !433, metadata !DIExpression()) #5, !dbg !1827
  %877 = icmp eq i8* %875, null, !dbg !1832
  br i1 %877, label %1492, label %878, !dbg !1833

878:                                              ; preds = %874
  %879 = bitcast i8* %875 to i32*, !dbg !1834
  %880 = load i32, i32* %879, align 4, !dbg !1834, !tbaa !890
  %881 = and i32 %880, 8, !dbg !1835
  %882 = icmp eq i32 %881, 0, !dbg !1835
  br i1 %882, label %883, label %884, !dbg !1836

883:                                              ; preds = %878
  store i16 0, i16* %868, align 2, !dbg !1837, !tbaa !715
  br label %884, !dbg !1838

884:                                              ; preds = %883, %878, %858
  %885 = phi %struct.vip_meta* [ %872, %858 ], [ %876, %878 ], [ %876, %883 ], !dbg !1839
  call void @llvm.dbg.value(metadata %struct.vip_meta* %885, metadata !433, metadata !DIExpression()) #5, !dbg !1827
  %886 = sub nsw i64 %44, %40, !dbg !1840
  %887 = icmp sgt i64 %886, 1514, !dbg !1841
  br i1 %887, label %1492, label %888, !dbg !1842

888:                                              ; preds = %884
  %889 = bitcast i32* %14 to i8*, !dbg !1843
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %889) #5, !dbg !1843
  call void @llvm.dbg.value(metadata i32 512, metadata !443, metadata !DIExpression()) #5, !dbg !1844
  store i32 512, i32* %14, align 4, !dbg !1844, !tbaa !578
  %890 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %889) #5, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %890, metadata !435, metadata !DIExpression()) #5, !dbg !1846
  %891 = icmp eq i8* %890, null, !dbg !1847
  br i1 %891, label %1490, label %892, !dbg !1848

892:                                              ; preds = %888
  %893 = bitcast i8* %890 to i64*, !dbg !1849
  %894 = load i64, i64* %893, align 8, !dbg !1850, !tbaa !911
  %895 = add i64 %894, 1, !dbg !1850
  store i64 %895, i64* %893, align 8, !dbg !1850, !tbaa !911
  %896 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %885, i64 0, i32 0, !dbg !1851
  %897 = load i32, i32* %896, align 4, !dbg !1851, !tbaa !890
  %898 = and i32 %897, 4, !dbg !1852
  %899 = icmp eq i32 %898, 0, !dbg !1852
  br i1 %899, label %1023, label %900, !dbg !1853

900:                                              ; preds = %892
  %901 = bitcast i32* %15 to i8*, !dbg !1854
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %901) #5, !dbg !1854
  call void @llvm.dbg.value(metadata i32 519, metadata !444, metadata !DIExpression()) #5, !dbg !1855
  store i32 519, i32* %15, align 4, !dbg !1855, !tbaa !578
  %902 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %901) #5, !dbg !1856
  call void @llvm.dbg.value(metadata i8* %902, metadata !447, metadata !DIExpression()) #5, !dbg !1857
  %903 = icmp eq i8* %902, null, !dbg !1858
  br i1 %903, label %1017, label %904, !dbg !1859

904:                                              ; preds = %900
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %41, metadata !924, metadata !DIExpression()) #5, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %45, metadata !929, metadata !DIExpression()) #5, !dbg !1862
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !931, metadata !DIExpression()) #5, !dbg !1863
  %905 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !1864
  %906 = load i8, i8* %905, align 4, !dbg !1864, !tbaa !711
  %907 = and i8 %906, 1, !dbg !1865
  %908 = icmp eq i8 %907, 0, !dbg !1866
  call void @llvm.dbg.value(metadata i64 14, metadata !770, metadata !DIExpression()) #5, !dbg !1867
  %909 = select i1 %908, i64 54, i64 102, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %909, metadata !933, metadata !DIExpression()) #5, !dbg !1870
  %910 = getelementptr i8, i8* %41, i64 %909, !dbg !1871
  %911 = getelementptr i8, i8* %910, i64 8, !dbg !1872
  %912 = getelementptr i8, i8* %911, i64 1, !dbg !1873
  %913 = icmp ugt i8* %912, %45, !dbg !1874
  br i1 %913, label %1013, label %914, !dbg !1875

914:                                              ; preds = %904
  call void @llvm.dbg.value(metadata i8* %911, metadata !934, metadata !DIExpression()) #5, !dbg !1876
  call void @llvm.dbg.value(metadata i8* %911, metadata !935, metadata !DIExpression()) #5, !dbg !1877
  call void @llvm.dbg.value(metadata i8* null, metadata !936, metadata !DIExpression()) #5, !dbg !1878
  %915 = load i8, i8* %911, align 1, !dbg !1879, !tbaa !715
  %916 = icmp slt i8 %915, 0, !dbg !1880
  br i1 %916, label %917, label %928, !dbg !1881

917:                                              ; preds = %914
  %918 = getelementptr inbounds i8, i8* %911, i64 14, !dbg !1882
  %919 = icmp ugt i8* %918, %45, !dbg !1883
  %920 = and i8 %915, 32, !dbg !1884
  %921 = icmp eq i8 %920, 0, !dbg !1885
  %922 = or i1 %919, %921, !dbg !1886
  br i1 %922, label %1013, label %923, !dbg !1886

923:                                              ; preds = %917
  %924 = getelementptr inbounds i8, i8* %911, i64 5, !dbg !1887
  %925 = load i8, i8* %924, align 1, !dbg !1887, !tbaa !977
  %926 = icmp ult i8 %925, 8, !dbg !1888
  %927 = getelementptr inbounds i8, i8* %911, i64 6, !dbg !1889
  br i1 %926, label %1013, label %931

928:                                              ; preds = %914
  %929 = getelementptr inbounds i8, i8* %911, i64 9, !dbg !1890
  %930 = icmp ugt i8* %929, %45, !dbg !1891
  br i1 %930, label %1013, label %931, !dbg !1892

931:                                              ; preds = %928, %923
  %932 = phi i8* [ %912, %928 ], [ %927, %923 ]
  %933 = load i8, i8* %932, align 1, !dbg !1893, !tbaa !715
  %934 = lshr i8 %933, 6, !dbg !1894
  call void @llvm.dbg.value(metadata i8 %934, metadata !940, metadata !DIExpression()) #5, !dbg !1895
  switch i8 %934, label %1013 [
    i8 1, label %935
    i8 2, label %947
  ], !dbg !1896

935:                                              ; preds = %931
  %936 = and i8 %933, 63, !dbg !1897
  %937 = zext i8 %936 to i32, !dbg !1897
  %938 = shl nuw nsw i32 %937, 10, !dbg !1898
  %939 = getelementptr inbounds i8, i8* %932, i64 1, !dbg !1899
  %940 = load i8, i8* %939, align 1, !dbg !1899, !tbaa !715
  %941 = zext i8 %940 to i32, !dbg !1899
  %942 = shl nuw nsw i32 %941, 2, !dbg !1900
  %943 = or i32 %942, %938, !dbg !1901
  %944 = getelementptr inbounds i8, i8* %932, i64 2, !dbg !1902
  %945 = load i8, i8* %944, align 1, !dbg !1902, !tbaa !715
  %946 = lshr i8 %945, 6, !dbg !1903
  br label %959, !dbg !1904

947:                                              ; preds = %931
  %948 = getelementptr inbounds i8, i8* %932, i64 1, !dbg !1905
  %949 = load i8, i8* %948, align 1, !dbg !1905, !tbaa !715
  %950 = zext i8 %949 to i32, !dbg !1905
  %951 = shl nuw nsw i32 %950, 16, !dbg !1906
  %952 = getelementptr inbounds i8, i8* %932, i64 2, !dbg !1907
  %953 = load i8, i8* %952, align 1, !dbg !1907, !tbaa !715
  %954 = zext i8 %953 to i32, !dbg !1907
  %955 = shl nuw nsw i32 %954, 8, !dbg !1908
  %956 = or i32 %955, %951, !dbg !1909
  %957 = getelementptr inbounds i8, i8* %932, i64 3, !dbg !1910
  %958 = load i8, i8* %957, align 1, !dbg !1910, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %963, metadata !941, metadata !DIExpression()) #5, !dbg !1911
  br label %959

959:                                              ; preds = %947, %935
  %960 = phi i8 [ %958, %947 ], [ %946, %935 ]
  %961 = phi i32 [ %956, %947 ], [ %943, %935 ]
  %962 = zext i8 %960 to i32, !dbg !1912
  %963 = or i32 %961, %962, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %963, metadata !448, metadata !DIExpression()) #5, !dbg !1913
  %964 = icmp sgt i32 %963, 0, !dbg !1914
  br i1 %964, label %965, label %1013, !dbg !1915

965:                                              ; preds = %959
  call void @llvm.dbg.value(metadata i32 %963, metadata !1010, metadata !DIExpression()) #5, !dbg !1916
  %966 = bitcast i32* %8 to i8*, !dbg !1918
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %966) #5, !dbg !1918
  call void @llvm.dbg.value(metadata i32 520, metadata !1015, metadata !DIExpression()) #5, !dbg !1919
  store i32 520, i32* %8, align 4, !dbg !1919, !tbaa !578
  %967 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %966) #5, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %967, metadata !1016, metadata !DIExpression()) #5, !dbg !1921
  %968 = icmp eq i8* %967, null, !dbg !1922
  br i1 %968, label %976, label %969, !dbg !1923

969:                                              ; preds = %965
  %970 = icmp sgt i32 %963, 65535, !dbg !1924
  %971 = getelementptr inbounds i8, i8* %967, i64 8, !dbg !1925
  %972 = select i1 %970, i8* %971, i8* %967, !dbg !1925
  %973 = bitcast i8* %972 to i64*, !dbg !1926
  %974 = load i64, i64* %973, align 8, !dbg !1926, !tbaa !1030
  %975 = add i64 %974, 1, !dbg !1926
  store i64 %975, i64* %973, align 8, !dbg !1926, !tbaa !1030
  br label %976, !dbg !1927

976:                                              ; preds = %969, %965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %966) #5, !dbg !1927
  %977 = bitcast i32* %16 to i8*, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %977) #5, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %963, metadata !449, metadata !DIExpression()) #5, !dbg !1929
  store i32 %963, i32* %16, align 4, !dbg !1929, !tbaa !578
  %978 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @server_id_map to i8*), i8* nonnull %977) #5, !dbg !1930
  %979 = icmp eq i8* %978, null, !dbg !1931
  br i1 %979, label %1008, label %980, !dbg !1932

980:                                              ; preds = %976
  %981 = bitcast i8* %978 to i32*, !dbg !1930
  call void @llvm.dbg.value(metadata i32* %981, metadata !452, metadata !DIExpression()) #5, !dbg !1933
  %982 = load i32, i32* %981, align 4, !dbg !1934, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %982, metadata !449, metadata !DIExpression()) #5, !dbg !1929
  store i32 %982, i32* %16, align 4, !dbg !1935, !tbaa !578
  %983 = icmp eq i32 %982, 0, !dbg !1936
  br i1 %983, label %984, label %995, !dbg !1937

984:                                              ; preds = %980
  %985 = bitcast i32* %7 to i8*, !dbg !1938
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %985) #5, !dbg !1938
  call void @llvm.dbg.value(metadata i32 521, metadata !1050, metadata !DIExpression()) #5, !dbg !1940
  store i32 521, i32* %7, align 4, !dbg !1940, !tbaa !578
  %986 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %985) #5, !dbg !1941
  %987 = icmp eq i8* %986, null, !dbg !1942
  br i1 %987, label %993, label %988, !dbg !1943

988:                                              ; preds = %984
  call void @llvm.dbg.value(metadata i8* %986, metadata !1051, metadata !DIExpression()) #5, !dbg !1944
  %989 = getelementptr inbounds i8, i8* %986, i64 8, !dbg !1945
  %990 = bitcast i8* %989 to i64*, !dbg !1945
  %991 = load i64, i64* %990, align 8, !dbg !1946, !tbaa !1062
  %992 = add i64 %991, 1, !dbg !1946
  store i64 %992, i64* %990, align 8, !dbg !1946, !tbaa !1062
  br label %993, !dbg !1947

993:                                              ; preds = %988, %984
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %985) #5, !dbg !1947
  %994 = load i32, i32* %16, align 4, !dbg !1948, !tbaa !578
  br label %995, !dbg !1949

995:                                              ; preds = %993, %980
  %996 = phi i32 [ %994, %993 ], [ %982, %980 ], !dbg !1948
  call void @llvm.dbg.value(metadata i32 %996, metadata !449, metadata !DIExpression()) #5, !dbg !1929
  %997 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !1950
  store i32 %996, i32* %997, align 4, !dbg !1951, !tbaa !1068
  %998 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals to i8*), i8* nonnull %977) #5, !dbg !1952
  call void @llvm.dbg.value(metadata i8* %998, metadata !429, metadata !DIExpression()) #5, !dbg !1664
  %999 = icmp eq i8* %998, null, !dbg !1953
  br i1 %999, label %1000, label %1018, !dbg !1954

1000:                                             ; preds = %995
  %1001 = bitcast i32* %6 to i8*, !dbg !1955
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1001) #5, !dbg !1955
  call void @llvm.dbg.value(metadata i32 521, metadata !1076, metadata !DIExpression()) #5, !dbg !1957
  store i32 521, i32* %6, align 4, !dbg !1957, !tbaa !578
  %1002 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %1001) #5, !dbg !1958
  %1003 = icmp eq i8* %1002, null, !dbg !1959
  br i1 %1003, label %1012, label %1004, !dbg !1960

1004:                                             ; preds = %1000
  call void @llvm.dbg.value(metadata i8* %1002, metadata !1077, metadata !DIExpression()) #5, !dbg !1961
  %1005 = bitcast i8* %1002 to i64*, !dbg !1962
  %1006 = load i64, i64* %1005, align 8, !dbg !1963, !tbaa !911
  %1007 = add i64 %1006, 1, !dbg !1963
  store i64 %1007, i64* %1005, align 8, !dbg !1963, !tbaa !911
  br label %1012, !dbg !1964

1008:                                             ; preds = %976
  %1009 = bitcast i8* %902 to i64*, !dbg !1965
  %1010 = load i64, i64* %1009, align 8, !dbg !1966, !tbaa !911
  %1011 = add i64 %1010, 1, !dbg !1966
  store i64 %1011, i64* %1009, align 8, !dbg !1966, !tbaa !911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %977) #5, !dbg !1967
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %901) #5, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %998, metadata !429, metadata !DIExpression()) #5, !dbg !1664
  br label %1023, !dbg !1969

1012:                                             ; preds = %1004, %1000
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1001) #5, !dbg !1964
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %977) #5, !dbg !1967
  br label %1017

1013:                                             ; preds = %959, %931, %928, %923, %917, %904
  %1014 = bitcast i8* %902 to i64*, !dbg !1970
  %1015 = load i64, i64* %1014, align 8, !dbg !1971, !tbaa !911
  %1016 = add i64 %1015, 1, !dbg !1971
  store i64 %1016, i64* %1014, align 8, !dbg !1971, !tbaa !911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %901) #5, !dbg !1968
  br label %1023, !dbg !1969

1017:                                             ; preds = %1012, %900
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %901) #5, !dbg !1968
  br label %1490

1018:                                             ; preds = %995
  %1019 = getelementptr inbounds i8, i8* %902, i64 8, !dbg !1972
  %1020 = bitcast i8* %1019 to i64*, !dbg !1972
  %1021 = load i64, i64* %1020, align 8, !dbg !1973, !tbaa !1062
  %1022 = add i64 %1021, 1, !dbg !1973
  store i64 %1022, i64* %1020, align 8, !dbg !1973, !tbaa !1062
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %977) #5, !dbg !1967
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %901) #5, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %998, metadata !429, metadata !DIExpression()) #5, !dbg !1664
  br label %1307, !dbg !1969

1023:                                             ; preds = %1013, %1008, %892
  %1024 = load i32, i32* %896, align 4, !dbg !1974, !tbaa !890
  %1025 = and i32 %1024, 1, !dbg !1975
  %1026 = icmp eq i32 %1025, 0, !dbg !1975
  br i1 %1026, label %1029, label %1027, !dbg !1976

1027:                                             ; preds = %1023
  %1028 = bitcast %union.anon.3* %867 to i16*, !dbg !1977
  store i16 0, i16* %1028, align 4, !dbg !1978, !tbaa !715
  br label %1029, !dbg !1979

1029:                                             ; preds = %1027, %1023
  %1030 = bitcast i32* %17 to i8*, !dbg !1980
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1030) #5, !dbg !1980
  %1031 = call i64 inttoptr (i64 8 to i64 ()*)() #5, !dbg !1981
  %1032 = trunc i64 %1031 to i32, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %1032, metadata !454, metadata !DIExpression()) #5, !dbg !1982
  store i32 %1032, i32* %17, align 4, !dbg !1982, !tbaa !578
  %1033 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @lru_mapping to i8*), i8* nonnull %1030) #5, !dbg !1983
  call void @llvm.dbg.value(metadata i8* %1033, metadata !457, metadata !DIExpression()) #5, !dbg !1984
  %1034 = icmp eq i8* %1033, null, !dbg !1985
  br i1 %1034, label %1035, label %1044, !dbg !1986

1035:                                             ; preds = %1029
  call void @llvm.dbg.value(metadata i8* bitcast (%struct.bpf_map_def* @fallback_cache to i8*), metadata !457, metadata !DIExpression()) #5, !dbg !1984
  %1036 = bitcast i32* %18 to i8*, !dbg !1987
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1036) #5, !dbg !1987
  call void @llvm.dbg.value(metadata i32 515, metadata !458, metadata !DIExpression()) #5, !dbg !1988
  store i32 515, i32* %18, align 4, !dbg !1988, !tbaa !578
  %1037 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %1036) #5, !dbg !1989
  %1038 = icmp eq i8* %1037, null, !dbg !1990
  br i1 %1038, label %1043, label %1039, !dbg !1991

1039:                                             ; preds = %1035
  call void @llvm.dbg.value(metadata i8* %1037, metadata !461, metadata !DIExpression()) #5, !dbg !1992
  %1040 = bitcast i8* %1037 to i64*, !dbg !1993
  %1041 = load i64, i64* %1040, align 8, !dbg !1994, !tbaa !911
  %1042 = add i64 %1041, 1, !dbg !1994
  store i64 %1042, i64* %1040, align 8, !dbg !1994, !tbaa !911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1036) #5, !dbg !1995
  br label %1044

1043:                                             ; preds = %1035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1036) #5, !dbg !1995
  br label %1304

1044:                                             ; preds = %1039, %1029
  %1045 = phi i8* [ %1033, %1029 ], [ bitcast (%struct.bpf_map_def* @fallback_cache to i8*), %1039 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8* %1045, metadata !457, metadata !DIExpression()) #5, !dbg !1984
  %1046 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 2, !dbg !1997
  %1047 = load i8, i8* %1046, align 4, !dbg !1997, !tbaa !711
  %1048 = and i8 %1047, 2, !dbg !1998
  %1049 = icmp eq i8 %1048, 0, !dbg !1998
  br i1 %1049, label %1050, label %1076, !dbg !1999

1050:                                             ; preds = %1044
  %1051 = load i32, i32* %896, align 4, !dbg !2000, !tbaa !890
  %1052 = and i32 %1051, 2, !dbg !2001
  %1053 = icmp eq i32 %1052, 0, !dbg !2001
  br i1 %1053, label %1054, label %1076, !dbg !2002

1054:                                             ; preds = %1050
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1133, metadata !DIExpression()) #5, !dbg !2003
  call void @llvm.dbg.value(metadata i8* %1045, metadata !1140, metadata !DIExpression()) #5, !dbg !2005
  %1055 = bitcast i32* %5 to i8*, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1055) #5, !dbg !2006
  %1056 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* %1045, i8* nonnull %755) #5, !dbg !2007
  call void @llvm.dbg.value(metadata i8* %1056, metadata !1141, metadata !DIExpression()) #5, !dbg !2008
  %1057 = icmp eq i8* %1056, null, !dbg !2009
  br i1 %1057, label %1069, label %1058, !dbg !2010

1058:                                             ; preds = %1054
  %1059 = load i8, i8* %764, align 4, !dbg !2011, !tbaa !604
  %1060 = icmp eq i8 %1059, 17, !dbg !2012
  br i1 %1060, label %1061, label %1070, !dbg !2013

1061:                                             ; preds = %1058
  %1062 = call i64 inttoptr (i64 5 to i64 ()*)() #5, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %1062, metadata !1143, metadata !DIExpression()) #5, !dbg !2015
  %1063 = getelementptr inbounds i8, i8* %1056, i64 8, !dbg !2016
  %1064 = bitcast i8* %1063 to i64*, !dbg !2016
  %1065 = load i64, i64* %1064, align 8, !dbg !2016, !tbaa !1164
  %1066 = sub i64 %1062, %1065, !dbg !2017
  %1067 = icmp ugt i64 %1066, 30000000000, !dbg !2018
  br i1 %1067, label %1069, label %1068, !dbg !2019

1068:                                             ; preds = %1061
  store i64 %1062, i64* %1064, align 8, !dbg !2020, !tbaa !1164
  br label %1070, !dbg !2021

1069:                                             ; preds = %1061, %1054
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1055) #5, !dbg !2022
  call void @llvm.dbg.value(metadata i8* %1074, metadata !429, metadata !DIExpression()) #5, !dbg !1664
  br label %1076, !dbg !2023

1070:                                             ; preds = %1068, %1058
  %1071 = bitcast i8* %1056 to i32*, !dbg !2024
  %1072 = load i32, i32* %1071, align 8, !dbg !2024, !tbaa !1174
  call void @llvm.dbg.value(metadata i32 %1072, metadata !1144, metadata !DIExpression()) #5, !dbg !2025
  store i32 %1072, i32* %5, align 4, !dbg !2026, !tbaa !578
  %1073 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !2027
  store i32 %1072, i32* %1073, align 4, !dbg !2028, !tbaa !1068
  %1074 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals to i8*), i8* nonnull %1055) #5, !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1055) #5, !dbg !2022
  call void @llvm.dbg.value(metadata i8* %1074, metadata !429, metadata !DIExpression()) #5, !dbg !1664
  %1075 = icmp eq i8* %1074, null, !dbg !2030
  br i1 %1075, label %1076, label %1305, !dbg !2023

1076:                                             ; preds = %1070, %1069, %1050, %1044
  %1077 = load i8, i8* %764, align 4, !dbg !2031, !tbaa !604
  %1078 = icmp eq i8 %1077, 6, !dbg !2032
  br i1 %1078, label %1079, label %1095, !dbg !2033

1079:                                             ; preds = %1076
  %1080 = bitcast i32* %19 to i8*, !dbg !2034
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1080) #5, !dbg !2034
  call void @llvm.dbg.value(metadata i32 513, metadata !462, metadata !DIExpression()) #5, !dbg !2035
  store i32 513, i32* %19, align 4, !dbg !2035, !tbaa !578
  %1081 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %1080) #5, !dbg !2036
  call void @llvm.dbg.value(metadata i8* %1081, metadata !467, metadata !DIExpression()) #5, !dbg !2037
  %1082 = icmp eq i8* %1081, null, !dbg !2038
  br i1 %1082, label %1094, label %1083, !dbg !2039

1083:                                             ; preds = %1079
  %1084 = load i8, i8* %1046, align 4, !dbg !2040, !tbaa !711
  %1085 = and i8 %1084, 2, !dbg !2041
  %1086 = icmp eq i8 %1085, 0, !dbg !2041
  %1087 = getelementptr inbounds i8, i8* %1081, i64 8, !dbg !2042
  %1088 = bitcast i8* %1087 to i64*, !dbg !2042
  %1089 = bitcast i8* %1081 to i64*, !dbg !2042
  %1090 = select i1 %1086, i64* %1088, i64* %1089, !dbg !2042
  %1091 = select i1 %1086, i64* %1088, i64* %1089, !dbg !2042
  %1092 = load i64, i64* %1090, align 8, !dbg !2043, !tbaa !1030
  %1093 = add i64 %1092, 1, !dbg !2043
  store i64 %1093, i64* %1091, align 8, !dbg !2043, !tbaa !1030
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1080) #5, !dbg !2044
  br label %1095

1094:                                             ; preds = %1079
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1080) #5, !dbg !2044
  br label %1304

1095:                                             ; preds = %1083, %1076
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1197, metadata !DIExpression()) #5, !dbg !2045
  call void @llvm.dbg.value(metadata %struct.vip_meta* %885, metadata !1203, metadata !DIExpression()) #5, !dbg !2047
  call void @llvm.dbg.value(metadata i8* %1045, metadata !1205, metadata !DIExpression()) #5, !dbg !2048
  %1096 = bitcast %struct.real_pos_lru* %3 to i8*, !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1096) #5, !dbg !2049
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %1096, i8 0, i64 16, i1 false) #5, !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !1207, metadata !DIExpression()) #5, !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !1208, metadata !DIExpression()) #5, !dbg !2052
  call void @llvm.dbg.value(metadata i64 0, metadata !1210, metadata !DIExpression()) #5, !dbg !2053
  %1097 = bitcast i32* %4 to i8*, !dbg !2054
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1097) #5, !dbg !2054
  %1098 = bitcast i32* %2 to i8*, !dbg !2055
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1098) #5, !dbg !2055
  call void @llvm.dbg.value(metadata i32 514, metadata !1233, metadata !DIExpression()) #5, !dbg !2057
  store i32 514, i32* %2, align 4, !dbg !2057, !tbaa !578
  %1099 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %1098) #5, !dbg !2058
  %1100 = icmp eq i8* %1099, null, !dbg !2059
  br i1 %1100, label %1115, label %1101, !dbg !2060

1101:                                             ; preds = %1095
  call void @llvm.dbg.value(metadata i8* %1099, metadata !1234, metadata !DIExpression()) #5, !dbg !2061
  %1102 = call i64 inttoptr (i64 5 to i64 ()*)() #5, !dbg !2062
  %1103 = getelementptr inbounds i8, i8* %1099, i64 8, !dbg !2063
  %1104 = bitcast i8* %1103 to i64*, !dbg !2063
  %1105 = load i64, i64* %1104, align 8, !dbg !2063, !tbaa !1062
  %1106 = sub i64 %1102, %1105, !dbg !2064
  %1107 = icmp ugt i64 %1106, 1000000000, !dbg !2065
  %1108 = bitcast i8* %1099 to i64*, !dbg !2066
  br i1 %1107, label %1109, label %1110, !dbg !2067

1109:                                             ; preds = %1101
  store i64 1, i64* %1108, align 8, !dbg !2068, !tbaa !911
  store i64 %1102, i64* %1104, align 8, !dbg !2069, !tbaa !1062
  br label %1114, !dbg !2070

1110:                                             ; preds = %1101
  %1111 = load i64, i64* %1108, align 8, !dbg !2071, !tbaa !911
  %1112 = add i64 %1111, 1, !dbg !2071
  store i64 %1112, i64* %1108, align 8, !dbg !2071, !tbaa !911
  %1113 = icmp ugt i64 %1112, 125000, !dbg !2072
  br i1 %1113, label %1115, label %1114, !dbg !2073

1114:                                             ; preds = %1110, %1109
  br label %1115, !dbg !2074

1115:                                             ; preds = %1114, %1110, %1095
  %1116 = phi i64 [ 0, %1095 ], [ %1102, %1114 ], [ %1102, %1110 ], !dbg !2075
  %1117 = phi i1 [ true, %1095 ], [ false, %1114 ], [ true, %1110 ], !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1098) #5, !dbg !2077
  %1118 = load i32, i32* %896, align 4, !dbg !2078, !tbaa !890
  %1119 = and i32 %1118, 8, !dbg !2079
  %1120 = icmp eq i32 %1119, 0, !dbg !2079
  br i1 %1120, label %1121, label %1145, !dbg !2080

1121:                                             ; preds = %1115
  %1122 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  %1123 = load i32, i32* %1122, align 4, !dbg !2081, !tbaa !715
  %1124 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 1
  %1125 = load i32, i32* %1124, align 4, !dbg !2083, !tbaa !578
  %1126 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 2
  %1127 = load i32, i32* %1126, align 4, !dbg !2102, !tbaa !578
  %1128 = getelementptr inbounds i8, i8* %755, i64 15
  %1129 = load i8, i8* %1128, align 1, !dbg !2103, !tbaa !715
  %1130 = getelementptr inbounds i8, i8* %755, i64 14
  %1131 = load i8, i8* %1130, align 2, !dbg !2105, !tbaa !715
  %1132 = getelementptr inbounds i8, i8* %755, i64 13
  %1133 = load i8, i8* %1132, align 1, !dbg !2106, !tbaa !715
  %1134 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 3
  %1135 = bitcast i32* %1134 to i8*
  %1136 = load i8, i8* %1135, align 4, !dbg !2107, !tbaa !715
  %1137 = add i32 %1125, -559038209, !dbg !2080
  %1138 = zext i8 %1129 to i32, !dbg !2080
  %1139 = shl nuw i32 %1138, 24, !dbg !2080
  %1140 = zext i8 %1131 to i32, !dbg !2080
  %1141 = shl nuw nsw i32 %1140, 16, !dbg !2080
  %1142 = zext i8 %1133 to i32, !dbg !2080
  %1143 = shl nuw nsw i32 %1142, 8, !dbg !2080
  %1144 = zext i8 %1136 to i32, !dbg !2080
  br label %1148, !dbg !2080

1145:                                             ; preds = %1115
  %1146 = load i16, i16* %868, align 2, !dbg !2108, !tbaa !715
  %1147 = bitcast %union.anon.3* %867 to i16*, !dbg !2109
  store i16 %1146, i16* %1147, align 4, !dbg !2110, !tbaa !715
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %755, i8 0, i64 16, i1 false) #5, !dbg !2111
  br label %1148, !dbg !2112

1148:                                             ; preds = %1145, %1121
  %1149 = phi i32 [ %1144, %1121 ], [ 0, %1145 ]
  %1150 = phi i32 [ %1143, %1121 ], [ 0, %1145 ]
  %1151 = phi i32 [ %1141, %1121 ], [ 0, %1145 ]
  %1152 = phi i32 [ %1139, %1121 ], [ 0, %1145 ]
  %1153 = phi i32 [ %1127, %1121 ], [ 0, %1145 ], !dbg !2102
  %1154 = phi i32 [ %1137, %1121 ], [ -559038209, %1145 ]
  %1155 = phi i32 [ %1123, %1121 ], [ 0, %1145 ], !dbg !2081
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1272, metadata !DIExpression()) #5, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %755, metadata !2091, metadata !DIExpression()) #5, !dbg !2114
  call void @llvm.dbg.value(metadata i32 16, metadata !2092, metadata !DIExpression()) #5, !dbg !2115
  call void @llvm.dbg.value(metadata i32 512, metadata !2093, metadata !DIExpression()) #5, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %755, metadata !2097, metadata !DIExpression()) #5, !dbg !2117
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i8* %755, metadata !2097, metadata !DIExpression()) #5, !dbg !2117
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 -559038209, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !2092, metadata !DIExpression()) #5, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %1154, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  %1156 = add i32 %1153, -559038209, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %1156, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  %1157 = sub i32 %1155, %1153, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1157, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %1156, metadata !1310, metadata !DIExpression()) #5, !dbg !2124
  call void @llvm.dbg.value(metadata i32 4, metadata !1315, metadata !DIExpression()) #5, !dbg !2126
  %1158 = shl i32 %1156, 4, !dbg !2127
  %1159 = lshr i32 %1156, 28, !dbg !2128
  %1160 = or i32 %1159, %1158, !dbg !2129
  %1161 = xor i32 %1160, %1157, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1161, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  %1162 = add i32 %1156, %1154, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1162, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  %1163 = sub i32 %1154, %1161, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1163, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %1161, metadata !1310, metadata !DIExpression()) #5, !dbg !2130
  call void @llvm.dbg.value(metadata i32 6, metadata !1315, metadata !DIExpression()) #5, !dbg !2132
  %1164 = shl i32 %1161, 6, !dbg !2133
  %1165 = lshr i32 %1161, 26, !dbg !2134
  %1166 = or i32 %1165, %1164, !dbg !2135
  %1167 = xor i32 %1166, %1163, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1167, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  %1168 = add i32 %1161, %1162, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1168, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  %1169 = sub i32 %1162, %1167, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1169, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1167, metadata !1310, metadata !DIExpression()) #5, !dbg !2136
  call void @llvm.dbg.value(metadata i32 8, metadata !1315, metadata !DIExpression()) #5, !dbg !2138
  %1170 = shl i32 %1167, 8, !dbg !2139
  %1171 = lshr i32 %1167, 24, !dbg !2140
  %1172 = or i32 %1171, %1170, !dbg !2141
  %1173 = xor i32 %1172, %1169, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1173, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  %1174 = add i32 %1167, %1168, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1174, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  %1175 = sub i32 %1168, %1173, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1175, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %1173, metadata !1310, metadata !DIExpression()) #5, !dbg !2142
  call void @llvm.dbg.value(metadata i32 16, metadata !1315, metadata !DIExpression()) #5, !dbg !2144
  %1176 = shl i32 %1173, 16, !dbg !2145
  %1177 = lshr i32 %1173, 16, !dbg !2146
  %1178 = or i32 %1177, %1176, !dbg !2147
  %1179 = xor i32 %1178, %1175, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1179, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  %1180 = add i32 %1173, %1174, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1180, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  %1181 = sub i32 %1174, %1179, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1181, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %1179, metadata !1310, metadata !DIExpression()) #5, !dbg !2148
  call void @llvm.dbg.value(metadata i32 19, metadata !1315, metadata !DIExpression()) #5, !dbg !2150
  %1182 = shl i32 %1179, 19, !dbg !2151
  %1183 = lshr i32 %1179, 13, !dbg !2152
  %1184 = or i32 %1183, %1182, !dbg !2153
  %1185 = xor i32 %1184, %1181, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1185, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  %1186 = add i32 %1179, %1180, !dbg !2122
  %1187 = sub i32 %1180, %1185, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1187, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1185, metadata !1310, metadata !DIExpression()) #5, !dbg !2154
  call void @llvm.dbg.value(metadata i32 4, metadata !1315, metadata !DIExpression()) #5, !dbg !2156
  %1188 = shl i32 %1185, 4, !dbg !2157
  %1189 = lshr i32 %1185, 28, !dbg !2158
  %1190 = or i32 %1189, %1188, !dbg !2159
  %1191 = add i32 %1185, %1186, !dbg !2122
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1191, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %1186, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !2092, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)) #5, !dbg !2115
  call void @llvm.dbg.value(metadata i8* %755, metadata !2097, metadata !DIExpression()) #5, !dbg !2117
  call void @llvm.dbg.value(metadata i32 16, metadata !2092, metadata !DIExpression()) #5, !dbg !2115
  call void @llvm.dbg.value(metadata i32 undef, metadata !2092, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)) #5, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %1186, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %1191, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1191, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 undef, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1191, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 undef, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1191, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 undef, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1191, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 undef, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  %1192 = or i32 %1151, %1152, !dbg !2160
  %1193 = or i32 %1192, %1150, !dbg !2161
  %1194 = or i32 %1193, %1149, !dbg !2162
  %1195 = add i32 %1186, %1194, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1195, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  %1196 = xor i32 %1191, %1187, !dbg !2122
  %1197 = xor i32 %1196, %1190, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1197, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1191, metadata !1310, metadata !DIExpression()) #5, !dbg !2166
  call void @llvm.dbg.value(metadata i32 14, metadata !1315, metadata !DIExpression()) #5, !dbg !2168
  %1198 = shl i32 %1191, 14, !dbg !2169
  %1199 = lshr i32 %1191, 18, !dbg !2170
  %1200 = or i32 %1199, %1198, !dbg !2171
  %1201 = sub i32 %1197, %1200, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1201, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  %1202 = xor i32 %1201, %1195, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1202, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %1201, metadata !1310, metadata !DIExpression()) #5, !dbg !2172
  call void @llvm.dbg.value(metadata i32 11, metadata !1315, metadata !DIExpression()) #5, !dbg !2174
  %1203 = shl i32 %1201, 11, !dbg !2175
  %1204 = lshr i32 %1201, 21, !dbg !2176
  %1205 = or i32 %1204, %1203, !dbg !2177
  %1206 = sub i32 %1202, %1205, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1206, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  %1207 = xor i32 %1206, %1191, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1207, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %1206, metadata !1310, metadata !DIExpression()) #5, !dbg !2178
  call void @llvm.dbg.value(metadata i32 25, metadata !1315, metadata !DIExpression()) #5, !dbg !2180
  %1208 = shl i32 %1206, 25, !dbg !2181
  %1209 = lshr i32 %1206, 7, !dbg !2182
  %1210 = or i32 %1209, %1208, !dbg !2183
  %1211 = sub i32 %1207, %1210, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1211, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  %1212 = xor i32 %1211, %1201, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1212, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1211, metadata !1310, metadata !DIExpression()) #5, !dbg !2184
  call void @llvm.dbg.value(metadata i32 16, metadata !1315, metadata !DIExpression()) #5, !dbg !2186
  %1213 = shl i32 %1211, 16, !dbg !2187
  %1214 = lshr i32 %1211, 16, !dbg !2188
  %1215 = or i32 %1214, %1213, !dbg !2189
  %1216 = sub i32 %1212, %1215, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1216, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  %1217 = xor i32 %1216, %1206, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1217, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %1216, metadata !1310, metadata !DIExpression()) #5, !dbg !2190
  call void @llvm.dbg.value(metadata i32 4, metadata !1315, metadata !DIExpression()) #5, !dbg !2192
  %1218 = shl i32 %1216, 4, !dbg !2193
  %1219 = lshr i32 %1216, 28, !dbg !2194
  %1220 = or i32 %1219, %1218, !dbg !2195
  %1221 = sub i32 %1217, %1220, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1221, metadata !2094, metadata !DIExpression()) #5, !dbg !2120
  %1222 = xor i32 %1221, %1211, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1222, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %1221, metadata !1310, metadata !DIExpression()) #5, !dbg !2196
  call void @llvm.dbg.value(metadata i32 14, metadata !1315, metadata !DIExpression()) #5, !dbg !2198
  %1223 = shl i32 %1221, 14, !dbg !2199
  %1224 = lshr i32 %1221, 18, !dbg !2200
  %1225 = or i32 %1224, %1223, !dbg !2201
  %1226 = sub i32 %1222, %1225, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1226, metadata !2095, metadata !DIExpression()) #5, !dbg !2119
  %1227 = xor i32 %1226, %1216, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1227, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %1226, metadata !1310, metadata !DIExpression()) #5, !dbg !2202
  call void @llvm.dbg.value(metadata i32 24, metadata !1315, metadata !DIExpression()) #5, !dbg !2204
  %1228 = shl i32 %1226, 24, !dbg !2205
  %1229 = lshr i32 %1226, 8, !dbg !2206
  %1230 = or i32 %1229, %1228, !dbg !2207
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i32 undef, metadata !2096, metadata !DIExpression()) #5, !dbg !2118
  %1231 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 2, i32 0, !dbg !2208
  %1232 = load i32, i32* %1231, align 4, !dbg !2208, !tbaa !715
  call void @llvm.dbg.value(metadata i32 undef, metadata !1289, metadata !DIExpression()) #5, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %1232, metadata !1284, metadata !DIExpression()) #5, !dbg !2211
  call void @llvm.dbg.value(metadata i32 33554944, metadata !1290, metadata !DIExpression()) #5, !dbg !2212
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()) #5, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %1232, metadata !1294, metadata !DIExpression()) #5, !dbg !2215
  call void @llvm.dbg.value(metadata i32 0, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1301, metadata !DIExpression()) #5, !dbg !2217
  %1233 = add i32 %1227, -525483785, !dbg !2164
  %1234 = sub i32 %1233, %1230, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %1234, metadata !1299, metadata !DIExpression()) #5, !dbg !2213
  %1235 = add i32 %1232, -525483785, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %1235, metadata !1294, metadata !DIExpression()) #5, !dbg !2215
  call void @llvm.dbg.value(metadata i32 -525483785, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  %1236 = xor i32 %1235, -525483785, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1236, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  call void @llvm.dbg.value(metadata i32 %1235, metadata !1310, metadata !DIExpression()) #5, !dbg !2221
  call void @llvm.dbg.value(metadata i32 14, metadata !1315, metadata !DIExpression()) #5, !dbg !2223
  %1237 = shl i32 %1235, 14, !dbg !2224
  %1238 = lshr i32 %1235, 18, !dbg !2225
  %1239 = or i32 %1238, %1237, !dbg !2226
  %1240 = sub i32 %1236, %1239, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1240, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  %1241 = xor i32 %1234, %1240, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1241, metadata !1299, metadata !DIExpression()) #5, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %1240, metadata !1310, metadata !DIExpression()) #5, !dbg !2227
  call void @llvm.dbg.value(metadata i32 11, metadata !1315, metadata !DIExpression()) #5, !dbg !2229
  %1242 = shl i32 %1240, 11, !dbg !2230
  %1243 = lshr i32 %1240, 21, !dbg !2231
  %1244 = or i32 %1243, %1242, !dbg !2232
  %1245 = sub i32 %1241, %1244, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1245, metadata !1299, metadata !DIExpression()) #5, !dbg !2213
  %1246 = xor i32 %1245, %1235, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1246, metadata !1294, metadata !DIExpression()) #5, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %1245, metadata !1310, metadata !DIExpression()) #5, !dbg !2233
  call void @llvm.dbg.value(metadata i32 25, metadata !1315, metadata !DIExpression()) #5, !dbg !2235
  %1247 = shl i32 %1245, 25, !dbg !2236
  %1248 = lshr i32 %1245, 7, !dbg !2237
  %1249 = or i32 %1248, %1247, !dbg !2238
  %1250 = sub i32 %1246, %1249, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1250, metadata !1294, metadata !DIExpression()) #5, !dbg !2215
  %1251 = xor i32 %1250, %1240, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1251, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  call void @llvm.dbg.value(metadata i32 %1250, metadata !1310, metadata !DIExpression()) #5, !dbg !2239
  call void @llvm.dbg.value(metadata i32 16, metadata !1315, metadata !DIExpression()) #5, !dbg !2241
  %1252 = shl i32 %1250, 16, !dbg !2242
  %1253 = lshr i32 %1250, 16, !dbg !2243
  %1254 = or i32 %1253, %1252, !dbg !2244
  %1255 = sub i32 %1251, %1254, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1255, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  %1256 = xor i32 %1255, %1245, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1256, metadata !1299, metadata !DIExpression()) #5, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %1255, metadata !1310, metadata !DIExpression()) #5, !dbg !2245
  call void @llvm.dbg.value(metadata i32 4, metadata !1315, metadata !DIExpression()) #5, !dbg !2247
  %1257 = shl i32 %1255, 4, !dbg !2248
  %1258 = lshr i32 %1255, 28, !dbg !2249
  %1259 = or i32 %1258, %1257, !dbg !2250
  %1260 = sub i32 %1256, %1259, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1260, metadata !1299, metadata !DIExpression()) #5, !dbg !2213
  %1261 = xor i32 %1260, %1250, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1261, metadata !1294, metadata !DIExpression()) #5, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %1260, metadata !1310, metadata !DIExpression()) #5, !dbg !2251
  call void @llvm.dbg.value(metadata i32 14, metadata !1315, metadata !DIExpression()) #5, !dbg !2253
  %1262 = shl i32 %1260, 14, !dbg !2254
  %1263 = lshr i32 %1260, 18, !dbg !2255
  %1264 = or i32 %1263, %1262, !dbg !2256
  %1265 = sub i32 %1261, %1264, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1265, metadata !1294, metadata !DIExpression()) #5, !dbg !2215
  %1266 = xor i32 %1265, %1255, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1266, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  call void @llvm.dbg.value(metadata i32 %1265, metadata !1310, metadata !DIExpression()) #5, !dbg !2257
  call void @llvm.dbg.value(metadata i32 24, metadata !1315, metadata !DIExpression()) #5, !dbg !2259
  %1267 = shl i32 %1265, 24, !dbg !2260
  %1268 = lshr i32 %1265, 8, !dbg !2261
  %1269 = or i32 %1268, %1267, !dbg !2262
  %1270 = sub i32 %1266, %1269, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1270, metadata !1300, metadata !DIExpression()) #5, !dbg !2216
  %1271 = urem i32 %1270, 65537, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %1271, metadata !1211, metadata !DIExpression()) #5, !dbg !2264
  %1272 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %885, i64 0, i32 1, !dbg !2265
  %1273 = load i32, i32* %1272, align 4, !dbg !2265, !tbaa !1361
  %1274 = mul i32 %1273, 65537, !dbg !2266
  %1275 = add i32 %1271, %1274, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1275, metadata !1212, metadata !DIExpression()) #5, !dbg !2268
  store i32 %1275, i32* %4, align 4, !dbg !2269, !tbaa !578
  %1276 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @ch_rings to i8*), i8* nonnull %1097) #5, !dbg !2270
  %1277 = icmp eq i8* %1276, null, !dbg !2271
  br i1 %1277, label %1298, label %1278, !dbg !2272

1278:                                             ; preds = %1148
  %1279 = bitcast i8* %1276 to i32*, !dbg !2270
  call void @llvm.dbg.value(metadata i32* %1279, metadata !1209, metadata !DIExpression()) #5, !dbg !2273
  %1280 = load i32, i32* %1279, align 4, !dbg !2274, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %1280, metadata !1212, metadata !DIExpression()) #5, !dbg !2268
  store i32 %1280, i32* %4, align 4, !dbg !2275, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %1280, metadata !1212, metadata !DIExpression()) #5, !dbg !2268
  %1281 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !2276
  store i32 %1280, i32* %1281, align 4, !dbg !2277, !tbaa !1068
  %1282 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals to i8*), i8* nonnull %1097) #5, !dbg !2278
  %1283 = icmp eq i8* %1282, null, !dbg !2279
  br i1 %1283, label %1298, label %1284, !dbg !2280

1284:                                             ; preds = %1278
  %1285 = load i32, i32* %896, align 4, !dbg !2281, !tbaa !890
  %1286 = and i32 %1285, 2, !dbg !2282
  %1287 = icmp ne i32 %1286, 0, !dbg !2282
  %1288 = or i1 %1117, %1287, !dbg !2283
  br i1 %1288, label %1299, label %1289, !dbg !2283

1289:                                             ; preds = %1284
  %1290 = load i8, i8* %764, align 4, !dbg !2284, !tbaa !604
  %1291 = icmp eq i8 %1290, 17, !dbg !2285
  br i1 %1291, label %1292, label %1294, !dbg !2286

1292:                                             ; preds = %1289
  call void @llvm.dbg.value(metadata i64 %1116, metadata !1210, metadata !DIExpression()) #5, !dbg !2053
  %1293 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %3, i64 0, i32 1, !dbg !2287
  store i64 %1116, i64* %1293, align 8, !dbg !2288, !tbaa !1164
  br label %1294, !dbg !2289

1294:                                             ; preds = %1292, %1289
  %1295 = load i32, i32* %4, align 4, !dbg !2290, !tbaa !578
  call void @llvm.dbg.value(metadata i32 %1295, metadata !1212, metadata !DIExpression()) #5, !dbg !2268
  %1296 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %3, i64 0, i32 0, !dbg !2291
  store i32 %1295, i32* %1296, align 8, !dbg !2292, !tbaa !1174
  %1297 = call i32 inttoptr (i64 2 to i32 (i8*, i8*, i8*, i64)*)(i8* %1045, i8* nonnull %755, i8* nonnull %1096, i64 0) #5, !dbg !2293
  br label %1299, !dbg !2294

1298:                                             ; preds = %1278, %1148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1097) #5, !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1096) #5, !dbg !2295
  br label %1304, !dbg !2296

1299:                                             ; preds = %1294, %1284
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1097) #5, !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1096) #5, !dbg !2295
  %1300 = getelementptr inbounds i8, i8* %890, i64 8, !dbg !2297
  %1301 = bitcast i8* %1300 to i64*, !dbg !2297
  %1302 = load i64, i64* %1301, align 8, !dbg !2298, !tbaa !1062
  %1303 = add i64 %1302, 1, !dbg !2298
  store i64 %1303, i64* %1301, align 8, !dbg !2298, !tbaa !1062
  br label %1305, !dbg !2299

1304:                                             ; preds = %1298, %1094, %1043
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1030) #5, !dbg !2300
  br label %1490

1305:                                             ; preds = %1299, %1070
  %1306 = phi i8* [ %1282, %1299 ], [ %1074, %1070 ], !dbg !1664
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1030) #5, !dbg !2300
  br label %1307

1307:                                             ; preds = %1305, %1018
  %1308 = phi i8* [ %1306, %1305 ], [ %998, %1018 ], !dbg !1664
  %1309 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @ctl_array to i8*), i8* nonnull %758) #5, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %1309, metadata !427, metadata !DIExpression()) #5, !dbg !2302
  %1310 = icmp eq i8* %1309, null, !dbg !2303
  br i1 %1310, label %1490, label %1311, !dbg !2304

1311:                                             ; preds = %1307
  %1312 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %885, i64 0, i32 1, !dbg !2305
  %1313 = load i32, i32* %1312, align 4, !dbg !2305, !tbaa !1361
  call void @llvm.dbg.value(metadata i32 %1313, metadata !440, metadata !DIExpression()) #5, !dbg !2306
  store i32 %1313, i32* %12, align 4, !dbg !2307, !tbaa !578
  %1314 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @stats to i8*), i8* nonnull %757) #5, !dbg !2308
  %1315 = icmp eq i8* %1314, null, !dbg !2309
  br i1 %1315, label %1490, label %1316, !dbg !2310

1316:                                             ; preds = %1311
  call void @llvm.dbg.value(metadata i8* %1314, metadata !435, metadata !DIExpression()) #5, !dbg !1846
  call void @llvm.dbg.value(metadata i16 %775, metadata !442, metadata !DIExpression()) #5, !dbg !2311
  %1317 = zext i16 %775 to i64, !dbg !2312
  %1318 = bitcast i8* %1314 to <2 x i64>*, !dbg !2313
  %1319 = load <2 x i64>, <2 x i64>* %1318, align 8, !dbg !2313, !tbaa !1030
  %1320 = insertelement <2 x i64> <i64 1, i64 undef>, i64 %1317, i32 1, !dbg !2313
  %1321 = add <2 x i64> %1320, %1319, !dbg !2313
  %1322 = bitcast i8* %1314 to <2 x i64>*, !dbg !2313
  store <2 x i64> %1321, <2 x i64>* %1322, align 8, !dbg !2313, !tbaa !1030
  %1323 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 1, !dbg !2314
  %1324 = bitcast i32* %1323 to i8*, !dbg !2315
  %1325 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.bpf_map_def* @reals_stats to i8*), i8* nonnull %1324) #5, !dbg !2316
  %1326 = icmp eq i8* %1325, null, !dbg !2317
  br i1 %1326, label %1490, label %1327, !dbg !2318

1327:                                             ; preds = %1316
  call void @llvm.dbg.value(metadata i8* %1325, metadata !435, metadata !DIExpression()) #5, !dbg !1846
  call void @llvm.dbg.value(metadata i16 %775, metadata !442, metadata !DIExpression()) #5, !dbg !2311
  %1328 = bitcast i8* %1325 to <2 x i64>*, !dbg !2319
  %1329 = load <2 x i64>, <2 x i64>* %1328, align 8, !dbg !2319, !tbaa !1030
  %1330 = add <2 x i64> %1320, %1329, !dbg !2319
  %1331 = bitcast i8* %1325 to <2 x i64>*, !dbg !2319
  store <2 x i64> %1330, <2 x i64>* %1331, align 8, !dbg !2319, !tbaa !1030
  call void @llvm.dbg.value(metadata i8* %1308, metadata !429, metadata !DIExpression()) #5, !dbg !1664
  %1332 = getelementptr inbounds i8, i8* %1308, i64 16, !dbg !2320
  %1333 = load i8, i8* %1332, align 4, !dbg !2320, !tbaa !1427
  %1334 = and i8 %1333, 1, !dbg !2321
  %1335 = icmp eq i8 %1334, 0, !dbg !2321
  call void @llvm.dbg.value(metadata i16 %775, metadata !442, metadata !DIExpression()) #5, !dbg !2311
  call void @llvm.dbg.value(metadata i16 %775, metadata !442, metadata !DIExpression()) #5, !dbg !2311
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !431, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1666
  br i1 %1335, label %1392, label %1336, !dbg !2322

1336:                                             ; preds = %1327
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !1431, metadata !DIExpression()) #5, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %1309, metadata !1437, metadata !DIExpression()) #5, !dbg !2325
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1439, metadata !DIExpression()) #5, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %1308, metadata !1440, metadata !DIExpression()) #5, !dbg !2327
  call void @llvm.dbg.value(metadata i32 undef, metadata !1441, metadata !DIExpression()) #5, !dbg !2328
  %1337 = bitcast %struct.xdp_md* %0 to i8*, !dbg !2329
  %1338 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %1337, i32 -40) #5, !dbg !2330
  %1339 = icmp eq i32 %1338, 0, !dbg !2330
  br i1 %1339, label %1340, label %1490, !dbg !2331

1340:                                             ; preds = %1336
  %1341 = load i32, i32* %38, align 4, !dbg !2332, !tbaa !541
  %1342 = zext i32 %1341 to i64, !dbg !2333
  %1343 = inttoptr i64 %1342 to i8*, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1343, metadata !1442, metadata !DIExpression()) #5, !dbg !2335
  %1344 = load i32, i32* %42, align 4, !dbg !2336, !tbaa !550
  %1345 = zext i32 %1344 to i64, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %1345, metadata !1443, metadata !DIExpression()) #5, !dbg !2338
  %1346 = inttoptr i64 %1342 to %struct.eth_hdr*, !dbg !2339
  call void @llvm.dbg.value(metadata %struct.eth_hdr* %1346, metadata !1445, metadata !DIExpression()) #5, !dbg !2340
  %1347 = getelementptr i8, i8* %1343, i64 14, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1347, metadata !1444, metadata !DIExpression()) #5, !dbg !2342
  %1348 = getelementptr i8, i8* %1343, i64 40, !dbg !2343
  call void @llvm.dbg.value(metadata i8* %1348, metadata !1446, metadata !DIExpression()) #5, !dbg !2344
  %1349 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1346, i64 1, !dbg !2345
  %1350 = inttoptr i64 %1345 to %struct.eth_hdr*, !dbg !2346
  %1351 = icmp ugt %struct.eth_hdr* %1349, %1350, !dbg !2347
  br i1 %1351, label %1490, label %1352, !dbg !2348

1352:                                             ; preds = %1340
  %1353 = getelementptr inbounds i8, i8* %1343, i64 54, !dbg !2349
  %1354 = bitcast i8* %1353 to %struct.eth_hdr*, !dbg !2349
  %1355 = icmp ugt %struct.eth_hdr* %1354, %1350, !dbg !2350
  br i1 %1355, label %1490, label %1356, !dbg !2351

1356:                                             ; preds = %1352
  %1357 = bitcast i8* %1353 to %struct.ipv6hdr*, !dbg !2352
  %1358 = inttoptr i64 %1345 to %struct.ipv6hdr*, !dbg !2353
  %1359 = icmp ugt %struct.ipv6hdr* %1357, %1358, !dbg !2354
  br i1 %1359, label %1490, label %1360, !dbg !2355

1360:                                             ; preds = %1356
  %1361 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1346, i64 0, i32 0, i64 0, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1361, i8* nonnull align 8 %1309, i64 6, i1 false) #5, !dbg !2356
  %1362 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1346, i64 0, i32 1, i64 0, !dbg !2357
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %1362, i8* align 2 %1348, i64 6, i1 false) #5, !dbg !2357
  %1363 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1346, i64 0, i32 2, !dbg !2358
  store i16 -8826, i16* %1363, align 2, !dbg !2359, !tbaa !562
  call void @llvm.dbg.value(metadata i8 41, metadata !1451, metadata !DIExpression()) #5, !dbg !2360
  %1364 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2361
  %1365 = load i32, i32* %1364, align 4, !dbg !2361, !tbaa !715
  %1366 = bitcast %union.anon.3* %867 to i16*, !dbg !2363
  %1367 = load i16, i16* %1366, align 4, !dbg !2363, !tbaa !715
  %1368 = zext i16 %1367 to i32, !dbg !2363
  %1369 = xor i32 %1365, %1368, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %1369, metadata !1448, metadata !DIExpression()) #5, !dbg !2365
  %1370 = add i16 %775, 40, !dbg !2366
  call void @llvm.dbg.value(metadata i16 %1370, metadata !1447, metadata !DIExpression()) #5, !dbg !2367
  call void @llvm.dbg.value(metadata i8 41, metadata !1451, metadata !DIExpression()) #5, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %1369, metadata !1448, metadata !DIExpression()) #5, !dbg !2365
  call void @llvm.dbg.value(metadata i16 %1370, metadata !1447, metadata !DIExpression()) #5, !dbg !2367
  call void @llvm.dbg.value(metadata i32 1, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #5, !dbg !2368
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #5, !dbg !2368
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #5, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %1369, metadata !1449, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #5, !dbg !2368
  %1371 = load i8, i8* %767, align 1, !dbg !2369, !tbaa !597
  call void @llvm.dbg.value(metadata i8* %1347, metadata !1503, metadata !DIExpression()) #5, !dbg !2370
  call void @llvm.dbg.value(metadata i8 %1371, metadata !1509, metadata !DIExpression()) #5, !dbg !2372
  call void @llvm.dbg.value(metadata i32* undef, metadata !1510, metadata !DIExpression()) #5, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %1308, metadata !1511, metadata !DIExpression()) #5, !dbg !2374
  call void @llvm.dbg.value(metadata i16 %1370, metadata !1512, metadata !DIExpression()) #5, !dbg !2375
  call void @llvm.dbg.value(metadata i8 41, metadata !1513, metadata !DIExpression()) #5, !dbg !2376
  %1372 = getelementptr inbounds i8, i8* %1343, i64 15, !dbg !2377
  %1373 = getelementptr inbounds i8, i8* %1343, i64 16
  %1374 = bitcast i8* %1373 to i16*, !dbg !2377
  store i16 0, i16* %1374, align 1, !dbg !2377
  %1375 = lshr i8 %1371, 4, !dbg !2378
  %1376 = or i8 %1375, 96, !dbg !2379
  store i8 %1376, i8* %1347, align 4, !dbg !2379
  %1377 = shl i8 %1371, 4, !dbg !2380
  store i8 %1377, i8* %1372, align 1, !dbg !2381, !tbaa !715
  %1378 = getelementptr inbounds i8, i8* %1343, i64 20, !dbg !2382
  store i8 41, i8* %1378, align 2, !dbg !2383, !tbaa !1528
  %1379 = call i16 @llvm.bswap.i16(i16 %1370) #5
  %1380 = getelementptr inbounds i8, i8* %1343, i64 18, !dbg !2384
  %1381 = bitcast i8* %1380 to i16*, !dbg !2384
  store i16 %1379, i16* %1381, align 4, !dbg !2385, !tbaa !1533
  %1382 = getelementptr inbounds i8, i8* %1343, i64 21, !dbg !2386
  store i8 64, i8* %1382, align 1, !dbg !2387, !tbaa !1536
  %1383 = getelementptr inbounds i8, i8* %1343, i64 22, !dbg !2388
  %1384 = bitcast i8* %1383 to i32*, !dbg !2388
  store i32 1, i32* %1384, align 4, !dbg !2388
  %1385 = getelementptr inbounds i8, i8* %1343, i64 26, !dbg !2388
  %1386 = bitcast i8* %1385 to i32*, !dbg !2388
  store i32 0, i32* %1386, align 4, !dbg !2388
  %1387 = getelementptr inbounds i8, i8* %1343, i64 30, !dbg !2388
  %1388 = bitcast i8* %1387 to i32*, !dbg !2388
  store i32 0, i32* %1388, align 4, !dbg !2388
  %1389 = getelementptr inbounds i8, i8* %1343, i64 34, !dbg !2388
  %1390 = bitcast i8* %1389 to i32*, !dbg !2388
  store i32 %1369, i32* %1390, align 4, !dbg !2388
  %1391 = getelementptr inbounds i8, i8* %1343, i64 38, !dbg !2389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %1391, i8* nonnull align 4 %1308, i64 16, i1 false) #5, !dbg !2389
  br label %1490, !dbg !2390

1392:                                             ; preds = %1327
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !1540, metadata !DIExpression()) #5, !dbg !2391
  call void @llvm.dbg.value(metadata i8* %1309, metadata !1545, metadata !DIExpression()) #5, !dbg !2393
  call void @llvm.dbg.value(metadata %struct.packet_description* %10, metadata !1546, metadata !DIExpression()) #5, !dbg !2394
  call void @llvm.dbg.value(metadata i8* %1308, metadata !1547, metadata !DIExpression()) #5, !dbg !2395
  call void @llvm.dbg.value(metadata i32 undef, metadata !1548, metadata !DIExpression()) #5, !dbg !2396
  %1393 = bitcast %union.anon.3* %867 to i16*, !dbg !2397
  %1394 = load i16, i16* %1393, align 4, !dbg !2397, !tbaa !715
  %1395 = call i16 @llvm.bswap.i16(i16 %1394) #5
  %1396 = zext i16 %1395 to i32, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %1396, metadata !1554, metadata !DIExpression()) #5, !dbg !2398
  %1397 = shl nuw i32 %1396, 16, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %1397, metadata !1554, metadata !DIExpression()) #5, !dbg !2398
  %1398 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %10, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2400
  %1399 = load i32, i32* %1398, align 4, !dbg !2400, !tbaa !715
  call void @llvm.dbg.value(metadata i64 0, metadata !1555, metadata !DIExpression()) #5, !dbg !2401
  %1400 = bitcast %struct.xdp_md* %0 to i8*, !dbg !2402
  %1401 = call i32 inttoptr (i64 44 to i32 (i8*, i32)*)(i8* %1400, i32 -20) #5, !dbg !2403
  %1402 = icmp eq i32 %1401, 0, !dbg !2403
  br i1 %1402, label %1403, label %1490, !dbg !2404

1403:                                             ; preds = %1392
  %1404 = load i32, i32* %38, align 4, !dbg !2405, !tbaa !541
  %1405 = zext i32 %1404 to i64, !dbg !2406
  %1406 = inttoptr i64 %1405 to i8*, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %1406, metadata !1549, metadata !DIExpression()) #5, !dbg !2408
  %1407 = load i32, i32* %42, align 4, !dbg !2409, !tbaa !550
  %1408 = zext i32 %1407 to i64, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %1408, metadata !1550, metadata !DIExpression()) #5, !dbg !2411
  %1409 = inttoptr i64 %1405 to %struct.eth_hdr*, !dbg !2412
  call void @llvm.dbg.value(metadata %struct.eth_hdr* %1409, metadata !1552, metadata !DIExpression()) #5, !dbg !2413
  %1410 = getelementptr i8, i8* %1406, i64 14, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %1410, metadata !1551, metadata !DIExpression()) #5, !dbg !2415
  %1411 = getelementptr i8, i8* %1406, i64 20, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %1411, metadata !1553, metadata !DIExpression()) #5, !dbg !2417
  %1412 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1409, i64 1, !dbg !2418
  %1413 = inttoptr i64 %1408 to %struct.eth_hdr*, !dbg !2419
  %1414 = icmp ugt %struct.eth_hdr* %1412, %1413, !dbg !2420
  br i1 %1414, label %1490, label %1415, !dbg !2421

1415:                                             ; preds = %1403
  %1416 = getelementptr inbounds i8, i8* %1406, i64 34, !dbg !2422
  %1417 = bitcast i8* %1416 to %struct.eth_hdr*, !dbg !2422
  %1418 = icmp ugt %struct.eth_hdr* %1417, %1413, !dbg !2423
  br i1 %1418, label %1490, label %1419, !dbg !2424

1419:                                             ; preds = %1415
  %1420 = bitcast i8* %1416 to %struct.iphdr*, !dbg !2425
  %1421 = inttoptr i64 %1408 to %struct.iphdr*, !dbg !2426
  %1422 = icmp ugt %struct.iphdr* %1420, %1421, !dbg !2427
  br i1 %1422, label %1490, label %1423, !dbg !2428

1423:                                             ; preds = %1419
  %1424 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1409, i64 0, i32 0, i64 0, !dbg !2429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1424, i8* nonnull align 8 %1309, i64 6, i1 false) #5, !dbg !2429
  %1425 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1409, i64 0, i32 1, i64 0, !dbg !2430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 %1425, i8* align 2 %1411, i64 6, i1 false) #5, !dbg !2430
  %1426 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %1409, i64 0, i32 2, !dbg !2431
  store i16 8, i16* %1426, align 2, !dbg !2432, !tbaa !562
  %1427 = load i8, i8* %767, align 1, !dbg !2433, !tbaa !597
  %1428 = and i32 %1399, -65536, !dbg !2434
  %1429 = xor i32 %1397, %1428, !dbg !2434
  %1430 = or i32 %1429, 4268, !dbg !2435
  %1431 = bitcast i8* %1308 to i32*, !dbg !2436
  %1432 = load i32, i32* %1431, align 4, !dbg !2436, !tbaa !715
  call void @llvm.dbg.value(metadata i8* %1410, metadata !1606, metadata !DIExpression()) #5, !dbg !2437
  call void @llvm.dbg.value(metadata i8 %1427, metadata !1611, metadata !DIExpression()) #5, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %1430, metadata !1612, metadata !DIExpression()) #5, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %1432, metadata !1613, metadata !DIExpression()) #5, !dbg !2441
  call void @llvm.dbg.value(metadata i16 %775, metadata !1614, metadata !DIExpression()) #5, !dbg !2442
  call void @llvm.dbg.value(metadata i8 4, metadata !1615, metadata !DIExpression()) #5, !dbg !2443
  call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()) #5, !dbg !2444
  store i8 69, i8* %1410, align 4, !dbg !2445
  %1433 = bitcast i8* %1411 to i16*, !dbg !2446
  store i16 0, i16* %1433, align 2, !dbg !2447, !tbaa !609
  %1434 = getelementptr inbounds i8, i8* %1406, i64 23, !dbg !2448
  store i8 4, i8* %1434, align 1, !dbg !2449, !tbaa !601
  %1435 = getelementptr inbounds i8, i8* %1406, i64 24, !dbg !2450
  %1436 = bitcast i8* %1435 to i16*, !dbg !2450
  %1437 = getelementptr inbounds i8, i8* %1406, i64 15, !dbg !2451
  store i8 %1427, i8* %1437, align 1, !dbg !2452, !tbaa !593
  %1438 = add i16 %775, 20, !dbg !2453
  %1439 = call i16 @llvm.bswap.i16(i16 %1438) #5
  %1440 = getelementptr inbounds i8, i8* %1406, i64 16, !dbg !2454
  %1441 = bitcast i8* %1440 to i16*, !dbg !2454
  store i16 %1439, i16* %1441, align 2, !dbg !2455, !tbaa !606
  %1442 = getelementptr inbounds i8, i8* %1406, i64 30, !dbg !2456
  %1443 = bitcast i8* %1442 to i32*, !dbg !2456
  store i32 %1432, i32* %1443, align 4, !dbg !2457, !tbaa !642
  %1444 = getelementptr inbounds i8, i8* %1406, i64 26, !dbg !2458
  %1445 = bitcast i8* %1444 to i32*, !dbg !2458
  store i32 %1430, i32* %1445, align 4, !dbg !2459, !tbaa !644
  %1446 = getelementptr inbounds i8, i8* %1406, i64 22, !dbg !2460
  store i8 64, i8* %1446, align 4, !dbg !2461, !tbaa !640
  call void @llvm.dbg.value(metadata i8* %1410, metadata !648, metadata !DIExpression()) #5, !dbg !2462
  %1447 = bitcast i8* %1410 to i16*, !dbg !2464
  call void @llvm.dbg.value(metadata i16* %1447, metadata !656, metadata !DIExpression()) #5, !dbg !2465
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i16* %1447, metadata !656, metadata !DIExpression()) #5, !dbg !2465
  %1448 = load i16, i16* %1447, align 2, !dbg !2467, !tbaa !667
  %1449 = zext i16 %1448 to i64, !dbg !2467
  call void @llvm.dbg.value(metadata i32 1, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 1, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  %1450 = getelementptr inbounds i8, i8* %1406, i64 18, !dbg !2468
  %1451 = bitcast i8* %1450 to i16*, !dbg !2468
  %1452 = zext i16 %1439 to i64, !dbg !2467
  call void @llvm.dbg.value(metadata i32 2, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i16* %1451, metadata !656, metadata !DIExpression()) #5, !dbg !2465
  call void @llvm.dbg.value(metadata i32 2, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i16* %1451, metadata !656, metadata !DIExpression()) #5, !dbg !2465
  %1453 = load i16, i16* %1451, align 2, !dbg !2467, !tbaa !667
  %1454 = zext i16 %1453 to i64, !dbg !2467
  call void @llvm.dbg.value(metadata i32 3, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 3, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  %1455 = bitcast i8* %1446 to i16*, !dbg !2468
  call void @llvm.dbg.value(metadata i32 4, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i16* %1455, metadata !656, metadata !DIExpression()) #5, !dbg !2465
  call void @llvm.dbg.value(metadata i32 4, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i16* %1455, metadata !656, metadata !DIExpression()) #5, !dbg !2465
  %1456 = load i16, i16* %1455, align 2, !dbg !2467, !tbaa !667
  %1457 = zext i16 %1456 to i64, !dbg !2467
  call void @llvm.dbg.value(metadata i32 5, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 5, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 6, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 6, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 7, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 7, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  %1458 = lshr exact i32 %1429, 16, !dbg !2467
  %1459 = zext i32 %1458 to i64, !dbg !2467
  call void @llvm.dbg.value(metadata i32 8, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 8, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  %1460 = and i32 %1432, 65535, !dbg !2467
  %1461 = zext i32 %1460 to i64, !dbg !2467
  call void @llvm.dbg.value(metadata i32 9, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i32 9, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  %1462 = lshr i32 %1432, 16, !dbg !2467
  %1463 = zext i32 %1462 to i64, !dbg !2467
  %1464 = add nuw nsw i64 %1452, 4268, !dbg !2469
  %1465 = add nuw nsw i64 %1464, %1459, !dbg !2469
  %1466 = add nuw nsw i64 %1465, %1461, !dbg !2469
  %1467 = add nuw nsw i64 %1466, %1463, !dbg !2469
  %1468 = add nuw nsw i64 %1467, %1449, !dbg !2469
  %1469 = add nuw nsw i64 %1468, %1454, !dbg !2469
  %1470 = add i64 %1469, %1457, !dbg !2469
  call void @llvm.dbg.value(metadata i32 10, metadata !657, metadata !DIExpression()) #5, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %1470, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1470, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  %1471 = lshr i64 %1470, 16, !dbg !2473
  %1472 = icmp eq i64 %1471, 0, !dbg !2473
  %1473 = and i64 %1470, 65535, !dbg !2474
  %1474 = add nuw nsw i64 %1473, %1471, !dbg !2474
  %1475 = select i1 %1472, i64 %1470, i64 %1474, !dbg !2474
  call void @llvm.dbg.value(metadata i32 1, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1475, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  call void @llvm.dbg.value(metadata i32 1, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1475, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  %1476 = lshr i64 %1475, 16, !dbg !2473
  %1477 = icmp eq i64 %1476, 0, !dbg !2473
  %1478 = and i64 %1475, 65535, !dbg !2474
  %1479 = add nuw nsw i64 %1478, %1476, !dbg !2474
  %1480 = select i1 %1477, i64 %1475, i64 %1479, !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1480, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  call void @llvm.dbg.value(metadata i32 2, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1480, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  %1481 = lshr i64 %1480, 16, !dbg !2473
  %1482 = icmp eq i64 %1481, 0, !dbg !2473
  %1483 = and i64 %1480, 65535, !dbg !2474
  %1484 = add nuw nsw i64 %1483, %1481, !dbg !2474
  %1485 = select i1 %1482, i64 %1480, i64 %1484, !dbg !2474
  call void @llvm.dbg.value(metadata i32 3, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1485, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  call void @llvm.dbg.value(metadata i32 3, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1485, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  %1486 = lshr i64 %1485, 16, !dbg !2473
  %1487 = add i64 %1486, %1485, !dbg !2474
  call void @llvm.dbg.value(metadata i32 4, metadata !675, metadata !DIExpression()) #5, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1487, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %1487, metadata !670, metadata !DIExpression()) #5, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %1487, metadata !1616, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_xor, DW_OP_stack_value)) #5, !dbg !2444
  %1488 = trunc i64 %1487 to i16, !dbg !2475
  %1489 = xor i16 %1488, -1, !dbg !2475
  store i16 %1489, i16* %1436, align 2, !dbg !2476, !tbaa !687
  br label %1490, !dbg !2477

1490:                                             ; preds = %1423, %1419, %1415, %1403, %1392, %1360, %1356, %1352, %1340, %1336, %1316, %1311, %1307, %1304, %1017, %888
  %1491 = phi i32 [ 1, %1017 ], [ 1, %888 ], [ 1, %1307 ], [ 1, %1311 ], [ 1, %1316 ], [ 1, %1304 ], [ 3, %1423 ], [ 3, %1360 ], [ 1, %1336 ], [ 1, %1356 ], [ 1, %1352 ], [ 1, %1340 ], [ 1, %1392 ], [ 1, %1419 ], [ 1, %1415 ], [ 1, %1403 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %889) #5, !dbg !2478
  br label %1492

1492:                                             ; preds = %754, %761, %776, %779, %781, %792, %808, %811, %839, %874, %884, %1490
  %1493 = phi i32 [ %1491, %1490 ], [ 2, %808 ], [ 2, %874 ], [ 1, %884 ], [ 1, %811 ], [ 1, %839 ], [ 3, %781 ], [ 1, %776 ], [ 2, %779 ], [ 1, %792 ], [ 1, %761 ], [ 1, %754 ], !dbg !1839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %758) #5, !dbg !2478
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %757) #5, !dbg !2478
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %756) #5, !dbg !2478
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %755) #5, !dbg !2478
  br label %1494, !dbg !2479

1494:                                             ; preds = %48, %1, %1492, %752
  %1495 = phi i32 [ %753, %752 ], [ %1493, %1492 ], [ 1, %1 ], [ 2, %48 ], !dbg !2480
  ret i32 %1495, !dbg !2481
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!247, !248, !249}
!llvm.ident = !{!250}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ctl_array", scope: !2, file: !78, line: 35, type: !100, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !75, nameTableKind: None)
!3 = !DIFile(filename: "bpf/balancer_kern.c", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !6, line: 3226, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/bpf.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "XDP_ABORTED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XDP_DROP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XDP_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "XDP_TX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "XDP_REDIRECT", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 28, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/linux/in.h", directory: "")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!17 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!35 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!36 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!37 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!38 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!39 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!40 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!41 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143, isUnsigned: true)
!42 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!43 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262, isUnsigned: true)
!44 = !DIEnumerator(name: "IPPROTO_MAX", value: 263, isUnsigned: true)
!45 = !{!46, !47, !48, !51, !52, !66, !71, !72, !74}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !50)
!49 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quic_long_header", file: !54, line: 40, size: 112, elements: !55)
!54 = !DIFile(filename: "bpf/pckt_parsing.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!55 = !{!56, !59, !61, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !54, line: 41, baseType: !57, size: 8)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !58)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !53, file: !54, line: 42, baseType: !60, size: 32, offset: 8)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !7)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_lens", scope: !53, file: !54, line: 45, baseType: !57, size: 8, offset: 40)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dst_connection_id", scope: !53, file: !54, line: 49, baseType: !63, size: 64, offset: 48)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 8, lowerBound: 0)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quic_short_header", file: !54, line: 52, size: 72, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !54, line: 53, baseType: !57, size: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !67, file: !54, line: 54, baseType: !63, size: 64, offset: 8)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !73, line: 35, baseType: !7)
!73 = !DIFile(filename: "./include/jhash.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !{!0, !76, !97, !110, !134, !136, !138, !169, !171, !177, !179, !193, !195, !205, !207, !213, !215, !221, !225, !230, !235, !237, !242}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "____btf_map_ctl_array", scope: !2, file: !78, line: 42, type: !79, isLocal: false, isDefinition: true)
!78 = !DIFile(filename: "bpf/control_data_maps.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_ctl_array", file: !78, line: 42, size: 128, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !79, file: !78, line: 42, baseType: !60, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !79, file: !78, line: 42, baseType: !83, size: 64, offset: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_value", file: !84, line: 53, size: 64, elements: !85)
!84 = !DIFile(filename: "bpf/balancer_structs.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !84, line: 54, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !84, line: 54, size: 64, elements: !88)
!88 = !{!89, !92, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !87, file: !84, line: 55, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !91)
!91 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !87, file: !84, line: 56, baseType: !60, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mac", scope: !87, file: !84, line: 57, baseType: !94, size: 48)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 48, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 6, lowerBound: 0)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "vip_map", scope: !2, file: !99, line: 32, type: !100, isLocal: false, isDefinition: true)
!99 = !DIFile(filename: "bpf/balancer_maps.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_map_def", file: !101, line: 245, size: 224, elements: !102)
!101 = !DIFile(filename: "./include/bpf_helpers.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !101, line: 246, baseType: !7, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !100, file: !101, line: 247, baseType: !7, size: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !100, file: !101, line: 248, baseType: !7, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !100, file: !101, line: 249, baseType: !7, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !100, file: !101, line: 250, baseType: !7, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "inner_map_idx", scope: !100, file: !101, line: 251, baseType: !7, size: 32, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !100, file: !101, line: 252, baseType: !7, size: 32, offset: 192)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "____btf_map_vip_map", scope: !2, file: !99, line: 39, type: !112, isLocal: false, isDefinition: true)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_vip_map", file: !99, line: 39, size: 224, elements: !113)
!113 = !{!114, !129}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !112, file: !99, line: 39, baseType: !115, size: 160)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vip_definition", file: !84, line: 62, size: 160, elements: !116)
!116 = !{!117, !127, !128}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !84, line: 63, baseType: !118, size: 128)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !84, line: 63, size: 128, elements: !119)
!119 = !{!120, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !118, file: !84, line: 64, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !122, line: 30, baseType: !60)
!122 = !DIFile(filename: "/usr/include/linux/types.h", directory: "")
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vipv6", scope: !118, file: !84, line: 65, baseType: !124, size: 128)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 4, lowerBound: 0)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !115, file: !84, line: 67, baseType: !48, size: 16, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !115, file: !84, line: 68, baseType: !57, size: 8, offset: 144)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !112, file: !99, line: 39, baseType: !130, size: 64, offset: 160)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vip_meta", file: !84, line: 72, size: 64, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !84, line: 73, baseType: !60, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "vip_num", scope: !130, file: !84, line: 74, baseType: !60, size: 32, offset: 32)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "lru_mapping", scope: !2, file: !99, line: 43, type: !100, isLocal: false, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "fallback_cache", scope: !2, file: !99, line: 52, type: !100, isLocal: false, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "____btf_map_fallback_cache", scope: !2, file: !99, line: 59, type: !140, isLocal: false, isDefinition: true)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_fallback_cache", file: !99, line: 59, size: 448, elements: !141)
!141 = !{!142, !164}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !140, file: !99, line: 59, baseType: !143, size: 320)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_key", file: !84, line: 26, size: 320, elements: !144)
!144 = !{!145, !150, !155, !163}
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !84, line: 27, baseType: !146, size: 128)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !84, line: 27, size: 128, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !146, file: !84, line: 28, baseType: !121, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "srcv6", scope: !146, file: !84, line: 29, baseType: !124, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !84, line: 31, baseType: !151, size: 128, offset: 128)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !84, line: 31, size: 128, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !151, file: !84, line: 32, baseType: !121, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "dstv6", scope: !151, file: !84, line: 33, baseType: !124, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !84, line: 35, baseType: !156, size: 32, offset: 256)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !84, line: 35, size: 32, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !156, file: !84, line: 36, baseType: !60, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "port16", scope: !156, file: !84, line: 37, baseType: !160, size: 32)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 2, lowerBound: 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !143, file: !84, line: 39, baseType: !57, size: 8, offset: 288)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !140, file: !99, line: 59, baseType: !165, size: 128, offset: 320)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_pos_lru", file: !84, line: 78, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !165, file: !84, line: 79, baseType: !60, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !165, file: !84, line: 80, baseType: !90, size: 64, offset: 64)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "ch_rings", scope: !2, file: !99, line: 62, type: !100, isLocal: false, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "____btf_map_ch_rings", scope: !2, file: !99, line: 69, type: !173, isLocal: false, isDefinition: true)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_ch_rings", file: !99, line: 69, size: 64, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !173, file: !99, line: 69, baseType: !60, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !173, file: !99, line: 69, baseType: !60, size: 32, offset: 32)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "reals", scope: !2, file: !99, line: 72, type: !100, isLocal: false, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "____btf_map_reals", scope: !2, file: !99, line: 79, type: !181, isLocal: false, isDefinition: true)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_reals", file: !99, line: 79, size: 192, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !181, file: !99, line: 79, baseType: !60, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !181, file: !99, line: 79, baseType: !185, size: 160, offset: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_definition", file: !84, line: 84, size: 160, elements: !186)
!186 = !{!187, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !84, line: 85, baseType: !188, size: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !84, line: 85, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !188, file: !84, line: 86, baseType: !121, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dstv6", scope: !188, file: !84, line: 87, baseType: !124, size: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !84, line: 89, baseType: !57, size: 8, offset: 128)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "reals_stats", scope: !2, file: !99, line: 82, type: !100, isLocal: false, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "____btf_map_reals_stats", scope: !2, file: !99, line: 89, type: !197, isLocal: false, isDefinition: true)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_reals_stats", file: !99, line: 89, size: 192, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !197, file: !99, line: 89, baseType: !60, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !99, line: 89, baseType: !201, size: 128, offset: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lb_stats", file: !84, line: 93, size: 128, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !201, file: !84, line: 94, baseType: !90, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !201, file: !84, line: 95, baseType: !90, size: 64, offset: 64)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "stats", scope: !2, file: !99, line: 92, type: !100, isLocal: false, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "____btf_map_stats", scope: !2, file: !99, line: 99, type: !209, isLocal: false, isDefinition: true)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_stats", file: !99, line: 99, size: 192, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !209, file: !99, line: 99, baseType: !60, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !99, line: 99, baseType: !201, size: 128, offset: 64)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "server_id_map", scope: !2, file: !99, line: 103, type: !100, isLocal: false, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "____btf_map_server_id_map", scope: !2, file: !99, line: 110, type: !217, isLocal: false, isDefinition: true)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "____btf_map_server_id_map", file: !99, line: 110, size: 64, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !217, file: !99, line: 110, baseType: !60, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !217, file: !99, line: 110, baseType: !60, size: 32, offset: 32)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 693, type: !223, isLocal: false, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 32, elements: !125)
!224 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !101, line: 22, type: !227, isLocal: true, isDefinition: true)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!46, !46, !46}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "bpf_get_smp_processor_id", scope: !2, file: !101, line: 44, type: !232, isLocal: true, isDefinition: true)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!91}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "bpf_ktime_get_ns", scope: !2, file: !101, line: 38, type: !232, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "bpf_map_update_elem", scope: !2, file: !101, line: 24, type: !239, isLocal: true, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!74, !46, !46, !46, !91}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "bpf_xdp_adjust_head", scope: !2, file: !101, line: 81, type: !244, isLocal: true, isDefinition: true)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!74, !46, !74}
!247 = !{i32 2, !"Dwarf Version", i32 4}
!248 = !{i32 2, !"Debug Info Version", i32 3}
!249 = !{i32 1, !"wchar_size", i32 4}
!250 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!251 = distinct !DISubprogram(name: "balancer_ingress", scope: !3, file: !3, line: 668, type: !252, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!252 = !DISubroutineType(types: !253)
!253 = !{!74, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 3237, size: 160, elements: !256)
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !255, file: !6, line: 3238, baseType: !60, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !255, file: !6, line: 3239, baseType: !60, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !255, file: !6, line: 3240, baseType: !60, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !255, file: !6, line: 3242, baseType: !60, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !255, file: !6, line: 3243, baseType: !60, size: 32, offset: 128)
!262 = !{!263, !264, !265, !266, !274, !275}
!263 = !DILocalVariable(name: "ctx", arg: 1, scope: !251, file: !3, line: 668, type: !254)
!264 = !DILocalVariable(name: "data", scope: !251, file: !3, line: 669, type: !46)
!265 = !DILocalVariable(name: "data_end", scope: !251, file: !3, line: 670, type: !46)
!266 = !DILocalVariable(name: "eth", scope: !251, file: !3, line: 671, type: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eth_hdr", file: !54, line: 57, size: 112, elements: !269)
!269 = !{!270, !272, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "eth_dest", scope: !268, file: !54, line: 58, baseType: !271, size: 48)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 48, elements: !95)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "eth_source", scope: !268, file: !54, line: 59, baseType: !271, size: 48, offset: 48)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "eth_proto", scope: !268, file: !54, line: 60, baseType: !50, size: 16, offset: 96)
!274 = !DILocalVariable(name: "eth_proto", scope: !251, file: !3, line: 672, type: !60)
!275 = !DILocalVariable(name: "nh_off", scope: !251, file: !3, line: 673, type: !60)
!276 = !DILocalVariable(name: "tmp_addr", scope: !277, file: !278, line: 93, type: !124)
!277 = distinct !DISubprogram(name: "send_icmp6_reply", scope: !278, file: !278, line: 90, type: !279, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!278 = !DIFile(filename: "bpf/handle_icmp.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!279 = !DISubroutineType(types: !280)
!280 = !{!74, !46, !46}
!281 = !{!282, !283, !284, !314, !276, !357}
!282 = !DILocalVariable(name: "data", arg: 1, scope: !277, file: !278, line: 90, type: !46)
!283 = !DILocalVariable(name: "data_end", arg: 2, scope: !277, file: !278, line: 90, type: !46)
!284 = !DILocalVariable(name: "ip6h", scope: !277, file: !278, line: 91, type: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6hdr", file: !287, line: 117, size: 320, elements: !288)
!287 = !DIFile(filename: "/usr/include/linux/ipv6.h", directory: "")
!288 = !{!289, !290, !291, !295, !297, !298, !299, !313}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !286, file: !287, line: 119, baseType: !57, size: 4, flags: DIFlagBitField, extraData: i64 0)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !286, file: !287, line: 120, baseType: !57, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lbl", scope: !286, file: !287, line: 127, baseType: !292, size: 24, offset: 8)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 24, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 3, lowerBound: 0)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "payload_len", scope: !286, file: !287, line: 129, baseType: !296, size: 16, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !122, line: 28, baseType: !48)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !286, file: !287, line: 130, baseType: !57, size: 8, offset: 48)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !286, file: !287, line: 131, baseType: !57, size: 8, offset: 56)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !286, file: !287, line: 133, baseType: !300, size: 128, offset: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !301, line: 33, size: 128, elements: !302)
!301 = !DIFile(filename: "/usr/include/linux/in6.h", directory: "")
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !300, file: !301, line: 40, baseType: !304, size: 128)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !301, line: 34, size: 128, elements: !305)
!305 = !{!306, !310, !312}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !304, file: !301, line: 35, baseType: !307, size: 128)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 128, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 16, lowerBound: 0)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !304, file: !301, line: 37, baseType: !311, size: 128)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !304, file: !301, line: 38, baseType: !124, size: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !286, file: !287, line: 134, baseType: !300, size: 128, offset: 192)
!314 = !DILocalVariable(name: "icmp_hdr", scope: !277, file: !278, line: 92, type: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6hdr", file: !317, line: 8, size: 64, elements: !318)
!317 = !DIFile(filename: "/usr/include/linux/icmpv6.h", directory: "")
!318 = !{!319, !320, !321, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_type", scope: !316, file: !317, line: 10, baseType: !57, size: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_code", scope: !316, file: !317, line: 11, baseType: !57, size: 8, offset: 8)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_cksum", scope: !316, file: !317, line: 12, baseType: !322, size: 16, offset: 16)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !122, line: 34, baseType: !48)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_dataun", scope: !316, file: !317, line: 63, baseType: !324, size: 32, offset: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 15, size: 32, elements: !325)
!325 = !{!326, !330, !332, !334, !339, !347}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "un_data32", scope: !324, file: !317, line: 16, baseType: !327, size: 32)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 1, lowerBound: 0)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "un_data16", scope: !324, file: !317, line: 17, baseType: !331, size: 32)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 32, elements: !161)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "un_data8", scope: !324, file: !317, line: 18, baseType: !333, size: 32)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 32, elements: !125)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "u_echo", scope: !324, file: !317, line: 23, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_echo", file: !317, line: 20, size: 32, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !335, file: !317, line: 21, baseType: !296, size: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !335, file: !317, line: 22, baseType: !296, size: 16, offset: 16)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_advt", scope: !324, file: !317, line: 40, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_advt", file: !317, line: 25, size: 32, elements: !341)
!341 = !{!342, !343, !344, !345, !346}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !340, file: !317, line: 27, baseType: !60, size: 5, flags: DIFlagBitField, extraData: i64 0)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !340, file: !317, line: 28, baseType: !60, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "solicited", scope: !340, file: !317, line: 29, baseType: !60, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !340, file: !317, line: 30, baseType: !60, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !340, file: !317, line: 31, baseType: !60, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_ra", scope: !324, file: !317, line: 61, baseType: !348, size: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_ra", file: !317, line: 42, size: 32, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !348, file: !317, line: 43, baseType: !57, size: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !348, file: !317, line: 45, baseType: !57, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "router_pref", scope: !348, file: !317, line: 46, baseType: !57, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "home_agent", scope: !348, file: !317, line: 47, baseType: !57, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !348, file: !317, line: 48, baseType: !57, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !348, file: !317, line: 49, baseType: !57, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_lifetime", scope: !348, file: !317, line: 60, baseType: !296, size: 16, offset: 16)
!357 = !DILocalVariable(name: "off", scope: !277, file: !278, line: 94, type: !90)
!358 = !DILocation(line: 93, column: 10, scope: !277, inlinedAt: !359)
!359 = distinct !DILocation(line: 232, column: 12, scope: !360, inlinedAt: !379)
!360 = distinct !DILexicalBlock(scope: !361, file: !278, line: 231, column: 52)
!361 = distinct !DILexicalBlock(scope: !362, file: !278, line: 231, column: 7)
!362 = distinct !DISubprogram(name: "parse_icmpv6", scope: !278, file: !278, line: 223, type: !363, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!363 = !DISubroutineType(types: !364)
!364 = !{!74, !46, !46, !90, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet_description", file: !84, line: 43, size: 384, elements: !367)
!367 = !{!368, !369, !370, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !366, file: !84, line: 44, baseType: !143, size: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "real_index", scope: !366, file: !84, line: 45, baseType: !60, size: 32, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !84, line: 46, baseType: !57, size: 8, offset: 352)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !366, file: !84, line: 48, baseType: !57, size: 8, offset: 360)
!372 = !{!373, !374, !375, !376, !377, !378}
!373 = !DILocalVariable(name: "data", arg: 1, scope: !362, file: !278, line: 223, type: !46)
!374 = !DILocalVariable(name: "data_end", arg: 2, scope: !362, file: !278, line: 223, type: !46)
!375 = !DILocalVariable(name: "off", arg: 3, scope: !362, file: !278, line: 223, type: !90)
!376 = !DILocalVariable(name: "pckt", arg: 4, scope: !362, file: !278, line: 224, type: !365)
!377 = !DILocalVariable(name: "icmp_hdr", scope: !362, file: !278, line: 225, type: !315)
!378 = !DILocalVariable(name: "ip6h", scope: !362, file: !278, line: 226, type: !285)
!379 = distinct !DILocation(line: 197, column: 16, scope: !380, inlinedAt: !417)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 196, column: 45)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 196, column: 16)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 193, column: 9)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 177, column: 16)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 177, column: 7)
!385 = distinct !DISubprogram(name: "process_l3_headers", scope: !3, file: !3, line: 169, type: !386, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!386 = !DISubroutineType(types: !387)
!387 = !{!74, !365, !388, !90, !51, !46, !46, !389}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!389 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !416}
!391 = !DILocalVariable(name: "pckt", arg: 1, scope: !385, file: !3, line: 169, type: !365)
!392 = !DILocalVariable(name: "protocol", arg: 2, scope: !385, file: !3, line: 170, type: !388)
!393 = !DILocalVariable(name: "off", arg: 3, scope: !385, file: !3, line: 170, type: !90)
!394 = !DILocalVariable(name: "pkt_bytes", arg: 4, scope: !385, file: !3, line: 171, type: !51)
!395 = !DILocalVariable(name: "data", arg: 5, scope: !385, file: !3, line: 171, type: !46)
!396 = !DILocalVariable(name: "data_end", arg: 6, scope: !385, file: !3, line: 172, type: !46)
!397 = !DILocalVariable(name: "is_ipv6", arg: 7, scope: !385, file: !3, line: 172, type: !389)
!398 = !DILocalVariable(name: "iph_len", scope: !385, file: !3, line: 173, type: !90)
!399 = !DILocalVariable(name: "action", scope: !385, file: !3, line: 174, type: !74)
!400 = !DILocalVariable(name: "iph", scope: !385, file: !3, line: 175, type: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iphdr", file: !403, line: 86, size: 160, elements: !404)
!403 = !DIFile(filename: "/usr/include/linux/ip.h", directory: "")
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ihl", scope: !402, file: !403, line: 88, baseType: !57, size: 4, flags: DIFlagBitField, extraData: i64 0)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !402, file: !403, line: 89, baseType: !57, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !402, file: !403, line: 96, baseType: !57, size: 8, offset: 8)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !402, file: !403, line: 97, baseType: !296, size: 16, offset: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !402, file: !403, line: 98, baseType: !296, size: 16, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !402, file: !403, line: 99, baseType: !296, size: 16, offset: 48)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !402, file: !403, line: 100, baseType: !57, size: 8, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !402, file: !403, line: 101, baseType: !57, size: 8, offset: 72)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !402, file: !403, line: 102, baseType: !322, size: 16, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !402, file: !403, line: 103, baseType: !121, size: 32, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !402, file: !403, line: 104, baseType: !121, size: 32, offset: 128)
!416 = !DILocalVariable(name: "ip6h", scope: !385, file: !3, line: 176, type: !285)
!417 = distinct !DILocation(line: 420, column: 12, scope: !418, inlinedAt: !468)
!418 = distinct !DISubprogram(name: "process_packet", scope: !3, file: !3, line: 404, type: !419, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!74, !46, !90, !46, !389, !254}
!421 = !{!422, !423, !424, !425, !426, !427, !429, !431, !432, !433, !435, !437, !438, !439, !440, !441, !442, !443, !444, !447, !448, !449, !452, !454, !457, !458, !461, !462, !467}
!422 = !DILocalVariable(name: "data", arg: 1, scope: !418, file: !3, line: 404, type: !46)
!423 = !DILocalVariable(name: "off", arg: 2, scope: !418, file: !3, line: 404, type: !90)
!424 = !DILocalVariable(name: "data_end", arg: 3, scope: !418, file: !3, line: 404, type: !46)
!425 = !DILocalVariable(name: "is_ipv6", arg: 4, scope: !418, file: !3, line: 405, type: !389)
!426 = !DILocalVariable(name: "xdp", arg: 5, scope: !418, file: !3, line: 405, type: !254)
!427 = !DILocalVariable(name: "cval", scope: !418, file: !3, line: 407, type: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!429 = !DILocalVariable(name: "dst", scope: !418, file: !3, line: 408, type: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!431 = !DILocalVariable(name: "pckt", scope: !418, file: !3, line: 409, type: !366)
!432 = !DILocalVariable(name: "vip", scope: !418, file: !3, line: 410, type: !115)
!433 = !DILocalVariable(name: "vip_info", scope: !418, file: !3, line: 411, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!435 = !DILocalVariable(name: "data_stats", scope: !418, file: !3, line: 412, type: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!437 = !DILocalVariable(name: "iph_len", scope: !418, file: !3, line: 413, type: !90)
!438 = !DILocalVariable(name: "protocol", scope: !418, file: !3, line: 414, type: !57)
!439 = !DILocalVariable(name: "action", scope: !418, file: !3, line: 416, type: !74)
!440 = !DILocalVariable(name: "vip_num", scope: !418, file: !3, line: 417, type: !60)
!441 = !DILocalVariable(name: "mac_addr_pos", scope: !418, file: !3, line: 418, type: !60)
!442 = !DILocalVariable(name: "pkt_bytes", scope: !418, file: !3, line: 419, type: !48)
!443 = !DILocalVariable(name: "stats_key", scope: !418, file: !3, line: 504, type: !60)
!444 = !DILocalVariable(name: "quic_stats_key", scope: !445, file: !3, line: 515, type: !60)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 514, column: 39)
!446 = distinct !DILexicalBlock(scope: !418, file: !3, line: 514, column: 7)
!447 = !DILocalVariable(name: "quic_stats", scope: !445, file: !3, line: 516, type: !436)
!448 = !DILocalVariable(name: "real_index", scope: !445, file: !3, line: 520, type: !74)
!449 = !DILocalVariable(name: "key", scope: !450, file: !3, line: 524, type: !60)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 522, column: 25)
!451 = distinct !DILexicalBlock(scope: !445, file: !3, line: 522, column: 9)
!452 = !DILocalVariable(name: "real_pos", scope: !450, file: !3, line: 525, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!454 = !DILocalVariable(name: "cpu_num", scope: !455, file: !3, line: 556, type: !60)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 550, column: 13)
!456 = distinct !DILexicalBlock(scope: !418, file: !3, line: 550, column: 7)
!457 = !DILocalVariable(name: "lru_map", scope: !455, file: !3, line: 557, type: !46)
!458 = !DILocalVariable(name: "lru_stats_key", scope: !459, file: !3, line: 560, type: !60)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 558, column: 19)
!460 = distinct !DILexicalBlock(scope: !455, file: !3, line: 558, column: 9)
!461 = !DILocalVariable(name: "lru_stats", scope: !459, file: !3, line: 561, type: !436)
!462 = !DILocalVariable(name: "lru_stats_key", scope: !463, file: !3, line: 603, type: !60)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 602, column: 43)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 602, column: 11)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 601, column: 15)
!466 = distinct !DILexicalBlock(scope: !455, file: !3, line: 601, column: 9)
!467 = !DILocalVariable(name: "lru_stats", scope: !463, file: !3, line: 604, type: !436)
!468 = distinct !DILocation(line: 686, column: 12, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 685, column: 42)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 685, column: 14)
!471 = distinct !DILexicalBlock(scope: !251, file: !3, line: 683, column: 7)
!472 = !DILocalVariable(name: "tmp_mac", scope: !473, file: !278, line: 41, type: !271)
!473 = distinct !DISubprogram(name: "swap_mac_and_send", scope: !278, file: !278, line: 39, type: !279, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!474 = !{!475, !476, !477, !472}
!475 = !DILocalVariable(name: "data", arg: 1, scope: !473, file: !278, line: 39, type: !46)
!476 = !DILocalVariable(name: "data_end", arg: 2, scope: !473, file: !278, line: 39, type: !46)
!477 = !DILocalVariable(name: "eth", scope: !473, file: !278, line: 40, type: !267)
!478 = !DILocation(line: 41, column: 17, scope: !473, inlinedAt: !479)
!479 = distinct !DILocation(line: 86, column: 10, scope: !480, inlinedAt: !511)
!480 = distinct !DISubprogram(name: "send_icmp_reply", scope: !278, file: !278, line: 59, type: !279, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!481 = !{!482, !483, !484, !485, !508, !509, !510}
!482 = !DILocalVariable(name: "data", arg: 1, scope: !480, file: !278, line: 59, type: !46)
!483 = !DILocalVariable(name: "data_end", arg: 2, scope: !480, file: !278, line: 59, type: !46)
!484 = !DILocalVariable(name: "iph", scope: !480, file: !278, line: 60, type: !401)
!485 = !DILocalVariable(name: "icmp_hdr", scope: !480, file: !278, line: 61, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmphdr", file: !488, line: 89, size: 64, elements: !489)
!488 = !DIFile(filename: "/usr/include/linux/icmp.h", directory: "")
!489 = !{!490, !491, !492, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !488, line: 90, baseType: !57, size: 8)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !487, file: !488, line: 91, baseType: !57, size: 8, offset: 8)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !487, file: !488, line: 92, baseType: !322, size: 16, offset: 16)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !487, file: !488, line: 104, baseType: !494, size: 32, offset: 32)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !488, line: 93, size: 32, elements: !495)
!495 = !{!496, !501, !502, !507}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !494, file: !488, line: 97, baseType: !497, size: 32)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !488, line: 94, size: 32, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !497, file: !488, line: 95, baseType: !296, size: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !497, file: !488, line: 96, baseType: !296, size: 16, offset: 16)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gateway", scope: !494, file: !488, line: 98, baseType: !121, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !494, file: !488, line: 102, baseType: !503, size: 32)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !488, line: 99, size: 32, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !503, file: !488, line: 100, baseType: !296, size: 16)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !503, file: !488, line: 101, baseType: !296, size: 16, offset: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !494, file: !488, line: 103, baseType: !333, size: 32)
!508 = !DILocalVariable(name: "tmp_addr", scope: !480, file: !278, line: 62, type: !60)
!509 = !DILocalVariable(name: "csum", scope: !480, file: !278, line: 63, type: !90)
!510 = !DILocalVariable(name: "off", scope: !480, file: !278, line: 64, type: !90)
!511 = distinct !DILocation(line: 262, column: 12, scope: !512, inlinedAt: !522)
!512 = distinct !DILexicalBlock(scope: !513, file: !278, line: 261, column: 36)
!513 = distinct !DILexicalBlock(scope: !514, file: !278, line: 261, column: 7)
!514 = distinct !DISubprogram(name: "parse_icmp", scope: !278, file: !278, line: 253, type: !363, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !515)
!515 = !{!516, !517, !518, !519, !520, !521}
!516 = !DILocalVariable(name: "data", arg: 1, scope: !514, file: !278, line: 253, type: !46)
!517 = !DILocalVariable(name: "data_end", arg: 2, scope: !514, file: !278, line: 253, type: !46)
!518 = !DILocalVariable(name: "off", arg: 3, scope: !514, file: !278, line: 253, type: !90)
!519 = !DILocalVariable(name: "pckt", arg: 4, scope: !514, file: !278, line: 254, type: !365)
!520 = !DILocalVariable(name: "icmp_hdr", scope: !514, file: !278, line: 255, type: !486)
!521 = !DILocalVariable(name: "iph", scope: !514, file: !278, line: 256, type: !401)
!522 = distinct !DILocation(line: 227, column: 16, scope: !523, inlinedAt: !417)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 226, column: 36)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 226, column: 9)
!525 = distinct !DILexicalBlock(scope: !384, file: !3, line: 205, column: 10)
!526 = !DILocation(line: 41, column: 17, scope: !473, inlinedAt: !527)
!527 = distinct !DILocation(line: 112, column: 10, scope: !277, inlinedAt: !359)
!528 = !DILocation(line: 41, column: 17, scope: !473, inlinedAt: !529)
!529 = distinct !DILocation(line: 86, column: 10, scope: !480, inlinedAt: !530)
!530 = distinct !DILocation(line: 262, column: 12, scope: !512, inlinedAt: !531)
!531 = distinct !DILocation(line: 227, column: 16, scope: !523, inlinedAt: !532)
!532 = distinct !DILocation(line: 420, column: 12, scope: !418, inlinedAt: !533)
!533 = distinct !DILocation(line: 684, column: 12, scope: !534)
!534 = distinct !DILexicalBlock(scope: !471, file: !3, line: 683, column: 33)
!535 = !DILocation(line: 41, column: 17, scope: !473, inlinedAt: !536)
!536 = distinct !DILocation(line: 112, column: 10, scope: !277, inlinedAt: !537)
!537 = distinct !DILocation(line: 232, column: 12, scope: !360, inlinedAt: !538)
!538 = distinct !DILocation(line: 197, column: 16, scope: !380, inlinedAt: !532)
!539 = !DILocation(line: 668, column: 37, scope: !251)
!540 = !DILocation(line: 669, column: 35, scope: !251)
!541 = !{!542, !543, i64 0}
!542 = !{!"xdp_md", !543, i64 0, !543, i64 4, !543, i64 8, !543, i64 12, !543, i64 16}
!543 = !{!"int", !544, i64 0}
!544 = !{!"omnipotent char", !545, i64 0}
!545 = !{!"Simple C/C++ TBAA"}
!546 = !DILocation(line: 669, column: 24, scope: !251)
!547 = !DILocation(line: 669, column: 16, scope: !251)
!548 = !DILocation(line: 669, column: 9, scope: !251)
!549 = !DILocation(line: 670, column: 39, scope: !251)
!550 = !{!542, !543, i64 4}
!551 = !DILocation(line: 670, column: 28, scope: !251)
!552 = !DILocation(line: 670, column: 20, scope: !251)
!553 = !DILocation(line: 670, column: 9, scope: !251)
!554 = !DILocation(line: 673, column: 9, scope: !251)
!555 = !DILocation(line: 676, column: 12, scope: !556)
!556 = distinct !DILexicalBlock(scope: !251, file: !3, line: 676, column: 7)
!557 = !DILocation(line: 676, column: 21, scope: !556)
!558 = !DILocation(line: 676, column: 7, scope: !251)
!559 = !DILocation(line: 671, column: 25, scope: !251)
!560 = !DILocation(line: 671, column: 19, scope: !251)
!561 = !DILocation(line: 681, column: 20, scope: !251)
!562 = !{!563, !564, i64 12}
!563 = !{!"eth_hdr", !544, i64 0, !544, i64 6, !564, i64 12}
!564 = !{!"short", !544, i64 0}
!565 = !DILocation(line: 683, column: 7, scope: !251)
!566 = !DILocation(line: 404, column: 40, scope: !418, inlinedAt: !533)
!567 = !DILocation(line: 404, column: 52, scope: !418, inlinedAt: !533)
!568 = !DILocation(line: 404, column: 63, scope: !418, inlinedAt: !533)
!569 = !DILocation(line: 405, column: 63, scope: !418, inlinedAt: !533)
!570 = !DILocation(line: 408, column: 27, scope: !418, inlinedAt: !533)
!571 = !DILocation(line: 409, column: 3, scope: !418, inlinedAt: !533)
!572 = !DILocation(line: 409, column: 29, scope: !418, inlinedAt: !533)
!573 = !DILocation(line: 410, column: 3, scope: !418, inlinedAt: !533)
!574 = !DILocation(line: 410, column: 25, scope: !418, inlinedAt: !533)
!575 = !DILocation(line: 417, column: 3, scope: !418, inlinedAt: !533)
!576 = !DILocation(line: 418, column: 3, scope: !418, inlinedAt: !533)
!577 = !DILocation(line: 418, column: 9, scope: !418, inlinedAt: !533)
!578 = !{!543, !543, i64 0}
!579 = !DILocation(line: 169, column: 65, scope: !385, inlinedAt: !532)
!580 = !DILocation(line: 170, column: 60, scope: !385, inlinedAt: !532)
!581 = !DILocation(line: 171, column: 62, scope: !385, inlinedAt: !532)
!582 = !DILocation(line: 172, column: 44, scope: !385, inlinedAt: !532)
!583 = !DILocation(line: 175, column: 17, scope: !385, inlinedAt: !532)
!584 = !DILocation(line: 207, column: 13, scope: !585, inlinedAt: !532)
!585 = distinct !DILexicalBlock(scope: !525, file: !3, line: 207, column: 9)
!586 = !DILocation(line: 207, column: 17, scope: !585, inlinedAt: !532)
!587 = !DILocation(line: 207, column: 9, scope: !525, inlinedAt: !532)
!588 = !DILocation(line: 211, column: 14, scope: !589, inlinedAt: !532)
!589 = distinct !DILexicalBlock(scope: !525, file: !3, line: 211, column: 9)
!590 = !DILocation(line: 211, column: 18, scope: !589, inlinedAt: !532)
!591 = !DILocation(line: 211, column: 9, scope: !525, inlinedAt: !532)
!592 = !DILocation(line: 216, column: 22, scope: !525, inlinedAt: !532)
!593 = !{!594, !544, i64 1}
!594 = !{!"iphdr", !544, i64 0, !544, i64 0, !544, i64 1, !564, i64 2, !564, i64 4, !564, i64 6, !544, i64 8, !544, i64 9, !564, i64 10, !543, i64 12, !543, i64 16}
!595 = !DILocation(line: 216, column: 11, scope: !525, inlinedAt: !532)
!596 = !DILocation(line: 216, column: 15, scope: !525, inlinedAt: !532)
!597 = !{!598, !544, i64 45}
!598 = !{!"packet_description", !599, i64 0, !543, i64 40, !544, i64 44, !544, i64 45}
!599 = !{!"flow_key", !544, i64 0, !544, i64 16, !544, i64 32, !544, i64 36}
!600 = !DILocation(line: 217, column: 22, scope: !525, inlinedAt: !532)
!601 = !{!594, !544, i64 9}
!602 = !DILocation(line: 218, column: 16, scope: !525, inlinedAt: !532)
!603 = !DILocation(line: 218, column: 22, scope: !525, inlinedAt: !532)
!604 = !{!598, !544, i64 36}
!605 = !DILocation(line: 219, column: 18, scope: !525, inlinedAt: !532)
!606 = !{!594, !564, i64 2}
!607 = !DILocation(line: 222, column: 14, scope: !608, inlinedAt: !532)
!608 = distinct !DILexicalBlock(scope: !525, file: !3, line: 222, column: 9)
!609 = !{!594, !564, i64 6}
!610 = !DILocation(line: 222, column: 23, scope: !608, inlinedAt: !532)
!611 = !DILocation(line: 222, column: 9, scope: !525, inlinedAt: !532)
!612 = !DILocation(line: 226, column: 19, scope: !524, inlinedAt: !532)
!613 = !DILocation(line: 226, column: 9, scope: !525, inlinedAt: !532)
!614 = !DILocation(line: 253, column: 36, scope: !514, inlinedAt: !531)
!615 = !DILocation(line: 253, column: 48, scope: !514, inlinedAt: !531)
!616 = !DILocation(line: 253, column: 64, scope: !514, inlinedAt: !531)
!617 = !DILocation(line: 254, column: 57, scope: !514, inlinedAt: !531)
!618 = !DILocation(line: 258, column: 16, scope: !619, inlinedAt: !531)
!619 = distinct !DILexicalBlock(scope: !514, file: !278, line: 258, column: 7)
!620 = !DILocation(line: 258, column: 20, scope: !619, inlinedAt: !531)
!621 = !DILocation(line: 258, column: 7, scope: !514, inlinedAt: !531)
!622 = !DILocation(line: 255, column: 19, scope: !514, inlinedAt: !531)
!623 = !DILocation(line: 261, column: 17, scope: !513, inlinedAt: !531)
!624 = !{!625, !544, i64 0}
!625 = !{!"icmphdr", !544, i64 0, !544, i64 1, !564, i64 2, !544, i64 4}
!626 = !DILocation(line: 261, column: 7, scope: !514, inlinedAt: !531)
!627 = !DILocation(line: 59, column: 41, scope: !480, inlinedAt: !530)
!628 = !DILocation(line: 59, column: 53, scope: !480, inlinedAt: !530)
!629 = !DILocation(line: 62, column: 9, scope: !480, inlinedAt: !530)
!630 = !DILocation(line: 63, column: 9, scope: !480, inlinedAt: !530)
!631 = !DILocation(line: 64, column: 9, scope: !480, inlinedAt: !530)
!632 = !DILocation(line: 60, column: 17, scope: !480, inlinedAt: !530)
!633 = !DILocation(line: 61, column: 19, scope: !480, inlinedAt: !530)
!634 = !DILocation(line: 74, column: 18, scope: !480, inlinedAt: !530)
!635 = !DILocation(line: 78, column: 13, scope: !480, inlinedAt: !530)
!636 = !DILocation(line: 78, column: 22, scope: !480, inlinedAt: !530)
!637 = !{!625, !564, i64 2}
!638 = !DILocation(line: 79, column: 8, scope: !480, inlinedAt: !530)
!639 = !DILocation(line: 79, column: 12, scope: !480, inlinedAt: !530)
!640 = !{!594, !544, i64 8}
!641 = !DILocation(line: 80, column: 19, scope: !480, inlinedAt: !530)
!642 = !{!594, !543, i64 16}
!643 = !DILocation(line: 81, column: 21, scope: !480, inlinedAt: !530)
!644 = !{!594, !543, i64 12}
!645 = !DILocation(line: 81, column: 14, scope: !480, inlinedAt: !530)
!646 = !DILocation(line: 82, column: 14, scope: !480, inlinedAt: !530)
!647 = !DILocation(line: 83, column: 8, scope: !480, inlinedAt: !530)
!648 = !DILocalVariable(name: "iph", arg: 1, scope: !649, file: !650, line: 53, type: !46)
!649 = distinct !DISubprogram(name: "ipv4_csum_inline", scope: !650, file: !650, line: 53, type: !651, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!650 = !DIFile(filename: "bpf/csum_helpers.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!651 = !DISubroutineType(types: !652)
!652 = !{null, !46, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!654 = !{!648, !655, !656, !657}
!655 = !DILocalVariable(name: "csum", arg: 2, scope: !649, file: !650, line: 53, type: !653)
!656 = !DILocalVariable(name: "next_iph_u16", scope: !649, file: !650, line: 54, type: !51)
!657 = !DILocalVariable(name: "i", scope: !658, file: !650, line: 56, type: !74)
!658 = distinct !DILexicalBlock(scope: !649, file: !650, line: 56, column: 3)
!659 = !DILocation(line: 53, column: 43, scope: !649, inlinedAt: !660)
!660 = distinct !DILocation(line: 84, column: 3, scope: !480, inlinedAt: !530)
!661 = !DILocation(line: 54, column: 25, scope: !649, inlinedAt: !660)
!662 = !DILocation(line: 54, column: 10, scope: !649, inlinedAt: !660)
!663 = !DILocation(line: 56, column: 12, scope: !658, inlinedAt: !660)
!664 = !DILocation(line: 57, column: 15, scope: !665, inlinedAt: !660)
!665 = distinct !DILexicalBlock(scope: !666, file: !650, line: 56, column: 55)
!666 = distinct !DILexicalBlock(scope: !658, file: !650, line: 56, column: 3)
!667 = !{!564, !564, i64 0}
!668 = !DILocation(line: 57, column: 28, scope: !665, inlinedAt: !660)
!669 = !DILocation(line: 57, column: 12, scope: !665, inlinedAt: !660)
!670 = !DILocalVariable(name: "csum", arg: 1, scope: !671, file: !650, line: 31, type: !90)
!671 = distinct !DISubprogram(name: "csum_fold_helper", scope: !650, file: !650, line: 31, type: !672, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!48, !90}
!674 = !{!670, !675}
!675 = !DILocalVariable(name: "i", scope: !671, file: !650, line: 32, type: !74)
!676 = !DILocation(line: 31, column: 44, scope: !671, inlinedAt: !677)
!677 = distinct !DILocation(line: 59, column: 11, scope: !649, inlinedAt: !660)
!678 = !DILocation(line: 32, column: 7, scope: !671, inlinedAt: !677)
!679 = !DILocation(line: 35, column: 14, scope: !680, inlinedAt: !677)
!680 = distinct !DILexicalBlock(scope: !681, file: !650, line: 35, column: 9)
!681 = distinct !DILexicalBlock(scope: !682, file: !650, line: 34, column: 28)
!682 = distinct !DILexicalBlock(scope: !683, file: !650, line: 34, column: 3)
!683 = distinct !DILexicalBlock(scope: !671, file: !650, line: 34, column: 3)
!684 = !DILocation(line: 35, column: 9, scope: !681, inlinedAt: !677)
!685 = !DILocation(line: 85, column: 16, scope: !480, inlinedAt: !530)
!686 = !DILocation(line: 85, column: 14, scope: !480, inlinedAt: !530)
!687 = !{!594, !564, i64 10}
!688 = !DILocation(line: 39, column: 43, scope: !473, inlinedAt: !529)
!689 = !DILocation(line: 39, column: 55, scope: !473, inlinedAt: !529)
!690 = !DILocation(line: 41, column: 3, scope: !473, inlinedAt: !529)
!691 = !DILocation(line: 40, column: 19, scope: !473, inlinedAt: !529)
!692 = !DILocation(line: 43, column: 24, scope: !473, inlinedAt: !529)
!693 = !DILocation(line: 43, column: 3, scope: !473, inlinedAt: !529)
!694 = !DILocation(line: 44, column: 3, scope: !473, inlinedAt: !529)
!695 = !DILocation(line: 45, column: 3, scope: !473, inlinedAt: !529)
!696 = !DILocation(line: 47, column: 1, scope: !473, inlinedAt: !529)
!697 = !DILocation(line: 262, column: 5, scope: !512, inlinedAt: !531)
!698 = !DILocation(line: 269, column: 11, scope: !699, inlinedAt: !531)
!699 = distinct !DILexicalBlock(scope: !514, file: !278, line: 269, column: 7)
!700 = !DILocation(line: 269, column: 15, scope: !699, inlinedAt: !531)
!701 = !DILocation(line: 269, column: 7, scope: !514, inlinedAt: !531)
!702 = !DILocation(line: 256, column: 17, scope: !514, inlinedAt: !531)
!703 = !DILocation(line: 272, column: 12, scope: !704, inlinedAt: !531)
!704 = distinct !DILexicalBlock(scope: !514, file: !278, line: 272, column: 7)
!705 = !DILocation(line: 272, column: 16, scope: !704, inlinedAt: !531)
!706 = !DILocation(line: 272, column: 7, scope: !514, inlinedAt: !531)
!707 = !DILocation(line: 275, column: 27, scope: !514, inlinedAt: !531)
!708 = !DILocation(line: 275, column: 20, scope: !514, inlinedAt: !531)
!709 = !DILocation(line: 276, column: 9, scope: !514, inlinedAt: !531)
!710 = !DILocation(line: 276, column: 15, scope: !514, inlinedAt: !531)
!711 = !{!598, !544, i64 44}
!712 = !DILocation(line: 277, column: 25, scope: !514, inlinedAt: !531)
!713 = !DILocation(line: 277, column: 14, scope: !514, inlinedAt: !531)
!714 = !DILocation(line: 277, column: 18, scope: !514, inlinedAt: !531)
!715 = !{!544, !544, i64 0}
!716 = !DILocation(line: 278, column: 25, scope: !514, inlinedAt: !531)
!717 = !DILocation(line: 174, column: 7, scope: !385, inlinedAt: !532)
!718 = !DILocation(line: 228, column: 11, scope: !523, inlinedAt: !532)
!719 = !DILocation(line: 232, column: 29, scope: !720, inlinedAt: !532)
!720 = distinct !DILexicalBlock(scope: !524, file: !3, line: 231, column: 12)
!721 = !DILocation(line: 232, column: 18, scope: !720, inlinedAt: !532)
!722 = !DILocation(line: 232, column: 22, scope: !720, inlinedAt: !532)
!723 = !DILocation(line: 233, column: 29, scope: !720, inlinedAt: !532)
!724 = !DILocation(line: 425, column: 24, scope: !418, inlinedAt: !533)
!725 = !DILocation(line: 0, scope: !524, inlinedAt: !532)
!726 = !DILocation(line: 416, column: 7, scope: !418, inlinedAt: !533)
!727 = !DILocation(line: 414, column: 8, scope: !418, inlinedAt: !533)
!728 = !DILocation(line: 439, column: 7, scope: !418, inlinedAt: !533)
!729 = !DILocalVariable(name: "data", arg: 1, scope: !730, file: !54, line: 107, type: !46)
!730 = distinct !DISubprogram(name: "parse_tcp", scope: !54, file: !54, line: 107, type: !731, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!389, !46, !46, !389, !365}
!733 = !{!729, !734, !735, !736, !737, !738, !739}
!734 = !DILocalVariable(name: "data_end", arg: 2, scope: !730, file: !54, line: 107, type: !46)
!735 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !730, file: !54, line: 108, type: !389)
!736 = !DILocalVariable(name: "pckt", arg: 4, scope: !730, file: !54, line: 109, type: !365)
!737 = !DILocalVariable(name: "is_icmp", scope: !730, file: !54, line: 111, type: !389)
!738 = !DILocalVariable(name: "off", scope: !730, file: !54, line: 112, type: !90)
!739 = !DILocalVariable(name: "tcp", scope: !730, file: !54, line: 113, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcphdr", file: !742, line: 25, size: 160, elements: !743)
!742 = !DIFile(filename: "/usr/include/linux/tcp.h", directory: "")
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !741, file: !742, line: 26, baseType: !296, size: 16)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !741, file: !742, line: 27, baseType: !296, size: 16, offset: 16)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !741, file: !742, line: 28, baseType: !121, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ack_seq", scope: !741, file: !742, line: 29, baseType: !121, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !741, file: !742, line: 31, baseType: !48, size: 4, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "doff", scope: !741, file: !742, line: 32, baseType: !48, size: 4, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "fin", scope: !741, file: !742, line: 33, baseType: !48, size: 1, offset: 104, flags: DIFlagBitField, extraData: i64 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "syn", scope: !741, file: !742, line: 34, baseType: !48, size: 1, offset: 105, flags: DIFlagBitField, extraData: i64 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rst", scope: !741, file: !742, line: 35, baseType: !48, size: 1, offset: 106, flags: DIFlagBitField, extraData: i64 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "psh", scope: !741, file: !742, line: 36, baseType: !48, size: 1, offset: 107, flags: DIFlagBitField, extraData: i64 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !741, file: !742, line: 37, baseType: !48, size: 1, offset: 108, flags: DIFlagBitField, extraData: i64 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "urg", scope: !741, file: !742, line: 38, baseType: !48, size: 1, offset: 109, flags: DIFlagBitField, extraData: i64 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ece", scope: !741, file: !742, line: 39, baseType: !48, size: 1, offset: 110, flags: DIFlagBitField, extraData: i64 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cwr", scope: !741, file: !742, line: 40, baseType: !48, size: 1, offset: 111, flags: DIFlagBitField, extraData: i64 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !741, file: !742, line: 55, baseType: !296, size: 16, offset: 112)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !741, file: !742, line: 56, baseType: !322, size: 16, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "urg_ptr", scope: !741, file: !742, line: 57, baseType: !296, size: 16, offset: 144)
!761 = !DILocation(line: 107, column: 36, scope: !730, inlinedAt: !762)
!762 = distinct !DILocation(line: 440, column: 10, scope: !763, inlinedAt: !533)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 440, column: 9)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 439, column: 32)
!765 = distinct !DILexicalBlock(scope: !418, file: !3, line: 439, column: 7)
!766 = !DILocation(line: 107, column: 48, scope: !730, inlinedAt: !762)
!767 = !DILocation(line: 109, column: 57, scope: !730, inlinedAt: !762)
!768 = !DILocation(line: 111, column: 27, scope: !730, inlinedAt: !762)
!769 = !DILocation(line: 111, column: 43, scope: !730, inlinedAt: !762)
!770 = !DILocalVariable(name: "off", scope: !771, file: !54, line: 65, type: !90)
!771 = distinct !DISubprogram(name: "calc_offset", scope: !54, file: !54, line: 64, type: !772, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!90, !389, !389}
!774 = !{!775, !776, !770}
!775 = !DILocalVariable(name: "is_ipv6", arg: 1, scope: !771, file: !54, line: 64, type: !389)
!776 = !DILocalVariable(name: "is_icmp", arg: 2, scope: !771, file: !54, line: 64, type: !389)
!777 = !DILocation(line: 65, column: 9, scope: !771, inlinedAt: !778)
!778 = distinct !DILocation(line: 112, column: 15, scope: !730, inlinedAt: !762)
!779 = !DILocation(line: 66, column: 7, scope: !771, inlinedAt: !778)
!780 = !DILocation(line: 112, column: 9, scope: !730, inlinedAt: !762)
!781 = !DILocation(line: 114, column: 14, scope: !730, inlinedAt: !762)
!782 = !DILocation(line: 113, column: 18, scope: !730, inlinedAt: !762)
!783 = !DILocation(line: 116, column: 11, scope: !784, inlinedAt: !762)
!784 = distinct !DILexicalBlock(scope: !730, file: !54, line: 116, column: 7)
!785 = !DILocation(line: 116, column: 15, scope: !784, inlinedAt: !762)
!786 = !DILocation(line: 116, column: 7, scope: !730, inlinedAt: !762)
!787 = !DILocation(line: 120, column: 12, scope: !788, inlinedAt: !762)
!788 = distinct !DILexicalBlock(scope: !730, file: !54, line: 120, column: 7)
!789 = !DILocation(line: 120, column: 7, scope: !788, inlinedAt: !762)
!790 = !DILocation(line: 120, column: 7, scope: !730, inlinedAt: !762)
!791 = !DILocation(line: 121, column: 17, scope: !792, inlinedAt: !762)
!792 = distinct !DILexicalBlock(scope: !788, file: !54, line: 120, column: 17)
!793 = !DILocation(line: 122, column: 3, scope: !792, inlinedAt: !762)
!794 = !DILocation(line: 124, column: 7, scope: !730, inlinedAt: !762)
!795 = !DILocation(line: 125, column: 33, scope: !796, inlinedAt: !762)
!796 = distinct !DILexicalBlock(scope: !797, file: !54, line: 124, column: 17)
!797 = distinct !DILexicalBlock(scope: !730, file: !54, line: 124, column: 7)
!798 = !{!799, !564, i64 0}
!799 = !{!"tcphdr", !564, i64 0, !564, i64 2, !543, i64 4, !543, i64 8, !564, i64 12, !564, i64 12, !564, i64 13, !564, i64 13, !564, i64 13, !564, i64 13, !564, i64 13, !564, i64 13, !564, i64 13, !564, i64 13, !564, i64 14, !564, i64 16, !564, i64 18}
!800 = !DILocation(line: 125, column: 16, scope: !796, inlinedAt: !762)
!801 = !DILocation(line: 125, column: 5, scope: !796, inlinedAt: !762)
!802 = !DILocation(line: 125, column: 26, scope: !796, inlinedAt: !762)
!803 = !DILocation(line: 126, column: 33, scope: !796, inlinedAt: !762)
!804 = !DILocation(line: 127, column: 3, scope: !796, inlinedAt: !762)
!805 = !DILocation(line: 130, column: 33, scope: !806, inlinedAt: !762)
!806 = distinct !DILexicalBlock(scope: !797, file: !54, line: 127, column: 10)
!807 = !{!799, !564, i64 2}
!808 = !DILocation(line: 130, column: 16, scope: !806, inlinedAt: !762)
!809 = !DILocation(line: 130, column: 5, scope: !806, inlinedAt: !762)
!810 = !DILocation(line: 130, column: 26, scope: !806, inlinedAt: !762)
!811 = !DILocalVariable(name: "data", arg: 1, scope: !812, file: !54, line: 81, type: !46)
!812 = distinct !DISubprogram(name: "parse_udp", scope: !54, file: !54, line: 81, type: !731, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!813 = !{!811, !814, !815, !816, !817, !818, !819}
!814 = !DILocalVariable(name: "data_end", arg: 2, scope: !812, file: !54, line: 81, type: !46)
!815 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !812, file: !54, line: 82, type: !389)
!816 = !DILocalVariable(name: "pckt", arg: 4, scope: !812, file: !54, line: 83, type: !365)
!817 = !DILocalVariable(name: "is_icmp", scope: !812, file: !54, line: 85, type: !389)
!818 = !DILocalVariable(name: "off", scope: !812, file: !54, line: 86, type: !90)
!819 = !DILocalVariable(name: "udp", scope: !812, file: !54, line: 87, type: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udphdr", file: !822, line: 23, size: 64, elements: !823)
!822 = !DIFile(filename: "/usr/include/linux/udp.h", directory: "")
!823 = !{!824, !825, !826, !827}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !821, file: !822, line: 24, baseType: !296, size: 16)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !821, file: !822, line: 25, baseType: !296, size: 16, offset: 16)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !821, file: !822, line: 26, baseType: !296, size: 16, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !821, file: !822, line: 27, baseType: !322, size: 16, offset: 48)
!828 = !DILocation(line: 81, column: 36, scope: !812, inlinedAt: !829)
!829 = distinct !DILocation(line: 444, column: 10, scope: !830, inlinedAt: !533)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 444, column: 9)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 443, column: 39)
!832 = distinct !DILexicalBlock(scope: !765, file: !3, line: 443, column: 14)
!833 = !DILocation(line: 81, column: 48, scope: !812, inlinedAt: !829)
!834 = !DILocation(line: 83, column: 57, scope: !812, inlinedAt: !829)
!835 = !DILocation(line: 85, column: 43, scope: !812, inlinedAt: !829)
!836 = !DILocation(line: 65, column: 9, scope: !771, inlinedAt: !837)
!837 = distinct !DILocation(line: 86, column: 15, scope: !812, inlinedAt: !829)
!838 = !DILocation(line: 66, column: 7, scope: !771, inlinedAt: !837)
!839 = !DILocation(line: 86, column: 9, scope: !812, inlinedAt: !829)
!840 = !DILocation(line: 88, column: 14, scope: !812, inlinedAt: !829)
!841 = !DILocation(line: 87, column: 18, scope: !812, inlinedAt: !829)
!842 = !DILocation(line: 90, column: 11, scope: !843, inlinedAt: !829)
!843 = distinct !DILexicalBlock(scope: !812, file: !54, line: 90, column: 7)
!844 = !DILocation(line: 90, column: 15, scope: !843, inlinedAt: !829)
!845 = !DILocation(line: 90, column: 7, scope: !812, inlinedAt: !829)
!846 = !DILocation(line: 94, column: 7, scope: !812, inlinedAt: !829)
!847 = !DILocation(line: 95, column: 33, scope: !848, inlinedAt: !829)
!848 = distinct !DILexicalBlock(scope: !849, file: !54, line: 94, column: 17)
!849 = distinct !DILexicalBlock(scope: !812, file: !54, line: 94, column: 7)
!850 = !{!851, !564, i64 0}
!851 = !{!"udphdr", !564, i64 0, !564, i64 2, !564, i64 4, !564, i64 6}
!852 = !DILocation(line: 95, column: 16, scope: !848, inlinedAt: !829)
!853 = !DILocation(line: 95, column: 5, scope: !848, inlinedAt: !829)
!854 = !DILocation(line: 95, column: 26, scope: !848, inlinedAt: !829)
!855 = !DILocation(line: 96, column: 33, scope: !848, inlinedAt: !829)
!856 = !DILocation(line: 97, column: 3, scope: !848, inlinedAt: !829)
!857 = !DILocation(line: 100, column: 33, scope: !858, inlinedAt: !829)
!858 = distinct !DILexicalBlock(scope: !849, file: !54, line: 97, column: 10)
!859 = !{!851, !564, i64 2}
!860 = !DILocation(line: 100, column: 16, scope: !858, inlinedAt: !829)
!861 = !DILocation(line: 100, column: 5, scope: !858, inlinedAt: !829)
!862 = !DILocation(line: 100, column: 26, scope: !858, inlinedAt: !829)
!863 = !DILocation(line: 0, scope: !765, inlinedAt: !533)
!864 = !DILocation(line: 465, column: 9, scope: !865, inlinedAt: !533)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 464, column: 10)
!866 = distinct !DILexicalBlock(scope: !418, file: !3, line: 462, column: 7)
!867 = !DILocation(line: 465, column: 13, scope: !865, inlinedAt: !533)
!868 = !DILocation(line: 468, column: 24, scope: !418, inlinedAt: !533)
!869 = !DILocation(line: 468, column: 14, scope: !418, inlinedAt: !533)
!870 = !DILocation(line: 468, column: 7, scope: !418, inlinedAt: !533)
!871 = !DILocation(line: 468, column: 12, scope: !418, inlinedAt: !533)
!872 = !{!873, !564, i64 16}
!873 = !{!"vip_definition", !544, i64 0, !564, i64 16, !544, i64 18}
!874 = !DILocation(line: 469, column: 7, scope: !418, inlinedAt: !533)
!875 = !DILocation(line: 469, column: 13, scope: !418, inlinedAt: !533)
!876 = !{!873, !544, i64 18}
!877 = !DILocation(line: 470, column: 14, scope: !418, inlinedAt: !533)
!878 = !DILocation(line: 411, column: 20, scope: !418, inlinedAt: !533)
!879 = !DILocation(line: 471, column: 8, scope: !880, inlinedAt: !533)
!880 = distinct !DILexicalBlock(scope: !418, file: !3, line: 471, column: 7)
!881 = !DILocation(line: 471, column: 7, scope: !418, inlinedAt: !533)
!882 = !DILocation(line: 472, column: 14, scope: !883, inlinedAt: !533)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 471, column: 18)
!884 = !DILocation(line: 473, column: 16, scope: !883, inlinedAt: !533)
!885 = !DILocation(line: 474, column: 10, scope: !886, inlinedAt: !533)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 474, column: 9)
!887 = !DILocation(line: 474, column: 9, scope: !883, inlinedAt: !533)
!888 = !DILocation(line: 478, column: 21, scope: !889, inlinedAt: !533)
!889 = distinct !DILexicalBlock(scope: !883, file: !3, line: 478, column: 9)
!890 = !{!891, !543, i64 0}
!891 = !{!"vip_meta", !543, i64 0, !543, i64 4}
!892 = !DILocation(line: 478, column: 27, scope: !889, inlinedAt: !533)
!893 = !DILocation(line: 478, column: 9, scope: !883, inlinedAt: !533)
!894 = !DILocation(line: 481, column: 27, scope: !895, inlinedAt: !533)
!895 = distinct !DILexicalBlock(scope: !889, file: !3, line: 478, column: 49)
!896 = !DILocation(line: 482, column: 5, scope: !895, inlinedAt: !533)
!897 = !DILocation(line: 0, scope: !418, inlinedAt: !533)
!898 = !DILocation(line: 485, column: 16, scope: !899, inlinedAt: !533)
!899 = distinct !DILexicalBlock(scope: !418, file: !3, line: 485, column: 7)
!900 = !DILocation(line: 485, column: 23, scope: !899, inlinedAt: !533)
!901 = !DILocation(line: 485, column: 7, scope: !418, inlinedAt: !533)
!902 = !DILocation(line: 504, column: 3, scope: !418, inlinedAt: !533)
!903 = !DILocation(line: 504, column: 9, scope: !418, inlinedAt: !533)
!904 = !DILocation(line: 505, column: 16, scope: !418, inlinedAt: !533)
!905 = !DILocation(line: 412, column: 20, scope: !418, inlinedAt: !533)
!906 = !DILocation(line: 506, column: 8, scope: !907, inlinedAt: !533)
!907 = distinct !DILexicalBlock(scope: !418, file: !3, line: 506, column: 7)
!908 = !DILocation(line: 506, column: 7, scope: !418, inlinedAt: !533)
!909 = !DILocation(line: 511, column: 15, scope: !418, inlinedAt: !533)
!910 = !DILocation(line: 511, column: 18, scope: !418, inlinedAt: !533)
!911 = !{!912, !913, i64 0}
!912 = !{!"lb_stats", !913, i64 0, !913, i64 8}
!913 = !{!"long long", !544, i64 0}
!914 = !DILocation(line: 514, column: 18, scope: !446, inlinedAt: !533)
!915 = !DILocation(line: 514, column: 24, scope: !446, inlinedAt: !533)
!916 = !DILocation(line: 514, column: 7, scope: !418, inlinedAt: !533)
!917 = !DILocation(line: 515, column: 5, scope: !445, inlinedAt: !533)
!918 = !DILocation(line: 515, column: 11, scope: !445, inlinedAt: !533)
!919 = !DILocation(line: 516, column: 35, scope: !445, inlinedAt: !533)
!920 = !DILocation(line: 516, column: 22, scope: !445, inlinedAt: !533)
!921 = !DILocation(line: 517, column: 10, scope: !922, inlinedAt: !533)
!922 = distinct !DILexicalBlock(scope: !445, file: !3, line: 517, column: 9)
!923 = !DILocation(line: 517, column: 9, scope: !445, inlinedAt: !533)
!924 = !DILocalVariable(name: "data", arg: 1, scope: !925, file: !54, line: 242, type: !46)
!925 = distinct !DISubprogram(name: "parse_quic", scope: !54, file: !54, line: 242, type: !926, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!74, !46, !46, !389, !365}
!928 = !{!924, !929, !930, !931, !932, !933, !934, !935, !936, !937, !940, !941}
!929 = !DILocalVariable(name: "data_end", arg: 2, scope: !925, file: !54, line: 242, type: !46)
!930 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !925, file: !54, line: 243, type: !389)
!931 = !DILocalVariable(name: "pckt", arg: 4, scope: !925, file: !54, line: 243, type: !365)
!932 = !DILocalVariable(name: "is_icmp", scope: !925, file: !54, line: 244, type: !389)
!933 = !DILocalVariable(name: "off", scope: !925, file: !54, line: 245, type: !90)
!934 = !DILocalVariable(name: "quic_data", scope: !925, file: !54, line: 252, type: !388)
!935 = !DILocalVariable(name: "pkt_type", scope: !925, file: !54, line: 253, type: !388)
!936 = !DILocalVariable(name: "connId", scope: !925, file: !54, line: 254, type: !388)
!937 = !DILocalVariable(name: "long_header", scope: !938, file: !54, line: 271, type: !52)
!938 = distinct !DILexicalBlock(scope: !939, file: !54, line: 260, column: 59)
!939 = distinct !DILexicalBlock(scope: !925, file: !54, line: 260, column: 7)
!940 = !DILocalVariable(name: "connIdVersion", scope: !925, file: !54, line: 288, type: !57)
!941 = !DILocalVariable(name: "cid", scope: !942, file: !54, line: 294, type: !60)
!942 = distinct !DILexicalBlock(scope: !943, file: !54, line: 293, column: 55)
!943 = distinct !DILexicalBlock(scope: !944, file: !54, line: 293, column: 14)
!944 = distinct !DILexicalBlock(scope: !925, file: !54, line: 289, column: 7)
!945 = !DILocation(line: 242, column: 36, scope: !925, inlinedAt: !946)
!946 = distinct !DILocation(line: 521, column: 18, scope: !445, inlinedAt: !533)
!947 = !DILocation(line: 242, column: 48, scope: !925, inlinedAt: !946)
!948 = !DILocation(line: 243, column: 71, scope: !925, inlinedAt: !946)
!949 = !DILocation(line: 244, column: 25, scope: !925, inlinedAt: !946)
!950 = !DILocation(line: 244, column: 31, scope: !925, inlinedAt: !946)
!951 = !DILocation(line: 244, column: 18, scope: !925, inlinedAt: !946)
!952 = !DILocation(line: 65, column: 9, scope: !771, inlinedAt: !953)
!953 = distinct !DILocation(line: 245, column: 15, scope: !925, inlinedAt: !946)
!954 = !DILocation(line: 66, column: 7, scope: !771, inlinedAt: !953)
!955 = !DILocation(line: 245, column: 9, scope: !925, inlinedAt: !946)
!956 = !DILocation(line: 248, column: 13, scope: !957, inlinedAt: !946)
!957 = distinct !DILexicalBlock(scope: !925, file: !54, line: 248, column: 7)
!958 = !DILocation(line: 248, column: 19, scope: !957, inlinedAt: !946)
!959 = !DILocation(line: 248, column: 43, scope: !957, inlinedAt: !946)
!960 = !DILocation(line: 248, column: 59, scope: !957, inlinedAt: !946)
!961 = !DILocation(line: 248, column: 7, scope: !925, inlinedAt: !946)
!962 = !DILocation(line: 252, column: 9, scope: !925, inlinedAt: !946)
!963 = !DILocation(line: 253, column: 9, scope: !925, inlinedAt: !946)
!964 = !DILocation(line: 254, column: 9, scope: !925, inlinedAt: !946)
!965 = !DILocation(line: 260, column: 8, scope: !939, inlinedAt: !946)
!966 = !DILocation(line: 260, column: 38, scope: !939, inlinedAt: !946)
!967 = !DILocation(line: 260, column: 7, scope: !925, inlinedAt: !946)
!968 = !DILocation(line: 262, column: 19, scope: !969, inlinedAt: !946)
!969 = distinct !DILexicalBlock(scope: !938, file: !54, line: 262, column: 9)
!970 = !DILocation(line: 262, column: 53, scope: !969, inlinedAt: !946)
!971 = !DILocation(line: 265, column: 20, scope: !972, inlinedAt: !946)
!972 = distinct !DILexicalBlock(scope: !938, file: !54, line: 265, column: 9)
!973 = !DILocation(line: 265, column: 45, scope: !972, inlinedAt: !946)
!974 = !DILocation(line: 262, column: 9, scope: !938, inlinedAt: !946)
!975 = !DILocation(line: 273, column: 22, scope: !976, inlinedAt: !946)
!976 = distinct !DILexicalBlock(scope: !938, file: !54, line: 273, column: 9)
!977 = !{!978, !544, i64 5}
!978 = !{!"quic_long_header", !544, i64 0, !543, i64 1, !544, i64 5, !544, i64 6}
!979 = !DILocation(line: 273, column: 35, scope: !976, inlinedAt: !946)
!980 = !DILocation(line: 273, column: 9, scope: !938, inlinedAt: !946)
!981 = !DILocation(line: 279, column: 19, scope: !982, inlinedAt: !946)
!982 = distinct !DILexicalBlock(scope: !983, file: !54, line: 279, column: 9)
!983 = distinct !DILexicalBlock(scope: !939, file: !54, line: 277, column: 10)
!984 = !DILocation(line: 279, column: 54, scope: !982, inlinedAt: !946)
!985 = !DILocation(line: 279, column: 9, scope: !983, inlinedAt: !946)
!986 = !DILocation(line: 288, column: 25, scope: !925, inlinedAt: !946)
!987 = !DILocation(line: 288, column: 35, scope: !925, inlinedAt: !946)
!988 = !DILocation(line: 288, column: 8, scope: !925, inlinedAt: !946)
!989 = !DILocation(line: 289, column: 7, scope: !925, inlinedAt: !946)
!990 = !DILocation(line: 292, column: 24, scope: !991, inlinedAt: !946)
!991 = distinct !DILexicalBlock(scope: !944, file: !54, line: 289, column: 48)
!992 = !DILocation(line: 292, column: 32, scope: !991, inlinedAt: !946)
!993 = !DILocation(line: 292, column: 42, scope: !991, inlinedAt: !946)
!994 = !DILocation(line: 292, column: 52, scope: !991, inlinedAt: !946)
!995 = !DILocation(line: 292, column: 39, scope: !991, inlinedAt: !946)
!996 = !DILocation(line: 292, column: 61, scope: !991, inlinedAt: !946)
!997 = !DILocation(line: 292, column: 71, scope: !991, inlinedAt: !946)
!998 = !DILocation(line: 292, column: 5, scope: !991, inlinedAt: !946)
!999 = !DILocation(line: 294, column: 18, scope: !942, inlinedAt: !946)
!1000 = !DILocation(line: 294, column: 28, scope: !942, inlinedAt: !946)
!1001 = !DILocation(line: 294, column: 38, scope: !942, inlinedAt: !946)
!1002 = !DILocation(line: 294, column: 48, scope: !942, inlinedAt: !946)
!1003 = !DILocation(line: 294, column: 35, scope: !942, inlinedAt: !946)
!1004 = !DILocation(line: 294, column: 57, scope: !942, inlinedAt: !946)
!1005 = !DILocation(line: 294, column: 11, scope: !942, inlinedAt: !946)
!1006 = !DILocation(line: 0, scope: !944, inlinedAt: !946)
!1007 = !DILocation(line: 520, column: 9, scope: !445, inlinedAt: !533)
!1008 = !DILocation(line: 522, column: 20, scope: !451, inlinedAt: !533)
!1009 = !DILocation(line: 522, column: 9, scope: !445, inlinedAt: !533)
!1010 = !DILocalVariable(name: "host_id", arg: 1, scope: !1011, file: !3, line: 367, type: !74)
!1011 = distinct !DISubprogram(name: "increment_quic_cid_version_stats", scope: !3, file: !3, line: 367, type: !1012, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !74}
!1014 = !{!1010, !1015, !1016}
!1015 = !DILocalVariable(name: "quic_version_stats_key", scope: !1011, file: !3, line: 368, type: !60)
!1016 = !DILocalVariable(name: "quic_version", scope: !1011, file: !3, line: 369, type: !436)
!1017 = !DILocation(line: 367, column: 38, scope: !1011, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 523, column: 7, scope: !450, inlinedAt: !533)
!1019 = !DILocation(line: 368, column: 3, scope: !1011, inlinedAt: !1018)
!1020 = !DILocation(line: 368, column: 9, scope: !1011, inlinedAt: !1018)
!1021 = !DILocation(line: 370, column: 7, scope: !1011, inlinedAt: !1018)
!1022 = !DILocation(line: 369, column: 20, scope: !1011, inlinedAt: !1018)
!1023 = !DILocation(line: 371, column: 8, scope: !1024, inlinedAt: !1018)
!1024 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 371, column: 7)
!1025 = !DILocation(line: 371, column: 7, scope: !1011, inlinedAt: !1018)
!1026 = !DILocation(line: 374, column: 15, scope: !1027, inlinedAt: !1018)
!1027 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 374, column: 7)
!1028 = !DILocation(line: 374, column: 7, scope: !1011, inlinedAt: !1018)
!1029 = !DILocation(line: 0, scope: !1027, inlinedAt: !1018)
!1030 = !{!913, !913, i64 0}
!1031 = !DILocation(line: 379, column: 1, scope: !1011, inlinedAt: !1018)
!1032 = !DILocation(line: 524, column: 7, scope: !450, inlinedAt: !533)
!1033 = !DILocation(line: 524, column: 13, scope: !450, inlinedAt: !533)
!1034 = !DILocation(line: 525, column: 25, scope: !450, inlinedAt: !533)
!1035 = !DILocation(line: 526, column: 11, scope: !1036, inlinedAt: !533)
!1036 = distinct !DILexicalBlock(scope: !450, file: !3, line: 526, column: 11)
!1037 = !DILocation(line: 526, column: 11, scope: !450, inlinedAt: !533)
!1038 = !DILocation(line: 525, column: 14, scope: !450, inlinedAt: !533)
!1039 = !DILocation(line: 527, column: 15, scope: !1040, inlinedAt: !533)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 526, column: 21)
!1041 = !DILocation(line: 527, column: 13, scope: !1040, inlinedAt: !533)
!1042 = !DILocation(line: 530, column: 17, scope: !1043, inlinedAt: !533)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 530, column: 13)
!1044 = !DILocation(line: 530, column: 13, scope: !1040, inlinedAt: !533)
!1045 = !DILocation(line: 394, column: 3, scope: !1046, inlinedAt: !1052)
!1046 = distinct !DISubprogram(name: "increment_quic_cid_drop_real_0", scope: !3, file: !3, line: 393, type: !1047, scopeLine: 393, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null}
!1049 = !{!1050, !1051}
!1050 = !DILocalVariable(name: "quic_drop_stats_key", scope: !1046, file: !3, line: 394, type: !60)
!1051 = !DILocalVariable(name: "quic_drop", scope: !1046, file: !3, line: 395, type: !436)
!1052 = distinct !DILocation(line: 531, column: 11, scope: !1053, inlinedAt: !533)
!1053 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 530, column: 23)
!1054 = !DILocation(line: 394, column: 9, scope: !1046, inlinedAt: !1052)
!1055 = !DILocation(line: 396, column: 7, scope: !1046, inlinedAt: !1052)
!1056 = !DILocation(line: 397, column: 8, scope: !1057, inlinedAt: !1052)
!1057 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 397, column: 7)
!1058 = !DILocation(line: 397, column: 7, scope: !1046, inlinedAt: !1052)
!1059 = !DILocation(line: 395, column: 20, scope: !1046, inlinedAt: !1052)
!1060 = !DILocation(line: 400, column: 14, scope: !1046, inlinedAt: !1052)
!1061 = !DILocation(line: 400, column: 17, scope: !1046, inlinedAt: !1052)
!1062 = !{!912, !913, i64 8}
!1063 = !DILocation(line: 401, column: 1, scope: !1046, inlinedAt: !1052)
!1064 = !DILocation(line: 533, column: 27, scope: !1040, inlinedAt: !533)
!1065 = !DILocation(line: 532, column: 9, scope: !1053, inlinedAt: !533)
!1066 = !DILocation(line: 533, column: 14, scope: !1040, inlinedAt: !533)
!1067 = !DILocation(line: 533, column: 25, scope: !1040, inlinedAt: !533)
!1068 = !{!598, !543, i64 40}
!1069 = !DILocation(line: 534, column: 15, scope: !1040, inlinedAt: !533)
!1070 = !DILocation(line: 535, column: 14, scope: !1071, inlinedAt: !533)
!1071 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 535, column: 13)
!1072 = !DILocation(line: 535, column: 13, scope: !1040, inlinedAt: !533)
!1073 = !DILocation(line: 383, column: 3, scope: !1074, inlinedAt: !1078)
!1074 = distinct !DISubprogram(name: "increment_quic_cid_drop_no_real", scope: !3, file: !3, line: 382, type: !1047, scopeLine: 382, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1075 = !{!1076, !1077}
!1076 = !DILocalVariable(name: "quic_drop_stats_key", scope: !1074, file: !3, line: 383, type: !60)
!1077 = !DILocalVariable(name: "quic_drop", scope: !1074, file: !3, line: 384, type: !436)
!1078 = distinct !DILocation(line: 536, column: 11, scope: !1079, inlinedAt: !533)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 535, column: 19)
!1080 = !DILocation(line: 383, column: 9, scope: !1074, inlinedAt: !1078)
!1081 = !DILocation(line: 385, column: 7, scope: !1074, inlinedAt: !1078)
!1082 = !DILocation(line: 386, column: 8, scope: !1083, inlinedAt: !1078)
!1083 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 386, column: 7)
!1084 = !DILocation(line: 386, column: 7, scope: !1074, inlinedAt: !1078)
!1085 = !DILocation(line: 384, column: 20, scope: !1074, inlinedAt: !1078)
!1086 = !DILocation(line: 389, column: 14, scope: !1074, inlinedAt: !1078)
!1087 = !DILocation(line: 389, column: 17, scope: !1074, inlinedAt: !1078)
!1088 = !DILocation(line: 390, column: 1, scope: !1074, inlinedAt: !1078)
!1089 = !DILocation(line: 543, column: 21, scope: !1090, inlinedAt: !533)
!1090 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 541, column: 14)
!1091 = !DILocation(line: 543, column: 24, scope: !1090, inlinedAt: !533)
!1092 = !DILocation(line: 545, column: 5, scope: !451, inlinedAt: !533)
!1093 = !DILocation(line: 548, column: 3, scope: !446, inlinedAt: !533)
!1094 = !DILocation(line: 550, column: 7, scope: !418, inlinedAt: !533)
!1095 = !DILocation(line: 546, column: 19, scope: !1096, inlinedAt: !533)
!1096 = distinct !DILexicalBlock(scope: !451, file: !3, line: 545, column: 12)
!1097 = !DILocation(line: 546, column: 22, scope: !1096, inlinedAt: !533)
!1098 = !DILocation(line: 540, column: 21, scope: !1040, inlinedAt: !533)
!1099 = !DILocation(line: 540, column: 24, scope: !1040, inlinedAt: !533)
!1100 = !DILocation(line: 551, column: 20, scope: !1101, inlinedAt: !533)
!1101 = distinct !DILexicalBlock(scope: !455, file: !3, line: 551, column: 9)
!1102 = !DILocation(line: 551, column: 26, scope: !1101, inlinedAt: !533)
!1103 = !DILocation(line: 551, column: 9, scope: !455, inlinedAt: !533)
!1104 = !DILocation(line: 554, column: 7, scope: !1105, inlinedAt: !533)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 551, column: 49)
!1106 = !DILocation(line: 554, column: 27, scope: !1105, inlinedAt: !533)
!1107 = !DILocation(line: 555, column: 5, scope: !1105, inlinedAt: !533)
!1108 = !DILocation(line: 556, column: 5, scope: !455, inlinedAt: !533)
!1109 = !DILocation(line: 556, column: 21, scope: !455, inlinedAt: !533)
!1110 = !DILocation(line: 556, column: 11, scope: !455, inlinedAt: !533)
!1111 = !DILocation(line: 557, column: 21, scope: !455, inlinedAt: !533)
!1112 = !DILocation(line: 557, column: 11, scope: !455, inlinedAt: !533)
!1113 = !DILocation(line: 558, column: 10, scope: !460, inlinedAt: !533)
!1114 = !DILocation(line: 558, column: 9, scope: !455, inlinedAt: !533)
!1115 = !DILocation(line: 560, column: 7, scope: !459, inlinedAt: !533)
!1116 = !DILocation(line: 560, column: 13, scope: !459, inlinedAt: !533)
!1117 = !DILocation(line: 561, column: 36, scope: !459, inlinedAt: !533)
!1118 = !DILocation(line: 562, column: 12, scope: !1119, inlinedAt: !533)
!1119 = distinct !DILexicalBlock(scope: !459, file: !3, line: 562, column: 11)
!1120 = !DILocation(line: 562, column: 11, scope: !459, inlinedAt: !533)
!1121 = !DILocation(line: 561, column: 24, scope: !459, inlinedAt: !533)
!1122 = !DILocation(line: 568, column: 18, scope: !459, inlinedAt: !533)
!1123 = !DILocation(line: 568, column: 21, scope: !459, inlinedAt: !533)
!1124 = !DILocation(line: 569, column: 5, scope: !460, inlinedAt: !533)
!1125 = !DILocation(line: 0, scope: !455, inlinedAt: !533)
!1126 = !DILocation(line: 595, column: 24, scope: !1127, inlinedAt: !533)
!1127 = distinct !DILexicalBlock(scope: !455, file: !3, line: 595, column: 9)
!1128 = !DILocation(line: 595, column: 30, scope: !1127, inlinedAt: !533)
!1129 = !DILocation(line: 595, column: 43, scope: !1127, inlinedAt: !533)
!1130 = !DILocation(line: 596, column: 21, scope: !1127, inlinedAt: !533)
!1131 = !DILocation(line: 596, column: 27, scope: !1127, inlinedAt: !533)
!1132 = !DILocation(line: 595, column: 9, scope: !455, inlinedAt: !533)
!1133 = !DILocalVariable(name: "pckt", arg: 2, scope: !1134, file: !3, line: 145, type: !365)
!1134 = distinct !DISubprogram(name: "connection_table_lookup", scope: !3, file: !3, line: 144, type: !1135, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !1137, !365, !46}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!1138 = !{!1139, !1133, !1140, !1141, !1143, !1144}
!1139 = !DILocalVariable(name: "real", arg: 1, scope: !1134, file: !3, line: 144, type: !1137)
!1140 = !DILocalVariable(name: "lru_map", arg: 3, scope: !1134, file: !3, line: 146, type: !46)
!1141 = !DILocalVariable(name: "dst_lru", scope: !1134, file: !3, line: 148, type: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1143 = !DILocalVariable(name: "cur_time", scope: !1134, file: !3, line: 149, type: !90)
!1144 = !DILocalVariable(name: "key", scope: !1134, file: !3, line: 150, type: !60)
!1145 = !DILocation(line: 145, column: 71, scope: !1134, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 597, column: 7, scope: !1147, inlinedAt: !533)
!1147 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 596, column: 44)
!1148 = !DILocation(line: 146, column: 50, scope: !1134, inlinedAt: !1146)
!1149 = !DILocation(line: 150, column: 3, scope: !1134, inlinedAt: !1146)
!1150 = !DILocation(line: 151, column: 13, scope: !1134, inlinedAt: !1146)
!1151 = !DILocation(line: 148, column: 24, scope: !1134, inlinedAt: !1146)
!1152 = !DILocation(line: 152, column: 8, scope: !1153, inlinedAt: !1146)
!1153 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 152, column: 7)
!1154 = !DILocation(line: 152, column: 7, scope: !1134, inlinedAt: !1146)
!1155 = !DILocation(line: 155, column: 18, scope: !1156, inlinedAt: !1146)
!1156 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 155, column: 7)
!1157 = !DILocation(line: 155, column: 24, scope: !1156, inlinedAt: !1146)
!1158 = !DILocation(line: 155, column: 7, scope: !1134, inlinedAt: !1146)
!1159 = !DILocation(line: 156, column: 16, scope: !1160, inlinedAt: !1146)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 155, column: 40)
!1161 = !DILocation(line: 149, column: 9, scope: !1134, inlinedAt: !1146)
!1162 = !DILocation(line: 157, column: 29, scope: !1163, inlinedAt: !1146)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 157, column: 9)
!1164 = !{!1165, !913, i64 8}
!1165 = !{!"real_pos_lru", !543, i64 0, !913, i64 8}
!1166 = !DILocation(line: 157, column: 18, scope: !1163, inlinedAt: !1146)
!1167 = !DILocation(line: 157, column: 35, scope: !1163, inlinedAt: !1146)
!1168 = !DILocation(line: 157, column: 9, scope: !1160, inlinedAt: !1146)
!1169 = !DILocation(line: 160, column: 20, scope: !1160, inlinedAt: !1146)
!1170 = !DILocation(line: 161, column: 3, scope: !1160, inlinedAt: !1146)
!1171 = !DILocation(line: 166, column: 1, scope: !1134, inlinedAt: !1146)
!1172 = !DILocation(line: 601, column: 9, scope: !455, inlinedAt: !533)
!1173 = !DILocation(line: 162, column: 18, scope: !1134, inlinedAt: !1146)
!1174 = !{!1165, !543, i64 0}
!1175 = !DILocation(line: 150, column: 9, scope: !1134, inlinedAt: !1146)
!1176 = !DILocation(line: 162, column: 7, scope: !1134, inlinedAt: !1146)
!1177 = !DILocation(line: 163, column: 9, scope: !1134, inlinedAt: !1146)
!1178 = !DILocation(line: 163, column: 20, scope: !1134, inlinedAt: !1146)
!1179 = !DILocation(line: 164, column: 11, scope: !1134, inlinedAt: !1146)
!1180 = !DILocation(line: 601, column: 10, scope: !466, inlinedAt: !533)
!1181 = !DILocation(line: 602, column: 21, scope: !464, inlinedAt: !533)
!1182 = !DILocation(line: 602, column: 27, scope: !464, inlinedAt: !533)
!1183 = !DILocation(line: 602, column: 11, scope: !465, inlinedAt: !533)
!1184 = !DILocation(line: 603, column: 9, scope: !463, inlinedAt: !533)
!1185 = !DILocation(line: 603, column: 15, scope: !463, inlinedAt: !533)
!1186 = !DILocation(line: 604, column: 38, scope: !463, inlinedAt: !533)
!1187 = !DILocation(line: 604, column: 26, scope: !463, inlinedAt: !533)
!1188 = !DILocation(line: 606, column: 14, scope: !1189, inlinedAt: !533)
!1189 = distinct !DILexicalBlock(scope: !463, file: !3, line: 606, column: 13)
!1190 = !DILocation(line: 606, column: 13, scope: !463, inlinedAt: !533)
!1191 = !DILocation(line: 609, column: 18, scope: !1192, inlinedAt: !533)
!1192 = distinct !DILexicalBlock(scope: !463, file: !3, line: 609, column: 13)
!1193 = !DILocation(line: 609, column: 24, scope: !1192, inlinedAt: !533)
!1194 = !DILocation(line: 609, column: 13, scope: !463, inlinedAt: !533)
!1195 = !DILocation(line: 0, scope: !1192, inlinedAt: !533)
!1196 = !DILocation(line: 619, column: 7, scope: !464, inlinedAt: !533)
!1197 = !DILocalVariable(name: "pckt", arg: 2, scope: !1198, file: !3, line: 64, type: !365)
!1198 = distinct !DISubprogram(name: "get_packet_dst", scope: !3, file: !3, line: 63, type: !1199, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!389, !1137, !365, !434, !389, !46}
!1201 = !{!1202, !1197, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213}
!1202 = !DILocalVariable(name: "real", arg: 1, scope: !1198, file: !3, line: 63, type: !1137)
!1203 = !DILocalVariable(name: "vip_info", arg: 3, scope: !1198, file: !3, line: 65, type: !434)
!1204 = !DILocalVariable(name: "is_ipv6", arg: 4, scope: !1198, file: !3, line: 66, type: !389)
!1205 = !DILocalVariable(name: "lru_map", arg: 5, scope: !1198, file: !3, line: 67, type: !46)
!1206 = !DILocalVariable(name: "new_dst_lru", scope: !1198, file: !3, line: 70, type: !165)
!1207 = !DILocalVariable(name: "under_flood", scope: !1198, file: !3, line: 71, type: !389)
!1208 = !DILocalVariable(name: "src_found", scope: !1198, file: !3, line: 72, type: !389)
!1209 = !DILocalVariable(name: "real_pos", scope: !1198, file: !3, line: 73, type: !453)
!1210 = !DILocalVariable(name: "cur_time", scope: !1198, file: !3, line: 74, type: !90)
!1211 = !DILocalVariable(name: "hash", scope: !1198, file: !3, line: 75, type: !60)
!1212 = !DILocalVariable(name: "key", scope: !1198, file: !3, line: 76, type: !60)
!1213 = !DILocalVariable(name: "hash_16bytes", scope: !1214, file: !3, line: 110, type: !389)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 109, column: 19)
!1215 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 109, column: 7)
!1216 = !DILocation(line: 64, column: 62, scope: !1198, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 620, column: 11, scope: !1218, inlinedAt: !533)
!1218 = distinct !DILexicalBlock(scope: !465, file: !3, line: 620, column: 10)
!1219 = !DILocation(line: 65, column: 52, scope: !1198, inlinedAt: !1217)
!1220 = !DILocation(line: 67, column: 41, scope: !1198, inlinedAt: !1217)
!1221 = !DILocation(line: 70, column: 3, scope: !1198, inlinedAt: !1217)
!1222 = !DILocation(line: 70, column: 23, scope: !1198, inlinedAt: !1217)
!1223 = !DILocation(line: 71, column: 8, scope: !1198, inlinedAt: !1217)
!1224 = !DILocation(line: 72, column: 8, scope: !1198, inlinedAt: !1217)
!1225 = !DILocation(line: 74, column: 9, scope: !1198, inlinedAt: !1217)
!1226 = !DILocation(line: 76, column: 3, scope: !1198, inlinedAt: !1217)
!1227 = !DILocation(line: 37, column: 3, scope: !1228, inlinedAt: !1235)
!1228 = distinct !DISubprogram(name: "is_under_flood", scope: !3, file: !3, line: 36, type: !1229, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!389, !653}
!1231 = !{!1232, !1233, !1234}
!1232 = !DILocalVariable(name: "cur_time", arg: 1, scope: !1228, file: !3, line: 36, type: !653)
!1233 = !DILocalVariable(name: "conn_rate_key", scope: !1228, file: !3, line: 37, type: !60)
!1234 = !DILocalVariable(name: "conn_rate_stats", scope: !1228, file: !3, line: 38, type: !436)
!1235 = distinct !DILocation(line: 78, column: 17, scope: !1198, inlinedAt: !1217)
!1236 = !DILocation(line: 37, column: 9, scope: !1228, inlinedAt: !1235)
!1237 = !DILocation(line: 38, column: 38, scope: !1228, inlinedAt: !1235)
!1238 = !DILocation(line: 40, column: 8, scope: !1239, inlinedAt: !1235)
!1239 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 40, column: 7)
!1240 = !DILocation(line: 40, column: 7, scope: !1228, inlinedAt: !1235)
!1241 = !DILocation(line: 38, column: 20, scope: !1228, inlinedAt: !1235)
!1242 = !DILocation(line: 43, column: 15, scope: !1228, inlinedAt: !1235)
!1243 = !DILocation(line: 47, column: 37, scope: !1244, inlinedAt: !1235)
!1244 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 47, column: 7)
!1245 = !DILocation(line: 47, column: 18, scope: !1244, inlinedAt: !1235)
!1246 = !DILocation(line: 47, column: 41, scope: !1244, inlinedAt: !1235)
!1247 = !DILocation(line: 0, scope: !1244, inlinedAt: !1235)
!1248 = !DILocation(line: 47, column: 7, scope: !1228, inlinedAt: !1235)
!1249 = !DILocation(line: 49, column: 25, scope: !1250, inlinedAt: !1235)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 47, column: 52)
!1251 = !DILocation(line: 50, column: 25, scope: !1250, inlinedAt: !1235)
!1252 = !DILocation(line: 51, column: 3, scope: !1250, inlinedAt: !1235)
!1253 = !DILocation(line: 52, column: 25, scope: !1254, inlinedAt: !1235)
!1254 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 51, column: 10)
!1255 = !DILocation(line: 53, column: 29, scope: !1256, inlinedAt: !1235)
!1256 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 53, column: 9)
!1257 = !DILocation(line: 53, column: 9, scope: !1254, inlinedAt: !1235)
!1258 = !DILocation(line: 59, column: 3, scope: !1228, inlinedAt: !1235)
!1259 = !DILocation(line: 0, scope: !1198, inlinedAt: !1217)
!1260 = !DILocation(line: 0, scope: !1228, inlinedAt: !1235)
!1261 = !DILocation(line: 60, column: 1, scope: !1228, inlinedAt: !1235)
!1262 = !DILocation(line: 112, column: 19, scope: !1263, inlinedAt: !1217)
!1263 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 112, column: 9)
!1264 = !DILocation(line: 112, column: 25, scope: !1263, inlinedAt: !1217)
!1265 = !DILocation(line: 112, column: 9, scope: !1214, inlinedAt: !1217)
!1266 = !DILocation(line: 0, scope: !1267, inlinedAt: !1274)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 27, column: 7)
!1268 = distinct !DISubprogram(name: "get_packet_hash", scope: !3, file: !3, line: 25, type: !1269, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!60, !365, !389}
!1271 = !{!1272, !1273}
!1272 = !DILocalVariable(name: "pckt", arg: 1, scope: !1268, file: !3, line: 25, type: !365)
!1273 = !DILocalVariable(name: "hash_16bytes", arg: 2, scope: !1268, file: !3, line: 26, type: !389)
!1274 = distinct !DILocation(line: 119, column: 12, scope: !1214, inlinedAt: !1217)
!1275 = !DILocation(line: 116, column: 30, scope: !1276, inlinedAt: !1217)
!1276 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 112, column: 46)
!1277 = !DILocation(line: 116, column: 7, scope: !1276, inlinedAt: !1217)
!1278 = !DILocation(line: 116, column: 28, scope: !1276, inlinedAt: !1217)
!1279 = !DILocation(line: 117, column: 7, scope: !1276, inlinedAt: !1217)
!1280 = !DILocation(line: 118, column: 5, scope: !1276, inlinedAt: !1217)
!1281 = !DILocation(line: 25, column: 64, scope: !1268, inlinedAt: !1274)
!1282 = !DILocation(line: 31, column: 52, scope: !1283, inlinedAt: !1274)
!1283 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 30, column: 10)
!1284 = !DILocalVariable(name: "b", arg: 2, scope: !1285, file: !73, line: 82, type: !72)
!1285 = distinct !DISubprogram(name: "jhash_2words", scope: !73, file: !73, line: 82, type: !1286, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!72, !72, !72, !72}
!1288 = !{!1289, !1284, !1290}
!1289 = !DILocalVariable(name: "a", arg: 1, scope: !1285, file: !73, line: 82, type: !72)
!1290 = !DILocalVariable(name: "initval", arg: 3, scope: !1285, file: !73, line: 82, type: !72)
!1291 = !DILocation(line: 82, column: 43, scope: !1285, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 31, column: 12, scope: !1283, inlinedAt: !1274)
!1293 = !DILocation(line: 82, column: 50, scope: !1285, inlinedAt: !1292)
!1294 = !DILocalVariable(name: "b", arg: 2, scope: !1295, file: !73, line: 73, type: !72)
!1295 = distinct !DISubprogram(name: "__jhash_nwords", scope: !73, file: !73, line: 73, type: !1296, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!72, !72, !72, !72, !72}
!1298 = !{!1299, !1294, !1300, !1301}
!1299 = !DILocalVariable(name: "a", arg: 1, scope: !1295, file: !73, line: 73, type: !72)
!1300 = !DILocalVariable(name: "c", arg: 3, scope: !1295, file: !73, line: 73, type: !72)
!1301 = !DILocalVariable(name: "initval", arg: 4, scope: !1295, file: !73, line: 73, type: !72)
!1302 = !DILocation(line: 73, column: 45, scope: !1295, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 84, column: 10, scope: !1285, inlinedAt: !1292)
!1304 = !DILocation(line: 73, column: 52, scope: !1295, inlinedAt: !1303)
!1305 = !DILocation(line: 73, column: 59, scope: !1295, inlinedAt: !1303)
!1306 = !DILocation(line: 73, column: 38, scope: !1295, inlinedAt: !1303)
!1307 = !DILocation(line: 76, column: 5, scope: !1295, inlinedAt: !1303)
!1308 = !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1309 = distinct !DILexicalBlock(scope: !1295, file: !73, line: 78, column: 3)
!1310 = !DILocalVariable(name: "word", arg: 1, scope: !1311, file: !73, line: 7, type: !60)
!1311 = distinct !DISubprogram(name: "rol32", scope: !73, file: !73, line: 7, type: !1312, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!60, !60, !7}
!1314 = !{!1310, !1315}
!1315 = !DILocalVariable(name: "shift", arg: 2, scope: !1311, file: !73, line: 7, type: !7)
!1316 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1318 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !1317)
!1319 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !1317)
!1320 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !1317)
!1321 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !1317)
!1322 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1324 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !1323)
!1325 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !1323)
!1326 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !1323)
!1327 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !1323)
!1328 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1330 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !1329)
!1331 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !1329)
!1332 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !1329)
!1333 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !1329)
!1334 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1336 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !1335)
!1337 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !1335)
!1338 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !1335)
!1339 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !1335)
!1340 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1342 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !1341)
!1343 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !1341)
!1344 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !1341)
!1345 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !1341)
!1346 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1348 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !1347)
!1349 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !1347)
!1350 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !1347)
!1351 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !1347)
!1352 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !1303)
!1354 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !1353)
!1355 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !1353)
!1356 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !1353)
!1357 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !1353)
!1358 = !DILocation(line: 119, column: 48, scope: !1214, inlinedAt: !1217)
!1359 = !DILocation(line: 75, column: 9, scope: !1198, inlinedAt: !1217)
!1360 = !DILocation(line: 120, column: 34, scope: !1214, inlinedAt: !1217)
!1361 = !{!891, !543, i64 4}
!1362 = !DILocation(line: 120, column: 21, scope: !1214, inlinedAt: !1217)
!1363 = !DILocation(line: 120, column: 43, scope: !1214, inlinedAt: !1217)
!1364 = !DILocation(line: 76, column: 9, scope: !1198, inlinedAt: !1217)
!1365 = !DILocation(line: 120, column: 9, scope: !1214, inlinedAt: !1217)
!1366 = !DILocation(line: 122, column: 16, scope: !1214, inlinedAt: !1217)
!1367 = !DILocation(line: 123, column: 9, scope: !1368, inlinedAt: !1217)
!1368 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 123, column: 8)
!1369 = !DILocation(line: 123, column: 8, scope: !1214, inlinedAt: !1217)
!1370 = !DILocation(line: 73, column: 10, scope: !1198, inlinedAt: !1217)
!1371 = !DILocation(line: 126, column: 11, scope: !1214, inlinedAt: !1217)
!1372 = !DILocation(line: 126, column: 9, scope: !1214, inlinedAt: !1217)
!1373 = !DILocation(line: 128, column: 9, scope: !1198, inlinedAt: !1217)
!1374 = !DILocation(line: 128, column: 20, scope: !1198, inlinedAt: !1217)
!1375 = !DILocation(line: 129, column: 11, scope: !1198, inlinedAt: !1217)
!1376 = !DILocation(line: 130, column: 8, scope: !1377, inlinedAt: !1217)
!1377 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 130, column: 7)
!1378 = !DILocation(line: 130, column: 7, scope: !1198, inlinedAt: !1217)
!1379 = !DILocation(line: 133, column: 19, scope: !1380, inlinedAt: !1217)
!1380 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 133, column: 7)
!1381 = !DILocation(line: 133, column: 25, scope: !1380, inlinedAt: !1217)
!1382 = !DILocation(line: 133, column: 41, scope: !1380, inlinedAt: !1217)
!1383 = !DILocation(line: 134, column: 20, scope: !1384, inlinedAt: !1217)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 134, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 133, column: 58)
!1386 = !DILocation(line: 134, column: 26, scope: !1384, inlinedAt: !1217)
!1387 = !DILocation(line: 134, column: 9, scope: !1385, inlinedAt: !1217)
!1388 = !DILocation(line: 135, column: 19, scope: !1389, inlinedAt: !1217)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 134, column: 42)
!1390 = !DILocation(line: 135, column: 25, scope: !1389, inlinedAt: !1217)
!1391 = !DILocation(line: 136, column: 5, scope: !1389, inlinedAt: !1217)
!1392 = !DILocation(line: 137, column: 23, scope: !1385, inlinedAt: !1217)
!1393 = !DILocation(line: 137, column: 17, scope: !1385, inlinedAt: !1217)
!1394 = !DILocation(line: 137, column: 21, scope: !1385, inlinedAt: !1217)
!1395 = !DILocation(line: 138, column: 5, scope: !1385, inlinedAt: !1217)
!1396 = !DILocation(line: 139, column: 3, scope: !1385, inlinedAt: !1217)
!1397 = !DILocation(line: 141, column: 1, scope: !1198, inlinedAt: !1217)
!1398 = !DILocation(line: 620, column: 10, scope: !465, inlinedAt: !533)
!1399 = !DILocation(line: 624, column: 19, scope: !465, inlinedAt: !533)
!1400 = !DILocation(line: 624, column: 22, scope: !465, inlinedAt: !533)
!1401 = !DILocation(line: 625, column: 5, scope: !465, inlinedAt: !533)
!1402 = !DILocation(line: 626, column: 3, scope: !456, inlinedAt: !533)
!1403 = !DILocation(line: 628, column: 10, scope: !418, inlinedAt: !533)
!1404 = !DILocation(line: 407, column: 21, scope: !418, inlinedAt: !533)
!1405 = !DILocation(line: 630, column: 8, scope: !1406, inlinedAt: !533)
!1406 = distinct !DILexicalBlock(scope: !418, file: !3, line: 630, column: 7)
!1407 = !DILocation(line: 630, column: 7, scope: !418, inlinedAt: !533)
!1408 = !DILocation(line: 634, column: 23, scope: !418, inlinedAt: !533)
!1409 = !DILocation(line: 417, column: 9, scope: !418, inlinedAt: !533)
!1410 = !DILocation(line: 634, column: 11, scope: !418, inlinedAt: !533)
!1411 = !DILocation(line: 635, column: 16, scope: !418, inlinedAt: !533)
!1412 = !DILocation(line: 636, column: 8, scope: !1413, inlinedAt: !533)
!1413 = distinct !DILexicalBlock(scope: !418, file: !3, line: 636, column: 7)
!1414 = !DILocation(line: 636, column: 7, scope: !418, inlinedAt: !533)
!1415 = !DILocation(line: 419, column: 9, scope: !418, inlinedAt: !533)
!1416 = !DILocation(line: 640, column: 21, scope: !418, inlinedAt: !533)
!1417 = !DILocation(line: 639, column: 18, scope: !418, inlinedAt: !533)
!1418 = !DILocation(line: 643, column: 56, scope: !418, inlinedAt: !533)
!1419 = !DILocation(line: 643, column: 50, scope: !418, inlinedAt: !533)
!1420 = !DILocation(line: 643, column: 16, scope: !418, inlinedAt: !533)
!1421 = !DILocation(line: 644, column: 8, scope: !1422, inlinedAt: !533)
!1422 = distinct !DILexicalBlock(scope: !418, file: !3, line: 644, column: 7)
!1423 = !DILocation(line: 644, column: 7, scope: !418, inlinedAt: !533)
!1424 = !DILocation(line: 647, column: 18, scope: !418, inlinedAt: !533)
!1425 = !DILocation(line: 654, column: 12, scope: !1426, inlinedAt: !533)
!1426 = distinct !DILexicalBlock(scope: !418, file: !3, line: 654, column: 7)
!1427 = !{!1428, !544, i64 16}
!1428 = !{!"real_definition", !544, i64 0, !544, i64 16}
!1429 = !DILocation(line: 654, column: 18, scope: !1426, inlinedAt: !533)
!1430 = !DILocation(line: 654, column: 7, scope: !418, inlinedAt: !533)
!1431 = !DILocalVariable(name: "xdp", arg: 1, scope: !1432, file: !1433, line: 42, type: !254)
!1432 = distinct !DISubprogram(name: "encap_v6", scope: !1433, file: !1433, line: 41, type: !1434, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1436)
!1433 = !DIFile(filename: "bpf/pckt_encap.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!389, !254, !428, !389, !365, !430, !60}
!1436 = !{!1431, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1451}
!1437 = !DILocalVariable(name: "cval", arg: 2, scope: !1432, file: !1433, line: 43, type: !428)
!1438 = !DILocalVariable(name: "is_ipv6", arg: 3, scope: !1432, file: !1433, line: 44, type: !389)
!1439 = !DILocalVariable(name: "pckt", arg: 4, scope: !1432, file: !1433, line: 45, type: !365)
!1440 = !DILocalVariable(name: "dst", arg: 5, scope: !1432, file: !1433, line: 46, type: !430)
!1441 = !DILocalVariable(name: "pkt_bytes", arg: 6, scope: !1432, file: !1433, line: 47, type: !60)
!1442 = !DILocalVariable(name: "data", scope: !1432, file: !1433, line: 48, type: !46)
!1443 = !DILocalVariable(name: "data_end", scope: !1432, file: !1433, line: 49, type: !46)
!1444 = !DILocalVariable(name: "ip6h", scope: !1432, file: !1433, line: 50, type: !285)
!1445 = !DILocalVariable(name: "new_eth", scope: !1432, file: !1433, line: 51, type: !267)
!1446 = !DILocalVariable(name: "old_eth", scope: !1432, file: !1433, line: 52, type: !267)
!1447 = !DILocalVariable(name: "payload_len", scope: !1432, file: !1433, line: 53, type: !48)
!1448 = !DILocalVariable(name: "ip_suffix", scope: !1432, file: !1433, line: 54, type: !60)
!1449 = !DILocalVariable(name: "saddr", scope: !1432, file: !1433, line: 55, type: !1450)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !125)
!1451 = !DILocalVariable(name: "proto", scope: !1432, file: !1433, line: 56, type: !57)
!1452 = !DILocation(line: 42, column: 20, scope: !1432, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 655, column: 9, scope: !1454, inlinedAt: !533)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 655, column: 8)
!1455 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 654, column: 28)
!1456 = !DILocation(line: 43, column: 23, scope: !1432, inlinedAt: !1453)
!1457 = !DILocation(line: 45, column: 32, scope: !1432, inlinedAt: !1453)
!1458 = !DILocation(line: 46, column: 29, scope: !1432, inlinedAt: !1453)
!1459 = !DILocation(line: 47, column: 11, scope: !1432, inlinedAt: !1453)
!1460 = !DILocation(line: 58, column: 27, scope: !1461, inlinedAt: !1453)
!1461 = distinct !DILexicalBlock(scope: !1432, file: !1433, line: 58, column: 7)
!1462 = !DILocation(line: 58, column: 7, scope: !1461, inlinedAt: !1453)
!1463 = !DILocation(line: 58, column: 7, scope: !1432, inlinedAt: !1453)
!1464 = !DILocation(line: 61, column: 28, scope: !1432, inlinedAt: !1453)
!1465 = !DILocation(line: 61, column: 17, scope: !1432, inlinedAt: !1453)
!1466 = !DILocation(line: 61, column: 10, scope: !1432, inlinedAt: !1453)
!1467 = !DILocation(line: 48, column: 9, scope: !1432, inlinedAt: !1453)
!1468 = !DILocation(line: 62, column: 32, scope: !1432, inlinedAt: !1453)
!1469 = !DILocation(line: 62, column: 21, scope: !1432, inlinedAt: !1453)
!1470 = !DILocation(line: 49, column: 9, scope: !1432, inlinedAt: !1453)
!1471 = !DILocation(line: 63, column: 13, scope: !1432, inlinedAt: !1453)
!1472 = !DILocation(line: 51, column: 19, scope: !1432, inlinedAt: !1453)
!1473 = !DILocation(line: 64, column: 15, scope: !1432, inlinedAt: !1453)
!1474 = !DILocation(line: 50, column: 19, scope: !1432, inlinedAt: !1453)
!1475 = !DILocation(line: 65, column: 18, scope: !1432, inlinedAt: !1453)
!1476 = !DILocation(line: 52, column: 19, scope: !1432, inlinedAt: !1453)
!1477 = !DILocation(line: 66, column: 15, scope: !1478, inlinedAt: !1453)
!1478 = distinct !DILexicalBlock(scope: !1432, file: !1433, line: 66, column: 7)
!1479 = !DILocation(line: 66, column: 21, scope: !1478, inlinedAt: !1453)
!1480 = !DILocation(line: 66, column: 19, scope: !1478, inlinedAt: !1453)
!1481 = !DILocation(line: 66, column: 30, scope: !1478, inlinedAt: !1453)
!1482 = !DILocation(line: 66, column: 41, scope: !1478, inlinedAt: !1453)
!1483 = !DILocation(line: 66, column: 45, scope: !1478, inlinedAt: !1453)
!1484 = !DILocation(line: 66, column: 56, scope: !1478, inlinedAt: !1453)
!1485 = !DILocation(line: 66, column: 64, scope: !1478, inlinedAt: !1453)
!1486 = !DILocation(line: 66, column: 70, scope: !1478, inlinedAt: !1453)
!1487 = !DILocation(line: 66, column: 68, scope: !1478, inlinedAt: !1453)
!1488 = !DILocation(line: 66, column: 7, scope: !1432, inlinedAt: !1453)
!1489 = !DILocation(line: 69, column: 3, scope: !1432, inlinedAt: !1453)
!1490 = !DILocation(line: 70, column: 3, scope: !1432, inlinedAt: !1453)
!1491 = !DILocation(line: 71, column: 12, scope: !1432, inlinedAt: !1453)
!1492 = !DILocation(line: 71, column: 22, scope: !1432, inlinedAt: !1453)
!1493 = !DILocation(line: 56, column: 8, scope: !1432, inlinedAt: !1453)
!1494 = !DILocation(line: 79, column: 28, scope: !1495, inlinedAt: !1453)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !1433, line: 77, column: 10)
!1496 = distinct !DILexicalBlock(scope: !1432, file: !1433, line: 73, column: 7)
!1497 = !DILocation(line: 79, column: 34, scope: !1495, inlinedAt: !1453)
!1498 = !DILocation(line: 79, column: 32, scope: !1495, inlinedAt: !1453)
!1499 = !DILocation(line: 54, column: 9, scope: !1432, inlinedAt: !1453)
!1500 = !DILocation(line: 53, column: 9, scope: !1432, inlinedAt: !1453)
!1501 = !DILocation(line: 55, column: 9, scope: !1432, inlinedAt: !1453)
!1502 = !DILocation(line: 88, column: 29, scope: !1432, inlinedAt: !1453)
!1503 = !DILocalVariable(name: "ip6h", arg: 1, scope: !1504, file: !1505, line: 58, type: !285)
!1504 = distinct !DISubprogram(name: "create_v6_hdr", scope: !1505, file: !1505, line: 57, type: !1506, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1508)
!1505 = !DIFile(filename: "bpf/encap_helpers.h", directory: "/home/smiano/dev/katran/_build/deps/bpfprog")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !285, !57, !453, !453, !48, !57}
!1508 = !{!1503, !1509, !1510, !1511, !1512, !1513}
!1509 = !DILocalVariable(name: "tc", arg: 2, scope: !1504, file: !1505, line: 59, type: !57)
!1510 = !DILocalVariable(name: "saddr", arg: 3, scope: !1504, file: !1505, line: 60, type: !453)
!1511 = !DILocalVariable(name: "daddr", arg: 4, scope: !1504, file: !1505, line: 61, type: !453)
!1512 = !DILocalVariable(name: "payload_len", arg: 5, scope: !1504, file: !1505, line: 62, type: !48)
!1513 = !DILocalVariable(name: "proto", arg: 6, scope: !1504, file: !1505, line: 63, type: !57)
!1514 = !DILocation(line: 58, column: 21, scope: !1504, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 88, column: 3, scope: !1432, inlinedAt: !1453)
!1516 = !DILocation(line: 59, column: 10, scope: !1504, inlinedAt: !1515)
!1517 = !DILocation(line: 60, column: 12, scope: !1504, inlinedAt: !1515)
!1518 = !DILocation(line: 61, column: 12, scope: !1504, inlinedAt: !1515)
!1519 = !DILocation(line: 62, column: 11, scope: !1504, inlinedAt: !1515)
!1520 = !DILocation(line: 63, column: 10, scope: !1504, inlinedAt: !1515)
!1521 = !DILocation(line: 65, column: 3, scope: !1504, inlinedAt: !1515)
!1522 = !DILocation(line: 67, column: 32, scope: !1504, inlinedAt: !1515)
!1523 = !DILocation(line: 67, column: 18, scope: !1504, inlinedAt: !1515)
!1524 = !DILocation(line: 68, column: 35, scope: !1504, inlinedAt: !1515)
!1525 = !DILocation(line: 68, column: 21, scope: !1504, inlinedAt: !1515)
!1526 = !DILocation(line: 72, column: 9, scope: !1504, inlinedAt: !1515)
!1527 = !DILocation(line: 72, column: 17, scope: !1504, inlinedAt: !1515)
!1528 = !{!1529, !544, i64 6}
!1529 = !{!"ipv6hdr", !544, i64 0, !544, i64 0, !544, i64 1, !564, i64 4, !544, i64 6, !544, i64 7, !1530, i64 8, !1530, i64 24}
!1530 = !{!"in6_addr", !544, i64 0}
!1531 = !DILocation(line: 73, column: 9, scope: !1504, inlinedAt: !1515)
!1532 = !DILocation(line: 73, column: 21, scope: !1504, inlinedAt: !1515)
!1533 = !{!1529, !564, i64 4}
!1534 = !DILocation(line: 74, column: 9, scope: !1504, inlinedAt: !1515)
!1535 = !DILocation(line: 74, column: 19, scope: !1504, inlinedAt: !1515)
!1536 = !{!1529, !544, i64 7}
!1537 = !DILocation(line: 75, column: 3, scope: !1504, inlinedAt: !1515)
!1538 = !DILocation(line: 76, column: 3, scope: !1504, inlinedAt: !1515)
!1539 = !DILocation(line: 655, column: 8, scope: !1455, inlinedAt: !533)
!1540 = !DILocalVariable(name: "xdp", arg: 1, scope: !1541, file: !1433, line: 94, type: !254)
!1541 = distinct !DISubprogram(name: "encap_v4", scope: !1433, file: !1433, line: 93, type: !1542, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!389, !254, !428, !365, !430, !60}
!1544 = !{!1540, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1545 = !DILocalVariable(name: "cval", arg: 2, scope: !1541, file: !1433, line: 95, type: !428)
!1546 = !DILocalVariable(name: "pckt", arg: 3, scope: !1541, file: !1433, line: 96, type: !365)
!1547 = !DILocalVariable(name: "dst", arg: 4, scope: !1541, file: !1433, line: 97, type: !430)
!1548 = !DILocalVariable(name: "pkt_bytes", arg: 5, scope: !1541, file: !1433, line: 98, type: !60)
!1549 = !DILocalVariable(name: "data", scope: !1541, file: !1433, line: 99, type: !46)
!1550 = !DILocalVariable(name: "data_end", scope: !1541, file: !1433, line: 100, type: !46)
!1551 = !DILocalVariable(name: "iph", scope: !1541, file: !1433, line: 101, type: !401)
!1552 = !DILocalVariable(name: "new_eth", scope: !1541, file: !1433, line: 102, type: !267)
!1553 = !DILocalVariable(name: "old_eth", scope: !1541, file: !1433, line: 103, type: !267)
!1554 = !DILocalVariable(name: "ip_suffix", scope: !1541, file: !1433, line: 104, type: !60)
!1555 = !DILocalVariable(name: "csum", scope: !1541, file: !1433, line: 107, type: !90)
!1556 = !DILocation(line: 94, column: 20, scope: !1541, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 659, column: 9, scope: !1558, inlinedAt: !533)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 659, column: 8)
!1559 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 658, column: 10)
!1560 = !DILocation(line: 95, column: 23, scope: !1541, inlinedAt: !1557)
!1561 = !DILocation(line: 96, column: 32, scope: !1541, inlinedAt: !1557)
!1562 = !DILocation(line: 97, column: 29, scope: !1541, inlinedAt: !1557)
!1563 = !DILocation(line: 98, column: 11, scope: !1541, inlinedAt: !1557)
!1564 = !DILocation(line: 104, column: 21, scope: !1541, inlinedAt: !1557)
!1565 = !DILocation(line: 104, column: 9, scope: !1541, inlinedAt: !1557)
!1566 = !DILocation(line: 105, column: 13, scope: !1541, inlinedAt: !1557)
!1567 = !DILocation(line: 106, column: 27, scope: !1541, inlinedAt: !1557)
!1568 = !DILocation(line: 107, column: 9, scope: !1541, inlinedAt: !1557)
!1569 = !DILocation(line: 109, column: 27, scope: !1570, inlinedAt: !1557)
!1570 = distinct !DILexicalBlock(scope: !1541, file: !1433, line: 109, column: 7)
!1571 = !DILocation(line: 109, column: 7, scope: !1570, inlinedAt: !1557)
!1572 = !DILocation(line: 109, column: 7, scope: !1541, inlinedAt: !1557)
!1573 = !DILocation(line: 112, column: 28, scope: !1541, inlinedAt: !1557)
!1574 = !DILocation(line: 112, column: 17, scope: !1541, inlinedAt: !1557)
!1575 = !DILocation(line: 112, column: 10, scope: !1541, inlinedAt: !1557)
!1576 = !DILocation(line: 99, column: 9, scope: !1541, inlinedAt: !1557)
!1577 = !DILocation(line: 113, column: 32, scope: !1541, inlinedAt: !1557)
!1578 = !DILocation(line: 113, column: 21, scope: !1541, inlinedAt: !1557)
!1579 = !DILocation(line: 100, column: 9, scope: !1541, inlinedAt: !1557)
!1580 = !DILocation(line: 114, column: 13, scope: !1541, inlinedAt: !1557)
!1581 = !DILocation(line: 102, column: 19, scope: !1541, inlinedAt: !1557)
!1582 = !DILocation(line: 115, column: 14, scope: !1541, inlinedAt: !1557)
!1583 = !DILocation(line: 101, column: 17, scope: !1541, inlinedAt: !1557)
!1584 = !DILocation(line: 116, column: 18, scope: !1541, inlinedAt: !1557)
!1585 = !DILocation(line: 103, column: 19, scope: !1541, inlinedAt: !1557)
!1586 = !DILocation(line: 117, column: 15, scope: !1587, inlinedAt: !1557)
!1587 = distinct !DILexicalBlock(scope: !1541, file: !1433, line: 117, column: 7)
!1588 = !DILocation(line: 117, column: 21, scope: !1587, inlinedAt: !1557)
!1589 = !DILocation(line: 117, column: 19, scope: !1587, inlinedAt: !1557)
!1590 = !DILocation(line: 117, column: 30, scope: !1587, inlinedAt: !1557)
!1591 = !DILocation(line: 117, column: 41, scope: !1587, inlinedAt: !1557)
!1592 = !DILocation(line: 117, column: 45, scope: !1587, inlinedAt: !1557)
!1593 = !DILocation(line: 117, column: 56, scope: !1587, inlinedAt: !1557)
!1594 = !DILocation(line: 117, column: 63, scope: !1587, inlinedAt: !1557)
!1595 = !DILocation(line: 117, column: 69, scope: !1587, inlinedAt: !1557)
!1596 = !DILocation(line: 117, column: 67, scope: !1587, inlinedAt: !1557)
!1597 = !DILocation(line: 117, column: 7, scope: !1541, inlinedAt: !1557)
!1598 = !DILocation(line: 120, column: 3, scope: !1541, inlinedAt: !1557)
!1599 = !DILocation(line: 121, column: 3, scope: !1541, inlinedAt: !1557)
!1600 = !DILocation(line: 122, column: 12, scope: !1541, inlinedAt: !1557)
!1601 = !DILocation(line: 122, column: 22, scope: !1541, inlinedAt: !1557)
!1602 = !DILocation(line: 126, column: 13, scope: !1541, inlinedAt: !1557)
!1603 = !DILocation(line: 127, column: 20, scope: !1541, inlinedAt: !1557)
!1604 = !DILocation(line: 127, column: 33, scope: !1541, inlinedAt: !1557)
!1605 = !DILocation(line: 128, column: 12, scope: !1541, inlinedAt: !1557)
!1606 = !DILocalVariable(name: "iph", arg: 1, scope: !1607, file: !1505, line: 32, type: !401)
!1607 = distinct !DISubprogram(name: "create_v4_hdr", scope: !1505, file: !1505, line: 31, type: !1608, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !401, !57, !60, !60, !48, !57}
!1610 = !{!1606, !1611, !1612, !1613, !1614, !1615, !1616}
!1611 = !DILocalVariable(name: "tos", arg: 2, scope: !1607, file: !1505, line: 33, type: !57)
!1612 = !DILocalVariable(name: "saddr", arg: 3, scope: !1607, file: !1505, line: 34, type: !60)
!1613 = !DILocalVariable(name: "daddr", arg: 4, scope: !1607, file: !1505, line: 35, type: !60)
!1614 = !DILocalVariable(name: "pkt_bytes", arg: 5, scope: !1607, file: !1505, line: 36, type: !48)
!1615 = !DILocalVariable(name: "proto", arg: 6, scope: !1607, file: !1505, line: 37, type: !57)
!1616 = !DILocalVariable(name: "csum", scope: !1607, file: !1505, line: 38, type: !90)
!1617 = !DILocation(line: 32, column: 19, scope: !1607, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 124, column: 3, scope: !1541, inlinedAt: !1557)
!1619 = !DILocation(line: 33, column: 10, scope: !1607, inlinedAt: !1618)
!1620 = !DILocation(line: 34, column: 11, scope: !1607, inlinedAt: !1618)
!1621 = !DILocation(line: 35, column: 11, scope: !1607, inlinedAt: !1618)
!1622 = !DILocation(line: 36, column: 11, scope: !1607, inlinedAt: !1618)
!1623 = !DILocation(line: 37, column: 10, scope: !1607, inlinedAt: !1618)
!1624 = !DILocation(line: 38, column: 9, scope: !1607, inlinedAt: !1618)
!1625 = !DILocation(line: 40, column: 12, scope: !1607, inlinedAt: !1618)
!1626 = !DILocation(line: 41, column: 8, scope: !1607, inlinedAt: !1618)
!1627 = !DILocation(line: 41, column: 17, scope: !1607, inlinedAt: !1618)
!1628 = !DILocation(line: 42, column: 8, scope: !1607, inlinedAt: !1618)
!1629 = !DILocation(line: 42, column: 17, scope: !1607, inlinedAt: !1618)
!1630 = !DILocation(line: 43, column: 8, scope: !1607, inlinedAt: !1618)
!1631 = !DILocation(line: 45, column: 8, scope: !1607, inlinedAt: !1618)
!1632 = !DILocation(line: 45, column: 12, scope: !1607, inlinedAt: !1618)
!1633 = !DILocation(line: 49, column: 18, scope: !1607, inlinedAt: !1618)
!1634 = !DILocation(line: 49, column: 8, scope: !1607, inlinedAt: !1618)
!1635 = !DILocation(line: 49, column: 16, scope: !1607, inlinedAt: !1618)
!1636 = !DILocation(line: 50, column: 8, scope: !1607, inlinedAt: !1618)
!1637 = !DILocation(line: 50, column: 14, scope: !1607, inlinedAt: !1618)
!1638 = !DILocation(line: 51, column: 8, scope: !1607, inlinedAt: !1618)
!1639 = !DILocation(line: 51, column: 14, scope: !1607, inlinedAt: !1618)
!1640 = !DILocation(line: 52, column: 8, scope: !1607, inlinedAt: !1618)
!1641 = !DILocation(line: 52, column: 12, scope: !1607, inlinedAt: !1618)
!1642 = !DILocation(line: 53, column: 43, scope: !649, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 53, column: 3, scope: !1607, inlinedAt: !1618)
!1644 = !DILocation(line: 54, column: 25, scope: !649, inlinedAt: !1643)
!1645 = !DILocation(line: 54, column: 10, scope: !649, inlinedAt: !1643)
!1646 = !DILocation(line: 56, column: 12, scope: !658, inlinedAt: !1643)
!1647 = !DILocation(line: 57, column: 15, scope: !665, inlinedAt: !1643)
!1648 = !DILocation(line: 57, column: 28, scope: !665, inlinedAt: !1643)
!1649 = !DILocation(line: 57, column: 12, scope: !665, inlinedAt: !1643)
!1650 = !DILocation(line: 31, column: 44, scope: !671, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 59, column: 11, scope: !649, inlinedAt: !1643)
!1652 = !DILocation(line: 32, column: 7, scope: !671, inlinedAt: !1651)
!1653 = !DILocation(line: 35, column: 14, scope: !680, inlinedAt: !1651)
!1654 = !DILocation(line: 35, column: 9, scope: !681, inlinedAt: !1651)
!1655 = !DILocation(line: 54, column: 16, scope: !1607, inlinedAt: !1618)
!1656 = !DILocation(line: 54, column: 14, scope: !1607, inlinedAt: !1618)
!1657 = !DILocation(line: 659, column: 8, scope: !1559, inlinedAt: !533)
!1658 = !DILocation(line: 665, column: 1, scope: !418, inlinedAt: !533)
!1659 = !DILocation(line: 684, column: 5, scope: !534)
!1660 = !DILocation(line: 404, column: 40, scope: !418, inlinedAt: !468)
!1661 = !DILocation(line: 404, column: 52, scope: !418, inlinedAt: !468)
!1662 = !DILocation(line: 404, column: 63, scope: !418, inlinedAt: !468)
!1663 = !DILocation(line: 405, column: 63, scope: !418, inlinedAt: !468)
!1664 = !DILocation(line: 408, column: 27, scope: !418, inlinedAt: !468)
!1665 = !DILocation(line: 409, column: 3, scope: !418, inlinedAt: !468)
!1666 = !DILocation(line: 409, column: 29, scope: !418, inlinedAt: !468)
!1667 = !DILocation(line: 410, column: 3, scope: !418, inlinedAt: !468)
!1668 = !DILocation(line: 410, column: 25, scope: !418, inlinedAt: !468)
!1669 = !DILocation(line: 417, column: 3, scope: !418, inlinedAt: !468)
!1670 = !DILocation(line: 418, column: 3, scope: !418, inlinedAt: !468)
!1671 = !DILocation(line: 418, column: 9, scope: !418, inlinedAt: !468)
!1672 = !DILocation(line: 169, column: 65, scope: !385, inlinedAt: !417)
!1673 = !DILocation(line: 170, column: 60, scope: !385, inlinedAt: !417)
!1674 = !DILocation(line: 171, column: 62, scope: !385, inlinedAt: !417)
!1675 = !DILocation(line: 172, column: 44, scope: !385, inlinedAt: !417)
!1676 = !DILocation(line: 176, column: 19, scope: !385, inlinedAt: !417)
!1677 = !DILocation(line: 179, column: 14, scope: !1678, inlinedAt: !417)
!1678 = distinct !DILexicalBlock(scope: !383, file: !3, line: 179, column: 9)
!1679 = !DILocation(line: 179, column: 18, scope: !1678, inlinedAt: !417)
!1680 = !DILocation(line: 179, column: 9, scope: !383, inlinedAt: !417)
!1681 = !DILocation(line: 173, column: 9, scope: !385, inlinedAt: !417)
!1682 = !DILocation(line: 184, column: 23, scope: !383, inlinedAt: !417)
!1683 = !DILocation(line: 185, column: 16, scope: !383, inlinedAt: !417)
!1684 = !DILocation(line: 185, column: 22, scope: !383, inlinedAt: !417)
!1685 = !DILocation(line: 188, column: 24, scope: !383, inlinedAt: !417)
!1686 = !DILocation(line: 188, column: 33, scope: !383, inlinedAt: !417)
!1687 = !DILocation(line: 188, column: 11, scope: !383, inlinedAt: !417)
!1688 = !DILocation(line: 189, column: 37, scope: !383, inlinedAt: !417)
!1689 = !DILocation(line: 189, column: 31, scope: !383, inlinedAt: !417)
!1690 = !DILocation(line: 189, column: 49, scope: !383, inlinedAt: !417)
!1691 = !DILocation(line: 189, column: 27, scope: !383, inlinedAt: !417)
!1692 = !DILocation(line: 189, column: 15, scope: !383, inlinedAt: !417)
!1693 = !DILocation(line: 191, column: 18, scope: !383, inlinedAt: !417)
!1694 = !DILocation(line: 193, column: 9, scope: !383, inlinedAt: !417)
!1695 = !DILocation(line: 223, column: 38, scope: !362, inlinedAt: !379)
!1696 = !DILocation(line: 223, column: 50, scope: !362, inlinedAt: !379)
!1697 = !DILocation(line: 223, column: 66, scope: !362, inlinedAt: !379)
!1698 = !DILocation(line: 224, column: 59, scope: !362, inlinedAt: !379)
!1699 = !DILocation(line: 228, column: 16, scope: !1700, inlinedAt: !379)
!1700 = distinct !DILexicalBlock(scope: !362, file: !278, line: 228, column: 7)
!1701 = !DILocation(line: 228, column: 20, scope: !1700, inlinedAt: !379)
!1702 = !DILocation(line: 228, column: 7, scope: !362, inlinedAt: !379)
!1703 = !DILocation(line: 225, column: 20, scope: !362, inlinedAt: !379)
!1704 = !DILocation(line: 231, column: 17, scope: !361, inlinedAt: !379)
!1705 = !{!1706, !544, i64 0}
!1706 = !{!"icmp6hdr", !544, i64 0, !544, i64 1, !564, i64 2, !544, i64 4}
!1707 = !DILocation(line: 231, column: 7, scope: !362, inlinedAt: !379)
!1708 = !DILocation(line: 90, column: 42, scope: !277, inlinedAt: !359)
!1709 = !DILocation(line: 90, column: 54, scope: !277, inlinedAt: !359)
!1710 = !DILocation(line: 93, column: 3, scope: !277, inlinedAt: !359)
!1711 = !DILocation(line: 94, column: 9, scope: !277, inlinedAt: !359)
!1712 = !DILocation(line: 91, column: 19, scope: !277, inlinedAt: !359)
!1713 = !DILocation(line: 92, column: 20, scope: !277, inlinedAt: !359)
!1714 = !DILocation(line: 103, column: 24, scope: !277, inlinedAt: !359)
!1715 = !DILocation(line: 107, column: 13, scope: !277, inlinedAt: !359)
!1716 = !DILocation(line: 107, column: 25, scope: !277, inlinedAt: !359)
!1717 = !{!1706, !564, i64 2}
!1718 = !DILocation(line: 108, column: 9, scope: !277, inlinedAt: !359)
!1719 = !DILocation(line: 108, column: 19, scope: !277, inlinedAt: !359)
!1720 = !DILocation(line: 109, column: 26, scope: !277, inlinedAt: !359)
!1721 = !DILocation(line: 109, column: 3, scope: !277, inlinedAt: !359)
!1722 = !DILocation(line: 110, column: 39, scope: !277, inlinedAt: !359)
!1723 = !DILocation(line: 110, column: 3, scope: !277, inlinedAt: !359)
!1724 = !DILocation(line: 111, column: 3, scope: !277, inlinedAt: !359)
!1725 = !DILocation(line: 39, column: 43, scope: !473, inlinedAt: !527)
!1726 = !DILocation(line: 39, column: 55, scope: !473, inlinedAt: !527)
!1727 = !DILocation(line: 41, column: 3, scope: !473, inlinedAt: !527)
!1728 = !DILocation(line: 40, column: 19, scope: !473, inlinedAt: !527)
!1729 = !DILocation(line: 43, column: 24, scope: !473, inlinedAt: !527)
!1730 = !DILocation(line: 43, column: 3, scope: !473, inlinedAt: !527)
!1731 = !DILocation(line: 44, column: 3, scope: !473, inlinedAt: !527)
!1732 = !DILocation(line: 45, column: 3, scope: !473, inlinedAt: !527)
!1733 = !DILocation(line: 47, column: 1, scope: !473, inlinedAt: !527)
!1734 = !DILocation(line: 113, column: 1, scope: !277, inlinedAt: !359)
!1735 = !DILocation(line: 232, column: 5, scope: !360, inlinedAt: !379)
!1736 = !DILocation(line: 242, column: 12, scope: !1737, inlinedAt: !379)
!1737 = distinct !DILexicalBlock(scope: !362, file: !278, line: 242, column: 7)
!1738 = !DILocation(line: 242, column: 16, scope: !1737, inlinedAt: !379)
!1739 = !DILocation(line: 242, column: 7, scope: !362, inlinedAt: !379)
!1740 = !DILocation(line: 226, column: 19, scope: !362, inlinedAt: !379)
!1741 = !DILocation(line: 245, column: 28, scope: !362, inlinedAt: !379)
!1742 = !DILocation(line: 245, column: 20, scope: !362, inlinedAt: !379)
!1743 = !DILocation(line: 246, column: 9, scope: !362, inlinedAt: !379)
!1744 = !DILocation(line: 246, column: 15, scope: !362, inlinedAt: !379)
!1745 = !DILocation(line: 247, column: 34, scope: !362, inlinedAt: !379)
!1746 = !DILocation(line: 247, column: 3, scope: !362, inlinedAt: !379)
!1747 = !DILocation(line: 248, column: 3, scope: !362, inlinedAt: !379)
!1748 = !DILocation(line: 248, column: 34, scope: !362, inlinedAt: !379)
!1749 = !DILocation(line: 174, column: 7, scope: !385, inlinedAt: !417)
!1750 = !DILocation(line: 198, column: 11, scope: !380, inlinedAt: !417)
!1751 = !DILocation(line: 202, column: 38, scope: !1752, inlinedAt: !417)
!1752 = distinct !DILexicalBlock(scope: !381, file: !3, line: 201, column: 12)
!1753 = !DILocation(line: 202, column: 7, scope: !1752, inlinedAt: !417)
!1754 = !DILocation(line: 203, column: 7, scope: !1752, inlinedAt: !417)
!1755 = !DILocation(line: 203, column: 38, scope: !1752, inlinedAt: !417)
!1756 = !DILocation(line: 425, column: 24, scope: !418, inlinedAt: !468)
!1757 = !DILocation(line: 416, column: 7, scope: !418, inlinedAt: !468)
!1758 = !DILocation(line: 414, column: 8, scope: !418, inlinedAt: !468)
!1759 = !DILocation(line: 439, column: 7, scope: !418, inlinedAt: !468)
!1760 = !DILocation(line: 107, column: 36, scope: !730, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 440, column: 10, scope: !763, inlinedAt: !468)
!1762 = !DILocation(line: 107, column: 48, scope: !730, inlinedAt: !1761)
!1763 = !DILocation(line: 109, column: 57, scope: !730, inlinedAt: !1761)
!1764 = !DILocation(line: 111, column: 27, scope: !730, inlinedAt: !1761)
!1765 = !DILocation(line: 111, column: 43, scope: !730, inlinedAt: !1761)
!1766 = !DILocation(line: 65, column: 9, scope: !771, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 112, column: 15, scope: !730, inlinedAt: !1761)
!1768 = !DILocation(line: 66, column: 7, scope: !771, inlinedAt: !1767)
!1769 = !DILocation(line: 112, column: 9, scope: !730, inlinedAt: !1761)
!1770 = !DILocation(line: 114, column: 14, scope: !730, inlinedAt: !1761)
!1771 = !DILocation(line: 113, column: 18, scope: !730, inlinedAt: !1761)
!1772 = !DILocation(line: 116, column: 11, scope: !784, inlinedAt: !1761)
!1773 = !DILocation(line: 116, column: 15, scope: !784, inlinedAt: !1761)
!1774 = !DILocation(line: 116, column: 7, scope: !730, inlinedAt: !1761)
!1775 = !DILocation(line: 120, column: 12, scope: !788, inlinedAt: !1761)
!1776 = !DILocation(line: 120, column: 7, scope: !788, inlinedAt: !1761)
!1777 = !DILocation(line: 120, column: 7, scope: !730, inlinedAt: !1761)
!1778 = !DILocation(line: 121, column: 17, scope: !792, inlinedAt: !1761)
!1779 = !DILocation(line: 122, column: 3, scope: !792, inlinedAt: !1761)
!1780 = !DILocation(line: 124, column: 7, scope: !730, inlinedAt: !1761)
!1781 = !DILocation(line: 125, column: 33, scope: !796, inlinedAt: !1761)
!1782 = !DILocation(line: 125, column: 16, scope: !796, inlinedAt: !1761)
!1783 = !DILocation(line: 125, column: 5, scope: !796, inlinedAt: !1761)
!1784 = !DILocation(line: 125, column: 26, scope: !796, inlinedAt: !1761)
!1785 = !DILocation(line: 126, column: 33, scope: !796, inlinedAt: !1761)
!1786 = !DILocation(line: 127, column: 3, scope: !796, inlinedAt: !1761)
!1787 = !DILocation(line: 130, column: 33, scope: !806, inlinedAt: !1761)
!1788 = !DILocation(line: 130, column: 16, scope: !806, inlinedAt: !1761)
!1789 = !DILocation(line: 130, column: 5, scope: !806, inlinedAt: !1761)
!1790 = !DILocation(line: 130, column: 26, scope: !806, inlinedAt: !1761)
!1791 = !DILocation(line: 81, column: 36, scope: !812, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 444, column: 10, scope: !830, inlinedAt: !468)
!1793 = !DILocation(line: 81, column: 48, scope: !812, inlinedAt: !1792)
!1794 = !DILocation(line: 83, column: 57, scope: !812, inlinedAt: !1792)
!1795 = !DILocation(line: 85, column: 43, scope: !812, inlinedAt: !1792)
!1796 = !DILocation(line: 65, column: 9, scope: !771, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 86, column: 15, scope: !812, inlinedAt: !1792)
!1798 = !DILocation(line: 66, column: 7, scope: !771, inlinedAt: !1797)
!1799 = !DILocation(line: 86, column: 9, scope: !812, inlinedAt: !1792)
!1800 = !DILocation(line: 88, column: 14, scope: !812, inlinedAt: !1792)
!1801 = !DILocation(line: 87, column: 18, scope: !812, inlinedAt: !1792)
!1802 = !DILocation(line: 90, column: 11, scope: !843, inlinedAt: !1792)
!1803 = !DILocation(line: 90, column: 15, scope: !843, inlinedAt: !1792)
!1804 = !DILocation(line: 90, column: 7, scope: !812, inlinedAt: !1792)
!1805 = !DILocation(line: 94, column: 7, scope: !812, inlinedAt: !1792)
!1806 = !DILocation(line: 95, column: 33, scope: !848, inlinedAt: !1792)
!1807 = !DILocation(line: 95, column: 16, scope: !848, inlinedAt: !1792)
!1808 = !DILocation(line: 95, column: 5, scope: !848, inlinedAt: !1792)
!1809 = !DILocation(line: 95, column: 26, scope: !848, inlinedAt: !1792)
!1810 = !DILocation(line: 96, column: 33, scope: !848, inlinedAt: !1792)
!1811 = !DILocation(line: 97, column: 3, scope: !848, inlinedAt: !1792)
!1812 = !DILocation(line: 100, column: 33, scope: !858, inlinedAt: !1792)
!1813 = !DILocation(line: 100, column: 16, scope: !858, inlinedAt: !1792)
!1814 = !DILocation(line: 100, column: 5, scope: !858, inlinedAt: !1792)
!1815 = !DILocation(line: 100, column: 26, scope: !858, inlinedAt: !1792)
!1816 = !DILocation(line: 0, scope: !765, inlinedAt: !468)
!1817 = !DILocation(line: 0, scope: !866, inlinedAt: !468)
!1818 = !DILocation(line: 463, column: 5, scope: !1819, inlinedAt: !468)
!1819 = distinct !DILexicalBlock(scope: !866, file: !3, line: 462, column: 16)
!1820 = !DILocation(line: 468, column: 24, scope: !418, inlinedAt: !468)
!1821 = !DILocation(line: 468, column: 14, scope: !418, inlinedAt: !468)
!1822 = !DILocation(line: 468, column: 7, scope: !418, inlinedAt: !468)
!1823 = !DILocation(line: 468, column: 12, scope: !418, inlinedAt: !468)
!1824 = !DILocation(line: 469, column: 7, scope: !418, inlinedAt: !468)
!1825 = !DILocation(line: 469, column: 13, scope: !418, inlinedAt: !468)
!1826 = !DILocation(line: 470, column: 14, scope: !418, inlinedAt: !468)
!1827 = !DILocation(line: 411, column: 20, scope: !418, inlinedAt: !468)
!1828 = !DILocation(line: 471, column: 8, scope: !880, inlinedAt: !468)
!1829 = !DILocation(line: 471, column: 7, scope: !418, inlinedAt: !468)
!1830 = !DILocation(line: 472, column: 14, scope: !883, inlinedAt: !468)
!1831 = !DILocation(line: 473, column: 16, scope: !883, inlinedAt: !468)
!1832 = !DILocation(line: 474, column: 10, scope: !886, inlinedAt: !468)
!1833 = !DILocation(line: 474, column: 9, scope: !883, inlinedAt: !468)
!1834 = !DILocation(line: 478, column: 21, scope: !889, inlinedAt: !468)
!1835 = !DILocation(line: 478, column: 27, scope: !889, inlinedAt: !468)
!1836 = !DILocation(line: 478, column: 9, scope: !883, inlinedAt: !468)
!1837 = !DILocation(line: 481, column: 27, scope: !895, inlinedAt: !468)
!1838 = !DILocation(line: 482, column: 5, scope: !895, inlinedAt: !468)
!1839 = !DILocation(line: 0, scope: !418, inlinedAt: !468)
!1840 = !DILocation(line: 485, column: 16, scope: !899, inlinedAt: !468)
!1841 = !DILocation(line: 485, column: 23, scope: !899, inlinedAt: !468)
!1842 = !DILocation(line: 485, column: 7, scope: !418, inlinedAt: !468)
!1843 = !DILocation(line: 504, column: 3, scope: !418, inlinedAt: !468)
!1844 = !DILocation(line: 504, column: 9, scope: !418, inlinedAt: !468)
!1845 = !DILocation(line: 505, column: 16, scope: !418, inlinedAt: !468)
!1846 = !DILocation(line: 412, column: 20, scope: !418, inlinedAt: !468)
!1847 = !DILocation(line: 506, column: 8, scope: !907, inlinedAt: !468)
!1848 = !DILocation(line: 506, column: 7, scope: !418, inlinedAt: !468)
!1849 = !DILocation(line: 511, column: 15, scope: !418, inlinedAt: !468)
!1850 = !DILocation(line: 511, column: 18, scope: !418, inlinedAt: !468)
!1851 = !DILocation(line: 514, column: 18, scope: !446, inlinedAt: !468)
!1852 = !DILocation(line: 514, column: 24, scope: !446, inlinedAt: !468)
!1853 = !DILocation(line: 514, column: 7, scope: !418, inlinedAt: !468)
!1854 = !DILocation(line: 515, column: 5, scope: !445, inlinedAt: !468)
!1855 = !DILocation(line: 515, column: 11, scope: !445, inlinedAt: !468)
!1856 = !DILocation(line: 516, column: 35, scope: !445, inlinedAt: !468)
!1857 = !DILocation(line: 516, column: 22, scope: !445, inlinedAt: !468)
!1858 = !DILocation(line: 517, column: 10, scope: !922, inlinedAt: !468)
!1859 = !DILocation(line: 517, column: 9, scope: !445, inlinedAt: !468)
!1860 = !DILocation(line: 242, column: 36, scope: !925, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 521, column: 18, scope: !445, inlinedAt: !468)
!1862 = !DILocation(line: 242, column: 48, scope: !925, inlinedAt: !1861)
!1863 = !DILocation(line: 243, column: 71, scope: !925, inlinedAt: !1861)
!1864 = !DILocation(line: 244, column: 25, scope: !925, inlinedAt: !1861)
!1865 = !DILocation(line: 244, column: 31, scope: !925, inlinedAt: !1861)
!1866 = !DILocation(line: 244, column: 18, scope: !925, inlinedAt: !1861)
!1867 = !DILocation(line: 65, column: 9, scope: !771, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 245, column: 15, scope: !925, inlinedAt: !1861)
!1869 = !DILocation(line: 66, column: 7, scope: !771, inlinedAt: !1868)
!1870 = !DILocation(line: 245, column: 9, scope: !925, inlinedAt: !1861)
!1871 = !DILocation(line: 248, column: 13, scope: !957, inlinedAt: !1861)
!1872 = !DILocation(line: 248, column: 19, scope: !957, inlinedAt: !1861)
!1873 = !DILocation(line: 248, column: 43, scope: !957, inlinedAt: !1861)
!1874 = !DILocation(line: 248, column: 59, scope: !957, inlinedAt: !1861)
!1875 = !DILocation(line: 248, column: 7, scope: !925, inlinedAt: !1861)
!1876 = !DILocation(line: 252, column: 9, scope: !925, inlinedAt: !1861)
!1877 = !DILocation(line: 253, column: 9, scope: !925, inlinedAt: !1861)
!1878 = !DILocation(line: 254, column: 9, scope: !925, inlinedAt: !1861)
!1879 = !DILocation(line: 260, column: 8, scope: !939, inlinedAt: !1861)
!1880 = !DILocation(line: 260, column: 38, scope: !939, inlinedAt: !1861)
!1881 = !DILocation(line: 260, column: 7, scope: !925, inlinedAt: !1861)
!1882 = !DILocation(line: 262, column: 19, scope: !969, inlinedAt: !1861)
!1883 = !DILocation(line: 262, column: 53, scope: !969, inlinedAt: !1861)
!1884 = !DILocation(line: 265, column: 20, scope: !972, inlinedAt: !1861)
!1885 = !DILocation(line: 265, column: 45, scope: !972, inlinedAt: !1861)
!1886 = !DILocation(line: 262, column: 9, scope: !938, inlinedAt: !1861)
!1887 = !DILocation(line: 273, column: 22, scope: !976, inlinedAt: !1861)
!1888 = !DILocation(line: 273, column: 35, scope: !976, inlinedAt: !1861)
!1889 = !DILocation(line: 273, column: 9, scope: !938, inlinedAt: !1861)
!1890 = !DILocation(line: 279, column: 19, scope: !982, inlinedAt: !1861)
!1891 = !DILocation(line: 279, column: 54, scope: !982, inlinedAt: !1861)
!1892 = !DILocation(line: 279, column: 9, scope: !983, inlinedAt: !1861)
!1893 = !DILocation(line: 288, column: 25, scope: !925, inlinedAt: !1861)
!1894 = !DILocation(line: 288, column: 35, scope: !925, inlinedAt: !1861)
!1895 = !DILocation(line: 288, column: 8, scope: !925, inlinedAt: !1861)
!1896 = !DILocation(line: 289, column: 7, scope: !925, inlinedAt: !1861)
!1897 = !DILocation(line: 292, column: 24, scope: !991, inlinedAt: !1861)
!1898 = !DILocation(line: 292, column: 32, scope: !991, inlinedAt: !1861)
!1899 = !DILocation(line: 292, column: 42, scope: !991, inlinedAt: !1861)
!1900 = !DILocation(line: 292, column: 52, scope: !991, inlinedAt: !1861)
!1901 = !DILocation(line: 292, column: 39, scope: !991, inlinedAt: !1861)
!1902 = !DILocation(line: 292, column: 61, scope: !991, inlinedAt: !1861)
!1903 = !DILocation(line: 292, column: 71, scope: !991, inlinedAt: !1861)
!1904 = !DILocation(line: 292, column: 5, scope: !991, inlinedAt: !1861)
!1905 = !DILocation(line: 294, column: 18, scope: !942, inlinedAt: !1861)
!1906 = !DILocation(line: 294, column: 28, scope: !942, inlinedAt: !1861)
!1907 = !DILocation(line: 294, column: 38, scope: !942, inlinedAt: !1861)
!1908 = !DILocation(line: 294, column: 48, scope: !942, inlinedAt: !1861)
!1909 = !DILocation(line: 294, column: 35, scope: !942, inlinedAt: !1861)
!1910 = !DILocation(line: 294, column: 57, scope: !942, inlinedAt: !1861)
!1911 = !DILocation(line: 294, column: 11, scope: !942, inlinedAt: !1861)
!1912 = !DILocation(line: 0, scope: !944, inlinedAt: !1861)
!1913 = !DILocation(line: 520, column: 9, scope: !445, inlinedAt: !468)
!1914 = !DILocation(line: 522, column: 20, scope: !451, inlinedAt: !468)
!1915 = !DILocation(line: 522, column: 9, scope: !445, inlinedAt: !468)
!1916 = !DILocation(line: 367, column: 38, scope: !1011, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 523, column: 7, scope: !450, inlinedAt: !468)
!1918 = !DILocation(line: 368, column: 3, scope: !1011, inlinedAt: !1917)
!1919 = !DILocation(line: 368, column: 9, scope: !1011, inlinedAt: !1917)
!1920 = !DILocation(line: 370, column: 7, scope: !1011, inlinedAt: !1917)
!1921 = !DILocation(line: 369, column: 20, scope: !1011, inlinedAt: !1917)
!1922 = !DILocation(line: 371, column: 8, scope: !1024, inlinedAt: !1917)
!1923 = !DILocation(line: 371, column: 7, scope: !1011, inlinedAt: !1917)
!1924 = !DILocation(line: 374, column: 15, scope: !1027, inlinedAt: !1917)
!1925 = !DILocation(line: 374, column: 7, scope: !1011, inlinedAt: !1917)
!1926 = !DILocation(line: 0, scope: !1027, inlinedAt: !1917)
!1927 = !DILocation(line: 379, column: 1, scope: !1011, inlinedAt: !1917)
!1928 = !DILocation(line: 524, column: 7, scope: !450, inlinedAt: !468)
!1929 = !DILocation(line: 524, column: 13, scope: !450, inlinedAt: !468)
!1930 = !DILocation(line: 525, column: 25, scope: !450, inlinedAt: !468)
!1931 = !DILocation(line: 526, column: 11, scope: !1036, inlinedAt: !468)
!1932 = !DILocation(line: 526, column: 11, scope: !450, inlinedAt: !468)
!1933 = !DILocation(line: 525, column: 14, scope: !450, inlinedAt: !468)
!1934 = !DILocation(line: 527, column: 15, scope: !1040, inlinedAt: !468)
!1935 = !DILocation(line: 527, column: 13, scope: !1040, inlinedAt: !468)
!1936 = !DILocation(line: 530, column: 17, scope: !1043, inlinedAt: !468)
!1937 = !DILocation(line: 530, column: 13, scope: !1040, inlinedAt: !468)
!1938 = !DILocation(line: 394, column: 3, scope: !1046, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 531, column: 11, scope: !1053, inlinedAt: !468)
!1940 = !DILocation(line: 394, column: 9, scope: !1046, inlinedAt: !1939)
!1941 = !DILocation(line: 396, column: 7, scope: !1046, inlinedAt: !1939)
!1942 = !DILocation(line: 397, column: 8, scope: !1057, inlinedAt: !1939)
!1943 = !DILocation(line: 397, column: 7, scope: !1046, inlinedAt: !1939)
!1944 = !DILocation(line: 395, column: 20, scope: !1046, inlinedAt: !1939)
!1945 = !DILocation(line: 400, column: 14, scope: !1046, inlinedAt: !1939)
!1946 = !DILocation(line: 400, column: 17, scope: !1046, inlinedAt: !1939)
!1947 = !DILocation(line: 401, column: 1, scope: !1046, inlinedAt: !1939)
!1948 = !DILocation(line: 533, column: 27, scope: !1040, inlinedAt: !468)
!1949 = !DILocation(line: 532, column: 9, scope: !1053, inlinedAt: !468)
!1950 = !DILocation(line: 533, column: 14, scope: !1040, inlinedAt: !468)
!1951 = !DILocation(line: 533, column: 25, scope: !1040, inlinedAt: !468)
!1952 = !DILocation(line: 534, column: 15, scope: !1040, inlinedAt: !468)
!1953 = !DILocation(line: 535, column: 14, scope: !1071, inlinedAt: !468)
!1954 = !DILocation(line: 535, column: 13, scope: !1040, inlinedAt: !468)
!1955 = !DILocation(line: 383, column: 3, scope: !1074, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 536, column: 11, scope: !1079, inlinedAt: !468)
!1957 = !DILocation(line: 383, column: 9, scope: !1074, inlinedAt: !1956)
!1958 = !DILocation(line: 385, column: 7, scope: !1074, inlinedAt: !1956)
!1959 = !DILocation(line: 386, column: 8, scope: !1083, inlinedAt: !1956)
!1960 = !DILocation(line: 386, column: 7, scope: !1074, inlinedAt: !1956)
!1961 = !DILocation(line: 384, column: 20, scope: !1074, inlinedAt: !1956)
!1962 = !DILocation(line: 389, column: 14, scope: !1074, inlinedAt: !1956)
!1963 = !DILocation(line: 389, column: 17, scope: !1074, inlinedAt: !1956)
!1964 = !DILocation(line: 390, column: 1, scope: !1074, inlinedAt: !1956)
!1965 = !DILocation(line: 543, column: 21, scope: !1090, inlinedAt: !468)
!1966 = !DILocation(line: 543, column: 24, scope: !1090, inlinedAt: !468)
!1967 = !DILocation(line: 545, column: 5, scope: !451, inlinedAt: !468)
!1968 = !DILocation(line: 548, column: 3, scope: !446, inlinedAt: !468)
!1969 = !DILocation(line: 550, column: 7, scope: !418, inlinedAt: !468)
!1970 = !DILocation(line: 546, column: 19, scope: !1096, inlinedAt: !468)
!1971 = !DILocation(line: 546, column: 22, scope: !1096, inlinedAt: !468)
!1972 = !DILocation(line: 540, column: 21, scope: !1040, inlinedAt: !468)
!1973 = !DILocation(line: 540, column: 24, scope: !1040, inlinedAt: !468)
!1974 = !DILocation(line: 551, column: 20, scope: !1101, inlinedAt: !468)
!1975 = !DILocation(line: 551, column: 26, scope: !1101, inlinedAt: !468)
!1976 = !DILocation(line: 551, column: 9, scope: !455, inlinedAt: !468)
!1977 = !DILocation(line: 554, column: 7, scope: !1105, inlinedAt: !468)
!1978 = !DILocation(line: 554, column: 27, scope: !1105, inlinedAt: !468)
!1979 = !DILocation(line: 555, column: 5, scope: !1105, inlinedAt: !468)
!1980 = !DILocation(line: 556, column: 5, scope: !455, inlinedAt: !468)
!1981 = !DILocation(line: 556, column: 21, scope: !455, inlinedAt: !468)
!1982 = !DILocation(line: 556, column: 11, scope: !455, inlinedAt: !468)
!1983 = !DILocation(line: 557, column: 21, scope: !455, inlinedAt: !468)
!1984 = !DILocation(line: 557, column: 11, scope: !455, inlinedAt: !468)
!1985 = !DILocation(line: 558, column: 10, scope: !460, inlinedAt: !468)
!1986 = !DILocation(line: 558, column: 9, scope: !455, inlinedAt: !468)
!1987 = !DILocation(line: 560, column: 7, scope: !459, inlinedAt: !468)
!1988 = !DILocation(line: 560, column: 13, scope: !459, inlinedAt: !468)
!1989 = !DILocation(line: 561, column: 36, scope: !459, inlinedAt: !468)
!1990 = !DILocation(line: 562, column: 12, scope: !1119, inlinedAt: !468)
!1991 = !DILocation(line: 562, column: 11, scope: !459, inlinedAt: !468)
!1992 = !DILocation(line: 561, column: 24, scope: !459, inlinedAt: !468)
!1993 = !DILocation(line: 568, column: 18, scope: !459, inlinedAt: !468)
!1994 = !DILocation(line: 568, column: 21, scope: !459, inlinedAt: !468)
!1995 = !DILocation(line: 569, column: 5, scope: !460, inlinedAt: !468)
!1996 = !DILocation(line: 0, scope: !455, inlinedAt: !468)
!1997 = !DILocation(line: 595, column: 24, scope: !1127, inlinedAt: !468)
!1998 = !DILocation(line: 595, column: 30, scope: !1127, inlinedAt: !468)
!1999 = !DILocation(line: 595, column: 43, scope: !1127, inlinedAt: !468)
!2000 = !DILocation(line: 596, column: 21, scope: !1127, inlinedAt: !468)
!2001 = !DILocation(line: 596, column: 27, scope: !1127, inlinedAt: !468)
!2002 = !DILocation(line: 595, column: 9, scope: !455, inlinedAt: !468)
!2003 = !DILocation(line: 145, column: 71, scope: !1134, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 597, column: 7, scope: !1147, inlinedAt: !468)
!2005 = !DILocation(line: 146, column: 50, scope: !1134, inlinedAt: !2004)
!2006 = !DILocation(line: 150, column: 3, scope: !1134, inlinedAt: !2004)
!2007 = !DILocation(line: 151, column: 13, scope: !1134, inlinedAt: !2004)
!2008 = !DILocation(line: 148, column: 24, scope: !1134, inlinedAt: !2004)
!2009 = !DILocation(line: 152, column: 8, scope: !1153, inlinedAt: !2004)
!2010 = !DILocation(line: 152, column: 7, scope: !1134, inlinedAt: !2004)
!2011 = !DILocation(line: 155, column: 18, scope: !1156, inlinedAt: !2004)
!2012 = !DILocation(line: 155, column: 24, scope: !1156, inlinedAt: !2004)
!2013 = !DILocation(line: 155, column: 7, scope: !1134, inlinedAt: !2004)
!2014 = !DILocation(line: 156, column: 16, scope: !1160, inlinedAt: !2004)
!2015 = !DILocation(line: 149, column: 9, scope: !1134, inlinedAt: !2004)
!2016 = !DILocation(line: 157, column: 29, scope: !1163, inlinedAt: !2004)
!2017 = !DILocation(line: 157, column: 18, scope: !1163, inlinedAt: !2004)
!2018 = !DILocation(line: 157, column: 35, scope: !1163, inlinedAt: !2004)
!2019 = !DILocation(line: 157, column: 9, scope: !1160, inlinedAt: !2004)
!2020 = !DILocation(line: 160, column: 20, scope: !1160, inlinedAt: !2004)
!2021 = !DILocation(line: 161, column: 3, scope: !1160, inlinedAt: !2004)
!2022 = !DILocation(line: 166, column: 1, scope: !1134, inlinedAt: !2004)
!2023 = !DILocation(line: 601, column: 9, scope: !455, inlinedAt: !468)
!2024 = !DILocation(line: 162, column: 18, scope: !1134, inlinedAt: !2004)
!2025 = !DILocation(line: 150, column: 9, scope: !1134, inlinedAt: !2004)
!2026 = !DILocation(line: 162, column: 7, scope: !1134, inlinedAt: !2004)
!2027 = !DILocation(line: 163, column: 9, scope: !1134, inlinedAt: !2004)
!2028 = !DILocation(line: 163, column: 20, scope: !1134, inlinedAt: !2004)
!2029 = !DILocation(line: 164, column: 11, scope: !1134, inlinedAt: !2004)
!2030 = !DILocation(line: 601, column: 10, scope: !466, inlinedAt: !468)
!2031 = !DILocation(line: 602, column: 21, scope: !464, inlinedAt: !468)
!2032 = !DILocation(line: 602, column: 27, scope: !464, inlinedAt: !468)
!2033 = !DILocation(line: 602, column: 11, scope: !465, inlinedAt: !468)
!2034 = !DILocation(line: 603, column: 9, scope: !463, inlinedAt: !468)
!2035 = !DILocation(line: 603, column: 15, scope: !463, inlinedAt: !468)
!2036 = !DILocation(line: 604, column: 38, scope: !463, inlinedAt: !468)
!2037 = !DILocation(line: 604, column: 26, scope: !463, inlinedAt: !468)
!2038 = !DILocation(line: 606, column: 14, scope: !1189, inlinedAt: !468)
!2039 = !DILocation(line: 606, column: 13, scope: !463, inlinedAt: !468)
!2040 = !DILocation(line: 609, column: 18, scope: !1192, inlinedAt: !468)
!2041 = !DILocation(line: 609, column: 24, scope: !1192, inlinedAt: !468)
!2042 = !DILocation(line: 609, column: 13, scope: !463, inlinedAt: !468)
!2043 = !DILocation(line: 0, scope: !1192, inlinedAt: !468)
!2044 = !DILocation(line: 619, column: 7, scope: !464, inlinedAt: !468)
!2045 = !DILocation(line: 64, column: 62, scope: !1198, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 620, column: 11, scope: !1218, inlinedAt: !468)
!2047 = !DILocation(line: 65, column: 52, scope: !1198, inlinedAt: !2046)
!2048 = !DILocation(line: 67, column: 41, scope: !1198, inlinedAt: !2046)
!2049 = !DILocation(line: 70, column: 3, scope: !1198, inlinedAt: !2046)
!2050 = !DILocation(line: 70, column: 23, scope: !1198, inlinedAt: !2046)
!2051 = !DILocation(line: 71, column: 8, scope: !1198, inlinedAt: !2046)
!2052 = !DILocation(line: 72, column: 8, scope: !1198, inlinedAt: !2046)
!2053 = !DILocation(line: 74, column: 9, scope: !1198, inlinedAt: !2046)
!2054 = !DILocation(line: 76, column: 3, scope: !1198, inlinedAt: !2046)
!2055 = !DILocation(line: 37, column: 3, scope: !1228, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 78, column: 17, scope: !1198, inlinedAt: !2046)
!2057 = !DILocation(line: 37, column: 9, scope: !1228, inlinedAt: !2056)
!2058 = !DILocation(line: 38, column: 38, scope: !1228, inlinedAt: !2056)
!2059 = !DILocation(line: 40, column: 8, scope: !1239, inlinedAt: !2056)
!2060 = !DILocation(line: 40, column: 7, scope: !1228, inlinedAt: !2056)
!2061 = !DILocation(line: 38, column: 20, scope: !1228, inlinedAt: !2056)
!2062 = !DILocation(line: 43, column: 15, scope: !1228, inlinedAt: !2056)
!2063 = !DILocation(line: 47, column: 37, scope: !1244, inlinedAt: !2056)
!2064 = !DILocation(line: 47, column: 18, scope: !1244, inlinedAt: !2056)
!2065 = !DILocation(line: 47, column: 41, scope: !1244, inlinedAt: !2056)
!2066 = !DILocation(line: 0, scope: !1244, inlinedAt: !2056)
!2067 = !DILocation(line: 47, column: 7, scope: !1228, inlinedAt: !2056)
!2068 = !DILocation(line: 49, column: 25, scope: !1250, inlinedAt: !2056)
!2069 = !DILocation(line: 50, column: 25, scope: !1250, inlinedAt: !2056)
!2070 = !DILocation(line: 51, column: 3, scope: !1250, inlinedAt: !2056)
!2071 = !DILocation(line: 52, column: 25, scope: !1254, inlinedAt: !2056)
!2072 = !DILocation(line: 53, column: 29, scope: !1256, inlinedAt: !2056)
!2073 = !DILocation(line: 53, column: 9, scope: !1254, inlinedAt: !2056)
!2074 = !DILocation(line: 59, column: 3, scope: !1228, inlinedAt: !2056)
!2075 = !DILocation(line: 0, scope: !1198, inlinedAt: !2046)
!2076 = !DILocation(line: 0, scope: !1228, inlinedAt: !2056)
!2077 = !DILocation(line: 60, column: 1, scope: !1228, inlinedAt: !2056)
!2078 = !DILocation(line: 112, column: 19, scope: !1263, inlinedAt: !2046)
!2079 = !DILocation(line: 112, column: 25, scope: !1263, inlinedAt: !2046)
!2080 = !DILocation(line: 112, column: 9, scope: !1214, inlinedAt: !2046)
!2081 = !DILocation(line: 0, scope: !1267, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 119, column: 12, scope: !1214, inlinedAt: !2046)
!2083 = !DILocation(line: 46, column: 10, scope: !2084, inlinedAt: !2100)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !73, line: 44, column: 23)
!2085 = distinct !DISubprogram(name: "jhash", scope: !73, file: !73, line: 37, type: !2086, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!72, !2088, !72, !72}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2091 = !DILocalVariable(name: "key", arg: 1, scope: !2085, file: !73, line: 37, type: !2088)
!2092 = !DILocalVariable(name: "length", arg: 2, scope: !2085, file: !73, line: 37, type: !72)
!2093 = !DILocalVariable(name: "initval", arg: 3, scope: !2085, file: !73, line: 37, type: !72)
!2094 = !DILocalVariable(name: "a", scope: !2085, file: !73, line: 39, type: !72)
!2095 = !DILocalVariable(name: "b", scope: !2085, file: !73, line: 39, type: !72)
!2096 = !DILocalVariable(name: "c", scope: !2085, file: !73, line: 39, type: !72)
!2097 = !DILocalVariable(name: "k", scope: !2085, file: !73, line: 40, type: !2098)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!2100 = distinct !DILocation(line: 28, column: 25, scope: !2101, inlinedAt: !2082)
!2101 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 27, column: 21)
!2102 = !DILocation(line: 47, column: 10, scope: !2084, inlinedAt: !2100)
!2103 = !DILocation(line: 61, column: 22, scope: !2104, inlinedAt: !2100)
!2104 = distinct !DILexicalBlock(scope: !2085, file: !73, line: 52, column: 19)
!2105 = !DILocation(line: 62, column: 22, scope: !2104, inlinedAt: !2100)
!2106 = !DILocation(line: 63, column: 22, scope: !2104, inlinedAt: !2100)
!2107 = !DILocation(line: 64, column: 17, scope: !2104, inlinedAt: !2100)
!2108 = !DILocation(line: 116, column: 30, scope: !1276, inlinedAt: !2046)
!2109 = !DILocation(line: 116, column: 7, scope: !1276, inlinedAt: !2046)
!2110 = !DILocation(line: 116, column: 28, scope: !1276, inlinedAt: !2046)
!2111 = !DILocation(line: 117, column: 7, scope: !1276, inlinedAt: !2046)
!2112 = !DILocation(line: 118, column: 5, scope: !1276, inlinedAt: !2046)
!2113 = !DILocation(line: 25, column: 64, scope: !1268, inlinedAt: !2082)
!2114 = !DILocation(line: 37, column: 37, scope: !2085, inlinedAt: !2100)
!2115 = !DILocation(line: 37, column: 46, scope: !2085, inlinedAt: !2100)
!2116 = !DILocation(line: 37, column: 58, scope: !2085, inlinedAt: !2100)
!2117 = !DILocation(line: 40, column: 24, scope: !2085, inlinedAt: !2100)
!2118 = !DILocation(line: 39, column: 13, scope: !2085, inlinedAt: !2100)
!2119 = !DILocation(line: 39, column: 10, scope: !2085, inlinedAt: !2100)
!2120 = !DILocation(line: 39, column: 7, scope: !2085, inlinedAt: !2100)
!2121 = !DILocation(line: 47, column: 7, scope: !2084, inlinedAt: !2100)
!2122 = !DILocation(line: 48, column: 5, scope: !2123, inlinedAt: !2100)
!2123 = distinct !DILexicalBlock(scope: !2084, file: !73, line: 48, column: 5)
!2124 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 48, column: 5, scope: !2123, inlinedAt: !2100)
!2126 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2125)
!2127 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2125)
!2128 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2125)
!2129 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2125)
!2130 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 48, column: 5, scope: !2123, inlinedAt: !2100)
!2132 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2131)
!2133 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2131)
!2134 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2131)
!2135 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2131)
!2136 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 48, column: 5, scope: !2123, inlinedAt: !2100)
!2138 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2137)
!2139 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2137)
!2140 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2137)
!2141 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2137)
!2142 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 48, column: 5, scope: !2123, inlinedAt: !2100)
!2144 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2143)
!2145 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2143)
!2146 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2143)
!2147 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2143)
!2148 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 48, column: 5, scope: !2123, inlinedAt: !2100)
!2150 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2149)
!2151 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2149)
!2152 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2149)
!2153 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2149)
!2154 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 48, column: 5, scope: !2123, inlinedAt: !2100)
!2156 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2155)
!2157 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2155)
!2158 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2155)
!2159 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2155)
!2160 = !DILocation(line: 61, column: 14, scope: !2104, inlinedAt: !2100)
!2161 = !DILocation(line: 62, column: 14, scope: !2104, inlinedAt: !2100)
!2162 = !DILocation(line: 63, column: 14, scope: !2104, inlinedAt: !2100)
!2163 = !DILocation(line: 64, column: 14, scope: !2104, inlinedAt: !2100)
!2164 = !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2165 = distinct !DILexicalBlock(scope: !2104, file: !73, line: 65, column: 6)
!2166 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2168 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2167)
!2169 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2167)
!2170 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2167)
!2171 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2167)
!2172 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2174 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2173)
!2175 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2173)
!2176 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2173)
!2177 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2173)
!2178 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2180 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2179)
!2181 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2179)
!2182 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2179)
!2183 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2179)
!2184 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2186 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2185)
!2187 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2185)
!2188 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2185)
!2189 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2185)
!2190 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2192 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2191)
!2193 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2191)
!2194 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2191)
!2195 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2191)
!2196 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2198 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2197)
!2199 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2197)
!2200 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2197)
!2201 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2197)
!2202 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 65, column: 6, scope: !2165, inlinedAt: !2100)
!2204 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2203)
!2205 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2203)
!2206 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2203)
!2207 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2203)
!2208 = !DILocation(line: 29, column: 36, scope: !2101, inlinedAt: !2082)
!2209 = !DILocation(line: 82, column: 36, scope: !1285, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 28, column: 12, scope: !2101, inlinedAt: !2082)
!2211 = !DILocation(line: 82, column: 43, scope: !1285, inlinedAt: !2210)
!2212 = !DILocation(line: 82, column: 50, scope: !1285, inlinedAt: !2210)
!2213 = !DILocation(line: 73, column: 38, scope: !1295, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 84, column: 10, scope: !1285, inlinedAt: !2210)
!2215 = !DILocation(line: 73, column: 45, scope: !1295, inlinedAt: !2214)
!2216 = !DILocation(line: 73, column: 52, scope: !1295, inlinedAt: !2214)
!2217 = !DILocation(line: 73, column: 59, scope: !1295, inlinedAt: !2214)
!2218 = !DILocation(line: 75, column: 5, scope: !1295, inlinedAt: !2214)
!2219 = !DILocation(line: 76, column: 5, scope: !1295, inlinedAt: !2214)
!2220 = !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2221 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2223 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2222)
!2224 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2222)
!2225 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2222)
!2226 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2222)
!2227 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2229 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2228)
!2230 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2228)
!2231 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2228)
!2232 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2228)
!2233 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2235 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2234)
!2236 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2234)
!2237 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2234)
!2238 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2234)
!2239 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2241 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2240)
!2242 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2240)
!2243 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2240)
!2244 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2240)
!2245 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2247 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2246)
!2248 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2246)
!2249 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2246)
!2250 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2246)
!2251 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2253 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2252)
!2254 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2252)
!2255 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2252)
!2256 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2252)
!2257 = !DILocation(line: 7, column: 33, scope: !1311, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 78, column: 3, scope: !1309, inlinedAt: !2214)
!2259 = !DILocation(line: 7, column: 52, scope: !1311, inlinedAt: !2258)
!2260 = !DILocation(line: 9, column: 16, scope: !1311, inlinedAt: !2258)
!2261 = !DILocation(line: 9, column: 34, scope: !1311, inlinedAt: !2258)
!2262 = !DILocation(line: 9, column: 26, scope: !1311, inlinedAt: !2258)
!2263 = !DILocation(line: 119, column: 48, scope: !1214, inlinedAt: !2046)
!2264 = !DILocation(line: 75, column: 9, scope: !1198, inlinedAt: !2046)
!2265 = !DILocation(line: 120, column: 34, scope: !1214, inlinedAt: !2046)
!2266 = !DILocation(line: 120, column: 21, scope: !1214, inlinedAt: !2046)
!2267 = !DILocation(line: 120, column: 43, scope: !1214, inlinedAt: !2046)
!2268 = !DILocation(line: 76, column: 9, scope: !1198, inlinedAt: !2046)
!2269 = !DILocation(line: 120, column: 9, scope: !1214, inlinedAt: !2046)
!2270 = !DILocation(line: 122, column: 16, scope: !1214, inlinedAt: !2046)
!2271 = !DILocation(line: 123, column: 9, scope: !1368, inlinedAt: !2046)
!2272 = !DILocation(line: 123, column: 8, scope: !1214, inlinedAt: !2046)
!2273 = !DILocation(line: 73, column: 10, scope: !1198, inlinedAt: !2046)
!2274 = !DILocation(line: 126, column: 11, scope: !1214, inlinedAt: !2046)
!2275 = !DILocation(line: 126, column: 9, scope: !1214, inlinedAt: !2046)
!2276 = !DILocation(line: 128, column: 9, scope: !1198, inlinedAt: !2046)
!2277 = !DILocation(line: 128, column: 20, scope: !1198, inlinedAt: !2046)
!2278 = !DILocation(line: 129, column: 11, scope: !1198, inlinedAt: !2046)
!2279 = !DILocation(line: 130, column: 8, scope: !1377, inlinedAt: !2046)
!2280 = !DILocation(line: 130, column: 7, scope: !1198, inlinedAt: !2046)
!2281 = !DILocation(line: 133, column: 19, scope: !1380, inlinedAt: !2046)
!2282 = !DILocation(line: 133, column: 25, scope: !1380, inlinedAt: !2046)
!2283 = !DILocation(line: 133, column: 41, scope: !1380, inlinedAt: !2046)
!2284 = !DILocation(line: 134, column: 20, scope: !1384, inlinedAt: !2046)
!2285 = !DILocation(line: 134, column: 26, scope: !1384, inlinedAt: !2046)
!2286 = !DILocation(line: 134, column: 9, scope: !1385, inlinedAt: !2046)
!2287 = !DILocation(line: 135, column: 19, scope: !1389, inlinedAt: !2046)
!2288 = !DILocation(line: 135, column: 25, scope: !1389, inlinedAt: !2046)
!2289 = !DILocation(line: 136, column: 5, scope: !1389, inlinedAt: !2046)
!2290 = !DILocation(line: 137, column: 23, scope: !1385, inlinedAt: !2046)
!2291 = !DILocation(line: 137, column: 17, scope: !1385, inlinedAt: !2046)
!2292 = !DILocation(line: 137, column: 21, scope: !1385, inlinedAt: !2046)
!2293 = !DILocation(line: 138, column: 5, scope: !1385, inlinedAt: !2046)
!2294 = !DILocation(line: 139, column: 3, scope: !1385, inlinedAt: !2046)
!2295 = !DILocation(line: 141, column: 1, scope: !1198, inlinedAt: !2046)
!2296 = !DILocation(line: 620, column: 10, scope: !465, inlinedAt: !468)
!2297 = !DILocation(line: 624, column: 19, scope: !465, inlinedAt: !468)
!2298 = !DILocation(line: 624, column: 22, scope: !465, inlinedAt: !468)
!2299 = !DILocation(line: 625, column: 5, scope: !465, inlinedAt: !468)
!2300 = !DILocation(line: 626, column: 3, scope: !456, inlinedAt: !468)
!2301 = !DILocation(line: 628, column: 10, scope: !418, inlinedAt: !468)
!2302 = !DILocation(line: 407, column: 21, scope: !418, inlinedAt: !468)
!2303 = !DILocation(line: 630, column: 8, scope: !1406, inlinedAt: !468)
!2304 = !DILocation(line: 630, column: 7, scope: !418, inlinedAt: !468)
!2305 = !DILocation(line: 634, column: 23, scope: !418, inlinedAt: !468)
!2306 = !DILocation(line: 417, column: 9, scope: !418, inlinedAt: !468)
!2307 = !DILocation(line: 634, column: 11, scope: !418, inlinedAt: !468)
!2308 = !DILocation(line: 635, column: 16, scope: !418, inlinedAt: !468)
!2309 = !DILocation(line: 636, column: 8, scope: !1413, inlinedAt: !468)
!2310 = !DILocation(line: 636, column: 7, scope: !418, inlinedAt: !468)
!2311 = !DILocation(line: 419, column: 9, scope: !418, inlinedAt: !468)
!2312 = !DILocation(line: 640, column: 21, scope: !418, inlinedAt: !468)
!2313 = !DILocation(line: 639, column: 18, scope: !418, inlinedAt: !468)
!2314 = !DILocation(line: 643, column: 56, scope: !418, inlinedAt: !468)
!2315 = !DILocation(line: 643, column: 50, scope: !418, inlinedAt: !468)
!2316 = !DILocation(line: 643, column: 16, scope: !418, inlinedAt: !468)
!2317 = !DILocation(line: 644, column: 8, scope: !1422, inlinedAt: !468)
!2318 = !DILocation(line: 644, column: 7, scope: !418, inlinedAt: !468)
!2319 = !DILocation(line: 647, column: 18, scope: !418, inlinedAt: !468)
!2320 = !DILocation(line: 654, column: 12, scope: !1426, inlinedAt: !468)
!2321 = !DILocation(line: 654, column: 18, scope: !1426, inlinedAt: !468)
!2322 = !DILocation(line: 654, column: 7, scope: !418, inlinedAt: !468)
!2323 = !DILocation(line: 42, column: 20, scope: !1432, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 655, column: 9, scope: !1454, inlinedAt: !468)
!2325 = !DILocation(line: 43, column: 23, scope: !1432, inlinedAt: !2324)
!2326 = !DILocation(line: 45, column: 32, scope: !1432, inlinedAt: !2324)
!2327 = !DILocation(line: 46, column: 29, scope: !1432, inlinedAt: !2324)
!2328 = !DILocation(line: 47, column: 11, scope: !1432, inlinedAt: !2324)
!2329 = !DILocation(line: 58, column: 27, scope: !1461, inlinedAt: !2324)
!2330 = !DILocation(line: 58, column: 7, scope: !1461, inlinedAt: !2324)
!2331 = !DILocation(line: 58, column: 7, scope: !1432, inlinedAt: !2324)
!2332 = !DILocation(line: 61, column: 28, scope: !1432, inlinedAt: !2324)
!2333 = !DILocation(line: 61, column: 17, scope: !1432, inlinedAt: !2324)
!2334 = !DILocation(line: 61, column: 10, scope: !1432, inlinedAt: !2324)
!2335 = !DILocation(line: 48, column: 9, scope: !1432, inlinedAt: !2324)
!2336 = !DILocation(line: 62, column: 32, scope: !1432, inlinedAt: !2324)
!2337 = !DILocation(line: 62, column: 21, scope: !1432, inlinedAt: !2324)
!2338 = !DILocation(line: 49, column: 9, scope: !1432, inlinedAt: !2324)
!2339 = !DILocation(line: 63, column: 13, scope: !1432, inlinedAt: !2324)
!2340 = !DILocation(line: 51, column: 19, scope: !1432, inlinedAt: !2324)
!2341 = !DILocation(line: 64, column: 15, scope: !1432, inlinedAt: !2324)
!2342 = !DILocation(line: 50, column: 19, scope: !1432, inlinedAt: !2324)
!2343 = !DILocation(line: 65, column: 18, scope: !1432, inlinedAt: !2324)
!2344 = !DILocation(line: 52, column: 19, scope: !1432, inlinedAt: !2324)
!2345 = !DILocation(line: 66, column: 15, scope: !1478, inlinedAt: !2324)
!2346 = !DILocation(line: 66, column: 21, scope: !1478, inlinedAt: !2324)
!2347 = !DILocation(line: 66, column: 19, scope: !1478, inlinedAt: !2324)
!2348 = !DILocation(line: 66, column: 30, scope: !1478, inlinedAt: !2324)
!2349 = !DILocation(line: 66, column: 41, scope: !1478, inlinedAt: !2324)
!2350 = !DILocation(line: 66, column: 45, scope: !1478, inlinedAt: !2324)
!2351 = !DILocation(line: 66, column: 56, scope: !1478, inlinedAt: !2324)
!2352 = !DILocation(line: 66, column: 64, scope: !1478, inlinedAt: !2324)
!2353 = !DILocation(line: 66, column: 70, scope: !1478, inlinedAt: !2324)
!2354 = !DILocation(line: 66, column: 68, scope: !1478, inlinedAt: !2324)
!2355 = !DILocation(line: 66, column: 7, scope: !1432, inlinedAt: !2324)
!2356 = !DILocation(line: 69, column: 3, scope: !1432, inlinedAt: !2324)
!2357 = !DILocation(line: 70, column: 3, scope: !1432, inlinedAt: !2324)
!2358 = !DILocation(line: 71, column: 12, scope: !1432, inlinedAt: !2324)
!2359 = !DILocation(line: 71, column: 22, scope: !1432, inlinedAt: !2324)
!2360 = !DILocation(line: 56, column: 8, scope: !1432, inlinedAt: !2324)
!2361 = !DILocation(line: 75, column: 17, scope: !2362, inlinedAt: !2324)
!2362 = distinct !DILexicalBlock(scope: !1496, file: !1433, line: 73, column: 16)
!2363 = !DILocation(line: 75, column: 39, scope: !2362, inlinedAt: !2324)
!2364 = !DILocation(line: 75, column: 37, scope: !2362, inlinedAt: !2324)
!2365 = !DILocation(line: 54, column: 9, scope: !1432, inlinedAt: !2324)
!2366 = !DILocation(line: 76, column: 29, scope: !2362, inlinedAt: !2324)
!2367 = !DILocation(line: 53, column: 9, scope: !1432, inlinedAt: !2324)
!2368 = !DILocation(line: 55, column: 9, scope: !1432, inlinedAt: !2324)
!2369 = !DILocation(line: 88, column: 29, scope: !1432, inlinedAt: !2324)
!2370 = !DILocation(line: 58, column: 21, scope: !1504, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 88, column: 3, scope: !1432, inlinedAt: !2324)
!2372 = !DILocation(line: 59, column: 10, scope: !1504, inlinedAt: !2371)
!2373 = !DILocation(line: 60, column: 12, scope: !1504, inlinedAt: !2371)
!2374 = !DILocation(line: 61, column: 12, scope: !1504, inlinedAt: !2371)
!2375 = !DILocation(line: 62, column: 11, scope: !1504, inlinedAt: !2371)
!2376 = !DILocation(line: 63, column: 10, scope: !1504, inlinedAt: !2371)
!2377 = !DILocation(line: 65, column: 3, scope: !1504, inlinedAt: !2371)
!2378 = !DILocation(line: 67, column: 32, scope: !1504, inlinedAt: !2371)
!2379 = !DILocation(line: 67, column: 18, scope: !1504, inlinedAt: !2371)
!2380 = !DILocation(line: 68, column: 35, scope: !1504, inlinedAt: !2371)
!2381 = !DILocation(line: 68, column: 21, scope: !1504, inlinedAt: !2371)
!2382 = !DILocation(line: 72, column: 9, scope: !1504, inlinedAt: !2371)
!2383 = !DILocation(line: 72, column: 17, scope: !1504, inlinedAt: !2371)
!2384 = !DILocation(line: 73, column: 9, scope: !1504, inlinedAt: !2371)
!2385 = !DILocation(line: 73, column: 21, scope: !1504, inlinedAt: !2371)
!2386 = !DILocation(line: 74, column: 9, scope: !1504, inlinedAt: !2371)
!2387 = !DILocation(line: 74, column: 19, scope: !1504, inlinedAt: !2371)
!2388 = !DILocation(line: 75, column: 3, scope: !1504, inlinedAt: !2371)
!2389 = !DILocation(line: 76, column: 3, scope: !1504, inlinedAt: !2371)
!2390 = !DILocation(line: 655, column: 8, scope: !1455, inlinedAt: !468)
!2391 = !DILocation(line: 94, column: 20, scope: !1541, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 659, column: 9, scope: !1558, inlinedAt: !468)
!2393 = !DILocation(line: 95, column: 23, scope: !1541, inlinedAt: !2392)
!2394 = !DILocation(line: 96, column: 32, scope: !1541, inlinedAt: !2392)
!2395 = !DILocation(line: 97, column: 29, scope: !1541, inlinedAt: !2392)
!2396 = !DILocation(line: 98, column: 11, scope: !1541, inlinedAt: !2392)
!2397 = !DILocation(line: 104, column: 21, scope: !1541, inlinedAt: !2392)
!2398 = !DILocation(line: 104, column: 9, scope: !1541, inlinedAt: !2392)
!2399 = !DILocation(line: 105, column: 13, scope: !1541, inlinedAt: !2392)
!2400 = !DILocation(line: 106, column: 27, scope: !1541, inlinedAt: !2392)
!2401 = !DILocation(line: 107, column: 9, scope: !1541, inlinedAt: !2392)
!2402 = !DILocation(line: 109, column: 27, scope: !1570, inlinedAt: !2392)
!2403 = !DILocation(line: 109, column: 7, scope: !1570, inlinedAt: !2392)
!2404 = !DILocation(line: 109, column: 7, scope: !1541, inlinedAt: !2392)
!2405 = !DILocation(line: 112, column: 28, scope: !1541, inlinedAt: !2392)
!2406 = !DILocation(line: 112, column: 17, scope: !1541, inlinedAt: !2392)
!2407 = !DILocation(line: 112, column: 10, scope: !1541, inlinedAt: !2392)
!2408 = !DILocation(line: 99, column: 9, scope: !1541, inlinedAt: !2392)
!2409 = !DILocation(line: 113, column: 32, scope: !1541, inlinedAt: !2392)
!2410 = !DILocation(line: 113, column: 21, scope: !1541, inlinedAt: !2392)
!2411 = !DILocation(line: 100, column: 9, scope: !1541, inlinedAt: !2392)
!2412 = !DILocation(line: 114, column: 13, scope: !1541, inlinedAt: !2392)
!2413 = !DILocation(line: 102, column: 19, scope: !1541, inlinedAt: !2392)
!2414 = !DILocation(line: 115, column: 14, scope: !1541, inlinedAt: !2392)
!2415 = !DILocation(line: 101, column: 17, scope: !1541, inlinedAt: !2392)
!2416 = !DILocation(line: 116, column: 18, scope: !1541, inlinedAt: !2392)
!2417 = !DILocation(line: 103, column: 19, scope: !1541, inlinedAt: !2392)
!2418 = !DILocation(line: 117, column: 15, scope: !1587, inlinedAt: !2392)
!2419 = !DILocation(line: 117, column: 21, scope: !1587, inlinedAt: !2392)
!2420 = !DILocation(line: 117, column: 19, scope: !1587, inlinedAt: !2392)
!2421 = !DILocation(line: 117, column: 30, scope: !1587, inlinedAt: !2392)
!2422 = !DILocation(line: 117, column: 41, scope: !1587, inlinedAt: !2392)
!2423 = !DILocation(line: 117, column: 45, scope: !1587, inlinedAt: !2392)
!2424 = !DILocation(line: 117, column: 56, scope: !1587, inlinedAt: !2392)
!2425 = !DILocation(line: 117, column: 63, scope: !1587, inlinedAt: !2392)
!2426 = !DILocation(line: 117, column: 69, scope: !1587, inlinedAt: !2392)
!2427 = !DILocation(line: 117, column: 67, scope: !1587, inlinedAt: !2392)
!2428 = !DILocation(line: 117, column: 7, scope: !1541, inlinedAt: !2392)
!2429 = !DILocation(line: 120, column: 3, scope: !1541, inlinedAt: !2392)
!2430 = !DILocation(line: 121, column: 3, scope: !1541, inlinedAt: !2392)
!2431 = !DILocation(line: 122, column: 12, scope: !1541, inlinedAt: !2392)
!2432 = !DILocation(line: 122, column: 22, scope: !1541, inlinedAt: !2392)
!2433 = !DILocation(line: 126, column: 13, scope: !1541, inlinedAt: !2392)
!2434 = !DILocation(line: 127, column: 20, scope: !1541, inlinedAt: !2392)
!2435 = !DILocation(line: 127, column: 33, scope: !1541, inlinedAt: !2392)
!2436 = !DILocation(line: 128, column: 12, scope: !1541, inlinedAt: !2392)
!2437 = !DILocation(line: 32, column: 19, scope: !1607, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 124, column: 3, scope: !1541, inlinedAt: !2392)
!2439 = !DILocation(line: 33, column: 10, scope: !1607, inlinedAt: !2438)
!2440 = !DILocation(line: 34, column: 11, scope: !1607, inlinedAt: !2438)
!2441 = !DILocation(line: 35, column: 11, scope: !1607, inlinedAt: !2438)
!2442 = !DILocation(line: 36, column: 11, scope: !1607, inlinedAt: !2438)
!2443 = !DILocation(line: 37, column: 10, scope: !1607, inlinedAt: !2438)
!2444 = !DILocation(line: 38, column: 9, scope: !1607, inlinedAt: !2438)
!2445 = !DILocation(line: 40, column: 12, scope: !1607, inlinedAt: !2438)
!2446 = !DILocation(line: 41, column: 8, scope: !1607, inlinedAt: !2438)
!2447 = !DILocation(line: 41, column: 17, scope: !1607, inlinedAt: !2438)
!2448 = !DILocation(line: 42, column: 8, scope: !1607, inlinedAt: !2438)
!2449 = !DILocation(line: 42, column: 17, scope: !1607, inlinedAt: !2438)
!2450 = !DILocation(line: 43, column: 8, scope: !1607, inlinedAt: !2438)
!2451 = !DILocation(line: 45, column: 8, scope: !1607, inlinedAt: !2438)
!2452 = !DILocation(line: 45, column: 12, scope: !1607, inlinedAt: !2438)
!2453 = !DILocation(line: 49, column: 18, scope: !1607, inlinedAt: !2438)
!2454 = !DILocation(line: 49, column: 8, scope: !1607, inlinedAt: !2438)
!2455 = !DILocation(line: 49, column: 16, scope: !1607, inlinedAt: !2438)
!2456 = !DILocation(line: 50, column: 8, scope: !1607, inlinedAt: !2438)
!2457 = !DILocation(line: 50, column: 14, scope: !1607, inlinedAt: !2438)
!2458 = !DILocation(line: 51, column: 8, scope: !1607, inlinedAt: !2438)
!2459 = !DILocation(line: 51, column: 14, scope: !1607, inlinedAt: !2438)
!2460 = !DILocation(line: 52, column: 8, scope: !1607, inlinedAt: !2438)
!2461 = !DILocation(line: 52, column: 12, scope: !1607, inlinedAt: !2438)
!2462 = !DILocation(line: 53, column: 43, scope: !649, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 53, column: 3, scope: !1607, inlinedAt: !2438)
!2464 = !DILocation(line: 54, column: 25, scope: !649, inlinedAt: !2463)
!2465 = !DILocation(line: 54, column: 10, scope: !649, inlinedAt: !2463)
!2466 = !DILocation(line: 56, column: 12, scope: !658, inlinedAt: !2463)
!2467 = !DILocation(line: 57, column: 15, scope: !665, inlinedAt: !2463)
!2468 = !DILocation(line: 57, column: 28, scope: !665, inlinedAt: !2463)
!2469 = !DILocation(line: 57, column: 12, scope: !665, inlinedAt: !2463)
!2470 = !DILocation(line: 31, column: 44, scope: !671, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 59, column: 11, scope: !649, inlinedAt: !2463)
!2472 = !DILocation(line: 32, column: 7, scope: !671, inlinedAt: !2471)
!2473 = !DILocation(line: 35, column: 14, scope: !680, inlinedAt: !2471)
!2474 = !DILocation(line: 35, column: 9, scope: !681, inlinedAt: !2471)
!2475 = !DILocation(line: 54, column: 16, scope: !1607, inlinedAt: !2438)
!2476 = !DILocation(line: 54, column: 14, scope: !1607, inlinedAt: !2438)
!2477 = !DILocation(line: 659, column: 8, scope: !1559, inlinedAt: !468)
!2478 = !DILocation(line: 665, column: 1, scope: !418, inlinedAt: !468)
!2479 = !DILocation(line: 686, column: 5, scope: !469)
!2480 = !DILocation(line: 0, scope: !251)
!2481 = !DILocation(line: 691, column: 1, scope: !251)
