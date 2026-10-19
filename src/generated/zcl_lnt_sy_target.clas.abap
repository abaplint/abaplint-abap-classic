* TS: src/abap/5_syntax/expressions/target.ts:18:1 Target
CLASS zcl_lnt_sy_target DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_top IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_target IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    t4 = t1->concat_tokens( ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE i( ).
    DATA(t9) = |-|.
    DATA(t10) = strlen( t3 ).
    IF t9 IS INITIAL.
      t7 = 0.
    ELSE.
      FIND t9 IN t3 MATCH OFFSET t7.
      IF sy-subrc <> 0.
        t7 = -1.
      ENDIF.
    ENDIF.
    DATA(t11) = 0.
    t6 = xsdbool( t7 >= t11 ).
    IF t6 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zcl_lnt_current_scope.
      DATA t15 TYPE REF TO zcl_lnt_current_scope.
      t15 = t2->scope.
      t14 = t15.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t3.
      t17 = t21.
      DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = t17.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t29) = VALUE abap_bool( ).
      IF t25 IS INITIAL.
        t29 = abap_true.
      ELSEIF t25->has = abap_false.
        t29 = abap_true.
      ENDIF.
      t24 = t29.
      IF t24 = abap_true.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t36 = t14->current.
        t35 = t36.
        DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t39) = xsdbool( t35 IS INITIAL ).
        IF t39 = abap_true.
        ELSE.
          DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t43 = t35.
          DATA(t45) = VALUE string( ).
          t45 = t17->value.
          t42 = t43->find_variable( i_name = t45 ).
          t38 = t42.
        ENDIF.
        t33 = t38.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t48) = VALUE abap_bool( ).
        t48 = xsdbool( t33 IS BOUND ).
        IF t48 = abap_true.
          t47 = t33.
        ELSE.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t59) = VALUE string( ).
          t59 = t17->value.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t59.
          t57 = t61.
          t55 = t14->find_type_pool_constant( i_name = t57 ).
          t47 = t55.
        ENDIF.
        t23 = t47.
      ENDIF.
      t12 = t23.
      DATA(t63) = VALUE abap_bool( ).
      t63 = xsdbool( t12 IS BOUND ).
      IF t63 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_current_scope.
        t65 = t2->scope.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        t69 = t1->get_first_token( ).
        t67 = t69.
        DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
        t72 = t12.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t75) = |Write To|.
        CREATE OBJECT t74.
        t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t74->sval = t75.
        DATA(t76) = VALUE string( ).
        t76 = t2->filename.
        DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
        t65->add_reference( i_usage = t67 i_referencing = t72 i_type_9913 = t74 i_filename = t76 i_extra = t78 ).
        DATA t85 TYPE REF TO zcl_lnt_abstract_type.
        t85 = t12->type_cba0.
        result = t85.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zcl_lnt_abstract_node.
    t91 = t1.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t93 = t91->children.
    t90 = t93.
    t89 ?= t90.
    t88 = t89.
    DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t96 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t98 TYPE REF TO object.
    t88->load( ).
    READ TABLE t88->items INDEX 1 INTO t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t99 ?= t98.
      DATA t100 TYPE REF TO object.
      t100 = t99->as_ref( ).
      t96 ?= t100.
    ELSE.
      t96 ?= t98.
    ENDIF.
    t95 = t96.
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t102 = xsdbool( t95 IS INITIAL ).
    t101 = t102.
    IF t102 = abap_false.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = VALUE abap_bool( ).
      t110 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_expression_node ).
      t109 = xsdbool( t110 = abap_false ).
      t101 = t109.
    ENDIF.
    IF t101 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t113 TYPE REF TO zcl_lnt_abstract_type.
    DATA t114 TYPE REF TO zcl_lnt_abstract_type.
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    DATA t117 TYPE REF TO object.
    t117 = t95.
    t115 ?= t117.
    t114 = zcl_lnt_sy_target=>find_top( i_node = t115 i_input_967e = t2 ).
    t113 = t114.
    DATA(t119) = VALUE abap_bool( ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t119 = xsdbool( t113 IS INITIAL ).
    IF t119 = abap_true.
      DATA(t126) = VALUE string( ).
      DATA(t127) = VALUE string( ).
      DATA(t128) = VALUE string( ).
      DATA(t129) = |"|.
      DATA(t130) = VALUE string( ).
      DATA t132 TYPE REF TO zcl_lnt_abstract_token.
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      DATA t135 TYPE REF TO object.
      t135 = t95.
      t133 ?= t135.
      t132 = t133->get_first_token( ).
      DATA(t136) = VALUE string( ).
      t136 = t132->str.
      t130 = t136.
      DATA(t138) = strlen( t129 ).
      t128 = |{ t129 }{ t130 }|.
      DATA(t139) = |" not found, Target|.
      DATA(t140) = strlen( t128 ).
      t127 = |{ t128 }{ t139 }|.
      t126 = t127.
      DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t141 = t2->issues.
      DATA t143 TYPE REF TO zcl_lnt_issue.
      DATA t145 TYPE REF TO zcl_lnt_abstract_token.
      t145 = t1->get_first_token( ).
      DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t143 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t145 i_message_26cb = t126 i_fix = t148 ).
      t141->load( ).
      APPEND t143 TO t141->items.
      t141->save( ).
      DATA t149 TYPE REF TO zcl_lnt_void_type.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t152) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t153->has = abap_true.
      t153->value = t152.
      t150 = t153.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t149 = zcl_lnt_void_type=>get_db65( i_voided = t150 i_qualified_name = t155 ).
      result = t149.
      RETURN.
    ENDIF.
    DATA(t156) = VALUE int8( ).
    DATA(t157) = CONV int8( 1 ).
    t156 = t157.
    DO.
      DATA(t158) = VALUE abap_bool( ).
      DATA(t160) = VALUE int8( ).
      DATA(t161) = VALUE i( ).
      t88->load( ).
      t161 = lines( t88->items ).
      t160 = t161.
      t158 = xsdbool( t156 <= t160 ).
      IF t158 = abap_false.
        EXIT.
      ENDIF.
      DATA t163 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t163.
      DATA t164 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t164.
      DATA(t166) = VALUE i( ).
      t166 = t156.
      t166 = t166 + 1.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      t88->load( ).
      CLEAR t168.
      READ TABLE t88->items INDEX t166 INTO t168.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      CLEAR t164.
      IF t168 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t169 ?= t168.
        DATA t170 TYPE REF TO object.
        CLEAR t170.
        t170 = t169->as_ref( ).
        t164 ?= t170.
      ELSE.
        t164 ?= t168.
      ENDIF.
      t163 = t164.
      DATA(t171) = VALUE abap_bool( ).
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      CLEAR t174.
      t171 = xsdbool( t163 IS INITIAL ).
      IF t171 = abap_true.
        EXIT.
      ENDIF.
      DATA(t178) = VALUE int8( ).
      DATA(t180) = CONV int8( 1 ).
      t178 = t156 + t180.
      t156 = t178.
      DATA(t181) = VALUE abap_bool( ).
      DATA t182 TYPE REF TO object.
      CLEAR t182.
      t182 = t163->get_db65( ).
      t181 = xsdbool( t182 IS BOUND AND t182 IS INSTANCE OF zcl_lnt_dash ).
      IF t181 = abap_true.
        DATA(t184) = VALUE abap_bool( ).
        DATA(t185) = t113.
        t184 = xsdbool( t185 IS BOUND AND t185 IS INSTANCE OF zcl_lnt_unknown_type ).
        IF t184 = abap_true.
          DATA t186 TYPE REF TO zcl_lnt_void_type.
          CLEAR t186.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA(t189) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t190->has = abap_true.
          t190->value = t189.
          t187 = t190.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t192.
          t186 = zcl_lnt_void_type=>get_db65( i_voided = t187 i_qualified_name = t192 ).
          result = t186.
          RETURN.
        ELSE.
          DATA(t193) = VALUE abap_bool( ).
          DATA(t194) = VALUE abap_bool( ).
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = t113.
          t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t194 = t195.
          IF t195 = abap_true.
            DATA(t197) = VALUE abap_bool( ).
            DATA t199 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t199.
            t199 ?= t113.
            DATA(t201) = VALUE abap_bool( ).
            DATA t202 TYPE REF TO zcl_lnt_itable_options.
            CLEAR t202.
            t202 = t199->options.
            t201 = t202->zlnt_view_read_sr_ec4602663c93( ).
            t197 = t201.
            t194 = t197.
          ENDIF.
          t193 = t194.
          IF t194 = abap_true.
            DATA(t204) = VALUE abap_bool( ).
            DATA t205 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t205.
            DATA t207 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t207.
            t207 ?= t113.
            DATA t209 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t209.
            t209 = t207->row_type.
            t205 = t209.
            t204 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_unknown_type ).
            t193 = t204.
          ENDIF.
          IF t193 = abap_true.
            DATA t211 TYPE REF TO zcl_lnt_void_type.
            CLEAR t211.
            DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t212.
            DATA(t214) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t215->has = abap_true.
            t215->value = t214.
            t212 = t215.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            t211 = zcl_lnt_void_type=>get_db65( i_voided = t212 i_qualified_name = t217 ).
            result = t211.
            RETURN.
          ELSE.
            DATA(t218) = VALUE abap_bool( ).
            DATA(t219) = VALUE abap_bool( ).
            DATA(t220) = VALUE abap_bool( ).
            DATA(t221) = t113.
            t220 = xsdbool( t221 IS BOUND AND t221 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t219 = t220.
            IF t220 = abap_true.
              DATA(t222) = VALUE abap_bool( ).
              DATA t224 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t224.
              t224 ?= t113.
              DATA(t226) = VALUE abap_bool( ).
              DATA t227 TYPE REF TO zcl_lnt_itable_options.
              CLEAR t227.
              t227 = t224->options.
              t226 = t227->zlnt_view_read_sr_ec4602663c93( ).
              t222 = t226.
              t219 = t222.
            ENDIF.
            t218 = t219.
            IF t219 = abap_true.
              DATA(t229) = VALUE abap_bool( ).
              DATA t230 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t230.
              DATA t232 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t232.
              t232 ?= t113.
              DATA t234 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t234.
              t234 = t232->row_type.
              t230 = t234.
              t229 = xsdbool( t230 IS BOUND AND t230 IS INSTANCE OF zcl_lnt_void_type ).
              t218 = t229.
            ENDIF.
            IF t218 = abap_true.
              DATA t240 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t240.
              t240 ?= t113.
              DATA t242 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t242.
              t242 = t240->row_type.
              result = t242.
              RETURN.
            ELSE.
              DATA(t245) = VALUE abap_bool( ).
              DATA(t246) = VALUE abap_bool( ).
              DATA(t247) = VALUE abap_bool( ).
              DATA(t248) = VALUE abap_bool( ).
              DATA(t249) = t113.
              t248 = xsdbool( t249 IS BOUND AND t249 IS INSTANCE OF zcl_lnt_structure_type ).
              t247 = xsdbool( t248 = abap_false ).
              t246 = t247.
              IF t247 = abap_true.
                DATA(t250) = VALUE abap_bool( ).
                DATA(t251) = VALUE abap_bool( ).
                DATA(t252) = VALUE abap_bool( ).
                DATA(t253) = VALUE abap_bool( ).
                DATA(t254) = t113.
                t253 = xsdbool( t254 IS BOUND AND t254 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t252 = t253.
                IF t253 = abap_true.
                  DATA(t255) = VALUE abap_bool( ).
                  DATA t257 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t257.
                  t257 ?= t113.
                  DATA(t259) = VALUE abap_bool( ).
                  DATA t260 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t260.
                  t260 = t257->options.
                  t259 = t260->zlnt_view_read_sr_ec4602663c93( ).
                  t255 = t259.
                  t252 = t255.
                ENDIF.
                t251 = t252.
                IF t252 = abap_true.
                  DATA(t262) = VALUE abap_bool( ).
                  DATA t263 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t263.
                  DATA t265 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t265.
                  t265 ?= t113.
                  DATA t267 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t267.
                  t267 = t265->row_type.
                  t263 = t267.
                  t262 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_structure_type ).
                  t251 = t262.
                ENDIF.
                t250 = xsdbool( t251 = abap_false ).
                t246 = t250.
              ENDIF.
              t245 = t246.
              IF t246 = abap_true.
                DATA(t269) = VALUE abap_bool( ).
                DATA(t270) = VALUE abap_bool( ).
                DATA(t271) = t113.
                t270 = xsdbool( t271 IS BOUND AND t271 IS INSTANCE OF zcl_lnt_void_type ).
                t269 = xsdbool( t270 = abap_false ).
                t245 = t269.
              ENDIF.
              IF t245 = abap_true.
                DATA(t272) = VALUE string( ).
                DATA(t273) = VALUE string( ).
                DATA(t274) = VALUE string( ).
                DATA(t275) = VALUE string( ).
                DATA(t276) = |Not a structure, target, |.
                DATA(t277) = VALUE string( ).
                DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t278.
                DATA t280 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t280.
                DATA t282 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t282.
                t282 = t113.
                DATA t284 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t284.
                DATA(t285) = xsdbool( t282 IS INITIAL ).
                IF t285 = abap_true.
                  CLEAR t284.
                ELSE.
                  DATA t288 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t288.
                  DATA t289 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t289.
                  t289 = t282.
                  t288 = t289->zlnt_builtin_clas_3f891b097658( ).
                  t284 = t288.
                ENDIF.
                t280 = t284.
                DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t291.
                DATA(t292) = xsdbool( t280 IS INITIAL ).
                IF t292 = abap_true.
                  CLEAR t291.
                ELSE.
                  DATA(t295) = VALUE string( ).
                  DATA t296 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t296.
                  t296 = t280.
                  t295 = t296->name.
                  DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t298->has = abap_true.
                  t298->value = t295.
                  t291 = t298.
                ENDIF.
                t278 = t291.
                DATA(t299) = VALUE string( ).
                DATA(t300) = VALUE abap_bool( ).
                IF t278 IS INITIAL.
                  t300 = abap_true.
                ELSEIF t278->has = abap_false.
                  t300 = abap_true.
                ENDIF.
                IF t300 = abap_true.
                  t299 = |undefined|.
                ELSE.
                  DATA(t303) = VALUE string( ).
                  t303 = t278->value.
                  t299 = t303.
                ENDIF.
                t277 = t299.
                DATA(t305) = strlen( t276 ).
                t275 = |{ t276 }{ t277 }|.
                DATA(t306) = |, |.
                DATA(t307) = strlen( t275 ).
                t274 = |{ t275 }{ t306 }|.
                DATA(t308) = VALUE string( ).
                t308 = t163->concat_tokens( ).
                DATA(t310) = strlen( t274 ).
                t273 = |{ t274 }{ t308 }|.
                t272 = t273.
                DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t311.
                t311 = t2->issues.
                DATA t313 TYPE REF TO zcl_lnt_issue.
                CLEAR t313.
                DATA t315 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t315.
                t315 = t1->get_first_token( ).
                DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t318.
                t313 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t315 i_message_26cb = t272 i_fix = t318 ).
                t311->load( ).
                APPEND t313 TO t311->items.
                t311->save( ).
                DATA t319 TYPE REF TO zcl_lnt_void_type.
                CLEAR t319.
                DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t320.
                DATA(t322) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t323->has = abap_true.
                t323->value = t322.
                t320 = t323.
                DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t325.
                t319 = zcl_lnt_void_type=>get_db65( i_voided = t320 i_qualified_name = t325 ).
                result = t319.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t326) = VALUE abap_bool( ).
        DATA t327 TYPE REF TO object.
        CLEAR t327.
        t327 = t163->get_db65( ).
        t326 = xsdbool( t327 IS BOUND AND t327 IS INSTANCE OF zcl_lnt_instance_arrow ).
        IF t326 = abap_true.
          DATA(t329) = VALUE abap_bool( ).
          DATA(t330) = VALUE abap_bool( ).
          DATA(t331) = VALUE abap_bool( ).
          DATA(t332) = VALUE abap_bool( ).
          DATA(t333) = t113.
          t332 = xsdbool( t333 IS BOUND AND t333 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t331 = xsdbool( t332 = abap_false ).
          t330 = t331.
          IF t331 = abap_true.
            DATA(t334) = VALUE abap_bool( ).
            DATA(t335) = VALUE abap_bool( ).
            DATA(t336) = t113.
            t335 = xsdbool( t336 IS BOUND AND t336 IS INSTANCE OF zcl_lnt_data_reference ).
            t334 = xsdbool( t335 = abap_false ).
            t330 = t334.
          ENDIF.
          t329 = t330.
          IF t330 = abap_true.
            DATA(t337) = VALUE abap_bool( ).
            DATA(t338) = VALUE abap_bool( ).
            DATA(t339) = t113.
            t338 = xsdbool( t339 IS BOUND AND t339 IS INSTANCE OF zcl_lnt_void_type ).
            t337 = xsdbool( t338 = abap_false ).
            t329 = t337.
          ENDIF.
          IF t329 = abap_true.
            DATA(t340) = VALUE string( ).
            t340 = |Not an object reference, target|.
            DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t342.
            t342 = t2->issues.
            DATA t344 TYPE REF TO zcl_lnt_issue.
            CLEAR t344.
            DATA t346 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t346.
            t346 = t1->get_first_token( ).
            DATA t349 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t349.
            t344 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t346 i_message_26cb = t340 i_fix = t349 ).
            t342->load( ).
            APPEND t344 TO t342->items.
            t342->save( ).
            DATA t350 TYPE REF TO zcl_lnt_void_type.
            CLEAR t350.
            DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t351.
            DATA(t353) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t354->has = abap_true.
            t354->value = t353.
            t351 = t354.
            DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t356.
            t350 = zcl_lnt_void_type=>get_db65( i_voided = t351 i_qualified_name = t356 ).
            result = t350.
            RETURN.
          ENDIF.
        ELSE.
          DATA(t357) = VALUE abap_bool( ).
          DATA t358 TYPE REF TO object.
          CLEAR t358.
          t358 = t163->get_db65( ).
          t357 = xsdbool( t358 IS BOUND AND t358 IS INSTANCE OF zcl_lnt_st_dereference ).
          IF t357 = abap_true.
            DATA(t360) = VALUE abap_bool( ).
            DATA(t361) = VALUE abap_bool( ).
            DATA(t362) = VALUE abap_bool( ).
            DATA(t363) = t113.
            t362 = xsdbool( t363 IS BOUND AND t363 IS INSTANCE OF zcl_lnt_data_reference ).
            t361 = xsdbool( t362 = abap_false ).
            t360 = t361.
            IF t361 = abap_true.
              DATA(t364) = VALUE abap_bool( ).
              DATA(t365) = VALUE abap_bool( ).
              DATA(t366) = t113.
              t365 = xsdbool( t366 IS BOUND AND t366 IS INSTANCE OF zcl_lnt_void_type ).
              t364 = xsdbool( t365 = abap_false ).
              t360 = t364.
            ENDIF.
            IF t360 = abap_true.
              DATA(t367) = VALUE string( ).
              t367 = |Not an object reference, target|.
              DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t369.
              t369 = t2->issues.
              DATA t371 TYPE REF TO zcl_lnt_issue.
              CLEAR t371.
              DATA t373 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t373.
              t373 = t1->get_first_token( ).
              DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t376.
              t371 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t373 i_message_26cb = t367 i_fix = t376 ).
              t369->load( ).
              APPEND t371 TO t369->items.
              t369->save( ).
              DATA t377 TYPE REF TO zcl_lnt_void_type.
              CLEAR t377.
              DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t378.
              DATA(t380) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t381->has = abap_true.
              t381->value = t380.
              t378 = t381.
              DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t383.
              t377 = zcl_lnt_void_type=>get_db65( i_voided = t378 i_qualified_name = t383 ).
              result = t377.
              RETURN.
            ENDIF.
            DATA(t384) = VALUE abap_bool( ).
            DATA(t385) = VALUE abap_bool( ).
            DATA(t386) = t113.
            t385 = xsdbool( t386 IS BOUND AND t386 IS INSTANCE OF zcl_lnt_void_type ).
            t384 = xsdbool( t385 = abap_false ).
            IF t384 = abap_true.
              DATA t391 TYPE REF TO zcl_lnt_data_reference.
              CLEAR t391.
              t391 ?= t113.
              DATA t393 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t393.
              t393 = t391->type_cba0.
              t113 = t393.
            ENDIF.
          ELSE.
            DATA(t396) = VALUE abap_bool( ).
            DATA t397 TYPE REF TO object.
            CLEAR t397.
            t397 = t163->get_db65( ).
            t396 = xsdbool( t397 IS BOUND AND t397 IS INSTANCE OF zcl_lnt_st_component_name ).
            IF t396 = abap_true.
              DATA t399 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t399.
              DATA t401 TYPE REF TO zif_lnt_node.
              CLEAR t401.
              t401 ?= t163.
              t399 = zcl_lnt_sy_component_name=>run_syntax( i_context = t113 i_node = t401 i_input_967e = t2 ).
              t113 = t399.
            ELSE.
              DATA(t404) = VALUE abap_bool( ).
              DATA t405 TYPE REF TO object.
              CLEAR t405.
              t405 = t163->get_db65( ).
              t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_table_body ).
              IF t404 = abap_true.
                DATA(t407) = VALUE abap_bool( ).
                DATA(t408) = VALUE abap_bool( ).
                DATA(t409) = VALUE abap_bool( ).
                DATA(t410) = VALUE abap_bool( ).
                DATA(t411) = VALUE abap_bool( ).
                DATA(t412) = t113.
                t411 = xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t410 = xsdbool( t411 = abap_false ).
                t409 = t410.
                IF t410 = abap_true.
                  DATA(t413) = VALUE abap_bool( ).
                  DATA(t414) = VALUE abap_bool( ).
                  DATA(t415) = t113.
                  t414 = xsdbool( t415 IS BOUND AND t415 IS INSTANCE OF zcl_lnt_void_type ).
                  t413 = xsdbool( t414 = abap_false ).
                  t409 = t413.
                ENDIF.
                t408 = t409.
                IF t409 = abap_true.
                  DATA(t416) = VALUE abap_bool( ).
                  DATA(t417) = VALUE abap_bool( ).
                  DATA(t418) = t113.
                  t417 = xsdbool( t418 IS BOUND AND t418 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t416 = xsdbool( t417 = abap_false ).
                  t408 = t416.
                ENDIF.
                t407 = t408.
                IF t408 = abap_true.
                  DATA(t419) = VALUE abap_bool( ).
                  DATA(t420) = VALUE abap_bool( ).
                  DATA(t421) = t113.
                  t420 = xsdbool( t421 IS BOUND AND t421 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t419 = xsdbool( t420 = abap_false ).
                  t407 = t419.
                ENDIF.
                IF t407 = abap_true.
                  DATA(t422) = VALUE string( ).
                  DATA(t423) = VALUE string( ).
                  DATA(t424) = VALUE string( ).
                  DATA(t425) = |Not an internal table, "|.
                  DATA(t426) = VALUE string( ).
                  t426 = t1->concat_tokens( ).
                  DATA(t428) = strlen( t425 ).
                  t424 = |{ t425 }{ t426 }|.
                  DATA(t429) = |"|.
                  DATA(t430) = strlen( t424 ).
                  t423 = |{ t424 }{ t429 }|.
                  t422 = t423.
                  DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t431.
                  t431 = t2->issues.
                  DATA t433 TYPE REF TO zcl_lnt_issue.
                  CLEAR t433.
                  DATA t435 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t435.
                  t435 = t1->get_first_token( ).
                  DATA t438 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t438.
                  t433 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t435 i_message_26cb = t422 i_fix = t438 ).
                  t431->load( ).
                  APPEND t433 TO t431->items.
                  t431->save( ).
                  DATA t439 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t439.
                  DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t440.
                  DATA(t442) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t443->has = abap_true.
                  t443->value = t442.
                  t440 = t443.
                  DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t445.
                  t439 = zcl_lnt_void_type=>get_db65( i_voided = t440 i_qualified_name = t445 ).
                  result = t439.
                  RETURN.
                ENDIF.
                DATA(t446) = VALUE abap_bool( ).
                DATA(t447) = VALUE abap_bool( ).
                DATA(t448) = t113.
                t447 = xsdbool( t448 IS BOUND AND t448 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t446 = t447.
                IF t447 = abap_true.
                  DATA(t449) = VALUE abap_bool( ).
                  DATA t451 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t451.
                  t451 ?= t113.
                  DATA(t453) = VALUE abap_bool( ).
                  DATA t454 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t454.
                  t454 = t451->options.
                  t453 = t454->zlnt_view_read_sr_ec4602663c93( ).
                  t449 = t453.
                  t446 = t449.
                ENDIF.
                IF t446 = abap_true.
                  DATA t456 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t456.
                  DATA t457 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t457.
                  DATA t459 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t459.
                  t459 ?= t113.
                  DATA t461 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t461.
                  t461 = t459->row_type.
                  t457 = t461.
                  DATA t463 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t463.
                  DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t464.
                  DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t465.
                  DATA(t466) = |\{\}|.
                  TRY.
                      t465 = zlnt_runtime_json_7c6b3012af76=>parse( t466 ).
                    CATCH zlnt_exception_js_ebcc2df7d5e4.
                      DATA(t467) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t467->has = abap_true.
                      t467->value = `Invalid JSON`.
                      DATA(t468) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t467 ).
                      DATA(t469) = NEW zlnt_exception_cl_30eec8e8805d( ).
                      t469->payload = t468.
                      DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t470.
                      CLEAR t470.
                      DATA t471 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t471.
                      DATA t472 TYPE REF TO object.
                      CLEAR t472.
                      CLEAR t471.
                      t472 = t468.
                      TRY.
                          t470 ?= t472.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t470 IS NOT BOUND.
                        TRY.
                            t471 ?= t468.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                        IF t471 IS BOUND.
                          t470 = t471->source( ).
                        ENDIF.
                        IF t470 IS NOT BOUND.
                          CREATE OBJECT t470.
                          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          t470->oval = t468.
                        ENDIF.
                      ENDIF.
                      t469->source_value = t470.
                      RAISE EXCEPTION t469.
                  ENDTRY.
                  t464 = t465.
                  DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t473.
                  DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t474.
                  DATA t475 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t475.
                  DATA t477 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t477.
                  t477 ?= t113.
                  DATA t479 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t479.
                  t479 = t477->options.
                  t475 = t479.
                  CLEAR t474.
                  IF t475 IS BOUND.
                    DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t481.
                    DATA t482 TYPE REF TO object.
                    CLEAR t482.
                    CLEAR t481.
                    t482 = t475.
                    TRY.
                        t474 ?= t482.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t474 IS NOT BOUND.
                      TRY.
                          t481 ?= t475.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t481 IS BOUND.
                        t474 = t481->source( ).
                      ENDIF.
                      IF t474 IS NOT BOUND.
                        CREATE OBJECT t474.
                        t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t474->oval = t475.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                  t473 = t474.
                  DATA(t483) = VALUE abap_bool( ).
                  DATA(t484) = VALUE abap_bool( ).
                  IF t473 IS NOT BOUND.
                    t484 = abap_true.
                  ELSE.
                    t484 = xsdbool( t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
                  ENDIF.
                  t483 = xsdbool( t484 = abap_false ).
                  IF t483 = abap_true.
                    DATA t486 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t486.
                    t486 = zlnt_runtime_ownk_4497b85e405d=>keys( t473 ).
                    DATA(t488) = VALUE string( ).
                    t486->dense( ).
                    DATA(t489) = VALUE i( ).
                    DO.
                      t486->load( ).
                      IF t489 >= lines( t486->items ).
                        EXIT.
                      ENDIF.
                      CLEAR t488.
                      READ TABLE t486->items INDEX t489 + 1 INTO t488.
                      IF t486->has( t489 ) = abap_false.
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      t489 = t489 + 1.
                      DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t492.
                      t492 = t473->get( p0 = t488 ).
                      t464->put( p0 = t488 p1 = t492 ).
                    ENDDO.
                  ENDIF.
                  DATA(t496) = |withHeader|.
                  DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t497.
                  CLEAR t497.
                  CREATE OBJECT t497.
                  t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  t497->bval = abap_false.
                  t464->put( p0 = t496 p1 = t497 ).
                  DATA t499 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t499.
                  CLEAR t499.
                  IF t464 IS BOUND.
                    IF t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t499 ?= t464->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t499 IS NOT BOUND.
                      IF t464->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t501 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t501.
                        IF t464->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t501 ?= t464->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t501->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t502) = VALUE abap_bool( ).
                      DATA(t503) = VALUE string( ).
                      DATA t504 TYPE REF TO zcl_lnt_itable_key.
                      CLEAR t504.
                      DATA t505 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t505.
                      t499 = NEW zcl_lnt_itable_options( view_source = t464 i_with_header = t502 i_key_type = t503 i_primary_key = t504 i_secondary = t505 ).
                    ENDIF.
                  ENDIF.
                  t463 = t499.
                  DATA t506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t506.
                  DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t507.
                  t456 = NEW zcl_lnt_ty_table_type( i_row_type = t457 i_options = t463 i_qualified_name = t506 i_description = t507 ).
                  t113 = t456.
                ENDIF.
              ELSE.
                DATA(t508) = VALUE abap_bool( ).
                DATA(t509) = VALUE abap_bool( ).
                t509 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_expression_node ).
                t508 = t509.
                IF t509 = abap_true.
                  DATA(t511) = VALUE abap_bool( ).
                  DATA t512 TYPE REF TO zif_lnt_statement_runnable.
                  CLEAR t512.
                  DATA t513 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t513.
                  DATA t515 TYPE REF TO object.
                  CLEAR t515.
                  t515 = t163.
                  t513 ?= t515.
                  t512 = t513->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t511 = xsdbool( t512 IS BOUND AND t512 IS INSTANCE OF zcl_lnt_st_table_expression ).
                  t508 = t511.
                ENDIF.
                IF t508 = abap_true.
                  DATA(t516) = VALUE abap_bool( ).
                  DATA(t517) = VALUE abap_bool( ).
                  DATA(t518) = VALUE abap_bool( ).
                  DATA(t519) = VALUE abap_bool( ).
                  DATA(t520) = t113.
                  t519 = xsdbool( t520 IS BOUND AND t520 IS INSTANCE OF zcl_lnt_ty_table_type ).
                  t518 = xsdbool( t519 = abap_false ).
                  t517 = t518.
                  IF t518 = abap_true.
                    DATA(t521) = VALUE abap_bool( ).
                    DATA(t522) = VALUE abap_bool( ).
                    DATA(t523) = t113.
                    t522 = xsdbool( t523 IS BOUND AND t523 IS INSTANCE OF zcl_lnt_void_type ).
                    t521 = xsdbool( t522 = abap_false ).
                    t517 = t521.
                  ENDIF.
                  t516 = t517.
                  IF t517 = abap_true.
                    DATA(t524) = VALUE abap_bool( ).
                    DATA(t525) = VALUE abap_bool( ).
                    DATA(t526) = t113.
                    t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t524 = xsdbool( t525 = abap_false ).
                    t516 = t524.
                  ENDIF.
                  IF t516 = abap_true.
                    DATA(t527) = VALUE string( ).
                    t527 = |Table expression, expected table|.
                    DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t529.
                    t529 = t2->issues.
                    DATA t531 TYPE REF TO zcl_lnt_issue.
                    CLEAR t531.
                    DATA t533 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t533.
                    t533 = t1->get_first_token( ).
                    DATA t536 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t536.
                    t531 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t533 i_message_26cb = t527 i_fix = t536 ).
                    t529->load( ).
                    APPEND t531 TO t529->items.
                    t529->save( ).
                    DATA t537 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t537.
                    DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t538.
                    DATA(t540) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t541->has = abap_true.
                    t541->value = t540.
                    t538 = t541.
                    DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t543.
                    t537 = zcl_lnt_void_type=>get_db65( i_voided = t538 i_qualified_name = t543 ).
                    result = t537.
                    RETURN.
                  ENDIF.
                  DATA t544 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t544.
                  DATA t546 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t546.
                  DATA t548 TYPE REF TO object.
                  CLEAR t548.
                  t548 = t163.
                  t546 ?= t548.
                  t544 = t546.
                  DATA t551 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t551.
                  DATA t553 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t553.
                  DATA t554 TYPE REF TO zif_lnt_union_297610d4.
                  CLEAR t554.
                  DATA t555 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t555.
                  t555 = t113.
                  t554 ?= t555.
                  t553 ?= t554.
                  t551 = t553.
                  zcl_lnt_sy_table_expression=>run_syntax( i_node = t544 i_input_967e = t2 i_row_type = t551 ).
                  DATA(t558) = VALUE abap_bool( ).
                  DATA(t559) = VALUE abap_bool( ).
                  DATA(t560) = VALUE abap_bool( ).
                  DATA(t561) = t113.
                  t560 = xsdbool( t561 IS BOUND AND t561 IS INSTANCE OF zcl_lnt_void_type ).
                  t559 = xsdbool( t560 = abap_false ).
                  t558 = t559.
                  IF t559 = abap_true.
                    DATA(t562) = VALUE abap_bool( ).
                    DATA(t563) = VALUE abap_bool( ).
                    DATA(t564) = t113.
                    t563 = xsdbool( t564 IS BOUND AND t564 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t562 = xsdbool( t563 = abap_false ).
                    t558 = t562.
                  ENDIF.
                  IF t558 = abap_true.
                    DATA t569 TYPE REF TO zcl_lnt_ty_table_type.
                    CLEAR t569.
                    t569 ?= t113.
                    DATA t571 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t571.
                    t571 = t569->row_type.
                    t113 = t571.
                  ENDIF.
                ELSE.
                  DATA(t574) = VALUE abap_bool( ).
                  DATA t575 TYPE REF TO object.
                  CLEAR t575.
                  t575 = t163->get_db65( ).
                  t574 = xsdbool( t575 IS BOUND AND t575 IS INSTANCE OF zcl_lnt_st_attribute_name ).
                  IF t574 = abap_true.
                    DATA(t577) = VALUE string( ).
                    DATA(t578) = VALUE string( ).
                    DATA(t579) = VALUE abap_bool( ).
                    DATA(t580) = VALUE i( ).
                    t88->load( ).
                    t580 = lines( t88->items ).
                    DATA(t582) = 0.
                    t579 = xsdbool( t580 = t582 ).
                    IF t579 = abap_true.
                      t578 = |Write To|.
                    ELSE.
                      t578 = |Read From|.
                    ENDIF.
                    t577 = t578.
                    DATA t585 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t585.
                    DATA t587 TYPE REF TO zif_lnt_node.
                    CLEAR t587.
                    t587 ?= t163.
                    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t590.
                    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t592.
                    CLEAR t592.
                    CREATE OBJECT t592.
                    t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                    t592->sval = t577.
                    t590 = t592.
                    DATA t595 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t595.
                    t585 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t113 i_node = t587 i_input_967e = t2 i_type_9913 = t590 i_error = t595 ).
                    t113 = t585.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t596 TYPE REF TO zcl_lnt_expression_node.
    DATA t597 TYPE REF TO zcl_lnt_expression_node.
    DATA(t599) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    t597 = t1->find_direct_expression( i_type_9913 = t599 ).
    t596 = t597.
    DATA(t600) = VALUE abap_bool( ).
    t600 = xsdbool( t596 IS BOUND ).
    IF t600 = abap_true.
      DATA(t602) = VALUE abap_bool( ).
      DATA(t603) = VALUE abap_bool( ).
      t603 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_x_string_type ).
      t602 = t603.
      IF t603 = abap_false.
        DATA(t605) = VALUE abap_bool( ).
        t605 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_string_type ).
        t602 = t605.
      ENDIF.
      IF t602 = abap_true.
        DATA(t607) = VALUE string( ).
        t607 = |xstring/string offset/length in writer position not possible|.
        DATA t609 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t609 = t2->issues.
        DATA t611 TYPE REF TO zcl_lnt_issue.
        DATA t613 TYPE REF TO zcl_lnt_abstract_token.
        t613 = t1->get_first_token( ).
        DATA t616 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t611 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t613 i_message_26cb = t607 i_fix = t616 ).
        t609->load( ).
        APPEND t611 TO t609->items.
        t609->save( ).
        DATA t617 TYPE REF TO zcl_lnt_void_type.
        DATA t618 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t620) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t621) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t621->has = abap_true.
        t621->value = t620.
        t618 = t621.
        DATA t623 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t617 = zcl_lnt_void_type=>get_db65( i_voided = t618 i_qualified_name = t623 ).
        result = t617.
        RETURN.
      ENDIF.
      DATA t624 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t625 TYPE REF TO zcl_lnt_expression_node.
      t625 = t596.
      t624 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t625 i_input_967e = t2 ).
    ENDIF.
    DATA t628 TYPE REF TO zcl_lnt_expression_node.
    DATA t629 TYPE REF TO zcl_lnt_expression_node.
    DATA(t631) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    t629 = t1->find_direct_expression( i_type_9913 = t631 ).
    t628 = t629.
    DATA(t632) = VALUE abap_bool( ).
    t632 = xsdbool( t628 IS BOUND ).
    IF t632 = abap_true.
      DATA(t634) = VALUE abap_bool( ).
      DATA(t635) = VALUE abap_bool( ).
      t635 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_x_string_type ).
      t634 = t635.
      IF t635 = abap_false.
        DATA(t637) = VALUE abap_bool( ).
        t637 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_string_type ).
        t634 = t637.
      ENDIF.
      IF t634 = abap_true.
        DATA(t639) = VALUE string( ).
        t639 = |xstring/string offset/length in writer position not possible|.
        DATA t641 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t641 = t2->issues.
        DATA t643 TYPE REF TO zcl_lnt_issue.
        DATA t645 TYPE REF TO zcl_lnt_abstract_token.
        t645 = t1->get_first_token( ).
        DATA t648 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t643 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t645 i_message_26cb = t639 i_fix = t648 ).
        t641->load( ).
        APPEND t643 TO t641->items.
        t641->save( ).
        DATA t649 TYPE REF TO zcl_lnt_void_type.
        DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t652) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t653) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t653->has = abap_true.
        t653->value = t652.
        t650 = t653.
        DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t649 = zcl_lnt_void_type=>get_db65( i_voided = t650 i_qualified_name = t655 ).
        result = t649.
        RETURN.
      ENDIF.
      DATA t656 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t657 TYPE REF TO zcl_lnt_expression_node.
      t657 = t628.
      t656 = zcl_lnt_sy_field_length=>run_syntax( i_node = t657 i_input_967e = t2 ).
    ENDIF.
    result = t113.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t1 IS INITIAL ).
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zif_lnt_node.
    t13 = t1.
    t12 = t13->get_first_token( ).
    t11 = t12.
    DATA t15 TYPE string.
    DATA t19 TYPE string.
    t19 = t11->str.
    t15 = t19.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE REF TO object.
    DATA t24 TYPE REF TO zif_lnt_node.
    t24 = t1.
    t23 = t24->get_db65( ).
    t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_target_field ).
    t21 = t22.
    IF t22 = abap_false.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO object.
      DATA t28 TYPE REF TO zif_lnt_node.
      t28 = t1.
      t27 = t28->get_db65( ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_target_field_symbol ).
      t21 = t26.
    ENDIF.
    IF t21 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t32 TYPE REF TO zcl_lnt_current_scope.
      DATA t33 TYPE REF TO zcl_lnt_current_scope.
      t33 = t2->scope.
      t32 = t33.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t15.
      t35 = t39.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t43 = t35.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t47) = VALUE abap_bool( ).
      IF t43 IS INITIAL.
        t47 = abap_true.
      ELSEIF t43->has = abap_false.
        t47 = abap_true.
      ENDIF.
      t42 = t47.
      IF t42 = abap_true.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t54 = t32->current.
        t53 = t54.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t57) = xsdbool( t53 IS INITIAL ).
        IF t57 = abap_true.
        ELSE.
          DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t61 = t53.
          DATA t63 TYPE string.
          t63 = t35->value.
          t60 = t61->find_variable( i_name = t63 ).
          t56 = t60.
        ENDIF.
        t51 = t56.
        DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t66 TYPE abap_bool.
        t66 = xsdbool( t51 IS BOUND ).
        IF t66 = abap_true.
          t65 = t51.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t77 TYPE string.
          t77 = t35->value.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t77.
          t75 = t79.
          t73 = t32->find_type_pool_constant( i_name = t75 ).
          t65 = t73.
        ENDIF.
        t41 = t65.
      ENDIF.
      t30 = t41.
      DATA t81 TYPE abap_bool.
      t81 = xsdbool( t30 IS BOUND ).
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_current_scope.
        t83 = t2->scope.
        DATA t85 TYPE REF TO zcl_lnt_abstract_token.
        t85 = t11.
        DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
        t89 = t30.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t92) = |Write To|.
        CREATE OBJECT t91.
        t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t91->sval = t92.
        DATA t93 TYPE string.
        t93 = t2->filename.
        DATA t95 TYPE REF TO zcl_lnt_ireference_extras.
        t83->add_reference( i_usage = t85 i_referencing = t89 i_type_9913 = t91 i_filename = t93 i_extra = t95 ).
      ENDIF.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = VALUE i( ).
      DATA(t99) = |~|.
      DATA(t100) = strlen( t15 ).
      IF t99 IS INITIAL.
        t97 = 0.
      ELSE.
        FIND t99 IN t15 MATCH OFFSET t97.
        IF sy-subrc <> 0.
          t97 = -1.
        ENDIF.
      ENDIF.
      DATA(t101) = 0.
      t96 = xsdbool( t97 >= t101 ).
      IF t96 = abap_true.
        DATA t102 TYPE REF TO zif_lnt_interface_definition.
        DATA t104 TYPE REF TO zcl_lnt_current_scope.
        DATA t105 TYPE REF TO zcl_lnt_current_scope.
        t105 = t2->scope.
        t104 = t105.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t111) = |~|.
        DATA(t112) = strlen( t15 ).
        DATA t113 TYPE i.
        DATA(t114) = VALUE i( ).
        DATA(t115) = VALUE i( ).
        DATA t116 TYPE i.
        DATA(t117) = VALUE string( ).
        CREATE OBJECT t109.
        t116 = strlen( t111 ).
        t113 = 0.
        IF t116 = 0.
          WHILE t113 < t112.
            t117 = t15+t113(1).
            APPEND t117 TO t109->items.
            t113 = t113 + 1.
          ENDWHILE.
        ELSE.
          WHILE t113 <= t112.
            FIND FIRST OCCURRENCE OF t111 IN SECTION OFFSET t113 OF t15 MATCH OFFSET t114.
            IF sy-subrc = 0.
              t115 = t114 - t113.
            ELSE.
              t114 = -1.
              t115 = t112 - t113.
            ENDIF.
            CLEAR t117.
            IF t115 > 0.
              t117 = t15+t113(t115).
            ENDIF.
            APPEND t117 TO t109->items.
            IF t114 < 0.
              EXIT.
            ENDIF.
            t113 = t114 + t116.
          ENDWHILE.
        ENDIF.
        DATA(t118) = 0.
        t108 = t109->get( p0 = t118 ).
        t107 = t108.
        DATA t119 TYPE REF TO zif_lnt_interface_definition.
        DATA(t120) = VALUE abap_bool( ).
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t121 = t107.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t125) = VALUE abap_bool( ).
        IF t121 IS INITIAL.
          t125 = abap_true.
        ELSEIF t121->has = abap_false.
          t125 = abap_true.
        ENDIF.
        t120 = t125.
        IF t120 = abap_true.
        ELSE.
          DATA t129 TYPE REF TO zif_lnt_interface_definition.
          DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t132 = t104->current.
          t131 = t132.
          DATA t134 TYPE REF TO zif_lnt_interface_definition.
          DATA(t135) = xsdbool( t131 IS INITIAL ).
          IF t135 = abap_true.
          ELSE.
            DATA t138 TYPE REF TO zif_lnt_interface_definition.
            DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t139 = t131.
            DATA t141 TYPE string.
            t141 = t107->value.
            t138 = t139->find_interface_definition( i_name = t141 ).
            t134 = t138.
          ENDIF.
          t129 = t134.
          DATA t143 TYPE REF TO zif_lnt_interface_definition.
          DATA t144 TYPE abap_bool.
          t144 = xsdbool( t129 IS BOUND ).
          IF t144 = abap_true.
            t143 = t129.
          ELSE.
            DATA t152 TYPE REF TO zcl_lnt_ob_interface.
            DATA t153 TYPE REF TO zcl_lnt_ob_interface.
            DATA t154 TYPE REF TO zif_lnt_object.
            DATA t155 TYPE REF TO zif_lnt_registry.
            t155 = t104->reg.
            DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t159) = |INTF|.
            DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t160->has = abap_true.
            t160->value = t159.
            t157 = t160.
            DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t164 TYPE string.
            t164 = t107->value.
            DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t166->has = abap_true.
            t166->value = t164.
            t162 = t166.
            t154 = t155->get_object( i_type_9913 = t157 i_name = t162 ).
            DATA t168 TYPE REF TO object.
            t168 = t154.
            t153 ?= t168.
            t152 = t153.
            DATA t169 TYPE REF TO zif_lnt_interface_definition.
            DATA t170 TYPE abap_bool.
            t170 = xsdbool( t152 IS BOUND ).
            IF t170 = abap_true.
              DATA t176 TYPE REF TO zif_lnt_interface_definition.
              t176 = t152->def.
              t169 = t176.
            ELSE.
              CLEAR t169.
            ENDIF.
            t143 = t169.
          ENDIF.
          t119 = t143.
        ENDIF.
        t102 = t119.
        DATA t179 TYPE abap_bool.
        t179 = xsdbool( t102 IS BOUND ).
        IF t179 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_current_scope.
          t181 = t2->scope.
          DATA t183 TYPE REF TO zcl_lnt_abstract_token.
          t183 = t11.
          DATA t187 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t189 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t190 TYPE REF TO zif_lnt_interface_definition.
          t190 = t102.
          t189 ?= t190.
          t187 = t189.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t194) = |Object|.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t193->sval = t194.
          DATA t195 TYPE string.
          t195 = t2->filename.
          DATA t197 TYPE REF TO zcl_lnt_ireference_extras.
          t181->add_reference( i_usage = t183 i_referencing = t187 i_type_9913 = t193 i_filename = t195 i_extra = t197 ).
        ENDIF.
      ENDIF.
      DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
      t199 = t30.
      DATA t201 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t202) = xsdbool( t199 IS INITIAL ).
      IF t202 = abap_true.
      ELSE.
        DATA t209 TYPE REF TO zcl_lnt_abstract_type.
        t209 = t199->type_cba0.
        t201 = t209.
      ENDIF.
      result = t201.
      RETURN.
    ELSE.
      DATA t211 TYPE abap_bool.
      DATA t212 TYPE REF TO object.
      DATA t213 TYPE REF TO zif_lnt_node.
      t213 = t1.
      t212 = t213->get_db65( ).
      t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_class_name ).
      IF t211 = abap_true.
        DATA t215 TYPE REF TO zif_lnt_interface_definition.
        DATA t217 TYPE REF TO zcl_lnt_current_scope.
        DATA t218 TYPE REF TO zcl_lnt_current_scope.
        t218 = t2->scope.
        t217 = t218.
        DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t224->has = abap_true.
        t224->value = t15.
        t220 = t224.
        DATA t226 TYPE REF TO zif_lnt_interface_definition.
        DATA(t227) = VALUE abap_bool( ).
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t228 = t220.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t232) = VALUE abap_bool( ).
        IF t228 IS INITIAL.
          t232 = abap_true.
        ELSEIF t228->has = abap_false.
          t232 = abap_true.
        ENDIF.
        t227 = t232.
        IF t227 = abap_true.
        ELSE.
          DATA t236 TYPE REF TO zif_lnt_class_definition.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t241 TYPE string.
          t241 = t220->value.
          DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t243->has = abap_true.
          t243->value = t241.
          t238 = t243.
          DATA t245 TYPE REF TO zif_lnt_class_definition.
          DATA(t246) = VALUE abap_bool( ).
          DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t247 = t238.
          DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t251) = VALUE abap_bool( ).
          IF t247 IS INITIAL.
            t251 = abap_true.
          ELSEIF t247->has = abap_false.
            t251 = abap_true.
          ENDIF.
          t246 = t251.
          IF t246 = abap_true.
          ELSE.
            DATA t255 TYPE REF TO zif_lnt_class_definition.
            DATA t257 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t258 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t258 = t217->current.
            t257 = t258.
            DATA t260 TYPE REF TO zif_lnt_class_definition.
            DATA(t261) = xsdbool( t257 IS INITIAL ).
            IF t261 = abap_true.
            ELSE.
              DATA t264 TYPE REF TO zif_lnt_class_definition.
              DATA t265 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t265 = t257.
              DATA t267 TYPE string.
              t267 = t238->value.
              t264 = t265->find_class_definition( i_name = t267 ).
              t260 = t264.
            ENDIF.
            t255 = t260.
            DATA t269 TYPE REF TO zif_lnt_class_definition.
            DATA t270 TYPE abap_bool.
            t270 = xsdbool( t255 IS BOUND ).
            IF t270 = abap_true.
              t269 = t255.
            ELSE.
              DATA t278 TYPE REF TO zcl_lnt_class.
              DATA t279 TYPE REF TO zcl_lnt_class.
              DATA t280 TYPE REF TO zif_lnt_object.
              DATA t281 TYPE REF TO zif_lnt_registry.
              t281 = t217->reg.
              DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t285) = |CLAS|.
              DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t286->has = abap_true.
              t286->value = t285.
              t283 = t286.
              DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t290 TYPE string.
              t290 = t238->value.
              DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t292->has = abap_true.
              t292->value = t290.
              t288 = t292.
              t280 = t281->get_object( i_type_9913 = t283 i_name = t288 ).
              DATA t294 TYPE REF TO object.
              t294 = t280.
              t279 ?= t294.
              t278 = t279.
              DATA t295 TYPE REF TO zif_lnt_class_definition.
              DATA t296 TYPE abap_bool.
              t296 = xsdbool( t278 IS BOUND ).
              IF t296 = abap_true.
                DATA t298 TYPE REF TO zif_lnt_class_definition.
                DATA t299 TYPE REF TO zcl_lnt_class.
                t299 = t278.
                t298 = t299->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t295 = t298.
              ELSE.
                CLEAR t295.
              ENDIF.
              t269 = t295.
            ENDIF.
            t245 = t269.
          ENDIF.
          t236 = t245.
          DATA t302 TYPE REF TO zif_lnt_interface_definition.
          DATA t303 TYPE abap_bool.
          t303 = xsdbool( t236 IS BOUND ).
          IF t303 = abap_true.
            DATA t305 TYPE REF TO zif_lnt_interface_definition.
            DATA t306 TYPE REF TO zif_lnt_class_definition.
            t306 = t236.
            t305 ?= t306.
            t302 = t305.
          ELSE.
            DATA t309 TYPE REF TO zif_lnt_interface_definition.
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t314 TYPE string.
            t314 = t220->value.
            DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t316->has = abap_true.
            t316->value = t314.
            t311 = t316.
            DATA t318 TYPE REF TO zif_lnt_interface_definition.
            DATA(t319) = VALUE abap_bool( ).
            DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t320 = t311.
            DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t324) = VALUE abap_bool( ).
            IF t320 IS INITIAL.
              t324 = abap_true.
            ELSEIF t320->has = abap_false.
              t324 = abap_true.
            ENDIF.
            t319 = t324.
            IF t319 = abap_true.
            ELSE.
              DATA t328 TYPE REF TO zif_lnt_interface_definition.
              DATA t330 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t331 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t331 = t217->current.
              t330 = t331.
              DATA t333 TYPE REF TO zif_lnt_interface_definition.
              DATA(t334) = xsdbool( t330 IS INITIAL ).
              IF t334 = abap_true.
              ELSE.
                DATA t337 TYPE REF TO zif_lnt_interface_definition.
                DATA t338 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t338 = t330.
                DATA t340 TYPE string.
                t340 = t311->value.
                t337 = t338->find_interface_definition( i_name = t340 ).
                t333 = t337.
              ENDIF.
              t328 = t333.
              DATA t342 TYPE REF TO zif_lnt_interface_definition.
              DATA t343 TYPE abap_bool.
              t343 = xsdbool( t328 IS BOUND ).
              IF t343 = abap_true.
                t342 = t328.
              ELSE.
                DATA t351 TYPE REF TO zcl_lnt_ob_interface.
                DATA t352 TYPE REF TO zcl_lnt_ob_interface.
                DATA t353 TYPE REF TO zif_lnt_object.
                DATA t354 TYPE REF TO zif_lnt_registry.
                t354 = t217->reg.
                DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t358) = |INTF|.
                DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t359->has = abap_true.
                t359->value = t358.
                t356 = t359.
                DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t363 TYPE string.
                t363 = t311->value.
                DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t365->has = abap_true.
                t365->value = t363.
                t361 = t365.
                t353 = t354->get_object( i_type_9913 = t356 i_name = t361 ).
                DATA t367 TYPE REF TO object.
                t367 = t353.
                t352 ?= t367.
                t351 = t352.
                DATA t368 TYPE REF TO zif_lnt_interface_definition.
                DATA t369 TYPE abap_bool.
                t369 = xsdbool( t351 IS BOUND ).
                IF t369 = abap_true.
                  DATA t375 TYPE REF TO zif_lnt_interface_definition.
                  t375 = t351->def.
                  t368 = t375.
                ELSE.
                  CLEAR t368.
                ENDIF.
                t342 = t368.
              ENDIF.
              t318 = t342.
            ENDIF.
            t309 = t318.
            DATA t378 TYPE REF TO zif_lnt_interface_definition.
            DATA t379 TYPE abap_bool.
            t379 = xsdbool( t309 IS BOUND ).
            IF t379 = abap_true.
              t378 = t309.
            ELSE.
              CLEAR t378.
            ENDIF.
            t302 = t378.
          ENDIF.
          t226 = t302.
        ENDIF.
        t215 = t226.
        DATA t387 TYPE abap_bool.
        t387 = xsdbool( t215 IS BOUND ).
        IF t387 = abap_true.
          DATA t389 TYPE REF TO zcl_lnt_current_scope.
          t389 = t2->scope.
          DATA t391 TYPE REF TO zcl_lnt_abstract_token.
          t391 = t11.
          DATA t395 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t397 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t398 TYPE REF TO zif_lnt_interface_definition.
          t398 = t215.
          t397 ?= t398.
          t395 = t397.
          DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t402) = |Object|.
          CREATE OBJECT t401.
          t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t401->sval = t402.
          DATA t403 TYPE string.
          t403 = t2->filename.
          DATA t405 TYPE REF TO zcl_lnt_ireference_extras.
          t389->add_reference( i_usage = t391 i_referencing = t395 i_type_9913 = t401 i_filename = t403 i_extra = t405 ).
          DATA t406 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t407 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t408 TYPE REF TO zif_lnt_interface_definition.
          t408 = t215.
          t407 ?= t408.
          DATA t410 TYPE REF TO zcl_lnt_abstract_type_data.
          t406 = NEW zcl_lnt_object_reference_type( i_id = t407 i_extra = t410 ).
          result = t406.
          RETURN.
        ELSE.
          DATA(t411) = VALUE abap_bool( ).
          DATA(t412) = VALUE abap_bool( ).
          DATA t416 TYPE REF TO zcl_lnt_current_scope.
          t416 = t2->scope.
          DATA t418 TYPE REF TO zcl_lnt_ddic.
          DATA t419 TYPE REF TO zif_lnt_registry.
          t419 = t416->reg.
          t418 = NEW zcl_lnt_ddic( i_reg_f149 = t419 ).
          DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t425->has = abap_true.
          t425->value = t15.
          t421 = t425.
          DATA(t427) = VALUE abap_bool( ).
          DATA(t428) = VALUE abap_bool( ).
          DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t429 = t421.
          DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t433) = VALUE abap_bool( ).
          IF t429 IS INITIAL.
            t433 = abap_true.
          ELSEIF t429->has = abap_false.
            t433 = abap_true.
          ENDIF.
          t428 = t433.
          IF t428 = abap_true.
            t427 = abap_true.
          ELSE.
            DATA t436 TYPE abap_bool.
            DATA t437 TYPE REF TO zif_lnt_registry.
            t437 = t418->reg.
            DATA t439 TYPE string.
            t439 = t421->value.
            t436 = t437->in_error_namespace( i_name = t439 ).
            t427 = t436.
          ENDIF.
          t412 = t427.
          t411 = xsdbool( t412 = abap_false ).
          IF t411 = abap_true.
            DATA t442 TYPE REF TO zcl_lnt_current_scope.
            t442 = t2->scope.
            DATA t444 TYPE REF TO zcl_lnt_abstract_token.
            t444 = t11.
            DATA t448 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t450) = |Object (Void)|.
            CREATE OBJECT t449.
            t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t449->sval = t450.
            DATA t451 TYPE string.
            t451 = t2->filename.
            DATA t453 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t455 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t460) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t460->has = abap_true.
            t460->value = t15.
            t456 = t460.
            DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t465) = |CLAS|.
            DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t466->has = abap_true.
            t466->value = t465.
            t462 = t466.
            DATA t468 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t455 = NEW zcl_lnt_ireference_extras( i_oo_name = t456 i_oo_type = t462 i_found_qualified = t468 ).
            CREATE OBJECT t455->zlnt_view_ownkeys_b0e8086400eb.
            t455->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t455->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t470 ).
            DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t455->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t455->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t471 ).
            ENDIF.
            CREATE OBJECT t455->zlnt_json_ownkeys_70e5fd461788.
            t455->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t472) = |ooName|.
            DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t455->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
            DATA(t474) = |ooType|.
            DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t455->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t455->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
            ENDIF.
            t453 = t455.
            t442->add_reference( i_usage = t444 i_referencing = t448 i_type_9913 = t449 i_filename = t451 i_extra = t453 ).
            DATA t477 TYPE REF TO zcl_lnt_void_type.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t481) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t481->has = abap_true.
            t481->value = t15.
            t478 = t481.
            DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t477 = zcl_lnt_void_type=>get_db65( i_voided = t478 i_qualified_name = t483 ).
            result = t477.
            RETURN.
          ELSE.
            DATA t484 TYPE REF TO zcl_lnt_unknown_type.
            DATA t485 TYPE string.
            DATA(t487) = | unknown, Target|.
            DATA(t488) = strlen( t15 ).
            t485 = |{ t15 }{ t487 }|.
            DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t484 = NEW zcl_lnt_unknown_type( i_error = t485 i_qualified_name = t489 ).
            result = t484.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t490 TYPE abap_bool.
        DATA t491 TYPE abap_bool.
        DATA t492 TYPE REF TO object.
        DATA t493 TYPE REF TO zif_lnt_node.
        t493 = t1.
        t492 = t493->get_db65( ).
        t491 = xsdbool( t492 IS BOUND AND t492 IS INSTANCE OF zcl_lnt_st_cast ).
        t490 = t491.
        IF t491 = abap_true.
          DATA t495 TYPE abap_bool.
          t495 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
          t490 = t495.
        ENDIF.
        IF t490 = abap_true.
          DATA t497 TYPE REF TO zcl_lnt_abstract_type.
          DATA t498 TYPE REF TO zcl_lnt_abstract_type.
          DATA t499 TYPE REF TO zcl_lnt_expression_node.
          DATA t501 TYPE REF TO object.
          t501 = t1.
          t499 ?= t501.
          DATA t503 TYPE REF TO zcl_lnt_abstract_type.
          t498 = zcl_lnt_sy_cast=>run_syntax( i_node = t499 i_input_967e = t2 i_target_type = t503 ).
          t497 = t498.
          DATA t504 TYPE abap_bool.
          t504 = xsdbool( t497 IS BOUND AND t497 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t504 = abap_true.
            DATA(t507) = |CAST, uknown type|.
            DATA t508 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t508 = t2->issues.
            DATA t510 TYPE REF TO zcl_lnt_issue.
            DATA t512 TYPE REF TO zcl_lnt_abstract_token.
            DATA t513 TYPE REF TO zcl_lnt_expression_node.
            DATA t515 TYPE REF TO object.
            t515 = t1.
            t513 ?= t515.
            t512 = t513->get_first_token( ).
            DATA t517 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t510 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t512 i_message_26cb = t507 i_fix = t517 ).
            t508->load( ).
            APPEND t510 TO t508->items.
            t508->save( ).
            DATA t518 TYPE REF TO zcl_lnt_void_type.
            DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t521) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t522) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t522->has = abap_true.
            t522->value = t521.
            t519 = t522.
            DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t518 = zcl_lnt_void_type=>get_db65( i_voided = t519 i_qualified_name = t524 ).
            result = t518.
            RETURN.
          ENDIF.
          result = t497.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t529 TYPE REF TO zcl_lnt_unknown_type.
    DATA(t530) = |unknown target type|.
    DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t529 = NEW zcl_lnt_unknown_type( i_error = t530 i_qualified_name = t531 ).
    result = t529.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d845_5ce110a6991c.
  ENDMETHOD.
ENDCLASS.
