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
    t3 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t6 = t3->simple_type( i_node = t1 i_qualified_name_prefix = t10 ).
    IF xsdbool( t6 IS BOUND ) = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t13 = t3->find_value( i_node = t1 ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t19->load( ).
      APPEND |read_only| TO t19->items.
      t19->save( ).
      t19->load( ).
      APPEND |static| TO t19->items.
      t19->save( ).
      t17 = t19.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
      t32 = t6.
      DATA(t36) = VALUE string( ).
      t36 = t32->token->str.
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
      ELSE.
        IF t47 > t48 - t46.
          t47 = t48 - t46.
        ENDIF.
        t44 = t45+t46(t47).
      ENDIF.
      IF xsdbool( t44 = |!| ) = abap_true.
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
        ELSE.
          IF t56 > t59 - t55.
            t56 = t59 - t55.
          ENDIF.
          t53 = t51+t55(t56).
        ENDIF.
        t36 = t53.
      ENDIF.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t36.
      DATA t64 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t64 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
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
        t70 = t68->value.
      ENDIF.
      t27 = t64->test( p0 = t70 ).
      t26 = t27.
      IF t27 = abap_true.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = VALUE abap_bool( ).
        DATA t85 TYPE REF TO zcl_lnt_current_scope.
        t85 = t2->scope.
        t83 = xsdbool( t85->is_any_oo( ) = abap_false ).
        t82 = t83.
        IF t83 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_abstract_token.
          t93 = t1->colon.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t82 = xsdbool( xsdbool( t93 IS INITIAL ) = abap_false ).
        ENDIF.
        t26 = xsdbool( t82 = abap_false ).
      ENDIF.
      IF t26 = abap_true.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t103 = t2->issues.
        DATA t105 TYPE REF TO zcl_lnt_issue.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        DATA t108 TYPE REF TO zcl_lnt_fi_identifier.
        t108 = t6.
        t107 = t108->token.
        DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t107 i_message_26cb = |not possible to have a name with only digits| i_fix = t114 ).
        t103->load( ).
        APPEND t105 TO t103->items.
        t103->save( ).
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
        t117 = t6.
        t116 = t117->token.
        DATA(t122) = VALUE string( ).
        t122 = t2->filename.
        DATA t124 TYPE REF TO zcl_lnt_void_type.
        DATA(t127) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t127.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t124 = zcl_lnt_void_type=>get_db65( i_voided = t128 i_qualified_name = t130 ).
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t131 = t17.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t13 IS BOUND AND t13->has = abap_true.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t137->sval = t13->value.
        ENDIF.
        result = NEW zcl_lnt_typed_identifier( i_token = t116 i_filename = t122 i_type_9913 = t124 i_meta = t131 i_value = t137 ).
        RETURN.
      ENDIF.
      DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
      t143 = t6.
      DATA(t147) = VALUE string( ).
      t147 = t143->token->str.
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
      ELSE.
        IF t158 > t159 - t157.
          t158 = t159 - t157.
        ENDIF.
        t155 = t156+t157(t158).
      ENDIF.
      IF xsdbool( t155 = |!| ) = abap_true.
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
        ELSE.
          IF t167 > t170 - t166.
            t167 = t170 - t166.
          ENDIF.
          t164 = t162+t166(t167).
        ENDIF.
        t147 = t164.
      ENDIF.
      IF xsdbool( strlen( t147 ) > 30 ) = abap_true.
        DATA(t177) = VALUE string( ).
        DATA(t179) = |CONSTANTS name too long, |.
        DATA(t180) = VALUE string( ).
        DATA t181 TYPE REF TO zcl_lnt_fi_identifier.
        t181 = t6.
        DATA(t185) = VALUE string( ).
        t185 = t181->token->str.
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
        ELSE.
          IF t196 > t197 - t195.
            t196 = t197 - t195.
          ENDIF.
          t193 = t194+t195(t196).
        ENDIF.
        IF xsdbool( t193 = |!| ) = abap_true.
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
          ELSE.
            IF t205 > t208 - t204.
              t205 = t208 - t204.
            ENDIF.
            t202 = t200+t204(t205).
          ENDIF.
          t185 = t202.
        ENDIF.
        t180 = t185.
        DATA(t210) = strlen( t179 ).
        t177 = |{ t179 }{ t180 }|.
        DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t211 = t2->issues.
        DATA t213 TYPE REF TO zcl_lnt_issue.
        DATA t216 TYPE REF TO zcl_lnt_fi_identifier.
        t216 = t6.
        DATA t219 TYPE REF TO zcl_lnt_abstract_token.
        t219 = t216->token.
        DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t213 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t219 i_message_26cb = t177 i_fix = t222 ).
        t211->load( ).
        APPEND t213 TO t211->items.
        t211->save( ).
      ENDIF.
      DATA t224 TYPE REF TO zcl_lnt_abstract_token.
      DATA t225 TYPE REF TO zcl_lnt_fi_identifier.
      t225 = t6.
      t224 = t225->token.
      DATA(t230) = VALUE string( ).
      t230 = t2->filename.
      DATA t232 TYPE REF TO zcl_lnt_abstract_type.
      t232 = t6->type_cba0.
      DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t238 = t17.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t13 IS BOUND AND t13->has = abap_true.
        CREATE OBJECT t244.
        t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t244->sval = t13->value.
      ENDIF.
      result = NEW zcl_lnt_typed_identifier( i_token = t224 i_filename = t230 i_type_9913 = t232 i_meta = t238 i_value = t244 ).
      RETURN.
    ENDIF.
    DATA t247 TYPE REF TO zcl_lnt_expression_node.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t247 = t1->find_first_expression( i_type_9913 = t250 ).
    IF xsdbool( t247 IS BOUND ) = abap_true.
      DATA(t253) = VALUE abap_bool( ).
      DATA(t254) = VALUE abap_bool( ).
      DATA(t258) = VALUE string( ).
      t258 = t247->concat_tokens( ).
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = t258.
      DATA t264 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t264 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
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
        t270 = t268->value.
      ENDIF.
      t254 = t264->test( p0 = t270 ).
      t253 = t254.
      IF t254 = abap_true.
        DATA(t282) = VALUE abap_bool( ).
        DATA(t283) = VALUE abap_bool( ).
        DATA t285 TYPE REF TO zcl_lnt_current_scope.
        t285 = t2->scope.
        t283 = xsdbool( t285->is_any_oo( ) = abap_false ).
        t282 = t283.
        IF t283 = abap_true.
          DATA t293 TYPE REF TO zcl_lnt_abstract_token.
          t293 = t1->colon.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t282 = xsdbool( xsdbool( t293 IS INITIAL ) = abap_false ).
        ENDIF.
        t253 = xsdbool( t282 = abap_false ).
      ENDIF.
      IF t253 = abap_true.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t303 = t2->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        DATA t311 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t247->get_first_token( ) i_message_26cb = |not possible to have a name with only digits| i_fix = t311 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
      ENDIF.
      IF xsdbool( strlen( t247->concat_tokens( ) ) > 30 ) = abap_true.
        DATA(t322) = VALUE string( ).
        DATA(t324) = |CONSTANTS name too long, |.
        DATA(t325) = VALUE string( ).
        t325 = t247->concat_tokens( ).
        DATA(t328) = strlen( t324 ).
        t322 = |{ t324 }{ t325 }|.
        DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t329 = t2->issues.
        DATA t331 TYPE REF TO zcl_lnt_issue.
        DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t331 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t247->get_first_token( ) i_message_26cb = t322 i_fix = t337 ).
        t329->load( ).
        APPEND t331 TO t329->items.
        t329->save( ).
      ENDIF.
      DATA t339 TYPE REF TO zcl_lnt_abstract_token.
      t339 = t247->get_first_token( ).
      DATA(t342) = VALUE string( ).
      t342 = t2->filename.
      DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t339 i_filename = t342 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |constant, fallback| i_qualified_name = t346 ) i_meta = t347 i_value = t348 ).
      RETURN.
    ENDIF.
    DATA t349 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    DATA t350 TYPE REF TO zcx_lnt_assert_error.
    DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t354->has = abap_true.
    t354->value = |Statement Constant: unexpected structure|.
    t350 = NEW zcx_lnt_assert_error( i_message_26cb = t354 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d881_71710c063965.
  ENDMETHOD.
ENDCLASS.
