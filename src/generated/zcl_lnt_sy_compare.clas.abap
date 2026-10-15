* TS: src/abap/5_syntax/expressions/compare.ts:11:1 Compare
CLASS zcl_lnt_sy_compare DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_compare IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8d6bb411953d.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8d6bb411953d.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t6 = t7->find_direct_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = t5.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t9->load( ).
      IF t12 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t9->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA(t15) = t3.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = t10.
        t17 = t19.
      ELSE.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t20.
        t17 = t20.
      ENDIF.
      DATA(t21) = t2.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t25.
      t16 = zcl_lnt_sy_source=>run_syntax( i_node = t17 i_input_967e = t21 i_target_type = t22 i_write_reference = t23 i_allow_generic_deference = t24 i_read_reference = t25 ).
      t15->load( ).
      APPEND t16 TO t15->items.
      t15->save( ).
    ENDDO.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t1.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d124_1ce9c8f13c80.
    t26 = t27->find_direct_expressions( i_type_9913 = t28 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t26->load( ).
      IF t31 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t26->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t35) = t29.
      DATA(t36) = t2.
      t34 = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t35 i_input_967e = t36 ).
    ENDDO.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t38) = t1.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e.
    t37 = t38->find_direct_expressions( i_type_9913 = t39 ).
    DATA t40 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t40.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
    DATA(t42) = VALUE i( ).
    DO.
      t37->load( ).
      IF t42 >= lines( t37->items ).
        EXIT.
      ENDIF.
      CLEAR t41.
      READ TABLE t37->items INDEX t42 + 1 INTO t41.
      t42 = t42 + 1.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      CLEAR t40.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t43 ?= t41.
        DATA t44 TYPE REF TO object.
        t44 = t43->as_ref( ).
        t40 ?= t44.
      ELSE.
        t40 ?= t41.
      ENDIF.
      DATA t45 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t46) = t40.
      DATA(t47) = t2.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t48.
      t45 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t46 i_input_967e = t47 i_target_type = t48 ).
    ENDDO.
    DATA t49 TYPE REF TO zcl_lnt_type_utils.
    DATA t50 TYPE REF TO zcl_lnt_type_utils.
    DATA t51 TYPE REF TO zcl_lnt_current_scope.
    DATA(t52) = t2.
    t51 = t52->scope.
    t50 = NEW zcl_lnt_type_utils( i_scope = t51 ).
    t49 = t50.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    DATA(t59) = t1.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
    t58 = t59->find_direct_expression( i_type_9913 = t60 ).
    t57 = t58.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t61.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = t57.
    IF t63 IS INITIAL.
      t62 = abap_true.
    ENDIF.
    IF t62 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      t61 = t64.
    ELSE.
      DATA t65 TYPE string.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      DATA(t67) = t57.
      t66 = t67.
      t65 = t66->concat_tokens( ).
      DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t68->has = abap_true.
      t68->value = t65.
      t61 = t68.
    ENDIF.
    t56 = t61.
    t55 = t56.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t69.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = t55.
    IF t71 IS INITIAL.
      t70 = abap_true.
    ELSEIF t71->has = abap_false.
      t70 = abap_true.
    ENDIF.
    IF t70 = abap_true.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t72.
      t69 = t72.
    ELSE.
      DATA t73 TYPE string.
      DATA t74 TYPE string.
      DATA(t75) = t55.
      t74 = t75->value.
      DATA(t76) = strlen( t74 ).
      t73 = t74.
      IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t73 TO UPPER CASE.
      ELSE.
        t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
      ENDIF.
      DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t77->has = abap_true.
      t77->value = t73.
      t69 = t77.
    ENDIF.
    t54 = t69.
    t53 = t54.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t53.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA(t83) = abap_true.
    IF t83 = abap_true.
      DATA(t84) = |CS|.
      DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t85->has = abap_true.
      t85->value = t84.
      t82 = t85.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      t82 = t86.
    ENDIF.
    DATA(t87) = VALUE abap_bool( ).
    DATA(t88) = VALUE abap_bool( ).
    IF t81 IS BOUND.
      t87 = t81->has.
    ENDIF.
    IF t82 IS BOUND.
      t88 = t82->has.
    ENDIF.
    IF t87 = t88.
      IF t87 = abap_false.
        t80 = abap_true.
      ELSEIF t81->value = t82->value.
        t80 = abap_true.
      ENDIF.
    ENDIF.
    t79 = t80.
    IF t80 = abap_true.
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE i.
      DATA(t91) = t3.
      t91->load( ).
      t90 = lines( t91->items ).
      DATA(t92) = 2.
      t89 = xsdbool( t90 = t92 ).
      t79 = t89.
    ENDIF.
    t78 = t79.
    IF t79 = abap_true.
      DATA(t93) = VALUE abap_bool( ).
      DATA t94 TYPE abap_bool.
      DATA(t95) = abap_false.
      t94 = t95.
      DATA(t96) = t3.
      DATA t97 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t97.
      DATA(t98) = VALUE i( ).
      DO.
        t96->load( ).
        IF t98 >= lines( t96->items ).
          EXIT.
        ENDIF.
        CLEAR t97.
        READ TABLE t96->items INDEX t98 + 1 INTO t97.
        t98 = t98 + 1.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE REF TO zcl_lnt_type_utils.
        DATA(t102) = t49.
        t101 = t102.
        DATA t103 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t104) = t97.
        t103 = t104.
        DATA(t105) = VALUE abap_bool( ).
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = VALUE abap_bool( ).
        DATA t110 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t111) = t103.
        t110 = t111.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        t112 = t113.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = t110.
        IF t115 IS INITIAL.
          t114 = abap_true.
        ENDIF.
        t109 = t114.
        t108 = t109.
        IF t109 = abap_false.
          DATA t116 TYPE abap_bool.
          DATA(t117) = t103.
          t116 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_string_type ).
          t108 = t116.
        ENDIF.
        t107 = t108.
        IF t108 = abap_false.
          DATA t118 TYPE abap_bool.
          DATA(t119) = t103.
          t118 = xsdbool( t119 IS BOUND AND t119 IS INSTANCE OF zcl_lnt_c_like_type ).
          t107 = t118.
        ENDIF.
        t106 = t107.
        IF t107 = abap_false.
          DATA t120 TYPE abap_bool.
          DATA(t121) = t103.
          t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_c_sequence_type ).
          t106 = t120.
        ENDIF.
        t105 = t106.
        IF t106 = abap_false.
          DATA(t122) = VALUE abap_bool( ).
          DATA t123 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t123.
          DATA t124 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t124.
          DATA(t125) = abap_true.
          IF t125 = abap_true.
            DATA t126 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t127) = t103.
            t126 = t127.
            t124 = t126.
          ELSE.
            DATA t128 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t128.
            t124 = t128.
          ENDIF.
          t123 = t124.
          DATA(t129) = VALUE abap_bool( ).
          DATA t130 TYPE abap_bool.
          DATA t131 TYPE abap_bool.
          DATA(t132) = t123.
          t131 = xsdbool( t132 IS BOUND AND t132 IS INSTANCE OF zcl_lnt_structure_type ).
          t130 = t131.
          IF t131 = abap_false.
            DATA t133 TYPE abap_bool.
            DATA t134 TYPE abap_bool.
            DATA(t135) = t123.
            t134 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t133 = t134.
            IF t134 = abap_true.
              DATA t136 TYPE abap_bool.
              DATA t137 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t138 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t139) = t123.
              t138 ?= t139.
              t137 = t138.
              DATA t140 TYPE abap_bool.
              DATA t141 TYPE REF TO zcl_lnt_itable_options.
              DATA(t142) = t137.
              t141 = t142->options.
              t140 = t141->zlnt_view_read_sr_ec4602663c93( ).
              t136 = t140.
              t133 = t136.
            ENDIF.
            t130 = t133.
          ENDIF.
          IF t130 = abap_true.
            DATA(t143) = VALUE abap_bool( ).
            DATA(t144) = t101.
            DATA t145 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t145.
            DATA(t146) = abap_true.
            IF t146 = abap_true.
              DATA t147 TYPE REF TO zcl_lnt_abstract_type.
              DATA t148 TYPE REF TO zif_lnt_union_2724f734.
              DATA t149 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t150) = t123.
              t149 = t150.
              t148 ?= t149.
              t147 ?= t148.
              t145 = t147.
            ELSE.
              DATA t151 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t151.
              t145 = t151.
            ENDIF.
            t143 = t144->is_char_like_strict( i_type_9913 = t145 ).
            t129 = t143.
          ELSE.
            DATA(t152) = VALUE abap_bool( ).
            DATA(t153) = VALUE abap_bool( ).
            DATA(t154) = VALUE abap_bool( ).
            DATA(t155) = VALUE abap_bool( ).
            DATA(t156) = VALUE abap_bool( ).
            DATA(t157) = VALUE abap_bool( ).
            DATA(t158) = VALUE abap_bool( ).
            DATA t159 TYPE abap_bool.
            DATA t160 TYPE abap_bool.
            DATA(t161) = t123.
            t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_character_type ).
            t159 = t160.
            IF t160 = abap_false.
              DATA t162 TYPE abap_bool.
              DATA(t163) = t123.
              t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_numeric_type ).
              t159 = t162.
            ENDIF.
            t158 = t159.
            IF t159 = abap_false.
              DATA t164 TYPE abap_bool.
              DATA(t165) = t123.
              t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_date_type ).
              t158 = t164.
            ENDIF.
            t157 = t158.
            IF t158 = abap_false.
              DATA t166 TYPE abap_bool.
              DATA(t167) = t123.
              t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_time_type ).
              t157 = t166.
            ENDIF.
            t156 = t157.
            IF t157 = abap_false.
              DATA t168 TYPE abap_bool.
              DATA(t169) = t123.
              t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_c_generic_type ).
              t156 = t168.
            ENDIF.
            t155 = t156.
            IF t156 = abap_false.
              DATA t170 TYPE abap_bool.
              DATA(t171) = t123.
              t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_c_like_type ).
              t155 = t170.
            ENDIF.
            t154 = t155.
            IF t155 = abap_false.
              DATA t172 TYPE abap_bool.
              DATA(t173) = t123.
              t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_any_type ).
              t154 = t172.
            ENDIF.
            t153 = t154.
            IF t154 = abap_false.
              DATA t174 TYPE abap_bool.
              DATA(t175) = t123.
              t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_unknown_type ).
              t153 = t174.
            ENDIF.
            t152 = t153.
            IF t153 = abap_false.
              DATA t176 TYPE abap_bool.
              DATA(t177) = t123.
              t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_void_type ).
              t152 = t176.
            ENDIF.
            t129 = t152.
          ENDIF.
          t122 = t129.
          t105 = t122.
        ENDIF.
        t100 = t105.
        DATA(t178) = abap_false.
        t99 = xsdbool( t100 = t178 ).
        IF t99 = abap_true.
          DATA(t179) = abap_true.
          t94 = t179.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t180) = t94.
      t93 = t180.
      t78 = t93.
    ENDIF.
    IF t78 = abap_true.
      DATA t181 TYPE string.
      DATA(t182) = |CS operands must be character-like (data type C, N, D, T, or|.
      t182 = t182 && | STRING)|.
      t181 = t182.
      DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t184) = t2.
      t183 = t184->issues.
      DATA t185 TYPE REF TO zcl_lnt_issue.
      DATA(t186) = t2.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t188) = t1.
      t187 = t188->get_first_token( ).
      DATA(t189) = t181.
      DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t190.
      t185 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t186 i_token = t187 i_message_26cb = t189 i_fix = t190 ).
      t183->load( ).
      APPEND t185 TO t183->items.
      t183->save( ).
    ELSE.
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE abap_bool.
      DATA t193 TYPE abap_bool.
      DATA t194 TYPE REF TO zcl_lnt_expression_node.
      DATA(t195) = t1.
      DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
      t194 = t195->find_direct_expression( i_type_9913 = t196 ).
      t193 = xsdbool( t194 IS BOUND ).
      t192 = t193.
      IF t193 = abap_true.
        DATA(t197) = VALUE abap_bool( ).
        DATA(t198) = VALUE abap_bool( ).
        DATA(t199) = t49.
        DATA t200 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t200.
        DATA(t201) = t3.
        t201->load( ).
        CLEAR t200.
        READ TABLE t201->items INDEX 1 INTO t200.
        DATA t202 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t202.
        DATA(t203) = t3.
        t203->load( ).
        CLEAR t202.
        READ TABLE t203->items INDEX 2 INTO t202.
        DATA t204 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t204.
        DATA(t205) = t5.
        DATA t206 TYPE REF TO object.
        CLEAR t206.
        t205->load( ).
        CLEAR t206.
        READ TABLE t205->items INDEX 1 INTO t206.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        CLEAR t204.
        IF t206 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t207 ?= t206.
          DATA t208 TYPE REF TO object.
          t208 = t207->as_ref( ).
          t204 ?= t208.
        ELSE.
          t204 ?= t206.
        ENDIF.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t209.
        DATA(t210) = t5.
        DATA t211 TYPE REF TO object.
        CLEAR t211.
        t210->load( ).
        CLEAR t211.
        READ TABLE t210->items INDEX 2 INTO t211.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        CLEAR t209.
        IF t211 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t212 ?= t211.
          DATA t213 TYPE REF TO object.
          t213 = t212->as_ref( ).
          t209 ?= t213.
        ELSE.
          t209 ?= t211.
        ENDIF.
        t198 = t199->is_compareable( i_source1 = t200 i_source2 = t202 i_node1 = t204 i_node2 = t209 ).
        DATA(t214) = abap_false.
        t197 = xsdbool( t198 = t214 ).
        t192 = t197.
      ENDIF.
      t191 = t192.
      IF t192 = abap_true.
        DATA t215 TYPE abap_bool.
        DATA t216 TYPE i.
        DATA(t217) = t3.
        t217->load( ).
        t216 = lines( t217->items ).
        DATA(t218) = 2.
        t215 = xsdbool( t216 = t218 ).
        t191 = t215.
      ENDIF.
      IF t191 = abap_true.
        DATA t219 TYPE string.
        DATA(t220) = |Incompatible types for comparison|.
        t219 = t220.
        DATA(t221) = VALUE abap_bool( ).
        DATA(t222) = VALUE abap_bool( ).
        DATA t223 TYPE abap_bool.
        DATA t224 TYPE abap_bool.
        DATA t225 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t225.
        DATA(t226) = t3.
        t226->load( ).
        CLEAR t225.
        READ TABLE t226->items INDEX 1 INTO t225.
        t224 = xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_date_type ).
        t223 = t224.
        IF t224 = abap_true.
          DATA t227 TYPE abap_bool.
          DATA t228 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t228.
          DATA(t229) = t3.
          t229->load( ).
          CLEAR t228.
          READ TABLE t229->items INDEX 2 INTO t228.
          t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_integer_type ).
          t223 = t227.
        ENDIF.
        t222 = t223.
        IF t223 = abap_true.
          DATA(t230) = VALUE abap_bool( ).
          DATA t231 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t231.
          DATA t232 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t232.
          DATA(t233) = t5.
          DATA t234 TYPE REF TO object.
          CLEAR t234.
          t233->load( ).
          CLEAR t234.
          READ TABLE t233->items INDEX 2 INTO t234.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          CLEAR t232.
          IF t234 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t235 ?= t234.
            DATA t236 TYPE REF TO object.
            t236 = t235->as_ref( ).
            t232 ?= t236.
          ELSE.
            t232 ?= t234.
          ENDIF.
          DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
          t231 = t232->find_first_expression( i_type_9913 = t237 ).
          t230 = xsdbool( t231 IS BOUND ).
          t222 = t230.
        ENDIF.
        t221 = t222.
        IF t222 = abap_false.
          DATA(t238) = VALUE abap_bool( ).
          DATA t239 TYPE abap_bool.
          DATA t240 TYPE abap_bool.
          DATA t241 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t241.
          DATA(t242) = t3.
          t242->load( ).
          CLEAR t241.
          READ TABLE t242->items INDEX 2 INTO t241.
          t240 = xsdbool( t241 IS BOUND AND t241 IS INSTANCE OF zcl_lnt_date_type ).
          t239 = t240.
          IF t240 = abap_true.
            DATA t243 TYPE abap_bool.
            DATA t244 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t244.
            DATA(t245) = t3.
            t245->load( ).
            CLEAR t244.
            READ TABLE t245->items INDEX 1 INTO t244.
            t243 = xsdbool( t244 IS BOUND AND t244 IS INSTANCE OF zcl_lnt_integer_type ).
            t239 = t243.
          ENDIF.
          t238 = t239.
          IF t239 = abap_true.
            DATA(t246) = VALUE abap_bool( ).
            DATA t247 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t247.
            DATA t248 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t248.
            DATA(t249) = t5.
            DATA t250 TYPE REF TO object.
            CLEAR t250.
            t249->load( ).
            CLEAR t250.
            READ TABLE t249->items INDEX 1 INTO t250.
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            CLEAR t248.
            IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t251 ?= t250.
              DATA t252 TYPE REF TO object.
              t252 = t251->as_ref( ).
              t248 ?= t252.
            ELSE.
              t248 ?= t250.
            ENDIF.
            DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
            t247 = t248->find_first_expression( i_type_9913 = t253 ).
            t246 = xsdbool( t247 IS BOUND ).
            t238 = t246.
          ENDIF.
          t221 = t238.
        ENDIF.
        IF t221 = abap_true.
          DATA(t254) = |Date cannot be compared with arithmetic result of type Integ|.
          t254 = t254 && |er|.
          t219 = t254.
        ENDIF.
        DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t256) = t2.
        t255 = t256->issues.
        DATA t257 TYPE REF TO zcl_lnt_issue.
        DATA(t258) = t2.
        DATA t259 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t260) = t1.
        t259 = t260->get_first_token( ).
        DATA(t261) = t219.
        DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t262.
        t257 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t258 i_token = t259 i_message_26cb = t261 i_fix = t262 ).
        t255->load( ).
        APPEND t257 TO t255->items.
        t255->save( ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d786_3f6916c1eafa.
  ENDMETHOD.
ENDCLASS.
