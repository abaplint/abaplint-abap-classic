* TS: src/abap/types/basic/index.ts.module module
CLASS zcl_lnt_ty_basic_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_8e8df599a5f5 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7d05c1892a1c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_basic_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_7d05c1892a1c.
    IF zlnt_builtin_init_8e8df599a5f5 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_8e8df599a5f5 = abap_true.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_ty_basic_index_module=>ns = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t3 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t4) = |AnyType|.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1016_9ce51904d546.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t7.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t7 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t8) = |CGenericType|.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1017_e1bb045d8973.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t11.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t11 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t12) = |CharacterType|.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1018_f355f9fcb893.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t15.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t15 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t16) = |CLikeType|.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1019_f0b7aea8433a.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t19.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t19 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t20) = |CSequenceType|.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1020_58ef07ed54a1.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t23.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t23 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t24) = |DataReference|.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1021_1105e16557a8.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t27.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t27 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t28) = |DataType|.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1022_489700f72eb7.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t31.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t31 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t32) = |DateType|.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1023_11f7286d7e0a.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t35.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t35 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t36) = |DecFloatType|.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1026_fbd5b5f04876.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t39.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t39 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t40) = |DecFloat16Type|.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1024_17d9779545a5.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t43.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t43 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t44) = |DecFloat34Type|.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1025_c6cb4727f974.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t47.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t47 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t48) = |EnumType|.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1027_1127e4cf05ed.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t51.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t51 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t52) = |FloatType|.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1028_e04d825d881e.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t55.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t55 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t56) = |FloatingPointType|.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1029_a243aa0aec15.
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t59.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t59 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t60) = |GenericObjectReferenceType|.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1030_6600c335ee28.
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t63.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t63 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t64) = |HexType|.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1031_e503345f4c84.
    t62 = t63->set( p0 = t64 p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t67.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t67 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t68) = |IntegerType|.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1033_4175388fb722.
    t66 = t67->set( p0 = t68 p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t71.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t71 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t72) = |Integer8Type|.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1032_f78e39381f78.
    t70 = t71->set( p0 = t72 p1 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t75.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t75 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t76) = |NumericGenericType|.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1034_d68bf50add4f.
    t74 = t75->set( p0 = t76 p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t79.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t79 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t80) = |NumericType|.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1035_3d4f282d9a47.
    t78 = t79->set( p0 = t80 p1 = t81 ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t83.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t83 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t84) = |ObjectReferenceType|.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1036_17caa775f2d6.
    t82 = t83->set( p0 = t84 p1 = t85 ).
    DATA t86 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t87.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t87 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t88) = |PackedType|.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1037_ead0a3c2ba70.
    t86 = t87->set( p0 = t88 p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t91.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t91 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t92) = |PGenericType|.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1038_cab5fff85ba2.
    t90 = t91->set( p0 = t92 p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t95.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t95 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t96) = |SimpleType|.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1039_204717d2f6bf.
    t94 = t95->set( p0 = t96 p1 = t97 ).
    DATA t98 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t99.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t99 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t100) = |StringType|.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1040_e224823bc9c2.
    t98 = t99->set( p0 = t100 p1 = t101 ).
    DATA t102 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t103.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t103 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t104) = |StructureType|.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1042_57ec2010231a.
    t102 = t103->set( p0 = t104 p1 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t107.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t107 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t108) = |TableType|.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1043_18fb8ae33dc3.
    t106 = t107->set( p0 = t108 p1 = t109 ).
    DATA t110 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t111.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t111 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t112) = |TimeType|.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1044_85fc144000cd.
    t110 = t111->set( p0 = t112 p1 = t113 ).
    DATA t114 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t115.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t115 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t116) = |UnknownType|.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1045_53bb9238e4eb.
    t114 = t115->set( p0 = t116 p1 = t117 ).
    DATA t118 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t119.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t119 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t120) = |UTCLongType|.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1046_e157d6ca3a89.
    t118 = t119->set( p0 = t120 p1 = t121 ).
    DATA t122 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t123.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t123 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t124) = |VoidType|.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1047_2e694b68f8c3.
    t122 = t123->set( p0 = t124 p1 = t125 ).
    DATA t126 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t127.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t127 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t128) = |XGenericType|.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1048_5249e94bd340.
    t126 = t127->set( p0 = t128 p1 = t129 ).
    DATA t130 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t131.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t131 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t132) = |XSequenceType|.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1049_a720e7390192.
    t130 = t131->set( p0 = t132 p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t135.
    IF zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_8e8df599a5f5 = abap_false.
      zcl_lnt_ty_basic_index_module=>zlnt_builtin_init_7d05c1892a1c( ).
    ENDIF.
    t135 = zcl_lnt_ty_basic_index_module=>ns.
    DATA(t136) = |XStringType|.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1050_37307363eb17.
    t134 = t135->set( p0 = t136 p1 = t137 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1804_91626cd8ed82.
  ENDMETHOD.
ENDCLASS.
