* TS: src/abap/5_syntax/statements/return.ts:8:1 Return
CLASS zcl_lnt_sy_return DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_return IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t11 TYPE REF TO zcl_lnt_current_scope.
      DATA(t12) = CAST zcl_lnt_syntax_input( t2 ).
      t11 = t12->scope.
      t10 = t11->find_returning_parameter(  ).
      t9 = t10.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t15) = CAST zcl_lnt_typed_identifier( t9 ).
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = CAST zcl_lnt_typed_identifier( t14 ).
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      t13 = t18.
      IF t13 = abap_true.
        DATA t20 TYPE string.
        DATA(t21) = |Method does not have a RETURNING parameter to assign to|.
        t20 = t21.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t23) = CAST zcl_lnt_syntax_input( t2 ).
        t22 = t23->issues.
        DATA t24 TYPE REF TO zcl_lnt_issue.
        DATA(t25) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        DATA(t28) = CAST zcl_lnt_expression_node( t3 ).
        t27 = t28.
        t26 = t27->get_first_token(  ).
        DATA(t29) = t20.
        DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t30.
        t24 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t25 i_token = t26 i_message_26cb = t29 i_fix = t30 ).
        APPEND t24 TO t22->items.
        RETURN.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_current_scope.
      DATA(t32) = CAST zcl_lnt_syntax_input( t2 ).
      t31 = t32->scope.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        DATA t36 TYPE REF TO zcl_lnt_expression_node.
        DATA(t37) = CAST zcl_lnt_expression_node( t3 ).
        t36 = t37.
        t35 = t36->get_first_token(  ).
        t33 = t35.
      ELSE.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t38.
        t33 = t38.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t40) = CAST zcl_lnt_typed_identifier( t9 ).
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t42) = |Read From|.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t41->sval = t42.
      DATA t43 TYPE string.
      DATA(t44) = CAST zcl_lnt_syntax_input( t2 ).
      t43 = t44->filename.
      DATA t45 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t45.
      t31->add_reference( i_usage = t33 i_referencing = t39 i_type_9913 = t41 i_filename = t43 i_extra = t45 ).
      DATA t46 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA(t50) = CAST zcl_lnt_expression_node( t3 ).
        t49 = t50.
        t47 = t49.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t51.
        t47 = t51.
      ENDIF.
      DATA(t52) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t53 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_abstract_type.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t58) = CAST zcl_lnt_typed_identifier( t9 ).
        t57 = t58.
        t56 = t57.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t60) = CAST zcl_lnt_typed_identifier( t56 ).
        t59 = t60->type_cba0.
        t55 = t59.
        t53 = t55.
      ELSE.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t61.
        t53 = t61.
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t64.
      t46 = zcl_lnt_sy_source=>run_syntax( i_node = t47 i_input_967e = t52 i_target_type = t53 i_write_reference = t62 i_allow_generic_deference = t63 i_read_reference = t64 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d931_58e6f3efe92b.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
