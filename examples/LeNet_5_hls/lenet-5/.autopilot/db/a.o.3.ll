; ModuleID = '/home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/examples/LeNet_5_hls/lenet-5/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stbi_write_tga_with_rle = global i32 1, align 4  ; [#uses=0 type=i32*]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535] ; [#uses=0 type=[3 x i32]*]
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a191, void ()* @_GLOBAL__I_a2035] ; [#uses=0 type=[3 x void ()*]*]
@str = internal constant [11 x i8] c"test_vec_t\00" ; [#uses=1 type=[11 x i8]*]
@abrr_elems = internal unnamed_addr global [16 x i32] [i32 16, i32 2, i32 77, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] ; [#uses=2 type=[16 x i32]*]

; [#uses=0]
define i32 @test_vec_t(i32 %i) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %i) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  %i_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %i) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %i_read}, i64 0, metadata !26), !dbg !34 ; [debug line = 157:20] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %i_read}, i64 0, metadata !35), !dbg !87 ; [debug line = 24:29@172:5] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !26), !dbg !34 ; [debug line = 157:20] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !35), !dbg !87 ; [debug line = 24:29@172:5] [debug variable = e]
  store i32 %i_read, i32* getelementptr inbounds ([16 x i32]* @abrr_elems, i64 0, i64 0), align 16, !dbg !88 ; [debug line = 25:7@172:5]
  %abrr_elems_load = load i32* getelementptr inbounds ([16 x i32]* @abrr_elems, i64 0, i64 3), align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 181:12]
  %tmp = add nsw i32 %abrr_elems_load, %i_read, !dbg !90 ; [#uses=1 type=i32] [debug line = 181:12]
  ret i32 %tmp, !dbg !90                          ; [debug line = 181:12]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
declare void @_GLOBAL__I_a191() nounwind section ".text.startup"

; [#uses=1]
declare void @_GLOBAL__I_a2035() nounwind section ".text.startup"

; [#uses=1]
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
!26 = metadata !{i32 786689, metadata !27, metadata !"i", metadata !28, i32 16777373, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"test_vec_t", metadata !"test_vec_t", metadata !"_Z10test_vec_ti", metadata !28, i32 157, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @test_vec_t, null, null, metadata !32, i32 157} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786473, metadata !"lenet.cpp", metadata !"/home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/examples", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 157, i32 20, metadata !27, null}
!35 = metadata !{i32 790532, metadata !36, metadata !"e", null, i32 24, metadata !49, i32 0, metadata !85} ; [ DW_TAG_arg_variable_ro ]
!36 = metadata !{i32 786478, i32 0, null, metadata !"push_back", metadata !"push_back", metadata !"_ZN8s_vectorIiLi16EE9push_backERKi", metadata !37, i32 24, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !32, i32 24} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786473, metadata !"./../tiny_dnn/hls_lib/static_vector.h", metadata !"/home/yaochen/work/NN/NN_hls/tiny_dnn_LeNet5/examples", null} ; [ DW_TAG_file_type ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !40, metadata !77}
!40 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !41} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786434, null, metadata !"s_vector<int, 16>", metadata !37, i32 9, i64 576, i64 32, i32 0, i32 0, null, metadata !42, i32 0, null, metadata !82} ; [ DW_TAG_class_type ]
!42 = metadata !{metadata !43, metadata !47, metadata !48, metadata !50, metadata !53, metadata !58, metadata !59, metadata !60, metadata !64, metadata !65, metadata !69, metadata !70, metadata !74, metadata !78}
!43 = metadata !{i32 786445, metadata !41, metadata !"elems", metadata !37, i32 11, i64 512, i64 32, i64 0, i32 1, metadata !44} ; [ DW_TAG_member ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !31, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 786445, metadata !41, metadata !"cur", metadata !37, i32 12, i64 32, i64 32, i64 512, i32 1, metadata !31} ; [ DW_TAG_member ]
!48 = metadata !{i32 786445, metadata !41, metadata !"capacity", metadata !37, i32 13, i64 32, i64 32, i64 544, i32 1, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ]
!50 = metadata !{i32 786478, i32 0, metadata !41, metadata !"s_vector", metadata !"s_vector", metadata !"", metadata !37, i32 15, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 15} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !40}
!53 = metadata !{i32 786478, i32 0, metadata !41, metadata !"s_vector", metadata !"s_vector", metadata !"", metadata !37, i32 17, metadata !54, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 17} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{null, metadata !40, metadata !56}
!56 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_reference_type ]
!57 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ]
!58 = metadata !{i32 786478, i32 0, metadata !41, metadata !"push_back", metadata !"push_back", metadata !"_ZN8s_vectorIiLi16EE9push_backERKi", metadata !37, i32 24, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 24} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !41, metadata !"pop_back", metadata !"pop_back", metadata !"_ZN8s_vectorIiLi16EE8pop_backEv", metadata !37, i32 28, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 28} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786478, i32 0, metadata !41, metadata !"front", metadata !"front", metadata !"_ZN8s_vectorIiLi16EE5frontEv", metadata !37, i32 32, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 32} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !63, metadata !40}
!63 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_reference_type ]
!64 = metadata !{i32 786478, i32 0, metadata !41, metadata !"back", metadata !"back", metadata !"_ZN8s_vectorIiLi16EE4backEv", metadata !37, i32 36, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 36} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786478, i32 0, metadata !41, metadata !"size", metadata !"size", metadata !"_ZNK8s_vectorIiLi16EE4sizeEv", metadata !37, i32 40, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 40} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !31, metadata !68}
!68 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !57} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786478, i32 0, metadata !41, metadata !"clear", metadata !"clear", metadata !"_ZN8s_vectorIiLi16EE5clearEv", metadata !37, i32 44, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 44} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !41, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN8s_vectorIiLi16EEixEj", metadata !37, i32 48, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 48} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !63, metadata !40, metadata !73}
!73 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!74 = metadata !{i32 786478, i32 0, metadata !41, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK8s_vectorIiLi16EEixEj", metadata !37, i32 52, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 52} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !77, metadata !68, metadata !73}
!77 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_reference_type ]
!78 = metadata !{i32 786478, i32 0, metadata !41, metadata !"operator=", metadata !"operator=", metadata !"_ZN8s_vectorIiLi16EEaSERKS0_", metadata !37, i32 56, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !32, i32 56} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !81, metadata !40, metadata !56}
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_reference_type ]
!82 = metadata !{metadata !83, metadata !84}
!83 = metadata !{i32 786479, null, metadata !"T", metadata !31, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!84 = metadata !{i32 786480, null, metadata !"L", metadata !31, i64 16, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!85 = metadata !{i32 172, i32 5, metadata !86, null}
!86 = metadata !{i32 786443, metadata !27, i32 157, i32 23, metadata !28, i32 122} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 24, i32 29, metadata !36, metadata !85}
!88 = metadata !{i32 25, i32 7, metadata !89, metadata !85}
!89 = metadata !{i32 786443, metadata !36, i32 24, i32 32, metadata !37, i32 126} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 181, i32 12, metadata !86, null}
