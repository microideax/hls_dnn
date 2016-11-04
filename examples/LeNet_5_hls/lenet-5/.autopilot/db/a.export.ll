; ModuleID = '/home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/examples/LeNet_5_hls/lenet-5/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stbi_write_tga_with_rle = global i32 1, align 4
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a191, void ()* @_GLOBAL__I_a2035]
@str = internal constant [11 x i8] c"test_vec_t\00"
@abrr_elems = internal unnamed_addr global [16 x i32] [i32 16, i32 2, i32 77, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]

define i32 @test_vec_t(i32 %i) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %i) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  %i_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %i) nounwind
  store i32 %i_read, i32* getelementptr inbounds ([16 x i32]* @abrr_elems, i64 0, i64 0), align 16
  %abrr_elems_load = load i32* getelementptr inbounds ([16 x i32]* @abrr_elems, i64 0, i64 3), align 4
  %tmp = add nsw i32 %abrr_elems_load, %i_read
  ret i32 %tmp
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare void @_GLOBAL__I_a191() nounwind section ".text.startup"

declare void @_GLOBAL__I_a2035() nounwind section ".text.startup"

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

!llvm.map.gv = !{!0, !7}

!0 = metadata !{metadata !1, i32* @stbi_write_tga_with_rle}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"stbi_write_tga_with_rle", metadata !5, metadata !"int", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [3 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 2, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"i", metadata !18, metadata !"int", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 0}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"return", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 1, i32 0}
