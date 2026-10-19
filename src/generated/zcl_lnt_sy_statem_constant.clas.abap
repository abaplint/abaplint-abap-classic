* TS: src/abap/5_syntax/statements/constant.ts:10:1 Constant
CLASS zcl_lnt_sy_statem_constant DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS is_name_too_long IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_only_digits IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS allow_only_digits_name IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statem_constant IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_basic_types.
    DATA t4 TYPE REF TO zcl_lnt_basic_types.
    t4 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t7 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t7 = t3->simple_type( i_node = t1 i_qualified_name_prefix = t10 ).
    t6 = t7.
    DATA(t11) = VALUE abap_bool( ).
    t11 = xsdbool( t6 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t14 = t3->find_value( i_node = t1 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t20.
      t19 = t20.
      DATA(t22) = |read_only|.
      t19->load( ).
      APPEND t22 TO t19->items.
      t19->save( ).
      DATA(t24) = |static|.
      t19->load( ).
      APPEND t24 TO t19->items.
      t19->save( ).
      t17 = t19.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t31) = VALUE string( ).
      DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
      t32 = t6.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE string( ).
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      t39 = t32->token.
      DATA(t41) = VALUE string( ).
      t41 = t39->str.
      t37 = t41.
      t36 = t37.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = t36.
      DATA(t46) = 0.
      DATA(t47) = 1.
      DATA(t48) = strlen( t45 ).
      IF t46 < 0.
        t46 = t46 + t48.
        IF t46 < 0.
          t46 = 0.
        ENDIF.
      ENDIF.
      IF t46 > t48 OR t47 <= 0.
        CLEAR t44.
      ELSE.
        IF t47 > t48 - t46.
          t47 = t48 - t46.
        ENDIF.
        t44 = t45+t46(t47).
      ENDIF.
      DATA(t49) = |!|.
      t43 = xsdbool( t44 = t49 ).
      IF t43 = abap_true.
        DATA(t50) = VALUE string( ).
        DATA(t51) = VALUE string( ).
        t51 = t36.
        DATA(t53) = VALUE string( ).
        DATA(t55) = 1.
        DATA(t56) = VALUE i( ).
        t56 = strlen( t51 ).
        DATA(t59) = strlen( t51 ).
        IF t55 < 0.
          t55 = t55 + t59.
          IF t55 < 0.
            t55 = 0.
          ENDIF.
        ENDIF.
        IF t55 > t59 OR t56 <= 0.
          CLEAR t53.
        ELSE.
          IF t56 > t59 - t55.
            t56 = t59 - t55.
          ENDIF.
          t53 = t51+t55(t56).
        ENDIF.
        t50 = t53.
        t36 = t50.
      ENDIF.
      t35 = t36.
      t31 = t35.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t31.
      DATA(t63) = VALUE abap_bool( ).
      DATA t64 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t65) = |^[0-9]+$|.
      DATA(t66) = ||.
      CREATE OBJECT t64 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t65 flags = t66.
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t68 = t61.
      DATA(t70) = VALUE string( ).
      DATA(t71) = VALUE abap_bool( ).
      IF t68 IS INITIAL.
        t71 = abap_true.
      ELSEIF t68->has = abap_false.
        t71 = abap_true.
      ENDIF.
      IF t71 = abap_true.
        t70 = |undefined|.
      ELSE.
        DATA(t74) = VALUE string( ).
        t74 = t68->value.
        t70 = t74.
      ENDIF.
      t67 = t70.
      t63 = t64->test( p0 = t67 ).
      t27 = t63.
      t26 = t27.
      IF t27 = abap_true.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE abap_bool( ).
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        DATA t85 TYPE REF TO zcl_lnt_current_scope.
        t85 = t2->scope.
        t84 = t85->is_any_oo( ).
        t83 = xsdbool( t84 = abap_false ).
        t82 = t83.
        IF t83 = abap_true.
          DATA(t88) = VALUE abap_bool( ).
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          t93 = t1->colon.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = xsdbool( t93 IS INITIAL ).
          t97 = xsdbool( t98 = abap_false ).
          t88 = t97.
          t82 = t88.
        ENDIF.
        t77 = t82.
        t76 = xsdbool( t77 = abap_false ).
        t26 = t76.
      ENDIF.
      IF t26 = abap_true.
        DATA(t101) = VALUE string( ).
        t101 = |not possible to have a name with only digits|.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t103 = t2->issues.
        DATA t105 TYPE REF TO zcl_lnt_issue.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        DATA t108 TYPE REF TO zcl_lnt_fi_identifier.
        t108 = t6.
        DATA t111 TYPE REF TO zcl_lnt_abstract_token.
        t111 = t108->token.
        t107 = t111.
        DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t107 i_message_26cb = t101 i_fix = t114 ).
        t103->load( ).
        APPEND t105 TO t103->items.
        t103->save( ).
        DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
        t117 = t6.
        DATA t120 TYPE REF TO zcl_lnt_abstract_token.
        t120 = t117->token.
        t116 = t120.
        DATA(t122) = VALUE string( ).
        t122 = t2->filename.
        DATA t124 TYPE REF TO zcl_lnt_void_type.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t127) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t127.
        t125 = t128.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t124 = zcl_lnt_void_type=>get_db65( i_voided = t125 i_qualified_name = t130 ).
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t131 = t17.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t13 IS BOUND AND t13->has = abap_true.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t137->sval = t13->value.
        ENDIF.
        t135 = t137.
        t115 = NEW zcl_lnt_typed_identifier( i_token = t116 i_filename = t122 i_type_9913 = t124 i_meta = t131 i_value = t135 ).
        result = t115.
        RETURN.
      ENDIF.
      DATA(t140) = VALUE abap_bool( ).
      DATA(t141) = VALUE string( ).
      DATA(t142) = VALUE string( ).
      DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
      t143 = t6.
      DATA(t146) = VALUE string( ).
      DATA(t147) = VALUE string( ).
      DATA(t148) = VALUE string( ).
      DATA t150 TYPE REF TO zcl_lnt_abstract_token.
      t150 = t143->token.
      DATA(t152) = VALUE string( ).
      t152 = t150->str.
      t148 = t152.
      t147 = t148.
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = VALUE string( ).
      DATA(t156) = t147.
      DATA(t157) = 0.
      DATA(t158) = 1.
      DATA(t159) = strlen( t156 ).
      IF t157 < 0.
        t157 = t157 + t159.
        IF t157 < 0.
          t157 = 0.
        ENDIF.
      ENDIF.
      IF t157 > t159 OR t158 <= 0.
        CLEAR t155.
      ELSE.
        IF t158 > t159 - t157.
          t158 = t159 - t157.
        ENDIF.
        t155 = t156+t157(t158).
      ENDIF.
      DATA(t160) = |!|.
      t154 = xsdbool( t155 = t160 ).
      IF t154 = abap_true.
        DATA(t161) = VALUE string( ).
        DATA(t162) = VALUE string( ).
        t162 = t147.
        DATA(t164) = VALUE string( ).
        DATA(t166) = 1.
        DATA(t167) = VALUE i( ).
        t167 = strlen( t162 ).
        DATA(t170) = strlen( t162 ).
        IF t166 < 0.
          t166 = t166 + t170.
          IF t166 < 0.
            t166 = 0.
          ENDIF.
        ENDIF.
        IF t166 > t170 OR t167 <= 0.
          CLEAR t164.
        ELSE.
          IF t167 > t170 - t166.
            t167 = t170 - t166.
          ENDIF.
          t164 = t162+t166(t167).
        ENDIF.
        t161 = t164.
        t147 = t161.
      ENDIF.
      t146 = t147.
      t142 = t146.
      t141 = t142.
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = VALUE i( ).
      t173 = strlen( t141 ).
      DATA(t176) = 30.
      t172 = xsdbool( t173 > t176 ).
      t140 = t172.
      IF t140 = abap_true.
        DATA(t177) = VALUE string( ).
        DATA(t178) = VALUE string( ).
        DATA(t179) = |CONSTANTS name too long, |.
        DATA(t180) = VALUE string( ).
        DATA t181 TYPE REF TO zcl_lnt_fi_identifier.
        t181 = t6.
        DATA(t184) = VALUE string( ).
        DATA(t185) = VALUE string( ).
        DATA(t186) = VALUE string( ).
        DATA t188 TYPE REF TO zcl_lnt_abstract_token.
        t188 = t181->token.
        DATA(t190) = VALUE string( ).
        t190 = t188->str.
        t186 = t190.
        t185 = t186.
        DATA(t192) = VALUE abap_bool( ).
        DATA(t193) = VALUE string( ).
        DATA(t194) = t185.
        DATA(t195) = 0.
        DATA(t196) = 1.
        DATA(t197) = strlen( t194 ).
        IF t195 < 0.
          t195 = t195 + t197.
          IF t195 < 0.
            t195 = 0.
          ENDIF.
        ENDIF.
        IF t195 > t197 OR t196 <= 0.
          CLEAR t193.
        ELSE.
          IF t196 > t197 - t195.
            t196 = t197 - t195.
          ENDIF.
          t193 = t194+t195(t196).
        ENDIF.
        DATA(t198) = |!|.
        t192 = xsdbool( t193 = t198 ).
        IF t192 = abap_true.
          DATA(t199) = VALUE string( ).
          DATA(t200) = VALUE string( ).
          t200 = t185.
          DATA(t202) = VALUE string( ).
          DATA(t204) = 1.
          DATA(t205) = VALUE i( ).
          t205 = strlen( t200 ).
          DATA(t208) = strlen( t200 ).
          IF t204 < 0.
            t204 = t204 + t208.
            IF t204 < 0.
              t204 = 0.
            ENDIF.
          ENDIF.
          IF t204 > t208 OR t205 <= 0.
            CLEAR t202.
          ELSE.
            IF t205 > t208 - t204.
              t205 = t208 - t204.
            ENDIF.
            t202 = t200+t204(t205).
          ENDIF.
          t199 = t202.
          t185 = t199.
        ENDIF.
        t184 = t185.
        t180 = t184.
        DATA(t210) = strlen( t179 ).
        t178 = |{ t179 }{ t180 }|.
        t177 = t178.
        DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t211 = t2->issues.
        DATA t213 TYPE REF TO zcl_lnt_issue.
        DATA t215 TYPE REF TO zcl_lnt_abstract_token.
        DATA t216 TYPE REF TO zcl_lnt_fi_identifier.
        t216 = t6.
        DATA t219 TYPE REF TO zcl_lnt_abstract_token.
        t219 = t216->token.
        t215 = t219.
        DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t213 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t215 i_message_26cb = t177 i_fix = t222 ).
        t211->load( ).
        APPEND t213 TO t211->items.
        t211->save( ).
      ENDIF.
      DATA t223 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t224 TYPE REF TO zcl_lnt_abstract_token.
      DATA t225 TYPE REF TO zcl_lnt_fi_identifier.
      t225 = t6.
      DATA t228 TYPE REF TO zcl_lnt_abstract_token.
      t228 = t225->token.
      t224 = t228.
      DATA(t230) = VALUE string( ).
      t230 = t2->filename.
      DATA t232 TYPE REF TO zcl_lnt_abstract_type.
      DATA t236 TYPE REF TO zcl_lnt_abstract_type.
      t236 = t6->type_cba0.
      t232 = t236.
      DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t238 = t17.
      DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t13 IS BOUND AND t13->has = abap_true.
        CREATE OBJECT t244.
        t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t244->sval = t13->value.
      ENDIF.
      t242 = t244.
      t223 = NEW zcl_lnt_typed_identifier( i_token = t224 i_filename = t230 i_type_9913 = t232 i_meta = t238 i_value = t242 ).
      result = t223.
      RETURN.
    ENDIF.
    DATA t247 TYPE REF TO zcl_lnt_expression_node.
    DATA t248 TYPE REF TO zcl_lnt_expression_node.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t248 = t1->find_first_expression( i_type_9913 = t250 ).
    t247 = t248.
    DATA(t251) = VALUE abap_bool( ).
    t251 = xsdbool( t247 IS BOUND ).
    IF t251 = abap_true.
      DATA(t253) = VALUE abap_bool( ).
      DATA(t254) = VALUE abap_bool( ).
      DATA(t258) = VALUE string( ).
      DATA t259 TYPE REF TO zcl_lnt_expression_node.
      t259 = t247.
      t258 = t259->concat_tokens( ).
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = t258.
      DATA(t263) = VALUE abap_bool( ).
      DATA t264 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t265) = |^[0-9]+$|.
      DATA(t266) = ||.
      CREATE OBJECT t264 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t265 flags = t266.
      DATA(t267) = VALUE string( ).
      DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t268 = t261.
      DATA(t270) = VALUE string( ).
      DATA(t271) = VALUE abap_bool( ).
      IF t268 IS INITIAL.
        t271 = abap_true.
      ELSEIF t268->has = abap_false.
        t271 = abap_true.
      ENDIF.
      IF t271 = abap_true.
        t270 = |undefined|.
      ELSE.
        DATA(t274) = VALUE string( ).
        t274 = t268->value.
        t270 = t274.
      ENDIF.
      t267 = t270.
      t263 = t264->test( p0 = t267 ).
      t254 = t263.
      t253 = t254.
      IF t254 = abap_true.
        DATA(t276) = VALUE abap_bool( ).
        DATA(t277) = VALUE abap_bool( ).
        DATA(t282) = VALUE abap_bool( ).
        DATA(t283) = VALUE abap_bool( ).
        DATA(t284) = VALUE abap_bool( ).
        DATA t285 TYPE REF TO zcl_lnt_current_scope.
        t285 = t2->scope.
        t284 = t285->is_any_oo( ).
        t283 = xsdbool( t284 = abap_false ).
        t282 = t283.
        IF t283 = abap_true.
          DATA(t288) = VALUE abap_bool( ).
          DATA t293 TYPE REF TO zcl_lnt_abstract_token.
          t293 = t1->colon.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t297) = VALUE abap_bool( ).
          DATA(t298) = xsdbool( t293 IS INITIAL ).
          t297 = xsdbool( t298 = abap_false ).
          t288 = t297.
          t282 = t288.
        ENDIF.
        t277 = t282.
        t276 = xsdbool( t277 = abap_false ).
        t253 = t276.
      ENDIF.
      IF t253 = abap_true.
        DATA(t301) = VALUE string( ).
        t301 = |not possible to have a name with only digits|.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t303 = t2->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        DATA t308 TYPE REF TO zcl_lnt_expression_node.
        t308 = t247.
        t307 = t308->get_first_token( ).
        DATA t311 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t307 i_message_26cb = t301 i_fix = t311 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
      ENDIF.
      DATA(t312) = VALUE abap_bool( ).
      DATA(t313) = VALUE string( ).
      DATA(t314) = VALUE string( ).
      DATA t315 TYPE REF TO zcl_lnt_expression_node.
      t315 = t247.
      t314 = t315->concat_tokens( ).
      t313 = t314.
      DATA(t317) = VALUE abap_bool( ).
      DATA(t318) = VALUE i( ).
      t318 = strlen( t313 ).
      DATA(t321) = 30.
      t317 = xsdbool( t318 > t321 ).
      t312 = t317.
      IF t312 = abap_true.
        DATA(t322) = VALUE string( ).
        DATA(t323) = VALUE string( ).
        DATA(t324) = |CONSTANTS name too long, |.
        DATA(t325) = VALUE string( ).
        DATA t326 TYPE REF TO zcl_lnt_expression_node.
        t326 = t247.
        t325 = t326->concat_tokens( ).
        DATA(t328) = strlen( t324 ).
        t323 = |{ t324 }{ t325 }|.
        t322 = t323.
        DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t329 = t2->issues.
        DATA t331 TYPE REF TO zcl_lnt_issue.
        DATA t333 TYPE REF TO zcl_lnt_abstract_token.
        DATA t334 TYPE REF TO zcl_lnt_expression_node.
        t334 = t247.
        t333 = t334->get_first_token( ).
        DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t331 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t333 i_message_26cb = t322 i_fix = t337 ).
        t329->load( ).
        APPEND t331 TO t329->items.
        t329->save( ).
      ENDIF.
      DATA t338 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t339 TYPE REF TO zcl_lnt_abstract_token.
      DATA t340 TYPE REF TO zcl_lnt_expression_node.
      t340 = t247.
      t339 = t340->get_first_token( ).
      DATA(t342) = VALUE string( ).
      t342 = t2->filename.
      DATA t344 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t345) = |constant, fallback|.
      DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t344 = NEW zcl_lnt_unknown_type( i_error = t345 i_qualified_name = t346 ).
      DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t338 = NEW zcl_lnt_typed_identifier( i_token = t339 i_filename = t342 i_type_9913 = t344 i_meta = t347 i_value = t348 ).
      result = t338.
      RETURN.
    ENDIF.
    DATA t349 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    DATA t350 TYPE REF TO zcx_lnt_assert_error.
    DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t353) = |Statement Constant: unexpected structure|.
    DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t354->has = abap_true.
    t354->value = t353.
    t351 = t354.
    t350 = NEW zcx_lnt_assert_error( i_message_26cb = t351 ).
    t349 = NEW #( ).
    t349->payload = t350.
    CLEAR t349->source_value.
    DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t357 TYPE REF TO object.
    t357 = t350.
    TRY.
        t349->source_value ?= t357.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t349->source_value IS NOT BOUND.
      TRY.
          t356 ?= t350.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS BOUND.
        t349->source_value = t356->source( ).
      ENDIF.
      IF t349->source_value IS NOT BOUND.
        CREATE OBJECT t349->source_value.
        t349->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t349->source_value->oval = t350.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t349.
  ENDMETHOD.

  METHOD is_name_too_long.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    t3 = strlen( i_name ).
    DATA(t6) = 30.
    t2 = xsdbool( t3 > t6 ).
    result = t2.

  ENDMETHOD.

  METHOD is_only_digits.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t4) = |^[0-9]+$|.
    DATA(t5) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t7 = t1.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE abap_bool( ).
    IF t7 IS INITIAL.
      t10 = abap_true.
    ELSEIF t7->has = abap_false.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      t9 = |undefined|.
    ELSE.
      DATA t13 TYPE string.
      t13 = t7->value.
      t9 = t13.
    ENDIF.
    t6 = t9.
    t2 = t3->test( p0 = t6 ).
    result = t2.

  ENDMETHOD.

  METHOD allow_only_digits_name.
    DATA(t1) = i_node.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    t6 = i_input_967e->scope.
    t5 = t6->is_any_oo( ).
    t4 = xsdbool( t5 = abap_false ).
    t3 = t4.
    IF t4 = abap_true.
      DATA(t9) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t1->colon.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = xsdbool( t14 IS INITIAL ).
      t18 = xsdbool( t19 = abap_false ).
      t9 = t18.
      t3 = t9.
    ENDIF.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d881_71710c063965.
  ENDMETHOD.
ENDCLASS.
