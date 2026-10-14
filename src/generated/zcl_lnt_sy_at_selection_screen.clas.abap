* TS: src/abap/5_syntax/statements/at_selection_screen.ts:8:1 AtSelectionScreen
CLASS zcl_lnt_sy_at_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_at_selection_screen IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t5.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    t10 = t11->find_direct_expressions( i_type_9913 = t12 ).
    t8 = t9->concat( p0 = t10 ).
    t7 = t8.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t7.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t16 = t17->find_direct_expressions( i_type_9913 = t18 ).
    t14 = t15->concat( p0 = t16 ).
    t13 = t14.
    DATA(t19) = t13.
    t4 = t19.
    t3 = t4.
    DATA(t20) = t3.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t20->items INTO t22.
      t21 ?= t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t25) = t21.
      t24 = t25->get_first_token( ).
      t23 = t24.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_current_scope.
      DATA t30 TYPE REF TO zcl_lnt_current_scope.
      DATA(t31) = t2.
      t30 = t31->scope.
      t29 = t30.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA t35 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t37) = t23.
        t36 = t37.
        DATA t38 TYPE string.
        DATA(t39) = t36.
        t38 = t39->str.
        t35 = t38.
        DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t40->has = abap_true.
        t40->value = t35.
        t33 = t40.
      ELSE.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        t33 = t41.
      ENDIF.
      t32 = t33.
      DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = t32.
      t44 = t45.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t46 = t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t44.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ELSEIF t49->has = abap_false.
        t48 = abap_true.
      ENDIF.
      t43 = t48.
      IF t43 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t50.
        t42 = t50.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t56) = t29.
        t55 = t56->current.
        t54 = t55.
        DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t54.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t60.
          t57 = t60.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t63) = t54.
          t62 = t63.
          DATA t64 TYPE string.
          DATA(t65) = t32.
          t64 = t65->value.
          t61 = t62->find_variable( i_name = t64 ).
          t57 = t61.
        ENDIF.
        t53 = t57.
        t52 = t53.
        DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t66.
        DATA t67 TYPE abap_bool.
        DATA(t68) = t52.
        t67 = xsdbool( t68 IS BOUND ).
        IF t67 = abap_true.
          DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t69.
          DATA(t70) = abap_true.
          IF t70 = abap_true.
            DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t72) = t52.
            t71 = t72.
            t69 = t71.
          ELSE.
            DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t73.
            t69 = t73.
          ENDIF.
          t66 = t69.
        ELSE.
          DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t74.
          DATA(t75) = t29.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA(t77) = abap_true.
          IF t77 = abap_true.
            DATA t78 TYPE string.
            DATA(t79) = t32.
            t78 = t79->value.
            DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t80->has = abap_true.
            t80->value = t78.
            t76 = t80.
          ELSE.
            DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t81.
            t76 = t81.
          ENDIF.
          t74 = t75->find_type_pool_constant( i_name = t76 ).
          t66 = t74.
        ENDIF.
        t51 = t66.
        t42 = t51.
      ENDIF.
      t28 = t42.
      t27 = t28.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      t82 = t83.
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t27.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ENDIF.
      t84 = xsdbool( t85 = abap_false ).
      t26 = t84.
      IF t26 = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t87.
        DATA(t88) = t21.
        DATA(t89) = t2.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t93) = |Read From|.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t92->sval = t93.
          t90 = t92.
        ELSE.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          t90 = t94.
        ENDIF.
        DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t95.
        DATA(t96) = abap_true.
        IF t96 = abap_true.
          DATA(t97) = abap_false.
          DATA(t98) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t98->has = abap_true.
          t98->value = t97.
          t95 = t98.
        ELSE.
          DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t99.
          t95 = t99.
        ENDIF.
        t87 = zcl_lnt_sy_source_field=>run_syntax( i_node = t88 i_input_967e = t89 i_type_9913 = t90 i_error = t95 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d836_ae6768e2c02b.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
