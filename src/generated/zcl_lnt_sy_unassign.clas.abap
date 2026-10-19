* TS: src/abap/5_syntax/statements/unassign.ts:7:1 Unassign
CLASS zcl_lnt_sy_unassign DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_unassign IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    t5 = t1.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = xsdbool( t5 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t11 = t5->find_direct_expression( i_type_9913 = t13 ).
      t7 = t11.
    ENDIF.
    t3 = t7.
    DATA t14 TYPE abap_bool.
    t14 = xsdbool( t3 IS BOUND ).
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      t18 = t3.
      t17 = t18->get_first_token( ).
      t16 = t17.
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t22 TYPE REF TO zcl_lnt_current_scope.
      DATA t23 TYPE REF TO zcl_lnt_current_scope.
      t23 = t2->scope.
      t22 = t23.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE string.
      t31 = t16->str.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = t31.
      t25 = t33.
      DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t37 = t25.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t41) = VALUE abap_bool( ).
      IF t37 IS INITIAL.
        t41 = abap_true.
      ELSEIF t37->has = abap_false.
        t41 = abap_true.
      ENDIF.
      t36 = t41.
      IF t36 = abap_true.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t48 = t22->current.
        t47 = t48.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t51) = xsdbool( t47 IS INITIAL ).
        IF t51 = abap_true.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t55 = t47.
          DATA t57 TYPE string.
          t57 = t25->value.
          t54 = t55->find_variable( i_name = t57 ).
          t50 = t54.
        ENDIF.
        t45 = t50.
        DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t60 TYPE abap_bool.
        t60 = xsdbool( t45 IS BOUND ).
        IF t60 = abap_true.
          t59 = t45.
        ELSE.
          DATA t67 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t71 TYPE string.
          t71 = t25->value.
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t71.
          t69 = t73.
          t67 = t22->find_type_pool_constant( i_name = t69 ).
          t59 = t67.
        ENDIF.
        t35 = t59.
      ENDIF.
      t20 = t35.
      DATA(t75) = VALUE abap_bool( ).
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t75 = xsdbool( t20 IS INITIAL ).
      IF t75 = abap_true.
        DATA t83 TYPE string.
        DATA t84 TYPE string.
        DATA(t85) = |"|.
        DATA t86 TYPE string.
        DATA t89 TYPE string.
        t89 = t16->str.
        t86 = t89.
        DATA(t91) = strlen( t85 ).
        t84 = |{ t85 }{ t86 }|.
        DATA(t92) = |" not found, Unassign|.
        DATA(t93) = strlen( t84 ).
        t83 = |{ t84 }{ t92 }|.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t94 = t2->issues.
        DATA t96 TYPE REF TO zcl_lnt_issue.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        t98 = t1->get_first_token( ).
        DATA t101 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t96 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t98 i_message_26cb = t83 i_fix = t101 ).
        t94->load( ).
        APPEND t96 TO t94->items.
        t94->save( ).
        RETURN.
      ENDIF.
      DATA t102 TYPE REF TO zcl_lnt_current_scope.
      t102 = t2->scope.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      t104 = t16.
      DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
      t108 = t20.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t111) = |Write To|.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t110->sval = t111.
      DATA t112 TYPE string.
      t112 = t2->filename.
      DATA t114 TYPE REF TO zcl_lnt_ireference_extras.
      t102->add_reference( i_usage = t104 i_referencing = t108 i_type_9913 = t110 i_filename = t112 i_extra = t114 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d980_02fa4094c892.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
