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
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc.
    t4 = t1->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = xsdbool( t9 IS INITIAL ).
    IF t12 = abap_true.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t9.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t15 = t16->find_direct_expression( i_type_9913 = t18 ).
      t11 = t15.
    ENDIF.
    t7 = t11.
    DATA t20 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t21) = VALUE abap_bool( ).
    t21 = xsdbool( t7 IS BOUND ).
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      t24 = t7.
      t23 = zcl_lnt_sy_target=>run_syntax( i_node = t24 i_input_967e = t2 ).
      t20 = t23.
    ELSE.
      CLEAR t20.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t28 = xsdbool( t7 IS INITIAL ).
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
      t35 = t1->find_direct_expression( i_type_9913 = t37 ).
      t7 = t35.
    ENDIF.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    t42 = t3.
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t45) = xsdbool( t42 IS INITIAL ).
    IF t45 = abap_true.
    ELSE.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      t49 = t42.
      DATA(t51) = |ASSIGNING|.
      t48 = t49->find_direct_token_by_text( i_text = t51 ).
      t44 = t48.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = xsdbool( t44 IS INITIAL ).
    t54 = xsdbool( t55 = abap_false ).
    t39 = t54.
    t38 = t39.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t58 = t1->find_direct_expressions( i_type_9913 = t60 ).
    t57 = t58.
    DATA t61 TYPE REF TO zcl_lnt_expression_node.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43.
    t65 = t1->find_direct_expression( i_type_9913 = t67 ).
    t64 = t65.
    DATA t68 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t69) = xsdbool( t64 IS INITIAL ).
    IF t69 = abap_true.
    ELSE.
      DATA t72 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t73 TYPE REF TO zif_lnt_node.
      DATA t74 TYPE REF TO zcl_lnt_abstract_node.
      t74 = t64.
      DATA t79 TYPE REF TO zif_lnt_node.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t80 = t74->children.
      DATA t82 TYPE REF TO object.
      t80->load( ).
      READ TABLE t80->items INDEX 1 INTO t82.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t82.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t79 ?= t84.
      ELSE.
        t79 ?= t82.
      ENDIF.
      t73 = t79.
      t72 ?= t73.
      t68 = t72.
    ENDIF.
    DATA t86 TYPE REF TO object.
    t86 = t68.
    t62 ?= t86.
    t61 = t62.
    DATA(t87) = VALUE abap_bool( ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t87 = xsdbool( t61 IS INITIAL ).
    IF t87 = abap_true.
      DATA t96 TYPE REF TO zcl_lnt_expression_node.
      DATA t98 TYPE REF TO object.
      t57->load( ).
      READ TABLE t57->items INDEX 1 INTO t98.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t99 ?= t98.
        DATA t100 TYPE REF TO object.
        t100 = t99->as_ref( ).
        t96 ?= t100.
      ELSE.
        t96 ?= t98.
      ENDIF.
      t61 = t96.
    ENDIF.
    DATA t102 TYPE REF TO zcl_lnt_abstract_type.
    DATA t103 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t104) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zcl_lnt_expression_node.
    t105 = t61.
    t104 = xsdbool( t105 IS BOUND ).
    IF t104 = abap_true.
      DATA t107 TYPE REF TO zcl_lnt_abstract_type.
      DATA t108 TYPE REF TO zcl_lnt_expression_node.
      t108 = t61.
      DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t118) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t118->has = abap_true.
      t118->value = t38.
      t115 = t118.
      DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t121 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t107 = zcl_lnt_sy_source=>run_syntax( i_node = t108 i_input_967e = t2 i_target_type = t20 i_write_reference = t115 i_allow_generic_deference = t120 i_read_reference = t121 ).
      t103 = t107.
    ELSE.
      CLEAR t103.
    ENDIF.
    t102 = t103.
    DATA t123 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t125) = VALUE string( ).
    DATA(t126) = VALUE string( ).
    DATA(t127) = VALUE string( ).
    t127 = t1->concat_tokens( ).
    DATA(t129) = strlen( t127 ).
    t126 = t127.
    IF t126 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t126 TO UPPER CASE.
    ELSE.
      t126 = zlnt_runtime_uppe_91169605024d=>full( t126 ).
    ENDIF.
    t125 = t126.
    DATA(t130) = VALUE abap_bool( ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t130 = xsdbool( t102 IS INITIAL ).
    IF t130 = abap_true.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t139) = |LOOP.|.
      t137 = xsdbool( t125 <> t139 ).
      IF t137 = abap_true.
        DATA(t140) = VALUE string( ).
        t140 = |No source type determined|.
        DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t142 = t2->issues.
        DATA t144 TYPE REF TO zcl_lnt_issue.
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        t146 = t1->get_first_token( ).
        DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t144 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t146 i_message_26cb = t140 i_fix = t149 ).
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
        DATA t157 TYPE REF TO zcl_lnt_unknown_type.
        t157 ?= t102.
        DATA(t159) = VALUE string( ).
        t159 = t157->error.
        t155 = t159.
        DATA(t161) = strlen( t154 ).
        t153 = |{ t154 }{ t155 }|.
        t152 = t153.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t162 = t2->issues.
        DATA t164 TYPE REF TO zcl_lnt_issue.
        DATA t166 TYPE REF TO zcl_lnt_abstract_token.
        t166 = t1->get_first_token( ).
        DATA t169 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t164 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t166 i_message_26cb = t152 i_fix = t169 ).
        t162->load( ).
        APPEND t164 TO t162->items.
        t162->save( ).
        DATA t170 TYPE REF TO zcl_lnt_void_type.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t173) = |Loop, not a table type|.
        DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t174->has = abap_true.
        t174->value = t173.
        t171 = t174.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t182 = xsdbool( t7 IS INITIAL ).
          t179 = t182.
        ENDIF.
        t178 = t179.
        IF t179 = abap_true.
          DATA(t189) = VALUE abap_bool( ).
          DATA(t190) = VALUE abap_bool( ).
          DATA t192 TYPE REF TO zcl_lnt_ty_table_type.
          t192 ?= t102.
          DATA(t194) = VALUE abap_bool( ).
          DATA t195 TYPE REF TO zcl_lnt_itable_options.
          t195 = t192->options.
          t194 = t195->zlnt_view_read_sr_ec4602663c93( ).
          t190 = t194.
          t189 = xsdbool( t190 = abap_false ).
          t178 = t189.
        ENDIF.
        t177 = t178.
        IF t178 = abap_true.
          DATA(t198) = VALUE abap_bool( ).
          DATA(t199) = VALUE i( ).
          DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t202 TYPE REF TO zcl_lnt_abstract_node.
          t202 = t1.
          DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t204 = t202->children.
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
          t207 = |Loop, no header line|.
          DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t209 = t2->issues.
          DATA t211 TYPE REF TO zcl_lnt_issue.
          DATA t213 TYPE REF TO zcl_lnt_abstract_token.
          t213 = t1->get_first_token( ).
          DATA t216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t211 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t213 i_message_26cb = t207 i_fix = t216 ).
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
            DATA(t236) = |LOOP AT GROUP |.
            DATA(t237) = strlen( t125 ).
            DATA(t238) = VALUE i( ).
            DATA(t239) = VALUE i( ).
            DATA(t240) = VALUE string( ).
            t238 = strlen( t236 ).
            IF t238 = 0.
              t234 = abap_true.
            ELSEIF t238 <= t237.
              t239 = 0.
              t240 = t125+t239(t238).
              IF t240 = t236.
                t234 = abap_true.
              ENDIF.
            ENDIF.
            t233 = xsdbool( t234 = abap_false ).
            t217 = t233.
          ENDIF.
          IF t217 = abap_true.
            DATA(t242) = VALUE string( ).
            t242 = |Loop, not a table type|.
            DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t244 = t2->issues.
            DATA t246 TYPE REF TO zcl_lnt_issue.
            DATA t248 TYPE REF TO zcl_lnt_abstract_token.
            t248 = t1->get_first_token( ).
            DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t246 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t248 i_message_26cb = t242 i_fix = t251 ).
            t244->load( ).
            APPEND t246 TO t244->items.
            t244->save( ).
          ELSE.
            DATA(t252) = VALUE abap_bool( ).
            DATA(t253) = VALUE abap_bool( ).
            DATA(t254) = VALUE abap_bool( ).
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t254 = xsdbool( t3 IS INITIAL ).
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
              DATA t266 TYPE REF TO zcl_lnt_ty_table_type.
              t266 ?= t102.
              DATA(t268) = VALUE abap_bool( ).
              DATA t269 TYPE REF TO zcl_lnt_itable_options.
              t269 = t266->options.
              t268 = t269->zlnt_view_read_sr_ec4602663c93( ).
              t264 = t268.
              t263 = xsdbool( t264 = abap_false ).
              t252 = t263.
            ENDIF.
            IF t252 = abap_true.
              DATA(t272) = VALUE string( ).
              t272 = |Loop, no header|.
              DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t274 = t2->issues.
              DATA t276 TYPE REF TO zcl_lnt_issue.
              DATA t278 TYPE REF TO zcl_lnt_abstract_token.
              t278 = t1->get_first_token( ).
              DATA t281 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t276 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t278 i_message_26cb = t272 i_fix = t281 ).
              t274->load( ).
              APPEND t276 TO t274->items.
              t274->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t286 TYPE REF TO zcl_lnt_expression_node.
    t286 = t3.
    DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t289) = xsdbool( t286 IS INITIAL ).
    IF t289 = abap_true.
    ELSE.
      DATA(t292) = VALUE string( ).
      DATA t293 TYPE REF TO zcl_lnt_expression_node.
      t293 = t286.
      t292 = t293->concat_tokens( ).
      DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t295->has = abap_true.
      t295->value = t292.
      t288 = t295.
    ENDIF.
    t284 = t288.
    DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t297) = VALUE abap_bool( ).
    IF t284 IS INITIAL.
      t297 = abap_true.
    ELSEIF t284->has = abap_false.
      t297 = abap_true.
    ENDIF.
    IF t297 = abap_true.
    ELSE.
      DATA(t300) = VALUE string( ).
      DATA(t301) = VALUE string( ).
      t301 = t284->value.
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
    t282 = t296.
    DATA t305 TYPE REF TO zcl_lnt_abstract_type.
    t305 = t102.
    DATA(t307) = VALUE abap_bool( ).
    DATA(t308) = VALUE abap_bool( ).
    DATA(t309) = VALUE abap_bool( ).
    DATA(t310) = VALUE abap_bool( ).
    t310 = xsdbool( t305 IS BOUND AND t305 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t309 = t310.
    IF t310 = abap_true.
      DATA(t312) = VALUE abap_bool( ).
      DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t315 TYPE REF TO zcl_lnt_ty_table_type.
      t315 ?= t305.
      DATA t318 TYPE REF TO zcl_lnt_itable_key.
      DATA t319 TYPE REF TO zcl_lnt_itable_key.
      DATA t320 TYPE REF TO zcl_lnt_itable_options.
      t320 = t315->options.
      t319 = t320->zlnt_view_read_sr_48b89cc62ab9( ).
      t318 = t319.
      DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t323) = xsdbool( t318 IS INITIAL ).
      IF t323 = abap_true.
      ELSE.
        DATA(t326) = VALUE string( ).
        DATA t327 TYPE REF TO zcl_lnt_itable_key.
        t327 = t318.
        t326 = t327->zlnt_view_read_sr_f361ef311f50( ).
        DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t329->has = abap_true.
        t329->value = t326.
        t322 = t329.
      ENDIF.
      t313 = t322.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t332) = |HASHED|.
      DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t333->has = abap_true.
      t333->value = t332.
      t330 = t333.
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
      DATA t339 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t341) = |USING|.
      t339 = t1->find_direct_token_by_text( i_text = t341 ).
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t337 = xsdbool( t339 IS INITIAL ).
      t308 = t337.
    ENDIF.
    t307 = t308.
    IF t308 = abap_true.
      DATA(t346) = VALUE abap_bool( ).
      DATA(t347) = VALUE abap_bool( ).
      DATA t348 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t350) = |FROM|.
      t348 = t1->find_direct_token_by_text( i_text = t350 ).
      t347 = xsdbool( t348 IS BOUND ).
      t346 = t347.
      IF t347 = abap_false.
        DATA(t351) = VALUE abap_bool( ).
        DATA t352 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t354) = |TO|.
        t352 = t1->find_direct_token_by_text( i_text = t354 ).
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
      t357 = t2->issues.
      DATA t359 TYPE REF TO zcl_lnt_issue.
      DATA t361 TYPE REF TO zcl_lnt_abstract_token.
      t361 = t1->get_first_token( ).
      DATA t364 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t359 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t361 i_message_26cb = t355 i_fix = t364 ).
      t357->load( ).
      APPEND t359 TO t357->items.
      t357->save( ).
      RETURN.
    ENDIF.
    DATA(t365) = VALUE abap_bool( ).
    DATA(t366) = t102.
    t365 = xsdbool( t366 IS BOUND AND t366 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t365 = abap_true.
      DATA t371 TYPE REF TO zcl_lnt_ty_table_type.
      t371 ?= t102.
      DATA t373 TYPE REF TO zcl_lnt_abstract_type.
      t373 = t371->row_type.
      t123 = t373.
      t102 = t123.
      DATA(t381) = VALUE abap_bool( ).
      DATA t382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t383 = t282.
      DATA t385 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t386) = VALUE abap_bool( ).
      IF t383 IS INITIAL.
        t386 = abap_true.
      ELSEIF t383->has = abap_false.
        t386 = abap_true.
      ENDIF.
      IF t386 = abap_true.
      ELSE.
        DATA(t389) = VALUE abap_bool( ).
        DATA(t390) = VALUE string( ).
        t390 = t383->value.
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
        DATA t399 TYPE REF TO zcl_lnt_abstract_type.
        t399 = t102.
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t398 = NEW zcl_lnt_data_reference( i_type_9913 = t399 i_qualified_name = t401 ).
        t102 = t398.
      ENDIF.
    ENDIF.
    DATA t402 TYPE REF TO zcl_lnt_expression_node.
    DATA t403 TYPE REF TO zcl_lnt_expression_node.
    DATA(t405) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t403 = t1->find_direct_expression( i_type_9913 = t405 ).
    t402 = t403.
    DATA(t406) = VALUE abap_bool( ).
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t411) = VALUE abap_bool( ).
    DATA(t412) = xsdbool( t402 IS INITIAL ).
    t411 = xsdbool( t412 = abap_false ).
    t406 = t411.
    IF t406 = abap_true.
      DATA t414 TYPE REF TO zcl_lnt_expression_node.
      t414 = t402.
      DATA t418 TYPE REF TO zcl_lnt_abstract_type.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t414 i_input_967e = t2 i_left_type = t123 i_right_type = t418 ).
    ENDIF.
    DATA(t419) = VALUE abap_bool( ).
    DATA(t420) = VALUE abap_bool( ).
    DATA(t421) = VALUE abap_bool( ).
    IF t282 IS BOUND.
      IF t282->has = abap_true.
        t421 = xsdbool( strlen( t282->value ) > 0 ).
      ENDIF.
    ENDIF.
    t420 = t421.
    IF t421 = abap_true.
      DATA(t423) = VALUE abap_bool( ).
      DATA(t424) = VALUE string( ).
      t424 = t282->value.
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
      DATA t433 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t435) = |WHERE|.
      t433 = t1->find_direct_token_by_text( i_text = t435 ).
      DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t431 = xsdbool( t433 IS INITIAL ).
      t419 = t431.
    ENDIF.
    IF t419 = abap_true.
      DATA(t440) = VALUE string( ).
      t440 = |Loop, TRANSPORTING NO FIELDS only with WHERE|.
      DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t442 = t2->issues.
      DATA t444 TYPE REF TO zcl_lnt_issue.
      DATA t446 TYPE REF TO zcl_lnt_abstract_token.
      t446 = t1->get_first_token( ).
      DATA t449 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t444 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t446 i_message_26cb = t440 i_fix = t449 ).
      t442->load( ).
      APPEND t444 TO t442->items.
      t442->save( ).
      RETURN.
    ENDIF.
    DATA(t450) = VALUE abap_bool( ).
    DATA(t451) = VALUE abap_bool( ).
    DATA(t452) = VALUE abap_bool( ).
    DATA t454 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t456) = |USING|.
    t454 = t1->find_direct_token_by_text( i_text = t456 ).
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t459) = VALUE abap_bool( ).
    DATA(t460) = xsdbool( t454 IS INITIAL ).
    t459 = xsdbool( t460 = abap_false ).
    t452 = t459.
    t451 = t452.
    IF t452 = abap_true.
      DATA(t462) = VALUE abap_bool( ).
      DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t467) = VALUE abap_bool( ).
      DATA(t468) = xsdbool( t402 IS INITIAL ).
      t467 = xsdbool( t468 = abap_false ).
      t462 = t467.
      t451 = t462.
    ENDIF.
    t450 = t451.
    IF t451 = abap_true.
      DATA(t470) = VALUE abap_bool( ).
      t470 = xsdbool( t305 IS BOUND AND t305 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t450 = t470.
    ENDIF.
    IF t450 = abap_true.
      DATA t472 TYPE REF TO zcl_lnt_expression_node.
      DATA t473 TYPE REF TO zcl_lnt_expression_node.
      DATA(t475) = |KEY|.
      t473 = t1->find_expression_after_token( i_text = t475 ).
      t472 = t473.
      DATA t476 TYPE REF TO zcl_lnt_itable_key.
      DATA(t478) = VALUE abap_bool( ).
      DATA t479 TYPE REF TO zif_lnt_statement_runnable.
      DATA t480 TYPE REF TO zcl_lnt_expression_node.
      t480 = t472.
      DATA t482 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t483) = xsdbool( t480 IS INITIAL ).
      IF t483 = abap_true.
      ELSE.
        DATA t486 TYPE REF TO zif_lnt_statement_runnable.
        DATA t487 TYPE REF TO zcl_lnt_expression_node.
        t487 = t480.
        t486 = t487->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t482 = t486.
      ENDIF.
      t479 = t482.
      t478 = xsdbool( t479 IS BOUND AND t479 IS INSTANCE OF zcl_lnt_simple_name ).
      IF t478 = abap_true.
        DATA t490 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t492 TYPE REF TO zcl_lnt_itable_options.
        DATA t494 TYPE REF TO zcl_lnt_ty_table_type.
        t494 ?= t305.
        DATA t496 TYPE REF TO zcl_lnt_itable_options.
        t496 = t494->options.
        t492 = t496.
        t491 = t492->zlnt_view_read_sr_f853e12e05a7( ).
        t490 = t491.
        DATA t498 TYPE REF TO zcl_lnt_itable_key.
        DATA(t499) = xsdbool( t490 IS INITIAL ).
        IF t499 = abap_true.
        ELSE.
          DATA t503 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t503 = t490.
          DATA(t506) = VALUE i( ).
          DATA(t507) = VALUE i( ).
          t503->load( ).
          t507 = lines( t503->items ).
          t506 = t507.
          DATA(t509) = VALUE i( ).
          t509 = 0.
          DATA t511 TYPE REF TO zcl_lnt_itable_key.
          DO.
            DATA(t513) = VALUE abap_bool( ).
            t513 = xsdbool( t509 < t506 ).
            IF t513 = abap_false.
              EXIT.
            ENDIF.
            DATA t516 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t516.
            DATA t518 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t518.
            DATA t521 TYPE REF TO object.
            CLEAR t521.
            t521 = t503->get( p0 = t509 ).
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
            t516 = t518.
            DATA(t528) = VALUE abap_bool( ).
            DATA(t529) = VALUE string( ).
            DATA(t530) = VALUE string( ).
            t530 = t516->zlnt_view_read_sr_a70477ea08ee( ).
            DATA(t532) = strlen( t530 ).
            t529 = t530.
            IF t529 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t529 TO UPPER CASE.
            ELSE.
              t529 = zlnt_runtime_uppe_91169605024d=>full( t529 ).
            ENDIF.
            DATA(t533) = VALUE string( ).
            DATA(t534) = VALUE string( ).
            DATA t536 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t536.
            DATA t537 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t537.
            t537 = t472.
            t536 = t537->get_first_token( ).
            DATA(t539) = VALUE string( ).
            t539 = t536->str.
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
              t511 = t516.
              EXIT.
            ENDIF.
            DATA(t546) = VALUE i( ).
            DATA(t548) = 1.
            t546 = t509 + t548.
            t509 = t546.
          ENDDO.
          t498 = t511.
        ENDIF.
        t476 = t498.
        DATA(t550) = VALUE abap_bool( ).
        DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t550 = xsdbool( t476 IS INITIAL ).
        IF t550 = abap_true.
          DATA(t557) = VALUE string( ).
          DATA(t558) = VALUE string( ).
          DATA(t559) = VALUE string( ).
          DATA(t560) = |Key |.
          DATA(t561) = VALUE string( ).
          DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t564 TYPE REF TO zcl_lnt_expression_node.
          t564 = t472.
          DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t568) = xsdbool( t564 IS INITIAL ).
          IF t568 = abap_true.
          ELSE.
            DATA(t571) = VALUE string( ).
            t571 = t564->concat_tokens( ).
            DATA(t573) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t573->has = abap_true.
            t573->value = t571.
            t567 = t573.
          ENDIF.
          t562 = t567.
          DATA(t574) = VALUE string( ).
          DATA(t575) = VALUE abap_bool( ).
          IF t562 IS INITIAL.
            t575 = abap_true.
          ELSEIF t562->has = abap_false.
            t575 = abap_true.
          ENDIF.
          IF t575 = abap_true.
            t574 = |undefined|.
          ELSE.
            DATA(t578) = VALUE string( ).
            t578 = t562->value.
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
          t583 = t2->issues.
          DATA t585 TYPE REF TO zcl_lnt_issue.
          DATA t587 TYPE REF TO zcl_lnt_abstract_token.
          t587 = t1->get_first_token( ).
          DATA t590 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t585 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t587 i_message_26cb = t557 i_fix = t590 ).
          t583->load( ).
          APPEND t585 TO t583->items.
          t583->save( ).
          RETURN.
        ENDIF.
        DATA(t591) = VALUE abap_bool( ).
        DATA(t592) = VALUE abap_bool( ).
        DATA t593 TYPE REF TO zcl_lnt_abap_release.
        DATA t595 TYPE REF TO zcl_lnt_current_scope.
        t595 = t2->scope.
        DATA t597 TYPE REF TO zcl_lnt_abap_release.
        DATA t598 TYPE REF TO zif_lnt_configuration.
        DATA t599 TYPE REF TO zif_lnt_registry.
        t599 = t595->reg.
        t598 = t599->get_config( ).
        t597 = t598->get_release( ).
        t593 = t597.
        DATA t601 TYPE REF TO zcl_lnt_abap_release.
        DATA t602 TYPE REF TO zcl_lnt_abap_release.
        DATA t603 TYPE REF TO zlnt_runtime_map__201f3699a39e.
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
          DATA t607 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t608 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t608.
          t607 = t608.
          DATA t609 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t610 TYPE REF TO zcl_lnt_expression_node.
          t610 = t402.
          DATA(t612) = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
          t609 = t610->find_all_expressions_recursive( i_type_9913 = t612 ).
          DATA t613 TYPE REF TO zcl_lnt_expression_node.
          DATA t614 TYPE REF TO object.
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
            DATA(t619) = VALUE string( ).
            DATA(t620) = VALUE string( ).
            t620 = t613->concat_tokens( ).
            DATA(t622) = strlen( t620 ).
            t619 = t620.
            IF t619 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t619 TO UPPER CASE.
            ELSE.
              t619 = zlnt_runtime_uppe_91169605024d=>full( t619 ).
            ENDIF.
            t607->load( ).
            APPEND t619 TO t607->items.
            t607->save( ).
          ENDDO.
          t605 = t607.
          DATA t624 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t625 TYPE REF TO zcl_lnt_itable_key.
          t625 = t476.
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
            DATA t632 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t632.
            t632 = t605.
            DATA(t634) = VALUE i( ).
            DATA(t635) = VALUE i( ).
            t632->load( ).
            t635 = lines( t632->items ).
            t634 = t635.
            DATA(t637) = VALUE i( ).
            t637 = 0.
            DATA t639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t639.
            CLEAR t639.
            DO.
              DATA(t641) = VALUE abap_bool( ).
              t641 = xsdbool( t637 < t634 ).
              IF t641 = abap_false.
                EXIT.
              ENDIF.
              DATA(t644) = VALUE string( ).
              DATA(t645) = VALUE string( ).
              DATA t646 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t646.
              t646 = t632->get( p0 = t637 ).
              t645 = t646->value.
              t644 = t645.
              DATA(t649) = VALUE abap_bool( ).
              DATA(t651) = VALUE string( ).
              DATA(t652) = VALUE string( ).
              DATA(t654) = strlen( t627 ).
              t652 = t627.
              IF t652 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t652 TO UPPER CASE.
              ELSE.
                t652 = zlnt_runtime_uppe_91169605024d=>full( t652 ).
              ENDIF.
              DATA(t655) = | IS INITIAL|.
              DATA(t656) = strlen( t652 ).
              t651 = |{ t652 }{ t655 }|.
              t649 = xsdbool( t644 = t651 ).
              IF t649 = abap_true.
                DATA(t660) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t660->has = abap_true.
                t660->value = t644.
                t639 = t660.
                EXIT.
              ENDIF.
              DATA(t662) = VALUE i( ).
              DATA(t664) = 1.
              t662 = t637 + t664.
              t637 = t662.
            ENDDO.
            t630 = t639.
            DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t666.
            CLEAR t666.
            DATA(t668) = VALUE abap_bool( ).
            DATA(t669) = VALUE abap_bool( ).
            IF t630 IS INITIAL.
              t669 = abap_true.
            ELSEIF t630->has = abap_false.
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
              t673 = t2->issues.
              DATA t675 TYPE REF TO zcl_lnt_issue.
              CLEAR t675.
              DATA t677 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t677.
              t677 = t1->get_first_token( ).
              DATA t680 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t680.
              t675 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t677 i_message_26cb = t671 i_fix = t680 ).
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
    DATA t683 TYPE REF TO zcl_lnt_expression_node.
    t683 = t7.
    DATA t685 TYPE REF TO zcl_lnt_expression_node.
    DATA(t686) = xsdbool( t683 IS INITIAL ).
    IF t686 = abap_true.
    ELSE.
      DATA t689 TYPE REF TO zcl_lnt_expression_node.
      DATA t690 TYPE REF TO zcl_lnt_expression_node.
      t690 = t683.
      DATA(t692) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t689 = t690->find_direct_expression( i_type_9913 = t692 ).
      t685 = t689.
    ENDIF.
    t681 = t685.
    DATA(t693) = VALUE abap_bool( ).
    t693 = xsdbool( t681 IS BOUND ).
    IF t693 = abap_true.
      DATA t695 TYPE REF TO zcl_lnt_expression_node.
      t695 = t681.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t695 i_input_967e = t2 i_type_9913 = t102 ).
    ENDIF.
    DATA t700 TYPE REF TO zcl_lnt_expression_node.
    DATA t701 TYPE REF TO object.
    DATA(t702) = VALUE i( ).
    DO.
      t57->load( ).
      IF t702 >= lines( t57->items ).
        EXIT.
      ENDIF.
      CLEAR t701.
      READ TABLE t57->items INDEX t702 + 1 INTO t701.
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
      DATA t707 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t707.
      t707 = t61.
      DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t709.
      DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t710.
      CLEAR t709.
      IF t700 IS BOUND.
        DATA t711 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t711.
        DATA t712 TYPE REF TO object.
        CLEAR t712.
        CLEAR t711.
        t712 = t700.
        TRY.
            t709 ?= t712.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t709 IS NOT BOUND.
          TRY.
              t711 ?= t700.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t711 IS BOUND.
            t709 = t711->source( ).
          ENDIF.
          IF t709 IS NOT BOUND.
            CREATE OBJECT t709.
            t709->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t709->oval = t700.
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
      t716 = t700.
      DATA t721 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t721.
      DATA t722 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t722.
      DATA t723 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t723.
      DATA t724 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t724.
      t715 = zcl_lnt_sy_source=>run_syntax( i_node = t716 i_input_967e = t2 i_target_type = t721 i_write_reference = t722 i_allow_generic_deference = t723 i_read_reference = t724 ).
    ENDDO.
    DATA t725 TYPE REF TO zcl_lnt_expression_node.
    DATA t727 TYPE REF TO zcl_lnt_expression_node.
    t727 = t7.
    DATA t729 TYPE REF TO zcl_lnt_expression_node.
    DATA(t730) = xsdbool( t727 IS INITIAL ).
    IF t730 = abap_true.
    ELSE.
      DATA t733 TYPE REF TO zcl_lnt_expression_node.
      DATA t734 TYPE REF TO zcl_lnt_expression_node.
      t734 = t727.
      DATA(t736) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
      t733 = t734->find_direct_expression( i_type_9913 = t736 ).
      t729 = t733.
    ENDIF.
    t725 = t729.
    DATA(t737) = VALUE abap_bool( ).
    t737 = xsdbool( t725 IS BOUND ).
    IF t737 = abap_true.
      DATA t739 TYPE REF TO zcl_lnt_expression_node.
      t739 = t725.
      zcl_lnt_sy_inline_fs=>run_syntax( i_node = t739 i_input_967e = t2 i_type_9913 = t102 ).
    ELSE.
      DATA t743 TYPE REF TO zcl_lnt_expression_node.
      DATA t745 TYPE REF TO zcl_lnt_expression_node.
      t745 = t3.
      DATA t747 TYPE REF TO zcl_lnt_expression_node.
      DATA(t748) = xsdbool( t745 IS INITIAL ).
      IF t748 = abap_true.
      ELSE.
        DATA t751 TYPE REF TO zcl_lnt_expression_node.
        DATA t752 TYPE REF TO zcl_lnt_expression_node.
        t752 = t745.
        DATA(t754) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
        t751 = t752->find_direct_expression( i_type_9913 = t754 ).
        t747 = t751.
      ENDIF.
      t743 = t747.
      DATA(t755) = VALUE abap_bool( ).
      t755 = xsdbool( t743 IS BOUND ).
      IF t755 = abap_true.
        DATA t757 TYPE REF TO zcl_lnt_expression_node.
        t757 = t743.
        zcl_lnt_sy_fs_target=>run_syntax( i_node = t757 i_input_967e = t2 i_type_9913 = t102 ).
      ENDIF.
    ENDIF.
    DATA t761 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t763) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t761 = t1->find_direct_expressions( i_type_9913 = t763 ).
    DATA t764 TYPE REF TO zcl_lnt_expression_node.
    DATA t765 TYPE REF TO object.
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
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t764 i_input_967e = t2 ).
    ENDDO.
    DATA t771 TYPE REF TO zcl_lnt_expression_node.
    DATA t772 TYPE REF TO zcl_lnt_expression_node.
    DATA(t774) = zlnt_runtime_desc_78196487750d=>zlnt_member_d209_c21e0d8a3b4e.
    t772 = t1->find_direct_expression( i_type_9913 = t774 ).
    t771 = t772.
    DATA(t775) = VALUE abap_bool( ).
    t775 = xsdbool( t771 IS BOUND ).
    IF t775 = abap_true.
      DATA t777 TYPE REF TO zcl_lnt_expression_node.
      t777 = t771.
      zcl_lnt_sy_loop_group_by=>run_syntax( i_node = t777 i_input_967e = t2 ).
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
