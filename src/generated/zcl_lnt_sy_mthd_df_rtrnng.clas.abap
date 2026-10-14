* TS: src/abap/5_syntax/expressions/method_def_returning.ts:9:1 MethodDefReturning
CLASS zcl_lnt_sy_mthd_df_rtrnng DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_mthd_df_rtrnng IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_meta ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t4 ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zcl_lnt_expression_node( t9 ).
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t15.
      DATA t16 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |method_parameter.ts, todo, handle pass by value and referenc|.
        t19 = t19 && |e|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = NEW zcx_lnt_assert_error( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      RAISE EXCEPTION t15.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429 ).
    t23 = t24->find_direct_expression( i_type_9913 = t25 ).
    t22 = t23.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = CAST zcl_lnt_expression_node( t22 ).
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zcl_lnt_expression_node( t27 ).
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t33.
      DATA t34 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA(t37) = |method_parameter.ts, unexpected structure|.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t37.
        t35 = t38.
      ELSE.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        t35 = t39.
      ENDIF.
      t34 = NEW zcx_lnt_assert_error( i_message_26cb = t35 ).
      t33 = NEW #( ).
      t33->payload = t34.
      RAISE EXCEPTION t33.
    ENDIF.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t41 TYPE REF TO zcl_lnt_abstract_type.
    DATA t42 TYPE REF TO zcl_lnt_basic_types.
    DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
    t42 = NEW zcl_lnt_basic_types( i_input_967e = t43 ).
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    DATA(t45) = CAST zcl_lnt_expression_node( t22 ).
    t44 = t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    t41 = t42->parse_type( i_node = t44 i_qualified_name = t46 ).
    t40 = t41.
    DATA t47 TYPE string.
    DATA(t48) = |RETURNING parameter must be fully specified|.
    t47 = t48.
    DATA(t49) = VALUE string( ).
    DATA t50 TYPE string.
    DATA t51 TYPE string.
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    DATA(t53) = CAST zcl_lnt_expression_node( t22 ).
    t52 = t53.
    t51 = t52->concat_tokens( ).
    DATA(t54) = strlen( t51 ).
    t50 = t51.
    IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t50 TO UPPER CASE.
    ELSE.
      t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
    ENDIF.
    t49 = t50.
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t60) = CAST zcl_lnt_abstract_type( t40 ).
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t61.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = CAST zcl_lnt_abstract_type( t59 ).
    IF t63 IS INITIAL.
      t62 = abap_true.
    ENDIF.
    IF t62 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t64.
      t61 = t64.
    ELSE.
      DATA t65 TYPE abap_bool.
      DATA t66 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t67) = CAST zcl_lnt_abstract_type( t59 ).
      t66 = t67.
      t65 = t66->is_generic( ).
      DATA(t68) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t68->has = abap_true.
      t68->value = t65.
      t61 = t68.
    ENDIF.
    t58 = t61.
    DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t69.
    DATA(t70) = abap_true.
    IF t70 = abap_true.
      DATA(t71) = abap_true.
      DATA(t72) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t72->has = abap_true.
      t72->value = t71.
      t69 = t72.
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t73.
      t69 = t73.
    ENDIF.
    DATA(t74) = VALUE abap_bool( ).
    DATA(t75) = VALUE abap_bool( ).
    IF t58 IS BOUND.
      t74 = t58->has.
    ENDIF.
    IF t69 IS BOUND.
      t75 = t69->has.
    ENDIF.
    IF t74 = t75.
      IF t74 = abap_false.
        t57 = abap_true.
      ELSEIF t58->value = t69->value.
        t57 = abap_true.
      ENDIF.
    ENDIF.
    t56 = t57.
    IF t57 = abap_false.
      DATA t76 TYPE abap_bool.
      DATA(t77) = t49.
      DATA(t78) = |TYPE X|.
      t76 = xsdbool( t77 = t78 ).
      t56 = t76.
    ENDIF.
    t55 = t56.
    IF t56 = abap_false.
      DATA t79 TYPE abap_bool.
      DATA(t80) = t49.
      DATA(t81) = |TYPE C|.
      t79 = xsdbool( t80 = t81 ).
      t55 = t79.
    ENDIF.
    IF t55 = abap_true.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t83) = CAST zcl_lnt_syntax_input( t2 ).
      t82 = t83->issues.
      DATA t84 TYPE REF TO zcl_lnt_issue.
      DATA(t85) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zcl_lnt_expression_node.
      DATA(t88) = CAST zcl_lnt_expression_node( t22 ).
      t87 = t88.
      t86 = t87->get_first_token( ).
      DATA(t89) = t47.
      DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t90.
      t84 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t85 i_token = t86 i_message_26cb = t89 i_fix = t90 ).
      APPEND t84 TO t82->items.
      DATA t91 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t92) = t47.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      t91 = NEW zcl_lnt_unknown_type( i_error = t92 i_qualified_name = t93 ).
      t40 = t91.
    ENDIF.
    DATA t94 TYPE abap_bool.
    DATA(t95) = CAST zcl_lnt_abstract_type( t40 ).
    t94 = xsdbool( t95 IS BOUND ).
    IF t94 = abap_true.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t96.
      DATA t97 TYPE REF TO zcl_lnt_abstract_token.
      DATA t98 TYPE REF TO zcl_lnt_expression_node.
      DATA(t99) = CAST zcl_lnt_expression_node( t4 ).
      t98 = t99.
      t97 = t98->get_first_token( ).
      DATA t100 TYPE string.
      DATA(t101) = CAST zcl_lnt_syntax_input( t2 ).
      t100 = t101->filename.
      DATA t102 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t103) = CAST zcl_lnt_abstract_type( t40 ).
      t102 = t103.
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t104.
      DATA(t105) = abap_true.
      IF t105 = abap_true.
        DATA(t106) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
        t104 = t106.
      ELSE.
        DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t107.
        t104 = t107.
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      t96 = NEW zcl_lnt_typed_identifier( i_token = t97 i_filename = t100 i_type_9913 = t102 i_meta = t104 i_value = t108 ).
      result = t96.
      RETURN.
    ELSE.
      DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_abstract_token.
      DATA t111 TYPE REF TO zcl_lnt_expression_node.
      DATA(t112) = CAST zcl_lnt_expression_node( t4 ).
      t111 = t112.
      t110 = t111->get_first_token( ).
      DATA t113 TYPE string.
      DATA(t114) = CAST zcl_lnt_syntax_input( t2 ).
      t113 = t114->filename.
      DATA t115 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t116) = |method param, todo|.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      t115 = NEW zcl_lnt_unknown_type( i_error = t116 i_qualified_name = t117 ).
      DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t118.
      DATA(t119) = abap_true.
      IF t119 = abap_true.
        DATA(t120) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
        t118 = t120.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t121.
        t118 = t121.
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      t109 = NEW zcl_lnt_typed_identifier( i_token = t110 i_filename = t113 i_type_9913 = t115 i_meta = t118 i_value = t122 ).
      result = t109.

    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d799_ff940767bff6.
  ENDMETHOD.
ENDCLASS.
