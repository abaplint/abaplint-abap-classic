* TS: src/abap/5_syntax/expressions/source_field_symbol.ts:7:1 SourceFieldSymbol
CLASS zcl_lnt_sy_source_field_symbol DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_source_field_symbol IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    t3 = t1->get_first_token( ).
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t8 TYPE REF TO zcl_lnt_current_scope.
    t8 = t2->scope.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE string.
    t17 = t3->str.
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = t17.
    t11 = t19.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t23 = t11.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = VALUE abap_bool( ).
    IF t23 IS INITIAL.
      t27 = abap_true.
    ELSEIF t23->has = abap_false.
      t27 = abap_true.
    ENDIF.
    IF t27 = abap_true.
    ELSE.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t33 = t8->current.
      DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
      IF xsdbool( t33 IS INITIAL ) = abap_true.
      ELSE.
        DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t41 = t33.
        DATA t43 TYPE string.
        t43 = t11->value.
        t36 = t41->find_variable( i_name = t43 ).
      ENDIF.
      t31 = t36.
      DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
      IF xsdbool( t31 IS BOUND ) = abap_true.
        t45 = t31.
      ELSE.
        DATA t57 TYPE string.
        t57 = t11->value.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t57.
        t45 = t8->find_type_pool_constant( i_name = t59 ).
      ENDIF.
      t21 = t45.
    ENDIF.
    t6 = t21.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
      DATA t69 TYPE string.
      DATA t70 TYPE string.
      DATA(t71) = |"|.
      DATA t72 TYPE string.
      t72 = t1->get_first_token( )->str.
      DATA(t78) = strlen( t71 ).
      t70 = |{ t71 }{ t72 }|.
      DATA(t80) = strlen( t70 ).
      t69 = |{ t70 }{ |" not found, SourceFieldSymbol| }|.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t81 = t2->issues.
      DATA t83 TYPE REF TO zcl_lnt_issue.
      DATA t88 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t83 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t69 i_fix = t88 ).
      t81->load( ).
      APPEND t83 TO t81->items.
      t81->save( ).
      DATA(t92) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t93->has = abap_true.
      t93->value = t92.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t93 i_qualified_name = t95 ).
      RETURN.
    ENDIF.
    DATA t96 TYPE REF TO zcl_lnt_current_scope.
    t96 = t2->scope.
    DATA t98 TYPE REF TO zcl_lnt_abstract_token.
    t98 = t3.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    t102 = t6.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |Read From|.
    DATA t106 TYPE string.
    t106 = t2->filename.
    DATA t108 TYPE REF TO zcl_lnt_ireference_extras.
    t96->add_reference( i_usage = t98 i_referencing = t102 i_type_9913 = t104 i_filename = t106 i_extra = t108 ).
    result = t6->type_cba0.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d834_62f0846c4225.
  ENDMETHOD.
ENDCLASS.
