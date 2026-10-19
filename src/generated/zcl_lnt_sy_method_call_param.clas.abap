* TS: src/abap/5_syntax/expressions/method_call_param.ts:14:1 MethodCallParam
CLASS zcl_lnt_sy_method_call_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_param IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    t6 = t1->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    IF xsdbool( xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_st_method_call_param ) = abap_false ) = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t10 = t2->issues.
      DATA t12 TYPE REF TO zcl_lnt_issue.
      DATA t17 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t12 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |MethodCallParam, unexpected input| i_fix = t17 ).
      t10->load( ).
      APPEND t12 TO t10->items.
      t10->save( ).
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abstract_node.
    t21 = t1.
    t20 = t21->children.
    t19 ?= t20.
    t18 = t19.
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE abap_bool.
    t18->load( ).
    t26 = xsdbool( lines( t18->items ) < 2 ).
    t25 = t26.
    IF t26 = abap_false.
      t18->load( ).
      t25 = xsdbool( lines( t18->items ) > 3 ).
    ENDIF.
    IF t25 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = t2->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |MethodCallParam, unexpected child length| i_fix = t43 ).
      t36->load( ).
      APPEND t38 TO t36->items.
      t36->save( ).
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t47 TYPE REF TO object.
    t18->load( ).
    READ TABLE t18->items INDEX 2 INTO t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t48 ?= t47.
      DATA t49 TYPE REF TO object.
      t49 = t48->as_ref( ).
      t45 ?= t49.
    ELSE.
      t45 ?= t47.
    ENDIF.
    t44 = t45.
    DATA t50 TYPE abap_bool.
    DATA t51 TYPE abap_bool.
    DATA t52 TYPE REF TO object.
    t52 = t44->get_db65( ).
    t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_w_paren_right ).
    t50 = t51.
    IF t51 = abap_false.
      DATA t55 TYPE REF TO object.
      t55 = t44->get_db65( ).
      t50 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_w_paren_right_w ).
    ENDIF.
    IF t50 = abap_true.
      IF xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ) = abap_true.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t63 TYPE REF TO zif_lnt_method_definition.
        t63 ?= t3.
        t60 = t63->get_parameters( )->get_required_parameters( ).
        t60->load( ).
        IF xsdbool( lines( t60->items ) > 0 ) = abap_true.
          DATA(t69) = VALUE string( ).
          DATA(t71) = VALUE string( ).
          DATA(t72) = |Parameter "|.
          DATA(t73) = VALUE string( ).
          DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t77 TYPE REF TO object.
          t60->load( ).
          READ TABLE t60->items INDEX 1 INTO t77.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t78 ?= t77.
            DATA t79 TYPE REF TO object.
            t79 = t78->as_ref( ).
            t75 ?= t79.
          ELSE.
            t75 ?= t77.
          ENDIF.
          t74 = t75.
          DATA t81 TYPE string.
          t81 = t74->token->str.
          DATA(t89) = VALUE string( ).
          DATA(t90) = t81.
          DATA(t91) = 0.
          DATA(t92) = 1.
          DATA(t93) = strlen( t90 ).
          IF t91 < 0.
            t91 = t91 + t93.
            IF t91 < 0.
              t91 = 0.
            ENDIF.
          ENDIF.
          IF t91 > t93 OR t92 <= 0.
          ELSE.
            IF t92 > t93 - t91.
              t92 = t93 - t91.
            ENDIF.
            t89 = t90+t91(t92).
          ENDIF.
          IF xsdbool( t89 = |!| ) = abap_true.
            DATA t96 TYPE string.
            t96 = t81.
            DATA(t98) = VALUE string( ).
            DATA(t100) = 1.
            DATA t101 TYPE i.
            t101 = strlen( t96 ).
            DATA(t104) = strlen( t96 ).
            IF t100 < 0.
              t100 = t100 + t104.
              IF t100 < 0.
                t100 = 0.
              ENDIF.
            ENDIF.
            IF t100 > t104 OR t101 <= 0.
            ELSE.
              IF t101 > t104 - t100.
                t101 = t104 - t100.
              ENDIF.
              t98 = t96+t100(t101).
            ENDIF.
            t81 = t98.
          ENDIF.
          t73 = t81.
          DATA(t106) = strlen( t72 ).
          t71 = |{ t72 }{ t73 }|.
          DATA(t108) = strlen( t71 ).
          t69 = |{ t71 }{ |" must be supplied| }|.
          DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t109 = t2->issues.
          DATA t111 TYPE REF TO zcl_lnt_issue.
          DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t111 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t69 i_fix = t116 ).
          t109->load( ).
          APPEND t111 TO t109->items.
          t109->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t117 TYPE abap_bool.
      DATA t118 TYPE abap_bool.
      t118 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_expression_node ).
      t117 = t118.
      IF t118 = abap_true.
        DATA t120 TYPE abap_bool.
        DATA t121 TYPE abap_bool.
        DATA t122 TYPE REF TO zif_lnt_statement_runnable.
        DATA t123 TYPE REF TO zcl_lnt_expression_node.
        DATA t125 TYPE REF TO object.
        t125 = t44.
        t123 ?= t125.
        t122 = t123->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t121 = xsdbool( t122 IS BOUND AND t122 IS INSTANCE OF zcl_lnt_st_source ).
        t120 = t121.
        IF t121 = abap_false.
          DATA t127 TYPE REF TO zif_lnt_statement_runnable.
          DATA t128 TYPE REF TO zcl_lnt_expression_node.
          DATA t130 TYPE REF TO object.
          t130 = t44.
          t128 ?= t130.
          t127 = t128->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t120 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_constant_string ).
        ENDIF.
        t117 = t120.
      ENDIF.
      IF t117 = abap_true.
        IF xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ) = abap_true.
          DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t138 TYPE REF TO zif_lnt_method_definition.
          t138 ?= t3.
          t136 = t138->get_parameters( )->get_importing( ).
          t136->load( ).
          IF xsdbool( lines( t136->items ) = 0 ) = abap_true.
            DATA t142 TYPE string.
            DATA t143 TYPE string.
            DATA(t144) = |Method "|.
            DATA t145 TYPE string.
            DATA t146 TYPE REF TO zif_lnt_method_definition.
            t146 ?= t3.
            t145 = t146->get_name( ).
            DATA(t148) = strlen( t144 ).
            t143 = |{ t144 }{ t145 }|.
            DATA(t150) = strlen( t143 ).
            t142 = |{ t143 }{ |" has no importing parameters| }|.
            DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t151 = t2->issues.
            DATA t153 TYPE REF TO zcl_lnt_issue.
            DATA t158 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t153 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t142 i_fix = t158 ).
            t151->load( ).
            APPEND t153 TO t151->items.
            t151->save( ).
            RETURN.
          ELSE.
            DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t163 TYPE REF TO zif_lnt_method_definition.
            t163 ?= t3.
            t161 = t163->get_parameters( )->get_required_parameters( ).
            t161->load( ).
            IF xsdbool( lines( t161->items ) > 1 ) = abap_true.
              DATA t167 TYPE string.
              DATA t168 TYPE string.
              DATA(t169) = |Method "|.
              DATA t170 TYPE string.
              DATA t171 TYPE REF TO zif_lnt_method_definition.
              t171 ?= t3.
              t170 = t171->get_name( ).
              DATA(t173) = strlen( t169 ).
              t168 = |{ t169 }{ t170 }|.
              DATA(t175) = strlen( t168 ).
              t167 = |{ t168 }{ |" has more than one importing or changing parameter| }|.
              DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t176 = t2->issues.
              DATA t178 TYPE REF TO zcl_lnt_issue.
              DATA t183 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t178 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t167 i_fix = t183 ).
              t176->load( ).
              APPEND t178 TO t176->items.
              t176->save( ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t184 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ) = abap_true.
          DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t192 TYPE REF TO zif_lnt_method_definition.
          t192 ?= t3.
          t189 = t192->get_parameters( )->get_default_importing( ).
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t195 = t189.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t199) = VALUE abap_bool( ).
          IF t195 IS INITIAL.
            t199 = abap_true.
          ELSEIF t195->has = abap_false.
            t199 = abap_true.
          ENDIF.
          IF t199 = abap_true.
            DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t203 = t2->issues.
            DATA t205 TYPE REF TO zcl_lnt_issue.
            DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t205 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |No default importing parameter| i_fix = t210 ).
            t203->load( ).
            APPEND t205 TO t203->items.
            t203->save( ).
            RETURN.
          ENDIF.
          DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t213 TYPE REF TO zif_lnt_method_definition.
          t213 ?= t3.
          t211 = t213->get_parameters( )->get_importing( ).
          DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t216 TYPE REF TO object.
          DATA(t217) = VALUE i( ).
          DO.
            t211->load( ).
            IF t217 >= lines( t211->items ).
              EXIT.
            ENDIF.
            CLEAR t216.
            READ TABLE t211->items INDEX t217 + 1 INTO t216.
            t217 = t217 + 1.
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            CLEAR t215.
            IF t216 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t218 ?= t216.
              DATA t219 TYPE REF TO object.
              t219 = t218->as_ref( ).
              t215 ?= t219.
            ELSE.
              t215 ?= t216.
            ENDIF.
            DATA(t221) = VALUE string( ).
            DATA(t222) = VALUE string( ).
            DATA t223 TYPE REF TO zcl_lnt_fi_identifier.
            t223 = t215.
            DATA t226 TYPE string.
            t226 = t223->token->str.
            DATA(t234) = VALUE string( ).
            DATA(t235) = t226.
            DATA(t236) = 0.
            DATA(t237) = 1.
            DATA(t238) = strlen( t235 ).
            IF t236 < 0.
              t236 = t236 + t238.
              IF t236 < 0.
                t236 = 0.
              ENDIF.
            ENDIF.
            IF t236 > t238 OR t237 <= 0.
            ELSE.
              IF t237 > t238 - t236.
                t237 = t238 - t236.
              ENDIF.
              t234 = t235+t236(t237).
            ENDIF.
            IF xsdbool( t234 = |!| ) = abap_true.
              DATA t241 TYPE string.
              t241 = t226.
              DATA(t243) = VALUE string( ).
              DATA(t245) = 1.
              DATA t246 TYPE i.
              t246 = strlen( t241 ).
              DATA(t249) = strlen( t241 ).
              IF t245 < 0.
                t245 = t245 + t249.
                IF t245 < 0.
                  t245 = 0.
                ENDIF.
              ENDIF.
              IF t245 > t249 OR t246 <= 0.
              ELSE.
                IF t246 > t249 - t245.
                  t246 = t249 - t245.
                ENDIF.
                t243 = t241+t245(t246).
              ENDIF.
              t226 = t243.
            ENDIF.
            t222 = t226.
            DATA(t251) = strlen( t222 ).
            t221 = t222.
            IF t221 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t221 TO UPPER CASE.
            ELSE.
              t221 = zlnt_runtime_uppe_91169605024d=>full( t221 ).
            ENDIF.
            IF xsdbool( t221 = t189->value ) = abap_true.
              t184 = t215->type_cba0.
              EXIT.
            ENDIF.
          ENDDO.
        ELSE.
          DATA t262 TYPE REF TO zcl_lnt_void_type.
          DATA t264 TYPE REF TO object.
          t264 = t3.
          t262 ?= t264.
          t184 = t262.
        ENDIF.
        DATA t265 TYPE REF TO zcl_lnt_abstract_type.
        DATA t268 TYPE REF TO zif_lnt_statement_runnable.
        DATA t269 TYPE REF TO zcl_lnt_expression_node.
        DATA t271 TYPE REF TO object.
        t271 = t44.
        t269 ?= t271.
        t268 = t269->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        IF xsdbool( t268 IS BOUND AND t268 IS INSTANCE OF zcl_lnt_st_source ) = abap_true.
          DATA t275 TYPE REF TO zcl_lnt_expression_node.
          DATA t277 TYPE REF TO object.
          t277 = t44.
          t275 ?= t277.
          DATA t281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t283 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t265 = zcl_lnt_sy_source=>run_syntax( i_node = t275 i_input_967e = t2 i_target_type = t184 i_write_reference = t281 i_allow_generic_deference = t282 i_read_reference = t283 ).
          DATA t285 TYPE REF TO zcl_lnt_expression_node.
          DATA t287 TYPE REF TO object.
          t287 = t44.
          t285 ?= t287.
          IF zcl_lnt_chck_offst_lngth_mdl=>check_offset_length( i_source_75cf = t285 i_source_type = t265 i_method = t3 i_input_967e = t2 ) = abap_true.
            RETURN.
          ENDIF.
        ELSE.
          DATA t292 TYPE REF TO zif_lnt_statement_runnable.
          DATA t293 TYPE REF TO zcl_lnt_expression_node.
          DATA t295 TYPE REF TO object.
          t295 = t44.
          t293 ?= t295.
          t292 = t293->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          IF xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_constant_string ) = abap_true.
            DATA t299 TYPE REF TO zcl_lnt_expression_node.
            DATA t301 TYPE REF TO object.
            t301 = t44.
            t299 ?= t301.
            t265 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t299 ).
          ENDIF.
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t265 IS INITIAL ) = abap_true.
          DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t312 = t2->issues.
          DATA t314 TYPE REF TO zcl_lnt_issue.
          DATA t319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t314 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |No source type determined, method source| i_fix = t319 ).
          t312->load( ).
          APPEND t314 TO t312->items.
          t312->save( ).
          RETURN.
        ELSE.
          DATA t322 TYPE REF TO zcl_lnt_type_utils.
          DATA t323 TYPE REF TO zcl_lnt_current_scope.
          t323 = t2->scope.
          t322 = NEW zcl_lnt_type_utils( i_scope = t323 ).
          DATA t325 TYPE REF TO zcl_lnt_abstract_type.
          t325 = t265.
          DATA t333 TYPE REF TO zcl_lnt_expression_node.
          DATA t335 TYPE REF TO object.
          t335 = t44.
          t333 ?= t335.
          IF xsdbool( t322->is_assignable_strict( i_source_75cf = t325 i_target_5f8a = t184 i_node = t333 ) = abap_false ) = abap_true.
            DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t340 = t2->issues.
            DATA t342 TYPE REF TO zcl_lnt_issue.
            DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t342 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Method parameter type not compatible| i_fix = t347 ).
            t340->load( ).
            APPEND t342 TO t340->items.
            t340->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t348 TYPE abap_bool.
        DATA t349 TYPE abap_bool.
        t349 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_expression_node ).
        t348 = t349.
        IF t349 = abap_true.
          DATA t352 TYPE REF TO zif_lnt_statement_runnable.
          DATA t353 TYPE REF TO zcl_lnt_expression_node.
          DATA t355 TYPE REF TO object.
          t355 = t44.
          t353 ?= t355.
          t352 = t353->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t348 = xsdbool( t352 IS BOUND AND t352 IS INSTANCE OF zcl_lnt_parameter_list_s ).
        ENDIF.
        IF t348 = abap_true.
          DATA(t356) = NEW zcl_lnt_sy_method_parameters( ).
          DATA t357 TYPE REF TO zcl_lnt_expression_node.
          DATA t359 TYPE REF TO object.
          t359 = t44.
          t357 ?= t359.
          DATA t362 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t356->check_exporting( i_node = t357 i_input_967e = t2 i_method = t3 i_errors = t362 ).
        ELSE.
          DATA t364 TYPE REF TO object.
          t364 = t44->get_db65( ).
          IF xsdbool( t364 IS BOUND AND t364 IS INSTANCE OF zcl_lnt_st_method_parameters ) = abap_true.
            DATA(t366) = NEW zcl_lnt_sy_method_parameters( ).
            DATA t367 TYPE REF TO zif_lnt_node.
            t367 ?= t44.
            t366->run_syntax( i_node = t367 i_input_967e = t2 i_method = t3 ).
          ELSE.
            DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t373 = t2->issues.
            DATA t375 TYPE REF TO zcl_lnt_issue.
            DATA t380 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t375 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |MethodCallParam, unexpected child| i_fix = t380 ).
            t373->load( ).
            APPEND t375 TO t373->items.
            t373->save( ).
            RETURN.
          ENDIF.
        ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d820_8ca0c693815f.
  ENDMETHOD.
ENDCLASS.
