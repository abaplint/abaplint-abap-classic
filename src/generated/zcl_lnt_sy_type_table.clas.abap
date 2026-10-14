* TS: src/abap/5_syntax/expressions/type_table.ts:10:1 TypeTable
CLASS zcl_lnt_sy_type_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type_table IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name_prefix ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
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
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = CAST zif_lnt_union_bb14dc41( t1 ).
      DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
      t15 = t16->find_first_expression( i_type_9913 = t17 ).
      t4 = t15.
    ENDIF.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = CAST zcl_lnt_expression_node( t4 ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zcl_lnt_expression_node( t19 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t25.
      result = t25.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    DATA(t29) = CAST zcl_lnt_expression_node( t4 ).
    t28 = t29.
    t27 = t28->get_first_token( ).
    t26 = t27.
    DATA(t30) = VALUE string( ).
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    t32 = t33.
    DATA(t34) = VALUE string( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = CAST zlnt_runtime_opti_4ba3bdccd169( t32 ).
    IF t36 IS BOUND.
      IF t36->has = abap_true.
        t35 = xsdbool( strlen( t36->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t35 = abap_true.
      DATA t37 TYPE string.
      DATA(t38) = CAST zlnt_runtime_opti_4ba3bdccd169( t32 ).
      t37 = t38->value.
      t34 = t37.
    ELSE.
      DATA(t39) = ||.
      t34 = t39.
    ENDIF.
    t31 = t34.
    t30 = t31.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE string.
    DATA t42 TYPE string.
    DATA t43 TYPE REF TO zcl_lnt_abstract_token.
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t45) = CAST zif_lnt_union_bb14dc41( t1 ).
    t44 = t45->get_first_token( ).
    t43 = t44.
    DATA t46 TYPE string.
    DATA(t47) = CAST zcl_lnt_abstract_token( t43 ).
    t46 = t47->str.
    t42 = t46.
    DATA(t48) = strlen( t42 ).
    t41 = t42.
    IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t41 TO UPPER CASE.
    ELSE.
      t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
    ENDIF.
    DATA(t49) = |TYPES|.
    t40 = xsdbool( t41 = t49 ).
    IF t40 = abap_true.
      DATA t50 TYPE string.
      DATA(t51) = t30.
      DATA t52 TYPE string.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t54) = CAST zcl_lnt_abstract_token( t26 ).
      t53 = t54.
      DATA t55 TYPE string.
      DATA(t56) = CAST zcl_lnt_abstract_token( t53 ).
      t55 = t56->str.
      t52 = t55.
      DATA(t57) = strlen( t51 ).
      t50 = |{ t51 }{ t52 }|.
      t30 = t50.
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE string.
      DATA t61 TYPE REF TO zcl_lnt_current_scope.
      DATA(t62) = CAST zcl_lnt_syntax_input( t2 ).
      t61 = t62->scope.
      t60 = t61->get_type( ).
      DATA(t63) = |class_definition|.
      t59 = xsdbool( t60 = t63 ).
      t58 = t59.
      IF t59 = abap_false.
        DATA t64 TYPE abap_bool.
        DATA t65 TYPE string.
        DATA t66 TYPE REF TO zcl_lnt_current_scope.
        DATA(t67) = CAST zcl_lnt_syntax_input( t2 ).
        t66 = t67->scope.
        t65 = t66->get_type( ).
        DATA(t68) = |interface|.
        t64 = xsdbool( t65 = t68 ).
        t58 = t64.
      ENDIF.
      IF t58 = abap_true.
        DATA t69 TYPE string.
        DATA t70 TYPE string.
        DATA t71 TYPE string.
        DATA t72 TYPE REF TO zcl_lnt_current_scope.
        DATA(t73) = CAST zcl_lnt_syntax_input( t2 ).
        t72 = t73->scope.
        t71 = t72->get_name( ).
        DATA(t74) = |=>|.
        DATA(t75) = strlen( t71 ).
        t70 = |{ t71 }{ t74 }|.
        DATA(t76) = t30.
        DATA(t77) = strlen( t70 ).
        t69 = |{ t70 }{ t76 }|.
        t30 = t69.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t78.
    DATA t79 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t79.
    DATA t80 TYPE REF TO zcl_lnt_basic_types.
    DATA(t81) = CAST zcl_lnt_syntax_input( t2 ).
    t80 = NEW zcl_lnt_basic_types( i_input_967e = t81 ).
    DATA(t82) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t83.
    DATA(t84) = abap_true.
    IF t84 = abap_true.
      DATA(t85) = t30.
      DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t86->has = abap_true.
      t86->value = t85.
      t83 = t86.
    ELSE.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      t83 = t87.
    ENDIF.
    t79 = t80->parse_table( i_node = t82 i_name = t83 ).
    t78 = t79.
    DATA(t88) = VALUE abap_bool( ).
    DATA t89 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t90) = CAST zcl_lnt_abstract_type( t78 ).
    t89 = t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    t91 = t92.
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = CAST zcl_lnt_abstract_type( t89 ).
    IF t94 IS INITIAL.
      t93 = abap_true.
    ENDIF.
    t88 = t93.
    IF t88 = abap_true.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t95.
      DATA(t96) = abap_true.
      IF t96 = abap_true.
        DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t98) = CAST zcl_lnt_abstract_token( t26 ).
        DATA t99 TYPE string.
        DATA(t100) = CAST zcl_lnt_syntax_input( t2 ).
        t99 = t100->filename.
        DATA t101 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t102) = |TableType, fallback|.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        t101 = NEW zcl_lnt_unknown_type( i_error = t102 i_qualified_name = t103 ).
        DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        t97 = NEW zcl_lnt_typed_identifier( i_token = t98 i_filename = t99 i_type_9913 = t101 i_meta = t104 i_value = t105 ).
        t95 = t97.
      ELSE.
        DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t106.
        t95 = t106.
      ENDIF.
      result = t95.
      RETURN.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t108) = CAST zif_lnt_union_bb14dc41( t1 ).
    DATA(t109) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c ).
    t107 = t108->find_all_expressions( i_type_9913 = t109 ).
    DATA t110 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t110.
    DATA t111 TYPE REF TO object.
    CLEAR t111.
    LOOP AT t107->items INTO t111.
      t110 ?= t111.
      DATA t112 TYPE REF TO zcl_lnt_unknown_type.
      DATA t113 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t114) = CAST zcl_lnt_expression_node( t110 ).
      DATA t115 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t116) = CAST zcl_lnt_abstract_type( t78 ).
      t115 = t116.
      t113 = zcl_lnt_sy_type_table_key=>run_syntax( i_node = t114 i_type_9913 = t115 ).
      t112 = t113.
      DATA t117 TYPE abap_bool.
      DATA(t118) = CAST zcl_lnt_unknown_type( t112 ).
      t117 = xsdbool( t118 IS BOUND ).
      IF t117 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t120) = CAST zcl_lnt_unknown_type( t112 ).
        t119 = t120.
        t78 = t119.
      ENDIF.
    ENDLOOP.
    DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t121.
    DATA(t122) = abap_true.
    IF t122 = abap_true.
      DATA t123 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t124) = CAST zcl_lnt_abstract_token( t26 ).
      DATA t125 TYPE string.
      DATA(t126) = CAST zcl_lnt_syntax_input( t2 ).
      t125 = t126->filename.
      DATA t127 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t128) = CAST zcl_lnt_abstract_type( t78 ).
      t127 = t128.
      DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t129.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      t123 = NEW zcl_lnt_typed_identifier( i_token = t124 i_filename = t125 i_type_9913 = t127 i_meta = t129 i_value = t130 ).
      t121 = t123.
    ELSE.
      DATA t131 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t131.
      t121 = t131.
    ENDIF.
    result = t121.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d824_3e01bff07755.
  ENDMETHOD.
ENDCLASS.
