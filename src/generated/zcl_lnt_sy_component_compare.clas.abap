* TS: src/abap/5_syntax/expressions/component_compare.ts:9:1 ComponentCompare
CLASS zcl_lnt_sy_component_compare DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_left_type TYPE REF TO zcl_lnt_abstract_type i_right_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_compare IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_left_type.
    DATA(t4) = i_right_type.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
    t6 = t7->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA(t11) = t5.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE string.
      DATA(t17) = |ComponentCompare, chain not found|.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = t2.
      t18 = t19->issues.
      DATA t20 TYPE REF TO zcl_lnt_issue.
      DATA(t21) = t2.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t23) = t1.
      t22 = t23->get_first_token( ).
      DATA(t24) = t16.
      DATA t25 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t25.
      t20 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t21 i_token = t22 i_message_26cb = t24 i_fix = t25 ).
      APPEND t20 TO t18->items.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_abstract_type.
    DATA t27 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t28) = t3.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = t5.
    t29 = t30.
    DATA(t31) = t2.
    t27 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t28 i_node = t29 i_input_967e = t31 ).
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t33) = t1.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t32 = t33->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    LOOP AT t32->items INTO t36.
      t35 ?= t36.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA(t39) = t35.
      DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
      t38 = t39->find_direct_expression( i_type_9913 = t40 ).
      t37 = t38.
      DATA t41 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t41.
      DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = t37.
      t43 = t44.
      DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = t43.
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t48.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t49.
        DATA t50 TYPE REF TO zif_lnt_node.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_abstract_node.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA(t53) = t43.
        t52 = t53.
        t51 = t52.
        DATA t54 TYPE REF TO zif_lnt_node.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA t56 TYPE REF TO zif_lnt_node.
          DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t58) = t51.
          t57 = t58->children.
          DATA t59 TYPE REF TO object.
          CLEAR t59.
          READ TABLE t57->items INDEX 1 INTO t59.
          t56 ?= t59.
          t54 = t56.
        ELSE.
          DATA t60 TYPE REF TO zif_lnt_node.
          CLEAR t60.
          t54 = t60.
        ENDIF.
        t50 = t54.
        t49 ?= t50.
        t45 = t49.
      ENDIF.
      t42 = t45.
      t41 = t42.
      DATA(t61) = VALUE abap_bool( ).
      DATA t62 TYPE abap_bool.
      DATA t63 TYPE abap_bool.
      DATA(t64) = t4.
      t63 = xsdbool( t64 IS BOUND ).
      t62 = t63.
      IF t63 = abap_true.
        DATA t65 TYPE abap_bool.
        DATA(t66) = t37.
        t65 = xsdbool( t66 IS BOUND ).
        t62 = t65.
      ENDIF.
      t61 = t62.
      IF t62 = abap_true.
        DATA t67 TYPE abap_bool.
        DATA(t68) = t41.
        t67 = xsdbool( t68 IS BOUND ).
        t61 = t67.
      ENDIF.
      IF t61 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t70.
        DATA(t71) = abap_true.
        IF t71 = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t73) = t4.
          t72 = t73.
          t70 = t72.
        ELSE.
          DATA t74 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t74.
          t70 = t74.
        ENDIF.
        t69 = t70.
        DATA(t75) = VALUE abap_bool( ).
        DATA t76 TYPE string.
        DATA t77 TYPE string.
        DATA t78 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t79) = t41.
        t78 = t79.
        t77 = t78->concat_tokens( ).
        DATA(t80) = strlen( t77 ).
        t76 = t77.
        IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t76 TO UPPER CASE.
        ELSE.
          t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
        ENDIF.
        DATA(t81) = |TABLE_LINE|.
        t75 = xsdbool( t76 <> t81 ).
        IF t75 = abap_true.
          DATA t82 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t82.
          DATA t83 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t83.
          DATA(t84) = abap_true.
          IF t84 = abap_true.
            DATA t85 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t86) = t69.
            t85 = t86.
            t83 = t85.
          ELSE.
            DATA t87 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t87.
            t83 = t87.
          ENDIF.
          DATA t88 TYPE REF TO zif_lnt_node.
          DATA t89 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t90) = t41.
          t89 = t90.
          t88 ?= t89.
          DATA(t91) = t2.
          t82 = zcl_lnt_sy_component_name=>run_syntax( i_context = t83 i_node = t88 i_input_967e = t91 ).
          t69 = t82.
        ENDIF.
        DATA t92 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t93) = t69.
        DATA t94 TYPE REF TO zcl_lnt_expression_node.
        DATA(t95) = t37.
        t94 = t95.
        DATA(t96) = t2.
        t92 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t93 i_node = t94 i_input_967e = t96 ).
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA(t100) = t35.
          t98 = t100.
        ELSE.
          DATA t101 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t101.
          t98 = t101.
        ENDIF.
        DATA(t102) = t2.
        DATA(t103) = t26.
        DATA t104 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t106.
        t97 = zcl_lnt_sy_source=>run_syntax( i_node = t98 i_input_967e = t102 i_target_type = t103 i_write_reference = t104 i_allow_generic_deference = t105 i_read_reference = t106 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d766_a8d695dd1092.
  ENDMETHOD.
ENDCLASS.
