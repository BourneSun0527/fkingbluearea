// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @split_qkv_rmsnorm_rope_kernel(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xi64, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg8: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg9: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg10: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32, %arg13: i32, %arg14: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, true, true, true, true, false, false, false, false]> : vector<15xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.vf_mode = #hivm.vf_mode<SIMD>, mix_mode = "aiv", parallel_mode = "simd"} {
  %c17856_i64 = arith.constant 17856 : i64
  %c12480_i64 = arith.constant 12480 : i64
  %c12352_i64 = arith.constant 12352 : i64
  %c17600_i64 = arith.constant 17600 : i64
  %c12096_i64 = arith.constant 12096 : i64
  %c17472_i64 = arith.constant 17472 : i64
  %c11968_i64 = arith.constant 11968 : i64
  %c17344_i64 = arith.constant 17344 : i64
  %c11840_i64 = arith.constant 11840 : i64
  %c11328_i64 = arith.constant 11328 : i64
  %c17088_i64 = arith.constant 17088 : i64
  %c11072_i64 = arith.constant 11072 : i64
  %c11040_i64 = arith.constant 11040 : i64
  %c10784_i64 = arith.constant 10784 : i64
  %c15040_i64 = arith.constant 15040 : i64
  %c8736_i64 = arith.constant 8736 : i64
  %c7712_i64 = arith.constant 7712 : i64
  %c6688_i64 = arith.constant 6688 : i64
  %c6656_i64 = arith.constant 6656 : i64
  %c14912_i64 = arith.constant 14912 : i64
  %c6528_i64 = arith.constant 6528 : i64
  %c14784_i64 = arith.constant 14784 : i64
  %c6400_i64 = arith.constant 6400 : i64
  %c2304_i64 = arith.constant 2304 : i64
  %c12736_i64 = arith.constant 12736 : i64
  %c256_i64 = arith.constant 256 : i64
  %c0_i64 = arith.constant 0 : i64
  %cst = arith.constant 0.000000e+00 : bf16
  %c0 = arith.constant 0 : index
  %c4608_i32 = arith.constant 4608 : i32
  %c512_i32 = arith.constant 512 : i32
  %c128_i32 = arith.constant 128 : i32
  %c1024_i32 = arith.constant 1024 : i32
  %c4096_i32 = arith.constant 4096 : i32
  %c5120_i32 = arith.constant 5120 : i32
  %c1024 = arith.constant 1024 : index
  %c4096 = arith.constant 4096 : index
  %cst_0 = arith.constant 0.000000e+00 : f32
  %c128 = arith.constant 128 : index
  %c512 = arith.constant 512 : index
  %c128_i64 = arith.constant 128 : i64
  hivm.hir.set_ctrl false at ctrl[60]
  hivm.hir.set_ctrl true at ctrl[48]
  %0 = arith.muli %arg12, %arg13 : i32
  %1 = arith.muli %0, %arg14 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.divsi %3, %arg14 : i32
  %5 = arith.remsi %4, %arg13 : i32
  %6 = arith.muli %arg14, %arg13 : i32
  %7 = arith.divsi %3, %6 : i32
  %8 = arith.remsi %7, %arg12 : i32
  %reinterpret_cast = memref.reinterpret_cast %arg9 to offset: [0], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1]>, #hivm.address_space<gm>>
  %9 = hivm.hir.pointer_cast(%c0_i64) : memref<128xbf16, #hivm.address_space<ub>>
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID4>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID6>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID7>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID3>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID4>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID5>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.load ins(%reinterpret_cast : memref<128xbf16, strided<[1]>, #hivm.address_space<gm>>) outs(%9 : memref<128xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
  %10 = arith.muli %8, %c5120_i32 : i32
  %11 = arith.muli %8, %c4096_i32 : i32
  %12 = arith.muli %arg12, %c5120_i32 : i32
  %13 = arith.muli %arg12, %c4096_i32 : i32
  %14 = arith.muli %5, %c1024_i32 : i32
  %15 = arith.index_cast %14 : i32 to index
  %16 = affine.apply affine_map<()[s0] -> (s0 + 1024)>()[%15]
  %17 = arith.maxsi %15, %c4096 : index
  %18 = arith.minsi %16, %17 : index
  %19 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%18, %15]
  %20 = arith.cmpi slt, %19, %c1024 : index
  %21:2 = scf.for %arg15 = %8 to %arg11 step %arg12 iter_args(%arg16 = %10, %arg17 = %11) -> (i32, i32)  : i32 {
    %37 = arith.index_cast %arg15 : i32 to index
    %38 = arith.index_cast %8 : i32 to index
    %39 = arith.index_cast %arg11 : i32 to index
    %40 = arith.index_cast %arg12 : i32 to index
    %41 = affine.apply affine_map<()[s0, s1, s2] -> (((s0 - s1) floordiv s2) mod 2)>()[%37, %38, %40]
    %42 = arith.index_cast %41 : index to i64
    %c0_i64_2 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %c1_i64_3 = arith.constant 1 : i64
    %43 = arith.cmpi eq, %42, %c1_i64_3 : i64
    %44 = arith.select %43, %c1_i64, %c0_i64_2 : i64
    %c3_i64 = arith.constant 3 : i64
    %c4_i64 = arith.constant 4 : i64
    %c1_i64_4 = arith.constant 1 : i64
    %45 = arith.cmpi eq, %42, %c1_i64_4 : i64
    %46 = arith.select %45, %c4_i64, %c3_i64 : i64
    %c1_i64_5 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %c1_i64_6 = arith.constant 1 : i64
    %47 = arith.cmpi eq, %42, %c1_i64_6 : i64
    %48 = arith.select %47, %c2_i64, %c1_i64_5 : i64
    %49 = hivm.hir.pointer_cast(%c8736_i64, %c15040_i64) : memref<8x128xbf16, #hivm.address_space<ub>>
    annotation.mark %49 {hivm.multi_buffer = 2 : i32} : memref<8x128xbf16, #hivm.address_space<ub>>
    %50 = hivm.hir.pointer_cast(%c6400_i64, %c14784_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %50 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %51 = hivm.hir.pointer_cast(%c6528_i64, %c14912_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %51 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %52 = hivm.hir.pointer_cast(%c256_i64, %c12736_i64) : memref<8x128xbf16, #hivm.address_space<ub>>
    annotation.mark %52 {hivm.multi_buffer = 2 : i32} : memref<8x128xbf16, #hivm.address_space<ub>>
    %53 = arith.index_cast %arg16 : i32 to index
    %54 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%53, %15]
    %reinterpret_cast_7 = memref.reinterpret_cast %arg3 to offset: [%54], sizes: [1024], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<1024xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %collapse_shape = memref.collapse_shape %52 [[0, 1]] : memref<8x128xbf16, #hivm.address_space<ub>> into memref<1024xbf16, #hivm.address_space<ub>>
    scf.if %20 {
      func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_0(%52) {hivm.vector_function, no_inline} : (memref<8x128xbf16, #hivm.address_space<ub>>) -> ()
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
    } {hivm.unlikely_condition}
    %subview = memref.subview %reinterpret_cast_7[0] [%19] [1] : memref<1024xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_8 = memref.subview %collapse_shape[0] [%19] [1] : memref<1024xbf16, #hivm.address_space<ub>> to memref<?xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, %48]
    hivm.hir.load ins(%subview : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_8 : memref<?xbf16, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : bf16 left_padding_num = %c0 : index eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    %55 = hivm.hir.pointer_cast(%c2304_i64) : memref<8x128xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_1(%52, %55) {hivm.vector_function, no_inline} : (memref<8x128xbf16, #hivm.address_space<ub>>, memref<8x128xf32, #hivm.address_space<ub>>) -> ()
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, %48]
    %56 = arith.index_cast %arg15 : i32 to index
    %reinterpret_cast_9 = memref.reinterpret_cast %arg5 to offset: [%56], sizes: [1], strides: [1] : memref<?xi64, #hivm.address_space<gm>> to memref<1xi64, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %57 = memref.load %reinterpret_cast_9[%c0] : memref<1xi64, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %58 = arith.muli %57, %c128_i64 : i64
    %59 = arith.index_cast %58 : i64 to index
    %reinterpret_cast_10 = memref.reinterpret_cast %arg4 to offset: [%59], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, %46]
    hivm.hir.load ins(%reinterpret_cast_10 : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%50 : memref<64xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
    %60 = affine.apply affine_map<()[s0] -> (s0 + 64)>()[%59]
    %reinterpret_cast_11 = memref.reinterpret_cast %arg4 to offset: [%60], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.load ins(%reinterpret_cast_11 : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%51 : memref<64xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
    %61 = hivm.hir.pointer_cast(%c6656_i64) : memref<8xf32, #hivm.address_space<ub>>
    %62 = hivm.hir.pointer_cast(%c6688_i64) : memref<8x64xbf16, #hivm.address_space<ub>>
    %63 = hivm.hir.pointer_cast(%c7712_i64) : memref<8x64xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, %44]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_2(%55, %61, %9, %50, %9, %51, %62, %63, %49) {hivm.vector_function, no_inline} : (memref<8x128xf32, #hivm.address_space<ub>>, memref<8xf32, #hivm.address_space<ub>>, memref<128xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>, memref<128xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>, memref<8x64xbf16, #hivm.address_space<ub>>, memref<8x64xbf16, #hivm.address_space<ub>>, memref<8x128xbf16, #hivm.address_space<ub>>) -> ()
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, %46]
    %subview_12 = memref.subview %49[0, 0] [8, 64] [1, 1] : memref<8x128xbf16, #hivm.address_space<ub>> to memref<8x64xbf16, strided<[128, 1]>, #hivm.address_space<ub>>
    hivm.hir.copy ins(%62 : memref<8x64xbf16, #hivm.address_space<ub>>) outs(%subview_12 : memref<8x64xbf16, strided<[128, 1]>, #hivm.address_space<ub>>)
    %subview_13 = memref.subview %49[0, 64] [8, 64] [1, 1] : memref<8x128xbf16, #hivm.address_space<ub>> to memref<8x64xbf16, strided<[128, 1], offset: 64>, #hivm.address_space<ub>>
    hivm.hir.copy ins(%63 : memref<8x64xbf16, #hivm.address_space<ub>>) outs(%subview_13 : memref<8x64xbf16, strided<[128, 1], offset: 64>, #hivm.address_space<ub>>)
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    %64 = arith.index_cast %arg17 : i32 to index
    %65 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%64, %15]
    %reinterpret_cast_14 = memref.reinterpret_cast %arg6 to offset: [%65], sizes: [1024], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<1024xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %collapse_shape_15 = memref.collapse_shape %49 [[0, 1]] : memref<8x128xbf16, #hivm.address_space<ub>> into memref<1024xbf16, #hivm.address_space<ub>>
    %subview_16 = memref.subview %collapse_shape_15[0] [%19] [1] : memref<1024xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_17 = memref.subview %reinterpret_cast_14[0] [%19] [1] : memref<1024xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.pipe_barrier[<PIPE_MTE3>]
    hivm.hir.store ins(%subview_16 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_17 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, %44]
    %66 = arith.addi %arg16, %12 : i32
    %67 = arith.addi %arg17, %13 : i32
    scf.yield %66, %67 : i32, i32
  }
  %reinterpret_cast_1 = memref.reinterpret_cast %arg10 to offset: [0], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1]>, #hivm.address_space<gm>>
  %22 = hivm.hir.pointer_cast(%c10784_i64) : memref<128xbf16, #hivm.address_space<ub>>
  hivm.hir.load ins(%reinterpret_cast_1 : memref<128xbf16, strided<[1]>, #hivm.address_space<gm>>) outs(%22 : memref<128xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
  %23 = arith.addi %10, %c4096_i32 : i32
  %24 = arith.muli %8, %c512_i32 : i32
  %25 = arith.muli %arg12, %c512_i32 : i32
  %26 = arith.muli %5, %c128_i32 : i32
  %27 = arith.index_cast %26 : i32 to index
  %28 = affine.apply affine_map<()[s0] -> (s0 + 128)>()[%27]
  %29 = arith.maxsi %27, %c512 : index
  %30 = arith.minsi %28, %29 : index
  %31 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%30, %27]
  %32 = arith.cmpi slt, %31, %c128 : index
  %33 = hivm.hir.pointer_cast(%c11040_i64) : memref<f32, #hivm.address_space<ub>>
  %34:2 = scf.for %arg15 = %8 to %arg11 step %arg12 iter_args(%arg16 = %23, %arg17 = %24) -> (i32, i32)  : i32 {
    %37 = arith.index_cast %arg15 : i32 to index
    %38 = arith.index_cast %8 : i32 to index
    %39 = arith.index_cast %arg11 : i32 to index
    %40 = arith.index_cast %arg12 : i32 to index
    %41 = affine.apply affine_map<()[s0, s1, s2] -> (((s0 - s1) floordiv s2) mod 2)>()[%37, %38, %40]
    %42 = arith.index_cast %41 : index to i64
    %c2_i64 = arith.constant 2 : i64
    %c3_i64 = arith.constant 3 : i64
    %c1_i64 = arith.constant 1 : i64
    %43 = arith.cmpi eq, %42, %c1_i64 : i64
    %44 = arith.select %43, %c3_i64, %c2_i64 : i64
    %c6_i64 = arith.constant 6 : i64
    %c7_i64 = arith.constant 7 : i64
    %c1_i64_2 = arith.constant 1 : i64
    %45 = arith.cmpi eq, %42, %c1_i64_2 : i64
    %46 = arith.select %45, %c7_i64, %c6_i64 : i64
    %47 = hivm.hir.pointer_cast(%c12096_i64, %c17600_i64) : memref<128xbf16, #hivm.address_space<ub>>
    annotation.mark %47 {hivm.multi_buffer = 2 : i32} : memref<128xbf16, #hivm.address_space<ub>>
    %48 = hivm.hir.pointer_cast(%c11840_i64, %c17344_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %48 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %49 = hivm.hir.pointer_cast(%c11968_i64, %c17472_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %49 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %50 = hivm.hir.pointer_cast(%c11072_i64, %c17088_i64) : memref<128xbf16, #hivm.address_space<ub>>
    annotation.mark %50 {hivm.multi_buffer = 2 : i32} : memref<128xbf16, #hivm.address_space<ub>>
    %51 = arith.index_cast %arg16 : i32 to index
    %52 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%51, %27]
    %reinterpret_cast_3 = memref.reinterpret_cast %arg3 to offset: [%52], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    scf.if %32 {
      func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_3(%50) {hivm.vector_function, no_inline} : (memref<128xbf16, #hivm.address_space<ub>>) -> ()
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID5>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID5>]
    } {hivm.unlikely_condition}
    %subview = memref.subview %reinterpret_cast_3[0] [%31] [1] : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_4 = memref.subview %50[0] [%31] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<?xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, %46]
    hivm.hir.load ins(%subview : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_4 : memref<?xbf16, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : bf16 left_padding_num = %c0 : index eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID2>]
    %53 = hivm.hir.pointer_cast(%c11328_i64) : memref<128xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID2>]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_4(%50, %53) {hivm.vector_function, no_inline} : (memref<128xbf16, #hivm.address_space<ub>>, memref<128xf32, #hivm.address_space<ub>>) -> ()
    %54 = arith.index_cast %arg15 : i32 to index
    %reinterpret_cast_5 = memref.reinterpret_cast %arg5 to offset: [%54], sizes: [1], strides: [1] : memref<?xi64, #hivm.address_space<gm>> to memref<1xi64, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %55 = memref.load %reinterpret_cast_5[%c0] : memref<1xi64, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %56 = arith.muli %55, %c128_i64 : i64
    %57 = arith.index_cast %56 : i64 to index
    %reinterpret_cast_6 = memref.reinterpret_cast %arg4 to offset: [%57], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.load ins(%reinterpret_cast_6 : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%48 : memref<64xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
    %58 = affine.apply affine_map<()[s0] -> (s0 + 64)>()[%57]
    %reinterpret_cast_7 = memref.reinterpret_cast %arg4 to offset: [%58], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.load ins(%reinterpret_cast_7 : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%49 : memref<64xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID3>]
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
    memref.store %cst_0, %33[] : memref<f32, #hivm.address_space<ub>>
    hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
    hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, %44]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_5(%53, %33, %47) {hivm.vector_function, no_inline} : (memref<128xf32, #hivm.address_space<ub>>, memref<f32, #hivm.address_space<ub>>, memref<128xbf16, #hivm.address_space<ub>>) -> ()
    %expand_shape = memref.expand_shape %33 [] output_shape [1] : memref<f32, #hivm.address_space<ub>> into memref<1xf32, #hivm.address_space<ub>>
    %59 = hivm.hir.pointer_cast(%c12352_i64) : memref<64xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID3>]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_6(%expand_shape, %53, %22, %48, %49, %48, %59) {hivm.vector_function, no_inline} : (memref<1xf32, #hivm.address_space<ub>>, memref<128xf32, #hivm.address_space<ub>>, memref<128xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>) -> ()
    hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
    %subview_8 = memref.subview %47[0] [64] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<64xbf16, strided<[1]>, #hivm.address_space<ub>>
    hivm.hir.copy ins(%48 : memref<64xbf16, #hivm.address_space<ub>>) outs(%subview_8 : memref<64xbf16, strided<[1]>, #hivm.address_space<ub>>)
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, %46]
    %subview_9 = memref.subview %47[64] [64] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<64xbf16, strided<[1], offset: 64>, #hivm.address_space<ub>>
    hivm.hir.copy ins(%59 : memref<64xbf16, #hivm.address_space<ub>>) outs(%subview_9 : memref<64xbf16, strided<[1], offset: 64>, #hivm.address_space<ub>>)
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
    %60 = arith.index_cast %arg17 : i32 to index
    %61 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%60, %27]
    %reinterpret_cast_10 = memref.reinterpret_cast %arg7 to offset: [%61], sizes: [1, 128], strides: [128, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
    %collapse_shape = memref.collapse_shape %reinterpret_cast_10 [[0, 1]] : memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>> into memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_11 = memref.subview %47[0] [%31] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_12 = memref.subview %collapse_shape[0] [%31] [1] : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
    hivm.hir.pipe_barrier[<PIPE_MTE3>]
    hivm.hir.store ins(%subview_11 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_12 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, %44]
    %62 = arith.addi %arg16, %12 : i32
    %63 = arith.addi %arg17, %25 : i32
    scf.yield %62, %63 : i32, i32
  }
  %35 = arith.addi %10, %c4608_i32 : i32
  %36:2 = scf.for %arg15 = %8 to %arg11 step %arg12 iter_args(%arg16 = %35, %arg17 = %24) -> (i32, i32)  : i32 {
    %37 = arith.index_cast %arg15 : i32 to index
    %38 = arith.index_cast %8 : i32 to index
    %39 = arith.index_cast %arg11 : i32 to index
    %40 = arith.index_cast %arg12 : i32 to index
    %41 = affine.apply affine_map<()[s0, s1, s2] -> (((s0 - s1) floordiv s2) mod 2)>()[%37, %38, %40]
    %42 = arith.index_cast %41 : index to i64
    %c0_i64_2 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %c1_i64_3 = arith.constant 1 : i64
    %43 = arith.cmpi eq, %42, %c1_i64_3 : i64
    %44 = arith.select %43, %c1_i64, %c0_i64_2 : i64
    %c4_i64 = arith.constant 4 : i64
    %c5_i64 = arith.constant 5 : i64
    %c1_i64_4 = arith.constant 1 : i64
    %45 = arith.cmpi eq, %42, %c1_i64_4 : i64
    %46 = arith.select %45, %c5_i64, %c4_i64 : i64
    %47 = hivm.hir.pointer_cast(%c12480_i64, %c17856_i64) : memref<128xbf16, #hivm.address_space<ub>>
    annotation.mark %47 {hivm.multi_buffer = 2 : i32} : memref<128xbf16, #hivm.address_space<ub>>
    %48 = arith.index_cast %arg16 : i32 to index
    %49 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%48, %27]
    %reinterpret_cast_5 = memref.reinterpret_cast %arg3 to offset: [%49], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, %46]
    scf.if %32 {
      func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_7(%47) {hivm.vector_function, no_inline} : (memref<128xbf16, #hivm.address_space<ub>>) -> ()
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID2>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID2>]
    } {hivm.unlikely_condition}
    %subview = memref.subview %reinterpret_cast_5[0] [%31] [1] : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_6 = memref.subview %47[0] [%31] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<?xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_MTE2>, %44]
    hivm.hir.load ins(%subview : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_6 : memref<?xbf16, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : bf16 left_padding_num = %c0 : index eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE3>, <EVENT_ID0>]
    %50 = arith.index_cast %arg17 : i32 to index
    %51 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%50, %27]
    %reinterpret_cast_7 = memref.reinterpret_cast %arg8 to offset: [%51], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_8 = memref.subview %47[0] [%31] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_9 = memref.subview %reinterpret_cast_7[0] [%31] [1] : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.pipe_barrier[<PIPE_MTE3>]
    hivm.hir.store ins(%subview_8 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_9 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_MTE2>, %44]
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, %46]
    %52 = arith.addi %arg16, %12 : i32
    %53 = arith.addi %arg17, %25 : i32
    scf.yield %52, %53 : i32, i32
  }
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID4>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID6>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID7>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID3>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID4>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID5>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID1>]
  return
}

