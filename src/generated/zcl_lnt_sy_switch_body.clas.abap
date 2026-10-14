* TS: src/abap/5_syntax/expressions/switch_body.ts:8:1 SwitchBody
CLASS zcl_lnt_sy_switch_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_switch_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_expression_node( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = CAST zcl_lnt_expression_node( t1 ).
    t14 = t15.
    DATA(t16) = |THEN|.
    t13 = t14->find_expression_after_token( i_text = t16 ).
    t12 = t13.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = CAST zcl_lnt_expression_node( t12 ).
    t20 = t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zcl_lnt_expression_node( t20 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zif_lnt_statement_runnable.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = CAST zcl_lnt_expression_node( t20 ).
      t27 = t28.
      t26 = t27->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t22 = t26.
    ENDIF.
    t19 = t22.
    t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_source ).
    t17 = xsdbool( t18 = abap_false ).
    IF t17 = abap_true.
      DATA t29 TYPE string.
      DATA(t30) = |SwitchBody, unexpected|.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = CAST zcl_lnt_syntax_input( t2 ).
      t31 = t32->issues.
      DATA t33 TYPE REF TO zcl_lnt_issue.
      DATA(t34) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = CAST zcl_lnt_expression_node( t1 ).
      t36 = t37.
      t35 = t36->get_first_token(  ).
      DATA(t38) = t29.
      DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t39.
      t33 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t34 i_token = t35 i_message_26cb = t38 i_fix = t39 ).
      APPEND t33 TO t31->items.
      DATA t40 TYPE REF TO zcl_lnt_void_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA(t42) = abap_true.
      IF t42 = abap_true.
        DATA(t43) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t43.
        t41 = t44.
      ELSE.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        t41 = t45.
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      t40 = zcl_lnt_void_type=>get_db65( i_voided = t41 i_qualified_name = t46 ).
      result = t40.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA(t52) = CAST zcl_lnt_expression_node( t12 ).
      t51 = t52.
      t49 = t51.
    ELSE.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t53.
      t49 = t53.
    ENDIF.
    DATA(t54) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t55) = CAST zcl_lnt_abstract_type( t3 ).
    DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t58.
    t48 = zcl_lnt_sy_source=>run_syntax( i_node = t49 i_input_967e = t54 i_target_type = t55 i_write_reference = t56 i_allow_generic_deference = t57 i_read_reference = t58 ).
    t47 = t48.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    DATA(t61) = CAST zcl_lnt_expression_node( t1 ).
    t60 = t61.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t59 = t60->find_direct_expressions( i_type_9913 = t62 ).
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t63.
    DATA t64 TYPE REF TO object.
    CLEAR t64.
    LOOP AT t59->items INTO t64.
      t63 ?= t64.
      DATA t65 TYPE abap_bool.
      DATA(t66) = CAST zcl_lnt_expression_node( t63 ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      DATA(t68) = CAST zcl_lnt_expression_node( t12 ).
      t67 = t68.
      t65 = xsdbool( t66 = t67 ).
      IF t65 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t69 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t69.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t70.
      DATA(t71) = abap_true.
      IF t71 = abap_true.
        DATA(t72) = CAST zcl_lnt_expression_node( t63 ).
        t70 = t72.
      ELSE.
        DATA t73 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t73.
        t70 = t73.
      ENDIF.
      DATA(t74) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t75 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t77) = CAST zcl_lnt_abstract_type( t3 ).
      t76 = t77.
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = CAST zcl_lnt_abstract_type( t76 ).
      IF t80 IS INITIAL.
        t79 = abap_true.
      ENDIF.
      IF t79 = abap_true.
        DATA(t81) = CAST zcl_lnt_abstract_type( t47 ).
        t78 = t81.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t82.
        DATA(t83) = abap_true.
        IF t83 = abap_true.
          DATA t84 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t85) = CAST zcl_lnt_abstract_type( t76 ).
          t84 = t85.
          t82 = t84.
        ELSE.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t86.
          t82 = t86.
        ENDIF.
        t78 = t82.
      ENDIF.
      t75 = t78.
      DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t89.
      t69 = zcl_lnt_sy_source=>run_syntax( i_node = t70 i_input_967e = t74 i_target_type = t75 i_write_reference = t87 i_allow_generic_deference = t88 i_read_reference = t89 ).
    ENDLOOP.
    DATA(t90) = CAST zcl_lnt_abstract_type( t47 ).
    result = t90.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d821_2e45b1626a3a.
  ENDMETHOD.
ENDCLASS.
