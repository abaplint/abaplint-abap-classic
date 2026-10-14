* TS: src/abap/5_syntax/expressions/cond_body.ts:9:1 CondBody
CLASS zcl_lnt_sy_cond_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cond_body IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_expression_node( t5 ).
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
    DATA(t17) = CAST zcl_lnt_expression_node( t1 ).
    t16 = t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9 ).
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_expression_node( t14 ).
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t25) = CAST zcl_lnt_expression_node( t14 ).
        t24 = t25.
        t22 = t24.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      DATA(t27) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      t21 = zcl_lnt_sy_let=>run_syntax( i_node = t22 i_input_967e = t27 i_skip_scope = t28 ).
      t12 = t21.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = CAST zcl_lnt_expression_node( t1 ).
    t30 = t31.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421 ).
    t29 = t30->find_direct_expressions( i_type_9913 = t32 ).
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    LOOP AT t29->items INTO t34.
      t33 ?= t34.
      DATA(t35) = CAST zcl_lnt_expression_node( t33 ).
      DATA(t36) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_cond=>run_syntax( i_node = t35 i_input_967e = t36 ).
    ENDLOOP.
    DATA t37 TYPE REF TO zcl_lnt_abstract_type.
    DATA t38 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t38.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zcl_lnt_expression_node.
    DATA(t41) = CAST zcl_lnt_expression_node( t1 ).
    t40 = t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t39 = t40->find_direct_expressions( i_type_9913 = t42 ).
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t43.
    DATA t44 TYPE REF TO object.
    CLEAR t44.
    LOOP AT t39->items INTO t44.
      t43 ?= t44.
      DATA(t45) = VALUE abap_bool( ).
      DATA t46 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t47) = CAST zcl_lnt_abstract_type( t37 ).
      t46 = t47.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      t48 = t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = CAST zcl_lnt_abstract_type( t46 ).
      IF t51 IS INITIAL.
        t50 = abap_true.
      ENDIF.
      t45 = t50.
      IF t45 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        DATA(t54) = abap_true.
        IF t54 = abap_true.
          DATA(t55) = CAST zcl_lnt_expression_node( t43 ).
          t53 = t55.
        ELSE.
          DATA t56 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t56.
          t53 = t56.
        ENDIF.
        DATA(t57) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t58) = CAST zcl_lnt_abstract_type( t3 ).
        DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t61.
        t52 = zcl_lnt_sy_source=>run_syntax( i_node = t53 i_input_967e = t57 i_target_type = t58 i_write_reference = t59 i_allow_generic_deference = t60 i_read_reference = t61 ).
        t37 = t52.
      ELSE.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = CAST zcl_lnt_expression_node( t43 ).
          t63 = t65.
        ELSE.
          DATA t66 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t66.
          t63 = t66.
        ENDIF.
        DATA(t67) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t68 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA t70 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t72) = CAST zcl_lnt_abstract_type( t3 ).
          t71 = t72.
          DATA t73 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t73.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = CAST zcl_lnt_abstract_type( t71 ).
          IF t75 IS INITIAL.
            t74 = abap_true.
          ENDIF.
          IF t74 = abap_true.
            DATA t76 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t77) = CAST zcl_lnt_abstract_type( t37 ).
            t76 = t77.
            t73 = t76.
          ELSE.
            DATA t78 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t79) = CAST zcl_lnt_abstract_type( t71 ).
            t78 = t79.
            t73 = t78.
          ENDIF.
          t70 = t73.
          t68 = t70.
        ELSE.
          DATA t80 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t80.
          t68 = t80.
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t83.
        t62 = zcl_lnt_sy_source=>run_syntax( i_node = t63 i_input_967e = t67 i_target_type = t68 i_write_reference = t81 i_allow_generic_deference = t82 i_read_reference = t83 ).
      ENDIF.
    ENDLOOP.
    DATA t84 TYPE abap_bool.
    DATA(t85) = t12.
    DATA(t86) = abap_true.
    t84 = xsdbool( t85 = t86 ).
    IF t84 = abap_true.
      DATA t87 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_current_scope.
      DATA(t89) = CAST zcl_lnt_syntax_input( t2 ).
      t88 = t89->scope.
      DATA t90 TYPE REF TO zcl_lnt_position.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_abstract_token.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      DATA t93 TYPE REF TO zcl_lnt_expression_node.
      DATA(t94) = CAST zcl_lnt_expression_node( t1 ).
      t93 = t94.
      t92 = t93->get_last_token( ).
      t91 = t92.
      DATA t95 TYPE REF TO zcl_lnt_position.
      CLEAR t95.
      DATA t96 TYPE int8.
      DATA t97 TYPE REF TO zcl_lnt_position.
      DATA t98 TYPE REF TO zcl_lnt_position.
      DATA(t99) = CAST zcl_lnt_abstract_token( t91 ).
      t98 = t99->start.
      t97 = t98.
      DATA t100 TYPE int8.
      DATA(t101) = CAST zcl_lnt_position( t97 ).
      t100 = t101->row.
      t96 = t100.
      DATA t102 TYPE int8.
      DATA t103 TYPE int8.
      DATA t104 TYPE REF TO zcl_lnt_position.
      DATA t105 TYPE REF TO zcl_lnt_position.
      DATA(t106) = CAST zcl_lnt_abstract_token( t91 ).
      t105 = t106->start.
      t104 = t105.
      DATA t107 TYPE int8.
      DATA(t108) = CAST zcl_lnt_position( t104 ).
      t107 = t108->col.
      t103 = t107.
      DATA t109 TYPE int8.
      DATA t110 TYPE i.
      DATA t111 TYPE string.
      DATA(t112) = CAST zcl_lnt_abstract_token( t91 ).
      t111 = t112->str.
      DATA(t113) = strlen( t111 ).
      t110 = t113.
      t109 = t110.
      t102 = t103 + t109.
      IF t102 < range_int8_bound_min OR t102 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t95 = NEW zcl_lnt_position( i_row = t96 i_col = t102 ).
      t90 = t95.
      t87 = t88->pop( i_end = t90 ).
    ENDIF.
    DATA(t114) = CAST zcl_lnt_abstract_type( t37 ).
    result = t114.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d771_f6e2203afa60.
  ENDMETHOD.
ENDCLASS.
