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
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA(t15) = t1.
    t14 = t15.
    DATA(t16) = |THEN|.
    t13 = t14->find_expression_after_token( i_text = t16 ).
    t12 = t13.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA(t21) = t12.
    t20 = t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t20.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t27.
      DATA(t28) = t20.
      t27 = t28.
      t26 = t27->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t22 = t26.
    ENDIF.
    t19 = t22.
    t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_source ).
    t17 = xsdbool( t18 = abap_false ).
    IF t17 = abap_true.
      DATA(t29) = VALUE string( ).
      DATA(t30) = |SwitchBody, unexpected|.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t31.
      DATA(t32) = t2.
      t31 = t32->issues.
      DATA t33 TYPE REF TO zcl_lnt_issue.
      CLEAR t33.
      DATA(t34) = t2.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t36.
      DATA(t37) = t1.
      t36 = t37.
      t35 = t36->get_first_token( ).
      DATA(t38) = t29.
      DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t39.
      t33 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t34 i_token = t35 i_message_26cb = t38 i_fix = t39 ).
      t31->load( ).
      APPEND t33 TO t31->items.
      t31->save( ).
      DATA t40 TYPE REF TO zcl_lnt_void_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA(t42) = abap_true.
      IF t42 = abap_true.
        DATA(t43) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t43.
        t41 = t44.
      ELSE.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        t41 = t45.
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      t40 = zcl_lnt_void_type=>get_db65( i_voided = t41 i_qualified_name = t46 ).
      result = t40.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t51.
      DATA(t52) = t12.
      t51 = t52.
      t49 = t51.
    ELSE.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t53.
      t49 = t53.
    ENDIF.
    DATA(t54) = t2.
    DATA(t55) = t3.
    DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t58.
    t48 = zcl_lnt_sy_source=>run_syntax( i_node = t49 i_input_967e = t54 i_target_type = t55 i_write_reference = t56 i_allow_generic_deference = t57 i_read_reference = t58 ).
    t47 = t48.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t60.
    DATA(t61) = t1.
    t60 = t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t59 = t60->find_direct_expressions( i_type_9913 = t62 ).
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t63.
    DATA t64 TYPE REF TO object.
    CLEAR t64.
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
      DATA(t69) = t63.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t70.
      DATA(t71) = t12.
      t70 = t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      CLEAR t72.
      IF t69 IS BOUND.
        DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t74.
        DATA t75 TYPE REF TO object.
        CLEAR t75.
        CLEAR t74.
        t75 = t69.
        TRY.
            t72 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS NOT BOUND.
          TRY.
              t74 ?= t69.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t74 IS BOUND.
            t72 = t74->source( ).
          ENDIF.
          IF t72 IS NOT BOUND.
            CREATE OBJECT t72.
            t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t72->oval = t69.
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
      DATA(t80) = abap_true.
      IF t80 = abap_true.
        DATA(t81) = t63.
        t79 = t81.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t82.
        t79 = t82.
      ENDIF.
      DATA(t83) = t2.
      DATA t84 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t85.
      DATA(t86) = t3.
      t85 = t86.
      DATA t87 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t87.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t85.
      IF t89 IS INITIAL.
        t88 = abap_true.
      ENDIF.
      IF t88 = abap_true.
        DATA(t90) = t47.
        t87 = t90.
      ELSE.
        DATA t91 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t93.
          DATA(t94) = t85.
          t93 = t94.
          t91 = t93.
        ELSE.
          DATA t95 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t95.
          t91 = t95.
        ENDIF.
        t87 = t91.
      ENDIF.
      t84 = t87.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t98.
      t78 = zcl_lnt_sy_source=>run_syntax( i_node = t79 i_input_967e = t83 i_target_type = t84 i_write_reference = t96 i_allow_generic_deference = t97 i_read_reference = t98 ).
    ENDDO.
    DATA(t99) = t47.
    result = t99.

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
