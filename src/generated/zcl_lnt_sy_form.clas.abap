* TS: src/abap/5_syntax/statements/form.ts:8:1 Form
CLASS zcl_lnt_sy_form DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_form IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      DATA t15 TYPE string.
      t15 = t9->concat_tokens( ).
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t15.
      t11 = t18.
    ENDIF.
    t7 = t11.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20 = xsdbool( t3 IS INITIAL ).
    t19 = t20.
    IF t20 = abap_false.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t28 = t7.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t32) = VALUE abap_bool( ).
      IF t28 IS INITIAL.
        t32 = abap_true.
      ELSEIF t28->has = abap_false.
        t32 = abap_true.
      ENDIF.
      t19 = t32.
    ENDIF.
    IF t19 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = t2->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Form, could not find name| i_fix = t43 ).
      t36->load( ).
      APPEND t38 TO t36->items.
      t36->save( ).
      RETURN.
    ENDIF.
    IF xsdbool( strlen( t7->value ) > 30 ) = abap_true.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t52 = t2->issues.
      DATA t54 TYPE REF TO zcl_lnt_issue.
      DATA t60 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t54 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t3->get_first_token( ) i_message_26cb = |FORM name longer than 30 characters| i_fix = t60 ).
      t52->load( ).
      APPEND t54 TO t52->items.
      t52->save( ).
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_current_scope.
    t61 = t2->scope.
    DATA t65 TYPE string.
    t65 = t7->value.
    DATA t72 TYPE REF TO zcl_lnt_position.
    t72 = t1->get_first_token( )->start.
    DATA t75 TYPE string.
    t75 = t2->filename.
    DATA t77 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t78 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t87 TYPE REF TO zcl_lnt_position.
    t78 = NEW zcl_lnt_iscope_identifier( i_stype = |form| i_sname = t65 i_filename = t75 i_start = t72 i_end = t87 ).
    CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
    t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t90 ).
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t91 ).
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t92 ).
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t93 ).
    ENDIF.
    CREATE OBJECT t78->zlnt_json_ownkeys_70e5fd461788.
    t78->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t95 ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t97 ).
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t99 ).
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t101 ).
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t103 ).
    ENDIF.
    t77 = t78.
    DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t106 = t61->current.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t106 IS INITIAL ) = abap_true.
      DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t61->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t77 i_parent = t117 ).
      DELETE t61->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t119 = t61->current.
      t61->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t77 i_parent = t119 ).
      DELETE t61->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t135 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t135 = t61->current.
      t119->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t135 ).
    ENDIF.
    DATA t137 TYPE REF TO zcl_lnt_ty_form_definition.
    t137 = NEW zcl_lnt_ty_form_definition( i_node = t1 i_input_967e = t2 ).
    t2->scope->update_form_definition( i_f = t137 ).
    DATA t144 TYPE REF TO zcl_lnt_current_scope.
    t144 = t2->scope.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t149 = t137->using_parameters.
    t144->add_list( i_identifiers = t149 ).
    DATA t151 TYPE REF TO zcl_lnt_current_scope.
    t151 = t2->scope.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t156 = t137->changing_parameters.
    t151->add_list( i_identifiers = t156 ).
    DATA t158 TYPE REF TO zcl_lnt_current_scope.
    t158 = t2->scope.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t163 = t137->table_parameters.
    t158->add_list( i_identifiers = t163 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d902_e823d7f8c705.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
