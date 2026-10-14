* TS: src/abap/5_syntax/expressions/function_parameters.ts:10:1 FunctionParameters
CLASS zcl_lnt_sy_function_parameters DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_function_parameters IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d186_713e1678710c ).
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_expression_node.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA(t10) = CAST zcl_lnt_expression_node( t6 ).
      DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t9 = t10->find_direct_expression( i_type_9913 = t11 ).
      t8 = t9.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zcl_lnt_expression_node( t8 ).
      t12 = xsdbool( t13 IS BOUND ).
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t14.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        DATA(t16) = abap_true.
        IF t16 = abap_true.
          DATA t17 TYPE REF TO zcl_lnt_expression_node.
          DATA(t18) = CAST zcl_lnt_expression_node( t8 ).
          t17 = t18.
          t15 = t17.
        ELSE.
          DATA t19 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t19.
          t15 = t19.
        ENDIF.
        DATA(t20) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t22.
        DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t23.
        DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t24.
        t14 = zcl_lnt_sy_source=>run_syntax( i_node = t15 i_input_967e = t20 i_target_type = t21 i_write_reference = t22 i_allow_generic_deference = t23 i_read_reference = t24 ).
      ENDIF.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = CAST zcl_lnt_expression_node( t6 ).
      DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
      t26 = t27->find_direct_expression( i_type_9913 = t28 ).
      t25 = t26.
      DATA t29 TYPE abap_bool.
      DATA(t30) = CAST zcl_lnt_expression_node( t25 ).
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE REF TO zcl_lnt_expression_node.
          DATA(t35) = CAST zcl_lnt_expression_node( t25 ).
          t34 = t35.
          t32 = t34.
        ELSE.
          DATA t36 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t36.
          t32 = t36.
        ENDIF.
        DATA(t37) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t38 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t41.
        t31 = zcl_lnt_sy_source=>run_syntax( i_node = t32 i_input_967e = t37 i_target_type = t38 i_write_reference = t39 i_allow_generic_deference = t40 i_read_reference = t41 ).
      ENDIF.
    ENDLOOP.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    DATA(t44) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t45) = |CHANGING|.
    t43 = t44->find_expression_after_token( i_text = t45 ).
    t42 = t43.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t47) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t48) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d190_8da19a9c3edb ).
    t46 = t47->find_direct_expressions( i_type_9913 = t48 ).
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t49.
    DATA t50 TYPE REF TO object.
    CLEAR t50.
    LOOP AT t46->items INTO t50.
      t49 ?= t50.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = CAST zcl_lnt_expression_node( t49 ).
      DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81 ).
      t51 = t52->find_direct_expressions( i_type_9913 = t53 ).
      DATA t54 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t54.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      LOOP AT t51->items INTO t55.
        t54 ?= t55.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        DATA t57 TYPE REF TO zcl_lnt_expression_node.
        DATA(t58) = CAST zcl_lnt_expression_node( t54 ).
        DATA(t59) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
        t57 = t58->find_direct_expression( i_type_9913 = t59 ).
        t56 = t57.
        DATA t60 TYPE abap_bool.
        DATA(t61) = CAST zcl_lnt_expression_node( t56 ).
        t60 = xsdbool( t61 IS BOUND ).
        IF t60 = abap_true.
          DATA t62 TYPE REF TO zcl_lnt_abstract_type.
          DATA t63 TYPE REF TO zcl_lnt_expression_node.
          DATA(t64) = CAST zcl_lnt_expression_node( t56 ).
          t63 = t64.
          DATA(t65) = CAST zcl_lnt_syntax_input( t2 ).
          t62 = zcl_lnt_sy_target=>run_syntax( i_node = t63 i_input_967e = t65 ).
        ENDIF.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA t68 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA(t70) = CAST zcl_lnt_expression_node( t49 ).
          t68 = t70.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t71.
          t68 = t71.
        ENDIF.
        DATA(t72) = CAST zcl_lnt_expression_node( t42 ).
        t67 = xsdbool( t68 = t72 ).
        t66 = t67.
        IF t67 = abap_true.
          DATA(t73) = VALUE abap_bool( ).
          DATA t74 TYPE REF TO zcl_lnt_expression_node.
          DATA(t75) = CAST zcl_lnt_expression_node( t56 ).
          t74 = t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          t76 = t77.
          DATA(t78) = VALUE abap_bool( ).
          DATA(t79) = VALUE abap_bool( ).
          DATA(t80) = CAST zcl_lnt_expression_node( t74 ).
          IF t80 IS INITIAL.
            t79 = abap_true.
          ENDIF.
          t78 = xsdbool( t79 = abap_false ).
          t73 = t78.
          t66 = t73.
        ENDIF.
        IF t66 = abap_true.
          DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t82.
          DATA t83 TYPE REF TO zcl_lnt_current_scope.
          DATA t84 TYPE REF TO zcl_lnt_current_scope.
          DATA(t85) = CAST zcl_lnt_syntax_input( t2 ).
          t84 = t85->scope.
          t83 = t84.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t86.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA(t88) = abap_true.
          IF t88 = abap_true.
            DATA t89 TYPE string.
            DATA t90 TYPE REF TO zcl_lnt_expression_node.
            DATA(t91) = CAST zcl_lnt_expression_node( t56 ).
            t90 = t91.
            t89 = t90->concat_tokens( ).
            DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t92->has = abap_true.
            t92->value = t89.
            t87 = t92.
          ELSE.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            t87 = t93.
          ENDIF.
          t86 = t87.
          DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t94.
          DATA(t95) = VALUE abap_bool( ).
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t97) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
          t96 = t97.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          t98 = t99.
          DATA(t100) = VALUE abap_bool( ).
          DATA(t101) = CAST zlnt_runtime_opti_4ba3bdccd169( t96 ).
          IF t101 IS INITIAL.
            t100 = abap_true.
          ELSEIF t101->has = abap_false.
            t100 = abap_true.
          ENDIF.
          t95 = t100.
          IF t95 = abap_true.
            DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t102.
            t94 = t102.
          ELSE.
            DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t103.
            DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t104.
            DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t105.
            DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t108) = CAST zcl_lnt_current_scope( t83 ).
            t107 = t108->current.
            t106 = t107.
            DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t109.
            DATA(t110) = VALUE abap_bool( ).
            DATA(t111) = CAST zcl_lnt_spaghetti_scope_node( t106 ).
            IF t111 IS INITIAL.
              t110 = abap_true.
            ENDIF.
            IF t110 = abap_true.
              DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t112.
              t109 = t112.
            ELSE.
              DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t115) = CAST zcl_lnt_spaghetti_scope_node( t106 ).
              t114 = t115.
              DATA t116 TYPE string.
              DATA(t117) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
              t116 = t117->value.
              t113 = t114->find_variable( i_name = t116 ).
              t109 = t113.
            ENDIF.
            t105 = t109.
            t104 = t105.
            DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t118.
            DATA t119 TYPE abap_bool.
            DATA(t120) = CAST zcl_lnt_typed_identifier( t104 ).
            t119 = xsdbool( t120 IS BOUND ).
            IF t119 = abap_true.
              DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t121.
              DATA(t122) = abap_true.
              IF t122 = abap_true.
                DATA t123 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t124) = CAST zcl_lnt_typed_identifier( t104 ).
                t123 = t124.
                t121 = t123.
              ELSE.
                DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t125.
                t121 = t125.
              ENDIF.
              t118 = t121.
            ELSE.
              DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t126.
              DATA(t127) = CAST zcl_lnt_current_scope( t83 ).
              DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t128.
              DATA(t129) = abap_true.
              IF t129 = abap_true.
                DATA t130 TYPE string.
                DATA(t131) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
                t130 = t131->value.
                DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t132->has = abap_true.
                t132->value = t130.
                t128 = t132.
              ELSE.
                DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t133.
                t128 = t133.
              ENDIF.
              t126 = t127->find_type_pool_constant( i_name = t128 ).
              t118 = t126.
            ENDIF.
            t103 = t118.
            t94 = t103.
          ENDIF.
          t82 = t94.
          t81 = t82.
          DATA t134 TYPE abap_bool.
          DATA t135 TYPE abap_bool.
          DATA(t136) = CAST zcl_lnt_typed_identifier( t81 ).
          t135 = xsdbool( t136 IS BOUND ).
          t134 = t135.
          IF t135 = abap_true.
            DATA t137 TYPE abap_bool.
            DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t140 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t141) = CAST zcl_lnt_typed_identifier( t81 ).
            t140 = t141.
            t139 = t140.
            DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t143) = CAST zcl_lnt_typed_identifier( t139 ).
            t142 = t143->meta.
            t138 = t142.
            DATA(t144) = |read_only|.
            t137 = t138->includes( p0 = t144 ).
            t134 = t137.
          ENDIF.
          IF t134 = abap_true.
            DATA t145 TYPE string.
            DATA t146 TYPE string.
            DATA t147 TYPE string.
            DATA(t148) = |"|.
            DATA t149 TYPE string.
            DATA t150 TYPE REF TO zcl_lnt_expression_node.
            DATA(t151) = CAST zcl_lnt_expression_node( t56 ).
            t150 = t151.
            t149 = t150->concat_tokens( ).
            DATA(t152) = strlen( t148 ).
            t147 = |{ t148 }{ t149 }|.
            DATA(t153) = |" cannot be modified, it is readonly|.
            DATA(t154) = strlen( t147 ).
            t146 = |{ t147 }{ t153 }|.
            t145 = t146.
            DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t156) = CAST zcl_lnt_syntax_input( t2 ).
            t155 = t156->issues.
            DATA t157 TYPE REF TO zcl_lnt_issue.
            DATA(t158) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t159 TYPE REF TO zcl_lnt_abstract_token.
            DATA t160 TYPE REF TO zcl_lnt_expression_node.
            DATA(t161) = CAST zcl_lnt_expression_node( t56 ).
            t160 = t161.
            t159 = t160->get_first_token( ).
            DATA(t162) = t145.
            DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t163.
            t157 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t158 i_token = t159 i_message_26cb = t162 i_fix = t163 ).
            APPEND t157 TO t155->items.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t165) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t166) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca ).
    t164 = t165->find_all_expressions( i_type_9913 = t166 ).
    DATA t167 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t167.
    DATA t168 TYPE REF TO object.
    CLEAR t168.
    LOOP AT t164->items INTO t168.
      t167 ?= t168.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t170) = CAST zcl_lnt_expression_node( t167 ).
      DATA(t171) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4 ).
      t169 = t170->find_direct_expressions( i_type_9913 = t171 ).
      DATA t172 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t172.
      DATA t173 TYPE REF TO object.
      CLEAR t173.
      LOOP AT t169->items INTO t173.
        t172 ?= t173.
        DATA t174 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t174.
        DATA(t175) = CAST zcl_lnt_expression_node( t172 ).
        DATA(t176) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        DATA(t178) = abap_true.
        IF t178 = abap_true.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t180) = |Read From|.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t179->sval = t180.
          t177 = t179.
        ELSE.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          t177 = t181.
        ENDIF.
        DATA t182 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t182.
        t174 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t175 i_input_967e = t176 i_ref_type = t177 i_allow_generic_deference = t182 ).
      ENDLOOP.
      DATA t183 TYPE REF TO zcl_lnt_expression_node.
      DATA t184 TYPE REF TO zcl_lnt_expression_node.
      DATA(t185) = CAST zcl_lnt_expression_node( t167 ).
      DATA(t186) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
      t184 = t185->find_direct_expression( i_type_9913 = t186 ).
      t183 = t184.
      DATA t187 TYPE abap_bool.
      DATA(t188) = CAST zcl_lnt_expression_node( t183 ).
      t187 = xsdbool( t188 IS BOUND ).
      IF t187 = abap_true.
        DATA t189 TYPE REF TO zcl_lnt_abstract_type.
        DATA t190 TYPE REF TO zcl_lnt_expression_node.
        DATA(t191) = CAST zcl_lnt_expression_node( t183 ).
        t190 = t191.
        DATA(t192) = CAST zcl_lnt_syntax_input( t2 ).
        t189 = zcl_lnt_sy_target=>run_syntax( i_node = t190 i_input_967e = t192 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d788_a999225d2a41.
  ENDMETHOD.
ENDCLASS.
