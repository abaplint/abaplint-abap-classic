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
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t8 = t6->concat( p0 = t1->find_direct_expressions( i_type_9913 = t12 ) ).
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t3 = t8->concat( p0 = t1->find_direct_expressions( i_type_9913 = t18 ) ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO object.
    DATA(t23) = VALUE i( ).
    DO.
      t3->load( ).
      IF t23 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t3->items INDEX t23 + 1 INTO t22.
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
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      t27 = t21->get_first_token( ).
      DATA t32 TYPE REF TO zcl_lnt_current_scope.
      t32 = t2->scope.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t41 TYPE string.
      t41 = t27->str.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t41.
      t35 = t43.
      DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t45.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t47 = t35.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      DATA(t51) = VALUE abap_bool( ).
      IF t47 IS INITIAL.
        t51 = abap_true.
      ELSEIF t47->has = abap_false.
        t51 = abap_true.
      ENDIF.
      IF t51 = abap_true.
        CLEAR t45.
      ELSE.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t55.
        DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t57 = t32->current.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t60.
        IF xsdbool( t57 IS INITIAL ) = abap_true.
          CLEAR t60.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t65 = t57.
          DATA t67 TYPE string.
          t67 = t35->value.
          t60 = t65->find_variable( i_name = t67 ).
        ENDIF.
        t55 = t60.
        DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t69.
        IF xsdbool( t55 IS BOUND ) = abap_true.
          t69 = t55.
        ELSE.
          DATA t81 TYPE string.
          t81 = t35->value.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t81.
          t69 = t32->find_type_pool_constant( i_name = t83 ).
        ENDIF.
        t45 = t69.
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF xsdbool( xsdbool( t45 IS INITIAL ) = abap_false ) = abap_true.
        DATA t90 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t90.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        CLEAR t95.
        CREATE OBJECT t95.
        t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t95->sval = |Read From|.
        t93 = t95.
        DATA(t101) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t101->has = abap_true.
        t101->value = abap_false.
        t90 = zcl_lnt_sy_source_field=>run_syntax( i_node = t21 i_input_967e = t2 i_type_9913 = t93 i_error = t101 ).
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
