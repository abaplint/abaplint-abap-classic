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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
    t7 = t1->find_first_expression( i_type_9913 = t10 ).
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      t13 = zcl_lnt_sy_data_definition=>run_syntax( i_node = t7 i_input_967e = t2 ).
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t13 IS BOUND ).
      t19 = t20.
      IF t20 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
        t27 = t13.
        DATA t31 TYPE string.
        t31 = t27->token->str.
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
        ELSE.
          IF t42 > t43 - t41.
            t42 = t43 - t41.
          ENDIF.
          t39 = t40+t41(t42).
        ENDIF.
        IF xsdbool( t39 = |!| ) = abap_true.
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
          ELSE.
            IF t51 > t54 - t50.
              t51 = t54 - t50.
            ENDIF.
            t48 = t46+t50(t51).
          ENDIF.
          t31 = t48.
        ENDIF.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t31.
        DATA t59 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t59 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
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
          t65 = t63->value.
        ENDIF.
        t19 = t59->test( p0 = t65 ).
      ENDIF.
      t18 = t19.
      IF t19 = abap_true.
        DATA t77 TYPE abap_bool.
        DATA t78 TYPE abap_bool.
        DATA t80 TYPE REF TO zcl_lnt_current_scope.
        t80 = t2->scope.
        t78 = xsdbool( t80->is_any_oo( ) = abap_false ).
        t77 = t78.
        IF t78 = abap_true.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          t88 = t1->colon.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t77 = xsdbool( xsdbool( t88 IS INITIAL ) = abap_false ).
        ENDIF.
        t18 = xsdbool( t77 = abap_false ).
      ENDIF.
      IF t18 = abap_true.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t98 = t2->issues.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
        t103 = t13.
        t102 = t103->token.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t100 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t102 i_message_26cb = |not possible to have a name with only digits| i_fix = t109 ).
        t98->load( ).
        APPEND t100 TO t98->items.
        t98->save( ).
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        DATA t114 TYPE REF TO zcl_lnt_fi_identifier.
        t114 = t13.
        t113 = t114->token.
        DATA t119 TYPE string.
        t119 = t2->filename.
        DATA(t124) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t124.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        result = NEW zcl_lnt_typed_identifier( i_token = t113 i_filename = t119 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t125 i_qualified_name = t127 ) i_meta = t128 i_value = t129 ).
        RETURN.
      ENDIF.
      DATA t131 TYPE abap_bool.
      DATA t132 TYPE abap_bool.
      t132 = xsdbool( t13 IS BOUND ).
      t131 = t132.
      IF t132 = abap_true.
        DATA t137 TYPE REF TO zcl_lnt_fi_identifier.
        t137 = t13.
        DATA t141 TYPE string.
        t141 = t137->token->str.
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
        ELSE.
          IF t152 > t153 - t151.
            t152 = t153 - t151.
          ENDIF.
          t149 = t150+t151(t152).
        ENDIF.
        IF xsdbool( t149 = |!| ) = abap_true.
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
          ELSE.
            IF t161 > t164 - t160.
              t161 = t164 - t160.
            ENDIF.
            t158 = t156+t160(t161).
          ENDIF.
          t141 = t158.
        ENDIF.
        t131 = xsdbool( strlen( t141 ) > 30 ).
      ENDIF.
      IF t131 = abap_true.
        DATA(t171) = VALUE string( ).
        DATA(t173) = |DATA name too long, |.
        DATA(t174) = VALUE string( ).
        DATA t175 TYPE REF TO zcl_lnt_fi_identifier.
        t175 = t13.
        DATA t179 TYPE string.
        t179 = t175->token->str.
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
        ELSE.
          IF t190 > t191 - t189.
            t190 = t191 - t189.
          ENDIF.
          t187 = t188+t189(t190).
        ENDIF.
        IF xsdbool( t187 = |!| ) = abap_true.
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
          ELSE.
            IF t199 > t202 - t198.
              t199 = t202 - t198.
            ENDIF.
            t196 = t194+t198(t199).
          ENDIF.
          t179 = t196.
        ENDIF.
        t174 = t179.
        DATA(t204) = strlen( t173 ).
        t171 = |{ t173 }{ t174 }|.
        DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t205 = t2->issues.
        DATA t207 TYPE REF TO zcl_lnt_issue.
        DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
        t210 = t13.
        DATA t213 TYPE REF TO zcl_lnt_abstract_token.
        t213 = t210->token.
        DATA t216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t207 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t213 i_message_26cb = t171 i_fix = t216 ).
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
      IF xsdbool( t222 IS INITIAL ) = abap_true.
      ELSE.
        t224 = t222->type_cba0.
      ENDIF.
      t220 = t224.
      DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t220 IS INITIAL ) = abap_true.
      ELSE.
        DATA t238 TYPE abap_bool.
        t238 = t220->is_generic( ).
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
        IF xsdbool( t253 IS INITIAL ) = abap_true.
        ELSE.
          t256 = t253->type_cba0.
        ENDIF.
        t251 = t256.
        DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        IF xsdbool( t251 IS INITIAL ) = abap_true.
        ELSE.
          DATA t269 TYPE abap_bool.
          t269 = t251->contains_void( ).
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
        DATA(t282) = |DATA definition cannot be generic, |.
        DATA(t283) = VALUE string( ).
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t286 TYPE REF TO zcl_lnt_expression_node.
        t286 = t3.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t286 IS INITIAL ) = abap_true.
        ELSE.
          DATA t292 TYPE string.
          t292 = t286->concat_tokens( ).
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
          t296 = t284->value.
        ENDIF.
        t283 = t296.
        DATA(t302) = strlen( t282 ).
        t280 = |{ t282 }{ t283 }|.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t303 = t2->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t280 i_fix = t310 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
        DATA t314 TYPE REF TO zcl_lnt_abstract_token.
        DATA t315 TYPE REF TO zcl_lnt_fi_identifier.
        t315 = t13.
        t314 = t315->token.
        DATA t320 TYPE string.
        t320 = t2->filename.
        DATA(t325) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t326->has = abap_true.
        t326->value = t325.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        result = NEW zcl_lnt_typed_identifier( i_token = t314 i_filename = t320 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t326 i_qualified_name = t328 ) i_meta = t329 i_value = t330 ).
        RETURN.
      ENDIF.
      result = t13.
      RETURN.
    ENDIF.
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA(t335) = VALUE abap_bool( ).
      DATA(t336) = VALUE abap_bool( ).
      DATA t340 TYPE string.
      t340 = t3->concat_tokens( ).
      DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t343->has = abap_true.
      t343->value = t340.
      DATA t346 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t346 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
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
        t352 = t350->value.
      ENDIF.
      t336 = t346->test( p0 = t352 ).
      t335 = t336.
      IF t336 = abap_true.
        DATA t364 TYPE abap_bool.
        DATA t365 TYPE abap_bool.
        DATA t367 TYPE REF TO zcl_lnt_current_scope.
        t367 = t2->scope.
        t365 = xsdbool( t367->is_any_oo( ) = abap_false ).
        t364 = t365.
        IF t365 = abap_true.
          DATA t375 TYPE REF TO zcl_lnt_abstract_token.
          t375 = t1->colon.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t364 = xsdbool( xsdbool( t375 IS INITIAL ) = abap_false ).
        ENDIF.
        t335 = xsdbool( t364 = abap_false ).
      ENDIF.
      IF t335 = abap_true.
        DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t385 = t2->issues.
        DATA t387 TYPE REF TO zcl_lnt_issue.
        DATA t393 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t387 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t3->get_first_token( ) i_message_26cb = |not possible to have a name with only digits| i_fix = t393 ).
        t385->load( ).
        APPEND t387 TO t385->items.
        t385->save( ).
      ENDIF.
      IF xsdbool( strlen( t3->concat_tokens( ) ) > 30 ) = abap_true.
        DATA t405 TYPE string.
        DATA(t406) = |DATA name too long, |.
        DATA t407 TYPE string.
        t407 = t3->concat_tokens( ).
        DATA(t410) = strlen( t406 ).
        t405 = |{ t406 }{ t407 }|.
        DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t411 = t2->issues.
        DATA t413 TYPE REF TO zcl_lnt_issue.
        DATA t419 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t413 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t3->get_first_token( ) i_message_26cb = t405 i_fix = t419 ).
        t411->load( ).
        APPEND t413 TO t411->items.
        t411->save( ).
      ENDIF.
      DATA t423 TYPE REF TO zcl_lnt_abstract_token.
      t423 = t3->get_first_token( ).
      DATA t426 TYPE string.
      t426 = t2->filename.
      DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t431 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t423 i_filename = t426 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |data, fallback| i_qualified_name = t430 ) i_meta = t431 i_value = t432 ).
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD is_name_too_long.
    result = xsdbool( strlen( i_name ) > 30 ).

  ENDMETHOD.

  METHOD is_only_digits.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
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
      t9 = t7->value.
    ENDIF.
    result = t3->test( p0 = t9 ).

  ENDMETHOD.

  METHOD allow_only_digits_name.
    DATA(t1) = i_node.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    t6 = i_input_967e->scope.
    t4 = xsdbool( t6->is_any_oo( ) = abap_false ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t1->colon.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3 = xsdbool( xsdbool( t14 IS INITIAL ) = abap_false ).
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
