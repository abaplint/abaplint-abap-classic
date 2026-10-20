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
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t13 = t1->find_direct_expression( i_type_9913 = t16 ).
    IF xsdbool( t13 IS BOUND ) = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      t19 = zcl_lnt_sy_target=>run_syntax( i_node = t13 i_input_967e = t2 ).
      IF xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t28 TYPE REF TO zcl_lnt_itable_key.
        DATA t30 TYPE REF TO zcl_lnt_itable_options.
        DATA t33 TYPE REF TO zcl_lnt_ty_table_type.
        t33 ?= t19.
        t30 = t33->options.
        DATA t37 TYPE REF TO zcl_lnt_itable_key.
        IF xsdbool( t30 IS INITIAL ) = abap_true.
        ELSE.
          t37 = t30->zlnt_view_read_sr_48b89cc62ab9( ).
        ENDIF.
        t28 = t37.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t28 IS INITIAL ) = abap_true.
        ELSE.
          DATA t47 TYPE string.
          t47 = t28->zlnt_view_read_sr_f361ef311f50( ).
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t47.
          t43 = t50.
        ENDIF.
        t27 = t43.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = |SORTED|.
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
          DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t60 = t2->issues.
          DATA t62 TYPE REF TO zcl_lnt_issue.
          DATA t68 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t62 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t13->get_first_token( ) i_message_26cb = |Sorted table, already sorted| i_fix = t68 ).
          t60->load( ).
          APPEND t62 TO t60->items.
          t60->save( ).
          RETURN.
        ENDIF.
        DATA t69 TYPE REF TO zcl_lnt_abstract_type.
        DATA t72 TYPE REF TO zcl_lnt_ty_table_type.
        t72 ?= t19.
        t69 = t72->row_type.
        DATA(t76) = VALUE abap_bool( ).
        DATA t77 TYPE abap_bool.
        DATA t78 TYPE abap_bool.
        t78 = xsdbool( xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
        t77 = t78.
        IF t78 = abap_true.
          t77 = xsdbool( xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
        ENDIF.
        t76 = t77.
        IF t77 = abap_true.
          t76 = xsdbool( xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_any_type ) = abap_false ).
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
            t95 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t69 i_node = t90 i_input_967e = t2 ).
          ENDDO.
        ENDIF.
      ELSE.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE abap_bool( ).
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t105 = xsdbool( xsdbool( t19 IS INITIAL ) = abap_false ).
        t104 = t105.
        IF t105 = abap_true.
          DATA t115 TYPE REF TO zcl_lnt_abstract_type.
          t115 = t19.
          t104 = xsdbool( xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
        ENDIF.
        t103 = t104.
        IF t104 = abap_true.
          t103 = xsdbool( xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
        ENDIF.
        t102 = t103.
        IF t103 = abap_true.
          t102 = xsdbool( xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_any_type ) = abap_false ).
        ENDIF.
        IF t102 = abap_true.
          DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t125 = t2->issues.
          DATA t127 TYPE REF TO zcl_lnt_issue.
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t127 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t13->get_first_token( ) i_message_26cb = |SORT, must be a internal table| i_fix = t133 ).
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
