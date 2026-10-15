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
    DATA(t5) = t1.
    t4 = t5->get_first_token( ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_current_scope.
    DATA t9 TYPE REF TO zcl_lnt_current_scope.
    DATA(t10) = t2.
    t9 = t10->scope.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = t3.
      t15 = t16.
      DATA t17 TYPE string.
      DATA(t18) = t15.
      t17 = t18->str.
      t14 = t17.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t14.
      t12 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t12 = t20.
    ENDIF.
    t11 = t12.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = t11.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t23.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ELSEIF t28->has = abap_false.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t29.
      t21 = t29.
    ELSE.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t35) = t8.
      t34 = t35->current.
      t33 = t34.
      DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      IF t37 = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t39.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t42) = t33.
        t41 = t42.
        DATA t43 TYPE string.
        DATA(t44) = t11.
        t43 = t44->value.
        t40 = t41->find_variable( i_name = t43 ).
        t36 = t40.
      ENDIF.
      t32 = t36.
      t31 = t32.
      DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t45.
      DATA t46 TYPE abap_bool.
      DATA(t47) = t31.
      t46 = xsdbool( t47 IS BOUND ).
      IF t46 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t51) = t31.
          t50 = t51.
          t48 = t50.
        ELSE.
          DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t52.
          t48 = t52.
        ENDIF.
        t45 = t48.
      ELSE.
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t53.
        DATA(t54) = t8.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA t57 TYPE string.
          DATA(t58) = t11.
          t57 = t58->value.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t57.
          t55 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t55 = t60.
        ENDIF.
        t53 = t54->find_type_pool_constant( i_name = t55 ).
        t45 = t53.
      ENDIF.
      t30 = t45.
      t21 = t30.
    ENDIF.
    t7 = t21.
    t6 = t7.
    DATA(t61) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t63) = t6.
    t62 = t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    t64 = t65.
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = t62.
    IF t67 IS INITIAL.
      t66 = abap_true.
    ENDIF.
    t61 = t66.
    IF t61 = abap_true.
      DATA t68 TYPE string.
      DATA t69 TYPE string.
      DATA t70 TYPE string.
      DATA(t71) = |"|.
      DATA t72 TYPE string.
      DATA t73 TYPE REF TO zcl_lnt_abstract_token.
      DATA t74 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t75) = t1.
      t74 = t75->get_first_token( ).
      t73 = t74.
      DATA t76 TYPE string.
      DATA(t77) = t73.
      t76 = t77->str.
      t72 = t76.
      DATA(t78) = strlen( t71 ).
      t70 = |{ t71 }{ t72 }|.
      DATA(t79) = |" not found, SourceFieldSymbol|.
      DATA(t80) = strlen( t70 ).
      t69 = |{ t70 }{ t79 }|.
      t68 = t69.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t82) = t2.
      t81 = t82->issues.
      DATA t83 TYPE REF TO zcl_lnt_issue.
      DATA(t84) = t2.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t86) = t1.
      t85 = t86->get_first_token( ).
      DATA(t87) = t68.
      DATA t88 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t88.
      t83 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t84 i_token = t85 i_message_26cb = t87 i_fix = t88 ).
      t81->load( ).
      APPEND t83 TO t81->items.
      t81->save( ).
      DATA t89 TYPE REF TO zcl_lnt_void_type.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA(t91) = abap_true.
      IF t91 = abap_true.
        DATA(t92) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t92.
        t90 = t93.
      ELSE.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        t90 = t94.
      ENDIF.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      t89 = zcl_lnt_void_type=>get_db65( i_voided = t90 i_qualified_name = t95 ).
      result = t89.
      RETURN.
    ENDIF.
    DATA t96 TYPE REF TO zcl_lnt_current_scope.
    DATA(t97) = t2.
    t96 = t97->scope.
    DATA t98 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t98.
    DATA(t99) = abap_true.
    IF t99 = abap_true.
      DATA(t100) = t3.
      t98 = t100.
    ELSE.
      DATA t101 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t101.
      t98 = t101.
    ENDIF.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t103) = t6.
    t102 = t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = |Read From|.
    CLEAR t104.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    DATA t106 TYPE string.
    DATA(t107) = t2.
    t106 = t107->filename.
    DATA t108 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t108.
    t96->add_reference( i_usage = t98 i_referencing = t102 i_type_9913 = t104 i_filename = t106 i_extra = t108 ).
    DATA t109 TYPE REF TO zcl_lnt_abstract_type.
    DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t112) = t6.
    t111 = t112.
    t110 = t111.
    DATA t113 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t114) = t110.
    t113 = t114->type_cba0.
    t109 = t113.
    result = t109.

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
