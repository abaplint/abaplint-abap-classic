* TS: src/abap/5_syntax/expressions/cond_body.ts:9:1 CondBody
CLASS zcl_lnt_sy_cond_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cond_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t12 TYPE abap_bool.
    DATA(t13) = abap_false.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    t16 = t17.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t14.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t25) = t14.
        t24 = t25.
        t22 = t24.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      DATA(t27) = t2.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      t21 = zcl_lnt_sy_let=>run_syntax( i_node = t22 i_input_967e = t27 i_skip_scope = t28 ).
      t12 = t21.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = t1.
    t30 = t31.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t29 = t30->find_direct_expressions( i_type_9913 = t32 ).
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    DATA(t35) = VALUE i( ).
    DO.
      t29->load( ).
      IF t35 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t29->items INDEX t35 + 1 INTO t34.
      t35 = t35 + 1.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t33.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t34.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA(t38) = t33.
      DATA(t39) = t2.
      zcl_lnt_sy_cond=>run_syntax( i_node = t38 i_input_967e = t39 ).
    ENDDO.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t41 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    DATA(t44) = t1.
    t43 = t44.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t42 = t43->find_direct_expressions( i_type_9913 = t45 ).
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t46.
    DATA t47 TYPE REF TO object.
    CLEAR t47.
    DATA(t48) = VALUE i( ).
    DO.
      t42->load( ).
      IF t48 >= lines( t42->items ).
        EXIT.
      ENDIF.
      CLEAR t47.
      READ TABLE t42->items INDEX t48 + 1 INTO t47.
      t48 = t48 + 1.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      CLEAR t46.
      IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t49 ?= t47.
        DATA t50 TYPE REF TO object.
        t50 = t49->as_ref( ).
        t46 ?= t50.
      ELSE.
        t46 ?= t47.
      ENDIF.
      DATA(t51) = VALUE abap_bool( ).
      DATA t52 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t53) = t40.
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      t54 = t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t52.
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      t51 = t56.
      IF t51 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA(t61) = t46.
          t59 = t61.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t62.
          t59 = t62.
        ENDIF.
        DATA(t63) = t2.
        DATA(t64) = t3.
        DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t65.
        DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t67.
        t58 = zcl_lnt_sy_source=>run_syntax( i_node = t59 i_input_967e = t63 i_target_type = t64 i_write_reference = t65 i_allow_generic_deference = t66 i_read_reference = t67 ).
        t40 = t58.
      ELSE.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t69.
        DATA(t70) = abap_true.
        IF t70 = abap_true.
          DATA(t71) = t46.
          t69 = t71.
        ELSE.
          DATA t72 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t72.
          t69 = t72.
        ENDIF.
        DATA(t73) = t2.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t76.
          DATA t77 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t78) = t3.
          t77 = t78.
          DATA t79 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t79.
          DATA(t80) = VALUE abap_bool( ).
          DATA(t81) = t77.
          IF t81 IS INITIAL.
            t80 = abap_true.
          ENDIF.
          IF t80 = abap_true.
            DATA t82 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t83) = t40.
            t82 = t83.
            t79 = t82.
          ELSE.
            DATA t84 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t85) = t77.
            t84 = t85.
            t79 = t84.
          ENDIF.
          t76 = t79.
          t74 = t76.
        ELSE.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t86.
          t74 = t86.
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t89.
        t68 = zcl_lnt_sy_source=>run_syntax( i_node = t69 i_input_967e = t73 i_target_type = t74 i_write_reference = t87 i_allow_generic_deference = t88 i_read_reference = t89 ).
      ENDIF.
    ENDDO.
    DATA t90 TYPE abap_bool.
    DATA(t91) = t12.
    DATA(t92) = abap_true.
    t90 = xsdbool( t91 = t92 ).
    IF t90 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t94 TYPE REF TO zcl_lnt_current_scope.
      DATA(t95) = t2.
      t94 = t95->scope.
      DATA t96 TYPE REF TO zcl_lnt_position.
      DATA t97 TYPE REF TO zcl_lnt_abstract_token.
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      DATA(t100) = t1.
      t99 = t100.
      t98 = t99->get_last_token( ).
      t97 = t98.
      DATA t101 TYPE REF TO zcl_lnt_position.
      DATA t102 TYPE f.
      DATA t103 TYPE REF TO zcl_lnt_position.
      DATA t104 TYPE REF TO zcl_lnt_position.
      DATA(t105) = t97.
      t104 = t105->start.
      t103 = t104.
      DATA t106 TYPE f.
      DATA(t107) = t103.
      t106 = t107->row.
      t102 = t106.
      DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t110 TYPE REF TO zcl_lnt_position.
      DATA t111 TYPE REF TO zcl_lnt_position.
      DATA(t112) = t97.
      t111 = t112->start.
      t110 = t111.
      DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t114) = t110.
      t113 = t114->col.
      t109 = t113.
      DATA t115 TYPE f.
      DATA t116 TYPE i.
      DATA t117 TYPE string.
      DATA(t118) = t97.
      t117 = t118->str.
      DATA(t119) = strlen( t117 ).
      t116 = t119.
      t115 = t116.
      DATA(t120) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t120->has = abap_true.
      t120->value = t115.
      t108 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t109 right = t120 op = `+` ).
      t101 = NEW zcl_lnt_position( i_row = t102 i_col = t108 ).
      t96 = t101.
      t93 = t94->pop( i_end = t96 ).
    ENDIF.
    DATA(t121) = t40.
    result = t121.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d793_243ce9349fe6.
  ENDMETHOD.
ENDCLASS.
