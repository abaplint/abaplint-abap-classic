* TS: src/abap/5_syntax/statements/perform.ts:79:25 closure.106100
CLASS zcl_lnt_closure_77054774 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_closure_d810f2d3.
    DATA changing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA found TYPE REF TO zif_lnt_form_definition.
    DATA input_2fd0 TYPE REF TO zcl_lnt_syntax_input.
    DATA name TYPE string.
    DATA node TYPE REF TO zcl_lnt_statement_node.
    DATA tables_9801 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA using TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA outer TYPE REF TO zcl_lnt_sy_perform.
    METHODS constructor IMPORTING i_changing TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_found TYPE REF TO zif_lnt_form_definition OPTIONAL i_input_967e TYPE REF TO zcl_lnt_syntax_input i_name TYPE string i_node TYPE REF TO
    zcl_lnt_statement_node i_tables_8d5a TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_using TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_outer TYPE REF TO zcl_lnt_sy_perform.
    METHODS call_7bd1.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_closure_77054774 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_changing ).
    DATA(t2) = CAST zif_lnt_form_definition( i_found ).
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = i_name.
    DATA(t5) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( i_tables_8d5a ).
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( i_using ).
    DATA(t8) = CAST zcl_lnt_sy_perform( i_outer ).
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->changing = t9.
    DATA(t10) = CAST zif_lnt_form_definition( t2 ).
    me->found = t10.
    DATA(t11) = CAST zcl_lnt_syntax_input( t3 ).
    me->input_2fd0 = t11.
    DATA(t12) = t4.
    me->name = t12.
    DATA(t13) = CAST zcl_lnt_statement_node( t5 ).
    me->node = t13.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    me->tables_9801 = t14.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    me->using = t15.
    DATA(t16) = CAST zcl_lnt_sy_perform( t8 ).
    me->outer = t16.
  ENDMETHOD.
  METHOD call_7bd1.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->changing ).
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_form_definition.
    DATA(t4) = CAST zif_lnt_form_definition( me->found ).
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t6) = CAST zcl_lnt_syntax_input( me->input_2fd0 ).
    t5 = t6.
    DATA t7 TYPE string.
    DATA(t8) = CONV string( me->name ).
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA(t10) = CAST zcl_lnt_statement_node( me->node ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( me->tables_9801 ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( me->using ).
    t13 = t14.
    DATA t15 TYPE REF TO zif_lnt_form_definition.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_form_definition.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_form_definition.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_form_definition.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_current_scope.
    DATA t20 TYPE REF TO zcl_lnt_current_scope.
    DATA(t21) = CAST zcl_lnt_syntax_input( t5 ).
    t20 = t21->scope.
    t19 = t20.
    DATA t22 TYPE string.
    DATA(t23) = t7.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_form_definition.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t27) = CAST zcl_lnt_current_scope( t19 ).
    t26 = t27->current.
    t25 = t26.
    DATA t28 TYPE REF TO zif_lnt_form_definition.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = CAST zcl_lnt_spaghetti_scope_node( t25 ).
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zif_lnt_form_definition.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_form_definition.
      DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t34) = CAST zcl_lnt_spaghetti_scope_node( t25 ).
      t33 = t34.
      DATA(t35) = t22.
      t32 = t33->find_form_definition( i_name = t35 ).
      t28 = t32.
    ENDIF.
    t24 = t28.
    t18 = t24.
    t17 = t18.
    DATA t36 TYPE REF TO zif_lnt_form_definition.
    CLEAR t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = CAST zif_lnt_form_definition( t17 ).
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    IF t37 = abap_true.
      DATA t39 TYPE REF TO zif_lnt_form_definition.
      DATA(t40) = CAST zif_lnt_form_definition( t3 ).
      t39 = t40.
      t36 = t39.
    ELSE.
      DATA t41 TYPE REF TO zif_lnt_form_definition.
      DATA(t42) = CAST zif_lnt_form_definition( t17 ).
      t41 = t42.
      t36 = t41.
    ENDIF.
    t16 = t36.
    t15 = t16.
    DATA t43 TYPE abap_bool.
    DATA t44 TYPE abap_bool.
    DATA(t45) = CAST zcl_lnt_sy_perform( me->outer ).
    DATA(t46) = CAST zcl_lnt_statement_node( t9 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t49) = CAST zif_lnt_form_definition( t15 ).
    t48 = t49->get_tables_parameters(  ).
    DATA(t50) = |TABLES|.
    DATA(t51) = CAST zcl_lnt_syntax_input( t5 ).
    t44 = t45->check_parameters( i_node = t46 i_actual = t47 i_formal = t48 i_kind = t50 i_input_967e = t51 ).
    DATA(t52) = abap_false.
    t43 = xsdbool( t44 = t52 ).
    IF t43 = abap_true.
      RETURN.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t56) = CAST zif_lnt_form_definition( t15 ).
    t55 = t56->get_using_parameters(  ).
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t58) = CAST zif_lnt_form_definition( t15 ).
    t57 = t58->get_changing_parameters(  ).
    t54 = t55->concat( p0 = t57 ).
    t53 = t54.
    DATA t59 TYPE abap_bool.
    DATA(t60) = CAST zcl_lnt_sy_perform( me->outer ).
    DATA(t61) = CAST zcl_lnt_statement_node( t9 ).
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t62 = t63->concat( p0 = t64 ).
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA(t66) = |USING/CHANGING|.
    DATA(t67) = CAST zcl_lnt_syntax_input( t5 ).
    t59 = t60->check_parameters( i_node = t61 i_actual = t62 i_formal = t65 i_kind = t66 i_input_967e = t67 ).
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_61ac7bd03e15=>zlnt_member_d0_5ecc9e9989d6ba.
  ENDMETHOD.
  METHOD zif_lnt_closure_d810f2d3~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_closure_d810f2d3~call_7bd1.
    me->call_7bd1(  ).
  ENDMETHOD.
ENDCLASS.
