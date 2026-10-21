* TS: src/abap/5_syntax/statements/field_group.ts:8:1 FieldGroup
CLASS zcl_lnt_sy_field_group DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_field_group IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t3 = i_node->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    t16 = t3.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
    ELSE.
      DATA t23 TYPE string.
      t23 = t16->concat_tokens( ).
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t23.
      t19 = t25.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t27 = t19.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = VALUE abap_bool( ).
    IF t27 IS INITIAL.
      t31 = abap_true.
    ELSEIF t27->has = abap_false.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    t37 = t3.
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t37 IS INITIAL ) = abap_true.
    ELSE.
      t40 = t37->get_first_token( ).
    ENDIF.
    t35 = t40.
    DATA t46 TYPE string.
    t46 = t2->filename.
    DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t52->has = abap_true.
    t52->value = |FIELD-GROUP|.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t34 = NEW zcl_lnt_typed_identifier( i_token = t35 i_filename = t46 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t52 i_qualified_name = t54 ) i_meta = t55 i_value = t56 ).
    DATA t58 TYPE REF TO zcl_lnt_current_scope.
    t58 = t2->scope.
    DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
    t60 = t34.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t60 IS INITIAL ) = abap_true.
    ELSE.
      DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
      t74 = t60.
      DATA t78 TYPE string.
      t78 = t74->token->str.
      DATA(t86) = VALUE string( ).
      DATA(t87) = t78.
      DATA(t88) = 0.
      DATA(t89) = 1.
      DATA(t90) = strlen( t87 ).
      IF t88 < 0.
        t88 = t88 + t90.
        IF t88 < 0.
          t88 = 0.
        ENDIF.
      ENDIF.
      IF t88 > t90 OR t89 <= 0.
      ELSE.
        IF t89 > t90 - t88.
          t89 = t90 - t88.
        ENDIF.
        t86 = t87+t88(t89).
      ENDIF.
      IF xsdbool( t86 = |!| ) = abap_true.
        DATA t93 TYPE string.
        t93 = t78.
        DATA(t95) = VALUE string( ).
        DATA(t97) = 1.
        DATA t98 TYPE i.
        t98 = strlen( t93 ).
        DATA(t101) = strlen( t93 ).
        IF t97 < 0.
          t97 = t97 + t101.
          IF t97 < 0.
            t97 = 0.
          ENDIF.
        ENDIF.
        IF t97 > t101 OR t98 <= 0.
        ELSE.
          IF t98 > t101 - t97.
            t98 = t101 - t97.
          ENDIF.
          t95 = t93+t97(t98).
        ENDIF.
        t78 = t95.
      ENDIF.
      t58->add_named_identifier( i_name = t78 i_identifier = t60 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d899_8547f2fa8c35.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
