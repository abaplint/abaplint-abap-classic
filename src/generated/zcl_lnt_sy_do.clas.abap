* TS: src/abap/5_syntax/statements/do.ts:10:1 Do
CLASS zcl_lnt_sy_do DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_do IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    t3 = t1->find_expression_after_token( i_text = |DO| ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t7 = t1->find_direct_expressions( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t7->load( ).
      IF t12 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t7->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t17.
      t17 = t10.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t25.
      t16 = zcl_lnt_sy_source=>run_syntax( i_node = t17 i_input_967e = t2 i_target_type = t22 i_write_reference = t23 i_allow_generic_deference = t24 i_read_reference = t25 ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t10.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t33.
      IF t28 IS BOUND.
        CLEAR t33.
        IF t28 IS BOUND.
          DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t35.
          DATA t36 TYPE REF TO object.
          CLEAR t35.
          t36 = t28.
          TRY.
              t33 ?= t36.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t33 IS NOT BOUND.
            TRY.
                t35 ?= t28.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t35 IS BOUND.
              t33 = t35->source( ).
            ENDIF.
            IF t33 IS NOT BOUND.
              CREATE OBJECT t33.
              t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t33->oval = t28.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t34.
      IF t3 IS BOUND.
        CLEAR t34.
        IF t3 IS BOUND.
          DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t37.
          DATA t38 TYPE REF TO object.
          CLEAR t37.
          t38 = t3.
          TRY.
              t34 ?= t38.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t34 IS NOT BOUND.
            TRY.
                t37 ?= t3.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t37 IS BOUND.
              t34 = t37->source( ).
            ENDIF.
            IF t34 IS NOT BOUND.
              CREATE OBJECT t34.
              t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t34->oval = t3.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t33 IS BOUND.
        t27 = t33->strict_equals( t34 ).
      ELSE.
        t27 = xsdbool( t34 IS NOT BOUND ).
      ENDIF.
      t26 = t27.
      IF t27 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_type_utils.
        DATA t42 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t42.
        t42 = t2->scope.
        t41 = NEW zcl_lnt_type_utils( i_scope = t42 ).
        DATA t46 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t46.
        t26 = xsdbool( t41->is_assignable( i_source_75cf = t16 i_target_5f8a = zcl_lnt_integer_type=>get_db65( i_input_967e = t46 ) ) = abap_false ).
      ENDIF.
      IF t26 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t50 = t2->issues.
        DATA t52 TYPE REF TO zcl_lnt_issue.
        DATA t54 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t54.
        t54 = t1->get_first_token( ).
        DATA t57 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t57.
        t52 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t54 i_message_26cb = |DO TIMES must be numeric| i_fix = t57 ).
        t50->load( ).
        APPEND t52 TO t50->items.
        t50->save( ).
        RETURN.
      ENDIF.
    ENDDO.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t58 = t1->find_direct_expressions( i_type_9913 = t60 ).
    DATA t61 TYPE REF TO zcl_lnt_expression_node.
    DATA t62 TYPE REF TO object.
    DATA(t63) = VALUE i( ).
    DO.
      t58->load( ).
      IF t63 >= lines( t58->items ).
        EXIT.
      ENDIF.
      CLEAR t62.
      READ TABLE t58->items INDEX t63 + 1 INTO t62.
      t63 = t63 + 1.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      CLEAR t61.
      IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t64 ?= t62.
        DATA t65 TYPE REF TO object.
        t65 = t64->as_ref( ).
        t61 ?= t65.
      ELSE.
        t61 ?= t62.
      ENDIF.
      DATA t66 TYPE REF TO zcl_lnt_abstract_type.
      t66 = zcl_lnt_sy_target=>run_syntax( i_node = t61 i_input_967e = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d894_fafa0d4b187c.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
