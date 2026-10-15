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
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = t3.
    t17 = t18.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t16.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE string.
      DATA(t24) = t16.
      t23 = t24->concat_tokens( ).
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t23.
      t19 = t25.
    ENDIF.
    t15 = t19.
    t14 = t15.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = t14.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ELSEIF t32->has = abap_false.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      RETURN.
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    DATA(t39) = t3.
    t38 = t39.
    t37 = t38.
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t37.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t43.
      t40 = t43.
    ELSE.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t37.
      t44 = t45->get_first_token( ).
      t40 = t44.
    ENDIF.
    t36 = t40.
    t35 = t36.
    DATA t46 TYPE string.
    DATA(t47) = t2.
    t46 = t47->filename.
    DATA t48 TYPE REF TO zcl_lnt_void_type.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA(t51) = |FIELD-GROUP|.
      DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t52->has = abap_true.
      t52->value = t51.
      t49 = t52.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      t49 = t53.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t54.
    t48 = zcl_lnt_void_type=>get_db65( i_voided = t49 i_qualified_name = t54 ).
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    t34 = NEW zcl_lnt_typed_identifier( i_token = t35 i_filename = t46 i_type_9913 = t48 i_meta = t55 i_value = t56 ).
    t33 = t34.
    DATA t57 TYPE REF TO zcl_lnt_current_scope.
    DATA t58 TYPE REF TO zcl_lnt_current_scope.
    DATA(t59) = t2.
    t58 = t59->scope.
    t57 = t58.
    DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t61.
    DATA(t62) = abap_true.
    IF t62 = abap_true.
      DATA(t63) = t33.
      t61 = t63.
    ELSE.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t64.
      t61 = t64.
    ENDIF.
    t60 = t61.
    DATA(t65) = VALUE abap_bool( ).
    DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t67) = t60.
    t66 = t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    t68 = t69.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = t66.
    IF t71 IS INITIAL.
      t70 = abap_true.
    ENDIF.
    t65 = t70.
    IF t65 = abap_true.
    ELSE.
      DATA(t72) = t57.
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t76) = t60.
      t75 = t76.
      t74 = t75.
      DATA(t77) = VALUE string( ).
      DATA t78 TYPE string.
      DATA t79 TYPE string.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      DATA t81 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t82) = t74.
      t81 = t82->token.
      t80 = t81.
      DATA t83 TYPE string.
      DATA(t84) = t80.
      t83 = t84->str.
      t79 = t83.
      t78 = t79.
      DATA(t85) = VALUE abap_bool( ).
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
        CLEAR t86.
      ELSE.
        IF t89 > t90 - t88.
          t89 = t90 - t88.
        ENDIF.
        t86 = t87+t88(t89).
      ENDIF.
      DATA(t91) = |!|.
      t85 = xsdbool( t86 = t91 ).
      IF t85 = abap_true.
        DATA(t92) = VALUE string( ).
        DATA t93 TYPE string.
        DATA(t94) = t78.
        t93 = t94.
        DATA(t95) = VALUE string( ).
        DATA(t96) = t93.
        DATA(t97) = 1.
        DATA t98 TYPE i.
        DATA(t99) = t93.
        DATA(t100) = strlen( t99 ).
        t98 = t100.
        DATA(t101) = strlen( t96 ).
        IF t97 < 0.
          t97 = t97 + t101.
          IF t97 < 0.
            t97 = 0.
          ENDIF.
        ENDIF.
        IF t97 > t101 OR t98 <= 0.
          CLEAR t95.
        ELSE.
          IF t98 > t101 - t97.
            t98 = t101 - t97.
          ENDIF.
          t95 = t96+t97(t98).
        ENDIF.
        t92 = t95.
        t78 = t92.
      ENDIF.
      DATA(t102) = t78.
      t77 = t102.
      t73 = t77.
      DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t104) = t60.
      t103 = t104.
      t72->add_named_identifier( i_name = t73 i_identifier = t103 ).
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
