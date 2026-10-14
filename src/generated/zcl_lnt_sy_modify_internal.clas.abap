* TS: src/abap/5_syntax/statements/modify_internal.ts:11:1 ModifyInternal
CLASS zcl_lnt_sy_modify_internal DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_modify_internal IMPLEMENTATION.
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
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t19 = t20->find_first_expression( i_type_9913 = t21 ).
    t18 = t19.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = CAST zcl_lnt_expression_node( t18 ).
    t22 = t23.
    DATA t24 TYPE abap_bool.
    DATA(t25) = CAST zcl_lnt_expression_node( t22 ).
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = CAST zcl_lnt_expression_node( t22 ).
      t28 = t29.
      DATA(t30) = CAST zcl_lnt_syntax_input( t2 ).
      t27 = zcl_lnt_sy_target=>run_syntax( i_node = t28 i_input_967e = t30 ).
      t26 = t27.
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE abap_bool.
      DATA(t34) = CAST zcl_lnt_abstract_type( t26 ).
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_void_type ).
      t32 = t33.
      IF t33 = abap_false.
        DATA t35 TYPE abap_bool.
        DATA(t36) = CAST zcl_lnt_abstract_type( t26 ).
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_any_type ).
        t32 = t35.
      ENDIF.
      t31 = t32.
      IF t32 = abap_false.
        DATA t37 TYPE abap_bool.
        DATA(t38) = CAST zcl_lnt_abstract_type( t26 ).
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_unknown_type ).
        t31 = t37.
      ENDIF.
      IF t31 = abap_true.
      ELSE.
        DATA t39 TYPE abap_bool.
        DATA(t40) = CAST zcl_lnt_abstract_type( t26 ).
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t39 = abap_true.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = VALUE abap_bool( ).
          DATA(t43) = VALUE abap_bool( ).
          DATA t44 TYPE REF TO zcl_lnt_abstract_token.
          DATA t45 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t46) = CAST zcl_lnt_statement_node( t1 ).
          DATA(t47) = |TABLE|.
          t45 = t46->find_direct_token_by_text( i_text = t47 ).
          t44 = t45.
          DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          t48 = t49.
          DATA(t50) = VALUE abap_bool( ).
          DATA(t51) = CAST zcl_lnt_abstract_token( t44 ).
          IF t51 IS INITIAL.
            t50 = abap_true.
          ENDIF.
          t43 = t50.
          t42 = t43.
          IF t43 = abap_true.
            DATA t52 TYPE abap_bool.
            DATA t53 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t54) = CAST zcl_lnt_statement_node( t1 ).
            DATA(t55) = |INDEX|.
            t53 = t54->find_direct_token_by_text( i_text = t55 ).
            t52 = xsdbool( t53 IS BOUND ).
            t42 = t52.
          ENDIF.
          t41 = t42.
          IF t42 = abap_true.
            DATA(t56) = VALUE abap_bool( ).
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t57.
            DATA t58 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t59 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t60) = CAST zcl_lnt_abstract_type( t26 ).
            t59 ?= t60.
            t58 = t59.
            DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t61.
            DATA t62 TYPE REF TO zcl_lnt_itable_key.
            DATA t63 TYPE REF TO zcl_lnt_itable_key.
            DATA t64 TYPE REF TO zcl_lnt_itable_options.
            DATA(t65) = CAST zcl_lnt_ty_table_type( t58 ).
            t64 = t65->options.
            t63 = t64->primary_key.
            t62 = t63.
            DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t66.
            DATA(t67) = VALUE abap_bool( ).
            DATA(t68) = CAST zcl_lnt_itable_key( t62 ).
            IF t68 IS INITIAL.
              t67 = abap_true.
            ENDIF.
            IF t67 = abap_true.
              DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t69.
              t66 = t69.
            ELSE.
              DATA t70 TYPE string.
              DATA t71 TYPE REF TO zcl_lnt_itable_key.
              DATA(t72) = CAST zcl_lnt_itable_key( t62 ).
              t71 = t72.
              t70 = t71->type_cba0.
              DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t73->has = abap_true.
              t73->value = t70.
              t66 = t73.
            ENDIF.
            t61 = t66.
            t57 = t61.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            DATA(t75) = abap_true.
            IF t75 = abap_true.
              DATA(t76) = |HASHED|.
              DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t77->has = abap_true.
              t77->value = t76.
              t74 = t77.
            ELSE.
              DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t78.
              t74 = t78.
            ENDIF.
            DATA(t79) = VALUE abap_bool( ).
            DATA(t80) = VALUE abap_bool( ).
            IF t57 IS BOUND.
              t79 = t57->has.
            ENDIF.
            IF t74 IS BOUND.
              t80 = t74->has.
            ENDIF.
            IF t79 = t80.
              IF t79 = abap_false.
                t56 = abap_true.
              ELSEIF t57->value = t74->value.
                t56 = abap_true.
              ENDIF.
            ENDIF.
            t41 = t56.
          ENDIF.
          IF t41 = abap_true.
            DATA t81 TYPE string.
            DATA(t82) = |Implicit or explicit index operation on hashed table is not |.
            t82 = t82 && |possible|.
            t81 = t82.
            DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t84) = CAST zcl_lnt_syntax_input( t2 ).
            t83 = t84->issues.
            DATA t85 TYPE REF TO zcl_lnt_issue.
            DATA(t86) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t87 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t88) = CAST zcl_lnt_statement_node( t1 ).
            t87 = t88->get_first_token( ).
            DATA(t89) = t81.
            DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t90.
            t85 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t86 i_token = t87 i_message_26cb = t89 i_fix = t90 ).
            APPEND t85 TO t83->items.
            RETURN.
          ENDIF.
          DATA(t91) = VALUE abap_bool( ).
          DATA t92 TYPE abap_bool.
          DATA t93 TYPE abap_bool.
          DATA t94 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t95) = CAST zcl_lnt_statement_node( t1 ).
          DATA(t96) = |TABLE|.
          t94 = t95->find_direct_token_by_text( i_text = t96 ).
          t93 = xsdbool( t94 IS BOUND ).
          t92 = t93.
          IF t93 = abap_true.
            DATA t97 TYPE abap_bool.
            DATA t98 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t99) = CAST zcl_lnt_statement_node( t1 ).
            DATA(t100) = |INDEX|.
            t98 = t99->find_direct_token_by_text( i_text = t100 ).
            t97 = xsdbool( t98 IS BOUND ).
            t92 = t97.
          ENDIF.
          t91 = t92.
          IF t92 = abap_true.
            DATA t101 TYPE abap_bool.
            DATA t102 TYPE abap_bool.
            DATA t103 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t104 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t105) = CAST zcl_lnt_abstract_type( t26 ).
            t104 ?= t105.
            t103 = t104.
            DATA t106 TYPE abap_bool.
            DATA t107 TYPE REF TO zcl_lnt_itable_options.
            DATA(t108) = CAST zcl_lnt_ty_table_type( t103 ).
            t107 = t108->options.
            t106 = t107->with_header.
            t102 = t106.
            DATA(t109) = abap_false.
            t101 = xsdbool( t102 = t109 ).
            t91 = t101.
          ENDIF.
          IF t91 = abap_true.
            DATA t110 TYPE string.
            DATA(t111) = |Table does not have header line|.
            t110 = t111.
            DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t113) = CAST zcl_lnt_syntax_input( t2 ).
            t112 = t113->issues.
            DATA t114 TYPE REF TO zcl_lnt_issue.
            DATA(t115) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t116 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t117) = CAST zcl_lnt_statement_node( t1 ).
            t116 = t117->get_first_token( ).
            DATA(t118) = t110.
            DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t119.
            t114 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t115 i_token = t116 i_message_26cb = t118 i_fix = t119 ).
            APPEND t114 TO t112->items.
            RETURN.
          ENDIF.
        ELSE.
          DATA t120 TYPE abap_bool.
          DATA(t121) = CAST zcl_lnt_abstract_type( t26 ).
          t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t120 = abap_true.
            DATA(t122) = VALUE abap_bool( ).
            DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t123.
            DATA(t124) = abap_true.
            IF t124 = abap_true.
              DATA t125 TYPE string.
              DATA t126 TYPE string.
              DATA t127 TYPE REF TO zcl_lnt_expression_node.
              DATA(t128) = CAST zcl_lnt_expression_node( t18 ).
              t127 = t128.
              t126 = t127->concat_tokens( ).
              DATA(t129) = strlen( t126 ).
              t125 = t126.
              IF t125 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t125 TO UPPER CASE.
              ELSE.
                t125 = zlnt_runtime_uppe_91169605024d=>full( t125 ).
              ENDIF.
              DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t130->has = abap_true.
              t130->value = t125.
              t123 = t130.
            ELSE.
              DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t131.
              t123 = t131.
            ENDIF.
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t133 TYPE REF TO zcl_lnt_structure_type.
            DATA(t134) = CAST zcl_lnt_abstract_type( t26 ).
            t133 ?= t134.
            t132 = t133->get_ddic_name( ).
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = VALUE abap_bool( ).
            IF t123 IS BOUND.
              t135 = t123->has.
            ENDIF.
            IF t132 IS BOUND.
              t136 = t132->has.
            ENDIF.
            IF t135 = t136.
              IF t135 = abap_false.
                t122 = abap_true.
              ELSEIF t123->value = t132->value.
                t122 = abap_true.
              ENDIF.
            ENDIF.
            IF t122 = abap_true.
              t122 = abap_false.
            ELSE.
              t122 = abap_true.
            ENDIF.
            IF t122 = abap_true.
              DATA t137 TYPE string.
              DATA(t138) = |Not an internal table|.
              t137 = t138.
              DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t140) = CAST zcl_lnt_syntax_input( t2 ).
              t139 = t140->issues.
              DATA t141 TYPE REF TO zcl_lnt_issue.
              DATA(t142) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t143 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t144) = CAST zcl_lnt_statement_node( t1 ).
              t143 = t144->get_first_token( ).
              DATA(t145) = t137.
              DATA t146 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t146.
              t141 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t142 i_token = t143 i_message_26cb = t145 i_fix = t146 ).
              APPEND t141 TO t139->items.
              RETURN.
            ENDIF.
          ELSE.
            DATA t147 TYPE string.
            DATA(t148) = |Not an internal table|.
            t147 = t148.
            DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t150) = CAST zcl_lnt_syntax_input( t2 ).
            t149 = t150->issues.
            DATA t151 TYPE REF TO zcl_lnt_issue.
            DATA(t152) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t153 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t154) = CAST zcl_lnt_statement_node( t1 ).
            t153 = t154->get_first_token( ).
            DATA(t155) = t147.
            DATA t156 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t156.
            t151 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t152 i_token = t153 i_message_26cb = t155 i_fix = t156 ).
            APPEND t151 TO t149->items.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t157 TYPE REF TO zcl_lnt_expression_node.
    DATA t158 TYPE REF TO zcl_lnt_expression_node.
    DATA(t159) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t160) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c ).
    t158 = t159->find_direct_expression( i_type_9913 = t160 ).
    t157 = t158.
    DATA t161 TYPE abap_bool.
    DATA(t162) = CAST zcl_lnt_expression_node( t157 ).
    t161 = xsdbool( t162 IS BOUND ).
    IF t161 = abap_true.
      DATA t163 TYPE REF TO zcl_lnt_expression_node.
      DATA(t164) = CAST zcl_lnt_expression_node( t157 ).
      t163 = t164.
      DATA(t165) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t166 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t166.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t163 i_input_967e = t165 i_type_9913 = t166 ).
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t168) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t169) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56 ).
    t167 = t168->find_direct_expressions( i_type_9913 = t169 ).
    DATA t170 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t170.
    DATA t171 TYPE REF TO object.
    CLEAR t171.
    LOOP AT t167->items INTO t171.
      t170 ?= t171.
      DATA(t172) = CAST zcl_lnt_expression_node( t170 ).
      DATA(t173) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t174 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t174.
      DATA t175 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t175.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t172 i_input_967e = t173 i_left_type = t174 i_right_type = t175 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d910_f9f0e585c9d6.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
