* TS: src/abap/5_syntax/statements/return.ts:8:1 Return
CLASS zcl_lnt_sy_return DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_return IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = i_node->find_direct_expression( i_type_9913 = t6 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      t9 = t2->scope->find_returning_parameter( ).
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t9 IS INITIAL ) = abap_true.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t22 = t2->issues.
        DATA t24 TYPE REF TO zcl_lnt_issue.
        DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t24 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t3->get_first_token( ) i_message_26cb = |Method does not have a RETURNING parameter to assign to| i_fix = t30 ).
        t22->load( ).
        APPEND t24 TO t22->items.
        t22->save( ).
        RETURN.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_current_scope.
      t31 = t2->scope.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      t33 = t3->get_first_token( ).
      DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
      t39 = t9.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t41->sval = |Read From|.
      DATA t43 TYPE string.
      t43 = t2->filename.
      DATA t45 TYPE REF TO zcl_lnt_ireference_extras.
      t31->add_reference( i_usage = t33 i_referencing = t39 i_type_9913 = t41 i_filename = t43 i_extra = t45 ).
      DATA t46 TYPE REF TO zcl_lnt_abstract_type.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      t47 = t3.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type.
      t59 = t9->type_cba0.
      DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t46 = zcl_lnt_sy_source=>run_syntax( i_node = t47 i_input_967e = t2 i_target_type = t59 i_write_reference = t62 i_allow_generic_deference = t63 i_read_reference = t64 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d953_e9572af4f2dc.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
