* TS: src/abap/5_syntax/statements/do.ts:10:1 Do
CLASS zcl_lnt_sy_do DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_do IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = |DO|.
    t4 = t5->find_expression_after_token( i_text = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t7 = t8->find_direct_expressions( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t7->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = CAST zcl_lnt_expression_node( t10 ).
        t14 = t16.
      ELSE.
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t17.
        t14 = t17.
      ENDIF.
      DATA(t18) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t22.
      t13 = zcl_lnt_sy_source=>run_syntax( i_node = t14 i_input_967e = t18 i_target_type = t19 i_write_reference = t20 i_allow_generic_deference = t21 i_read_reference = t22 ).
      t12 = t13.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA(t27) = CAST zcl_lnt_expression_node( t10 ).
        t25 = t27.
      ELSE.
        DATA t28 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t28.
        t25 = t28.
      ENDIF.
      DATA(t29) = CAST zcl_lnt_expression_node( t3 ).
      t24 = xsdbool( t25 = t29 ).
      t23 = t24.
      IF t24 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zcl_lnt_type_utils.
        DATA t33 TYPE REF TO zcl_lnt_current_scope.
        DATA(t34) = CAST zcl_lnt_syntax_input( t2 ).
        t33 = t34->scope.
        t32 = NEW zcl_lnt_type_utils( i_scope = t33 ).
        DATA(t35) = CAST zcl_lnt_abstract_type( t12 ).
        DATA t36 TYPE REF TO zcl_lnt_integer_type.
        DATA t37 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t37.
        t36 = zcl_lnt_integer_type=>get_db65( i_input_967e = t37 ).
        t31 = t32->is_assignable( i_source_75cf = t35 i_target_5f8a = t36 ).
        DATA(t38) = abap_false.
        t30 = xsdbool( t31 = t38 ).
        t23 = t30.
      ENDIF.
      IF t23 = abap_true.
        DATA t39 TYPE string.
        DATA(t40) = |DO TIMES must be numeric|.
        t39 = t40.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t42) = CAST zcl_lnt_syntax_input( t2 ).
        t41 = t42->issues.
        DATA t43 TYPE REF TO zcl_lnt_issue.
        DATA(t44) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t46) = CAST zcl_lnt_statement_node( t1 ).
        t45 = t46->get_first_token( ).
        DATA(t47) = t39.
        DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t48.
        t43 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t44 i_token = t45 i_message_26cb = t47 i_fix = t48 ).
        APPEND t43 TO t41->items.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t50) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t49 = t50->find_direct_expressions( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t52.
    DATA t53 TYPE REF TO object.
    CLEAR t53.
    LOOP AT t49->items INTO t53.
      t52 ?= t53.
      DATA t54 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t55) = CAST zcl_lnt_expression_node( t52 ).
      DATA(t56) = CAST zcl_lnt_syntax_input( t2 ).
      t54 = zcl_lnt_sy_target=>run_syntax( i_node = t55 i_input_967e = t56 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d872_3bfff898e580.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
