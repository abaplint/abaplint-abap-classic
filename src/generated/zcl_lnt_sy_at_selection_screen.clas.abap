* TS: src/abap/5_syntax/statements/at_selection_screen.ts:8:1 AtSelectionScreen
CLASS zcl_lnt_sy_at_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
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
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t10 = t11->find_direct_expressions( i_type_9913 = t12 ).
    t8 = t9->concat( p0 = t10 ).
    t7 = t8.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t7.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
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
    DATA(t23) = VALUE i( ).
    DO.
      t20->load( ).
      IF t23 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t20->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t28) = t21.
      t27 = t28->get_first_token( ).
      t26 = t27.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_current_scope.
      DATA t33 TYPE REF TO zcl_lnt_current_scope.
      DATA(t34) = t2.
      t33 = t34->scope.
      t32 = t33.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA t38 TYPE string.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t40) = t26.
        t39 = t40.
        DATA t41 TYPE string.
        DATA(t42) = t39.
        t41 = t42->str.
        t38 = t41.
        DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t43->has = abap_true.
        t43->value = t38.
        t36 = t43.
      ELSE.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        t36 = t44.
      ENDIF.
      t35 = t36.
      DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t48) = t35.
      t47 = t48.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      t49 = t50.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t47.
      IF t52 IS INITIAL.
        t51 = abap_true.
      ELSEIF t52->has = abap_false.
        t51 = abap_true.
      ENDIF.
      t46 = t51.
      IF t46 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t53.
        t45 = t53.
      ELSE.
        DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t59) = t32.
        t58 = t59->current.
        t57 = t58.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t57.
        IF t62 IS INITIAL.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t63.
          t60 = t63.
        ELSE.
          DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t66) = t57.
          t65 = t66.
          DATA t67 TYPE string.
          DATA(t68) = t35.
          t67 = t68->value.
          t64 = t65->find_variable( i_name = t67 ).
          t60 = t64.
        ENDIF.
        t56 = t60.
        t55 = t56.
        DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t69.
        DATA t70 TYPE abap_bool.
        DATA(t71) = t55.
        t70 = xsdbool( t71 IS BOUND ).
        IF t70 = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t72.
          DATA(t73) = abap_true.
          IF t73 = abap_true.
            DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t75) = t55.
            t74 = t75.
            t72 = t74.
          ELSE.
            DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t76.
            t72 = t76.
          ENDIF.
          t69 = t72.
        ELSE.
          DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t77.
          DATA(t78) = t32.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA(t80) = abap_true.
          IF t80 = abap_true.
            DATA t81 TYPE string.
            DATA(t82) = t35.
            t81 = t82->value.
            DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t83->has = abap_true.
            t83->value = t81.
            t79 = t83.
          ELSE.
            DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t84.
            t79 = t84.
          ENDIF.
          t77 = t78->find_type_pool_constant( i_name = t79 ).
          t69 = t77.
        ENDIF.
        t54 = t69.
        t45 = t54.
      ENDIF.
      t31 = t45.
      t30 = t31.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      t85 = t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t30.
      IF t89 IS INITIAL.
        t88 = abap_true.
      ENDIF.
      t87 = xsdbool( t88 = abap_false ).
      t29 = t87.
      IF t29 = abap_true.
        DATA t90 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t90.
        DATA(t91) = t21.
        DATA(t92) = t2.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        DATA(t94) = abap_true.
        IF t94 = abap_true.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          DATA(t96) = |Read From|.
          CLEAR t95.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t95->sval = t96.
          t93 = t95.
        ELSE.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          t93 = t97.
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA(t100) = abap_false.
          DATA(t101) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t101->has = abap_true.
          t101->value = t100.
          t98 = t101.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t102.
          t98 = t102.
        ENDIF.
        t90 = zcl_lnt_sy_source_field=>run_syntax( i_node = t91 i_input_967e = t92 i_type_9913 = t93 i_error = t98 ).
      ENDIF.
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d858_15d80312e003.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
