* TS: src/abap/5_syntax/statements/move.ts:14:1 Move
CLASS zcl_lnt_sy_move DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_move IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t4 = t5->find_direct_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = t3.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    t9->load( ).
    CLEAR t10.
    READ TABLE t9->items INDEX 1 INTO t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    CLEAR t8.
    IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t11 ?= t10.
      DATA t12 TYPE REF TO object.
      CLEAR t12.
      t12 = t11->as_ref( ).
      t8 ?= t12.
    ELSE.
      t8 ?= t10.
    ENDIF.
    t7 = t8.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t15.
    DATA(t16) = t7.
    t15 = t16.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t15.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t21.
      DATA(t22) = t15.
      DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t21 = t22->find_direct_expression( i_type_9913 = t23 ).
      t17 = t21.
    ENDIF.
    t14 = t17.
    t13 = t14.
    DATA t24 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t27.
    DATA(t28) = t13.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t7.
      t34 = xsdbool( t35 IS BOUND ).
      IF t34 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t36.
        DATA(t37) = t7.
        DATA(t38) = t2.
        t36 = zcl_lnt_sy_target=>run_syntax( i_node = t37 i_input_967e = t38 ).
        t33 = t36.
      ELSE.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t39.
        t33 = t39.
      ENDIF.
      t24 = t33.
      DATA(t40) = t3.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t41.
      DATA t42 TYPE REF TO object.
      CLEAR t42.
      DATA(t43) = VALUE i( ).
      DO.
        t40->load( ).
        IF t43 >= lines( t40->items ).
          EXIT.
        ENDIF.
        CLEAR t42.
        READ TABLE t40->items INDEX t43 + 1 INTO t42.
        t43 = t43 + 1.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        CLEAR t41.
        IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t44 ?= t42.
          DATA t45 TYPE REF TO object.
          CLEAR t45.
          t45 = t44->as_ref( ).
          t41 ?= t45.
        ELSE.
          t41 ?= t42.
        ENDIF.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t41.
        DATA(t48) = t7.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        CLEAR t49.
        IF t47 IS BOUND.
          DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t51.
          DATA t52 TYPE REF TO object.
          CLEAR t52.
          CLEAR t51.
          t52 = t47.
          TRY.
              t49 ?= t52.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t49 IS NOT BOUND.
            TRY.
                t51 ?= t47.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t51 IS BOUND.
              t49 = t51->source( ).
            ENDIF.
            IF t49 IS NOT BOUND.
              CREATE OBJECT t49.
              t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t49->oval = t47.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t50.
        IF t48 IS BOUND.
          DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t53.
          DATA t54 TYPE REF TO object.
          CLEAR t54.
          CLEAR t53.
          t54 = t48.
          TRY.
              t50 ?= t54.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50 IS NOT BOUND.
            TRY.
                t53 ?= t48.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t53 IS BOUND.
              t50 = t53->source( ).
            ENDIF.
            IF t50 IS NOT BOUND.
              CREATE OBJECT t50.
              t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t50->oval = t48.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t49 IS BOUND.
          t46 = t49->strict_equals( t50 ).
        ELSE.
          t46 = xsdbool( t50 IS NOT BOUND ).
        ENDIF.
        IF t46 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t55 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t55.
        DATA(t56) = t41.
        DATA(t57) = t2.
        t55 = zcl_lnt_sy_target=>run_syntax( i_node = t56 i_input_967e = t57 ).
      ENDDO.
    ENDIF.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = VALUE abap_bool( ).
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t60.
    DATA(t61) = t13.
    t60 = t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    t62 = t63.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = t60.
    IF t65 IS INITIAL.
      t64 = abap_true.
    ENDIF.
    t59 = t64.
    t58 = t59.
    IF t59 = abap_true.
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t67.
      DATA(t68) = t7.
      t67 = t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t69 = t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t67.
      IF t73 IS INITIAL.
        t72 = abap_true.
      ENDIF.
      t71 = xsdbool( t72 = abap_false ).
      t66 = t71.
      t58 = t66.
    ENDIF.
    IF t58 = abap_true.
      DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t77.
      DATA(t78) = t2.
      t77 = t78->scope.
      t76 = t77.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = abap_true.
      IF t81 = abap_true.
        DATA(t82) = VALUE string( ).
        DATA(t83) = t7.
        t82 = t83->concat_tokens( ).
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = t82.
        t80 = t84.
      ELSE.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        t80 = t85.
      ENDIF.
      t79 = t80.
      DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA(t89) = t79.
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t88.
      IF t93 IS INITIAL.
        t92 = abap_true.
      ELSEIF t93->has = abap_false.
        t92 = abap_true.
      ENDIF.
      t87 = t92.
      IF t87 = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t94.
        t86 = t94.
      ELSE.
        DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t96.
        DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t99.
        DATA(t100) = t76.
        t99 = t100->current.
        t98 = t99.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t101.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = t98.
        IF t103 IS INITIAL.
          t102 = abap_true.
        ENDIF.
        IF t102 = abap_true.
          DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t104.
          t101 = t104.
        ELSE.
          DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t105.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t106.
          DATA(t107) = t98.
          t106 = t107.
          DATA(t108) = VALUE string( ).
          DATA(t109) = t79.
          t108 = t109->value.
          t105 = t106->find_variable( i_name = t108 ).
          t101 = t105.
        ENDIF.
        t97 = t101.
        t96 = t97.
        DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t110.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = t96.
        t111 = xsdbool( t112 IS BOUND ).
        IF t111 = abap_true.
          DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t115.
            DATA(t116) = t96.
            t115 = t116.
            t113 = t115.
          ELSE.
            DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t117.
            t113 = t117.
          ENDIF.
          t110 = t113.
        ELSE.
          DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t118.
          DATA(t119) = t76.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t120.
          DATA(t121) = abap_true.
          IF t121 = abap_true.
            DATA(t122) = VALUE string( ).
            DATA(t123) = t79.
            t122 = t123->value.
            DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t124->has = abap_true.
            t124->value = t122.
            t120 = t124.
          ELSE.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            t120 = t125.
          ENDIF.
          t118 = t119->find_type_pool_constant( i_name = t120 ).
          t110 = t118.
        ENDIF.
        t95 = t110.
        t86 = t95.
      ENDIF.
      t75 = t86.
      t74 = t75.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = VALUE abap_bool( ).
      DATA(t128) = t74.
      t127 = xsdbool( t128 IS BOUND ).
      t126 = t127.
      IF t127 = abap_true.
        DATA(t129) = VALUE abap_bool( ).
        DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t130.
        DATA t131 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t131.
        DATA t132 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t132.
        DATA(t133) = t74.
        t132 = t133.
        t131 = t132.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t134.
        DATA(t135) = t131.
        t134 = t135->meta.
        t130 = t134.
        DATA(t136) = |read_only|.
        t129 = t130->includes( p0 = t136 ).
        t126 = t129.
      ENDIF.
      IF t126 = abap_true.
        DATA(t137) = VALUE string( ).
        DATA(t138) = VALUE string( ).
        DATA(t139) = VALUE string( ).
        DATA(t140) = |"|.
        DATA(t141) = VALUE string( ).
        DATA(t142) = t7.
        t141 = t142->concat_tokens( ).
        DATA(t143) = strlen( t140 ).
        t139 = |{ t140 }{ t141 }|.
        DATA(t144) = |" cannot be modified, it is readonly|.
        DATA(t145) = strlen( t139 ).
        t138 = |{ t139 }{ t144 }|.
        t137 = t138.
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t146.
        DATA(t147) = t2.
        t146 = t147->issues.
        DATA t148 TYPE REF TO zcl_lnt_issue.
        CLEAR t148.
        DATA(t149) = t2.
        DATA t150 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t150.
        DATA(t151) = t7.
        t150 = t151->get_first_token( ).
        DATA(t152) = t137.
        DATA t153 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t153.
        t148 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t149 i_token = t150 i_message_26cb = t152 i_fix = t153 ).
        t146->load( ).
        APPEND t148 TO t146->items.
        t146->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t154 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t154.
    DATA t155 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t155.
    DATA(t156) = t1.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t155 = t156->find_direct_expression( i_type_9913 = t157 ).
    t154 = t155.
    DATA t158 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t158.
    DATA t159 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t159.
    DATA(t160) = VALUE abap_bool( ).
    DATA(t161) = t154.
    t160 = xsdbool( t161 IS BOUND ).
    IF t160 = abap_true.
      DATA t162 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t163.
      DATA(t164) = abap_true.
      IF t164 = abap_true.
        DATA t165 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t165.
        DATA(t166) = t154.
        t165 = t166.
        t163 = t165.
      ELSE.
        DATA t167 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t167.
        t163 = t167.
      ENDIF.
      DATA(t168) = t2.
      DATA(t169) = t24.
      DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t170.
      DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t171.
      DATA t172 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t172.
      t162 = zcl_lnt_sy_source=>run_syntax( i_node = t163 i_input_967e = t168 i_target_type = t169 i_write_reference = t170 i_allow_generic_deference = t171 i_read_reference = t172 ).
      t159 = t162.
    ELSE.
      DATA t173 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t173.
      t159 = t173.
    ENDIF.
    t158 = t159.
    DATA(t174) = VALUE abap_bool( ).
    DATA t175 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t175.
    DATA(t176) = t158.
    t175 = t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    t177 = t178.
    DATA(t179) = VALUE abap_bool( ).
    DATA(t180) = t175.
    IF t180 IS INITIAL.
      t179 = abap_true.
    ENDIF.
    t174 = t179.
    IF t174 = abap_true.
      DATA(t181) = VALUE string( ).
      DATA(t182) = |No source type determined|.
      t181 = t182.
      DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t183.
      DATA(t184) = t2.
      t183 = t184->issues.
      DATA t185 TYPE REF TO zcl_lnt_issue.
      CLEAR t185.
      DATA(t186) = t2.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t187.
      DATA(t188) = t1.
      t187 = t188->get_first_token( ).
      DATA(t189) = t181.
      DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t190.
      t185 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t186 i_token = t187 i_message_26cb = t189 i_fix = t190 ).
      t183->load( ).
      APPEND t185 TO t183->items.
      t183->save( ).
      RETURN.
    ENDIF.
    DATA(t191) = VALUE abap_bool( ).
    DATA t192 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t192.
    DATA(t193) = t1.
    DATA(t194) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
    t192 = t193->find_direct_expression( i_type_9913 = t194 ).
    t191 = xsdbool( t192 IS BOUND ).
    IF t191 = abap_true.
      DATA t195 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t195.
      DATA(t196) = t1.
      DATA t197 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t197.
      DATA(t198) = abap_true.
      IF t198 = abap_true.
        DATA t199 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t199.
        DATA(t200) = t158.
        t199 = t200.
        t197 = t199.
      ELSE.
        DATA t201 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t201.
        t197 = t201.
      ENDIF.
      DATA(t202) = t2.
      t195 = zcl_lnt_sy_dereference=>run_syntax( i_node = t196 i_type_9913 = t197 i_input_967e = t202 ).
      t158 = t195.
    ENDIF.
    DATA(t203) = VALUE abap_bool( ).
    DATA(t204) = t13.
    t203 = xsdbool( t204 IS BOUND ).
    IF t203 = abap_true.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = VALUE abap_bool( ).
      DATA(t207) = t158.
      t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_packed_type ).
      t205 = t206.
      IF t206 = abap_true.
        DATA(t208) = VALUE abap_bool( ).
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t209.
        DATA t210 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t210.
        DATA(t211) = t154.
        t210 = t211.
        DATA t212 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t212.
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = t210.
        IF t214 IS INITIAL.
          t213 = abap_true.
        ENDIF.
        IF t213 = abap_true.
          DATA t215 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t215.
          t212 = t215.
        ELSE.
          DATA t216 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t216.
          DATA t217 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t217.
          DATA(t218) = t210.
          t217 = t218.
          DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
          t216 = t217->find_direct_expression( i_type_9913 = t219 ).
          t212 = t216.
        ENDIF.
        t209 = t212.
        t208 = xsdbool( t209 IS BOUND ).
        t205 = t208.
      ENDIF.
      IF t205 = abap_true.
        DATA t220 TYPE REF TO zcl_lnt_packed_type.
        CLEAR t220.
        DATA(t221) = CONV f( 8 ).
        DATA(t222) = CONV f( 0 ).
        DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t223.
        t220 = NEW zcl_lnt_packed_type( i_length = t221 i_decimals_2eed = t222 i_extra = t223 ).
        t158 = t220.
      ENDIF.
      DATA t224 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t224.
      DATA(t225) = t13.
      t224 = t225.
      DATA(t226) = t2.
      DATA(t227) = t158.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t224 i_input_967e = t226 i_type_9913 = t227 ).
      DATA(t228) = t158.
      t24 = t228.
    ENDIF.
    DATA(t229) = VALUE abap_bool( ).
    DATA t230 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t230.
    DATA(t231) = t1.
    DATA(t232) = |?=|.
    t230 = t231->find_direct_token_by_text( i_text = t232 ).
    t229 = xsdbool( t230 IS BOUND ).
    IF t229 = abap_true.
      DATA(t233) = VALUE abap_bool( ).
      DATA(t234) = VALUE abap_bool( ).
      DATA t235 TYPE REF TO zcl_lnt_type_utils.
      CLEAR t235.
      DATA t236 TYPE REF TO zcl_lnt_type_utils.
      CLEAR t236.
      DATA t237 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t237.
      DATA(t238) = t2.
      t237 = t238->scope.
      t236 = NEW zcl_lnt_type_utils( i_scope = t237 ).
      t235 = t236.
      DATA t239 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t239.
      DATA(t240) = t158.
      t239 = t240.
      DATA t241 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t241.
      DATA(t242) = t24.
      t241 = t242.
      DATA(t243) = abap_true.
      t234 = t243.
      DATA(t244) = abap_false.
      t233 = xsdbool( t234 = t244 ).
      IF t233 = abap_true.
        DATA(t245) = VALUE string( ).
        DATA(t246) = |Incompatible types|.
        t245 = t246.
        DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t247.
        DATA(t248) = t2.
        t247 = t248->issues.
        DATA t249 TYPE REF TO zcl_lnt_issue.
        CLEAR t249.
        DATA(t250) = t2.
        DATA t251 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t251.
        DATA(t252) = t1.
        t251 = t252->get_first_token( ).
        DATA(t253) = t245.
        DATA t254 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t254.
        t249 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t250 i_token = t251 i_message_26cb = t253 i_fix = t254 ).
        t247->load( ).
        APPEND t249 TO t247->items.
        t247->save( ).
        RETURN.
      ENDIF.
    ELSE.
      DATA(t255) = VALUE abap_bool( ).
      DATA(t256) = VALUE abap_bool( ).
      DATA t257 TYPE REF TO zcl_lnt_type_utils.
      CLEAR t257.
      DATA t258 TYPE REF TO zcl_lnt_type_utils.
      CLEAR t258.
      DATA t259 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t259.
      DATA(t260) = t2.
      t259 = t260->scope.
      t258 = NEW zcl_lnt_type_utils( i_scope = t259 ).
      t257 = t258.
      DATA t261 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t261.
      DATA(t262) = t158.
      t261 = t262.
      DATA t263 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t263.
      DATA(t264) = t24.
      t263 = t264.
      DATA t265 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t265.
      DATA(t266) = t154.
      t265 = t266.
      DATA(t267) = VALUE abap_bool( ).
      DATA(t268) = VALUE abap_bool( ).
      DATA(t269) = VALUE abap_bool( ).
      DATA t270 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t270.
      DATA t271 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t271.
      DATA t272 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t272.
      DATA(t273) = t265.
      t272 = t273.
      DATA t274 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t274.
      DATA(t275) = VALUE abap_bool( ).
      DATA(t276) = t272.
      IF t276 IS INITIAL.
        t275 = abap_true.
      ENDIF.
      IF t275 = abap_true.
        DATA t277 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t277.
        t274 = t277.
      ELSE.
        DATA t278 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t278.
        DATA t279 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t279.
        DATA(t280) = t272.
        t279 = t280.
        DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
        t278 = t279->find_first_expression( i_type_9913 = t281 ).
        t274 = t278.
      ENDIF.
      t271 = t274.
      t270 = t271.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t282.
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t283.
      t282 = t283.
      DATA(t284) = VALUE abap_bool( ).
      DATA(t285) = VALUE abap_bool( ).
      DATA(t286) = t270.
      IF t286 IS INITIAL.
        t285 = abap_true.
      ENDIF.
      t284 = xsdbool( t285 = abap_false ).
      t269 = t284.
      t268 = t269.
      DATA(t287) = VALUE abap_bool( ).
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = t268.
      t289 = t290.
      IF t290 = abap_true.
        DATA(t291) = VALUE abap_bool( ).
        DATA(t292) = t261.
        t291 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_hex_type ).
        t289 = t291.
      ENDIF.
      t288 = t289.
      IF t289 = abap_true.
        DATA(t293) = VALUE abap_bool( ).
        DATA(t294) = t263.
        t293 = xsdbool( t294 IS BOUND AND t294 IS INSTANCE OF zcl_lnt_integer_type ).
        t288 = t293.
      ENDIF.
      IF t288 = abap_true.
        DATA(t295) = abap_false.
        t287 = t295.
      ELSE.
        DATA(t296) = VALUE abap_bool( ).
        DATA(t297) = t257.
        DATA(t298) = t261.
        DATA(t299) = t263.
        t296 = t297->is_assignable( i_source_75cf = t298 i_target_5f8a = t299 ).
        t287 = t296.
      ENDIF.
      t267 = t287.
      t256 = t267.
      DATA(t300) = abap_false.
      t255 = xsdbool( t256 = t300 ).
      IF t255 = abap_true.
        DATA(t301) = VALUE string( ).
        DATA(t302) = |Incompatible types|.
        t301 = t302.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t303.
        DATA(t304) = t2.
        t303 = t304->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        CLEAR t305.
        DATA(t306) = t2.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t307.
        DATA(t308) = t1.
        t307 = t308->get_first_token( ).
        DATA(t309) = t301.
        DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t310.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t306 i_token = t307 i_message_26cb = t309 i_fix = t310 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
        RETURN.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d934_98952bc1b50e.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
