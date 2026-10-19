* TS: src/abap/5_syntax/statements/sort.ts:10:1 Sort
CLASS zcl_lnt_sy_sort DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_sort IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t6 i_input_967e = t2 ).
    ENDDO.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t14 = t1->find_direct_expression( i_type_9913 = t16 ).
    t13 = t14.
    DATA t17 TYPE abap_bool.
    t17 = xsdbool( t13 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      t21 = t13.
      t20 = zcl_lnt_sy_target=>run_syntax( i_node = t21 i_input_967e = t2 ).
      t19 = t20.
      DATA t24 TYPE abap_bool.
      t24 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t24 = abap_true.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t28 TYPE REF TO zcl_lnt_itable_key.
        DATA t30 TYPE REF TO zcl_lnt_itable_options.
        DATA t33 TYPE REF TO zcl_lnt_ty_table_type.
        t33 ?= t19.
        DATA t35 TYPE REF TO zcl_lnt_itable_options.
        t35 = t33->options.
        t30 = t35.
        DATA t37 TYPE REF TO zcl_lnt_itable_key.
        DATA(t38) = xsdbool( t30 IS INITIAL ).
        IF t38 = abap_true.
        ELSE.
          DATA t41 TYPE REF TO zcl_lnt_itable_key.
          t41 = t30->zlnt_view_read_sr_48b89cc62ab9( ).
          t37 = t41.
        ENDIF.
        t28 = t37.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t44) = xsdbool( t28 IS INITIAL ).
        IF t44 = abap_true.
        ELSE.
          DATA t47 TYPE string.
          DATA t48 TYPE REF TO zcl_lnt_itable_key.
          t48 = t28.
          t47 = t48->zlnt_view_read_sr_f361ef311f50( ).
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t47.
          t43 = t50.
        ENDIF.
        t27 = t43.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t53) = |SORTED|.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t53.
        t51 = t54.
        DATA(t56) = VALUE abap_bool( ).
        DATA(t57) = VALUE abap_bool( ).
        IF t27 IS BOUND.
          t56 = t27->has.
        ENDIF.
        IF t51 IS BOUND.
          t57 = t51->has.
        ENDIF.
        IF t56 = t57.
          IF t56 = abap_false.
            t26 = abap_true.
          ELSEIF t27->value = t51->value.
            t26 = abap_true.
          ENDIF.
        ENDIF.
        IF t26 = abap_true.
          DATA(t59) = |Sorted table, already sorted|.
          DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t60 = t2->issues.
          DATA t62 TYPE REF TO zcl_lnt_issue.
          DATA t64 TYPE REF TO zcl_lnt_abstract_token.
          DATA t65 TYPE REF TO zcl_lnt_expression_node.
          t65 = t13.
          t64 = t65->get_first_token( ).
          DATA t68 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t62 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t64 i_message_26cb = t59 i_fix = t68 ).
          t60->load( ).
          APPEND t62 TO t60->items.
          t60->save( ).
          RETURN.
        ENDIF.
        DATA t69 TYPE REF TO zcl_lnt_abstract_type.
        DATA t72 TYPE REF TO zcl_lnt_ty_table_type.
        t72 ?= t19.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        t74 = t72->row_type.
        t69 = t74.
        DATA(t76) = VALUE abap_bool( ).
        DATA t77 TYPE abap_bool.
        DATA t78 TYPE abap_bool.
        DATA t79 TYPE abap_bool.
        t79 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_void_type ).
        t78 = xsdbool( t79 = abap_false ).
        t77 = t78.
        IF t78 = abap_true.
          DATA t81 TYPE abap_bool.
          DATA t82 TYPE abap_bool.
          t82 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_unknown_type ).
          t81 = xsdbool( t82 = abap_false ).
          t77 = t81.
        ENDIF.
        t76 = t77.
        IF t77 = abap_true.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE abap_bool.
          t85 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_any_type ).
          t84 = xsdbool( t85 = abap_false ).
          t76 = t84.
        ENDIF.
        IF t76 = abap_true.
          DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d126_c330c74d8713.
          t87 = t1->find_all_expressions( i_type_9913 = t89 ).
          DATA t90 TYPE REF TO zcl_lnt_expression_node.
          DATA t91 TYPE REF TO object.
          DATA(t92) = VALUE i( ).
          DO.
            t87->load( ).
            IF t92 >= lines( t87->items ).
              EXIT.
            ENDIF.
            CLEAR t91.
            READ TABLE t87->items INDEX t92 + 1 INTO t91.
            t92 = t92 + 1.
            DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t93.
            CLEAR t90.
            IF t91 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t93 ?= t91.
              DATA t94 TYPE REF TO object.
              t94 = t93->as_ref( ).
              t90 ?= t94.
            ELSE.
              t90 ?= t91.
            ENDIF.
            DATA t95 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t95.
            DATA t96 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t96.
            t96 = t69.
            t95 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t96 i_node = t90 i_input_967e = t2 ).
          ENDDO.
        ENDIF.
      ELSE.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE abap_bool( ).
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = xsdbool( t19 IS INITIAL ).
        t110 = xsdbool( t111 = abap_false ).
        t105 = t110.
        t104 = t105.
        IF t105 = abap_true.
          DATA t113 TYPE abap_bool.
          DATA t114 TYPE abap_bool.
          DATA t115 TYPE REF TO zcl_lnt_abstract_type.
          t115 = t19.
          t114 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_void_type ).
          t113 = xsdbool( t114 = abap_false ).
          t104 = t113.
        ENDIF.
        t103 = t104.
        IF t104 = abap_true.
          DATA t117 TYPE abap_bool.
          DATA t118 TYPE abap_bool.
          t118 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_unknown_type ).
          t117 = xsdbool( t118 = abap_false ).
          t103 = t117.
        ENDIF.
        t102 = t103.
        IF t103 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE abap_bool.
          t121 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_any_type ).
          t120 = xsdbool( t121 = abap_false ).
          t102 = t120.
        ENDIF.
        IF t102 = abap_true.
          DATA(t124) = |SORT, must be a internal table|.
          DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t125 = t2->issues.
          DATA t127 TYPE REF TO zcl_lnt_issue.
          DATA t129 TYPE REF TO zcl_lnt_abstract_token.
          DATA t130 TYPE REF TO zcl_lnt_expression_node.
          t130 = t13.
          t129 = t130->get_first_token( ).
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t127 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t129 i_message_26cb = t124 i_fix = t133 ).
          t125->load( ).
          APPEND t127 TO t125->items.
          t125->save( ).
          RETURN.
        ENDIF.
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d967_20f9e6921048.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
