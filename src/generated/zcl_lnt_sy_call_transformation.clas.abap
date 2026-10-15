* TS: src/abap/5_syntax/statements/call_transformation.ts:11:1 CallTransformation
CLASS zcl_lnt_sy_call_transformation DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_call_transformation IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = |RESULT|.
    t4 = t5->find_expression_after_token( i_text = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_set__a5effc789cff.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_set__a5effc789cff.
    CLEAR t8.
    DATA(t9) = NEW zlnt_runtime_set__a5effc789cff( ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = t3.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t13.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = t13.
      t20 = t21.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t19 = t20->find_all_expressions( i_type_9913 = t22 ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE abap_bool.
    DATA(t25) = t11.
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = t11.
      t26 = t27.
      t23 = t26.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t28.
      t23 = t28.
    ENDIF.
    t10 = t23.
    t8 = t9->fromarray( p0 = t10 ).
    t7 = t8.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = t1.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t29 = t30->find_all_expressions( i_type_9913 = t31 ).
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    DATA(t34) = VALUE i( ).
    DO.
      t29->load( ).
      IF t34 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t29->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t7.
      DATA(t40) = t32.
      t38 = t39->has( p0 = t40 ).
      t37 = t38.
      DATA t41 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA(t44) = t32.
        t42 = t44.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t45.
        t42 = t45.
      ENDIF.
      DATA(t46) = t2.
      DATA t47 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t48.
      DATA(t49) = abap_true.
      IF t49 = abap_true.
        DATA(t50) = t37.
        DATA(t51) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t51->has = abap_true.
        t51->value = t50.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t52.
        t48 = t52.
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA(t55) = abap_false.
        DATA(t56) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t56->has = abap_true.
        t56->value = t55.
        t53 = t56.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t57.
        t53 = t57.
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t58.
      DATA(t59) = abap_true.
      IF t59 = abap_true.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t37.
        DATA(t62) = abap_false.
        t60 = xsdbool( t61 = t62 ).
        DATA(t63) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t63->has = abap_true.
        t63->value = t60.
        t58 = t63.
      ELSE.
        DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t64.
        t58 = t64.
      ENDIF.
      t41 = zcl_lnt_sy_source=>run_syntax( i_node = t42 i_input_967e = t46 i_target_type = t47 i_write_reference = t48 i_allow_generic_deference = t53 i_read_reference = t58 ).
    ENDDO.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t66) = t1.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t65 = t66->find_all_expressions( i_type_9913 = t67 ).
    DATA t68 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t68.
    DATA t69 TYPE REF TO object.
    CLEAR t69.
    DATA(t70) = VALUE i( ).
    DO.
      t65->load( ).
      IF t70 >= lines( t65->items ).
        EXIT.
      ENDIF.
      CLEAR t69.
      READ TABLE t65->items INDEX t70 + 1 INTO t69.
      t70 = t70 + 1.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      CLEAR t68.
      IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t71 ?= t69.
        DATA t72 TYPE REF TO object.
        t72 = t71->as_ref( ).
        t68 ?= t72.
      ELSE.
        t68 ?= t69.
      ENDIF.
      DATA(t73) = t68.
      DATA(t74) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t73 i_input_967e = t74 ).
    ENDDO.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t76) = t1.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t75 = t76->find_all_expressions( i_type_9913 = t77 ).
    DATA t78 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t78.
    DATA t79 TYPE REF TO object.
    CLEAR t79.
    DATA(t80) = VALUE i( ).
    DO.
      t75->load( ).
      IF t80 >= lines( t75->items ).
        EXIT.
      ENDIF.
      CLEAR t79.
      READ TABLE t75->items INDEX t80 + 1 INTO t79.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t78.
      IF t79 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t79.
        DATA t82 TYPE REF TO object.
        t82 = t81->as_ref( ).
        t78 ?= t82.
      ELSE.
        t78 ?= t79.
      ENDIF.
      DATA t83 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      DATA(t86) = t78.
      t85 = t86.
      DATA t87 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t87.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t85.
      IF t89 IS INITIAL.
        t88 = abap_true.
      ENDIF.
      IF t88 = abap_true.
        DATA t90 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t90.
        t87 = t90.
      ELSE.
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        DATA(t92) = t85.
        DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t91 = t92->find_direct_expression( i_type_9913 = t93 ).
        t87 = t91.
      ENDIF.
      t84 = t87.
      t83 = t84.
      DATA t94 TYPE abap_bool.
      DATA(t95) = t83.
      t94 = xsdbool( t95 IS BOUND ).
      IF t94 = abap_true.
        DATA t96 TYPE REF TO zcl_lnt_expression_node.
        DATA(t97) = t83.
        t96 = t97.
        DATA(t98) = t2.
        DATA t99 TYPE REF TO zcl_lnt_x_string_type.
        DATA t100 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t100.
        t99 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t100 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t96 i_input_967e = t98 i_type_9913 = t99 ).
      ELSE.
        DATA t101 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t102) = t78.
        DATA(t103) = t2.
        t101 = zcl_lnt_sy_target=>run_syntax( i_node = t102 i_input_967e = t103 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d865_07a839fc095f.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
