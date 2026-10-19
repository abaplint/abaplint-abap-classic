* TS: src/abap/5_syntax/expressions/component_chain.ts:12:1 ComponentChain
CLASS zcl_lnt_sy_component_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_context.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    IF t4 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abstract_node.
    t15 = i_node.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = t15->children.
    t14 = t17.
    t13 ?= t14.
    t12 = t13.
    DATA t19 TYPE i.
    t19 = 0.
    DO.
      DATA t21 TYPE abap_bool.
      DATA t23 TYPE i.
      t12->load( ).
      t23 = lines( t12->items ).
      t21 = xsdbool( t19 < t23 ).
      IF t21 = abap_false.
        EXIT.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t1.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_void_type ).
      t25 = t26.
      IF t26 = abap_false.
        DATA t28 TYPE abap_bool.
        DATA(t29) = t1.
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown_type ).
        t25 = t28.
      ENDIF.
      IF t25 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_abstract_type.
        DATA t33 TYPE REF TO zif_lnt_union_adffe656.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type.
        t34 = t1.
        t33 ?= t34.
        t32 ?= t33.
        result = t32.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t38.
      DATA(t40) = t19.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      t12->load( ).
      CLEAR t41.
      READ TABLE t12->items INDEX t40 INTO t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      CLEAR t38.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t42 ?= t41.
        DATA t43 TYPE REF TO object.
        t43 = t42->as_ref( ).
        t38 ?= t43.
      ELSE.
        t38 ?= t41.
      ENDIF.
      t37 = t38.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t47) = 0.
      t45 = xsdbool( t19 = t47 ).
      t44 = t45.
      IF t45 = abap_true.
        DATA(t48) = VALUE abap_bool( ).
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        t50 = t37->concat_tokens( ).
        DATA(t52) = strlen( t50 ).
        t49 = t50.
        IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t49 TO UPPER CASE.
        ELSE.
          t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
        ENDIF.
        DATA(t53) = |TABLE_LINE|.
        t48 = xsdbool( t49 = t53 ).
        t44 = t48.
      ENDIF.
      IF t44 = abap_true.
        DATA t54 TYPE i.
        DATA(t56) = 1.
        t54 = t19 + t56.
        t19 = t54.
        CONTINUE.
      ELSE.
        DATA t57 TYPE abap_bool.
        DATA t58 TYPE REF TO object.
        t58 = t37->get_db65( ).
        t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_st_dereference ).
        IF t57 = abap_true.
          DATA t60 TYPE abap_bool.
          DATA t61 TYPE abap_bool.
          DATA(t62) = t1.
          t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_data_reference ).
          t60 = xsdbool( t61 = abap_false ).
          IF t60 = abap_true.
            DATA(t64) = |Not a data reference, cannot be dereferenced|.
            DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t65 = t3->issues.
            DATA t67 TYPE REF TO zcl_lnt_issue.
            DATA t69 TYPE REF TO zcl_lnt_abstract_token.
            t69 = t37->get_first_token( ).
            DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t72.
            t67 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t69 i_message_26cb = t64 i_fix = t72 ).
            t65->load( ).
            APPEND t67 TO t65->items.
            t65->save( ).
            DATA t73 TYPE REF TO zcl_lnt_void_type.
            CLEAR t73.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            DATA(t76) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t77->has = abap_true.
            t77->value = t76.
            t74 = t77.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            t73 = zcl_lnt_void_type=>get_db65( i_voided = t74 i_qualified_name = t79 ).
            result = t73.
            RETURN.
          ENDIF.
          DATA t84 TYPE REF TO zcl_lnt_data_reference.
          t84 ?= t1.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          t86 = t84->type_cba0.
          t1 = t86.
          DATA t89 TYPE i.
          DATA(t91) = 1.
          t89 = t19 + t91.
          t19 = t89.
          CONTINUE.
        ELSE.
          DATA t92 TYPE abap_bool.
          DATA t93 TYPE REF TO object.
          t93 = t37->get_db65( ).
          t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_arrow_or_dash ).
          IF t92 = abap_true.
            DATA t95 TYPE string.
            DATA t96 TYPE string.
            t96 = t37->concat_tokens( ).
            t95 = t96.
            DATA t98 TYPE abap_bool.
            DATA(t100) = |-|.
            t98 = xsdbool( t95 = t100 ).
            IF t98 = abap_true.
              DATA t101 TYPE abap_bool.
              DATA t102 TYPE abap_bool.
              DATA(t103) = t1.
              t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_structure_type ).
              t101 = xsdbool( t102 = abap_false ).
              IF t101 = abap_true.
                DATA(t105) = |ComponentChain, not a structure|.
                DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t106 = t3->issues.
                DATA t108 TYPE REF TO zcl_lnt_issue.
                DATA t110 TYPE REF TO zcl_lnt_abstract_token.
                t110 = t37->get_first_token( ).
                DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t113.
                t108 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t110 i_message_26cb = t105 i_fix = t113 ).
                t106->load( ).
                APPEND t108 TO t106->items.
                t106->save( ).
                DATA t114 TYPE REF TO zcl_lnt_void_type.
                CLEAR t114.
                DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t115.
                DATA(t117) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t118->has = abap_true.
                t118->value = t117.
                t115 = t118.
                DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t120.
                t114 = zcl_lnt_void_type=>get_db65( i_voided = t115 i_qualified_name = t120 ).
                result = t114.
                RETURN.
              ENDIF.
            ELSE.
              DATA t121 TYPE abap_bool.
              DATA(t123) = |=>|.
              t121 = xsdbool( t95 = t123 ).
              IF t121 = abap_true.
                DATA t124 TYPE abap_bool.
                DATA t125 TYPE abap_bool.
                DATA(t126) = t1.
                t125 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_object_reference_type ).
                t124 = xsdbool( t125 = abap_false ).
                IF t124 = abap_true.
                  DATA(t128) = |ComponentChain, not a reference|.
                  DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t129 = t3->issues.
                  DATA t131 TYPE REF TO zcl_lnt_issue.
                  DATA t133 TYPE REF TO zcl_lnt_abstract_token.
                  t133 = t37->get_first_token( ).
                  DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t136.
                  t131 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t133 i_message_26cb = t128 i_fix = t136 ).
                  t129->load( ).
                  APPEND t131 TO t129->items.
                  t129->save( ).
                  DATA t137 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t137.
                  DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t138.
                  DATA(t140) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t141->has = abap_true.
                  t141->value = t140.
                  t138 = t141.
                  DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t143.
                  t137 = zcl_lnt_void_type=>get_db65( i_voided = t138 i_qualified_name = t143 ).
                  result = t137.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t144 TYPE abap_bool.
                DATA(t146) = |->|.
                t144 = xsdbool( t95 = t146 ).
                IF t144 = abap_true.
                  DATA t147 TYPE abap_bool.
                  DATA t148 TYPE abap_bool.
                  DATA t149 TYPE abap_bool.
                  DATA(t150) = t1.
                  t149 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_object_reference_type ).
                  t148 = xsdbool( t149 = abap_false ).
                  t147 = t148.
                  IF t148 = abap_true.
                    DATA t151 TYPE abap_bool.
                    DATA t152 TYPE abap_bool.
                    DATA(t153) = t1.
                    t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_data_reference ).
                    t151 = xsdbool( t152 = abap_false ).
                    t147 = t151.
                  ENDIF.
                  IF t147 = abap_true.
                    DATA(t155) = |ComponentChain, not a reference|.
                    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t156 = t3->issues.
                    DATA t158 TYPE REF TO zcl_lnt_issue.
                    DATA t160 TYPE REF TO zcl_lnt_abstract_token.
                    t160 = t37->get_first_token( ).
                    DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t163.
                    t158 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t160 i_message_26cb = t155 i_fix = t163 ).
                    t156->load( ).
                    APPEND t158 TO t156->items.
                    t156->save( ).
                    DATA t164 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t164.
                    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t165.
                    DATA(t167) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t168->has = abap_true.
                    t168->value = t167.
                    t165 = t168.
                    DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t170.
                    t164 = zcl_lnt_void_type=>get_db65( i_voided = t165 i_qualified_name = t170 ).
                    result = t164.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t171 TYPE abap_bool.
            DATA t172 TYPE REF TO object.
            t172 = t37->get_db65( ).
            t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_st_component_name ).
            IF t171 = abap_true.
              DATA t174 TYPE string.
              DATA t175 TYPE string.
              t175 = t37->concat_tokens( ).
              t174 = t175.
              DATA t177 TYPE abap_bool.
              DATA(t178) = t1.
              t177 = xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_data_reference ).
              IF t177 = abap_true.
                DATA t183 TYPE REF TO zcl_lnt_data_reference.
                t183 ?= t1.
                DATA t185 TYPE REF TO zcl_lnt_abstract_type.
                t185 = t183->type_cba0.
                t1 = t185.
                DATA t188 TYPE abap_bool.
                DATA(t190) = |*|.
                t188 = xsdbool( t174 = t190 ).
                IF t188 = abap_true.
                  DATA t191 TYPE i.
                  DATA(t193) = 1.
                  t191 = t19 + t193.
                  t19 = t191.
                  CONTINUE.
                ENDIF.
              ENDIF.
              DATA t194 TYPE abap_bool.
              DATA(t195) = t1.
              t194 = xsdbool( t195 IS BOUND AND t195 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t194 = abap_true.
                DATA t198 TYPE REF TO zcl_lnt_structure_type.
                t198 ?= t1.
                DATA t200 TYPE string.
                t200 = t174.
                DATA t202 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t202.
                DATA t203 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                t203 = t198->indexed.
                DATA t205 TYPE string.
                DATA(t207) = strlen( t200 ).
                t205 = t200.
                IF t205 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t205 TO UPPER CASE.
                ELSE.
                  t205 = zlnt_runtime_uppe_91169605024d=>full( t205 ).
                ENDIF.
                t202 = t203->get( p0 = t205 ).
                t1 = t202.
                DATA(t208) = VALUE abap_bool( ).
                DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t211.
                t208 = xsdbool( t1 IS INITIAL ).
                IF t208 = abap_true.
                  DATA t216 TYPE string.
                  DATA t217 TYPE string.
                  DATA(t218) = |Component "|.
                  DATA(t220) = strlen( t218 ).
                  t217 = |{ t218 }{ t174 }|.
                  DATA(t221) = |" not found in structure|.
                  DATA(t222) = strlen( t217 ).
                  t216 = |{ t217 }{ t221 }|.
                  DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t223 = t3->issues.
                  DATA t225 TYPE REF TO zcl_lnt_issue.
                  DATA t227 TYPE REF TO zcl_lnt_abstract_token.
                  t227 = t37->get_first_token( ).
                  DATA t230 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t230.
                  t225 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t227 i_message_26cb = t216 i_fix = t230 ).
                  t223->load( ).
                  APPEND t225 TO t223->items.
                  t223->save( ).
                  DATA t231 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t231.
                  DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t232.
                  DATA(t234) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t235->has = abap_true.
                  t235->value = t234.
                  t232 = t235.
                  DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t237.
                  t231 = zcl_lnt_void_type=>get_db65( i_voided = t232 i_qualified_name = t237 ).
                  result = t231.
                  RETURN.
                ENDIF.
              ELSE.
                DATA t238 TYPE abap_bool.
                DATA(t239) = t1.
                t238 = xsdbool( t239 IS BOUND AND t239 IS INSTANCE OF zcl_lnt_object_reference_type ).
                IF t238 = abap_true.
                  DATA t240 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t243 TYPE REF TO zcl_lnt_object_reference_type.
                  t243 ?= t1.
                  DATA t245 TYPE REF TO zcl_lnt_fi_identifier.
                  t245 = t243->identifier.
                  t240 = t245.
                  DATA t247 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t247.
                  DATA t249 TYPE REF TO zcl_lnt_current_scope.
                  DATA t250 TYPE REF TO zcl_lnt_current_scope.
                  t250 = t3->scope.
                  t249 = t250.
                  DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t252.
                  DATA(t255) = VALUE string( ).
                  DATA(t258) = VALUE string( ).
                  DATA t259 TYPE string.
                  DATA t262 TYPE REF TO zcl_lnt_abstract_token.
                  t262 = t240->token.
                  DATA t264 TYPE string.
                  t264 = t262->str.
                  t259 = t264.
                  DATA(t266) = VALUE abap_bool( ).
                  DATA(t267) = VALUE string( ).
                  DATA(t268) = t259.
                  DATA(t269) = 0.
                  DATA(t270) = 1.
                  DATA(t271) = strlen( t268 ).
                  IF t269 < 0.
                    t269 = t269 + t271.
                    IF t269 < 0.
                      t269 = 0.
                    ENDIF.
                  ENDIF.
                  IF t269 > t271 OR t270 <= 0.
                    CLEAR t267.
                  ELSE.
                    IF t270 > t271 - t269.
                      t270 = t271 - t269.
                    ENDIF.
                    t267 = t268+t269(t270).
                  ENDIF.
                  DATA(t272) = |!|.
                  t266 = xsdbool( t267 = t272 ).
                  IF t266 = abap_true.
                    DATA(t273) = VALUE string( ).
                    DATA t274 TYPE string.
                    t274 = t259.
                    DATA(t276) = VALUE string( ).
                    DATA(t278) = 1.
                    DATA t279 TYPE i.
                    t279 = strlen( t274 ).
                    DATA(t282) = strlen( t274 ).
                    IF t278 < 0.
                      t278 = t278 + t282.
                      IF t278 < 0.
                        t278 = 0.
                      ENDIF.
                    ENDIF.
                    IF t278 > t282 OR t279 <= 0.
                      CLEAR t276.
                    ELSE.
                      IF t279 > t282 - t278.
                        t279 = t282 - t278.
                      ENDIF.
                      t276 = t274+t278(t279).
                    ENDIF.
                    t273 = t276.
                    t259 = t273.
                  ENDIF.
                  t258 = t259.
                  t255 = t258.
                  DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t284->has = abap_true.
                  t284->value = t255.
                  t252 = t284.
                  DATA t286 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t286.
                  DATA(t287) = VALUE abap_bool( ).
                  DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t288 = t252.
                  DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t290.
                  DATA(t292) = VALUE abap_bool( ).
                  IF t288 IS INITIAL.
                    t292 = abap_true.
                  ELSEIF t288->has = abap_false.
                    t292 = abap_true.
                  ENDIF.
                  t287 = t292.
                  IF t287 = abap_true.
                    CLEAR t286.
                  ELSE.
                    DATA t296 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t296.
                    DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t298.
                    DATA t301 TYPE string.
                    t301 = t252->value.
                    DATA(t303) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t303->has = abap_true.
                    t303->value = t301.
                    t298 = t303.
                    DATA t305 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t305.
                    DATA(t306) = VALUE abap_bool( ).
                    DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t307 = t298.
                    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t309.
                    DATA(t311) = VALUE abap_bool( ).
                    IF t307 IS INITIAL.
                      t311 = abap_true.
                    ELSEIF t307->has = abap_false.
                      t311 = abap_true.
                    ENDIF.
                    t306 = t311.
                    IF t306 = abap_true.
                      CLEAR t305.
                    ELSE.
                      DATA t315 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t315.
                      DATA t317 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA t318 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      t318 = t249->current.
                      t317 = t318.
                      DATA t320 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t320.
                      DATA(t321) = xsdbool( t317 IS INITIAL ).
                      IF t321 = abap_true.
                        CLEAR t320.
                      ELSE.
                        DATA t324 TYPE REF TO zif_lnt_class_definition.
                        DATA t325 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        t325 = t317.
                        DATA t327 TYPE string.
                        t327 = t298->value.
                        t324 = t325->find_class_definition( i_name = t327 ).
                        t320 = t324.
                      ENDIF.
                      t315 = t320.
                      DATA t329 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t329.
                      DATA t330 TYPE abap_bool.
                      t330 = xsdbool( t315 IS BOUND ).
                      IF t330 = abap_true.
                        t329 = t315.
                      ELSE.
                        DATA t338 TYPE REF TO zcl_lnt_class.
                        CLEAR t338.
                        DATA t339 TYPE REF TO zcl_lnt_class.
                        CLEAR t339.
                        DATA t340 TYPE REF TO zif_lnt_object.
                        CLEAR t340.
                        DATA t341 TYPE REF TO zif_lnt_registry.
                        t341 = t249->reg.
                        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t343.
                        DATA(t345) = |CLAS|.
                        DATA(t346) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t346->has = abap_true.
                        t346->value = t345.
                        t343 = t346.
                        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t348.
                        DATA t350 TYPE string.
                        t350 = t298->value.
                        DATA(t352) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t352->has = abap_true.
                        t352->value = t350.
                        t348 = t352.
                        t340 = t341->get_object( i_type_9913 = t343 i_name = t348 ).
                        DATA t354 TYPE REF TO object.
                        t354 = t340.
                        t339 ?= t354.
                        t338 = t339.
                        DATA t355 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t355.
                        DATA t356 TYPE abap_bool.
                        t356 = xsdbool( t338 IS BOUND ).
                        IF t356 = abap_true.
                          DATA t358 TYPE REF TO zif_lnt_class_definition.
                          DATA t359 TYPE REF TO zcl_lnt_class.
                          t359 = t338.
                          t358 = t359->gt_dfn_ins_src_obj_cls_ts_clss( ).
                          t355 = t358.
                        ELSE.
                          CLEAR t355.
                        ENDIF.
                        t329 = t355.
                      ENDIF.
                      t305 = t329.
                    ENDIF.
                    t296 = t305.
                    DATA t362 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t362.
                    DATA t363 TYPE abap_bool.
                    t363 = xsdbool( t296 IS BOUND ).
                    IF t363 = abap_true.
                      DATA t365 TYPE REF TO zif_lnt_interface_definition.
                      DATA t366 TYPE REF TO zif_lnt_class_definition.
                      t366 = t296.
                      t365 ?= t366.
                      t362 = t365.
                    ELSE.
                      DATA t369 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t369.
                      DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t371.
                      DATA t374 TYPE string.
                      t374 = t252->value.
                      DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t376->has = abap_true.
                      t376->value = t374.
                      t371 = t376.
                      DATA t378 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t378.
                      DATA(t379) = VALUE abap_bool( ).
                      DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t380 = t371.
                      DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t382.
                      DATA(t384) = VALUE abap_bool( ).
                      IF t380 IS INITIAL.
                        t384 = abap_true.
                      ELSEIF t380->has = abap_false.
                        t384 = abap_true.
                      ENDIF.
                      t379 = t384.
                      IF t379 = abap_true.
                        CLEAR t378.
                      ELSE.
                        DATA t388 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t388.
                        DATA t390 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA t391 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        t391 = t249->current.
                        t390 = t391.
                        DATA t393 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t393.
                        DATA(t394) = xsdbool( t390 IS INITIAL ).
                        IF t394 = abap_true.
                          CLEAR t393.
                        ELSE.
                          DATA t397 TYPE REF TO zif_lnt_interface_definition.
                          DATA t398 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                          t398 = t390.
                          DATA t400 TYPE string.
                          t400 = t371->value.
                          t397 = t398->find_interface_definition( i_name = t400 ).
                          t393 = t397.
                        ENDIF.
                        t388 = t393.
                        DATA t402 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t402.
                        DATA t403 TYPE abap_bool.
                        t403 = xsdbool( t388 IS BOUND ).
                        IF t403 = abap_true.
                          t402 = t388.
                        ELSE.
                          DATA t411 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t411.
                          DATA t412 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t412.
                          DATA t413 TYPE REF TO zif_lnt_object.
                          CLEAR t413.
                          DATA t414 TYPE REF TO zif_lnt_registry.
                          t414 = t249->reg.
                          DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t416.
                          DATA(t418) = |INTF|.
                          DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t419->has = abap_true.
                          t419->value = t418.
                          t416 = t419.
                          DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t421.
                          DATA t423 TYPE string.
                          t423 = t371->value.
                          DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t425->has = abap_true.
                          t425->value = t423.
                          t421 = t425.
                          t413 = t414->get_object( i_type_9913 = t416 i_name = t421 ).
                          DATA t427 TYPE REF TO object.
                          t427 = t413.
                          t412 ?= t427.
                          t411 = t412.
                          DATA t428 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t428.
                          DATA t429 TYPE abap_bool.
                          t429 = xsdbool( t411 IS BOUND ).
                          IF t429 = abap_true.
                            DATA t435 TYPE REF TO zif_lnt_interface_definition.
                            t435 = t411->def.
                            t428 = t435.
                          ELSE.
                            CLEAR t428.
                          ENDIF.
                          t402 = t428.
                        ENDIF.
                        t378 = t402.
                      ENDIF.
                      t369 = t378.
                      DATA t438 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t438.
                      DATA t439 TYPE abap_bool.
                      t439 = xsdbool( t369 IS BOUND ).
                      IF t439 = abap_true.
                        t438 = t369.
                      ELSE.
                        CLEAR t438.
                      ENDIF.
                      t362 = t438.
                    ENDIF.
                    t286 = t362.
                  ENDIF.
                  t247 = t286.
                  DATA(t447) = VALUE abap_bool( ).
                  DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t450.
                  t447 = xsdbool( t247 IS INITIAL ).
                  IF t447 = abap_true.
                    DATA(t454) = VALUE string( ).
                    DATA(t455) = VALUE string( ).
                    DATA(t456) = VALUE string( ).
                    DATA(t459) = VALUE string( ).
                    DATA t460 TYPE string.
                    DATA t463 TYPE REF TO zcl_lnt_abstract_token.
                    t463 = t240->token.
                    DATA t465 TYPE string.
                    t465 = t463->str.
                    t460 = t465.
                    DATA(t467) = VALUE abap_bool( ).
                    DATA(t468) = VALUE string( ).
                    DATA(t469) = t460.
                    DATA(t470) = 0.
                    DATA(t471) = 1.
                    DATA(t472) = strlen( t469 ).
                    IF t470 < 0.
                      t470 = t470 + t472.
                      IF t470 < 0.
                        t470 = 0.
                      ENDIF.
                    ENDIF.
                    IF t470 > t472 OR t471 <= 0.
                      CLEAR t468.
                    ELSE.
                      IF t471 > t472 - t470.
                        t471 = t472 - t470.
                      ENDIF.
                      t468 = t469+t470(t471).
                    ENDIF.
                    DATA(t473) = |!|.
                    t467 = xsdbool( t468 = t473 ).
                    IF t467 = abap_true.
                      DATA(t474) = VALUE string( ).
                      DATA t475 TYPE string.
                      t475 = t460.
                      DATA(t477) = VALUE string( ).
                      DATA(t479) = 1.
                      DATA t480 TYPE i.
                      t480 = strlen( t475 ).
                      DATA(t483) = strlen( t475 ).
                      IF t479 < 0.
                        t479 = t479 + t483.
                        IF t479 < 0.
                          t479 = 0.
                        ENDIF.
                      ENDIF.
                      IF t479 > t483 OR t480 <= 0.
                        CLEAR t477.
                      ELSE.
                        IF t480 > t483 - t479.
                          t480 = t483 - t479.
                        ENDIF.
                        t477 = t475+t479(t480).
                      ENDIF.
                      t474 = t477.
                      t460 = t474.
                    ENDIF.
                    t459 = t460.
                    t456 = t459.
                    DATA(t485) = | not found in scope|.
                    DATA(t486) = strlen( t456 ).
                    t455 = |{ t456 }{ t485 }|.
                    t454 = t455.
                    DATA t487 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t487 = t3->issues.
                    DATA t489 TYPE REF TO zcl_lnt_issue.
                    DATA t491 TYPE REF TO zcl_lnt_abstract_token.
                    t491 = t37->get_first_token( ).
                    DATA t494 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t494.
                    t489 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t491 i_message_26cb = t454 i_fix = t494 ).
                    t487->load( ).
                    APPEND t489 TO t487->items.
                    t487->save( ).
                    DATA t495 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t495.
                    DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t496.
                    DATA(t498) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t499) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t499->has = abap_true.
                    t499->value = t498.
                    t496 = t499.
                    DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t501.
                    t495 = zcl_lnt_void_type=>get_db65( i_voided = t496 i_qualified_name = t501 ).
                    result = t495.
                    RETURN.
                  ENDIF.
                  DATA t503 TYPE REF TO zcl_lnt_object_oriented.
                  DATA t504 TYPE REF TO zcl_lnt_current_scope.
                  t504 = t3->scope.
                  t503 = NEW zcl_lnt_object_oriented( i_scope = t504 ).
                  DATA t506 TYPE REF TO zcl_lnt_class_attribute.
                  CLEAR t506.
                  DATA t507 TYPE REF TO zcl_lnt_class_attribute.
                  CLEAR t507.
                  DATA t509 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t509.
                  t509 = t247.
                  DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t514.
                  DATA(t517) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t517->has = abap_true.
                  t517->value = t174.
                  t514 = t517.
                  t507 = t503->search_attribute_name( i_def = t509 i_name = t514 ).
                  t506 = t507.
                  DATA t520 TYPE REF TO zcl_lnt_class_attribute.
                  t520 = t506.
                  DATA t522 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t522.
                  DATA(t523) = xsdbool( t520 IS INITIAL ).
                  IF t523 = abap_true.
                    CLEAR t522.
                  ELSE.
                    DATA t527 TYPE REF TO zcl_lnt_typed_identifier.
                    t527 = t520.
                    DATA t530 TYPE REF TO zcl_lnt_abstract_type.
                    t530 = t527->type_cba0.
                    t522 = t530.
                  ENDIF.
                  t1 = t522.
                  DATA(t532) = VALUE abap_bool( ).
                  DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t535.
                  t532 = xsdbool( t1 IS INITIAL ).
                  IF t532 = abap_true.
                    DATA t540 TYPE string.
                    DATA t541 TYPE string.
                    DATA(t542) = |Attribute "|.
                    DATA(t544) = strlen( t542 ).
                    t541 = |{ t542 }{ t174 }|.
                    DATA(t545) = |" not found|.
                    DATA(t546) = strlen( t541 ).
                    t540 = |{ t541 }{ t545 }|.
                    DATA t547 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t547 = t3->issues.
                    DATA t549 TYPE REF TO zcl_lnt_issue.
                    DATA t551 TYPE REF TO zcl_lnt_abstract_token.
                    t551 = t37->get_first_token( ).
                    DATA t554 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t554.
                    t549 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t551 i_message_26cb = t540 i_fix = t554 ).
                    t547->load( ).
                    APPEND t549 TO t547->items.
                    t547->save( ).
                    DATA t555 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t555.
                    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t556.
                    DATA(t558) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t559) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t559->has = abap_true.
                    t559->value = t558.
                    t556 = t559.
                    DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t561.
                    t555 = zcl_lnt_void_type=>get_db65( i_voided = t556 i_qualified_name = t561 ).
                    result = t555.
                    RETURN.
                  ELSE.
                    DATA t563 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t563.
                    DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t564.
                    DATA(t567) = VALUE string( ).
                    DATA(t570) = VALUE string( ).
                    DATA t571 TYPE string.
                    DATA t574 TYPE REF TO zcl_lnt_abstract_token.
                    t574 = t240->token.
                    DATA t576 TYPE string.
                    t576 = t574->str.
                    t571 = t576.
                    DATA(t578) = VALUE abap_bool( ).
                    DATA(t579) = VALUE string( ).
                    DATA(t580) = t571.
                    DATA(t581) = 0.
                    DATA(t582) = 1.
                    DATA(t583) = strlen( t580 ).
                    IF t581 < 0.
                      t581 = t581 + t583.
                      IF t581 < 0.
                        t581 = 0.
                      ENDIF.
                    ENDIF.
                    IF t581 > t583 OR t582 <= 0.
                      CLEAR t579.
                    ELSE.
                      IF t582 > t583 - t581.
                        t582 = t583 - t581.
                      ENDIF.
                      t579 = t580+t581(t582).
                    ENDIF.
                    DATA(t584) = |!|.
                    t578 = xsdbool( t579 = t584 ).
                    IF t578 = abap_true.
                      DATA(t585) = VALUE string( ).
                      DATA t586 TYPE string.
                      t586 = t571.
                      DATA(t588) = VALUE string( ).
                      DATA(t590) = 1.
                      DATA t591 TYPE i.
                      t591 = strlen( t586 ).
                      DATA(t594) = strlen( t586 ).
                      IF t590 < 0.
                        t590 = t590 + t594.
                        IF t590 < 0.
                          t590 = 0.
                        ENDIF.
                      ENDIF.
                      IF t590 > t594 OR t591 <= 0.
                        CLEAR t588.
                      ELSE.
                        IF t591 > t594 - t590.
                          t591 = t594 - t590.
                        ENDIF.
                        t588 = t586+t590(t591).
                      ENDIF.
                      t585 = t588.
                      t571 = t585.
                    ENDIF.
                    t570 = t571.
                    t567 = t570.
                    DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t596->has = abap_true.
                    t596->value = t567.
                    t564 = t596.
                    DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t598.
                    DATA(t601) = VALUE string( ).
                    DATA t602 TYPE abap_bool.
                    t602 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                    IF t602 = abap_true.
                      t601 = |CLAS|.
                    ELSE.
                      t601 = |INTF|.
                    ENDIF.
                    DATA(t606) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t606->has = abap_true.
                    t606->value = t601.
                    t598 = t606.
                    DATA t608 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t608.
                    t563 = NEW zcl_lnt_ireference_extras( i_oo_name = t564 i_oo_type = t598 i_found_qualified = t608 ).
                    CREATE OBJECT t563->zlnt_view_ownkeys_b0e8086400eb.
                    t563->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t610.
                    t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t610 ).
                    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t611.
                    IF t563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t611 ).
                    ENDIF.
                    CREATE OBJECT t563->zlnt_json_ownkeys_70e5fd461788.
                    t563->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t612) = |ooName|.
                    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t613.
                    t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t612 p1 = t613 ).
                    DATA(t614) = |ooType|.
                    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t615.
                    IF t563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t614 p1 = t615 ).
                    ENDIF.
                    DATA t616 TYPE REF TO zcl_lnt_current_scope.
                    t616 = t3->scope.
                    DATA t618 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t618.
                    DATA t620 TYPE REF TO zcl_lnt_abstract_token.
                    t620 = t37->get_first_token( ).
                    t618 = t620.
                    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t624.
                    DATA(t625) = |Write To|.
                    CLEAR t624.
                    CREATE OBJECT t624.
                    t624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                    t624->sval = t625.
                    DATA t626 TYPE string.
                    t626 = t3->filename.
                    DATA t628 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t628.
                    t628 = t563.
                    t616->add_reference( i_usage = t618 i_referencing = t506 i_type_9913 = t624 i_filename = t626 i_extra = t628 ).
                  ENDIF.
                ELSE.
                  DATA(t632) = VALUE string( ).
                  DATA(t633) = VALUE string( ).
                  DATA(t634) = |ComponentChain, not a structure, |.
                  DATA(t635) = VALUE string( ).
                  DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t636.
                  DATA t638 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t638.
                  DATA t640 TYPE REF TO zcl_lnt_abstract_type.
                  t640 = t1.
                  DATA t643 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t643.
                  DATA(t644) = xsdbool( t640 IS INITIAL ).
                  IF t644 = abap_true.
                    CLEAR t643.
                  ELSE.
                    DATA t647 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    t647 = t640->zlnt_builtin_clas_3f891b097658( ).
                    t643 = t647.
                  ENDIF.
                  t638 = t643.
                  DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t649.
                  DATA(t650) = xsdbool( t638 IS INITIAL ).
                  IF t650 = abap_true.
                    CLEAR t649.
                  ELSE.
                    DATA t653 TYPE string.
                    DATA t654 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                    t654 = t638.
                    t653 = t654->name.
                    DATA(t656) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t656->has = abap_true.
                    t656->value = t653.
                    t649 = t656.
                  ENDIF.
                  t636 = t649.
                  DATA(t657) = VALUE string( ).
                  DATA(t658) = VALUE abap_bool( ).
                  IF t636 IS INITIAL.
                    t658 = abap_true.
                  ELSEIF t636->has = abap_false.
                    t658 = abap_true.
                  ENDIF.
                  IF t658 = abap_true.
                    t657 = |undefined|.
                  ELSE.
                    DATA t661 TYPE string.
                    t661 = t636->value.
                    t657 = t661.
                  ENDIF.
                  t635 = t657.
                  DATA(t663) = strlen( t634 ).
                  t633 = |{ t634 }{ t635 }|.
                  t632 = t633.
                  DATA t664 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t664 = t3->issues.
                  DATA t666 TYPE REF TO zcl_lnt_issue.
                  DATA t668 TYPE REF TO zcl_lnt_abstract_token.
                  t668 = t37->get_first_token( ).
                  DATA t671 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t671.
                  t666 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t668 i_message_26cb = t632 i_fix = t671 ).
                  t664->load( ).
                  APPEND t666 TO t664->items.
                  t664->save( ).
                  DATA t672 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t672.
                  DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t673.
                  DATA(t675) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t676) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t676->has = abap_true.
                  t676->value = t675.
                  t673 = t676.
                  DATA t678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t678.
                  t672 = zcl_lnt_void_type=>get_db65( i_voided = t673 i_qualified_name = t678 ).
                  result = t672.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t679 TYPE i.
      DATA(t681) = 1.
      t679 = t19 + t681.
      t19 = t679.
    ENDDO.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d787_542025a81743.
  ENDMETHOD.
ENDCLASS.
