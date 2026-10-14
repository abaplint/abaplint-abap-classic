* TS: src/abap/5_syntax/statements/convert.ts:10:1 Convert
CLASS zcl_lnt_sy_convert DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_convert IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t20) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t21) = |TIME|.
    t19 = t20->find_expressions_after_token( i_text = t21 ).
    t18 = t19.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    LOOP AT t22->items INTO t24.
      t23 ?= t24.
      DATA(t25) = VALUE string( ).
      DATA t26 TYPE string.
      DATA t27 TYPE string.
      DATA(t28) = CAST zcl_lnt_statement_node( t1 ).
      t27 = t28->concat_tokens(  ).
      DATA(t29) = strlen( t27 ).
      t26 = t27.
      IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t26 TO UPPER CASE.
      ELSE.
        t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
      ENDIF.
      t25 = t26.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = CAST zcl_lnt_expression_node( t23 ).
      t32 = t33.
      DATA t34 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = CAST zcl_lnt_expression_node( t32 ).
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t37.
        t34 = t37.
      ELSE.
        DATA t38 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t39) = CAST zcl_lnt_expression_node( t32 ).
        t38 = t39->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
        t34 = t38.
      ENDIF.
      t31 = t34.
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_target ).
      IF t30 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        DATA(t43) = CAST zcl_lnt_expression_node( t23 ).
        t42 = t43.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t44.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = CAST zcl_lnt_expression_node( t42 ).
        IF t46 IS INITIAL.
          t45 = abap_true.
        ENDIF.
        IF t45 = abap_true.
          DATA t47 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t47.
          t44 = t47.
        ELSE.
          DATA t48 TYPE REF TO zcl_lnt_expression_node.
          DATA(t49) = CAST zcl_lnt_expression_node( t42 ).
          DATA(t50) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
          t48 = t49->find_direct_expression( i_type_9913 = t50 ).
          t44 = t48.
        ENDIF.
        t41 = t44.
        t40 = t41.
        DATA t51 TYPE abap_bool.
        DATA(t52) = CAST zcl_lnt_expression_node( t40 ).
        t51 = xsdbool( t52 IS BOUND ).
        IF t51 = abap_true.
          DATA t53 TYPE REF TO zcl_lnt_abstract_type.
          DATA t54 TYPE REF TO zcl_lnt_time_type.
          DATA t55 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t55.
          t54 = NEW zcl_lnt_time_type( i_input_967e = t55 ).
          t53 = t54.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = VALUE i( ).
          DATA(t58) = t25.
          DATA(t59) = VALUE string( ).
          DATA(t60) = |DAYLIGHT SAVING TIME |.
          DATA t61 TYPE string.
          DATA t62 TYPE string.
          DATA t63 TYPE REF TO zcl_lnt_expression_node.
          DATA(t64) = CAST zcl_lnt_expression_node( t40 ).
          t63 = t64.
          t62 = t63->concat_tokens(  ).
          DATA(t65) = strlen( t62 ).
          t61 = t62.
          IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t61 TO UPPER CASE.
          ELSE.
            t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
          ENDIF.
          DATA(t66) = strlen( t60 ).
          t59 = |{ t60 }{ t61 }|.
          DATA(t67) = strlen( t58 ).
          IF t59 IS INITIAL.
            t57 = 0.
          ELSE.
            FIND t59 IN t58 MATCH OFFSET t57.
            IF sy-subrc <> 0.
              t57 = -1.
            ENDIF.
          ENDIF.
          DATA(t68) = 0.
          t56 = xsdbool( t57 >= t68 ).
          IF t56 = abap_true.
            DATA t69 TYPE REF TO zcl_lnt_character_type.
            DATA(t70) = CONV int8( 1 ).
            DATA t71 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t71.
            t69 = NEW zcl_lnt_character_type( i_length = t70 i_extra = t71 ).
            t53 = t69.
          ENDIF.
          DATA t72 TYPE REF TO zcl_lnt_expression_node.
          DATA(t73) = CAST zcl_lnt_expression_node( t40 ).
          t72 = t73.
          DATA(t74) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t75 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA(t77) = CAST zcl_lnt_abstract_type( t53 ).
            t75 = t77.
          ELSE.
            DATA t78 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t78.
            t75 = t78.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t72 i_input_967e = t74 i_type_9913 = t75 ).
        ELSE.
          DATA t79 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t80) = CAST zcl_lnt_expression_node( t23 ).
          DATA(t81) = CAST zcl_lnt_syntax_input( t2 ).
          t79 = zcl_lnt_sy_target=>run_syntax( i_node = t80 i_input_967e = t81 ).
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t82 TYPE REF TO zcl_lnt_expression_node.
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    DATA(t84) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t85) = |DATE|.
    t83 = t84->find_expression_after_token( i_text = t85 ).
    t82 = t83.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_expression_node.
    DATA(t89) = CAST zcl_lnt_expression_node( t82 ).
    t88 = t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA(t91) = VALUE abap_bool( ).
    DATA(t92) = CAST zcl_lnt_expression_node( t88 ).
    IF t92 IS INITIAL.
      t91 = abap_true.
    ENDIF.
    IF t91 = abap_true.
      DATA t93 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t93.
      t90 = t93.
    ELSE.
      DATA t94 TYPE REF TO zif_lnt_statement_runnable.
      DATA t95 TYPE REF TO zcl_lnt_expression_node.
      DATA(t96) = CAST zcl_lnt_expression_node( t88 ).
      t95 = t96.
      t94 = t95->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t90 = t94.
    ENDIF.
    t87 = t90.
    t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_st_target ).
    IF t86 = abap_true.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t98.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      DATA t100 TYPE REF TO zcl_lnt_expression_node.
      DATA(t101) = CAST zcl_lnt_expression_node( t82 ).
      t100 = t101.
      t99 = t100.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA(t103) = VALUE abap_bool( ).
      DATA(t104) = CAST zcl_lnt_expression_node( t99 ).
      IF t104 IS INITIAL.
        t103 = abap_true.
      ENDIF.
      IF t103 = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t105.
        t102 = t105.
      ELSE.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        DATA(t107) = CAST zcl_lnt_expression_node( t99 ).
        DATA(t108) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
        t106 = t107->find_direct_expression( i_type_9913 = t108 ).
        t102 = t106.
      ENDIF.
      t98 = t102.
      t97 = t98.
      DATA t109 TYPE abap_bool.
      DATA(t110) = CAST zcl_lnt_expression_node( t97 ).
      t109 = xsdbool( t110 IS BOUND ).
      IF t109 = abap_true.
        DATA t111 TYPE REF TO zcl_lnt_expression_node.
        DATA(t112) = CAST zcl_lnt_expression_node( t97 ).
        t111 = t112.
        DATA(t113) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t114 TYPE REF TO zcl_lnt_date_type.
        DATA t115 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t115.
        t114 = NEW zcl_lnt_date_type( i_input_967e = t115 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t111 i_input_967e = t113 i_type_9913 = t114 ).
      ELSE.
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        DATA t117 TYPE REF TO zcl_lnt_expression_node.
        DATA(t118) = CAST zcl_lnt_expression_node( t82 ).
        t117 = t118.
        DATA(t119) = CAST zcl_lnt_syntax_input( t2 ).
        t116 = zcl_lnt_sy_target=>run_syntax( i_node = t117 i_input_967e = t119 ).
      ENDIF.
    ENDIF.
    DATA t120 TYPE REF TO zcl_lnt_expression_node.
    DATA t121 TYPE REF TO zcl_lnt_expression_node.
    DATA(t122) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t123) = |STAMP|.
    t121 = t122->find_expression_after_token( i_text = t123 ).
    t120 = t121.
    DATA(t124) = VALUE abap_bool( ).
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zcl_lnt_expression_node.
    DATA(t127) = CAST zcl_lnt_expression_node( t120 ).
    t126 = t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = VALUE abap_bool( ).
    DATA(t130) = CAST zcl_lnt_expression_node( t126 ).
    IF t130 IS INITIAL.
      t129 = abap_true.
    ENDIF.
    IF t129 = abap_true.
      DATA t131 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t131.
      t128 = t131.
    ELSE.
      DATA t132 TYPE REF TO zif_lnt_statement_runnable.
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      DATA(t134) = CAST zcl_lnt_expression_node( t126 ).
      t133 = t134.
      t132 = t133->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t128 = t132.
    ENDIF.
    t125 = t128.
    t124 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_target ).
    IF t124 = abap_true.
      DATA t135 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t135.
      DATA t136 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_expression_node.
      DATA t138 TYPE REF TO zcl_lnt_expression_node.
      DATA(t139) = CAST zcl_lnt_expression_node( t120 ).
      t138 = t139.
      t137 = t138.
      DATA t140 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t140.
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = CAST zcl_lnt_expression_node( t137 ).
      IF t142 IS INITIAL.
        t141 = abap_true.
      ENDIF.
      IF t141 = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t143.
        t140 = t143.
      ELSE.
        DATA t144 TYPE REF TO zcl_lnt_expression_node.
        DATA(t145) = CAST zcl_lnt_expression_node( t137 ).
        DATA(t146) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
        t144 = t145->find_direct_expression( i_type_9913 = t146 ).
        t140 = t144.
      ENDIF.
      t136 = t140.
      t135 = t136.
      DATA t147 TYPE abap_bool.
      DATA(t148) = CAST zcl_lnt_expression_node( t135 ).
      t147 = xsdbool( t148 IS BOUND ).
      IF t147 = abap_true.
        DATA t149 TYPE REF TO zcl_lnt_expression_node.
        DATA(t150) = CAST zcl_lnt_expression_node( t135 ).
        t149 = t150.
        DATA(t151) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t152 TYPE REF TO zcl_lnt_packed_type.
        DATA(t153) = CONV int8( 8 ).
        DATA(t154) = CONV int8( 4 ).
        DATA t155 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t155.
        t152 = NEW zcl_lnt_packed_type( i_length = t153 i_decimals_2eed = t154 i_extra = t155 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t149 i_input_967e = t151 i_type_9913 = t152 ).
      ELSE.
        DATA t156 TYPE REF TO zcl_lnt_abstract_type.
        DATA t157 TYPE REF TO zcl_lnt_expression_node.
        DATA(t158) = CAST zcl_lnt_expression_node( t120 ).
        t157 = t158.
        DATA(t159) = CAST zcl_lnt_syntax_input( t2 ).
        t156 = zcl_lnt_sy_target=>run_syntax( i_node = t157 i_input_967e = t159 ).
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d861_4875d700303e.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
