* TS: src/abap/5_syntax/statements/call.ts:9:1 Call
CLASS zcl_lnt_sy_call DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_call IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    t3 = t4.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE i.
    DATA(t12) = t3.
    t11 = lines( t12->items ).
    DATA(t13) = 2.
    t10 = xsdbool( t11 = t13 ).
    IF t10 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t17) = t3.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      READ TABLE t17->items INDEX 1 INTO t18.
      t16 ?= t18.
      t15 ?= t16.
      t14 = t15.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t20) = t14.
      DATA(t21) = t2.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t22.
      t19 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t20 i_input_967e = t21 i_target_type = t22 ).
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t26) = t3.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    READ TABLE t26->items INDEX 3 INTO t27.
    t25 ?= t27.
    t24 ?= t25.
    t23 = t24.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = t23.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE string.
      DATA(t36) = |Call, child MethodSource not found|.
      t35 = t36.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t38) = t2.
      t37 = t38->issues.
      DATA t39 TYPE REF TO zcl_lnt_issue.
      DATA(t40) = t2.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = t1.
      t41 = t42->get_first_token( ).
      DATA(t43) = t35.
      DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t44.
      t39 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t40 i_token = t41 i_message_26cb = t43 i_fix = t44 ).
      APPEND t39 TO t37->items.
      RETURN.
    ENDIF.
    DATA t45 TYPE REF TO zif_lnt_union_8cd68e5e.
    DATA t46 TYPE REF TO zif_lnt_union_8cd68e5e.
    DATA(t47) = t23.
    DATA(t48) = t2.
    t46 = zcl_lnt_sy_method_source=>run_syntax( i_node = t47 i_input_967e = t48 ).
    t45 = t46.
    DATA t49 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t50 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t51) = t3.
    DATA t52 TYPE REF TO object.
    CLEAR t52.
    READ TABLE t51->items INDEX 4 INTO t52.
    t50 ?= t52.
    t49 = t50.
    DATA t53 TYPE abap_bool.
    DATA(t54) = t49.
    t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_expression_node ).
    IF t53 = abap_true.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA(t56) = t49.
      DATA t57 TYPE REF TO object.
      t57 = t56.
      t55 ?= t57.
      DATA(t58) = t2.
      DATA t59 TYPE REF TO zif_lnt_union_8cd68e5e.
      CLEAR t59.
      DATA t60 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA(t61) = t45.
      t60 = t61.
      DATA t62 TYPE REF TO zif_lnt_union_8cd68e5e.
      CLEAR t62.
      DATA t63 TYPE abap_bool.
      DATA(t64) = t60.
      t63 = xsdbool( t64 IS BOUND ).
      IF t63 = abap_true.
        DATA t65 TYPE REF TO zif_lnt_union_8cd68e5e.
        DATA(t66) = t60.
        t65 = t66.
        t62 = t65.
      ELSE.
        DATA t67 TYPE REF TO zcl_lnt_void_type.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA(t70) = |CallTODO|.
          DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t71->has = abap_true.
          t71->value = t70.
          t68 = t71.
        ELSE.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          t68 = t72.
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        t67 = zcl_lnt_void_type=>get_db65( i_voided = t68 i_qualified_name = t73 ).
        t62 = t67.
      ENDIF.
      t59 = t62.
      zcl_lnt_sy_method_call_body=>run_syntax( i_node = t55 i_input_967e = t58 i_method = t59 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d838_3ad58c72117d.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
