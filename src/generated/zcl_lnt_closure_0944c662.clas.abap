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
    DATA(t2) = i_found.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_name.
    DATA(t5) = i_node.
    DATA(t6) = i_tables_8d5a.
    DATA(t7) = i_using.
    DATA(t8) = i_outer.
    me->changing = i_changing.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `changing`.
    me->found = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `found`.
    me->input_2fd0 = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `input`.
    me->name = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    me->node = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `node`.
    me->tables_9801 = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tables`.
    me->using = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `using`.
    me->outer = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `outer`.
  ENDMETHOD.

  METHOD invoke.
    DATA(t2) = me->changing.
    DATA(t4) = me->found.
    DATA t5 TYPE REF TO zcl_lnt_syntax_input.
    t5 = me->input_2fd0.
    DATA(t8) = CONV string( me->name ).
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    t9 = me->node.
    DATA(t12) = me->tables_9801.
    DATA(t14) = me->using.
    DATA t15 TYPE REF TO zif_lnt_form_definition.
    DATA t17 TYPE REF TO zif_lnt_form_definition.
    DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t25 = t5->scope->current.
    DATA t28 TYPE REF TO zif_lnt_form_definition.
    IF xsdbool( t25 IS INITIAL ) = abap_true.
    ELSE.
      t28 = t25->find_form_definition( i_name = t8 ).
    ENDIF.
    t17 = t28.
    DATA t36 TYPE REF TO zif_lnt_form_definition.
    IF xsdbool( t17 IS INITIAL ) = abap_true.
      t36 = t4.
    ELSE.
      t36 = t17.
    ENDIF.
    t15 = t36.
    DATA(t45) = me->outer.
    IF xsdbool( t45->check_parameters( i_node = t9 i_actual = t12 i_formal = t15->get_tables_parameters( ) i_kind = |TABLES| i_input_967e = t5 ) = abap_false ) = abap_true.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t54 = t15->get_using_parameters( )->concat( p0 = t15->get_changing_parameters( ) ).
    DATA t59 TYPE abap_bool.
    t59 = me->outer->check_parameters( i_node = t9 i_actual = t14->concat( p0 = t2 ) i_formal = t54 i_kind = |USING/CHANGING| i_input_967e = t5 ).
  ENDMETHOD.

  METHOD call_7bd1.
    DATA t1 TYPE REF TO zlnt_exception_ts_bf7a77bb9e12.
    TRY.
        me->invoke( ).
        result = NEW zlnt_runtime_prom_22216e6f7fe7( ).
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
