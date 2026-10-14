* TS: src/abap/5_syntax/statements/get_bit.ts:12:1 GetBit
CLASS zcl_lnt_sy_get_bit DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_get_bit IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t5 = t6->find_direct_expressions( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t5->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t11.
      DATA(t12) = abap_true.
      IF t12 = abap_true.
        DATA(t13) = t8.
        t11 = t13.
      ELSE.
        DATA t14 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t14.
        t11 = t14.
      ENDIF.
      DATA(t15) = t2.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t10 = zcl_lnt_sy_source=>run_syntax( i_node = t11 i_input_967e = t15 i_target_type = t16 i_write_reference = t17 i_allow_generic_deference = t18 i_read_reference = t19 ).
      t3 = t10.
    ENDLOOP.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE abap_bool.
    DATA(t22) = t3.
    t21 = xsdbool( t22 IS BOUND ).
    t20 = t21.
    IF t21 = abap_true.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_type_utils.
      DATA t26 TYPE REF TO zcl_lnt_current_scope.
      DATA(t27) = t2.
      t26 = t27->scope.
      t25 = NEW zcl_lnt_type_utils( i_scope = t26 ).
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t31) = t3.
        t30 = t31.
        t28 = t30.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      t24 = t25->is_hex_like( i_type_9913 = t28 ).
      DATA(t33) = abap_false.
      t23 = xsdbool( t24 = t33 ).
      t20 = t23.
    ENDIF.
    IF t20 = abap_true.
      DATA t34 TYPE string.
      DATA(t35) = |Input must be byte-like|.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = t2.
      t36 = t37->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA(t39) = t2.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = t1.
      t40 = t41->get_first_token( ).
      DATA(t42) = t34.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t43.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t39 i_token = t40 i_message_26cb = t42 i_fix = t43 ).
      APPEND t38 TO t36->items.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t45) = t1.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    t44 = t45->find_direct_expressions( i_type_9913 = t46 ).
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t47.
    DATA t48 TYPE REF TO object.
    CLEAR t48.
    LOOP AT t44->items INTO t48.
      t47 ?= t48.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA(t52) = t47.
      t51 = t52.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t53.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = t51.
      IF t55 IS INITIAL.
        t54 = abap_true.
      ENDIF.
      IF t54 = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t56.
        t53 = t56.
      ELSE.
        DATA t57 TYPE REF TO zcl_lnt_expression_node.
        DATA(t58) = t51.
        DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
        t57 = t58->find_direct_expression( i_type_9913 = t59 ).
        t53 = t57.
      ENDIF.
      t50 = t53.
      t49 = t50.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t49.
      t60 = xsdbool( t61 IS BOUND ).
      IF t60 = abap_true.
        DATA(t62) = t47.
        DATA(t63) = t2.
        DATA t64 TYPE REF TO zcl_lnt_integer_type.
        DATA t65 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t65.
        t64 = zcl_lnt_integer_type=>get_db65( i_input_967e = t65 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t62 i_input_967e = t63 i_type_9913 = t64 ).
      ELSE.
        DATA t66 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t67) = t47.
        DATA(t68) = t2.
        t66 = zcl_lnt_sy_target=>run_syntax( i_node = t67 i_input_967e = t68 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d884_00ae71c368d2.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
