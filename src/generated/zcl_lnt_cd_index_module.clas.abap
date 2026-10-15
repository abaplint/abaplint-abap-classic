* TS: src/cds/expressions/index.ts.module module
CLASS zcl_lnt_cd_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_163eed938170 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_c6604f73cce8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cd_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_c6604f73cce8.
    IF zlnt_builtin_init_163eed938170 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_163eed938170 = abap_true.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_cd_index_module=>ns = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t3 = zcl_lnt_cd_index_module=>ns.
    DATA(t4) = |CDSAggregate|.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1082_85bdbd2fee48.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t7.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t7 = zcl_lnt_cd_index_module=>ns.
    DATA(t8) = |CDSAnnotate|.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1086_e2f8f5b9ee22.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t11.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t11 = zcl_lnt_cd_index_module=>ns.
    DATA(t12) = |CDSAnnotationArray|.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1087_967f7f7eef4c.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t15.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t15 = zcl_lnt_cd_index_module=>ns.
    DATA(t16) = |CDSAnnotationObject|.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1088_7215c406d22f.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t19.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t19 = zcl_lnt_cd_index_module=>ns.
    DATA(t20) = |CDSAnnotationSimple|.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1089_69c439d6ef09.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t23.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t23 = zcl_lnt_cd_index_module=>ns.
    DATA(t24) = |CDSAnnotation|.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t27.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t27 = zcl_lnt_cd_index_module=>ns.
    DATA(t28) = |CDSArithParen|.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1078_337e43e74a5f.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t31.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t31 = zcl_lnt_cd_index_module=>ns.
    DATA(t32) = |CDSArithmetics|.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1077_456f8cd1ea7c.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t35.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t35 = zcl_lnt_cd_index_module=>ns.
    DATA(t36) = |CDSAs|.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t39.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t39 = zcl_lnt_cd_index_module=>ns.
    DATA(t40) = |CDSAssociation|.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t43.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t43 = zcl_lnt_cd_index_module=>ns.
    DATA(t44) = |CDSCardinality|.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1094_471f5e803ae2.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t47.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t47 = zcl_lnt_cd_index_module=>ns.
    DATA(t48) = |CDSCase|.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t51.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t51 = zcl_lnt_cd_index_module=>ns.
    DATA(t52) = |CDSCast|.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1079_de691b322bdd.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t55.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t55 = zcl_lnt_cd_index_module=>ns.
    DATA(t56) = |CDSComposition|.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t59.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t59 = zcl_lnt_cd_index_module=>ns.
    DATA(t60) = |CDSCondition|.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t63.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t63 = zcl_lnt_cd_index_module=>ns.
    DATA(t64) = |CDSDefineAbstract|.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1098_d8ec791aea73.
    t62 = t63->set( p0 = t64 p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t67.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t67 = zcl_lnt_cd_index_module=>ns.
    DATA(t68) = |CDSDefineCustom|.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1099_d80465490326.
    t66 = t67->set( p0 = t68 p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t71.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t71 = zcl_lnt_cd_index_module=>ns.
    DATA(t72) = |CDSDefineExternalEntity|.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1100_58347daca360.
    t70 = t71->set( p0 = t72 p1 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t75.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t75 = zcl_lnt_cd_index_module=>ns.
    DATA(t76) = |CDSDefineHierarchy|.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1102_242781e5a7e9.
    t74 = t75->set( p0 = t76 p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t79.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t79 = zcl_lnt_cd_index_module=>ns.
    DATA(t80) = |CDSDefineProjection|.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1105_a133f02ea9f8.
    t78 = t79->set( p0 = t80 p1 = t81 ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t83.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t83 = zcl_lnt_cd_index_module=>ns.
    DATA(t84) = |CDSDefineTableEntity|.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1109_6169e67f9e50.
    t82 = t83->set( p0 = t84 p1 = t85 ).
    DATA t86 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t87.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t87 = zcl_lnt_cd_index_module=>ns.
    DATA(t88) = |CDSDefineTableFunction|.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1110_085be6a3a6ff.
    t86 = t87->set( p0 = t88 p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t91.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t91 = zcl_lnt_cd_index_module=>ns.
    DATA(t92) = |CDSParenSelect|.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1111_638cac4e89ac.
    t90 = t91->set( p0 = t92 p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t95.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t95 = zcl_lnt_cd_index_module=>ns.
    DATA(t96) = |CDSDefineView|.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1113_ec8d8af5209a.
    t94 = t95->set( p0 = t96 p1 = t97 ).
    DATA t98 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t99.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t99 = zcl_lnt_cd_index_module=>ns.
    DATA(t100) = |CDSElement|.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    t98 = t99->set( p0 = t100 p1 = t101 ).
    DATA t102 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t103.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t103 = zcl_lnt_cd_index_module=>ns.
    DATA(t104) = |CDSExtendView|.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1116_9b6717634818.
    t102 = t103->set( p0 = t104 p1 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t107.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t107 = zcl_lnt_cd_index_module=>ns.
    DATA(t108) = |CDSFunctionInput|.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1117_651d399bb832.
    t106 = t107->set( p0 = t108 p1 = t109 ).
    DATA t110 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t111.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t111 = zcl_lnt_cd_index_module=>ns.
    DATA(t112) = |CDSFunction|.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1076_c34e8bcbaedc.
    t110 = t111->set( p0 = t112 p1 = t113 ).
    DATA t114 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t115.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t115 = zcl_lnt_cd_index_module=>ns.
    DATA(t116) = |CDSGroupBy|.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1115_36a563593830.
    t114 = t115->set( p0 = t116 p1 = t117 ).
    DATA t118 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t119.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t119 = zcl_lnt_cd_index_module=>ns.
    DATA(t120) = |CDSHaving|.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1118_b270eb02b737.
    t118 = t119->set( p0 = t120 p1 = t121 ).
    DATA t122 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t123.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t123 = zcl_lnt_cd_index_module=>ns.
    DATA(t124) = |CDSInteger|.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    t122 = t123->set( p0 = t124 p1 = t125 ).
    DATA t126 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t127.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t127 = zcl_lnt_cd_index_module=>ns.
    DATA(t128) = |CDSJoin|.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1108_9ad6b30e9664.
    t126 = t127->set( p0 = t128 p1 = t129 ).
    DATA t130 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t131.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t131 = zcl_lnt_cd_index_module=>ns.
    DATA(t132) = |CDSName|.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    t130 = t131->set( p0 = t132 p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t135.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t135 = zcl_lnt_cd_index_module=>ns.
    DATA(t136) = |CDSParametersSelect|.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    t134 = t135->set( p0 = t136 p1 = t137 ).
    DATA t138 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t139.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t139 = zcl_lnt_cd_index_module=>ns.
    DATA(t140) = |CDSParameters|.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1114_3b343875274a.
    t138 = t139->set( p0 = t140 p1 = t141 ).
    DATA t142 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t143.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t143 = zcl_lnt_cd_index_module=>ns.
    DATA(t144) = |CDSPrefixedName|.
    DATA(t145) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    t142 = t143->set( p0 = t144 p1 = t145 ).
    DATA t146 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t147.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t147 = zcl_lnt_cd_index_module=>ns.
    DATA(t148) = |CDSProviderContract|.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1103_2caae547c926.
    t146 = t147->set( p0 = t148 p1 = t149 ).
    DATA t150 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t151.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t151 = zcl_lnt_cd_index_module=>ns.
    DATA(t152) = |CDSRelation|.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    t150 = t151->set( p0 = t152 p1 = t153 ).
    DATA t154 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t155.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t155 = zcl_lnt_cd_index_module=>ns.
    DATA(t156) = |CDSSelect|.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    t154 = t155->set( p0 = t156 p1 = t157 ).
    DATA t158 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t159.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t159 = zcl_lnt_cd_index_module=>ns.
    DATA(t160) = |CDSSource|.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    t158 = t159->set( p0 = t160 p1 = t161 ).
    DATA t162 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t163.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t163 = zcl_lnt_cd_index_module=>ns.
    DATA(t164) = |CDSString|.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    t162 = t163->set( p0 = t164 p1 = t165 ).
    DATA t166 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t167.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t167 = zcl_lnt_cd_index_module=>ns.
    DATA(t168) = |CDSTableField|.
    DATA(t169) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1106_b030da4153fc.
    t166 = t167->set( p0 = t168 p1 = t169 ).
    DATA t170 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t171.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t171 = zcl_lnt_cd_index_module=>ns.
    DATA(t172) = |CDSType|.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    t170 = t171->set( p0 = t172 p1 = t173 ).
    DATA t174 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t175.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t175 = zcl_lnt_cd_index_module=>ns.
    DATA(t176) = |CDSWhere|.
    DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1104_02fd7d49de66.
    t174 = t175->set( p0 = t176 p1 = t177 ).
    DATA t178 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t179.
    IF zcl_lnt_cd_index_module=>zlnt_builtin_init_163eed938170 = abap_false.
      zcl_lnt_cd_index_module=>zlnt_builtin_init_c6604f73cce8( ).
    ENDIF.
    t179 = zcl_lnt_cd_index_module=>ns.
    DATA(t180) = |CDSWithParameters|.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    t178 = t179->set( p0 = t180 p1 = t181 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1806_59f57e5e4469.
  ENDMETHOD.
ENDCLASS.
