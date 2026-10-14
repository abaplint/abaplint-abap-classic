* TS: src/abap/2_statements/statements/type_mesh.ts:7:1 TypeMesh
CLASS zcl_lnt_st_type_mesh DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_type_mesh IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |ON|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |=|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    APPEND t15 TO t14->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = |AND|.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = |=|.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = t32.
    APPEND t31 TO t30->items.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    APPEND t34 TO t33->items.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t37 i_second = t38 i_rest = t39 ).
    t21 = t36.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t21.
      t20->oval = t40.
    ENDIF.
    t19 = zcl_lnt_st_combi_module=>star( i_first = t20 ).
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t19.
      t18->oval = t41.
    ENDIF.
    APPEND t18 TO t17->items.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t44) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t44 i_rest = t45 ).
    t2 = t42.
    t1 = t2.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = |USING KEY|.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t56 = zcl_lnt_st_combi_module=>seq( i_first = t57 i_second = t58 i_rest = t59 ).
    t47 = t56.
    t46 = t47.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = |ASSOCIATION|.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = |TO|.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = t72.
    APPEND t71 TO t70->items.
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    APPEND t74 TO t73->items.
    DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( t1 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    t78 = zcl_lnt_st_combi_module=>plus( i_first = t79 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t78.
      t77->oval = t82.
    ENDIF.
    APPEND t77 TO t76->items.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t85 i_rest = t86 ).
    t61 = t83.
    t60 = t61.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t92.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t92 = zcl_lnt_version_module=>release_b8cd.
    DATA(t93) = |v740sp05|.
    t91 = t92->get( p0 = t93 ).
    t90 = t91.
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t94 TYPE REF TO object.
      t94 = t90.
      t89->oval = t94.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = |TYPES|.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    t103 = t104.
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |TYPE|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    APPEND t106 TO t105->items.
    DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = |REF TO|.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = t112.
    t110 = zcl_lnt_st_combi_module=>opt( i_first = t111 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t113 TYPE REF TO object.
      t113 = t110.
      t109->oval = t113.
    ENDIF.
    APPEND t109 TO t108->items.
    DATA(t114) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    APPEND t115 TO t114->items.
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = CAST zif_lnt_statement_runnable( t60 ).
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t122 TYPE REF TO object.
      t122 = t121.
      t120->oval = t122.
    ENDIF.
    t119 = zcl_lnt_st_combi_module=>plus( i_first = t120 ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t123 TYPE REF TO object.
      t123 = t119.
      t118->oval = t123.
    ENDIF.
    APPEND t118 TO t117->items.
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA(t128) = CAST zif_lnt_statement_runnable( t46 ).
    IF t128 IS BOUND.
      CREATE OBJECT t127.
      t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t129 TYPE REF TO object.
      t129 = t128.
      t127->oval = t129.
    ENDIF.
    t126 = zcl_lnt_st_combi_module=>opt( i_first = t127 ).
    IF t126 IS BOUND.
      CREATE OBJECT t125.
      t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t126.
      t125->oval = t130.
    ENDIF.
    APPEND t125 TO t124->items.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t133) = CAST zlnt_runtime_dyna_a429568d5be8( t100 ).
    DATA(t134) = CAST zlnt_runtime_arra_c22708faf2e3( t103 ).
    t131 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t133 i_rest = t134 ).
    t96 = t131.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t135 TYPE REF TO object.
      t135 = t96.
      t95->oval = t135.
    ENDIF.
    DATA t136 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t136.
    t88 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t89 i_first = t95 i_opts = t136 ).
    t87 = t88.
    DATA(t137) = CAST zif_lnt_statement_runnable( t87 ).
    result = t137.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d651_70a86313b382.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
