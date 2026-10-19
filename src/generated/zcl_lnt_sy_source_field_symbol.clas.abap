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
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    t4 = t1->get_first_token( ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t8 TYPE REF TO zcl_lnt_current_scope.
    DATA t9 TYPE REF TO zcl_lnt_current_scope.
    t9 = t2->scope.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE string.
    t17 = t3->str.
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = t17.
    t11 = t19.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t23 = t11.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = VALUE abap_bool( ).
    IF t23 IS INITIAL.
      t27 = abap_true.
    ELSEIF t23->has = abap_false.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
    ELSE.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t34 = t8->current.
      t33 = t34.
      DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t37) = xsdbool( t33 IS INITIAL ).
      IF t37 = abap_true.
      ELSE.
        DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t41 = t33.
        DATA t43 TYPE string.
        t43 = t11->value.
        t40 = t41->find_variable( i_name = t43 ).
        t36 = t40.
      ENDIF.
      t31 = t36.
      DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t46 TYPE abap_bool.
      t46 = xsdbool( t31 IS BOUND ).
      IF t46 = abap_true.
        t45 = t31.
      ELSE.
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t57 TYPE string.
        t57 = t11->value.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t57.
        t55 = t59.
        t53 = t8->find_type_pool_constant( i_name = t55 ).
        t45 = t53.
      ENDIF.
      t21 = t45.
    ENDIF.
    t6 = t21.
    DATA(t61) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t61 = xsdbool( t6 IS INITIAL ).
    IF t61 = abap_true.
      DATA t69 TYPE string.
      DATA t70 TYPE string.
      DATA(t71) = |"|.
      DATA t72 TYPE string.
      DATA t74 TYPE REF TO zcl_lnt_abstract_token.
      t74 = t1->get_first_token( ).
      DATA t76 TYPE string.
      t76 = t74->str.
      t72 = t76.
      DATA(t78) = strlen( t71 ).
      t70 = |{ t71 }{ t72 }|.
      DATA(t79) = |" not found, SourceFieldSymbol|.
      DATA(t80) = strlen( t70 ).
      t69 = |{ t70 }{ t79 }|.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t81 = t2->issues.
      DATA t83 TYPE REF TO zcl_lnt_issue.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      t85 = t1->get_first_token( ).
      DATA t88 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t83 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t85 i_message_26cb = t69 i_fix = t88 ).
      t81->load( ).
      APPEND t83 TO t81->items.
      t81->save( ).
      DATA t89 TYPE REF TO zcl_lnt_void_type.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t92) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t93->has = abap_true.
      t93->value = t92.
      t90 = t93.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t89 = zcl_lnt_void_type=>get_db65( i_voided = t90 i_qualified_name = t95 ).
      result = t89.
      RETURN.
    ENDIF.
    DATA t96 TYPE REF TO zcl_lnt_current_scope.
    t96 = t2->scope.
    DATA t98 TYPE REF TO zcl_lnt_abstract_token.
    t98 = t3.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    t102 = t6.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = |Read From|.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    DATA t106 TYPE string.
    t106 = t2->filename.
    DATA t108 TYPE REF TO zcl_lnt_ireference_extras.
    t96->add_reference( i_usage = t98 i_referencing = t102 i_type_9913 = t104 i_filename = t106 i_extra = t108 ).
    DATA t113 TYPE REF TO zcl_lnt_abstract_type.
    t113 = t6->type_cba0.
    result = t113.

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
