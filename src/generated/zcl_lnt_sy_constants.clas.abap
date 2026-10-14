* TS: src/abap/5_syntax/structures/constants.ts:12:1 Constants
CLASS zcl_lnt_sy_constants DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_28fac025.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_constants IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zcl_lnt_expression_node( t5 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = CAST zcl_lnt_expression_node( t5 ).
      t14 = t15.
      t13 = t14->get_first_token(  ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = CAST zcl_lnt_abstract_token( t3 ).
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = CAST zcl_lnt_abstract_token( t17 ).
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t23.
      DATA t24 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA(t27) = |Constants, structure, unexpected node|.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t27.
        t25 = t28.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t25 = t29.
      ENDIF.
      t24 = NEW zcx_lnt_assert_error( i_message_26cb = t25 ).
      t23 = NEW #( ).
      t23->payload = t24.
      RAISE EXCEPTION t23.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t33 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t34 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA(t35) = NEW zlnt_runtime_map__abd6fd794ffb(  ).
    t34 = t35.
    DATA(t36) = CAST zlnt_runtime_map__abd6fd794ffb( t34 ).
    t33 = t36.
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t40) = CAST zcl_lnt_structure_node( t1 ).
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t42) = CAST zcl_lnt_abstract_node( t39 ).
    t41 = t42->children.
    t38 = t41.
    t37 ?= t38.
    DATA t43 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t43.
    DATA t44 TYPE REF TO object.
    CLEAR t44.
    LOOP AT t37->items INTO t44.
      t43 ?= t44.
      DATA t45 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t46 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t47 TYPE REF TO object.
      DATA(t48) = CAST zif_lnt_union_8249fcb1( t43 ).
      t47 = t48->get_db65(  ).
      DATA t49 TYPE REF TO object.
      t49 = t47.
      t46 ?= t49.
      t45 = t46.
      DATA t50 TYPE abap_bool.
      DATA t51 TYPE abap_bool.
      DATA(t52) = CAST zif_lnt_union_8249fcb1( t43 ).
      t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_statement_node ).
      t50 = t51.
      IF t51 = abap_true.
        DATA t53 TYPE abap_bool.
        DATA(t54) = CAST zif_lnt_union_dc0fb493( t45 ).
        t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_st_statem_constant ).
        t50 = t53.
      ENDIF.
      IF t50 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t57) = NEW zcl_lnt_sy_statem_constant(  ).
        DATA t58 TYPE REF TO zcl_lnt_statement_node.
        DATA(t59) = CAST zif_lnt_union_8249fcb1( t43 ).
        DATA t60 TYPE REF TO object.
        t60 = t59.
        t58 ?= t60.
        DATA(t61) = CAST zcl_lnt_syntax_input( t2 ).
        t56 = t57->run_syntax( i_node = t58 i_input_967e = t61 ).
        t55 = t56.
        DATA t62 TYPE abap_bool.
        DATA(t63) = CAST zcl_lnt_typed_identifier( t55 ).
        t62 = xsdbool( t63 IS BOUND ).
        IF t62 = abap_true.
          DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
          DATA t65 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t65.
          DATA(t66) = VALUE string( ).
          DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t68) = CAST zcl_lnt_typed_identifier( t55 ).
          t67 = t68.
          DATA(t69) = VALUE string( ).
          DATA t70 TYPE string.
          DATA t71 TYPE string.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          DATA t73 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t74) = CAST zcl_lnt_fi_identifier( t67 ).
          t73 = t74->token.
          t72 = t73.
          DATA t75 TYPE string.
          DATA(t76) = CAST zcl_lnt_abstract_token( t72 ).
          t75 = t76->str.
          t71 = t75.
          t70 = t71.
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = VALUE string( ).
          DATA(t79) = t70.
          DATA(t80) = 0.
          DATA(t81) = 1.
          DATA(t82) = strlen( t79 ).
          IF t80 < 0.
            t80 = t80 + t82.
            IF t80 < 0.
              t80 = 0.
            ENDIF.
          ENDIF.
          IF t80 > t82 OR t81 <= 0.
            CLEAR t78.
          ELSE.
            IF t81 > t82 - t80.
              t81 = t82 - t80.
            ENDIF.
            t78 = t79+t80(t81).
          ENDIF.
          DATA(t83) = |!|.
          t77 = xsdbool( t78 = t83 ).
          IF t77 = abap_true.
            DATA(t84) = VALUE string( ).
            DATA t85 TYPE string.
            DATA(t86) = t70.
            t85 = t86.
            DATA(t87) = VALUE string( ).
            DATA(t88) = t85.
            DATA(t89) = 1.
            DATA t90 TYPE i.
            DATA(t91) = t85.
            DATA(t92) = strlen( t91 ).
            t90 = t92.
            DATA(t93) = strlen( t88 ).
            IF t89 < 0.
              t89 = t89 + t93.
              IF t89 < 0.
                t89 = 0.
              ENDIF.
            ENDIF.
            IF t89 > t93 OR t90 <= 0.
              CLEAR t87.
            ELSE.
              IF t90 > t93 - t89.
                t90 = t93 - t89.
              ENDIF.
              t87 = t88+t89(t90).
            ENDIF.
            t84 = t87.
            t70 = t84.
          ENDIF.
          DATA(t94) = t70.
          t69 = t94.
          t66 = t69.
          DATA t95 TYPE REF TO zcl_lnt_abstract_type.
          DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t97) = CAST zcl_lnt_typed_identifier( t55 ).
          t96 = t97.
          DATA t98 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t99) = CAST zcl_lnt_typed_identifier( t96 ).
          t98 = t99->type_cba0.
          t95 = t98.
          DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t100.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          t65 = NEW zcl_lnt_istructure_component( i_name = t66 i_type_9913 = t95 i_as_include = t100 i_suffix = t101 ).
          APPEND t65 TO t64->items.
          DATA t102 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          CLEAR t102.
          DATA(t103) = CAST zlnt_runtime_map__abd6fd794ffb( t32 ).
          DATA(t104) = VALUE string( ).
          DATA t105 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t106) = CAST zcl_lnt_typed_identifier( t55 ).
          t105 = t106.
          DATA(t107) = VALUE string( ).
          DATA t108 TYPE string.
          DATA t109 TYPE string.
          DATA t110 TYPE REF TO zcl_lnt_abstract_token.
          DATA t111 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t112) = CAST zcl_lnt_fi_identifier( t105 ).
          t111 = t112->token.
          t110 = t111.
          DATA t113 TYPE string.
          DATA(t114) = CAST zcl_lnt_abstract_token( t110 ).
          t113 = t114->str.
          t109 = t113.
          t108 = t109.
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = VALUE string( ).
          DATA(t117) = t108.
          DATA(t118) = 0.
          DATA(t119) = 1.
          DATA(t120) = strlen( t117 ).
          IF t118 < 0.
            t118 = t118 + t120.
            IF t118 < 0.
              t118 = 0.
            ENDIF.
          ENDIF.
          IF t118 > t120 OR t119 <= 0.
            CLEAR t116.
          ELSE.
            IF t119 > t120 - t118.
              t119 = t120 - t118.
            ENDIF.
            t116 = t117+t118(t119).
          ENDIF.
          DATA(t121) = |!|.
          t115 = xsdbool( t116 = t121 ).
          IF t115 = abap_true.
            DATA(t122) = VALUE string( ).
            DATA t123 TYPE string.
            DATA(t124) = t108.
            t123 = t124.
            DATA(t125) = VALUE string( ).
            DATA(t126) = t123.
            DATA(t127) = 1.
            DATA t128 TYPE i.
            DATA(t129) = t123.
            DATA(t130) = strlen( t129 ).
            t128 = t130.
            DATA(t131) = strlen( t126 ).
            IF t127 < 0.
              t127 = t127 + t131.
              IF t127 < 0.
                t127 = 0.
              ENDIF.
            ENDIF.
            IF t127 > t131 OR t128 <= 0.
              CLEAR t125.
            ELSE.
              IF t128 > t131 - t127.
                t128 = t131 - t127.
              ENDIF.
              t125 = t126+t127(t128).
            ENDIF.
            t122 = t125.
            t108 = t122.
          ENDIF.
          DATA(t132) = t108.
          t107 = t132.
          t104 = t107.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t134 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t135) = CAST zcl_lnt_typed_identifier( t55 ).
          t134 = t135.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t137) = CAST zcl_lnt_typed_identifier( t134 ).
          t136 = t137->value.
          t133 = t136.
          t102 = t103->set( p0 = t104 p1 = t133 ).
        ENDIF.
      ELSE.
        DATA t138 TYPE abap_bool.
        DATA t139 TYPE abap_bool.
        DATA(t140) = CAST zif_lnt_union_8249fcb1( t43 ).
        t139 = xsdbool( t140 IS BOUND AND t140 IS INSTANCE OF zcl_lnt_structure_node ).
        t138 = t139.
        IF t139 = abap_true.
          DATA t141 TYPE abap_bool.
          DATA(t142) = CAST zif_lnt_union_dc0fb493( t45 ).
          t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_sr_constants ).
          t138 = t141.
        ENDIF.
        IF t138 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_shape_28fac025.
          DATA t144 TYPE REF TO zcl_lnt_shape_28fac025.
          DATA(t145) = NEW zcl_lnt_sy_constants(  ).
          DATA t146 TYPE REF TO zcl_lnt_structure_node.
          DATA(t147) = CAST zif_lnt_union_8249fcb1( t43 ).
          DATA t148 TYPE REF TO object.
          t148 = t147.
          t146 ?= t148.
          DATA(t149) = CAST zcl_lnt_syntax_input( t2 ).
          t144 = t145->run_syntax( i_node = t146 i_input_967e = t149 ).
          t143 = t144.
          DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t152) = CAST zcl_lnt_shape_28fac025( t143 ).
          t151 = t152->type_cba0.
          t150 = t151.
          DATA t153 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          DATA t154 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          DATA(t155) = CAST zcl_lnt_shape_28fac025( t143 ).
          t154 = t155->values.
          t153 = t154.
          DATA t156 TYPE abap_bool.
          DATA(t157) = CAST zcl_lnt_typed_identifier( t150 ).
          t156 = xsdbool( t157 IS BOUND ).
          IF t156 = abap_true.
            DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
            DATA t159 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t159.
            DATA(t160) = VALUE string( ).
            DATA t161 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t163) = CAST zcl_lnt_typed_identifier( t150 ).
            t162 = t163.
            t161 = t162.
            DATA(t164) = VALUE string( ).
            DATA t165 TYPE string.
            DATA t166 TYPE string.
            DATA t167 TYPE REF TO zcl_lnt_abstract_token.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t169) = CAST zcl_lnt_fi_identifier( t161 ).
            t168 = t169->token.
            t167 = t168.
            DATA t170 TYPE string.
            DATA(t171) = CAST zcl_lnt_abstract_token( t167 ).
            t170 = t171->str.
            t166 = t170.
            t165 = t166.
            DATA(t172) = VALUE abap_bool( ).
            DATA(t173) = VALUE string( ).
            DATA(t174) = t165.
            DATA(t175) = 0.
            DATA(t176) = 1.
            DATA(t177) = strlen( t174 ).
            IF t175 < 0.
              t175 = t175 + t177.
              IF t175 < 0.
                t175 = 0.
              ENDIF.
            ENDIF.
            IF t175 > t177 OR t176 <= 0.
              CLEAR t173.
            ELSE.
              IF t176 > t177 - t175.
                t176 = t177 - t175.
              ENDIF.
              t173 = t174+t175(t176).
            ENDIF.
            DATA(t178) = |!|.
            t172 = xsdbool( t173 = t178 ).
            IF t172 = abap_true.
              DATA(t179) = VALUE string( ).
              DATA t180 TYPE string.
              DATA(t181) = t165.
              t180 = t181.
              DATA(t182) = VALUE string( ).
              DATA(t183) = t180.
              DATA(t184) = 1.
              DATA t185 TYPE i.
              DATA(t186) = t180.
              DATA(t187) = strlen( t186 ).
              t185 = t187.
              DATA(t188) = strlen( t183 ).
              IF t184 < 0.
                t184 = t184 + t188.
                IF t184 < 0.
                  t184 = 0.
                ENDIF.
              ENDIF.
              IF t184 > t188 OR t185 <= 0.
                CLEAR t182.
              ELSE.
                IF t185 > t188 - t184.
                  t185 = t188 - t184.
                ENDIF.
                t182 = t183+t184(t185).
              ENDIF.
              t179 = t182.
              t165 = t179.
            ENDIF.
            DATA(t189) = t165.
            t164 = t189.
            t160 = t164.
            DATA t190 TYPE REF TO zcl_lnt_abstract_type.
            DATA t191 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t193) = CAST zcl_lnt_typed_identifier( t150 ).
            t192 = t193.
            t191 = t192.
            DATA t194 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t195) = CAST zcl_lnt_typed_identifier( t191 ).
            t194 = t195->type_cba0.
            t190 = t194.
            DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t196.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t197.
            t159 = NEW zcl_lnt_istructure_component( i_name = t160 i_type_9913 = t190 i_as_include = t196 i_suffix = t197 ).
            APPEND t159 TO t158->items.
            DATA t198 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
            CLEAR t198.
            DATA(t199) = CAST zlnt_runtime_map__abd6fd794ffb( t32 ).
            DATA(t200) = VALUE string( ).
            DATA t201 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t203) = CAST zcl_lnt_typed_identifier( t150 ).
            t202 = t203.
            t201 = t202.
            DATA(t204) = VALUE string( ).
            DATA t205 TYPE string.
            DATA t206 TYPE string.
            DATA t207 TYPE REF TO zcl_lnt_abstract_token.
            DATA t208 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t209) = CAST zcl_lnt_fi_identifier( t201 ).
            t208 = t209->token.
            t207 = t208.
            DATA t210 TYPE string.
            DATA(t211) = CAST zcl_lnt_abstract_token( t207 ).
            t210 = t211->str.
            t206 = t210.
            t205 = t206.
            DATA(t212) = VALUE abap_bool( ).
            DATA(t213) = VALUE string( ).
            DATA(t214) = t205.
            DATA(t215) = 0.
            DATA(t216) = 1.
            DATA(t217) = strlen( t214 ).
            IF t215 < 0.
              t215 = t215 + t217.
              IF t215 < 0.
                t215 = 0.
              ENDIF.
            ENDIF.
            IF t215 > t217 OR t216 <= 0.
              CLEAR t213.
            ELSE.
              IF t216 > t217 - t215.
                t216 = t217 - t215.
              ENDIF.
              t213 = t214+t215(t216).
            ENDIF.
            DATA(t218) = |!|.
            t212 = xsdbool( t213 = t218 ).
            IF t212 = abap_true.
              DATA(t219) = VALUE string( ).
              DATA t220 TYPE string.
              DATA(t221) = t205.
              t220 = t221.
              DATA(t222) = VALUE string( ).
              DATA(t223) = t220.
              DATA(t224) = 1.
              DATA t225 TYPE i.
              DATA(t226) = t220.
              DATA(t227) = strlen( t226 ).
              t225 = t227.
              DATA(t228) = strlen( t223 ).
              IF t224 < 0.
                t224 = t224 + t228.
                IF t224 < 0.
                  t224 = 0.
                ENDIF.
              ENDIF.
              IF t224 > t228 OR t225 <= 0.
                CLEAR t222.
              ELSE.
                IF t225 > t228 - t224.
                  t225 = t228 - t224.
                ENDIF.
                t222 = t223+t224(t225).
              ENDIF.
              t219 = t222.
              t205 = t219.
            ENDIF.
            DATA(t229) = t205.
            t204 = t229.
            t200 = t204.
            DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t230.
            DATA(t231) = CAST zlnt_runtime_map__abd6fd794ffb( t153 ).
            IF t231 IS BOUND.
              CREATE OBJECT t230.
              t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              DATA t232 TYPE REF TO object.
              t232 = t231.
              t230->oval = t232.
            ENDIF.
            t198 = t199->set( p0 = t200 p1 = t230 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t233 TYPE abap_bool.
    DATA t234 TYPE i.
    DATA(t235) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    t234 = lines( t235->items ).
    DATA(t236) = 0.
    t233 = xsdbool( t234 = t236 ).
    IF t233 = abap_true.
      DATA t237 TYPE REF TO zcl_lnt_shape_28fac025.
      CLEAR t237.
      DATA t238 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t238.
      DATA t239 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t239.
      DATA(t240) = abap_true.
      IF t240 = abap_true.
        DATA(t241) = CAST zlnt_runtime_map__abd6fd794ffb( t32 ).
        t239 = t241.
      ELSE.
        DATA t242 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
        CLEAR t242.
        t239 = t242.
      ENDIF.
      t237 = NEW zcl_lnt_shape_28fac025( i_type_9913 = t238 i_values = t239 ).
      result = t237.
      RETURN.
    ENDIF.
    DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t243.
    DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t244.
    DATA t245 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t246) = CAST zcl_lnt_abstract_token( t3 ).
    t245 = t246.
    DATA t247 TYPE string.
    DATA(t248) = CAST zcl_lnt_syntax_input( t2 ).
    t247 = t248->filename.
    DATA t249 TYPE REF TO zcl_lnt_structure_type.
    DATA(t250) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t253.
    t249 = NEW zcl_lnt_structure_type( i_components = t250 i_qualified_name = t251 i_ddic_name = t252 i_description = t253 ).
    DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t254.
    DATA(t255) = abap_true.
    IF t255 = abap_true.
      DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t258.
      t257 = t258.
      DATA(t259) = CAST zlnt_runtime_arra_8ecd6afe19e0( t257 ).
      DATA(t260) = |read_only|.
      APPEND t260 TO t259->items.
      DATA(t261) = CAST zlnt_runtime_arra_8ecd6afe19e0( t257 ).
      DATA(t262) = |static|.
      APPEND t262 TO t261->items.
      DATA(t263) = CAST zlnt_runtime_arra_8ecd6afe19e0( t257 ).
      t256 = t263.
      t254 = t256.
    ELSE.
      DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t264.
      t254 = t264.
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    t244 = NEW zcl_lnt_typed_identifier( i_token = t245 i_filename = t247 i_type_9913 = t249 i_meta = t254 i_value = t265 ).
    t243 = t244.
    DATA t266 TYPE REF TO zcl_lnt_shape_28fac025.
    CLEAR t266.
    DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t267.
    DATA(t268) = abap_true.
    IF t268 = abap_true.
      DATA(t269) = CAST zcl_lnt_typed_identifier( t243 ).
      t267 = t269.
    ELSE.
      DATA t270 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t270.
      t267 = t270.
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t271.
    DATA(t272) = abap_true.
    IF t272 = abap_true.
      DATA(t273) = CAST zlnt_runtime_map__abd6fd794ffb( t32 ).
      t271 = t273.
    ELSE.
      DATA t274 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t274.
      t271 = t274.
    ENDIF.
    t266 = NEW zcl_lnt_shape_28fac025( i_type_9913 = t267 i_values = t271 ).
    result = t266.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d969_6c1cdcca8bf8.
  ENDMETHOD.
ENDCLASS.
