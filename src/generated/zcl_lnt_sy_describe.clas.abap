* TS: src/abap/5_syntax/statements/describe.ts:12:1 Describe
CLASS zcl_lnt_sy_describe DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_describe IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t21 = t22->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA(t30) = t24.
      DATA(t31) = t2.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t34.
        DATA(t35) = |Read From|.
        CLEAR t34.
        CREATE OBJECT t34.
        t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t34->sval = t35.
        t32 = t34.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        t32 = t36.
      ENDIF.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      t29 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t30 i_input_967e = t31 i_ref_type = t32 i_allow_generic_deference = t37 ).
    ENDDO.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    DATA t39 TYPE REF TO zcl_lnt_expression_node.
    DATA(t40) = t1.
    DATA(t41) = |LINES|.
    t39 = t40->find_expression_after_token( i_text = t41 ).
    t38 = t39.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    DATA(t45) = t38.
    t44 = t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = t44.
    IF t48 IS INITIAL.
      t47 = abap_true.
    ENDIF.
    IF t47 = abap_true.
      DATA t49 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t49.
      t46 = t49.
    ELSE.
      DATA t50 TYPE REF TO zif_lnt_statement_runnable.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA(t52) = t44.
      t51 = t52.
      t50 = t51->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t46 = t50.
    ENDIF.
    t43 = t46.
    t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_st_target ).
    IF t42 = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = t38.
      t56 = t57.
      t55 = t56.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t58.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = t55.
      IF t60 IS INITIAL.
        t59 = abap_true.
      ENDIF.
      IF t59 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t61.
        t58 = t61.
      ELSE.
        DATA t62 TYPE REF TO zcl_lnt_expression_node.
        DATA(t63) = t55.
        DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t62 = t63->find_direct_expression( i_type_9913 = t64 ).
        t58 = t62.
      ENDIF.
      t54 = t58.
      t53 = t54.
      DATA t65 TYPE abap_bool.
      DATA(t66) = t53.
      t65 = xsdbool( t66 IS BOUND ).
      IF t65 = abap_true.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        DATA(t68) = t53.
        t67 = t68.
        DATA(t69) = t2.
        DATA t70 TYPE REF TO zcl_lnt_integer_type.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t71.
        t70 = zcl_lnt_integer_type=>get_db65( i_input_967e = t71 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t67 i_input_967e = t69 i_type_9913 = t70 ).
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_abstract_type.
        DATA t73 TYPE REF TO zcl_lnt_expression_node.
        DATA(t74) = t38.
        t73 = t74.
        DATA(t75) = t2.
        t72 = zcl_lnt_sy_target=>run_syntax( i_node = t73 i_input_967e = t75 ).
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_expression_node.
    DATA t77 TYPE REF TO zcl_lnt_expression_node.
    DATA(t78) = t1.
    DATA(t79) = |TYPE|.
    t77 = t78->find_expression_after_token( i_text = t79 ).
    t76 = t77.
    DATA(t80) = VALUE abap_bool( ).
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zcl_lnt_expression_node.
    DATA(t83) = t76.
    t82 = t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA(t85) = VALUE abap_bool( ).
    DATA(t86) = t82.
    IF t86 IS INITIAL.
      t85 = abap_true.
    ENDIF.
    IF t85 = abap_true.
      DATA t87 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t87.
      t84 = t87.
    ELSE.
      DATA t88 TYPE REF TO zif_lnt_statement_runnable.
      DATA t89 TYPE REF TO zcl_lnt_expression_node.
      DATA(t90) = t82.
      t89 = t90.
      t88 = t89->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t84 = t88.
    ENDIF.
    t81 = t84.
    t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_st_target ).
    IF t80 = abap_true.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t91.
      DATA t92 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_expression_node.
      DATA t94 TYPE REF TO zcl_lnt_expression_node.
      DATA(t95) = t76.
      t94 = t95.
      t93 = t94.
      DATA t96 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t96.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = t93.
      IF t98 IS INITIAL.
        t97 = abap_true.
      ENDIF.
      IF t97 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t99.
        t96 = t99.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_expression_node.
        DATA(t101) = t93.
        DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t100 = t101->find_direct_expression( i_type_9913 = t102 ).
        t96 = t100.
      ENDIF.
      t92 = t96.
      t91 = t92.
      DATA t103 TYPE abap_bool.
      DATA(t104) = t91.
      t103 = xsdbool( t104 IS BOUND ).
      IF t103 = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        DATA(t106) = t91.
        t105 = t106.
        DATA(t107) = t2.
        DATA t108 TYPE REF TO zcl_lnt_character_type.
        DATA(t109) = CONV f( 1 ).
        DATA t110 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t110.
        t108 = NEW zcl_lnt_character_type( i_length = t109 i_extra = t110 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t105 i_input_967e = t107 i_type_9913 = t108 ).
      ELSE.
        DATA t111 TYPE REF TO zcl_lnt_abstract_type.
        DATA t112 TYPE REF TO zcl_lnt_expression_node.
        DATA(t113) = t76.
        t112 = t113.
        DATA(t114) = t2.
        t111 = zcl_lnt_sy_target=>run_syntax( i_node = t112 i_input_967e = t114 ).
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    DATA t116 TYPE REF TO zcl_lnt_expression_node.
    DATA(t117) = t1.
    DATA(t118) = |LENGTH|.
    t116 = t117->find_expression_after_token( i_text = t118 ).
    t115 = t116.
    DATA(t119) = VALUE abap_bool( ).
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zcl_lnt_expression_node.
    DATA(t122) = t115.
    t121 = t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA(t124) = VALUE abap_bool( ).
    DATA(t125) = t121.
    IF t125 IS INITIAL.
      t124 = abap_true.
    ENDIF.
    IF t124 = abap_true.
      DATA t126 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t126.
      t123 = t126.
    ELSE.
      DATA t127 TYPE REF TO zif_lnt_statement_runnable.
      DATA t128 TYPE REF TO zcl_lnt_expression_node.
      DATA(t129) = t121.
      t128 = t129.
      t127 = t128->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t123 = t127.
    ENDIF.
    t120 = t123.
    t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_st_target ).
    IF t119 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t130.
      DATA t131 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t131.
      DATA t132 TYPE REF TO zcl_lnt_expression_node.
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      DATA(t134) = t115.
      t133 = t134.
      t132 = t133.
      DATA t135 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t135.
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = t132.
      IF t137 IS INITIAL.
        t136 = abap_true.
      ENDIF.
      IF t136 = abap_true.
        DATA t138 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t138.
        t135 = t138.
      ELSE.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        DATA(t140) = t132.
        DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t139 = t140->find_direct_expression( i_type_9913 = t141 ).
        t135 = t139.
      ENDIF.
      t131 = t135.
      t130 = t131.
      DATA t142 TYPE abap_bool.
      DATA(t143) = t130.
      t142 = xsdbool( t143 IS BOUND ).
      IF t142 = abap_true.
        DATA t144 TYPE REF TO zcl_lnt_expression_node.
        DATA(t145) = t130.
        t144 = t145.
        DATA(t146) = t2.
        DATA t147 TYPE REF TO zcl_lnt_integer_type.
        DATA t148 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t148.
        t147 = zcl_lnt_integer_type=>get_db65( i_input_967e = t148 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t144 i_input_967e = t146 i_type_9913 = t147 ).
      ELSE.
        DATA t149 TYPE REF TO zcl_lnt_abstract_type.
        DATA t150 TYPE REF TO zcl_lnt_expression_node.
        DATA(t151) = t115.
        t150 = t151.
        DATA(t152) = t2.
        t149 = zcl_lnt_sy_target=>run_syntax( i_node = t150 i_input_967e = t152 ).
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zcl_lnt_expression_node.
    DATA t154 TYPE REF TO zcl_lnt_expression_node.
    DATA(t155) = t1.
    DATA(t156) = |COMPONENTS|.
    t154 = t155->find_expression_after_token( i_text = t156 ).
    t153 = t154.
    DATA(t157) = VALUE abap_bool( ).
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zcl_lnt_expression_node.
    DATA(t160) = t153.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA(t162) = VALUE abap_bool( ).
    DATA(t163) = t159.
    IF t163 IS INITIAL.
      t162 = abap_true.
    ENDIF.
    IF t162 = abap_true.
      DATA t164 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t164.
      t161 = t164.
    ELSE.
      DATA t165 TYPE REF TO zif_lnt_statement_runnable.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      DATA(t167) = t159.
      t166 = t167.
      t165 = t166->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t161 = t165.
    ENDIF.
    t158 = t161.
    t157 = xsdbool( t158 IS BOUND AND t158 IS INSTANCE OF zcl_lnt_st_target ).
    IF t157 = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      DATA t171 TYPE REF TO zcl_lnt_expression_node.
      DATA(t172) = t153.
      t171 = t172.
      t170 = t171.
      DATA t173 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t173.
      DATA(t174) = VALUE abap_bool( ).
      DATA(t175) = t170.
      IF t175 IS INITIAL.
        t174 = abap_true.
      ENDIF.
      IF t174 = abap_true.
        DATA t176 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t176.
        t173 = t176.
      ELSE.
        DATA t177 TYPE REF TO zcl_lnt_expression_node.
        DATA(t178) = t170.
        DATA(t179) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t177 = t178->find_direct_expression( i_type_9913 = t179 ).
        t173 = t177.
      ENDIF.
      t169 = t173.
      t168 = t169.
      DATA t180 TYPE abap_bool.
      DATA(t181) = t168.
      t180 = xsdbool( t181 IS BOUND ).
      IF t180 = abap_true.
        DATA t182 TYPE REF TO zcl_lnt_expression_node.
        DATA(t183) = t168.
        t182 = t183.
        DATA(t184) = t2.
        DATA t185 TYPE REF TO zcl_lnt_integer_type.
        DATA t186 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t186.
        t185 = zcl_lnt_integer_type=>get_db65( i_input_967e = t186 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t182 i_input_967e = t184 i_type_9913 = t185 ).
      ELSE.
        DATA t187 TYPE REF TO zcl_lnt_abstract_type.
        DATA t188 TYPE REF TO zcl_lnt_expression_node.
        DATA(t189) = t153.
        t188 = t189.
        DATA(t190) = t2.
        t187 = zcl_lnt_sy_target=>run_syntax( i_node = t188 i_input_967e = t190 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d892_419d6cde2530.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
