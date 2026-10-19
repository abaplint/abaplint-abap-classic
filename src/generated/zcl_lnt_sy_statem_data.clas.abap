* TS: src/abap/5_syntax/statements/data.ts:9:1 Data
CLASS zcl_lnt_sy_statem_data DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_statem_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
    t8 = t1->find_first_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE abap_bool.
    t11 = xsdbool( t7 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      t15 = t7.
      t14 = zcl_lnt_sy_data_definition=>run_syntax( i_node = t15 i_input_967e = t2 ).
      t13 = t14.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t13 IS BOUND ).
      t19 = t20.
      IF t20 = abap_true.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t26) = VALUE string( ).
        DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
        t27 = t13.
        DATA(t30) = VALUE string( ).
        DATA t31 TYPE string.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        t34 = t27->token.
        DATA t36 TYPE string.
        t36 = t34->str.
        t31 = t36.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE string( ).
        DATA(t40) = t31.
        DATA(t41) = 0.
        DATA(t42) = 1.
        DATA(t43) = strlen( t40 ).
        IF t41 < 0.
          t41 = t41 + t43.
          IF t41 < 0.
            t41 = 0.
          ENDIF.
        ENDIF.
        IF t41 > t43 OR t42 <= 0.
          CLEAR t39.
        ELSE.
          IF t42 > t43 - t41.
            t42 = t43 - t41.
          ENDIF.
          t39 = t40+t41(t42).
        ENDIF.
        DATA(t44) = |!|.
        t38 = xsdbool( t39 = t44 ).
        IF t38 = abap_true.
          DATA(t45) = VALUE string( ).
          DATA t46 TYPE string.
          t46 = t31.
          DATA(t48) = VALUE string( ).
          DATA(t50) = 1.
          DATA t51 TYPE i.
          t51 = strlen( t46 ).
          DATA(t54) = strlen( t46 ).
          IF t50 < 0.
            t50 = t50 + t54.
            IF t50 < 0.
              t50 = 0.
            ENDIF.
          ENDIF.
          IF t50 > t54 OR t51 <= 0.
            CLEAR t48.
          ELSE.
            IF t51 > t54 - t50.
              t51 = t54 - t50.
            ENDIF.
            t48 = t46+t50(t51).
          ENDIF.
          t45 = t48.
          t31 = t45.
        ENDIF.
        t30 = t31.
        t26 = t30.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t26.
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA(t60) = |^[0-9]+$|.
        DATA(t61) = ||.
        CREATE OBJECT t59 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t60 flags = t61.
        DATA(t62) = VALUE string( ).
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t63 = t56.
        DATA(t65) = VALUE string( ).
        DATA(t66) = VALUE abap_bool( ).
        IF t63 IS INITIAL.
          t66 = abap_true.
        ELSEIF t63->has = abap_false.
          t66 = abap_true.
        ENDIF.
        IF t66 = abap_true.
          t65 = |undefined|.
        ELSE.
          DATA t69 TYPE string.
          t69 = t63->value.
          t65 = t69.
        ENDIF.
        t62 = t65.
        t58 = t59->test( p0 = t62 ).
        t22 = t58.
        t19 = t22.
      ENDIF.
      t18 = t19.
      IF t19 = abap_true.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE abap_bool( ).
        DATA t77 TYPE abap_bool.
        DATA t78 TYPE abap_bool.
        DATA t79 TYPE abap_bool.
        DATA t80 TYPE REF TO zcl_lnt_current_scope.
        t80 = t2->scope.
        t79 = t80->is_any_oo( ).
        t78 = xsdbool( t79 = abap_false ).
        t77 = t78.
        IF t78 = abap_true.
          DATA(t83) = VALUE abap_bool( ).
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          t88 = t1->colon.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = xsdbool( t88 IS INITIAL ).
          t92 = xsdbool( t93 = abap_false ).
          t83 = t92.
          t77 = t83.
        ENDIF.
        t72 = t77.
        t71 = xsdbool( t72 = abap_false ).
        t18 = t71.
      ENDIF.
      IF t18 = abap_true.
        DATA(t97) = |not possible to have a name with only digits|.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t98 = t2->issues.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
        t103 = t13.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        t106 = t103->token.
        t102 = t106.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t100 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t102 i_message_26cb = t97 i_fix = t109 ).
        t98->load( ).
        APPEND t100 TO t98->items.
        t98->save( ).
        DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        DATA t114 TYPE REF TO zcl_lnt_fi_identifier.
        t114 = t13.
        DATA t117 TYPE REF TO zcl_lnt_abstract_token.
        t117 = t114->token.
        t113 = t117.
        DATA t119 TYPE string.
        t119 = t2->filename.
        DATA t121 TYPE REF TO zcl_lnt_void_type.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t124) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t124.
        t122 = t125.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t121 = zcl_lnt_void_type=>get_db65( i_voided = t122 i_qualified_name = t127 ).
        DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t112 = NEW zcl_lnt_typed_identifier( i_token = t113 i_filename = t119 i_type_9913 = t121 i_meta = t128 i_value = t129 ).
        result = t112.
        RETURN.
      ENDIF.
      DATA t131 TYPE abap_bool.
      DATA t132 TYPE abap_bool.
      t132 = xsdbool( t13 IS BOUND ).
      t131 = t132.
      IF t132 = abap_true.
        DATA(t134) = VALUE abap_bool( ).
        DATA(t135) = VALUE string( ).
        DATA(t136) = VALUE string( ).
        DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
        t137 = t13.
        DATA(t140) = VALUE string( ).
        DATA t141 TYPE string.
        DATA t144 TYPE REF TO zcl_lnt_abstract_token.
        t144 = t137->token.
        DATA t146 TYPE string.
        t146 = t144->str.
        t141 = t146.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE string( ).
        DATA(t150) = t141.
        DATA(t151) = 0.
        DATA(t152) = 1.
        DATA(t153) = strlen( t150 ).
        IF t151 < 0.
          t151 = t151 + t153.
          IF t151 < 0.
            t151 = 0.
          ENDIF.
        ENDIF.
        IF t151 > t153 OR t152 <= 0.
          CLEAR t149.
        ELSE.
          IF t152 > t153 - t151.
            t152 = t153 - t151.
          ENDIF.
          t149 = t150+t151(t152).
        ENDIF.
        DATA(t154) = |!|.
        t148 = xsdbool( t149 = t154 ).
        IF t148 = abap_true.
          DATA(t155) = VALUE string( ).
          DATA t156 TYPE string.
          t156 = t141.
          DATA(t158) = VALUE string( ).
          DATA(t160) = 1.
          DATA t161 TYPE i.
          t161 = strlen( t156 ).
          DATA(t164) = strlen( t156 ).
          IF t160 < 0.
            t160 = t160 + t164.
            IF t160 < 0.
              t160 = 0.
            ENDIF.
          ENDIF.
          IF t160 > t164 OR t161 <= 0.
            CLEAR t158.
          ELSE.
            IF t161 > t164 - t160.
              t161 = t164 - t160.
            ENDIF.
            t158 = t156+t160(t161).
          ENDIF.
          t155 = t158.
          t141 = t155.
        ENDIF.
        t140 = t141.
        t136 = t140.
        t135 = t136.
        DATA t166 TYPE abap_bool.
        DATA t167 TYPE i.
        t167 = strlen( t135 ).
        DATA(t170) = 30.
        t166 = xsdbool( t167 > t170 ).
        t134 = t166.
        t131 = t134.
      ENDIF.
      IF t131 = abap_true.
        DATA(t171) = VALUE string( ).
        DATA(t172) = VALUE string( ).
        DATA(t173) = |DATA name too long, |.
        DATA(t174) = VALUE string( ).
        DATA t175 TYPE REF TO zcl_lnt_fi_identifier.
        t175 = t13.
        DATA(t178) = VALUE string( ).
        DATA t179 TYPE string.
        DATA t182 TYPE REF TO zcl_lnt_abstract_token.
        t182 = t175->token.
        DATA t184 TYPE string.
        t184 = t182->str.
        t179 = t184.
        DATA(t186) = VALUE abap_bool( ).
        DATA(t187) = VALUE string( ).
        DATA(t188) = t179.
        DATA(t189) = 0.
        DATA(t190) = 1.
        DATA(t191) = strlen( t188 ).
        IF t189 < 0.
          t189 = t189 + t191.
          IF t189 < 0.
            t189 = 0.
          ENDIF.
        ENDIF.
        IF t189 > t191 OR t190 <= 0.
          CLEAR t187.
        ELSE.
          IF t190 > t191 - t189.
            t190 = t191 - t189.
          ENDIF.
          t187 = t188+t189(t190).
        ENDIF.
        DATA(t192) = |!|.
        t186 = xsdbool( t187 = t192 ).
        IF t186 = abap_true.
          DATA(t193) = VALUE string( ).
          DATA t194 TYPE string.
          t194 = t179.
          DATA(t196) = VALUE string( ).
          DATA(t198) = 1.
          DATA t199 TYPE i.
          t199 = strlen( t194 ).
          DATA(t202) = strlen( t194 ).
          IF t198 < 0.
            t198 = t198 + t202.
            IF t198 < 0.
              t198 = 0.
            ENDIF.
          ENDIF.
          IF t198 > t202 OR t199 <= 0.
            CLEAR t196.
          ELSE.
            IF t199 > t202 - t198.
              t199 = t202 - t198.
            ENDIF.
            t196 = t194+t198(t199).
          ENDIF.
          t193 = t196.
          t179 = t193.
        ENDIF.
        t178 = t179.
        t174 = t178.
        DATA(t204) = strlen( t173 ).
        t172 = |{ t173 }{ t174 }|.
        t171 = t172.
        DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t205 = t2->issues.
        DATA t207 TYPE REF TO zcl_lnt_issue.
        DATA t209 TYPE REF TO zcl_lnt_abstract_token.
        DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
        t210 = t13.
        DATA t213 TYPE REF TO zcl_lnt_abstract_token.
        t213 = t210->token.
        t209 = t213.
        DATA t216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t207 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t209 i_message_26cb = t171 i_fix = t216 ).
        t205->load( ).
        APPEND t207 TO t205->items.
        t205->save( ).
      ENDIF.
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = VALUE abap_bool( ).
      DATA t219 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t220 TYPE REF TO zcl_lnt_abstract_type.
      DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
      t222 = t13.
      DATA t224 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t225) = xsdbool( t222 IS INITIAL ).
      IF t225 = abap_true.
      ELSE.
        DATA t232 TYPE REF TO zcl_lnt_abstract_type.
        t232 = t222->type_cba0.
        t224 = t232.
      ENDIF.
      t220 = t224.
      DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t235) = xsdbool( t220 IS INITIAL ).
      IF t235 = abap_true.
      ELSE.
        DATA t238 TYPE abap_bool.
        DATA t239 TYPE REF TO zcl_lnt_abstract_type.
        t239 = t220.
        t238 = t239->is_generic( ).
        DATA(t241) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t241->has = abap_true.
        t241->value = t238.
        t234 = t241.
      ENDIF.
      t219 = t234.
      DATA t242 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t245) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t245->has = abap_true.
      t245->value = abap_true.
      t242 = t245.
      DATA(t247) = VALUE abap_bool( ).
      DATA(t248) = VALUE abap_bool( ).
      IF t219 IS BOUND.
        t247 = t219->has.
      ENDIF.
      IF t242 IS BOUND.
        t248 = t242->has.
      ENDIF.
      IF t247 = t248.
        IF t247 = abap_false.
          t218 = abap_true.
        ELSEIF t219->value = t242->value.
          t218 = abap_true.
        ENDIF.
      ENDIF.
      t217 = t218.
      IF t218 = abap_true.
        DATA(t249) = VALUE abap_bool( ).
        DATA t250 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t251 TYPE REF TO zcl_lnt_abstract_type.
        DATA t253 TYPE REF TO zcl_lnt_typed_identifier.
        t253 = t13.
        DATA t256 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t257) = xsdbool( t253 IS INITIAL ).
        IF t257 = abap_true.
        ELSE.
          DATA t263 TYPE REF TO zcl_lnt_abstract_type.
          t263 = t253->type_cba0.
          t256 = t263.
        ENDIF.
        t251 = t256.
        DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t266) = xsdbool( t251 IS INITIAL ).
        IF t266 = abap_true.
        ELSE.
          DATA t269 TYPE abap_bool.
          DATA t270 TYPE REF TO zcl_lnt_abstract_type.
          t270 = t251.
          t269 = t270->contains_void( ).
          DATA(t272) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t272->has = abap_true.
          t272->value = t269.
          t265 = t272.
        ENDIF.
        t250 = t265.
        DATA t273 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t276) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t276->has = abap_true.
        t276->value = abap_false.
        t273 = t276.
        DATA(t278) = VALUE abap_bool( ).
        DATA(t279) = VALUE abap_bool( ).
        IF t250 IS BOUND.
          t278 = t250->has.
        ENDIF.
        IF t273 IS BOUND.
          t279 = t273->has.
        ENDIF.
        IF t278 = t279.
          IF t278 = abap_false.
            t249 = abap_true.
          ELSEIF t250->value = t273->value.
            t249 = abap_true.
          ENDIF.
        ENDIF.
        t217 = t249.
      ENDIF.
      IF t217 = abap_true.
        DATA(t280) = VALUE string( ).
        DATA(t281) = VALUE string( ).
        DATA(t282) = |DATA definition cannot be generic, |.
        DATA(t283) = VALUE string( ).
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t286 TYPE REF TO zcl_lnt_expression_node.
        t286 = t3.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t289) = xsdbool( t286 IS INITIAL ).
        IF t289 = abap_true.
        ELSE.
          DATA t292 TYPE string.
          DATA t293 TYPE REF TO zcl_lnt_expression_node.
          t293 = t286.
          t292 = t293->concat_tokens( ).
          DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t295->has = abap_true.
          t295->value = t292.
          t288 = t295.
        ENDIF.
        t284 = t288.
        DATA(t296) = VALUE string( ).
        DATA(t297) = VALUE abap_bool( ).
        IF t284 IS INITIAL.
          t297 = abap_true.
        ELSEIF t284->has = abap_false.
          t297 = abap_true.
        ENDIF.
        IF t297 = abap_true.
          t296 = |undefined|.
        ELSE.
          DATA t300 TYPE string.
          t300 = t284->value.
          t296 = t300.
        ENDIF.
        t283 = t296.
        DATA(t302) = strlen( t282 ).
        t281 = |{ t282 }{ t283 }|.
        t280 = t281.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t303 = t2->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        t307 = t1->get_first_token( ).
        DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t307 i_message_26cb = t280 i_fix = t310 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
        DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t314 TYPE REF TO zcl_lnt_abstract_token.
        DATA t315 TYPE REF TO zcl_lnt_fi_identifier.
        t315 = t13.
        DATA t318 TYPE REF TO zcl_lnt_abstract_token.
        t318 = t315->token.
        t314 = t318.
        DATA t320 TYPE string.
        t320 = t2->filename.
        DATA t322 TYPE REF TO zcl_lnt_void_type.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t325) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t326->has = abap_true.
        t326->value = t325.
        t323 = t326.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t322 = zcl_lnt_void_type=>get_db65( i_voided = t323 i_qualified_name = t328 ).
        DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t313 = NEW zcl_lnt_typed_identifier( i_token = t314 i_filename = t320 i_type_9913 = t322 i_meta = t329 i_value = t330 ).
        result = t313.
        RETURN.
      ENDIF.
      result = t13.
      RETURN.
    ENDIF.
    DATA t333 TYPE abap_bool.
    t333 = xsdbool( t3 IS BOUND ).
    IF t333 = abap_true.
      DATA(t335) = VALUE abap_bool( ).
      DATA(t336) = VALUE abap_bool( ).
      DATA t340 TYPE string.
      DATA t341 TYPE REF TO zcl_lnt_expression_node.
      t341 = t3.
      t340 = t341->concat_tokens( ).
      DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t343->has = abap_true.
      t343->value = t340.
      DATA(t345) = VALUE abap_bool( ).
      DATA t346 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t347) = |^[0-9]+$|.
      DATA(t348) = ||.
      CREATE OBJECT t346 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t347 flags = t348.
      DATA(t349) = VALUE string( ).
      DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t350 = t343.
      DATA(t352) = VALUE string( ).
      DATA(t353) = VALUE abap_bool( ).
      IF t350 IS INITIAL.
        t353 = abap_true.
      ELSEIF t350->has = abap_false.
        t353 = abap_true.
      ENDIF.
      IF t353 = abap_true.
        t352 = |undefined|.
      ELSE.
        DATA t356 TYPE string.
        t356 = t350->value.
        t352 = t356.
      ENDIF.
      t349 = t352.
      t345 = t346->test( p0 = t349 ).
      t336 = t345.
      t335 = t336.
      IF t336 = abap_true.
        DATA(t358) = VALUE abap_bool( ).
        DATA(t359) = VALUE abap_bool( ).
        DATA t364 TYPE abap_bool.
        DATA t365 TYPE abap_bool.
        DATA t366 TYPE abap_bool.
        DATA t367 TYPE REF TO zcl_lnt_current_scope.
        t367 = t2->scope.
        t366 = t367->is_any_oo( ).
        t365 = xsdbool( t366 = abap_false ).
        t364 = t365.
        IF t365 = abap_true.
          DATA(t370) = VALUE abap_bool( ).
          DATA t375 TYPE REF TO zcl_lnt_abstract_token.
          t375 = t1->colon.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t379) = VALUE abap_bool( ).
          DATA(t380) = xsdbool( t375 IS INITIAL ).
          t379 = xsdbool( t380 = abap_false ).
          t370 = t379.
          t364 = t370.
        ENDIF.
        t359 = t364.
        t358 = xsdbool( t359 = abap_false ).
        t335 = t358.
      ENDIF.
      IF t335 = abap_true.
        DATA(t384) = |not possible to have a name with only digits|.
        DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t385 = t2->issues.
        DATA t387 TYPE REF TO zcl_lnt_issue.
        DATA t389 TYPE REF TO zcl_lnt_abstract_token.
        DATA t390 TYPE REF TO zcl_lnt_expression_node.
        t390 = t3.
        t389 = t390->get_first_token( ).
        DATA t393 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t387 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t389 i_message_26cb = t384 i_fix = t393 ).
        t385->load( ).
        APPEND t387 TO t385->items.
        t385->save( ).
      ENDIF.
      DATA t394 TYPE abap_bool.
      DATA t396 TYPE string.
      DATA t397 TYPE REF TO zcl_lnt_expression_node.
      t397 = t3.
      t396 = t397->concat_tokens( ).
      DATA t399 TYPE abap_bool.
      DATA t400 TYPE i.
      t400 = strlen( t396 ).
      DATA(t403) = 30.
      t399 = xsdbool( t400 > t403 ).
      t394 = t399.
      IF t394 = abap_true.
        DATA t405 TYPE string.
        DATA(t406) = |DATA name too long, |.
        DATA t407 TYPE string.
        DATA t408 TYPE REF TO zcl_lnt_expression_node.
        t408 = t3.
        t407 = t408->concat_tokens( ).
        DATA(t410) = strlen( t406 ).
        t405 = |{ t406 }{ t407 }|.
        DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t411 = t2->issues.
        DATA t413 TYPE REF TO zcl_lnt_issue.
        DATA t415 TYPE REF TO zcl_lnt_abstract_token.
        DATA t416 TYPE REF TO zcl_lnt_expression_node.
        t416 = t3.
        t415 = t416->get_first_token( ).
        DATA t419 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t413 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t415 i_message_26cb = t405 i_fix = t419 ).
        t411->load( ).
        APPEND t413 TO t411->items.
        t411->save( ).
      ENDIF.
      DATA t422 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t423 TYPE REF TO zcl_lnt_abstract_token.
      DATA t424 TYPE REF TO zcl_lnt_expression_node.
      t424 = t3.
      t423 = t424->get_first_token( ).
      DATA t426 TYPE string.
      t426 = t2->filename.
      DATA t428 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t429) = |data, fallback|.
      DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t428 = NEW zcl_lnt_unknown_type( i_error = t429 i_qualified_name = t430 ).
      DATA t431 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t422 = NEW zcl_lnt_typed_identifier( i_token = t423 i_filename = t426 i_type_9913 = t428 i_meta = t431 i_value = t432 ).
      result = t422.
      RETURN.
    ENDIF.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d886_aae9c18153e0.
  ENDMETHOD.
ENDCLASS.
