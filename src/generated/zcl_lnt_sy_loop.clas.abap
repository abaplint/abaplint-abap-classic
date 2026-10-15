* TS: src/abap/5_syntax/statements/loop.ts:17:1 Loop
CLASS zcl_lnt_sy_loop DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_loop IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA(t10) = t3.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t15 = t16->find_direct_expression( i_type_9913 = t18 ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t19 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t7.
    t21 = xsdbool( t22 IS BOUND ).
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA(t25) = t7.
      t24 = t25.
      DATA(t26) = t2.
      t23 = zcl_lnt_sy_target=>run_syntax( i_node = t24 i_input_967e = t26 ).
      t20 = t23.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      t20 = t27.
    ENDIF.
    t19 = t20.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA(t30) = t7.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t35.
      DATA(t36) = t1.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
      t35 = t36->find_direct_expression( i_type_9913 = t37 ).
      t7 = t35.
    ENDIF.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t42.
    DATA(t43) = t3.
    t42 = t43.
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t42.
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    IF t45 = abap_true.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t47.
      t44 = t47.
    ELSE.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t49.
      DATA(t50) = t42.
      t49 = t50.
      DATA(t51) = |ASSIGNING|.
      t48 = t49->find_direct_token_by_text( i_text = t51 ).
      t44 = t48.
    ENDIF.
    t41 = t44.
    t40 = t41.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    t52 = t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = t40.
    IF t56 IS INITIAL.
      t55 = abap_true.
    ENDIF.
    t54 = xsdbool( t55 = abap_false ).
    t39 = t54.
    t38 = t39.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA(t59) = t1.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t58 = t59->find_direct_expressions( i_type_9913 = t60 ).
    t57 = t58.
    DATA t61 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t65.
    DATA(t66) = t1.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43.
    t65 = t66->find_direct_expression( i_type_9913 = t67 ).
    t64 = t65.
    DATA t68 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t68.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = t64.
    IF t70 IS INITIAL.
      t69 = abap_true.
    ENDIF.
    IF t69 = abap_true.
      DATA t71 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t71.
      t68 = t71.
    ELSE.
      DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t72.
      DATA t73 TYPE REF TO zif_lnt_node.
      CLEAR t73.
      DATA t74 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t75.
      DATA(t76) = t64.
      t75 = t76.
      t74 = t75.
      DATA t77 TYPE REF TO zif_lnt_node.
      CLEAR t77.
      DATA(t78) = abap_true.
      IF t78 = abap_true.
        DATA t79 TYPE REF TO zif_lnt_node.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t80.
        DATA(t81) = t74.
        t80 = t81->children.
        DATA t82 TYPE REF TO object.
        CLEAR t82.
        t80->load( ).
        CLEAR t82.
        READ TABLE t80->items INDEX 1 INTO t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t79.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t83 ?= t82.
          DATA t84 TYPE REF TO object.
          CLEAR t84.
          t84 = t83->as_ref( ).
          t79 ?= t84.
        ELSE.
          t79 ?= t82.
        ENDIF.
        t77 = t79.
      ELSE.
        DATA t85 TYPE REF TO zif_lnt_node.
        CLEAR t85.
        t77 = t85.
      ENDIF.
      t73 = t77.
      t72 ?= t73.
      t68 = t72.
    ENDIF.
    t63 = t68.
    DATA t86 TYPE REF TO object.
    CLEAR t86.
    t86 = t63.
    t62 ?= t86.
    t61 = t62.
    DATA(t87) = VALUE abap_bool( ).
    DATA t88 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t88.
    DATA(t89) = t61.
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
    ENDIF.
    t87 = t92.
    IF t87 = abap_true.
      DATA t94 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA t96 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t96.
        DATA(t97) = t57.
        DATA t98 TYPE REF TO object.
        CLEAR t98.
        t97->load( ).
        CLEAR t98.
        READ TABLE t97->items INDEX 1 INTO t98.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        CLEAR t96.
        IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t99 ?= t98.
          DATA t100 TYPE REF TO object.
          CLEAR t100.
          t100 = t99->as_ref( ).
          t96 ?= t100.
        ELSE.
          t96 ?= t98.
        ENDIF.
        t94 = t96.
      ELSE.
        DATA t101 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t101.
        t94 = t101.
      ENDIF.
      t61 = t94.
    ENDIF.
    DATA t102 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t105.
    DATA(t106) = t61.
    t105 = t106.
    t104 = xsdbool( t105 IS BOUND ).
    IF t104 = abap_true.
      DATA t107 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t107.
      DATA t108 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t108.
      DATA(t109) = abap_true.
      IF t109 = abap_true.
        DATA t110 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t110.
        DATA(t111) = t61.
        t110 = t111.
        t108 = t110.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t112.
        t108 = t112.
      ENDIF.
      DATA(t113) = t2.
      DATA(t114) = t19.
      DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t115.
      DATA(t116) = abap_true.
      IF t116 = abap_true.
        DATA(t117) = t38.
        DATA(t118) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t118->has = abap_true.
        t118->value = t117.
        t115 = t118.
      ELSE.
        DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t119.
        t115 = t119.
      ENDIF.
      DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t121.
      t107 = zcl_lnt_sy_source=>run_syntax( i_node = t108 i_input_967e = t113 i_target_type = t114 i_write_reference = t115 i_allow_generic_deference = t120 i_read_reference = t121 ).
      t103 = t107.
    ELSE.
      DATA t122 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t122.
      t103 = t122.
    ENDIF.
    t102 = t103.
    DATA t123 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t123.
    DATA t124 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t124.
    t123 = t124.
    DATA(t125) = VALUE string( ).
    DATA(t126) = VALUE string( ).
    DATA(t127) = VALUE string( ).
    DATA(t128) = t1.
    t127 = t128->concat_tokens( ).
    DATA(t129) = strlen( t127 ).
    t126 = t127.
    IF t126 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t126 TO UPPER CASE.
    ELSE.
      t126 = zlnt_runtime_uppe_91169605024d=>full( t126 ).
    ENDIF.
    t125 = t126.
    DATA(t130) = VALUE abap_bool( ).
    DATA t131 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t131.
    DATA(t132) = t102.
    t131 = t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    t133 = t134.
    DATA(t135) = VALUE abap_bool( ).
    DATA(t136) = t131.
    IF t136 IS INITIAL.
      t135 = abap_true.
    ENDIF.
    t130 = t135.
    IF t130 = abap_true.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = t125.
      DATA(t139) = |LOOP.|.
      t137 = xsdbool( t138 <> t139 ).
      IF t137 = abap_true.
        DATA(t140) = VALUE string( ).
        DATA(t141) = |No source type determined|.
        t140 = t141.
        DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t142.
        DATA(t143) = t2.
        t142 = t143->issues.
        DATA t144 TYPE REF TO zcl_lnt_issue.
        CLEAR t144.
        DATA(t145) = t2.
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t146.
        DATA(t147) = t1.
        t146 = t147->get_first_token( ).
        DATA(t148) = t140.
        DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t149.
        t144 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t145 i_token = t146 i_message_26cb = t148 i_fix = t149 ).
        t142->load( ).
        APPEND t144 TO t142->items.
        t142->save( ).
      ENDIF.
    ELSE.
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = t102.
      t150 = xsdbool( t151 IS BOUND AND t151 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t150 = abap_true.
        DATA(t152) = VALUE string( ).
        DATA(t153) = VALUE string( ).
        DATA(t154) = |Loop, not a table type, |.
        DATA(t155) = VALUE string( ).
        DATA t156 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t156.
        DATA t157 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t157.
        DATA(t158) = t102.
        t157 ?= t158.
        t156 = t157.
        DATA(t159) = VALUE string( ).
        DATA(t160) = t156.
        t159 = t160->error.
        t155 = t159.
        DATA(t161) = strlen( t154 ).
        t153 = |{ t154 }{ t155 }|.
        t152 = t153.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t162.
        DATA(t163) = t2.
        t162 = t163->issues.
        DATA t164 TYPE REF TO zcl_lnt_issue.
        CLEAR t164.
        DATA(t165) = t2.
        DATA t166 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t166.
        DATA(t167) = t1.
        t166 = t167->get_first_token( ).
        DATA(t168) = t152.
        DATA t169 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t169.
        t164 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t165 i_token = t166 i_message_26cb = t168 i_fix = t169 ).
        t162->load( ).
        APPEND t164 TO t162->items.
        t162->save( ).
        DATA t170 TYPE REF TO zcl_lnt_void_type.
        CLEAR t170.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        DATA(t172) = abap_true.
        IF t172 = abap_true.
          DATA(t173) = |Loop, not a table type|.
          DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t174->has = abap_true.
          t174->value = t173.
          t171 = t174.
        ELSE.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          t171 = t175.
        ENDIF.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        t170 = zcl_lnt_void_type=>get_db65( i_voided = t171 i_qualified_name = t176 ).
        t102 = t170.
      ELSE.
        DATA(t177) = VALUE abap_bool( ).
        DATA(t178) = VALUE abap_bool( ).
        DATA(t179) = VALUE abap_bool( ).
        DATA(t180) = VALUE abap_bool( ).
        DATA(t181) = t102.
        t180 = xsdbool( t181 IS BOUND AND t181 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t179 = t180.
        IF t180 = abap_true.
          DATA(t182) = VALUE abap_bool( ).
          DATA t183 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t183.
          DATA(t184) = t7.
          t183 = t184.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          t185 = t186.
          DATA(t187) = VALUE abap_bool( ).
          DATA(t188) = t183.
          IF t188 IS INITIAL.
            t187 = abap_true.
          ENDIF.
          t182 = t187.
          t179 = t182.
        ENDIF.
        t178 = t179.
        IF t179 = abap_true.
          DATA(t189) = VALUE abap_bool( ).
          DATA(t190) = VALUE abap_bool( ).
          DATA t191 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t191.
          DATA t192 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t192.
          DATA(t193) = t102.
          t192 ?= t193.
          t191 = t192.
          DATA(t194) = VALUE abap_bool( ).
          DATA t195 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t195.
          DATA(t196) = t191.
          t195 = t196->options.
          t194 = t195->zlnt_view_read_sr_ec4602663c93( ).
          t190 = t194.
          DATA(t197) = abap_false.
          t189 = xsdbool( t190 = t197 ).
          t178 = t189.
        ENDIF.
        t177 = t178.
        IF t178 = abap_true.
          DATA(t198) = VALUE abap_bool( ).
          DATA(t199) = VALUE i( ).
          DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t200.
          DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t201.
          DATA t202 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t202.
          DATA(t203) = t1.
          t202 = t203.
          DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t204.
          DATA(t205) = t202.
          t204 = t205->children.
          t201 = t204.
          t200 ?= t201.
          t200->load( ).
          t199 = lines( t200->items ).
          DATA(t206) = 4.
          t198 = xsdbool( t199 = t206 ).
          t177 = t198.
        ENDIF.
        IF t177 = abap_true.
          DATA(t207) = VALUE string( ).
          DATA(t208) = |Loop, no header line|.
          t207 = t208.
          DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t209.
          DATA(t210) = t2.
          t209 = t210->issues.
          DATA t211 TYPE REF TO zcl_lnt_issue.
          CLEAR t211.
          DATA(t212) = t2.
          DATA t213 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t213.
          DATA(t214) = t1.
          t213 = t214->get_first_token( ).
          DATA(t215) = t207.
          DATA t216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t216.
          t211 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t212 i_token = t213 i_message_26cb = t215 i_fix = t216 ).
          t209->load( ).
          APPEND t211 TO t209->items.
          t209->save( ).
        ELSE.
          DATA(t217) = VALUE abap_bool( ).
          DATA(t218) = VALUE abap_bool( ).
          DATA(t219) = VALUE abap_bool( ).
          DATA(t220) = VALUE abap_bool( ).
          DATA(t221) = VALUE abap_bool( ).
          DATA(t222) = VALUE abap_bool( ).
          DATA(t223) = t102.
          t222 = xsdbool( t223 IS BOUND AND t223 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t221 = xsdbool( t222 = abap_false ).
          t220 = t221.
          IF t221 = abap_true.
            DATA(t224) = VALUE abap_bool( ).
            DATA(t225) = VALUE abap_bool( ).
            DATA(t226) = t102.
            t225 = xsdbool( t226 IS BOUND AND t226 IS INSTANCE OF zcl_lnt_any_type ).
            t224 = xsdbool( t225 = abap_false ).
            t220 = t224.
          ENDIF.
          t219 = t220.
          IF t220 = abap_true.
            DATA(t227) = VALUE abap_bool( ).
            DATA(t228) = VALUE abap_bool( ).
            DATA(t229) = t102.
            t228 = xsdbool( t229 IS BOUND AND t229 IS INSTANCE OF zcl_lnt_data_type ).
            t227 = xsdbool( t228 = abap_false ).
            t219 = t227.
          ENDIF.
          t218 = t219.
          IF t219 = abap_true.
            DATA(t230) = VALUE abap_bool( ).
            DATA(t231) = VALUE abap_bool( ).
            DATA(t232) = t102.
            t231 = xsdbool( t232 IS BOUND AND t232 IS INSTANCE OF zcl_lnt_void_type ).
            t230 = xsdbool( t231 = abap_false ).
            t218 = t230.
          ENDIF.
          t217 = t218.
          IF t218 = abap_true.
            DATA(t233) = VALUE abap_bool( ).
            DATA(t234) = VALUE abap_bool( ).
            DATA(t235) = t125.
            DATA(t236) = |LOOP AT GROUP |.
            DATA(t237) = strlen( t235 ).
            DATA(t238) = VALUE i( ).
            DATA(t239) = VALUE i( ).
            DATA(t240) = VALUE string( ).
            t238 = strlen( t236 ).
            IF t238 = 0.
              t234 = abap_true.
            ELSEIF t238 <= t237.
              t239 = 0.
              t240 = t235+t239(t238).
              IF t240 = t236.
                t234 = abap_true.
              ENDIF.
            ENDIF.
            DATA(t241) = abap_false.
            t233 = xsdbool( t234 = t241 ).
            t217 = t233.
          ENDIF.
          IF t217 = abap_true.
            DATA(t242) = VALUE string( ).
            DATA(t243) = |Loop, not a table type|.
            t242 = t243.
            DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t244.
            DATA(t245) = t2.
            t244 = t245->issues.
            DATA t246 TYPE REF TO zcl_lnt_issue.
            CLEAR t246.
            DATA(t247) = t2.
            DATA t248 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t248.
            DATA(t249) = t1.
            t248 = t249->get_first_token( ).
            DATA(t250) = t242.
            DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t251.
            t246 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t247 i_token = t248 i_message_26cb = t250 i_fix = t251 ).
            t244->load( ).
            APPEND t246 TO t244->items.
            t244->save( ).
          ELSE.
            DATA(t252) = VALUE abap_bool( ).
            DATA(t253) = VALUE abap_bool( ).
            DATA(t254) = VALUE abap_bool( ).
            DATA t255 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t255.
            DATA(t256) = t3.
            t255 = t256.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t258.
            t257 = t258.
            DATA(t259) = VALUE abap_bool( ).
            DATA(t260) = t255.
            IF t260 IS INITIAL.
              t259 = abap_true.
            ENDIF.
            t254 = t259.
            t253 = t254.
            IF t254 = abap_true.
              DATA(t261) = VALUE abap_bool( ).
              DATA(t262) = t102.
              t261 = xsdbool( t262 IS BOUND AND t262 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t253 = t261.
            ENDIF.
            t252 = t253.
            IF t253 = abap_true.
              DATA(t263) = VALUE abap_bool( ).
              DATA(t264) = VALUE abap_bool( ).
              DATA t265 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t265.
              DATA t266 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t266.
              DATA(t267) = t102.
              t266 ?= t267.
              t265 = t266.
              DATA(t268) = VALUE abap_bool( ).
              DATA t269 TYPE REF TO zcl_lnt_itable_options.
              CLEAR t269.
              DATA(t270) = t265.
              t269 = t270->options.
              t268 = t269->zlnt_view_read_sr_ec4602663c93( ).
              t264 = t268.
              DATA(t271) = abap_false.
              t263 = xsdbool( t264 = t271 ).
              t252 = t263.
            ENDIF.
            IF t252 = abap_true.
              DATA(t272) = VALUE string( ).
              DATA(t273) = |Loop, no header|.
              t272 = t273.
              DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t274.
              DATA(t275) = t2.
              t274 = t275->issues.
              DATA t276 TYPE REF TO zcl_lnt_issue.
              CLEAR t276.
              DATA(t277) = t2.
              DATA t278 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t278.
              DATA(t279) = t1.
              t278 = t279->get_first_token( ).
              DATA(t280) = t272.
              DATA t281 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t281.
              t276 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t277 i_token = t278 i_message_26cb = t280 i_fix = t281 ).
              t274->load( ).
              APPEND t276 TO t274->items.
              t274->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t285.
    DATA t286 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t286.
    DATA(t287) = t3.
    t286 = t287.
    DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t288.
    DATA(t289) = VALUE abap_bool( ).
    DATA(t290) = t286.
    IF t290 IS INITIAL.
      t289 = abap_true.
    ENDIF.
    IF t289 = abap_true.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t291.
      t288 = t291.
    ELSE.
      DATA(t292) = VALUE string( ).
      DATA t293 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t293.
      DATA(t294) = t286.
      t293 = t294.
      t292 = t293->concat_tokens( ).
      DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t295->has = abap_true.
      t295->value = t292.
      t288 = t295.
    ENDIF.
    t285 = t288.
    t284 = t285.
    DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t296.
    DATA(t297) = VALUE abap_bool( ).
    DATA(t298) = t284.
    IF t298 IS INITIAL.
      t297 = abap_true.
    ELSEIF t298->has = abap_false.
      t297 = abap_true.
    ENDIF.
    IF t297 = abap_true.
      DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t299.
      t296 = t299.
    ELSE.
      DATA(t300) = VALUE string( ).
      DATA(t301) = VALUE string( ).
      DATA(t302) = t284.
      t301 = t302->value.
      DATA(t303) = strlen( t301 ).
      t300 = t301.
      IF t300 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t300 TO UPPER CASE.
      ELSE.
        t300 = zlnt_runtime_uppe_91169605024d=>full( t300 ).
      ENDIF.
      DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t304->has = abap_true.
      t304->value = t300.
      t296 = t304.
    ENDIF.
    t283 = t296.
    t282 = t283.
    DATA t305 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t305.
    DATA(t306) = t102.
    t305 = t306.
    DATA(t307) = VALUE abap_bool( ).
    DATA(t308) = VALUE abap_bool( ).
    DATA(t309) = VALUE abap_bool( ).
    DATA(t310) = VALUE abap_bool( ).
    DATA(t311) = t305.
    t310 = xsdbool( t311 IS BOUND AND t311 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t309 = t310.
    IF t310 = abap_true.
      DATA(t312) = VALUE abap_bool( ).
      DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t313.
      DATA t314 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t314.
      DATA t315 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t315.
      DATA(t316) = t305.
      t315 ?= t316.
      t314 = t315.
      DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t317.
      DATA t318 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t318.
      DATA t319 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t319.
      DATA t320 TYPE REF TO zcl_lnt_itable_options.
      CLEAR t320.
      DATA(t321) = t314.
      t320 = t321->options.
      t319 = t320->zlnt_view_read_sr_48b89cc62ab9( ).
      t318 = t319.
      DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t322.
      DATA(t323) = VALUE abap_bool( ).
      DATA(t324) = t318.
      IF t324 IS INITIAL.
        t323 = abap_true.
      ENDIF.
      IF t323 = abap_true.
        DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t325.
        t322 = t325.
      ELSE.
        DATA(t326) = VALUE string( ).
        DATA t327 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t327.
        DATA(t328) = t318.
        t327 = t328.
        t326 = t327->zlnt_view_read_sr_f361ef311f50( ).
        DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t329->has = abap_true.
        t329->value = t326.
        t322 = t329.
      ENDIF.
      t317 = t322.
      t313 = t317.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t330.
      DATA(t331) = abap_true.
      IF t331 = abap_true.
        DATA(t332) = |HASHED|.
        DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t333->has = abap_true.
        t333->value = t332.
        t330 = t333.
      ELSE.
        DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t334.
        t330 = t334.
      ENDIF.
      DATA(t335) = VALUE abap_bool( ).
      DATA(t336) = VALUE abap_bool( ).
      IF t313 IS BOUND.
        t335 = t313->has.
      ENDIF.
      IF t330 IS BOUND.
        t336 = t330->has.
      ENDIF.
      IF t335 = t336.
        IF t335 = abap_false.
          t312 = abap_true.
        ELSEIF t313->value = t330->value.
          t312 = abap_true.
        ENDIF.
      ENDIF.
      t309 = t312.
    ENDIF.
    t308 = t309.
    IF t309 = abap_true.
      DATA(t337) = VALUE abap_bool( ).
      DATA t338 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t338.
      DATA t339 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t339.
      DATA(t340) = t1.
      DATA(t341) = |USING|.
      t339 = t340->find_direct_token_by_text( i_text = t341 ).
      t338 = t339.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t342.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t343.
      t342 = t343.
      DATA(t344) = VALUE abap_bool( ).
      DATA(t345) = t338.
      IF t345 IS INITIAL.
        t344 = abap_true.
      ENDIF.
      t337 = t344.
      t308 = t337.
    ENDIF.
    t307 = t308.
    IF t308 = abap_true.
      DATA(t346) = VALUE abap_bool( ).
      DATA(t347) = VALUE abap_bool( ).
      DATA t348 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t348.
      DATA(t349) = t1.
      DATA(t350) = |FROM|.
      t348 = t349->find_direct_token_by_text( i_text = t350 ).
      t347 = xsdbool( t348 IS BOUND ).
      t346 = t347.
      IF t347 = abap_false.
        DATA(t351) = VALUE abap_bool( ).
        DATA t352 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t352.
        DATA(t353) = t1.
        DATA(t354) = |TO|.
        t352 = t353->find_direct_token_by_text( i_text = t354 ).
        t351 = xsdbool( t352 IS BOUND ).
        t346 = t351.
      ENDIF.
      t307 = t346.
    ENDIF.
    IF t307 = abap_true.
      DATA(t355) = VALUE string( ).
      DATA(t356) = |Implicit or explicit index operation on hashed table is not |.
      t356 = t356 && |possible|.
      t355 = t356.
      DATA t357 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t357.
      DATA(t358) = t2.
      t357 = t358->issues.
      DATA t359 TYPE REF TO zcl_lnt_issue.
      CLEAR t359.
      DATA(t360) = t2.
      DATA t361 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t361.
      DATA(t362) = t1.
      t361 = t362->get_first_token( ).
      DATA(t363) = t355.
      DATA t364 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t364.
      t359 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t360 i_token = t361 i_message_26cb = t363 i_fix = t364 ).
      t357->load( ).
      APPEND t359 TO t357->items.
      t357->save( ).
      RETURN.
    ENDIF.
    DATA(t365) = VALUE abap_bool( ).
    DATA(t366) = t102.
    t365 = xsdbool( t366 IS BOUND AND t366 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t365 = abap_true.
      DATA t367 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t367.
      DATA(t368) = abap_true.
      IF t368 = abap_true.
        DATA t369 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t369.
        DATA t370 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t370.
        DATA t371 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t371.
        DATA(t372) = t102.
        t371 ?= t372.
        t370 = t371.
        DATA t373 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t373.
        DATA(t374) = t370.
        t373 = t374->row_type.
        t369 = t373.
        t367 = t369.
      ELSE.
        DATA t375 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t375.
        t367 = t375.
      ENDIF.
      t123 = t367.
      DATA t376 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t376.
      DATA(t377) = abap_true.
      IF t377 = abap_true.
        DATA t378 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t378.
        DATA(t379) = t123.
        t378 = t379.
        t376 = t378.
      ELSE.
        DATA t380 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t380.
        t376 = t380.
      ENDIF.
      t102 = t376.
      DATA(t381) = VALUE abap_bool( ).
      DATA t382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t382.
      DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t383.
      DATA(t384) = t282.
      t383 = t384.
      DATA t385 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t385.
      DATA(t386) = VALUE abap_bool( ).
      DATA(t387) = t383.
      IF t387 IS INITIAL.
        t386 = abap_true.
      ELSEIF t387->has = abap_false.
        t386 = abap_true.
      ENDIF.
      IF t386 = abap_true.
        DATA t388 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t388.
        t385 = t388.
      ELSE.
        DATA(t389) = VALUE abap_bool( ).
        DATA(t390) = VALUE string( ).
        DATA(t391) = t383.
        t390 = t391->value.
        DATA(t392) = |REFERENCE INTO |.
        DATA(t393) = strlen( t390 ).
        DATA(t394) = VALUE i( ).
        DATA(t395) = VALUE i( ).
        DATA(t396) = VALUE string( ).
        t394 = strlen( t392 ).
        IF t394 = 0.
          t389 = abap_true.
        ELSEIF t394 <= t393.
          t395 = 0.
          t396 = t390+t395(t394).
          IF t396 = t392.
            t389 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t397) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t397->has = abap_true.
        t397->value = t389.
        t385 = t397.
      ENDIF.
      t382 = t385.
      IF t382 IS BOUND.
        IF t382->has = abap_true.
          t381 = xsdbool( t382->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t381 = abap_true.
        DATA t398 TYPE REF TO zcl_lnt_data_reference.
        CLEAR t398.
        DATA t399 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t399.
        DATA(t400) = t102.
        t399 = t400.
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t401.
        t398 = NEW zcl_lnt_data_reference( i_type_9913 = t399 i_qualified_name = t401 ).
        t102 = t398.
      ENDIF.
    ENDIF.
    DATA t402 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t402.
    DATA t403 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t403.
    DATA(t404) = t1.
    DATA(t405) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t403 = t404->find_direct_expression( i_type_9913 = t405 ).
    t402 = t403.
    DATA(t406) = VALUE abap_bool( ).
    DATA t407 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t407.
    DATA(t408) = t402.
    t407 = t408.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    t409 = t410.
    DATA(t411) = VALUE abap_bool( ).
    DATA(t412) = VALUE abap_bool( ).
    DATA(t413) = t407.
    IF t413 IS INITIAL.
      t412 = abap_true.
    ENDIF.
    t411 = xsdbool( t412 = abap_false ).
    t406 = t411.
    IF t406 = abap_true.
      DATA t414 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t414.
      DATA(t415) = t402.
      t414 = t415.
      DATA(t416) = t2.
      DATA(t417) = t123.
      DATA t418 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t418.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t414 i_input_967e = t416 i_left_type = t417 i_right_type = t418 ).
    ENDIF.
    DATA(t419) = VALUE abap_bool( ).
    DATA(t420) = VALUE abap_bool( ).
    DATA(t421) = VALUE abap_bool( ).
    DATA(t422) = t282.
    IF t422 IS BOUND.
      IF t422->has = abap_true.
        t421 = xsdbool( strlen( t422->value ) > 0 ).
      ENDIF.
    ENDIF.
    t420 = t421.
    IF t421 = abap_true.
      DATA(t423) = VALUE abap_bool( ).
      DATA(t424) = VALUE string( ).
      DATA(t425) = t282.
      t424 = t425->value.
      DATA(t426) = |TRANSPORTING |.
      DATA(t427) = strlen( t424 ).
      DATA(t428) = VALUE i( ).
      DATA(t429) = VALUE i( ).
      DATA(t430) = VALUE string( ).
      t428 = strlen( t426 ).
      IF t428 = 0.
        t423 = abap_true.
      ELSEIF t428 <= t427.
        t429 = 0.
        t430 = t424+t429(t428).
        IF t430 = t426.
          t423 = abap_true.
        ENDIF.
      ENDIF.
      t420 = t423.
    ENDIF.
    t419 = t420.
    IF t420 = abap_true.
      DATA(t431) = VALUE abap_bool( ).
      DATA t432 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t432.
      DATA t433 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t433.
      DATA(t434) = t1.
      DATA(t435) = |WHERE|.
      t433 = t434->find_direct_token_by_text( i_text = t435 ).
      t432 = t433.
      DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t436.
      DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t437.
      t436 = t437.
      DATA(t438) = VALUE abap_bool( ).
      DATA(t439) = t432.
      IF t439 IS INITIAL.
        t438 = abap_true.
      ENDIF.
      t431 = t438.
      t419 = t431.
    ENDIF.
    IF t419 = abap_true.
      DATA(t440) = VALUE string( ).
      DATA(t441) = |Loop, TRANSPORTING NO FIELDS only with WHERE|.
      t440 = t441.
      DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t442.
      DATA(t443) = t2.
      t442 = t443->issues.
      DATA t444 TYPE REF TO zcl_lnt_issue.
      CLEAR t444.
      DATA(t445) = t2.
      DATA t446 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t446.
      DATA(t447) = t1.
      t446 = t447->get_first_token( ).
      DATA(t448) = t440.
      DATA t449 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t449.
      t444 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t445 i_token = t446 i_message_26cb = t448 i_fix = t449 ).
      t442->load( ).
      APPEND t444 TO t442->items.
      t442->save( ).
      RETURN.
    ENDIF.
    DATA(t450) = VALUE abap_bool( ).
    DATA(t451) = VALUE abap_bool( ).
    DATA(t452) = VALUE abap_bool( ).
    DATA t453 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t453.
    DATA t454 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t454.
    DATA(t455) = t1.
    DATA(t456) = |USING|.
    t454 = t455->find_direct_token_by_text( i_text = t456 ).
    t453 = t454.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t458.
    t457 = t458.
    DATA(t459) = VALUE abap_bool( ).
    DATA(t460) = VALUE abap_bool( ).
    DATA(t461) = t453.
    IF t461 IS INITIAL.
      t460 = abap_true.
    ENDIF.
    t459 = xsdbool( t460 = abap_false ).
    t452 = t459.
    t451 = t452.
    IF t452 = abap_true.
      DATA(t462) = VALUE abap_bool( ).
      DATA t463 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t463.
      DATA(t464) = t402.
      t463 = t464.
      DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t465.
      DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t466.
      t465 = t466.
      DATA(t467) = VALUE abap_bool( ).
      DATA(t468) = VALUE abap_bool( ).
      DATA(t469) = t463.
      IF t469 IS INITIAL.
        t468 = abap_true.
      ENDIF.
      t467 = xsdbool( t468 = abap_false ).
      t462 = t467.
      t451 = t462.
    ENDIF.
    t450 = t451.
    IF t451 = abap_true.
      DATA(t470) = VALUE abap_bool( ).
      DATA(t471) = t305.
      t470 = xsdbool( t471 IS BOUND AND t471 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t450 = t470.
    ENDIF.
    IF t450 = abap_true.
      DATA t472 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t472.
      DATA t473 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t473.
      DATA(t474) = t1.
      DATA(t475) = |KEY|.
      t473 = t474->find_expression_after_token( i_text = t475 ).
      t472 = t473.
      DATA t476 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t476.
      DATA t477 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t477.
      t476 = t477.
      DATA(t478) = VALUE abap_bool( ).
      DATA t479 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t479.
      DATA t480 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t480.
      DATA(t481) = t472.
      t480 = t481.
      DATA t482 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t482.
      DATA(t483) = VALUE abap_bool( ).
      DATA(t484) = t480.
      IF t484 IS INITIAL.
        t483 = abap_true.
      ENDIF.
      IF t483 = abap_true.
        DATA t485 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t485.
        t482 = t485.
      ELSE.
        DATA t486 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t486.
        DATA t487 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t487.
        DATA(t488) = t480.
        t487 = t488.
        t486 = t487->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t482 = t486.
      ENDIF.
      t479 = t482.
      t478 = xsdbool( t479 IS BOUND AND t479 IS INSTANCE OF zcl_lnt_simple_name ).
      IF t478 = abap_true.
        DATA t489 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t489.
        DATA t490 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t490.
        DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t491.
        DATA t492 TYPE REF TO zcl_lnt_itable_options.
        CLEAR t492.
        DATA t493 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t493.
        DATA t494 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t494.
        DATA(t495) = t305.
        t494 ?= t495.
        t493 = t494.
        DATA t496 TYPE REF TO zcl_lnt_itable_options.
        CLEAR t496.
        DATA(t497) = t493.
        t496 = t497->options.
        t492 = t496.
        t491 = t492->zlnt_view_read_sr_f853e12e05a7( ).
        t490 = t491.
        DATA t498 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t498.
        DATA(t499) = VALUE abap_bool( ).
        DATA(t500) = t490.
        IF t500 IS INITIAL.
          t499 = abap_true.
        ENDIF.
        IF t499 = abap_true.
          DATA t501 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t501.
          t498 = t501.
        ELSE.
          DATA t502 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t502.
          DATA t503 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t503.
          DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t504.
          DATA(t505) = t490.
          t504 = t505.
          t503 = t504.
          DATA(t506) = VALUE i( ).
          DATA(t507) = VALUE i( ).
          DATA(t508) = t503.
          t508->load( ).
          t507 = lines( t508->items ).
          t506 = t507.
          DATA(t509) = VALUE i( ).
          DATA(t510) = 0.
          t509 = t510.
          DATA t511 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t511.
          DATA t512 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t512.
          t511 = t512.
          DO.
            DATA(t513) = VALUE abap_bool( ).
            DATA(t514) = t509.
            DATA(t515) = t506.
            t513 = xsdbool( t514 < t515 ).
            IF t513 = abap_false.
              EXIT.
            ENDIF.
            DATA t516 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t516.
            DATA t517 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t517.
            DATA t518 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t518.
            DATA(t519) = t503.
            DATA(t520) = t509.
            DATA t521 TYPE REF TO object.
            CLEAR t521.
            t521 = t519->get( p0 = t520 ).
            DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t522.
            CLEAR t518.
            IF t521 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t522 ?= t521.
              CLEAR t518.
              IF t522 IS BOUND.
                IF t522->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t518 ?= t522->oval.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                ENDIF.
                IF t518 IS NOT BOUND.
                  IF t522->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t523.
                    IF t522->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                    ENDIF.
                    TRY.
                        t523 ?= t522->oval.
                      CATCH cx_sy_move_cast_error.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                    ENDTRY.
                    IF t523->structural( ) <> abap_true.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                    ENDIF.
                  ENDIF.
                  DATA(t524) = VALUE string( ).
                  DATA(t525) = VALUE string( ).
                  DATA t526 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t526.
                  DATA(t527) = VALUE abap_bool( ).
                  t518 = NEW zcl_lnt_itable_key( view_source = t522 i_name = t524 i_type_9913 = t525 i_key_fields = t526 i_is_unique = t527 ).
                ENDIF.
              ENDIF.
            ELSE.
              t518 ?= t521.
            ENDIF.
            t517 = t518.
            t516 = t517.
            DATA(t528) = VALUE abap_bool( ).
            DATA(t529) = VALUE string( ).
            DATA(t530) = VALUE string( ).
            DATA(t531) = t516.
            t530 = t531->zlnt_view_read_sr_a70477ea08ee( ).
            DATA(t532) = strlen( t530 ).
            t529 = t530.
            IF t529 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t529 TO UPPER CASE.
            ELSE.
              t529 = zlnt_runtime_uppe_91169605024d=>full( t529 ).
            ENDIF.
            DATA(t533) = VALUE string( ).
            DATA(t534) = VALUE string( ).
            DATA t535 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t535.
            DATA t536 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t536.
            DATA t537 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t537.
            DATA(t538) = t472.
            t537 = t538.
            t536 = t537->get_first_token( ).
            t535 = t536.
            DATA(t539) = VALUE string( ).
            DATA(t540) = t535.
            t539 = t540->str.
            t534 = t539.
            DATA(t541) = strlen( t534 ).
            t533 = t534.
            IF t533 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t533 TO UPPER CASE.
            ELSE.
              t533 = zlnt_runtime_uppe_91169605024d=>full( t533 ).
            ENDIF.
            t528 = xsdbool( t529 = t533 ).
            IF t528 = abap_true.
              DATA t542 TYPE REF TO zcl_lnt_itable_key.
              CLEAR t542.
              DATA(t543) = abap_true.
              IF t543 = abap_true.
                DATA(t544) = t516.
                t542 = t544.
              ELSE.
                DATA t545 TYPE REF TO zcl_lnt_itable_key.
                CLEAR t545.
                t542 = t545.
              ENDIF.
              t511 = t542.
              EXIT.
            ENDIF.
            DATA(t546) = VALUE i( ).
            DATA(t547) = t509.
            DATA(t548) = 1.
            t546 = t547 + t548.
            t509 = t546.
          ENDDO.
          DATA(t549) = t511.
          t502 = t549.
          t498 = t502.
        ENDIF.
        t489 = t498.
        t476 = t489.
        DATA(t550) = VALUE abap_bool( ).
        DATA t551 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t551.
        DATA(t552) = t476.
        t551 = t552.
        DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t553.
        DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t554.
        t553 = t554.
        DATA(t555) = VALUE abap_bool( ).
        DATA(t556) = t551.
        IF t556 IS INITIAL.
          t555 = abap_true.
        ENDIF.
        t550 = t555.
        IF t550 = abap_true.
          DATA(t557) = VALUE string( ).
          DATA(t558) = VALUE string( ).
          DATA(t559) = VALUE string( ).
          DATA(t560) = |Key |.
          DATA(t561) = VALUE string( ).
          DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t562.
          DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t563.
          DATA t564 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t564.
          DATA t565 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t565.
          DATA(t566) = t472.
          t565 = t566.
          t564 = t565.
          DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t567.
          DATA(t568) = VALUE abap_bool( ).
          DATA(t569) = t564.
          IF t569 IS INITIAL.
            t568 = abap_true.
          ENDIF.
          IF t568 = abap_true.
            DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t570.
            t567 = t570.
          ELSE.
            DATA(t571) = VALUE string( ).
            DATA(t572) = t564.
            t571 = t572->concat_tokens( ).
            DATA(t573) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t573->has = abap_true.
            t573->value = t571.
            t567 = t573.
          ENDIF.
          t563 = t567.
          t562 = t563.
          DATA(t574) = VALUE string( ).
          DATA(t575) = VALUE abap_bool( ).
          DATA(t576) = t562.
          IF t576 IS INITIAL.
            t575 = abap_true.
          ELSEIF t576->has = abap_false.
            t575 = abap_true.
          ENDIF.
          IF t575 = abap_true.
            DATA(t577) = |undefined|.
            t574 = t577.
          ELSE.
            DATA(t578) = VALUE string( ).
            DATA(t579) = t562.
            t578 = t579->value.
            t574 = t578.
          ENDIF.
          t561 = t574.
          DATA(t580) = strlen( t560 ).
          t559 = |{ t560 }{ t561 }|.
          DATA(t581) = | not found in table type|.
          DATA(t582) = strlen( t559 ).
          t558 = |{ t559 }{ t581 }|.
          t557 = t558.
          DATA t583 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t583.
          DATA(t584) = t2.
          t583 = t584->issues.
          DATA t585 TYPE REF TO zcl_lnt_issue.
          CLEAR t585.
          DATA(t586) = t2.
          DATA t587 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t587.
          DATA(t588) = t1.
          t587 = t588->get_first_token( ).
          DATA(t589) = t557.
          DATA t590 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t590.
          t585 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t586 i_token = t587 i_message_26cb = t589 i_fix = t590 ).
          t583->load( ).
          APPEND t585 TO t583->items.
          t583->save( ).
          RETURN.
        ENDIF.
        DATA(t591) = VALUE abap_bool( ).
        DATA(t592) = VALUE abap_bool( ).
        DATA t593 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t593.
        DATA t594 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t594.
        DATA t595 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t595.
        DATA(t596) = t2.
        t595 = t596->scope.
        t594 = t595.
        DATA t597 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t597.
        DATA t598 TYPE REF TO zif_lnt_configuration.
        CLEAR t598.
        DATA t599 TYPE REF TO zif_lnt_registry.
        CLEAR t599.
        DATA(t600) = t594.
        t599 = t600->reg.
        t598 = t599->get_config( ).
        t597 = t598->get_release( ).
        t593 = t597.
        DATA t601 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t601.
        DATA t602 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t602.
        DATA t603 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t603.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t603 = zcl_lnt_version_module=>release_b8cd.
        DATA(t604) = |v740sp02|.
        t602 = t603->get( p0 = t604 ).
        t601 = t602.
        t592 = zcl_lnt_version_module=>release_at_least( i_running = t593 i_required = t601 ).
        t591 = xsdbool( t592 = abap_false ).
        IF t591 = abap_true.
          DATA t605 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t605.
          DATA t606 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t606.
          DATA t607 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t607.
          DATA t608 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t608.
          CREATE OBJECT t608.
          t607 = t608.
          DATA t609 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t609.
          DATA t610 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t610.
          DATA(t611) = t402.
          t610 = t611.
          DATA(t612) = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
          t609 = t610->find_all_expressions_recursive( i_type_9913 = t612 ).
          DATA t613 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t613.
          DATA t614 TYPE REF TO object.
          CLEAR t614.
          DATA(t615) = VALUE i( ).
          DO.
            t609->load( ).
            IF t615 >= lines( t609->items ).
              EXIT.
            ENDIF.
            CLEAR t614.
            READ TABLE t609->items INDEX t615 + 1 INTO t614.
            t615 = t615 + 1.
            DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t616.
            CLEAR t613.
            IF t614 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t616 ?= t614.
              DATA t617 TYPE REF TO object.
              CLEAR t617.
              t617 = t616->as_ref( ).
              t613 ?= t617.
            ELSE.
              t613 ?= t614.
            ENDIF.
            DATA(t618) = t607.
            DATA(t619) = VALUE string( ).
            DATA(t620) = VALUE string( ).
            DATA(t621) = t613.
            t620 = t621->concat_tokens( ).
            DATA(t622) = strlen( t620 ).
            t619 = t620.
            IF t619 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t619 TO UPPER CASE.
            ELSE.
              t619 = zlnt_runtime_uppe_91169605024d=>full( t619 ).
            ENDIF.
            t618->load( ).
            APPEND t619 TO t618->items.
            t618->save( ).
          ENDDO.
          DATA(t623) = t607.
          t606 = t623.
          t605 = t606.
          DATA t624 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t624.
          DATA t625 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t625.
          DATA(t626) = t476.
          t625 = t626.
          t624 = t625->zlnt_view_read_sr_e0192e283129( ).
          DATA(t627) = VALUE string( ).
          t624->dense( ).
          DATA(t628) = VALUE i( ).
          DO.
            t624->load( ).
            IF t628 >= lines( t624->items ).
              EXIT.
            ENDIF.
            CLEAR t627.
            READ TABLE t624->items INDEX t628 + 1 INTO t627.
            IF t624->has( t628 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t628 = t628 + 1.
            DATA(t629) = VALUE abap_bool( ).
            DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t630.
            DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t631.
            DATA t632 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t632.
            DATA(t633) = t605.
            t632 = t633.
            DATA(t634) = VALUE i( ).
            DATA(t635) = VALUE i( ).
            DATA(t636) = t632.
            t636->load( ).
            t635 = lines( t636->items ).
            t634 = t635.
            DATA(t637) = VALUE i( ).
            DATA(t638) = 0.
            t637 = t638.
            DATA t639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t639.
            DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t640.
            t639 = t640.
            DO.
              DATA(t641) = VALUE abap_bool( ).
              DATA(t642) = t637.
              DATA(t643) = t634.
              t641 = xsdbool( t642 < t643 ).
              IF t641 = abap_false.
                EXIT.
              ENDIF.
              DATA(t644) = VALUE string( ).
              DATA(t645) = VALUE string( ).
              DATA t646 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t646.
              DATA(t647) = t632.
              DATA(t648) = t637.
              t646 = t647->get( p0 = t648 ).
              t645 = t646->value.
              t644 = t645.
              DATA(t649) = VALUE abap_bool( ).
              DATA(t650) = t644.
              DATA(t651) = VALUE string( ).
              DATA(t652) = VALUE string( ).
              DATA(t653) = t627.
              DATA(t654) = strlen( t653 ).
              t652 = t653.
              IF t652 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t652 TO UPPER CASE.
              ELSE.
                t652 = zlnt_runtime_uppe_91169605024d=>full( t652 ).
              ENDIF.
              DATA(t655) = | IS INITIAL|.
              DATA(t656) = strlen( t652 ).
              t651 = |{ t652 }{ t655 }|.
              t649 = xsdbool( t650 = t651 ).
              IF t649 = abap_true.
                DATA t657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t657.
                DATA(t658) = abap_true.
                IF t658 = abap_true.
                  DATA(t659) = t644.
                  DATA(t660) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t660->has = abap_true.
                  t660->value = t659.
                  t657 = t660.
                ELSE.
                  DATA t661 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t661.
                  t657 = t661.
                ENDIF.
                t639 = t657.
                EXIT.
              ENDIF.
              DATA(t662) = VALUE i( ).
              DATA(t663) = t637.
              DATA(t664) = 1.
              t662 = t663 + t664.
              t637 = t662.
            ENDDO.
            DATA(t665) = t639.
            t631 = t665.
            t630 = t631.
            DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t666.
            DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t667.
            t666 = t667.
            DATA(t668) = VALUE abap_bool( ).
            DATA(t669) = VALUE abap_bool( ).
            DATA(t670) = t630.
            IF t670 IS INITIAL.
              t669 = abap_true.
            ELSEIF t670->has = abap_false.
              t669 = abap_true.
            ENDIF.
            t668 = xsdbool( t669 = abap_false ).
            t629 = t668.
            IF t629 = abap_true.
              DATA(t671) = VALUE string( ).
              DATA(t672) = |Loop, key check with IS INITIAL cannot optimized before 7.40|.
              t672 = t672 && | SP02|.
              t671 = t672.
              DATA t673 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t673.
              DATA(t674) = t2.
              t673 = t674->issues.
              DATA t675 TYPE REF TO zcl_lnt_issue.
              CLEAR t675.
              DATA(t676) = t2.
              DATA t677 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t677.
              DATA(t678) = t1.
              t677 = t678->get_first_token( ).
              DATA(t679) = t671.
              DATA t680 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t680.
              t675 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t676 i_token = t677 i_message_26cb = t679 i_fix = t680 ).
              t673->load( ).
              APPEND t675 TO t673->items.
              t673->save( ).
              RETURN.
            ENDIF.
          ENDDO.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t681 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t681.
    DATA t682 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t682.
    DATA t683 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t683.
    DATA(t684) = t7.
    t683 = t684.
    DATA t685 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t685.
    DATA(t686) = VALUE abap_bool( ).
    DATA(t687) = t683.
    IF t687 IS INITIAL.
      t686 = abap_true.
    ENDIF.
    IF t686 = abap_true.
      DATA t688 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t688.
      t685 = t688.
    ELSE.
      DATA t689 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t689.
      DATA t690 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t690.
      DATA(t691) = t683.
      t690 = t691.
      DATA(t692) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t689 = t690->find_direct_expression( i_type_9913 = t692 ).
      t685 = t689.
    ENDIF.
    t682 = t685.
    t681 = t682.
    DATA(t693) = VALUE abap_bool( ).
    DATA(t694) = t681.
    t693 = xsdbool( t694 IS BOUND ).
    IF t693 = abap_true.
      DATA t695 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t695.
      DATA(t696) = t681.
      t695 = t696.
      DATA(t697) = t2.
      DATA(t698) = t102.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t695 i_input_967e = t697 i_type_9913 = t698 ).
    ENDIF.
    DATA(t699) = t57.
    DATA t700 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t700.
    DATA t701 TYPE REF TO object.
    CLEAR t701.
    DATA(t702) = VALUE i( ).
    DO.
      t699->load( ).
      IF t702 >= lines( t699->items ).
        EXIT.
      ENDIF.
      CLEAR t701.
      READ TABLE t699->items INDEX t702 + 1 INTO t701.
      t702 = t702 + 1.
      DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t703.
      CLEAR t700.
      IF t701 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t703 ?= t701.
        DATA t704 TYPE REF TO object.
        CLEAR t704.
        t704 = t703->as_ref( ).
        t700 ?= t704.
      ELSE.
        t700 ?= t701.
      ENDIF.
      DATA(t705) = VALUE abap_bool( ).
      DATA(t706) = t700.
      DATA t707 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t707.
      DATA(t708) = t61.
      t707 = t708.
      DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t709.
      DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t710.
      CLEAR t709.
      IF t706 IS BOUND.
        DATA t711 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t711.
        DATA t712 TYPE REF TO object.
        CLEAR t712.
        CLEAR t711.
        t712 = t706.
        TRY.
            t709 ?= t712.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t709 IS NOT BOUND.
          TRY.
              t711 ?= t706.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t711 IS BOUND.
            t709 = t711->source( ).
          ENDIF.
          IF t709 IS NOT BOUND.
            CREATE OBJECT t709.
            t709->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t709->oval = t706.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t710.
      IF t707 IS BOUND.
        DATA t713 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t713.
        DATA t714 TYPE REF TO object.
        CLEAR t714.
        CLEAR t713.
        t714 = t707.
        TRY.
            t710 ?= t714.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t710 IS NOT BOUND.
          TRY.
              t713 ?= t707.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t713 IS BOUND.
            t710 = t713->source( ).
          ENDIF.
          IF t710 IS NOT BOUND.
            CREATE OBJECT t710.
            t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t710->oval = t707.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t709 IS BOUND.
        t705 = t709->strict_equals( t710 ).
      ELSE.
        t705 = xsdbool( t710 IS NOT BOUND ).
      ENDIF.
      IF t705 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t715 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t715.
      DATA t716 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t716.
      DATA(t717) = abap_true.
      IF t717 = abap_true.
        DATA(t718) = t700.
        t716 = t718.
      ELSE.
        DATA t719 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t719.
        t716 = t719.
      ENDIF.
      DATA(t720) = t2.
      DATA t721 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t721.
      DATA t722 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t722.
      DATA t723 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t723.
      DATA t724 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t724.
      t715 = zcl_lnt_sy_source=>run_syntax( i_node = t716 i_input_967e = t720 i_target_type = t721 i_write_reference = t722 i_allow_generic_deference = t723 i_read_reference = t724 ).
    ENDDO.
    DATA t725 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t725.
    DATA t726 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t726.
    DATA t727 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t727.
    DATA(t728) = t7.
    t727 = t728.
    DATA t729 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t729.
    DATA(t730) = VALUE abap_bool( ).
    DATA(t731) = t727.
    IF t731 IS INITIAL.
      t730 = abap_true.
    ENDIF.
    IF t730 = abap_true.
      DATA t732 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t732.
      t729 = t732.
    ELSE.
      DATA t733 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t733.
      DATA t734 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t734.
      DATA(t735) = t727.
      t734 = t735.
      DATA(t736) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
      t733 = t734->find_direct_expression( i_type_9913 = t736 ).
      t729 = t733.
    ENDIF.
    t726 = t729.
    t725 = t726.
    DATA(t737) = VALUE abap_bool( ).
    DATA(t738) = t725.
    t737 = xsdbool( t738 IS BOUND ).
    IF t737 = abap_true.
      DATA t739 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t739.
      DATA(t740) = t725.
      t739 = t740.
      DATA(t741) = t2.
      DATA(t742) = t102.
      zcl_lnt_sy_inline_fs=>run_syntax( i_node = t739 i_input_967e = t741 i_type_9913 = t742 ).
    ELSE.
      DATA t743 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t743.
      DATA t744 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t744.
      DATA t745 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t745.
      DATA(t746) = t3.
      t745 = t746.
      DATA t747 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t747.
      DATA(t748) = VALUE abap_bool( ).
      DATA(t749) = t745.
      IF t749 IS INITIAL.
        t748 = abap_true.
      ENDIF.
      IF t748 = abap_true.
        DATA t750 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t750.
        t747 = t750.
      ELSE.
        DATA t751 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t751.
        DATA t752 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t752.
        DATA(t753) = t745.
        t752 = t753.
        DATA(t754) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
        t751 = t752->find_direct_expression( i_type_9913 = t754 ).
        t747 = t751.
      ENDIF.
      t744 = t747.
      t743 = t744.
      DATA(t755) = VALUE abap_bool( ).
      DATA(t756) = t743.
      t755 = xsdbool( t756 IS BOUND ).
      IF t755 = abap_true.
        DATA t757 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t757.
        DATA(t758) = t743.
        t757 = t758.
        DATA(t759) = t2.
        DATA(t760) = t102.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t757 i_input_967e = t759 i_type_9913 = t760 ).
      ENDIF.
    ENDIF.
    DATA t761 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t761.
    DATA(t762) = t1.
    DATA(t763) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t761 = t762->find_direct_expressions( i_type_9913 = t763 ).
    DATA t764 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t764.
    DATA t765 TYPE REF TO object.
    CLEAR t765.
    DATA(t766) = VALUE i( ).
    DO.
      t761->load( ).
      IF t766 >= lines( t761->items ).
        EXIT.
      ENDIF.
      CLEAR t765.
      READ TABLE t761->items INDEX t766 + 1 INTO t765.
      t766 = t766 + 1.
      DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t767.
      CLEAR t764.
      IF t765 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t767 ?= t765.
        DATA t768 TYPE REF TO object.
        CLEAR t768.
        t768 = t767->as_ref( ).
        t764 ?= t768.
      ELSE.
        t764 ?= t765.
      ENDIF.
      DATA(t769) = t764.
      DATA(t770) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t769 i_input_967e = t770 ).
    ENDDO.
    DATA t771 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t771.
    DATA t772 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t772.
    DATA(t773) = t1.
    DATA(t774) = zlnt_runtime_desc_78196487750d=>zlnt_member_d209_c21e0d8a3b4e.
    t772 = t773->find_direct_expression( i_type_9913 = t774 ).
    t771 = t772.
    DATA(t775) = VALUE abap_bool( ).
    DATA(t776) = t771.
    t775 = xsdbool( t776 IS BOUND ).
    IF t775 = abap_true.
      DATA t777 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t777.
      DATA(t778) = t771.
      t777 = t778.
      DATA(t779) = t2.
      zcl_lnt_sy_loop_group_by=>run_syntax( i_node = t777 i_input_967e = t779 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d926_77d35099444b.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
