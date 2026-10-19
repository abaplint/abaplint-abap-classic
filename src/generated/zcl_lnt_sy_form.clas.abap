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
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t4 = t1->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = xsdbool( t9 IS INITIAL ).
    IF t12 = abap_true.
    ELSE.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t9.
      t15 = t16->concat_tokens( ).
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
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t28 = t7.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t32) = VALUE abap_bool( ).
      IF t28 IS INITIAL.
        t32 = abap_true.
      ELSEIF t28->has = abap_false.
        t32 = abap_true.
      ENDIF.
      t27 = t32.
      t19 = t27.
    ENDIF.
    IF t19 = abap_true.
      DATA(t35) = |Form, could not find name|.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = t2->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      t40 = t1->get_first_token( ).
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t40 i_message_26cb = t35 i_fix = t43 ).
      t36->load( ).
      APPEND t38 TO t36->items.
      t36->save( ).
      RETURN.
    ENDIF.
    DATA t44 TYPE abap_bool.
    DATA t45 TYPE i.
    DATA t46 TYPE string.
    t46 = t7->value.
    t45 = strlen( t46 ).
    DATA(t49) = 30.
    t44 = xsdbool( t45 > t49 ).
    IF t44 = abap_true.
      DATA(t51) = |FORM name longer than 30 characters|.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t52 = t2->issues.
      DATA t54 TYPE REF TO zcl_lnt_issue.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      t57 = t3.
      t56 = t57->get_first_token( ).
      DATA t60 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t54 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t56 i_message_26cb = t51 i_fix = t60 ).
      t52->load( ).
      APPEND t54 TO t52->items.
      t52->save( ).
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_current_scope.
    DATA t62 TYPE REF TO zcl_lnt_current_scope.
    t62 = t2->scope.
    t61 = t62.
    DATA t65 TYPE string.
    t65 = t7->value.
    DATA t70 TYPE REF TO zcl_lnt_abstract_token.
    t70 = t1->get_first_token( ).
    DATA t72 TYPE REF TO zcl_lnt_position.
    t72 = t70->start.
    DATA t75 TYPE string.
    t75 = t2->filename.
    DATA t77 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t78 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t79 TYPE string.
    t79 = |form|.
    DATA t81 TYPE string.
    t81 = t65.
    DATA t83 TYPE REF TO zcl_lnt_position.
    t83 = t72.
    DATA t85 TYPE string.
    t85 = t75.
    DATA t87 TYPE REF TO zcl_lnt_position.
    t78 = NEW zcl_lnt_iscope_identifier( i_stype = t79 i_sname = t81 i_filename = t85 i_start = t83 i_end = t87 ).
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
    DATA(t94) = |stype|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
    DATA(t96) = |sname|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
    ENDIF.
    DATA(t98) = |start|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
    ENDIF.
    DATA(t100) = |filename|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    DATA(t102) = |end|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
    ENDIF.
    t77 = t78.
    DATA(t104) = VALUE abap_bool( ).
    DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t106 = t61->current.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t104 = xsdbool( t106 IS INITIAL ).
    IF t104 = abap_true.
      DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t115 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t77 i_parent = t117 ).
      t61->current = t115.
      DELETE t61->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t121 = t61->current.
      t119 = t121.
      DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t128 = t119.
      t126 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t77 i_parent = t128 ).
      t61->current = t126.
      DELETE t61->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t134 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t135 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t135 = t61->current.
      t134 = t135.
      t119->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t134 ).
    ENDIF.
    DATA t137 TYPE REF TO zcl_lnt_ty_form_definition.
    DATA t138 TYPE REF TO zcl_lnt_ty_form_definition.
    t138 = NEW zcl_lnt_ty_form_definition( i_node = t1 i_input_967e = t2 ).
    t137 = t138.
    DATA t141 TYPE REF TO zcl_lnt_current_scope.
    t141 = t2->scope.
    t141->update_form_definition( i_f = t137 ).
    DATA t144 TYPE REF TO zcl_lnt_current_scope.
    t144 = t2->scope.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t149 = t137->using_parameters.
    t146 = t149.
    t144->add_list( i_identifiers = t146 ).
    DATA t151 TYPE REF TO zcl_lnt_current_scope.
    t151 = t2->scope.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t156 = t137->changing_parameters.
    t153 = t156.
    t151->add_list( i_identifiers = t153 ).
    DATA t158 TYPE REF TO zcl_lnt_current_scope.
    t158 = t2->scope.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t163 = t137->table_parameters.
    t160 = t163.
    t158->add_list( i_identifiers = t160 ).
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
