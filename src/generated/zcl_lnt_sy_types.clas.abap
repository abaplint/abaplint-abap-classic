* TS: src/abap/5_syntax/structures/types.ts:13:1 Types
CLASS zcl_lnt_sy_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_types IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name_prefix ).
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    t7 = t8->find_first_expression( i_type_9913 = t9 ).
    t6 = t7.
    t5 = t6->get_first_token(  ).
    t4 = t5.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zif_lnt_union_adffe656.
    DATA t13 TYPE REF TO zif_lnt_union_adffe656.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = CAST zlnt_runtime_opti_4ba3bdccd169( t15 ).
    IF t20 IS INITIAL.
      t19 = abap_true.
    ELSEIF t20->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA(t23) = ||.
        DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t24->has = abap_true.
        t24->value = t23.
        t21 = t24.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        t21 = t25.
      ENDIF.
      t3 = t21.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t29) = CAST zcl_lnt_structure_node( t1 ).
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = CAST zcl_lnt_abstract_node( t28 ).
    t30 = t31->children.
    t27 = t30.
    t26 ?= t27.
    DATA t32 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    LOOP AT t26->items INTO t33.
      t32 ?= t33.
      DATA t34 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t35 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t36 TYPE REF TO object.
      DATA(t37) = CAST zif_lnt_union_8249fcb1( t32 ).
      t36 = t37->get_db65(  ).
      DATA t38 TYPE REF TO object.
      t38 = t36.
      t35 ?= t38.
      t34 = t35.
      DATA t39 TYPE abap_bool.
      DATA(t40) = CAST zif_lnt_union_8249fcb1( t32 ).
      t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t39 = abap_true.
        DATA t41 TYPE abap_bool.
        DATA(t42) = CAST zif_lnt_union_dc0fb493( t34 ).
        t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_st_statem_type ).
        IF t41 = abap_true.
          DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t43.
          DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t44.
          DATA(t45) = NEW zcl_lnt_sy_type(  ).
          DATA t46 TYPE REF TO zcl_lnt_statement_node.
          DATA(t47) = CAST zif_lnt_union_8249fcb1( t32 ).
          DATA t48 TYPE REF TO object.
          t48 = t47.
          t46 ?= t48.
          DATA(t49) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t50.
          DATA(t51) = abap_true.
          IF t51 = abap_true.
            DATA t52 TYPE string.
            DATA t53 TYPE string.
            DATA t54 TYPE string.
            DATA(t55) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
            t54 = t55->value.
            DATA t56 TYPE string.
            DATA t57 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t58) = CAST zcl_lnt_abstract_token( t4 ).
            t57 = t58.
            DATA t59 TYPE string.
            DATA(t60) = CAST zcl_lnt_abstract_token( t57 ).
            t59 = t60->str.
            t56 = t59.
            DATA(t61) = strlen( t54 ).
            t53 = |{ t54 }{ t56 }|.
            DATA(t62) = |-|.
            DATA(t63) = strlen( t53 ).
            t52 = |{ t53 }{ t62 }|.
            DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t64->has = abap_true.
            t64->value = t52.
            t50 = t64.
          ELSE.
            DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t65.
            t50 = t65.
          ENDIF.
          t44 = t45->run_syntax( i_node = t46 i_input_967e = t49 i_qualified_name_prefix = t50 ).
          t43 = t44.
          DATA t66 TYPE abap_bool.
          DATA(t67) = CAST zcl_lnt_typed_identifier( t43 ).
          t66 = xsdbool( t67 IS BOUND ).
          IF t66 = abap_true.
            DATA(t68) = VALUE abap_bool( ).
            DATA(t69) = VALUE i( ).
            DATA(t70) = VALUE string( ).
            DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t73) = CAST zcl_lnt_typed_identifier( t43 ).
            t72 = t73.
            t71 = t72.
            DATA(t74) = VALUE string( ).
            DATA t75 TYPE string.
            DATA t76 TYPE string.
            DATA t77 TYPE REF TO zcl_lnt_abstract_token.
            DATA t78 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t79) = CAST zcl_lnt_fi_identifier( t71 ).
            t78 = t79->token.
            t77 = t78.
            DATA t80 TYPE string.
            DATA(t81) = CAST zcl_lnt_abstract_token( t77 ).
            t80 = t81->str.
            t76 = t80.
            t75 = t76.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = VALUE string( ).
            DATA(t84) = t75.
            DATA(t85) = 0.
            DATA(t86) = 1.
            DATA(t87) = strlen( t84 ).
            IF t85 < 0.
              t85 = t85 + t87.
              IF t85 < 0.
                t85 = 0.
              ENDIF.
            ENDIF.
            IF t85 > t87 OR t86 <= 0.
              CLEAR t83.
            ELSE.
              IF t86 > t87 - t85.
                t86 = t87 - t85.
              ENDIF.
              t83 = t84+t85(t86).
            ENDIF.
            DATA(t88) = |!|.
            t82 = xsdbool( t83 = t88 ).
            IF t82 = abap_true.
              DATA(t89) = VALUE string( ).
              DATA t90 TYPE string.
              DATA(t91) = t75.
              t90 = t91.
              DATA(t92) = VALUE string( ).
              DATA(t93) = t90.
              DATA(t94) = 1.
              DATA t95 TYPE i.
              DATA(t96) = t90.
              DATA(t97) = strlen( t96 ).
              t95 = t97.
              DATA(t98) = strlen( t93 ).
              IF t94 < 0.
                t94 = t94 + t98.
                IF t94 < 0.
                  t94 = 0.
                ENDIF.
              ENDIF.
              IF t94 > t98 OR t95 <= 0.
                CLEAR t92.
              ELSE.
                IF t95 > t98 - t94.
                  t95 = t98 - t94.
                ENDIF.
                t92 = t93+t94(t95).
              ENDIF.
              t89 = t92.
              t75 = t89.
            ENDIF.
            DATA(t99) = t75.
            t74 = t99.
            t70 = t74.
            DATA(t100) = strlen( t70 ).
            t69 = t100.
            DATA(t101) = 30.
            t68 = xsdbool( t69 > t101 ).
            IF t68 = abap_true.
              DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t103) = CAST zcl_lnt_syntax_input( t2 ).
              t102 = t103->issues.
              DATA t104 TYPE REF TO zcl_lnt_issue.
              DATA(t105) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t106 TYPE REF TO zcl_lnt_abstract_token.
              DATA t107 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t109) = CAST zcl_lnt_typed_identifier( t43 ).
              t108 = t109.
              t107 = t108.
              DATA t110 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t111) = CAST zcl_lnt_fi_identifier( t107 ).
              t110 = t111->token.
              t106 = t110.
              DATA(t112) = |Structure field name longer than 30 characters|.
              DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t113.
              t104 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t105 i_token = t106 i_message_26cb = t112 i_fix = t113 ).
              APPEND t104 TO t102->items.
            ENDIF.
            DATA(t114) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
            DATA t115 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t115.
            DATA(t116) = VALUE string( ).
            DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t119) = CAST zcl_lnt_typed_identifier( t43 ).
            t118 = t119.
            t117 = t118.
            DATA(t120) = VALUE string( ).
            DATA t121 TYPE string.
            DATA t122 TYPE string.
            DATA t123 TYPE REF TO zcl_lnt_abstract_token.
            DATA t124 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t125) = CAST zcl_lnt_fi_identifier( t117 ).
            t124 = t125->token.
            t123 = t124.
            DATA t126 TYPE string.
            DATA(t127) = CAST zcl_lnt_abstract_token( t123 ).
            t126 = t127->str.
            t122 = t126.
            t121 = t122.
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = VALUE string( ).
            DATA(t130) = t121.
            DATA(t131) = 0.
            DATA(t132) = 1.
            DATA(t133) = strlen( t130 ).
            IF t131 < 0.
              t131 = t131 + t133.
              IF t131 < 0.
                t131 = 0.
              ENDIF.
            ENDIF.
            IF t131 > t133 OR t132 <= 0.
              CLEAR t129.
            ELSE.
              IF t132 > t133 - t131.
                t132 = t133 - t131.
              ENDIF.
              t129 = t130+t131(t132).
            ENDIF.
            DATA(t134) = |!|.
            t128 = xsdbool( t129 = t134 ).
            IF t128 = abap_true.
              DATA(t135) = VALUE string( ).
              DATA t136 TYPE string.
              DATA(t137) = t121.
              t136 = t137.
              DATA(t138) = VALUE string( ).
              DATA(t139) = t136.
              DATA(t140) = 1.
              DATA t141 TYPE i.
              DATA(t142) = t136.
              DATA(t143) = strlen( t142 ).
              t141 = t143.
              DATA(t144) = strlen( t139 ).
              IF t140 < 0.
                t140 = t140 + t144.
                IF t140 < 0.
                  t140 = 0.
                ENDIF.
              ENDIF.
              IF t140 > t144 OR t141 <= 0.
                CLEAR t138.
              ELSE.
                IF t141 > t144 - t140.
                  t141 = t144 - t140.
                ENDIF.
                t138 = t139+t140(t141).
              ENDIF.
              t135 = t138.
              t121 = t135.
            ENDIF.
            DATA(t145) = t121.
            t120 = t145.
            t116 = t120.
            DATA t146 TYPE REF TO zcl_lnt_abstract_type.
            DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t148 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t149) = CAST zcl_lnt_typed_identifier( t43 ).
            t148 = t149.
            t147 = t148.
            DATA t150 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t151) = CAST zcl_lnt_typed_identifier( t147 ).
            t150 = t151->type_cba0.
            t146 = t150.
            DATA t152 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t152.
            DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t153.
            t115 = NEW zcl_lnt_istructure_component( i_name = t116 i_type_9913 = t146 i_as_include = t152 i_suffix = t153 ).
            APPEND t115 TO t114->items.
          ENDIF.
        ELSE.
          DATA t154 TYPE abap_bool.
          DATA(t155) = CAST zif_lnt_union_dc0fb493( t34 ).
          t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_st_include_type ).
          IF t154 = abap_true.
            DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t158) = NEW zcl_lnt_sy_include_type(  ).
            DATA t159 TYPE REF TO zcl_lnt_statement_node.
            DATA(t160) = CAST zif_lnt_union_8249fcb1( t32 ).
            DATA t161 TYPE REF TO object.
            t161 = t160.
            t159 ?= t161.
            DATA(t162) = CAST zcl_lnt_syntax_input( t2 ).
            t157 = t158->run_syntax( i_node = t159 i_input_967e = t162 ).
            t156 = t157.
            DATA t163 TYPE abap_bool.
            DATA t164 TYPE abap_bool.
            DATA t165 TYPE REF TO object.
            DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
            DATA t167 TYPE REF TO object.
            t167 = t166->as_ref( ).
            t165 ?= t167.
            t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_void_type ).
            t163 = t164.
            IF t164 = abap_false.
              DATA t168 TYPE abap_bool.
              DATA t169 TYPE REF TO object.
              DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
              DATA t171 TYPE REF TO object.
              t171 = t170->as_ref( ).
              t169 ?= t171.
              t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_unknown_type ).
              t163 = t168.
            ENDIF.
            IF t163 = abap_true.
              DATA t172 TYPE REF TO zif_lnt_union_adffe656.
              CLEAR t172.
              DATA(t173) = abap_true.
              IF t173 = abap_true.
                DATA t174 TYPE REF TO zif_lnt_union_adffe656.
                DATA(t175) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
                DATA t176 TYPE REF TO object.
                t176 = t175->as_ref( ).
                t174 ?= t176.
                t172 = t174.
              ELSE.
                DATA t177 TYPE REF TO zif_lnt_union_adffe656.
                CLEAR t177.
                t172 = t177.
              ENDIF.
              t12 = t172.
            ELSE.
              DATA(t178) = VALUE i( ).
              DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
              DATA t181 TYPE REF TO object.
              t181 = t180->as_ref( ).
              t179 ?= t181.
              DATA t182 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t182.
              DATA t183 TYPE REF TO object.
              CLEAR t183.
              LOOP AT t179->items INTO t183.
                t182 ?= t183.
                DATA(t184) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
                DATA(t185) = CAST zcl_lnt_istructure_component( t182 ).
                APPEND t185 TO t184->items.
              ENDLOOP.
              DATA t186 TYPE i.
              DATA(t187) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
              t186 = lines( t187->items ).
              t178 = t186.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t188 TYPE abap_bool.
        DATA t189 TYPE abap_bool.
        DATA(t190) = CAST zif_lnt_union_8249fcb1( t32 ).
        t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_structure_node ).
        t188 = t189.
        IF t189 = abap_true.
          DATA t191 TYPE abap_bool.
          DATA(t192) = CAST zif_lnt_union_dc0fb493( t34 ).
          t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_sr_types ).
          t188 = t191.
        ENDIF.
        IF t188 = abap_true.
          DATA t193 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t193.
          DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t194.
          DATA(t195) = NEW zcl_lnt_sy_types(  ).
          DATA t196 TYPE REF TO zcl_lnt_structure_node.
          DATA(t197) = CAST zif_lnt_union_8249fcb1( t32 ).
          DATA t198 TYPE REF TO object.
          t198 = t197.
          t196 ?= t198.
          DATA(t199) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t200.
          DATA(t201) = abap_true.
          IF t201 = abap_true.
            DATA t202 TYPE string.
            DATA t203 TYPE string.
            DATA t204 TYPE string.
            DATA(t205) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
            t204 = t205->value.
            DATA t206 TYPE string.
            DATA t207 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t208) = CAST zcl_lnt_abstract_token( t4 ).
            t207 = t208.
            DATA t209 TYPE string.
            DATA(t210) = CAST zcl_lnt_abstract_token( t207 ).
            t209 = t210->str.
            t206 = t209.
            DATA(t211) = strlen( t204 ).
            t203 = |{ t204 }{ t206 }|.
            DATA(t212) = |-|.
            DATA(t213) = strlen( t203 ).
            t202 = |{ t203 }{ t212 }|.
            DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t214->has = abap_true.
            t214->value = t202.
            t200 = t214.
          ELSE.
            DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t215.
            t200 = t215.
          ENDIF.
          t194 = t195->run_syntax( i_node = t196 i_input_967e = t199 i_qualified_name_prefix = t200 ).
          t193 = t194.
          DATA t216 TYPE abap_bool.
          DATA(t217) = CAST zcl_lnt_typed_identifier( t193 ).
          t216 = xsdbool( t217 IS BOUND ).
          IF t216 = abap_true.
            DATA(t218) = VALUE abap_bool( ).
            DATA(t219) = VALUE i( ).
            DATA(t220) = VALUE string( ).
            DATA t221 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t223) = CAST zcl_lnt_typed_identifier( t193 ).
            t222 = t223.
            t221 = t222.
            DATA(t224) = VALUE string( ).
            DATA t225 TYPE string.
            DATA t226 TYPE string.
            DATA t227 TYPE REF TO zcl_lnt_abstract_token.
            DATA t228 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t229) = CAST zcl_lnt_fi_identifier( t221 ).
            t228 = t229->token.
            t227 = t228.
            DATA t230 TYPE string.
            DATA(t231) = CAST zcl_lnt_abstract_token( t227 ).
            t230 = t231->str.
            t226 = t230.
            t225 = t226.
            DATA(t232) = VALUE abap_bool( ).
            DATA(t233) = VALUE string( ).
            DATA(t234) = t225.
            DATA(t235) = 0.
            DATA(t236) = 1.
            DATA(t237) = strlen( t234 ).
            IF t235 < 0.
              t235 = t235 + t237.
              IF t235 < 0.
                t235 = 0.
              ENDIF.
            ENDIF.
            IF t235 > t237 OR t236 <= 0.
              CLEAR t233.
            ELSE.
              IF t236 > t237 - t235.
                t236 = t237 - t235.
              ENDIF.
              t233 = t234+t235(t236).
            ENDIF.
            DATA(t238) = |!|.
            t232 = xsdbool( t233 = t238 ).
            IF t232 = abap_true.
              DATA(t239) = VALUE string( ).
              DATA t240 TYPE string.
              DATA(t241) = t225.
              t240 = t241.
              DATA(t242) = VALUE string( ).
              DATA(t243) = t240.
              DATA(t244) = 1.
              DATA t245 TYPE i.
              DATA(t246) = t240.
              DATA(t247) = strlen( t246 ).
              t245 = t247.
              DATA(t248) = strlen( t243 ).
              IF t244 < 0.
                t244 = t244 + t248.
                IF t244 < 0.
                  t244 = 0.
                ENDIF.
              ENDIF.
              IF t244 > t248 OR t245 <= 0.
                CLEAR t242.
              ELSE.
                IF t245 > t248 - t244.
                  t245 = t248 - t244.
                ENDIF.
                t242 = t243+t244(t245).
              ENDIF.
              t239 = t242.
              t225 = t239.
            ENDIF.
            DATA(t249) = t225.
            t224 = t249.
            t220 = t224.
            DATA(t250) = strlen( t220 ).
            t219 = t250.
            DATA(t251) = 30.
            t218 = xsdbool( t219 > t251 ).
            IF t218 = abap_true.
              DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t253) = CAST zcl_lnt_syntax_input( t2 ).
              t252 = t253->issues.
              DATA t254 TYPE REF TO zcl_lnt_issue.
              DATA(t255) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t256 TYPE REF TO zcl_lnt_abstract_token.
              DATA t257 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t258 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t259) = CAST zcl_lnt_typed_identifier( t193 ).
              t258 = t259.
              t257 = t258.
              DATA t260 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t261) = CAST zcl_lnt_fi_identifier( t257 ).
              t260 = t261->token.
              t256 = t260.
              DATA(t262) = |Structure field name longer than 30 characters|.
              DATA t263 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t263.
              t254 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t255 i_token = t256 i_message_26cb = t262 i_fix = t263 ).
              APPEND t254 TO t252->items.
            ENDIF.
            DATA(t264) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
            DATA t265 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t265.
            DATA(t266) = VALUE string( ).
            DATA t267 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t268 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t269) = CAST zcl_lnt_typed_identifier( t193 ).
            t268 = t269.
            t267 = t268.
            DATA(t270) = VALUE string( ).
            DATA t271 TYPE string.
            DATA t272 TYPE string.
            DATA t273 TYPE REF TO zcl_lnt_abstract_token.
            DATA t274 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t275) = CAST zcl_lnt_fi_identifier( t267 ).
            t274 = t275->token.
            t273 = t274.
            DATA t276 TYPE string.
            DATA(t277) = CAST zcl_lnt_abstract_token( t273 ).
            t276 = t277->str.
            t272 = t276.
            t271 = t272.
            DATA(t278) = VALUE abap_bool( ).
            DATA(t279) = VALUE string( ).
            DATA(t280) = t271.
            DATA(t281) = 0.
            DATA(t282) = 1.
            DATA(t283) = strlen( t280 ).
            IF t281 < 0.
              t281 = t281 + t283.
              IF t281 < 0.
                t281 = 0.
              ENDIF.
            ENDIF.
            IF t281 > t283 OR t282 <= 0.
              CLEAR t279.
            ELSE.
              IF t282 > t283 - t281.
                t282 = t283 - t281.
              ENDIF.
              t279 = t280+t281(t282).
            ENDIF.
            DATA(t284) = |!|.
            t278 = xsdbool( t279 = t284 ).
            IF t278 = abap_true.
              DATA(t285) = VALUE string( ).
              DATA t286 TYPE string.
              DATA(t287) = t271.
              t286 = t287.
              DATA(t288) = VALUE string( ).
              DATA(t289) = t286.
              DATA(t290) = 1.
              DATA t291 TYPE i.
              DATA(t292) = t286.
              DATA(t293) = strlen( t292 ).
              t291 = t293.
              DATA(t294) = strlen( t289 ).
              IF t290 < 0.
                t290 = t290 + t294.
                IF t290 < 0.
                  t290 = 0.
                ENDIF.
              ENDIF.
              IF t290 > t294 OR t291 <= 0.
                CLEAR t288.
              ELSE.
                IF t291 > t294 - t290.
                  t291 = t294 - t290.
                ENDIF.
                t288 = t289+t290(t291).
              ENDIF.
              t285 = t288.
              t271 = t285.
            ENDIF.
            DATA(t295) = t271.
            t270 = t295.
            t266 = t270.
            DATA t296 TYPE REF TO zcl_lnt_abstract_type.
            DATA t297 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t298 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t299) = CAST zcl_lnt_typed_identifier( t193 ).
            t298 = t299.
            t297 = t298.
            DATA t300 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t301) = CAST zcl_lnt_typed_identifier( t297 ).
            t300 = t301->type_cba0.
            t296 = t300.
            DATA t302 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t302.
            DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t303.
            t265 = NEW zcl_lnt_istructure_component( i_name = t266 i_type_9913 = t296 i_as_include = t302 i_suffix = t303 ).
            APPEND t265 TO t264->items.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t304 TYPE abap_bool.
    DATA(t305) = CAST zif_lnt_union_adffe656( t12 ).
    t304 = xsdbool( t305 IS BOUND ).
    IF t304 = abap_true.
      DATA t306 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t306.
      DATA(t307) = abap_true.
      IF t307 = abap_true.
        DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t309) = CAST zcl_lnt_abstract_token( t4 ).
        DATA t310 TYPE string.
        DATA(t311) = CAST zcl_lnt_syntax_input( t2 ).
        t310 = t311->filename.
        DATA t312 TYPE REF TO zif_lnt_union_ea265422.
        DATA t313 TYPE REF TO zif_lnt_union_adffe656.
        DATA(t314) = CAST zif_lnt_union_adffe656( t12 ).
        t313 = t314.
        t312 ?= t313.
        DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t315.
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t316.
        t308 = NEW zcl_lnt_typed_identifier( i_token = t309 i_filename = t310 i_type_9913 = t312 i_meta = t315 i_value = t316 ).
        t306 = t308.
      ELSE.
        DATA t317 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t317.
        t306 = t317.
      ENDIF.
      result = t306.
      RETURN.
    ELSE.
      DATA t318 TYPE abap_bool.
      DATA t319 TYPE i.
      DATA(t320) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
      t319 = lines( t320->items ).
      DATA(t321) = 0.
      t318 = xsdbool( t319 = t321 ).
      IF t318 = abap_true.
        DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t322.
        result = t322.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t323 TYPE string.
    DATA t324 TYPE string.
    DATA t325 TYPE string.
    DATA(t326) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    t325 = t326->value.
    DATA t327 TYPE string.
    DATA t328 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t329) = CAST zcl_lnt_abstract_token( t4 ).
    t328 = t329.
    DATA t330 TYPE string.
    DATA(t331) = CAST zcl_lnt_abstract_token( t328 ).
    t330 = t331->str.
    t327 = t330.
    DATA(t332) = strlen( t325 ).
    t324 = |{ t325 }{ t327 }|.
    t323 = t324.
    DATA t333 TYPE abap_bool.
    DATA t334 TYPE abap_bool.
    DATA t335 TYPE string.
    DATA t336 TYPE REF TO zcl_lnt_current_scope.
    DATA(t337) = CAST zcl_lnt_syntax_input( t2 ).
    t336 = t337->scope.
    t335 = t336->get_type(  ).
    DATA(t338) = |class_definition|.
    t334 = xsdbool( t335 = t338 ).
    t333 = t334.
    IF t334 = abap_false.
      DATA t339 TYPE abap_bool.
      DATA t340 TYPE string.
      DATA t341 TYPE REF TO zcl_lnt_current_scope.
      DATA(t342) = CAST zcl_lnt_syntax_input( t2 ).
      t341 = t342->scope.
      t340 = t341->get_type(  ).
      DATA(t343) = |interface|.
      t339 = xsdbool( t340 = t343 ).
      t333 = t339.
    ENDIF.
    IF t333 = abap_true.
      DATA t344 TYPE string.
      DATA t345 TYPE string.
      DATA t346 TYPE string.
      DATA t347 TYPE REF TO zcl_lnt_current_scope.
      DATA(t348) = CAST zcl_lnt_syntax_input( t2 ).
      t347 = t348->scope.
      t346 = t347->get_name(  ).
      DATA(t349) = |=>|.
      DATA(t350) = strlen( t346 ).
      t345 = |{ t346 }{ t349 }|.
      DATA(t351) = t323.
      DATA(t352) = strlen( t345 ).
      t344 = |{ t345 }{ t351 }|.
      t323 = t344.
    ENDIF.
    DATA t353 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t353.
    DATA(t354) = abap_true.
    IF t354 = abap_true.
      DATA t355 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t355.
      DATA(t356) = CAST zcl_lnt_abstract_token( t4 ).
      DATA t357 TYPE string.
      DATA(t358) = CAST zcl_lnt_syntax_input( t2 ).
      t357 = t358->filename.
      DATA t359 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t359.
      DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t361.
      DATA(t362) = abap_true.
      IF t362 = abap_true.
        DATA(t363) = t323.
        DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t364->has = abap_true.
        t364->value = t363.
        t361 = t364.
      ELSE.
        DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t365.
        t361 = t365.
      ENDIF.
      DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t366.
      DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t367.
      t359 = NEW zcl_lnt_structure_type( i_components = t360 i_qualified_name = t361 i_ddic_name = t366 i_description = t367 ).
      DATA t368 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t368.
      DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t369.
      t355 = NEW zcl_lnt_typed_identifier( i_token = t356 i_filename = t357 i_type_9913 = t359 i_meta = t368 i_value = t369 ).
      t353 = t355.
    ELSE.
      DATA t370 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t370.
      t353 = t370.
    ENDIF.
    result = t353.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d974_3b13427e2362.
  ENDMETHOD.
ENDCLASS.
