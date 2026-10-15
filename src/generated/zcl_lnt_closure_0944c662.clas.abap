* TS: src/abap/5_syntax/statements/perform.ts:79:25 closure.114785
CLASS zcl_lnt_closure_0944c662 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zlnt_runtime_call_776cb4afcfb7.
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
    METHODS invoke.
    METHODS call_7bd1 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_closure_0944c662 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_changing.
    DATA(t2) = i_found.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_name.
    DATA(t5) = i_node.
    DATA(t6) = i_tables_8d5a.
    DATA(t7) = i_using.
    DATA(t8) = i_outer.
    DATA(t9) = t1.
    me->changing = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `changing`.
    DATA(t10) = t2.
    me->found = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `found`.
    DATA(t11) = t3.
    me->input_2fd0 = t11.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `input`.
    DATA(t12) = t4.
    me->name = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    DATA(t13) = t5.
    me->node = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `node`.
    DATA(t14) = t6.
    me->tables_9801 = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tables`.
    DATA(t15) = t7.
    me->using = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `using`.
    DATA(t16) = t8.
    me->outer = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
  ENDMETHOD.

  METHOD invoke.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->changing.
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_form_definition.
    DATA(t4) = me->found.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t6) = me->input_2fd0.
    t5 = t6.
    DATA t7 TYPE string.
    DATA(t8) = CONV string( me->name ).
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA(t10) = me->node.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = me->tables_9801.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = me->using.
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
    DATA(t21) = t5.
    t20 = t21->scope.
    t19 = t20.
    DATA t22 TYPE string.
    DATA(t23) = t7.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_form_definition.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t27) = t19.
    t26 = t27->current.
    t25 = t26.
    DATA t28 TYPE REF TO zif_lnt_form_definition.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t25.
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
      DATA(t34) = t25.
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
    DATA(t38) = t17.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    IF t37 = abap_true.
      DATA t39 TYPE REF TO zif_lnt_form_definition.
      DATA(t40) = t3.
      t39 = t40.
      t36 = t39.
    ELSE.
      DATA t41 TYPE REF TO zif_lnt_form_definition.
      DATA(t42) = t17.
      t41 = t42.
      t36 = t41.
    ENDIF.
    t16 = t36.
    t15 = t16.
    DATA t43 TYPE abap_bool.
    DATA t44 TYPE abap_bool.
    DATA(t45) = me->outer.
    DATA(t46) = t9.
    DATA(t47) = t11.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t49) = t15.
    t48 = t49->get_tables_parameters( ).
    DATA(t50) = |TABLES|.
    DATA(t51) = t5.
    t44 = t45->check_parameters( i_node = t46 i_actual = t47 i_formal = t48 i_kind = t50 i_input_967e = t51 ).
    DATA(t52) = abap_false.
    t43 = xsdbool( t44 = t52 ).
    IF t43 = abap_true.
      RETURN.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t56) = t15.
    t55 = t56->get_using_parameters( ).
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t58) = t15.
    t57 = t58->get_changing_parameters( ).
    t54 = t55->concat( p0 = t57 ).
    t53 = t54.
    DATA t59 TYPE abap_bool.
    DATA(t60) = me->outer.
    DATA(t61) = t9.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = t13.
    DATA(t64) = t1.
    t62 = t63->concat( p0 = t64 ).
    DATA(t65) = t53.
    DATA(t66) = |USING/CHANGING|.
    DATA(t67) = t5.
    t59 = t60->check_parameters( i_node = t61 i_actual = t62 i_formal = t65 i_kind = t66 i_input_967e = t67 ).
  ENDMETHOD.

  METHOD call_7bd1.
    DATA t1 TYPE REF TO zlnt_exception_ts_bf7a77bb9e12.
    CLEAR t1.
    TRY.
        me->invoke( ).
        DATA(t2) = NEW zlnt_runtime_prom_22216e6f7fe7( ).
        result = t2.
        RETURN.
      CATCH zlnt_exception_ts_bf7a77bb9e12 INTO t1.
        result = NEW #( ).
        result->rejection = t1.
        RETURN.
    ENDTRY.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_61ac7bd03e15=>zlnt_member_d0_5ecc9e9989d6ba.
  ENDMETHOD.

  METHOD zif_lnt_closure_d810f2d3~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_closure_d810f2d3~call_7bd1.
    result = me->call_7bd1( ).
  ENDMETHOD.
ENDCLASS.
