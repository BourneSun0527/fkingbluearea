// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @split_qkv_rmsnorm_rope_kernel(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xi64, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg8: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg9: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg10: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32, %arg13: i32, %arg14: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, true, true, true, true, false, false, false, false]> : vector<15xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.vf_mode = #hivm.vf_mode<SIMD>, mix_mode = "aiv", parallel_mode = "simd"} {
  %c15680_i64 = arith.constant 15680 : i64
  %c10560_i64 = arith.constant 10560 : i64
  %c15552_i64 = arith.constant 15552 : i64
  %c10432_i64 = arith.constant 10432 : i64
  %c15424_i64 = arith.constant 15424 : i64
  %c10304_i64 = arith.constant 10304 : i64
  %c9792_i64 = arith.constant 9792 : i64
  %c15168_i64 = arith.constant 15168 : i64
  %c9536_i64 = arith.constant 9536 : i64
  %c14144_i64 = arith.constant 14144 : i64
  %c8512_i64 = arith.constant 8512 : i64
  %c13120_i64 = arith.constant 13120 : i64
  %c7488_i64 = arith.constant 7488 : i64
  %c7456_i64 = arith.constant 7456 : i64
  %c7200_i64 = arith.constant 7200 : i64
  %c6944_i64 = arith.constant 6944 : i64
  %c12992_i64 = arith.constant 12992 : i64
  %c6816_i64 = arith.constant 6816 : i64
  %c12864_i64 = arith.constant 12864 : i64
  %c6688_i64 = arith.constant 6688 : i64
  %c2592_i64 = arith.constant 2592 : i64
  %c10816_i64 = arith.constant 10816 : i64
  %c544_i64 = arith.constant 544 : i64
  %c512_i64 = arith.constant 512 : i64
  %c256_i64 = arith.constant 256 : i64
  %c0_i64 = arith.constant 0 : i64
  %c0 = arith.constant 0 : index
  %c128_i64 = arith.constant 128 : i64
  %c5120_i32 = arith.constant 5120 : i32
  %c512_i32 = arith.constant 512 : i32
  %c128_i32 = arith.constant 128 : i32
  %c4096_i32 = arith.constant 4096 : i32
  %c1024_i32 = arith.constant 1024 : i32
  %c1024 = arith.constant 1024 : index
  %c4096 = arith.constant 4096 : index
  %cst = arith.constant 0.000000e+00 : bf16
  %cst_0 = arith.constant 0.000000e+00 : f32
  %c512 = arith.constant 512 : index
  %c128 = arith.constant 128 : index
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
  %reinterpret_cast_1 = memref.reinterpret_cast %arg10 to offset: [0], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1]>, #hivm.address_space<gm>>
  %10 = hivm.hir.pointer_cast(%c256_i64) : memref<128xbf16, #hivm.address_space<ub>>
  hivm.hir.load ins(%reinterpret_cast_1 : memref<128xbf16, strided<[1]>, #hivm.address_space<gm>>) outs(%10 : memref<128xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
  %11 = arith.muli %5, %c1024_i32 : i32
  %12 = arith.muli %5, %c128_i32 : i32
  %13 = arith.index_cast %11 : i32 to index
  %14 = affine.apply affine_map<()[s0] -> (s0 + 1024)>()[%13]
  %15 = arith.maxsi %13, %c4096 : index
  %16 = arith.minsi %14, %15 : index
  %17 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%16, %13]
  %18 = arith.cmpi slt, %17, %c1024 : index
  %19 = affine.apply affine_map<()[s0] -> (s0 + 512)>()[%13]
  %20 = arith.minsi %19, %15 : index
  %21 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%20, %13]
  %22 = arith.maxsi %19, %c4096 : index
  %23 = arith.minsi %14, %22 : index
  %24 = affine.apply affine_map<()[s0, s1] -> (s0 - s1 - 512)>()[%23, %13]
  %25 = arith.index_cast %12 : i32 to index
  %26 = affine.apply affine_map<()[s0] -> (s0 + 128)>()[%25]
  %27 = arith.maxsi %25, %c512 : index
  %28 = arith.minsi %26, %27 : index
  %29 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%28, %25]
  %30 = arith.cmpi slt, %29, %c128 : index
  %31 = affine.apply affine_map<()[s0] -> (s0 + 64)>()[%25]
  %32 = arith.minsi %31, %27 : index
  %33 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%32, %25]
  %34 = arith.maxsi %31, %c512 : index
  %35 = arith.minsi %26, %34 : index
  %36 = affine.apply affine_map<()[s0, s1] -> (s0 - s1 - 64)>()[%35, %25]
  %37 = hivm.hir.pointer_cast(%c512_i64) : memref<f32, #hivm.address_space<ub>>
  scf.for %arg15 = %8 to %arg11 step %arg12  : i32 {
    %38 = arith.index_cast %arg15 : i32 to index
    %39 = arith.index_cast %8 : i32 to index
    %40 = arith.index_cast %arg11 : i32 to index
    %41 = arith.index_cast %arg12 : i32 to index
    %42 = affine.apply affine_map<()[s0, s1, s2] -> (((s0 - s1) floordiv s2) mod 2)>()[%38, %39, %41]
    %43 = arith.index_cast %42 : index to i64
    %c0_i64_2 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %c1_i64_3 = arith.constant 1 : i64
    %44 = arith.cmpi eq, %43, %c1_i64_3 : i64
    %45 = arith.select %44, %c1_i64, %c0_i64_2 : i64
    %c4_i64 = arith.constant 4 : i64
    %c5_i64 = arith.constant 5 : i64
    %c1_i64_4 = arith.constant 1 : i64
    %46 = arith.cmpi eq, %43, %c1_i64_4 : i64
    %47 = arith.select %46, %c5_i64, %c4_i64 : i64
    %c2_i64 = arith.constant 2 : i64
    %c3_i64 = arith.constant 3 : i64
    %c1_i64_5 = arith.constant 1 : i64
    %48 = arith.cmpi eq, %43, %c1_i64_5 : i64
    %49 = arith.select %48, %c3_i64, %c2_i64 : i64
    %c6_i64 = arith.constant 6 : i64
    %c7_i64 = arith.constant 7 : i64
    %c1_i64_6 = arith.constant 1 : i64
    %50 = arith.cmpi eq, %43, %c1_i64_6 : i64
    %51 = arith.select %50, %c7_i64, %c6_i64 : i64
    %c0_i64_7 = arith.constant 0 : i64
    %c1_i64_8 = arith.constant 1 : i64
    %c1_i64_9 = arith.constant 1 : i64
    %52 = arith.cmpi eq, %43, %c1_i64_9 : i64
    %53 = arith.select %52, %c1_i64_8, %c0_i64_7 : i64
    %c3_i64_10 = arith.constant 3 : i64
    %c4_i64_11 = arith.constant 4 : i64
    %c1_i64_12 = arith.constant 1 : i64
    %54 = arith.cmpi eq, %43, %c1_i64_12 : i64
    %55 = arith.select %54, %c4_i64_11, %c3_i64_10 : i64
    %c1_i64_13 = arith.constant 1 : i64
    %c2_i64_14 = arith.constant 2 : i64
    %c1_i64_15 = arith.constant 1 : i64
    %56 = arith.cmpi eq, %43, %c1_i64_15 : i64
    %57 = arith.select %56, %c2_i64_14, %c1_i64_13 : i64
    %58 = hivm.hir.pointer_cast(%c6816_i64, %c12992_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %58 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %59 = hivm.hir.pointer_cast(%c6688_i64, %c12864_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %59 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %60 = hivm.hir.pointer_cast(%c10432_i64, %c15552_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %60 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %61 = hivm.hir.pointer_cast(%c8512_i64, %c14144_i64) : memref<8x64xbf16, #hivm.address_space<ub>>
    annotation.mark %61 {hivm.multi_buffer = 2 : i32} : memref<8x64xbf16, #hivm.address_space<ub>>
    %62 = hivm.hir.pointer_cast(%c9536_i64, %c15168_i64) : memref<128xbf16, #hivm.address_space<ub>>
    annotation.mark %62 {hivm.multi_buffer = 2 : i32} : memref<128xbf16, #hivm.address_space<ub>>
    %63 = hivm.hir.pointer_cast(%c10560_i64, %c15680_i64) : memref<128xbf16, #hivm.address_space<ub>>
    annotation.mark %63 {hivm.multi_buffer = 2 : i32} : memref<128xbf16, #hivm.address_space<ub>>
    %64 = hivm.hir.pointer_cast(%c7488_i64, %c13120_i64) : memref<8x64xbf16, #hivm.address_space<ub>>
    annotation.mark %64 {hivm.multi_buffer = 2 : i32} : memref<8x64xbf16, #hivm.address_space<ub>>
    %65 = hivm.hir.pointer_cast(%c544_i64, %c10816_i64) : memref<8x128xbf16, #hivm.address_space<ub>>
    annotation.mark %65 {hivm.multi_buffer = 2 : i32} : memref<8x128xbf16, #hivm.address_space<ub>>
    %66 = hivm.hir.pointer_cast(%c10304_i64, %c15424_i64) : memref<64xbf16, #hivm.address_space<ub>>
    annotation.mark %66 {hivm.multi_buffer = 2 : i32} : memref<64xbf16, #hivm.address_space<ub>>
    %67 = arith.muli %arg15, %c5120_i32 : i32
    %68 = arith.index_cast %67 : i32 to index
    %69 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%68, %13]
    %reinterpret_cast_16 = memref.reinterpret_cast %arg3 to offset: [%69], sizes: [1024], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<1024xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %collapse_shape = memref.collapse_shape %65 [[0, 1]] : memref<8x128xbf16, #hivm.address_space<ub>> into memref<1024xbf16, #hivm.address_space<ub>>
    scf.if %18 {
      func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_0(%65) {hivm.vector_function, no_inline} : (memref<8x128xbf16, #hivm.address_space<ub>>) -> ()
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
    } {hivm.unlikely_condition}
    %subview = memref.subview %reinterpret_cast_16[0] [%17] [1] : memref<1024xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_17 = memref.subview %collapse_shape[0] [%17] [1] : memref<1024xbf16, #hivm.address_space<ub>> to memref<?xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, %57]
    hivm.hir.load ins(%subview : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_17 : memref<?xbf16, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : bf16 left_padding_num = %c0 : index eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    %70 = hivm.hir.pointer_cast(%c2592_i64) : memref<8x128xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_3(%65, %70) {hivm.vector_function, no_inline} : (memref<8x128xbf16, #hivm.address_space<ub>>, memref<8x128xf32, #hivm.address_space<ub>>) -> ()
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, %57]
    %71 = arith.index_cast %arg15 : i32 to index
    %reinterpret_cast_18 = memref.reinterpret_cast %arg5 to offset: [%71], sizes: [1], strides: [1] : memref<?xi64, #hivm.address_space<gm>> to memref<1xi64, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %72 = memref.load %reinterpret_cast_18[%c0] : memref<1xi64, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %73 = arith.muli %72, %c128_i64 : i64
    %74 = arith.index_cast %73 : i64 to index
    %reinterpret_cast_19 = memref.reinterpret_cast %arg4 to offset: [%74], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, %55]
    hivm.hir.load ins(%reinterpret_cast_19 : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%59 : memref<64xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
    %75 = affine.apply affine_map<()[s0] -> (s0 + 64)>()[%74]
    %reinterpret_cast_20 = memref.reinterpret_cast %arg4 to offset: [%75], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.load ins(%reinterpret_cast_20 : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%58 : memref<64xbf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
    %76 = hivm.hir.pointer_cast(%c6944_i64) : memref<64xf32, #hivm.address_space<ub>>
    %77 = hivm.hir.pointer_cast(%c7200_i64) : memref<64xf32, #hivm.address_space<ub>>
    %78 = hivm.hir.pointer_cast(%c7456_i64) : memref<8xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, %53]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_4(%59, %58, %76, %77, %70, %78, %9, %9, %64, %61) {hivm.vector_function, no_inline} : (memref<64xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>, memref<64xf32, #hivm.address_space<ub>>, memref<64xf32, #hivm.address_space<ub>>, memref<8x128xf32, #hivm.address_space<ub>>, memref<8xf32, #hivm.address_space<ub>>, memref<128xbf16, #hivm.address_space<ub>>, memref<128xbf16, #hivm.address_space<ub>>, memref<8x64xbf16, #hivm.address_space<ub>>, memref<8x64xbf16, #hivm.address_space<ub>>) -> ()
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, %55]
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    %79 = arith.muli %arg15, %c4096_i32 : i32
    %80 = arith.index_cast %79 : i32 to index
    %81 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%80, %13]
    %reinterpret_cast_21 = memref.reinterpret_cast %arg6 to offset: [%81], sizes: [512], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<512xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %collapse_shape_22 = memref.collapse_shape %64 [[0, 1]] : memref<8x64xbf16, #hivm.address_space<ub>> into memref<512xbf16, #hivm.address_space<ub>>
    %subview_23 = memref.subview %collapse_shape_22[0] [%21] [1] : memref<512xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_24 = memref.subview %reinterpret_cast_21[0] [%21] [1] : memref<512xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.store ins(%subview_23 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_24 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    %82 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 + 512)>()[%80, %13]
    %reinterpret_cast_25 = memref.reinterpret_cast %arg6 to offset: [%82], sizes: [512], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<512xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %collapse_shape_26 = memref.collapse_shape %61 [[0, 1]] : memref<8x64xbf16, #hivm.address_space<ub>> into memref<512xbf16, #hivm.address_space<ub>>
    %subview_27 = memref.subview %collapse_shape_26[0] [%24] [1] : memref<512xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_28 = memref.subview %reinterpret_cast_25[0] [%24] [1] : memref<512xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.pipe_barrier[<PIPE_MTE3>]
    hivm.hir.store ins(%subview_27 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_28 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, %53]
    %83 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 + 4096)>()[%25, %68]
    %reinterpret_cast_29 = memref.reinterpret_cast %arg3 to offset: [%83], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    scf.if %30 {
      func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_1(%62) {hivm.vector_function, no_inline} : (memref<128xbf16, #hivm.address_space<ub>>) -> ()
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID5>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID5>]
    } {hivm.unlikely_condition}
    %subview_30 = memref.subview %reinterpret_cast_29[0] [%29] [1] : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_31 = memref.subview %62[0] [%29] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<?xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, %51]
    hivm.hir.load ins(%subview_30 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_31 : memref<?xbf16, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : bf16 left_padding_num = %c0 : index eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID2>]
    %84 = hivm.hir.pointer_cast(%c9792_i64) : memref<128xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID2>]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_5(%62, %84) {hivm.vector_function, no_inline} : (memref<128xbf16, #hivm.address_space<ub>>, memref<128xf32, #hivm.address_space<ub>>) -> ()
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, %51]
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
    memref.store %cst_0, %37[] : memref<f32, #hivm.address_space<ub>>
    hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
    hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_6(%84, %37) {hivm.vector_function, no_inline} : (memref<128xf32, #hivm.address_space<ub>>, memref<f32, #hivm.address_space<ub>>) -> ()
    %expand_shape = memref.expand_shape %37 [] output_shape [1] : memref<f32, #hivm.address_space<ub>> into memref<1xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, %49]
    func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_7(%expand_shape, %84, %10, %76, %77, %66, %60) {hivm.vector_function, no_inline} : (memref<1xf32, #hivm.address_space<ub>>, memref<128xf32, #hivm.address_space<ub>>, memref<128xbf16, #hivm.address_space<ub>>, memref<64xf32, #hivm.address_space<ub>>, memref<64xf32, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>, memref<64xbf16, #hivm.address_space<ub>>) -> ()
    hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
    %85 = arith.muli %arg15, %c512_i32 : i32
    %86 = arith.index_cast %85 : i32 to index
    %87 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%86, %25]
    %reinterpret_cast_32 = memref.reinterpret_cast %arg7 to offset: [%87], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_33 = memref.subview %66[0] [%33] [1] : memref<64xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_34 = memref.subview %reinterpret_cast_32[0] [%33] [1] : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
    hivm.hir.store ins(%subview_33 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_34 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    %88 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 + 64)>()[%86, %25]
    %reinterpret_cast_35 = memref.reinterpret_cast %arg7 to offset: [%88], sizes: [64], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_36 = memref.subview %60[0] [%36] [1] : memref<64xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_37 = memref.subview %reinterpret_cast_35[0] [%36] [1] : memref<64xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.pipe_barrier[<PIPE_MTE3>]
    hivm.hir.store ins(%subview_36 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_37 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, %49]
    %89 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 + 4608)>()[%25, %68]
    %reinterpret_cast_38 = memref.reinterpret_cast %arg3 to offset: [%89], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, %47]
    scf.if %30 {
      func.call @split_qkv_rmsnorm_rope_kernel_outlined_vf_2(%63) {hivm.vector_function, no_inline} : (memref<128xbf16, #hivm.address_space<ub>>) -> ()
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID2>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID2>]
    } {hivm.unlikely_condition}
    %subview_39 = memref.subview %reinterpret_cast_38[0] [%29] [1] : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %subview_40 = memref.subview %63[0] [%29] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<?xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_MTE2>, %45]
    hivm.hir.load ins(%subview_39 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_40 : memref<?xbf16, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : bf16 left_padding_num = %c0 : index eviction_policy = <EvictFirst>
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE3>, <EVENT_ID0>]
    %reinterpret_cast_41 = memref.reinterpret_cast %arg8 to offset: [%87], sizes: [128], strides: [1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
:    %subview_42 = memref.subview %63[0] [%29] [1] : memref<128xbf16, #hivm.address_space<ub>> to memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>
    %subview_43 = memref.subview %reinterpret_cast_41[0] [%29] [1] : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.store ins(%subview_42 : memref<?xbf16, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_43 : memref<?xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_MTE2>, %45]
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, %47]
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
