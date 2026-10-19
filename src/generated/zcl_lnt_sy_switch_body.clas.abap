* TS: src/abap/5_syntax/expressions/switch_body.ts:8:1 SwitchBody
CLASS zcl_lnt_sy_switch_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_switch_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    t12 = t1->find_expression_after_token( i_text = |THEN| ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    t20 = t12.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
    ELSE.
      t22 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t19 = t22.
    IF xsdbool( xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_source ) = abap_false ) = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t31 = t2->issues.
      DATA t33 TYPE REF TO zcl_lnt_issue.
      DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t33 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |SwitchBody, unexpected| i_fix = t39 ).
      t31->load( ).
      APPEND t33 TO t31->items.
      t31->save( ).
      DATA(t43) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t44 i_qualified_name = t46 ).
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t47 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t3 i_write_reference = t56 i_allow_generic_deference = t57 i_read_reference = t58 ).
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    t60 = t1.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t59 = t60->find_direct_expressions( i_type_9913 = t62 ).
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    DATA t64 TYPE REF TO object.
    DATA(t65) = VALUE i( ).
    DO.
      t59->load( ).
      IF t65 >= lines( t59->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t59->items INDEX t65 + 1 INTO t64.
      t65 = t65 + 1.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t63.
      IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t64.
        DATA t67 TYPE REF TO object.
        CLEAR t67.
        t67 = t66->as_ref( ).
        t63 ?= t67.
      ELSE.
        t63 ?= t64.
      ENDIF.
      DATA(t68) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t70.
      t70 = t12.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      CLEAR t72.
      IF t63 IS BOUND.
        DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t74.
        DATA t75 TYPE REF TO object.
        CLEAR t75.
        CLEAR t74.
        t75 = t63.
        TRY.
            t72 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS NOT BOUND.
          TRY.
              t74 ?= t63.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t74 IS BOUND.
            t72 = t74->source( ).
          ENDIF.
          IF t72 IS NOT BOUND.
            CREATE OBJECT t72.
            t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t72->oval = t63.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t73.
      IF t70 IS BOUND.
        DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t76.
        DATA t77 TYPE REF TO object.
        CLEAR t77.
        CLEAR t76.
        t77 = t70.
        TRY.
            t73 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS NOT BOUND.
          TRY.
              t76 ?= t70.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t76 IS BOUND.
            t73 = t76->source( ).
          ENDIF.
          IF t73 IS NOT BOUND.
            CREATE OBJECT t73.
            t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t73->oval = t70.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t72 IS BOUND.
        t68 = t72->strict_equals( t73 ).
      ELSE.
        t68 = xsdbool( t73 IS NOT BOUND ).
      ENDIF.
      IF t68 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t78.
      DATA t79 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t79.
      t79 = t63.
      DATA t84 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t85.
      t85 = t3.
      DATA t87 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t87.
      IF xsdbool( t85 IS INITIAL ) = abap_true.
        t87 = t47.
      ELSE.
        t87 = t85.
      ENDIF.
      t84 = t87.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t98.
      t78 = zcl_lnt_sy_source=>run_syntax( i_node = t79 i_input_967e = t2 i_target_type = t84 i_write_reference = t96 i_allow_generic_deference = t97 i_read_reference = t98 ).
    ENDDO.
    result = t47.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d843_a802fe206417.
  ENDMETHOD.
ENDCLASS.
