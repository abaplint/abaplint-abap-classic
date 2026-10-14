* TS: src/abap/5_syntax/expressions/compare.ts:11:1 Compare
CLASS zcl_lnt_sy_compare DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_compare IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8d6bb411953d.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8d6bb411953d.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t6 = t7->find_direct_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t9->items INTO t11.
      t10 ?= t11.
      DATA(t12) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = CAST zcl_lnt_expression_node( t10 ).
        t14 = t16.
      ELSE.
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t17.
        t14 = t17.
      ENDIF.
      DATA(t18) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t22.
      t13 = zcl_lnt_sy_source=>run_syntax( i_node = t14 i_input_967e = t18 i_target_type = t19 i_write_reference = t20 i_allow_generic_deference = t21 i_read_reference = t22 ).
      APPEND t13 TO t12->items.
    ENDLOOP.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e ).
    t23 = t24->find_direct_expressions( i_type_9913 = t25 ).
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    LOOP AT t23->items INTO t27.
      t26 ?= t27.
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t29) = CAST zcl_lnt_expression_node( t26 ).
      DATA(t30) = CAST zcl_lnt_syntax_input( t2 ).
      t28 = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t29 i_input_967e = t30 ).
    ENDLOOP.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t32) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3 ).
    t31 = t32->find_direct_expressions( i_type_9913 = t33 ).
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t34.
    DATA t35 TYPE REF TO object.
    CLEAR t35.
    LOOP AT t31->items INTO t35.
      t34 ?= t35.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t37) = CAST zcl_lnt_expression_node( t34 ).
      DATA(t38) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      t36 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t37 i_input_967e = t38 i_target_type = t39 ).
    ENDLOOP.
    DATA t40 TYPE REF TO zcl_lnt_type_utils.
    DATA t41 TYPE REF TO zcl_lnt_type_utils.
    DATA t42 TYPE REF TO zcl_lnt_current_scope.
    DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
    t42 = t43->scope.
    t41 = NEW zcl_lnt_type_utils( i_scope = t42 ).
    t40 = t41.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    DATA(t50) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d ).
    t49 = t50->find_direct_expression( i_type_9913 = t51 ).
    t48 = t49.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = CAST zcl_lnt_expression_node( t48 ).
    IF t54 IS INITIAL.
      t53 = abap_true.
    ENDIF.
    IF t53 = abap_true.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      t52 = t55.
    ELSE.
      DATA t56 TYPE string.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t58) = CAST zcl_lnt_expression_node( t48 ).
      t57 = t58.
      t56 = t57->concat_tokens( ).
      DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t59->has = abap_true.
      t59->value = t56.
      t52 = t59.
    ENDIF.
    t47 = t52.
    t46 = t47.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = CAST zlnt_runtime_opti_4ba3bdccd169( t46 ).
    IF t62 IS INITIAL.
      t61 = abap_true.
    ELSEIF t62->has = abap_false.
      t61 = abap_true.
    ENDIF.
    IF t61 = abap_true.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      t60 = t63.
    ELSE.
      DATA t64 TYPE string.
      DATA t65 TYPE string.
      DATA(t66) = CAST zlnt_runtime_opti_4ba3bdccd169( t46 ).
      t65 = t66->value.
      DATA(t67) = strlen( t65 ).
      t64 = t65.
      IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t64 TO UPPER CASE.
      ELSE.
        t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
      ENDIF.
      DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t68->has = abap_true.
      t68->value = t64.
      t60 = t68.
    ENDIF.
    t45 = t60.
    t44 = t45.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = VALUE abap_bool( ).
    DATA(t72) = CAST zlnt_runtime_opti_4ba3bdccd169( t44 ).
    DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t73.
    DATA(t74) = abap_true.
    IF t74 = abap_true.
      DATA(t75) = |CS|.
      DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t76->has = abap_true.
      t76->value = t75.
      t73 = t76.
    ELSE.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      t73 = t77.
    ENDIF.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    IF t72 IS BOUND.
      t78 = t72->has.
    ENDIF.
    IF t73 IS BOUND.
      t79 = t73->has.
    ENDIF.
    IF t78 = t79.
      IF t78 = abap_false.
        t71 = abap_true.
      ELSEIF t72->value = t73->value.
        t71 = abap_true.
      ENDIF.
    ENDIF.
    t70 = t71.
    IF t71 = abap_true.
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE i.
      DATA(t82) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
      t81 = lines( t82->items ).
      DATA(t83) = 2.
      t80 = xsdbool( t81 = t83 ).
      t70 = t80.
    ENDIF.
    t69 = t70.
    IF t70 = abap_true.
      DATA(t84) = VALUE abap_bool( ).
      DATA t85 TYPE abap_bool.
      DATA(t86) = abap_false.
      t85 = t86.
      DATA(t87) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
      DATA t88 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t88.
      LOOP AT t87->items INTO t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = VALUE abap_bool( ).
        DATA t91 TYPE REF TO zcl_lnt_type_utils.
        DATA(t92) = CAST zcl_lnt_type_utils( t40 ).
        t91 = t92.
        DATA t93 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t94) = CAST zcl_lnt_abstract_type( t88 ).
        t93 = t94.
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = VALUE abap_bool( ).
        DATA t100 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t101) = CAST zcl_lnt_abstract_type( t93 ).
        t100 = t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        t102 = t103.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = CAST zcl_lnt_abstract_type( t100 ).
        IF t105 IS INITIAL.
          t104 = abap_true.
        ENDIF.
        t99 = t104.
        t98 = t99.
        IF t99 = abap_false.
          DATA t106 TYPE abap_bool.
          DATA(t107) = CAST zcl_lnt_abstract_type( t93 ).
          t106 = xsdbool( t107 IS BOUND AND t107 IS INSTANCE OF zcl_lnt_string_type ).
          t98 = t106.
        ENDIF.
        t97 = t98.
        IF t98 = abap_false.
          DATA t108 TYPE abap_bool.
          DATA(t109) = CAST zcl_lnt_abstract_type( t93 ).
          t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_c_like_type ).
          t97 = t108.
        ENDIF.
        t96 = t97.
        IF t97 = abap_false.
          DATA t110 TYPE abap_bool.
          DATA(t111) = CAST zcl_lnt_abstract_type( t93 ).
          t110 = xsdbool( t111 IS BOUND AND t111 IS INSTANCE OF zcl_lnt_c_sequence_type ).
          t96 = t110.
        ENDIF.
        t95 = t96.
        IF t96 = abap_false.
          DATA(t112) = VALUE abap_bool( ).
          DATA t113 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t113.
          DATA t114 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t114.
          DATA(t115) = abap_true.
          IF t115 = abap_true.
            DATA t116 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t117) = CAST zcl_lnt_abstract_type( t93 ).
            t116 = t117.
            t114 = t116.
          ELSE.
            DATA t118 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t118.
            t114 = t118.
          ENDIF.
          t113 = t114.
          DATA(t119) = VALUE abap_bool( ).
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE abap_bool.
          DATA(t122) = CAST zcl_lnt_abstract_type( t113 ).
          t121 = xsdbool( t122 IS BOUND AND t122 IS INSTANCE OF zcl_lnt_structure_type ).
          t120 = t121.
          IF t121 = abap_false.
            DATA t123 TYPE abap_bool.
            DATA t124 TYPE abap_bool.
            DATA(t125) = CAST zcl_lnt_abstract_type( t113 ).
            t124 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t123 = t124.
            IF t124 = abap_true.
              DATA t126 TYPE abap_bool.
              DATA t127 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t128 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t129) = CAST zcl_lnt_abstract_type( t113 ).
              t128 ?= t129.
              t127 = t128.
              DATA t130 TYPE abap_bool.
              DATA t131 TYPE REF TO zcl_lnt_itable_options.
              DATA(t132) = CAST zcl_lnt_ty_table_type( t127 ).
              t131 = t132->options.
              t130 = t131->with_header.
              t126 = t130.
              t123 = t126.
            ENDIF.
            t120 = t123.
          ENDIF.
          IF t120 = abap_true.
            DATA(t133) = VALUE abap_bool( ).
            DATA(t134) = CAST zcl_lnt_type_utils( t91 ).
            DATA t135 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t135.
            DATA(t136) = abap_true.
            IF t136 = abap_true.
              DATA t137 TYPE REF TO zcl_lnt_abstract_type.
              DATA t138 TYPE REF TO zif_lnt_union_2724f734.
              DATA t139 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t140) = CAST zcl_lnt_abstract_type( t113 ).
              t139 = t140.
              t138 ?= t139.
              t137 ?= t138.
              t135 = t137.
            ELSE.
              DATA t141 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t141.
              t135 = t141.
            ENDIF.
            t133 = t134->is_char_like_strict( i_type_9913 = t135 ).
            t119 = t133.
          ELSE.
            DATA(t142) = VALUE abap_bool( ).
            DATA(t143) = VALUE abap_bool( ).
            DATA(t144) = VALUE abap_bool( ).
            DATA(t145) = VALUE abap_bool( ).
            DATA(t146) = VALUE abap_bool( ).
            DATA(t147) = VALUE abap_bool( ).
            DATA(t148) = VALUE abap_bool( ).
            DATA t149 TYPE abap_bool.
            DATA t150 TYPE abap_bool.
            DATA(t151) = CAST zcl_lnt_abstract_type( t113 ).
            t150 = xsdbool( t151 IS BOUND AND t151 IS INSTANCE OF zcl_lnt_character_type ).
            t149 = t150.
            IF t150 = abap_false.
              DATA t152 TYPE abap_bool.
              DATA(t153) = CAST zcl_lnt_abstract_type( t113 ).
              t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_numeric_type ).
              t149 = t152.
            ENDIF.
            t148 = t149.
            IF t149 = abap_false.
              DATA t154 TYPE abap_bool.
              DATA(t155) = CAST zcl_lnt_abstract_type( t113 ).
              t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_date_type ).
              t148 = t154.
            ENDIF.
            t147 = t148.
            IF t148 = abap_false.
              DATA t156 TYPE abap_bool.
              DATA(t157) = CAST zcl_lnt_abstract_type( t113 ).
              t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_time_type ).
              t147 = t156.
            ENDIF.
            t146 = t147.
            IF t147 = abap_false.
              DATA t158 TYPE abap_bool.
              DATA(t159) = CAST zcl_lnt_abstract_type( t113 ).
              t158 = xsdbool( t159 IS BOUND AND t159 IS INSTANCE OF zcl_lnt_c_generic_type ).
              t146 = t158.
            ENDIF.
            t145 = t146.
            IF t146 = abap_false.
              DATA t160 TYPE abap_bool.
              DATA(t161) = CAST zcl_lnt_abstract_type( t113 ).
              t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_c_like_type ).
              t145 = t160.
            ENDIF.
            t144 = t145.
            IF t145 = abap_false.
              DATA t162 TYPE abap_bool.
              DATA(t163) = CAST zcl_lnt_abstract_type( t113 ).
              t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_any_type ).
              t144 = t162.
            ENDIF.
            t143 = t144.
            IF t144 = abap_false.
              DATA t164 TYPE abap_bool.
              DATA(t165) = CAST zcl_lnt_abstract_type( t113 ).
              t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_unknown_type ).
              t143 = t164.
            ENDIF.
            t142 = t143.
            IF t143 = abap_false.
              DATA t166 TYPE abap_bool.
              DATA(t167) = CAST zcl_lnt_abstract_type( t113 ).
              t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_void_type ).
              t142 = t166.
            ENDIF.
            t119 = t142.
          ENDIF.
          t112 = t119.
          t95 = t112.
        ENDIF.
        t90 = t95.
        DATA(t168) = abap_false.
        t89 = xsdbool( t90 = t168 ).
        IF t89 = abap_true.
          DATA(t169) = abap_true.
          t85 = t169.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA(t170) = t85.
      t84 = t170.
      t69 = t84.
    ENDIF.
    IF t69 = abap_true.
      DATA t171 TYPE string.
      DATA(t172) = |CS operands must be character-like (data type C, N, D, T, or|.
      t172 = t172 && | STRING)|.
      t171 = t172.
      DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t174) = CAST zcl_lnt_syntax_input( t2 ).
      t173 = t174->issues.
      DATA t175 TYPE REF TO zcl_lnt_issue.
      DATA(t176) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t177 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t178) = CAST zcl_lnt_expression_node( t1 ).
      t177 = t178->get_first_token( ).
      DATA(t179) = t171.
      DATA t180 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t180.
      t175 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t176 i_token = t177 i_message_26cb = t179 i_fix = t180 ).
      APPEND t175 TO t173->items.
    ELSE.
      DATA(t181) = VALUE abap_bool( ).
      DATA t182 TYPE abap_bool.
      DATA t183 TYPE abap_bool.
      DATA t184 TYPE REF TO zcl_lnt_expression_node.
      DATA(t185) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t186) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d ).
      t184 = t185->find_direct_expression( i_type_9913 = t186 ).
      t183 = xsdbool( t184 IS BOUND ).
      t182 = t183.
      IF t183 = abap_true.
        DATA t187 TYPE abap_bool.
        DATA t188 TYPE abap_bool.
        DATA(t189) = CAST zcl_lnt_type_utils( t40 ).
        DATA t190 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t190.
        DATA(t191) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
        READ TABLE t191->items INDEX 1 INTO t190.
        DATA t192 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t192.
        DATA(t193) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
        READ TABLE t193->items INDEX 2 INTO t192.
        DATA t194 TYPE REF TO zcl_lnt_expression_node.
        DATA(t195) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        DATA t196 TYPE REF TO object.
        CLEAR t196.
        READ TABLE t195->items INDEX 1 INTO t196.
        t194 ?= t196.
        DATA t197 TYPE REF TO zcl_lnt_expression_node.
        DATA(t198) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        DATA t199 TYPE REF TO object.
        CLEAR t199.
        READ TABLE t198->items INDEX 2 INTO t199.
        t197 ?= t199.
        t188 = t189->is_compareable( i_source1 = t190 i_source2 = t192 i_node1 = t194 i_node2 = t197 ).
        DATA(t200) = abap_false.
        t187 = xsdbool( t188 = t200 ).
        t182 = t187.
      ENDIF.
      t181 = t182.
      IF t182 = abap_true.
        DATA t201 TYPE abap_bool.
        DATA t202 TYPE i.
        DATA(t203) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
        t202 = lines( t203->items ).
        DATA(t204) = 2.
        t201 = xsdbool( t202 = t204 ).
        t181 = t201.
      ENDIF.
      IF t181 = abap_true.
        DATA t205 TYPE string.
        DATA(t206) = |Incompatible types for comparison|.
        t205 = t206.
        DATA(t207) = VALUE abap_bool( ).
        DATA(t208) = VALUE abap_bool( ).
        DATA t209 TYPE abap_bool.
        DATA t210 TYPE abap_bool.
        DATA t211 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t211.
        DATA(t212) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
        READ TABLE t212->items INDEX 1 INTO t211.
        t210 = xsdbool( t211 IS BOUND AND t211 IS INSTANCE OF zcl_lnt_date_type ).
        t209 = t210.
        IF t210 = abap_true.
          DATA t213 TYPE abap_bool.
          DATA t214 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t214.
          DATA(t215) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
          READ TABLE t215->items INDEX 2 INTO t214.
          t213 = xsdbool( t214 IS BOUND AND t214 IS INSTANCE OF zcl_lnt_integer_type ).
          t209 = t213.
        ENDIF.
        t208 = t209.
        IF t209 = abap_true.
          DATA t216 TYPE abap_bool.
          DATA t217 TYPE REF TO zcl_lnt_expression_node.
          DATA t218 TYPE REF TO zcl_lnt_expression_node.
          DATA(t219) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          DATA t220 TYPE REF TO object.
          CLEAR t220.
          READ TABLE t219->items INDEX 2 INTO t220.
          t218 ?= t220.
          DATA(t221) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3 ).
          t217 = t218->find_first_expression( i_type_9913 = t221 ).
          t216 = xsdbool( t217 IS BOUND ).
          t208 = t216.
        ENDIF.
        t207 = t208.
        IF t208 = abap_false.
          DATA(t222) = VALUE abap_bool( ).
          DATA t223 TYPE abap_bool.
          DATA t224 TYPE abap_bool.
          DATA t225 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t225.
          DATA(t226) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
          READ TABLE t226->items INDEX 2 INTO t225.
          t224 = xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_date_type ).
          t223 = t224.
          IF t224 = abap_true.
            DATA t227 TYPE abap_bool.
            DATA t228 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t228.
            DATA(t229) = CAST zlnt_runtime_arra_8d6bb411953d( t3 ).
            READ TABLE t229->items INDEX 1 INTO t228.
            t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_integer_type ).
            t223 = t227.
          ENDIF.
          t222 = t223.
          IF t223 = abap_true.
            DATA t230 TYPE abap_bool.
            DATA t231 TYPE REF TO zcl_lnt_expression_node.
            DATA t232 TYPE REF TO zcl_lnt_expression_node.
            DATA(t233) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
            DATA t234 TYPE REF TO object.
            CLEAR t234.
            READ TABLE t233->items INDEX 1 INTO t234.
            t232 ?= t234.
            DATA(t235) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3 ).
            t231 = t232->find_first_expression( i_type_9913 = t235 ).
            t230 = xsdbool( t231 IS BOUND ).
            t222 = t230.
          ENDIF.
          t207 = t222.
        ENDIF.
        IF t207 = abap_true.
          DATA(t236) = |Date cannot be compared with arithmetic result of type Integ|.
          t236 = t236 && |er|.
          t205 = t236.
        ENDIF.
        DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t238) = CAST zcl_lnt_syntax_input( t2 ).
        t237 = t238->issues.
        DATA t239 TYPE REF TO zcl_lnt_issue.
        DATA(t240) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t242) = CAST zcl_lnt_expression_node( t1 ).
        t241 = t242->get_first_token( ).
        DATA(t243) = t205.
        DATA t244 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t244.
        t239 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t240 i_token = t241 i_message_26cb = t243 i_fix = t244 ).
        APPEND t239 TO t237->items.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d764_0d9379b99eab.
  ENDMETHOD.
ENDCLASS.
