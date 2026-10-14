* TS: src/abap/5_syntax/structures/data.ts:20:1 Data
CLASS zcl_lnt_sy_struct_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    CLASS-METHODS run_common_part_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_struct_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zif_lnt_union_1e9858bf.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_union_1e9858bf.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_node.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t11) = CAST zcl_lnt_structure_node( t1 ).
    t10 = t11.
    DATA t12 TYPE REF TO zif_lnt_node.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zif_lnt_node.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = CAST zcl_lnt_abstract_node( t10 ).
      t15 = t16->children.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      READ TABLE t15->items INDEX 1 INTO t17.
      t14 ?= t17.
      t12 = t14.
    ELSE.
      DATA t18 TYPE REF TO zif_lnt_node.
      CLEAR t18.
      t12 = t18.
    ENDIF.
    t9 = t12.
    t8 ?= t9.
    t7 = t8.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = CAST zif_lnt_union_8249fcb1( t7 ).
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t25) = CAST zif_lnt_union_8249fcb1( t7 ).
      t24 = t25.
      t23 = t24->get_children( ).
      t19 = t23.
    ENDIF.
    t6 = t19.
    t5 = t6.
    DATA t26 TYPE REF TO zif_lnt_union_1e9858bf.
    CLEAR t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zif_lnt_union_1e9858bf.
      CLEAR t29.
      t26 = t29.
    ELSE.
      DATA t30 TYPE REF TO zif_lnt_union_1e9858bf.
      DATA t31 TYPE REF TO zif_lnt_node.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
      t32 = t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      READ TABLE t32->items INDEX 4 INTO t34.
      t31 ?= t34.
      t30 ?= t31.
      t26 = t30.
    ENDIF.
    t4 = t26.
    t3 = t4.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE abap_bool.
    DATA(t38) = CAST zif_lnt_union_1e9858bf( t3 ).
    t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_token_node ).
    t36 = t37.
    IF t37 = abap_true.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE string.
      DATA t41 TYPE string.
      DATA t42 TYPE REF TO zcl_lnt_token_node.
      DATA t43 TYPE REF TO zcl_lnt_token_node.
      DATA(t44) = CAST zif_lnt_union_1e9858bf( t3 ).
      DATA t45 TYPE REF TO object.
      t45 = t44.
      t43 ?= t45.
      t42 = t43.
      DATA t46 TYPE string.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t49) = CAST zcl_lnt_token_node( t42 ).
      t48 = t49->token.
      t47 = t48.
      DATA t50 TYPE string.
      DATA(t51) = CAST zcl_lnt_abstract_token( t47 ).
      t50 = t51->str.
      t46 = t50.
      t41 = t46.
      DATA(t52) = strlen( t41 ).
      t40 = t41.
      IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t40 TO UPPER CASE.
      ELSE.
        t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
      ENDIF.
      DATA(t53) = |COMMON|.
      t39 = xsdbool( t40 = t53 ).
      t36 = t39.
    ENDIF.
    t35 = t36.
    DATA(t54) = t35.
    IF t54 = abap_true.
      DATA(t55) = CAST zcl_lnt_structure_node( t1 ).
      DATA(t56) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_struct_data=>run_common_part_syntax( i_node = t55 i_input_967e = t56 ).
      DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t57.
      result = t57.
      RETURN.
    ENDIF.
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    DATA t59 TYPE REF TO zcl_lnt_expression_node.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    DATA(t61) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    t60 = t61->find_first_expression( i_type_9913 = t62 ).
    t59 = t60.
    t58 = t59.
    DATA t63 TYPE REF TO zcl_lnt_abstract_token.
    DATA t64 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t65) = CAST zcl_lnt_expression_node( t58 ).
    t64 = t65->get_first_token( ).
    t63 = t64.
    DATA t66 TYPE abap_bool.
    DATA t67 TYPE int8.
    DATA t68 TYPE REF TO zcl_lnt_expression_node.
    DATA(t69) = CAST zcl_lnt_expression_node( t58 ).
    t68 = t69.
    DATA t70 TYPE int8.
    DATA(t71) = CAST zcl_lnt_expression_node( t68 ).
    t70 = t71->token_count.
    t67 = t70.
    DATA(t72) = CONV int8( 1 ).
    t66 = xsdbool( t67 > t72 ).
    IF t66 = abap_true.
      DATA t73 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t74 TYPE REF TO zcl_lnt_position.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t76) = CAST zcl_lnt_abstract_token( t63 ).
      t75 = t76.
      DATA t77 TYPE REF TO zcl_lnt_position.
      DATA(t78) = CAST zcl_lnt_abstract_token( t75 ).
      t77 = t78->start.
      t74 = t77.
      DATA t79 TYPE string.
      DATA(t80) = CAST zcl_lnt_expression_node( t58 ).
      t79 = t80->concat_tokens( ).
      t73 = NEW zcl_lnt_lx_identifier( i_start = t74 i_str = t79 ).
      t63 = t73.
    ENDIF.
    DATA t81 TYPE abap_bool.
    DATA(t82) = abap_false.
    t81 = t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t84 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t85 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA(t86) = NEW zlnt_runtime_map__a1006b231250( ).
    t85 = t86.
    DATA(t87) = CAST zlnt_runtime_map__a1006b231250( t85 ).
    t84 = t87.
    t83 = t84.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    t88 = t89.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t92 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t93) = CAST zcl_lnt_structure_node( t1 ).
    t92 = t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t95) = CAST zcl_lnt_abstract_node( t92 ).
    t94 = t95->children.
    t91 = t94.
    t90 ?= t91.
    DATA t96 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t96.
    DATA t97 TYPE REF TO object.
    CLEAR t97.
    LOOP AT t90->items INTO t97.
      t96 ?= t97.
      DATA t98 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t99 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t100 TYPE REF TO object.
      DATA(t101) = CAST zif_lnt_union_8249fcb1( t96 ).
      t100 = t101->get_db65( ).
      DATA t102 TYPE REF TO object.
      t102 = t100.
      t99 ?= t102.
      t98 = t99.
      DATA t103 TYPE abap_bool.
      DATA t104 TYPE abap_bool.
      DATA(t105) = CAST zif_lnt_union_8249fcb1( t96 ).
      t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_statement_node ).
      t103 = t104.
      IF t104 = abap_true.
        DATA t106 TYPE abap_bool.
        DATA(t107) = CAST zif_lnt_union_dc0fb493( t98 ).
        t106 = xsdbool( t107 IS BOUND AND t107 IS INSTANCE OF zcl_lnt_st_data ).
        t103 = t106.
      ENDIF.
      IF t103 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t110) = NEW zcl_lnt_sy_statem_data( ).
        DATA t111 TYPE REF TO zcl_lnt_statement_node.
        DATA(t112) = CAST zif_lnt_union_8249fcb1( t96 ).
        DATA t113 TYPE REF TO object.
        t113 = t112.
        t111 ?= t113.
        DATA(t114) = CAST zcl_lnt_syntax_input( t2 ).
        t109 = t110->run_syntax( i_node = t111 i_input_967e = t114 ).
        t108 = t109.
        DATA t115 TYPE abap_bool.
        DATA(t116) = CAST zcl_lnt_typed_identifier( t108 ).
        t115 = xsdbool( t116 IS BOUND ).
        IF t115 = abap_true.
          DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
          DATA t118 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t118.
          DATA(t119) = VALUE string( ).
          DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t121 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t122) = CAST zcl_lnt_typed_identifier( t108 ).
          t121 = t122.
          t120 = t121.
          DATA(t123) = VALUE string( ).
          DATA t124 TYPE string.
          DATA t125 TYPE string.
          DATA t126 TYPE REF TO zcl_lnt_abstract_token.
          DATA t127 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t128) = CAST zcl_lnt_fi_identifier( t120 ).
          t127 = t128->token.
          t126 = t127.
          DATA t129 TYPE string.
          DATA(t130) = CAST zcl_lnt_abstract_token( t126 ).
          t129 = t130->str.
          t125 = t129.
          t124 = t125.
          DATA(t131) = VALUE abap_bool( ).
          DATA(t132) = VALUE string( ).
          DATA(t133) = t124.
          DATA(t134) = 0.
          DATA(t135) = 1.
          DATA(t136) = strlen( t133 ).
          IF t134 < 0.
            t134 = t134 + t136.
            IF t134 < 0.
              t134 = 0.
            ENDIF.
          ENDIF.
          IF t134 > t136 OR t135 <= 0.
            CLEAR t132.
          ELSE.
            IF t135 > t136 - t134.
              t135 = t136 - t134.
            ENDIF.
            t132 = t133+t134(t135).
          ENDIF.
          DATA(t137) = |!|.
          t131 = xsdbool( t132 = t137 ).
          IF t131 = abap_true.
            DATA(t138) = VALUE string( ).
            DATA t139 TYPE string.
            DATA(t140) = t124.
            t139 = t140.
            DATA(t141) = VALUE string( ).
            DATA(t142) = t139.
            DATA(t143) = 1.
            DATA t144 TYPE i.
            DATA(t145) = t139.
            DATA(t146) = strlen( t145 ).
            t144 = t146.
            DATA(t147) = strlen( t142 ).
            IF t143 < 0.
              t143 = t143 + t147.
              IF t143 < 0.
                t143 = 0.
              ENDIF.
            ENDIF.
            IF t143 > t147 OR t144 <= 0.
              CLEAR t141.
            ELSE.
              IF t144 > t147 - t143.
                t144 = t147 - t143.
              ENDIF.
              t141 = t142+t143(t144).
            ENDIF.
            t138 = t141.
            t124 = t138.
          ENDIF.
          DATA(t148) = t124.
          t123 = t148.
          t119 = t123.
          DATA t149 TYPE REF TO zcl_lnt_abstract_type.
          DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t152) = CAST zcl_lnt_typed_identifier( t108 ).
          t151 = t152.
          t150 = t151.
          DATA t153 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t154) = CAST zcl_lnt_typed_identifier( t150 ).
          t153 = t154->type_cba0.
          t149 = t153.
          DATA t155 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t155.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          t118 = NEW zcl_lnt_istructure_component( i_name = t119 i_type_9913 = t149 i_as_include = t155 i_suffix = t156 ).
          APPEND t118 TO t117->items.
          DATA(t157) = VALUE abap_bool( ).
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t162) = CAST zcl_lnt_typed_identifier( t108 ).
          t161 = t162.
          t160 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t164) = CAST zcl_lnt_typed_identifier( t160 ).
          t163 = t164->value.
          t159 = t163.
          t158 = t159.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          t165 = t166.
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = VALUE abap_bool( ).
          DATA(t169) = CAST zlnt_runtime_dyna_a429568d5be8( t158 ).
          IF t169 IS INITIAL.
            t168 = abap_true.
          ENDIF.
          t167 = xsdbool( t168 = abap_false ).
          t157 = t167.
          IF t157 = abap_true.
            DATA t170 TYPE REF TO zlnt_runtime_map__a1006b231250.
            CLEAR t170.
            DATA(t171) = CAST zlnt_runtime_map__a1006b231250( t83 ).
            DATA(t172) = VALUE string( ).
            DATA t173 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t174 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t175) = CAST zcl_lnt_typed_identifier( t108 ).
            t174 = t175.
            t173 = t174.
            DATA(t176) = VALUE string( ).
            DATA t177 TYPE string.
            DATA t178 TYPE string.
            DATA t179 TYPE REF TO zcl_lnt_abstract_token.
            DATA t180 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t181) = CAST zcl_lnt_fi_identifier( t173 ).
            t180 = t181->token.
            t179 = t180.
            DATA t182 TYPE string.
            DATA(t183) = CAST zcl_lnt_abstract_token( t179 ).
            t182 = t183->str.
            t178 = t182.
            t177 = t178.
            DATA(t184) = VALUE abap_bool( ).
            DATA(t185) = VALUE string( ).
            DATA(t186) = t177.
            DATA(t187) = 0.
            DATA(t188) = 1.
            DATA(t189) = strlen( t186 ).
            IF t187 < 0.
              t187 = t187 + t189.
              IF t187 < 0.
                t187 = 0.
              ENDIF.
            ENDIF.
            IF t187 > t189 OR t188 <= 0.
              CLEAR t185.
            ELSE.
              IF t188 > t189 - t187.
                t188 = t189 - t187.
              ENDIF.
              t185 = t186+t187(t188).
            ENDIF.
            DATA(t190) = |!|.
            t184 = xsdbool( t185 = t190 ).
            IF t184 = abap_true.
              DATA(t191) = VALUE string( ).
              DATA t192 TYPE string.
              DATA(t193) = t177.
              t192 = t193.
              DATA(t194) = VALUE string( ).
              DATA(t195) = t192.
              DATA(t196) = 1.
              DATA t197 TYPE i.
              DATA(t198) = t192.
              DATA(t199) = strlen( t198 ).
              t197 = t199.
              DATA(t200) = strlen( t195 ).
              IF t196 < 0.
                t196 = t196 + t200.
                IF t196 < 0.
                  t196 = 0.
                ENDIF.
              ENDIF.
              IF t196 > t200 OR t197 <= 0.
                CLEAR t194.
              ELSE.
                IF t197 > t200 - t196.
                  t197 = t200 - t196.
                ENDIF.
                t194 = t195+t196(t197).
              ENDIF.
              t191 = t194.
              t177 = t191.
            ENDIF.
            DATA(t201) = t177.
            t176 = t201.
            t172 = t176.
            DATA t202 TYPE string.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t206) = CAST zcl_lnt_typed_identifier( t108 ).
            t205 = t206.
            t204 = t205.
            DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t208) = CAST zcl_lnt_typed_identifier( t204 ).
            t207 = t208->value.
            t203 = t207.
            t202 = t203->as_string( ).
            t170 = t171->set( p0 = t172 p1 = t202 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA t209 TYPE abap_bool.
        DATA t210 TYPE abap_bool.
        DATA(t211) = CAST zif_lnt_union_8249fcb1( t96 ).
        t210 = xsdbool( t211 IS BOUND AND t211 IS INSTANCE OF zcl_lnt_structure_node ).
        t209 = t210.
        IF t210 = abap_true.
          DATA t212 TYPE abap_bool.
          DATA(t213) = CAST zif_lnt_union_dc0fb493( t98 ).
          t212 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_sr_data ).
          t209 = t212.
        ENDIF.
        IF t209 = abap_true.
          DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t216 TYPE REF TO zcl_lnt_structure_node.
          DATA(t217) = CAST zif_lnt_union_8249fcb1( t96 ).
          DATA t218 TYPE REF TO object.
          t218 = t217.
          t216 ?= t218.
          DATA(t219) = CAST zcl_lnt_syntax_input( t2 ).
          t215 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t216 i_input_967e = t219 ).
          t214 = t215.
          DATA t220 TYPE abap_bool.
          DATA(t221) = CAST zcl_lnt_typed_identifier( t214 ).
          t220 = xsdbool( t221 IS BOUND ).
          IF t220 = abap_true.
            DATA(t222) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
            DATA t223 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t223.
            DATA(t224) = VALUE string( ).
            DATA t225 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t226 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t227) = CAST zcl_lnt_typed_identifier( t214 ).
            t226 = t227.
            t225 = t226.
            DATA(t228) = VALUE string( ).
            DATA t229 TYPE string.
            DATA t230 TYPE string.
            DATA t231 TYPE REF TO zcl_lnt_abstract_token.
            DATA t232 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t233) = CAST zcl_lnt_fi_identifier( t225 ).
            t232 = t233->token.
            t231 = t232.
            DATA t234 TYPE string.
            DATA(t235) = CAST zcl_lnt_abstract_token( t231 ).
            t234 = t235->str.
            t230 = t234.
            t229 = t230.
            DATA(t236) = VALUE abap_bool( ).
            DATA(t237) = VALUE string( ).
            DATA(t238) = t229.
            DATA(t239) = 0.
            DATA(t240) = 1.
            DATA(t241) = strlen( t238 ).
            IF t239 < 0.
              t239 = t239 + t241.
              IF t239 < 0.
                t239 = 0.
              ENDIF.
            ENDIF.
            IF t239 > t241 OR t240 <= 0.
              CLEAR t237.
            ELSE.
              IF t240 > t241 - t239.
                t240 = t241 - t239.
              ENDIF.
              t237 = t238+t239(t240).
            ENDIF.
            DATA(t242) = |!|.
            t236 = xsdbool( t237 = t242 ).
            IF t236 = abap_true.
              DATA(t243) = VALUE string( ).
              DATA t244 TYPE string.
              DATA(t245) = t229.
              t244 = t245.
              DATA(t246) = VALUE string( ).
              DATA(t247) = t244.
              DATA(t248) = 1.
              DATA t249 TYPE i.
              DATA(t250) = t244.
              DATA(t251) = strlen( t250 ).
              t249 = t251.
              DATA(t252) = strlen( t247 ).
              IF t248 < 0.
                t248 = t248 + t252.
                IF t248 < 0.
                  t248 = 0.
                ENDIF.
              ENDIF.
              IF t248 > t252 OR t249 <= 0.
                CLEAR t246.
              ELSE.
                IF t249 > t252 - t248.
                  t249 = t252 - t248.
                ENDIF.
                t246 = t247+t248(t249).
              ENDIF.
              t243 = t246.
              t229 = t243.
            ENDIF.
            DATA(t253) = t229.
            t228 = t253.
            t224 = t228.
            DATA t254 TYPE REF TO zcl_lnt_abstract_type.
            DATA t255 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t256 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t257) = CAST zcl_lnt_typed_identifier( t214 ).
            t256 = t257.
            t255 = t256.
            DATA t258 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t259) = CAST zcl_lnt_typed_identifier( t255 ).
            t258 = t259->type_cba0.
            t254 = t258.
            DATA t260 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t260.
            DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t261.
            t223 = NEW zcl_lnt_istructure_component( i_name = t224 i_type_9913 = t254 i_as_include = t260 i_suffix = t261 ).
            APPEND t223 TO t222->items.
          ENDIF.
        ELSE.
          DATA t262 TYPE abap_bool.
          DATA t263 TYPE abap_bool.
          DATA(t264) = CAST zif_lnt_union_8249fcb1( t96 ).
          t263 = xsdbool( t264 IS BOUND AND t264 IS INSTANCE OF zcl_lnt_statement_node ).
          t262 = t263.
          IF t263 = abap_true.
            DATA t265 TYPE abap_bool.
            DATA(t266) = CAST zif_lnt_union_dc0fb493( t98 ).
            t265 = xsdbool( t266 IS BOUND AND t266 IS INSTANCE OF zcl_lnt_data_begin ).
            t262 = t265.
          ENDIF.
          IF t262 = abap_true.
            DATA t267 TYPE abap_bool.
            DATA t268 TYPE REF TO zcl_lnt_abstract_token.
            DATA t269 TYPE REF TO zcl_lnt_statement_node.
            DATA(t270) = CAST zif_lnt_union_8249fcb1( t96 ).
            DATA t271 TYPE REF TO object.
            t271 = t270.
            t269 ?= t271.
            DATA(t272) = |OCCURS|.
            t268 = t269->find_direct_token_by_text( i_text = t272 ).
            t267 = xsdbool( t268 IS BOUND ).
            IF t267 = abap_true.
              DATA(t273) = abap_true.
              t81 = t273.
            ENDIF.
          ELSE.
            DATA t274 TYPE abap_bool.
            DATA t275 TYPE abap_bool.
            DATA(t276) = CAST zif_lnt_union_8249fcb1( t96 ).
            t275 = xsdbool( t276 IS BOUND AND t276 IS INSTANCE OF zcl_lnt_statement_node ).
            t274 = t275.
            IF t275 = abap_true.
              DATA t277 TYPE abap_bool.
              DATA(t278) = CAST zif_lnt_union_dc0fb493( t98 ).
              t277 = xsdbool( t278 IS BOUND AND t278 IS INSTANCE OF zcl_lnt_st_include_type ).
              t274 = t277.
            ENDIF.
            IF t274 = abap_true.
              DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t281) = NEW zcl_lnt_sy_include_type( ).
              DATA t282 TYPE REF TO zcl_lnt_statement_node.
              DATA(t283) = CAST zif_lnt_union_8249fcb1( t96 ).
              DATA t284 TYPE REF TO object.
              t284 = t283.
              t282 ?= t284.
              DATA(t285) = CAST zcl_lnt_syntax_input( t2 ).
              t280 = t281->run_syntax( i_node = t282 i_input_967e = t285 ).
              t279 = t280.
              DATA t286 TYPE abap_bool.
              DATA t287 TYPE REF TO object.
              DATA(t288) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
              DATA t289 TYPE REF TO object.
              t289 = t288->as_ref( ).
              t287 ?= t289.
              t286 = xsdbool( t287 IS BOUND AND t287 IS INSTANCE OF zcl_lnt_void_type ).
              IF t286 = abap_true.
                DATA t290 TYPE abap_bool.
                DATA(t291) = t81.
                DATA(t292) = abap_true.
                t290 = xsdbool( t291 = t292 ).
                IF t290 = abap_true.
                  DATA t293 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t294 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t295 TYPE REF TO zcl_lnt_void_type.
                  DATA(t296) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
                  DATA t297 TYPE REF TO object.
                  t297 = t296->as_ref( ).
                  t295 ?= t297.
                  DATA t298 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t299) = abap_true.
                  DATA(t300) = |DEFAULT|.
                  DATA t301 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t301.
                  DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t302.
                  t298 = NEW zcl_lnt_itable_options( i_with_header = t299 i_key_type = t300 i_primary_key = t301 i_secondary = t302 ).
                  DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t303.
                  DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t304.
                  t294 = NEW zcl_lnt_ty_table_type( i_row_type = t295 i_options = t298 i_qualified_name = t303 i_description = t304 ).
                  t293 = t294.
                  DATA t305 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t305.
                  DATA(t306) = abap_true.
                  IF t306 = abap_true.
                    DATA t307 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t308) = CAST zcl_lnt_abstract_token( t63 ).
                    DATA t309 TYPE string.
                    DATA(t310) = CAST zcl_lnt_syntax_input( t2 ).
                    t309 = t310->filename.
                    DATA(t311) = CAST zcl_lnt_ty_table_type( t293 ).
                    DATA t312 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t312.
                    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t313.
                    t307 = NEW zcl_lnt_typed_identifier( i_token = t308 i_filename = t309 i_type_9913 = t311 i_meta = t312 i_value = t313 ).
                    t305 = t307.
                  ELSE.
                    DATA t314 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t314.
                    t305 = t314.
                  ENDIF.
                  result = t305.
                  RETURN.
                ELSE.
                  DATA t315 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t315.
                  DATA(t316) = abap_true.
                  IF t316 = abap_true.
                    DATA t317 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t318) = CAST zcl_lnt_abstract_token( t63 ).
                    DATA t319 TYPE string.
                    DATA(t320) = CAST zcl_lnt_syntax_input( t2 ).
                    t319 = t320->filename.
                    DATA t321 TYPE REF TO zcl_lnt_void_type.
                    DATA(t322) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
                    DATA t323 TYPE REF TO object.
                    t323 = t322->as_ref( ).
                    t321 ?= t323.
                    DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t324.
                    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t325.
                    t317 = NEW zcl_lnt_typed_identifier( i_token = t318 i_filename = t319 i_type_9913 = t321 i_meta = t324 i_value = t325 ).
                    t315 = t317.
                  ELSE.
                    DATA t326 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t326.
                    t315 = t326.
                  ENDIF.
                  result = t315.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t327 TYPE abap_bool.
                DATA t328 TYPE REF TO object.
                DATA(t329) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
                DATA t330 TYPE REF TO object.
                t330 = t329->as_ref( ).
                t328 ?= t330.
                t327 = xsdbool( t328 IS BOUND AND t328 IS INSTANCE OF zcl_lnt_unknown_type ).
                IF t327 = abap_true.
                  DATA t331 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t331.
                  DATA(t332) = abap_true.
                  IF t332 = abap_true.
                    DATA t333 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t334) = CAST zcl_lnt_abstract_token( t63 ).
                    DATA t335 TYPE string.
                    DATA(t336) = CAST zcl_lnt_syntax_input( t2 ).
                    t335 = t336->filename.
                    DATA t337 TYPE REF TO zcl_lnt_unknown_type.
                    DATA(t338) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
                    DATA t339 TYPE REF TO object.
                    t339 = t338->as_ref( ).
                    t337 ?= t339.
                    DATA t340 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t340.
                    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t341.
                    t333 = NEW zcl_lnt_typed_identifier( i_token = t334 i_filename = t335 i_type_9913 = t337 i_meta = t340 i_value = t341 ).
                    t331 = t333.
                  ELSE.
                    DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t342.
                    t331 = t342.
                  ENDIF.
                  result = t331.
                  RETURN.
                ENDIF.
              ENDIF.
              DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t344) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
              DATA t345 TYPE REF TO object.
              t345 = t344->as_ref( ).
              t343 ?= t345.
              DATA t346 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t346.
              DATA t347 TYPE REF TO object.
              CLEAR t347.
              LOOP AT t343->items INTO t347.
                t346 ?= t347.
                DATA(t348) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
                DATA(t349) = CAST zcl_lnt_istructure_component( t346 ).
                APPEND t349 TO t348->items.
              ENDLOOP.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t350 TYPE abap_bool.
    DATA(t351) = t81.
    DATA(t352) = abap_true.
    t350 = xsdbool( t351 = t352 ).
    IF t350 = abap_true.
      DATA t353 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t353.
      DATA(t354) = abap_true.
      IF t354 = abap_true.
        DATA t355 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t356) = CAST zcl_lnt_abstract_token( t63 ).
        DATA t357 TYPE string.
        DATA(t358) = CAST zcl_lnt_syntax_input( t2 ).
        t357 = t358->filename.
        DATA t359 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t360 TYPE REF TO zcl_lnt_structure_type.
        DATA(t361) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t362.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t364.
        t360 = NEW zcl_lnt_structure_type( i_components = t361 i_qualified_name = t362 i_ddic_name = t363 i_description = t364 ).
        DATA t365 TYPE REF TO zcl_lnt_itable_options.
        DATA(t366) = abap_true.
        DATA(t367) = |DEFAULT|.
        DATA t368 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t368.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t369.
        t365 = NEW zcl_lnt_itable_options( i_with_header = t366 i_key_type = t367 i_primary_key = t368 i_secondary = t369 ).
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t371.
        t359 = NEW zcl_lnt_ty_table_type( i_row_type = t360 i_options = t365 i_qualified_name = t370 i_description = t371 ).
        DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t372.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        t355 = NEW zcl_lnt_typed_identifier( i_token = t356 i_filename = t357 i_type_9913 = t359 i_meta = t372 i_value = t373 ).
        t353 = t355.
      ELSE.
        DATA t374 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t374.
        t353 = t374.
      ENDIF.
      result = t353.
      RETURN.
    ELSE.
      DATA t375 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t375.
      DATA t376 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t376.
      DATA t377 TYPE abap_bool.
      DATA t378 TYPE i.
      DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t380) = CAST zlnt_runtime_map__a1006b231250( t83 ).
      t379 = t380->keys( ).
      t378 = lines( t379->items ).
      DATA(t381) = 0.
      t377 = xsdbool( t378 > t381 ).
      IF t377 = abap_true.
        DATA t382 TYPE REF TO zlnt_runtime_map__a1006b231250.
        CLEAR t382.
        DATA(t383) = abap_true.
        IF t383 = abap_true.
          DATA(t384) = CAST zlnt_runtime_map__a1006b231250( t83 ).
          t382 = t384.
        ELSE.
          DATA t385 TYPE REF TO zlnt_runtime_map__a1006b231250.
          CLEAR t385.
          t382 = t385.
        ENDIF.
        t376 = t382.
      ELSE.
        DATA t386 TYPE REF TO zlnt_runtime_map__a1006b231250.
        CLEAR t386.
        t376 = t386.
      ENDIF.
      t375 = t376.
      DATA t387 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t387.
      DATA(t388) = abap_true.
      IF t388 = abap_true.
        DATA t389 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t389.
        DATA(t390) = CAST zcl_lnt_abstract_token( t63 ).
        DATA t391 TYPE string.
        DATA(t392) = CAST zcl_lnt_syntax_input( t2 ).
        t391 = t392->filename.
        DATA t393 TYPE REF TO zcl_lnt_structure_type.
        DATA(t394) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
        DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t395.
        DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t396.
        DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t397.
        t393 = NEW zcl_lnt_structure_type( i_components = t394 i_qualified_name = t395 i_ddic_name = t396 i_description = t397 ).
        DATA t398 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t398.
        DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t399.
        DATA(t400) = abap_true.
        IF t400 = abap_true.
          DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t401.
          DATA(t402) = CAST zlnt_runtime_map__a1006b231250( t375 ).
          IF t402 IS BOUND.
            IF t402 IS BOUND.
              CREATE OBJECT t401.
              t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              DATA t403 TYPE REF TO object.
              t403 = t402.
              t401->oval = t403.
            ENDIF.
          ENDIF.
          t399 = t401.
        ELSE.
          DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t404.
          t399 = t404.
        ENDIF.
        t389 = NEW zcl_lnt_typed_identifier( i_token = t390 i_filename = t391 i_type_9913 = t393 i_meta = t398 i_value = t399 ).
        t387 = t389.
      ELSE.
        DATA t405 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t405.
        t387 = t405.
      ENDIF.
      result = t387.

    ENDIF.
  ENDMETHOD.

  METHOD run_common_part_syntax.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = CAST zcl_lnt_structure_node( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_abstract_node( t5 ).
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    LOOP AT t3->items INTO t10.
      t9 ?= t10.
      DATA t11 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t12 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t13 TYPE REF TO object.
      DATA(t14) = CAST zif_lnt_union_8249fcb1( t9 ).
      t13 = t14->get_db65( ).
      DATA t15 TYPE REF TO object.
      t15 = t13.
      t12 ?= t15.
      t11 = t12.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE abap_bool.
      DATA(t18) = CAST zif_lnt_union_8249fcb1( t9 ).
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_statement_node ).
      t16 = t17.
      IF t17 = abap_true.
        DATA t19 TYPE abap_bool.
        DATA(t20) = CAST zif_lnt_union_dc0fb493( t11 ).
        t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_data ).
        t16 = t19.
      ENDIF.
      IF t16 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t23) = NEW zcl_lnt_sy_statem_data( ).
        DATA t24 TYPE REF TO zcl_lnt_statement_node.
        DATA(t25) = CAST zif_lnt_union_8249fcb1( t9 ).
        DATA t26 TYPE REF TO object.
        t26 = t25.
        t24 ?= t26.
        DATA(t27) = CAST zcl_lnt_syntax_input( t2 ).
        t22 = t23->run_syntax( i_node = t24 i_input_967e = t27 ).
        t21 = t22.
        DATA t28 TYPE abap_bool.
        DATA(t29) = CAST zcl_lnt_typed_identifier( t21 ).
        t28 = xsdbool( t29 IS BOUND ).
        IF t28 = abap_true.
          DATA t30 TYPE REF TO zcl_lnt_current_scope.
          DATA t31 TYPE REF TO zcl_lnt_current_scope.
          DATA(t32) = CAST zcl_lnt_syntax_input( t2 ).
          t31 = t32->scope.
          t30 = t31.
          DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t33.
          DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t34.
          DATA(t35) = abap_true.
          IF t35 = abap_true.
            DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t37) = CAST zcl_lnt_typed_identifier( t21 ).
            t36 = t37.
            t34 = t36.
          ELSE.
            DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t38.
            t34 = t38.
          ENDIF.
          t33 = t34.
          DATA(t39) = VALUE abap_bool( ).
          DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t41) = CAST zcl_lnt_typed_identifier( t33 ).
          t40 = t41.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t43.
          t42 = t43.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = CAST zcl_lnt_typed_identifier( t40 ).
          IF t45 IS INITIAL.
            t44 = abap_true.
          ENDIF.
          t39 = t44.
          IF t39 = abap_true.
          ELSE.
            DATA(t46) = CAST zcl_lnt_current_scope( t30 ).
            DATA(t47) = VALUE string( ).
            DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t50) = CAST zcl_lnt_typed_identifier( t33 ).
            t49 = t50.
            t48 = t49.
            DATA(t51) = VALUE string( ).
            DATA t52 TYPE string.
            DATA t53 TYPE string.
            DATA t54 TYPE REF TO zcl_lnt_abstract_token.
            DATA t55 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t56) = CAST zcl_lnt_fi_identifier( t48 ).
            t55 = t56->token.
            t54 = t55.
            DATA t57 TYPE string.
            DATA(t58) = CAST zcl_lnt_abstract_token( t54 ).
            t57 = t58->str.
            t53 = t57.
            t52 = t53.
            DATA(t59) = VALUE abap_bool( ).
            DATA(t60) = VALUE string( ).
            DATA(t61) = t52.
            DATA(t62) = 0.
            DATA(t63) = 1.
            DATA(t64) = strlen( t61 ).
            IF t62 < 0.
              t62 = t62 + t64.
              IF t62 < 0.
                t62 = 0.
              ENDIF.
            ENDIF.
            IF t62 > t64 OR t63 <= 0.
              CLEAR t60.
            ELSE.
              IF t63 > t64 - t62.
                t63 = t64 - t62.
              ENDIF.
              t60 = t61+t62(t63).
            ENDIF.
            DATA(t65) = |!|.
            t59 = xsdbool( t60 = t65 ).
            IF t59 = abap_true.
              DATA(t66) = VALUE string( ).
              DATA t67 TYPE string.
              DATA(t68) = t52.
              t67 = t68.
              DATA(t69) = VALUE string( ).
              DATA(t70) = t67.
              DATA(t71) = 1.
              DATA t72 TYPE i.
              DATA(t73) = t67.
              DATA(t74) = strlen( t73 ).
              t72 = t74.
              DATA(t75) = strlen( t70 ).
              IF t71 < 0.
                t71 = t71 + t75.
                IF t71 < 0.
                  t71 = 0.
                ENDIF.
              ENDIF.
              IF t71 > t75 OR t72 <= 0.
                CLEAR t69.
              ELSE.
                IF t72 > t75 - t71.
                  t72 = t75 - t71.
                ENDIF.
                t69 = t70+t71(t72).
              ENDIF.
              t66 = t69.
              t52 = t66.
            ENDIF.
            DATA(t76) = t52.
            t51 = t76.
            t47 = t51.
            DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t78) = CAST zcl_lnt_typed_identifier( t33 ).
            t77 = t78.
            t46->add_named_identifier( i_name = t47 i_identifier = t77 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA t79 TYPE abap_bool.
        DATA t80 TYPE abap_bool.
        DATA(t81) = CAST zif_lnt_union_8249fcb1( t9 ).
        t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_structure_node ).
        t79 = t80.
        IF t80 = abap_true.
          DATA t82 TYPE abap_bool.
          DATA(t83) = CAST zif_lnt_union_dc0fb493( t11 ).
          t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_sr_data ).
          t79 = t82.
        ENDIF.
        IF t79 = abap_true.
          DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t86 TYPE REF TO zcl_lnt_structure_node.
          DATA(t87) = CAST zif_lnt_union_8249fcb1( t9 ).
          DATA t88 TYPE REF TO object.
          t88 = t87.
          t86 ?= t88.
          DATA(t89) = CAST zcl_lnt_syntax_input( t2 ).
          t85 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t86 i_input_967e = t89 ).
          t84 = t85.
          DATA t90 TYPE abap_bool.
          DATA(t91) = CAST zcl_lnt_typed_identifier( t84 ).
          t90 = xsdbool( t91 IS BOUND ).
          IF t90 = abap_true.
            DATA t92 TYPE REF TO zcl_lnt_current_scope.
            DATA t93 TYPE REF TO zcl_lnt_current_scope.
            DATA(t94) = CAST zcl_lnt_syntax_input( t2 ).
            t93 = t94->scope.
            t92 = t93.
            DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t95.
            DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t96.
            DATA(t97) = abap_true.
            IF t97 = abap_true.
              DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t99) = CAST zcl_lnt_typed_identifier( t84 ).
              t98 = t99.
              t96 = t98.
            ELSE.
              DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t100.
              t96 = t100.
            ENDIF.
            t95 = t96.
            DATA(t101) = VALUE abap_bool( ).
            DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t103) = CAST zcl_lnt_typed_identifier( t95 ).
            t102 = t103.
            DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t105.
            t104 = t105.
            DATA(t106) = VALUE abap_bool( ).
            DATA(t107) = CAST zcl_lnt_typed_identifier( t102 ).
            IF t107 IS INITIAL.
              t106 = abap_true.
            ENDIF.
            t101 = t106.
            IF t101 = abap_true.
            ELSE.
              DATA(t108) = CAST zcl_lnt_current_scope( t92 ).
              DATA(t109) = VALUE string( ).
              DATA t110 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t112) = CAST zcl_lnt_typed_identifier( t95 ).
              t111 = t112.
              t110 = t111.
              DATA(t113) = VALUE string( ).
              DATA t114 TYPE string.
              DATA t115 TYPE string.
              DATA t116 TYPE REF TO zcl_lnt_abstract_token.
              DATA t117 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t118) = CAST zcl_lnt_fi_identifier( t110 ).
              t117 = t118->token.
              t116 = t117.
              DATA t119 TYPE string.
              DATA(t120) = CAST zcl_lnt_abstract_token( t116 ).
              t119 = t120->str.
              t115 = t119.
              t114 = t115.
              DATA(t121) = VALUE abap_bool( ).
              DATA(t122) = VALUE string( ).
              DATA(t123) = t114.
              DATA(t124) = 0.
              DATA(t125) = 1.
              DATA(t126) = strlen( t123 ).
              IF t124 < 0.
                t124 = t124 + t126.
                IF t124 < 0.
                  t124 = 0.
                ENDIF.
              ENDIF.
              IF t124 > t126 OR t125 <= 0.
                CLEAR t122.
              ELSE.
                IF t125 > t126 - t124.
                  t125 = t126 - t124.
                ENDIF.
                t122 = t123+t124(t125).
              ENDIF.
              DATA(t127) = |!|.
              t121 = xsdbool( t122 = t127 ).
              IF t121 = abap_true.
                DATA(t128) = VALUE string( ).
                DATA t129 TYPE string.
                DATA(t130) = t114.
                t129 = t130.
                DATA(t131) = VALUE string( ).
                DATA(t132) = t129.
                DATA(t133) = 1.
                DATA t134 TYPE i.
                DATA(t135) = t129.
                DATA(t136) = strlen( t135 ).
                t134 = t136.
                DATA(t137) = strlen( t132 ).
                IF t133 < 0.
                  t133 = t133 + t137.
                  IF t133 < 0.
                    t133 = 0.
                  ENDIF.
                ENDIF.
                IF t133 > t137 OR t134 <= 0.
                  CLEAR t131.
                ELSE.
                  IF t134 > t137 - t133.
                    t134 = t137 - t133.
                  ENDIF.
                  t131 = t132+t133(t134).
                ENDIF.
                t128 = t131.
                t114 = t128.
              ENDIF.
              DATA(t138) = t114.
              t113 = t138.
              t109 = t113.
              DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t140) = CAST zcl_lnt_typed_identifier( t95 ).
              t139 = t140.
              t108->add_named_identifier( i_name = t109 i_identifier = t139 ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA t141 TYPE abap_bool.
          DATA t142 TYPE abap_bool.
          DATA(t143) = CAST zif_lnt_union_8249fcb1( t9 ).
          t142 = xsdbool( t143 IS BOUND AND t143 IS INSTANCE OF zcl_lnt_statement_node ).
          t141 = t142.
          IF t142 = abap_true.
            DATA t144 TYPE abap_bool.
            DATA(t145) = CAST zif_lnt_union_dc0fb493( t11 ).
            t144 = xsdbool( t145 IS BOUND AND t145 IS INSTANCE OF zcl_lnt_st_statem_type ).
            t141 = t144.
          ENDIF.
          IF t141 = abap_true.
            DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t148) = NEW zcl_lnt_sy_type( ).
            DATA t149 TYPE REF TO zcl_lnt_statement_node.
            DATA(t150) = CAST zif_lnt_union_8249fcb1( t9 ).
            DATA t151 TYPE REF TO object.
            t151 = t150.
            t149 ?= t151.
            DATA(t152) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t153.
            t147 = t148->run_syntax( i_node = t149 i_input_967e = t152 i_qualified_name_prefix = t153 ).
            t146 = t147.
            DATA t154 TYPE abap_bool.
            DATA(t155) = CAST zcl_lnt_typed_identifier( t146 ).
            t154 = xsdbool( t155 IS BOUND ).
            IF t154 = abap_true.
              DATA t156 TYPE REF TO zcl_lnt_current_scope.
              DATA t157 TYPE REF TO zcl_lnt_current_scope.
              DATA(t158) = CAST zcl_lnt_syntax_input( t2 ).
              t157 = t158->scope.
              t156 = t157.
              DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t159.
              DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t160.
              DATA(t161) = abap_true.
              IF t161 = abap_true.
                DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t163) = CAST zcl_lnt_typed_identifier( t146 ).
                t162 = t163.
                t160 = t162.
              ELSE.
                DATA t164 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t164.
                t160 = t164.
              ENDIF.
              t159 = t160.
              DATA(t165) = VALUE abap_bool( ).
              DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t167) = CAST zcl_lnt_typed_identifier( t159 ).
              t166 = t167.
              DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t169.
              t168 = t169.
              DATA(t170) = VALUE abap_bool( ).
              DATA(t171) = CAST zcl_lnt_typed_identifier( t166 ).
              IF t171 IS INITIAL.
                t170 = abap_true.
              ENDIF.
              t165 = t170.
              IF t165 = abap_true.
              ELSE.
                DATA(t172) = CAST zcl_lnt_current_scope( t156 ).
                DATA(t173) = VALUE string( ).
                DATA t174 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t176) = CAST zcl_lnt_typed_identifier( t159 ).
                t175 = t176.
                t174 = t175.
                DATA(t177) = VALUE string( ).
                DATA t178 TYPE string.
                DATA t179 TYPE string.
                DATA t180 TYPE REF TO zcl_lnt_abstract_token.
                DATA t181 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t182) = CAST zcl_lnt_fi_identifier( t174 ).
                t181 = t182->token.
                t180 = t181.
                DATA t183 TYPE string.
                DATA(t184) = CAST zcl_lnt_abstract_token( t180 ).
                t183 = t184->str.
                t179 = t183.
                t178 = t179.
                DATA(t185) = VALUE abap_bool( ).
                DATA(t186) = VALUE string( ).
                DATA(t187) = t178.
                DATA(t188) = 0.
                DATA(t189) = 1.
                DATA(t190) = strlen( t187 ).
                IF t188 < 0.
                  t188 = t188 + t190.
                  IF t188 < 0.
                    t188 = 0.
                  ENDIF.
                ENDIF.
                IF t188 > t190 OR t189 <= 0.
                  CLEAR t186.
                ELSE.
                  IF t189 > t190 - t188.
                    t189 = t190 - t188.
                  ENDIF.
                  t186 = t187+t188(t189).
                ENDIF.
                DATA(t191) = |!|.
                t185 = xsdbool( t186 = t191 ).
                IF t185 = abap_true.
                  DATA(t192) = VALUE string( ).
                  DATA t193 TYPE string.
                  DATA(t194) = t178.
                  t193 = t194.
                  DATA(t195) = VALUE string( ).
                  DATA(t196) = t193.
                  DATA(t197) = 1.
                  DATA t198 TYPE i.
                  DATA(t199) = t193.
                  DATA(t200) = strlen( t199 ).
                  t198 = t200.
                  DATA(t201) = strlen( t196 ).
                  IF t197 < 0.
                    t197 = t197 + t201.
                    IF t197 < 0.
                      t197 = 0.
                    ENDIF.
                  ENDIF.
                  IF t197 > t201 OR t198 <= 0.
                    CLEAR t195.
                  ELSE.
                    IF t198 > t201 - t197.
                      t198 = t201 - t197.
                    ENDIF.
                    t195 = t196+t197(t198).
                  ENDIF.
                  t192 = t195.
                  t178 = t192.
                ENDIF.
                DATA(t202) = t178.
                t177 = t202.
                t173 = t177.
                DATA t203 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t203.
                DATA(t204) = abap_true.
                IF t204 = abap_true.
                  DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t206) = CAST zcl_lnt_typed_identifier( t159 ).
                  t205 = t206.
                  t203 = t205.
                ELSE.
                  DATA t207 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t207.
                  t203 = t207.
                ENDIF.
                t172->add_type_named( i_name = t173 i_type_9913 = t203 ).
              ENDIF.
            ENDIF.
          ELSE.
            DATA t208 TYPE abap_bool.
            DATA t209 TYPE abap_bool.
            DATA(t210) = CAST zif_lnt_union_8249fcb1( t9 ).
            t209 = xsdbool( t210 IS BOUND AND t210 IS INSTANCE OF zcl_lnt_structure_node ).
            t208 = t209.
            IF t209 = abap_true.
              DATA t211 TYPE abap_bool.
              DATA(t212) = CAST zif_lnt_union_dc0fb493( t11 ).
              t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_sr_types ).
              t208 = t211.
            ENDIF.
            IF t208 = abap_true.
              DATA t213 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t215) = NEW zcl_lnt_sy_types( ).
              DATA t216 TYPE REF TO zcl_lnt_structure_node.
              DATA(t217) = CAST zif_lnt_union_8249fcb1( t9 ).
              DATA t218 TYPE REF TO object.
              t218 = t217.
              t216 ?= t218.
              DATA(t219) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t220.
              t214 = t215->run_syntax( i_node = t216 i_input_967e = t219 i_qualified_name_prefix = t220 ).
              t213 = t214.
              DATA t221 TYPE abap_bool.
              DATA(t222) = CAST zcl_lnt_typed_identifier( t213 ).
              t221 = xsdbool( t222 IS BOUND ).
              IF t221 = abap_true.
                DATA t223 TYPE REF TO zcl_lnt_current_scope.
                DATA t224 TYPE REF TO zcl_lnt_current_scope.
                DATA(t225) = CAST zcl_lnt_syntax_input( t2 ).
                t224 = t225->scope.
                t223 = t224.
                DATA t226 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t226.
                DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t227.
                DATA(t228) = abap_true.
                IF t228 = abap_true.
                  DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t230) = CAST zcl_lnt_typed_identifier( t213 ).
                  t229 = t230.
                  t227 = t229.
                ELSE.
                  DATA t231 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t231.
                  t227 = t231.
                ENDIF.
                t226 = t227.
                DATA(t232) = VALUE abap_bool( ).
                DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t234) = CAST zcl_lnt_typed_identifier( t226 ).
                t233 = t234.
                DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t236.
                t235 = t236.
                DATA(t237) = VALUE abap_bool( ).
                DATA(t238) = CAST zcl_lnt_typed_identifier( t233 ).
                IF t238 IS INITIAL.
                  t237 = abap_true.
                ENDIF.
                t232 = t237.
                IF t232 = abap_true.
                ELSE.
                  DATA(t239) = CAST zcl_lnt_current_scope( t223 ).
                  DATA(t240) = VALUE string( ).
                  DATA t241 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t242 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t243) = CAST zcl_lnt_typed_identifier( t226 ).
                  t242 = t243.
                  t241 = t242.
                  DATA(t244) = VALUE string( ).
                  DATA t245 TYPE string.
                  DATA t246 TYPE string.
                  DATA t247 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t248 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t249) = CAST zcl_lnt_fi_identifier( t241 ).
                  t248 = t249->token.
                  t247 = t248.
                  DATA t250 TYPE string.
                  DATA(t251) = CAST zcl_lnt_abstract_token( t247 ).
                  t250 = t251->str.
                  t246 = t250.
                  t245 = t246.
                  DATA(t252) = VALUE abap_bool( ).
                  DATA(t253) = VALUE string( ).
                  DATA(t254) = t245.
                  DATA(t255) = 0.
                  DATA(t256) = 1.
                  DATA(t257) = strlen( t254 ).
                  IF t255 < 0.
                    t255 = t255 + t257.
                    IF t255 < 0.
                      t255 = 0.
                    ENDIF.
                  ENDIF.
                  IF t255 > t257 OR t256 <= 0.
                    CLEAR t253.
                  ELSE.
                    IF t256 > t257 - t255.
                      t256 = t257 - t255.
                    ENDIF.
                    t253 = t254+t255(t256).
                  ENDIF.
                  DATA(t258) = |!|.
                  t252 = xsdbool( t253 = t258 ).
                  IF t252 = abap_true.
                    DATA(t259) = VALUE string( ).
                    DATA t260 TYPE string.
                    DATA(t261) = t245.
                    t260 = t261.
                    DATA(t262) = VALUE string( ).
                    DATA(t263) = t260.
                    DATA(t264) = 1.
                    DATA t265 TYPE i.
                    DATA(t266) = t260.
                    DATA(t267) = strlen( t266 ).
                    t265 = t267.
                    DATA(t268) = strlen( t263 ).
                    IF t264 < 0.
                      t264 = t264 + t268.
                      IF t264 < 0.
                        t264 = 0.
                      ENDIF.
                    ENDIF.
                    IF t264 > t268 OR t265 <= 0.
                      CLEAR t262.
                    ELSE.
                      IF t265 > t268 - t264.
                        t265 = t268 - t264.
                      ENDIF.
                      t262 = t263+t264(t265).
                    ENDIF.
                    t259 = t262.
                    t245 = t259.
                  ENDIF.
                  DATA(t269) = t245.
                  t244 = t269.
                  t240 = t244.
                  DATA t270 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t270.
                  DATA(t271) = abap_true.
                  IF t271 = abap_true.
                    DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t273) = CAST zcl_lnt_typed_identifier( t226 ).
                    t272 = t273.
                    t270 = t272.
                  ELSE.
                    DATA t274 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t274.
                    t270 = t274.
                  ENDIF.
                  t239->add_type_named( i_name = t240 i_type_9913 = t270 ).
                ENDIF.
              ENDIF.
            ELSE.
              DATA t275 TYPE abap_bool.
              DATA t276 TYPE abap_bool.
              DATA(t277) = CAST zif_lnt_union_8249fcb1( t9 ).
              t276 = xsdbool( t277 IS BOUND AND t277 IS INSTANCE OF zcl_lnt_statement_node ).
              t275 = t276.
              IF t276 = abap_true.
                DATA t278 TYPE abap_bool.
                DATA(t279) = CAST zif_lnt_union_dc0fb493( t11 ).
                t278 = xsdbool( t279 IS BOUND AND t279 IS INSTANCE OF zcl_lnt_st_statem_constant ).
                t275 = t278.
              ENDIF.
              IF t275 = abap_true.
                DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t282) = NEW zcl_lnt_sy_statem_constant( ).
                DATA t283 TYPE REF TO zcl_lnt_statement_node.
                DATA(t284) = CAST zif_lnt_union_8249fcb1( t9 ).
                DATA t285 TYPE REF TO object.
                t285 = t284.
                t283 ?= t285.
                DATA(t286) = CAST zcl_lnt_syntax_input( t2 ).
                t281 = t282->run_syntax( i_node = t283 i_input_967e = t286 ).
                t280 = t281.
                DATA t287 TYPE abap_bool.
                DATA(t288) = CAST zcl_lnt_typed_identifier( t280 ).
                t287 = xsdbool( t288 IS BOUND ).
                IF t287 = abap_true.
                  DATA t289 TYPE REF TO zcl_lnt_current_scope.
                  DATA t290 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t291) = CAST zcl_lnt_syntax_input( t2 ).
                  t290 = t291->scope.
                  t289 = t290.
                  DATA t292 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t292.
                  DATA t293 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t293.
                  DATA(t294) = abap_true.
                  IF t294 = abap_true.
                    DATA(t295) = CAST zcl_lnt_typed_identifier( t280 ).
                    t293 = t295.
                  ELSE.
                    DATA t296 TYPE REF TO zcl_lnt_typed_identifier.
                    CLEAR t296.
                    t293 = t296.
                  ENDIF.
                  t292 = t293.
                  DATA(t297) = VALUE abap_bool( ).
                  DATA t298 TYPE REF TO zcl_lnt_typed_identifier.
                  DATA(t299) = CAST zcl_lnt_typed_identifier( t292 ).
                  t298 = t299.
                  DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t301.
                  t300 = t301.
                  DATA(t302) = VALUE abap_bool( ).
                  DATA(t303) = CAST zcl_lnt_typed_identifier( t298 ).
                  IF t303 IS INITIAL.
                    t302 = abap_true.
                  ENDIF.
                  t297 = t302.
                  IF t297 = abap_true.
                  ELSE.
                    DATA(t304) = CAST zcl_lnt_current_scope( t289 ).
                    DATA(t305) = VALUE string( ).
                    DATA t306 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA t307 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t308) = CAST zcl_lnt_typed_identifier( t292 ).
                    t307 = t308.
                    t306 = t307.
                    DATA(t309) = VALUE string( ).
                    DATA t310 TYPE string.
                    DATA t311 TYPE string.
                    DATA t312 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t313 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t314) = CAST zcl_lnt_fi_identifier( t306 ).
                    t313 = t314->token.
                    t312 = t313.
                    DATA t315 TYPE string.
                    DATA(t316) = CAST zcl_lnt_abstract_token( t312 ).
                    t315 = t316->str.
                    t311 = t315.
                    t310 = t311.
                    DATA(t317) = VALUE abap_bool( ).
                    DATA(t318) = VALUE string( ).
                    DATA(t319) = t310.
                    DATA(t320) = 0.
                    DATA(t321) = 1.
                    DATA(t322) = strlen( t319 ).
                    IF t320 < 0.
                      t320 = t320 + t322.
                      IF t320 < 0.
                        t320 = 0.
                      ENDIF.
                    ENDIF.
                    IF t320 > t322 OR t321 <= 0.
                      CLEAR t318.
                    ELSE.
                      IF t321 > t322 - t320.
                        t321 = t322 - t320.
                      ENDIF.
                      t318 = t319+t320(t321).
                    ENDIF.
                    DATA(t323) = |!|.
                    t317 = xsdbool( t318 = t323 ).
                    IF t317 = abap_true.
                      DATA(t324) = VALUE string( ).
                      DATA t325 TYPE string.
                      DATA(t326) = t310.
                      t325 = t326.
                      DATA(t327) = VALUE string( ).
                      DATA(t328) = t325.
                      DATA(t329) = 1.
                      DATA t330 TYPE i.
                      DATA(t331) = t325.
                      DATA(t332) = strlen( t331 ).
                      t330 = t332.
                      DATA(t333) = strlen( t328 ).
                      IF t329 < 0.
                        t329 = t329 + t333.
                        IF t329 < 0.
                          t329 = 0.
                        ENDIF.
                      ENDIF.
                      IF t329 > t333 OR t330 <= 0.
                        CLEAR t327.
                      ELSE.
                        IF t330 > t333 - t329.
                          t330 = t333 - t329.
                        ENDIF.
                        t327 = t328+t329(t330).
                      ENDIF.
                      t324 = t327.
                      t310 = t324.
                    ENDIF.
                    DATA(t334) = t310.
                    t309 = t334.
                    t305 = t309.
                    DATA t335 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t336) = CAST zcl_lnt_typed_identifier( t292 ).
                    t335 = t336.
                    t304->add_named_identifier( i_name = t305 i_identifier = t335 ).
                  ENDIF.
                ENDIF.
              ELSE.
                DATA t337 TYPE abap_bool.
                DATA t338 TYPE abap_bool.
                DATA(t339) = CAST zif_lnt_union_8249fcb1( t9 ).
                t338 = xsdbool( t339 IS BOUND AND t339 IS INSTANCE OF zcl_lnt_statement_node ).
                t337 = t338.
                IF t338 = abap_true.
                  DATA t340 TYPE abap_bool.
                  DATA(t341) = CAST zif_lnt_union_dc0fb493( t11 ).
                  t340 = xsdbool( t341 IS BOUND AND t341 IS INSTANCE OF zcl_lnt_st_ranges ).
                  t337 = t340.
                ENDIF.
                IF t337 = abap_true.
                  DATA(t342) = NEW zcl_lnt_sy_ranges( ).
                  DATA t343 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t344) = CAST zif_lnt_union_8249fcb1( t9 ).
                  DATA t345 TYPE REF TO object.
                  t345 = t344.
                  t343 ?= t345.
                  DATA(t346) = CAST zcl_lnt_syntax_input( t2 ).
                  t342->run_syntax( i_node = t343 i_input_967e = t346 ).
                ELSE.
                  DATA t347 TYPE abap_bool.
                  DATA t348 TYPE abap_bool.
                  DATA(t349) = CAST zif_lnt_union_8249fcb1( t9 ).
                  t348 = xsdbool( t349 IS BOUND AND t349 IS INSTANCE OF zcl_lnt_statement_node ).
                  t347 = t348.
                  IF t348 = abap_true.
                    DATA t350 TYPE abap_bool.
                    DATA(t351) = CAST zif_lnt_union_dc0fb493( t11 ).
                    t350 = xsdbool( t351 IS BOUND AND t351 IS INSTANCE OF zcl_lnt_st_select_option ).
                    t347 = t350.
                  ENDIF.
                  IF t347 = abap_true.
                    DATA(t352) = NEW zcl_lnt_sy_select_option( ).
                    DATA t353 TYPE REF TO zcl_lnt_statement_node.
                    DATA(t354) = CAST zif_lnt_union_8249fcb1( t9 ).
                    DATA t355 TYPE REF TO object.
                    t355 = t354.
                    t353 ?= t355.
                    DATA(t356) = CAST zcl_lnt_syntax_input( t2 ).
                    t352->run_syntax( i_node = t353 i_input_967e = t356 ).
                  ELSE.
                    DATA t357 TYPE abap_bool.
                    DATA t358 TYPE abap_bool.
                    DATA(t359) = CAST zif_lnt_union_8249fcb1( t9 ).
                    t358 = xsdbool( t359 IS BOUND AND t359 IS INSTANCE OF zcl_lnt_statement_node ).
                    t357 = t358.
                    IF t358 = abap_true.
                      DATA t360 TYPE abap_bool.
                      DATA(t361) = CAST zif_lnt_union_dc0fb493( t11 ).
                      t360 = xsdbool( t361 IS BOUND AND t361 IS INSTANCE OF zcl_lnt_st_parameter ).
                      t357 = t360.
                    ENDIF.
                    IF t357 = abap_true.
                      DATA(t362) = NEW zcl_lnt_sy_parameter_parameter( ).
                      DATA t363 TYPE REF TO zcl_lnt_statement_node.
                      DATA(t364) = CAST zif_lnt_union_8249fcb1( t9 ).
                      DATA t365 TYPE REF TO object.
                      t365 = t364.
                      t363 ?= t365.
                      DATA(t366) = CAST zcl_lnt_syntax_input( t2 ).
                      t362->run_syntax( i_node = t363 i_input_967e = t366 ).
                    ELSE.
                      DATA t367 TYPE abap_bool.
                      DATA t368 TYPE abap_bool.
                      DATA(t369) = CAST zif_lnt_union_8249fcb1( t9 ).
                      t368 = xsdbool( t369 IS BOUND AND t369 IS INSTANCE OF zcl_lnt_structure_node ).
                      t367 = t368.
                      IF t368 = abap_true.
                        DATA t370 TYPE abap_bool.
                        DATA(t371) = CAST zif_lnt_union_dc0fb493( t11 ).
                        t370 = xsdbool( t371 IS BOUND AND t371 IS INSTANCE OF zcl_lnt_sr_constants ).
                        t367 = t370.
                      ENDIF.
                      IF t367 = abap_true.
                        DATA t372 TYPE REF TO zcl_lnt_shape_28fac025.
                        DATA t373 TYPE REF TO zcl_lnt_shape_28fac025.
                        DATA(t374) = NEW zcl_lnt_sy_constants( ).
                        DATA t375 TYPE REF TO zcl_lnt_structure_node.
                        DATA(t376) = CAST zif_lnt_union_8249fcb1( t9 ).
                        DATA t377 TYPE REF TO object.
                        t377 = t376.
                        t375 ?= t377.
                        DATA(t378) = CAST zcl_lnt_syntax_input( t2 ).
                        t373 = t374->run_syntax( i_node = t375 i_input_967e = t378 ).
                        t372 = t373.
                        DATA t379 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA t380 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA(t381) = CAST zcl_lnt_shape_28fac025( t372 ).
                        t380 = t381->type_cba0.
                        t379 = t380.
                        DATA t382 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                        DATA t383 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                        DATA(t384) = CAST zcl_lnt_shape_28fac025( t372 ).
                        t383 = t384->values.
                        t382 = t383.
                        DATA t385 TYPE abap_bool.
                        DATA(t386) = CAST zcl_lnt_typed_identifier( t379 ).
                        t385 = xsdbool( t386 IS BOUND ).
                        IF t385 = abap_true.
                          DATA t387 TYPE REF TO zcl_lnt_current_scope.
                          DATA t388 TYPE REF TO zcl_lnt_current_scope.
                          DATA(t389) = CAST zcl_lnt_syntax_input( t2 ).
                          t388 = t389->scope.
                          t387 = t388.
                          DATA t390 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t390.
                          DATA t391 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t391.
                          DATA(t392) = abap_true.
                          IF t392 = abap_true.
                            DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
                            DATA(t394) = CAST zcl_lnt_typed_identifier( t379 ).
                            t393 = t394.
                            t391 = t393.
                          ELSE.
                            DATA t395 TYPE REF TO zcl_lnt_typed_identifier.
                            CLEAR t395.
                            t391 = t395.
                          ENDIF.
                          t390 = t391.
                          DATA(t396) = VALUE abap_bool( ).
                          DATA t397 TYPE REF TO zcl_lnt_typed_identifier.
                          DATA(t398) = CAST zcl_lnt_typed_identifier( t390 ).
                          t397 = t398.
                          DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t400.
                          t399 = t400.
                          DATA(t401) = VALUE abap_bool( ).
                          DATA(t402) = CAST zcl_lnt_typed_identifier( t397 ).
                          IF t402 IS INITIAL.
                            t401 = abap_true.
                          ENDIF.
                          t396 = t401.
                          IF t396 = abap_true.
                          ELSE.
                            DATA(t403) = CAST zcl_lnt_current_scope( t387 ).
                            DATA(t404) = VALUE string( ).
                            DATA t405 TYPE REF TO zcl_lnt_fi_identifier.
                            DATA t406 TYPE REF TO zcl_lnt_typed_identifier.
                            DATA(t407) = CAST zcl_lnt_typed_identifier( t390 ).
                            t406 = t407.
                            t405 = t406.
                            DATA(t408) = VALUE string( ).
                            DATA t409 TYPE string.
                            DATA t410 TYPE string.
                            DATA t411 TYPE REF TO zcl_lnt_abstract_token.
                            DATA t412 TYPE REF TO zcl_lnt_abstract_token.
                            DATA(t413) = CAST zcl_lnt_fi_identifier( t405 ).
                            t412 = t413->token.
                            t411 = t412.
                            DATA t414 TYPE string.
                            DATA(t415) = CAST zcl_lnt_abstract_token( t411 ).
                            t414 = t415->str.
                            t410 = t414.
                            t409 = t410.
                            DATA(t416) = VALUE abap_bool( ).
                            DATA(t417) = VALUE string( ).
                            DATA(t418) = t409.
                            DATA(t419) = 0.
                            DATA(t420) = 1.
                            DATA(t421) = strlen( t418 ).
                            IF t419 < 0.
                              t419 = t419 + t421.
                              IF t419 < 0.
                                t419 = 0.
                              ENDIF.
                            ENDIF.
                            IF t419 > t421 OR t420 <= 0.
                              CLEAR t417.
                            ELSE.
                              IF t420 > t421 - t419.
                                t420 = t421 - t419.
                              ENDIF.
                              t417 = t418+t419(t420).
                            ENDIF.
                            DATA(t422) = |!|.
                            t416 = xsdbool( t417 = t422 ).
                            IF t416 = abap_true.
                              DATA(t423) = VALUE string( ).
                              DATA t424 TYPE string.
                              DATA(t425) = t409.
                              t424 = t425.
                              DATA(t426) = VALUE string( ).
                              DATA(t427) = t424.
                              DATA(t428) = 1.
                              DATA t429 TYPE i.
                              DATA(t430) = t424.
                              DATA(t431) = strlen( t430 ).
                              t429 = t431.
                              DATA(t432) = strlen( t427 ).
                              IF t428 < 0.
                                t428 = t428 + t432.
                                IF t428 < 0.
                                  t428 = 0.
                                ENDIF.
                              ENDIF.
                              IF t428 > t432 OR t429 <= 0.
                                CLEAR t426.
                              ELSE.
                                IF t429 > t432 - t428.
                                  t429 = t432 - t428.
                                ENDIF.
                                t426 = t427+t428(t429).
                              ENDIF.
                              t423 = t426.
                              t409 = t423.
                            ENDIF.
                            DATA(t433) = t409.
                            t408 = t433.
                            t404 = t408.
                            DATA t434 TYPE REF TO zcl_lnt_typed_identifier.
                            DATA(t435) = CAST zcl_lnt_typed_identifier( t390 ).
                            t434 = t435.
                            t403->add_named_identifier( i_name = t404 i_identifier = t434 ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d970_076c50701cc1.
  ENDMETHOD.
ENDCLASS.
