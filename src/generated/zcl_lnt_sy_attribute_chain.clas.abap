* TS: src/abap/5_syntax/expressions/attribute_chain.ts:18:1 AttributeChain
CLASS zcl_lnt_sy_attribute_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_input_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING
    VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_attribute_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_input_context.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_type_9913.
    DATA(t5) = VALUE abap_bool( ).
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_void_type.
      t7 ?= t1.
      result = t7.
      RETURN.
    ELSE.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      t10 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ).
      t9 = xsdbool( t10 = abap_false ).
      IF t9 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t12 = t3->issues.
        DATA t14 TYPE REF TO zcl_lnt_issue.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        t16 = t2->get_first_token( ).
        DATA(t18) = |Not an object reference(AttributeChain)|.
        DATA t19 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t14 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t16 i_message_26cb = t18 i_fix = t19 ).
        t12->load( ).
        APPEND t14 TO t12->items.
        t12->save( ).
        DATA t20 TYPE REF TO zcl_lnt_void_type.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t23) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t24->has = abap_true.
        t24->value = t23.
        t21 = t24.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t20 = zcl_lnt_void_type=>get_db65( i_voided = t21 i_qualified_name = t26 ).
        result = t20.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zif_lnt_node.
    DATA t28 TYPE REF TO zif_lnt_node.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = t2->get_children( ).
    DATA t31 TYPE REF TO object.
    t29->load( ).
    READ TABLE t29->items INDEX 1 INTO t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t32 ?= t31.
      DATA t33 TYPE REF TO object.
      t33 = t32->as_ref( ).
      t28 ?= t33.
    ELSE.
      t28 ?= t31.
    ENDIF.
    t27 = t28.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO object.
    t36 = t27->get_db65( ).
    t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_attribute_name ).
    t34 = xsdbool( t35 = abap_false ).
    IF t34 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t38 = t3->issues.
      DATA t40 TYPE REF TO zcl_lnt_issue.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      t42 = t2->get_first_token( ).
      DATA(t44) = |AttributeChain, unexpected first child|.
      DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t40 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t42 i_message_26cb = t44 i_fix = t45 ).
      t38->load( ).
      APPEND t40 TO t38->items.
      t38->save( ).
      DATA t46 TYPE REF TO zcl_lnt_void_type.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t49) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t47 = t50.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t46 = zcl_lnt_void_type=>get_db65( i_voided = t47 i_qualified_name = t52 ).
      result = t46.
      RETURN.
    ENDIF.
    DATA t53 TYPE REF TO zif_lnt_interface_definition.
    DATA t55 TYPE REF TO zcl_lnt_current_scope.
    DATA t56 TYPE REF TO zcl_lnt_current_scope.
    t56 = t3->scope.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t61) = VALUE string( ).
    DATA t63 TYPE REF TO zcl_lnt_object_reference_type.
    t63 ?= t1.
    DATA(t65) = VALUE string( ).
    DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
    t67 = t63->identifier.
    DATA(t69) = VALUE string( ).
    DATA(t70) = VALUE string( ).
    DATA(t71) = VALUE string( ).
    DATA t73 TYPE REF TO zcl_lnt_abstract_token.
    t73 = t67->token.
    DATA(t75) = VALUE string( ).
    t75 = t73->str.
    t71 = t75.
    t70 = t71.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = VALUE string( ).
    DATA(t79) = t70.
    DATA(t80) = 0.
    DATA(t81) = 1.
    DATA(t82) = strlen( t79 ).
    IF t80 < 0.
      t80 = t80 + t82.
      IF t80 < 0.
        t80 = 0.
      ENDIF.
    ENDIF.
    IF t80 > t82 OR t81 <= 0.
      CLEAR t78.
    ELSE.
      IF t81 > t82 - t80.
        t81 = t82 - t80.
      ENDIF.
      t78 = t79+t80(t81).
    ENDIF.
    DATA(t83) = |!|.
    t77 = xsdbool( t78 = t83 ).
    IF t77 = abap_true.
      DATA(t84) = VALUE string( ).
      DATA(t85) = VALUE string( ).
      t85 = t70.
      DATA(t87) = VALUE string( ).
      DATA(t89) = 1.
      DATA(t90) = VALUE i( ).
      t90 = strlen( t85 ).
      DATA(t93) = strlen( t85 ).
      IF t89 < 0.
        t89 = t89 + t93.
        IF t89 < 0.
          t89 = 0.
        ENDIF.
      ENDIF.
      IF t89 > t93 OR t90 <= 0.
        CLEAR t87.
      ELSE.
        IF t90 > t93 - t89.
          t90 = t93 - t89.
        ENDIF.
        t87 = t85+t89(t90).
      ENDIF.
      t84 = t87.
      t70 = t84.
    ENDIF.
    t69 = t70.
    t65 = t69.
    t61 = t65.
    DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t95->has = abap_true.
    t95->value = t61.
    t58 = t95.
    DATA t97 TYPE REF TO zif_lnt_interface_definition.
    DATA(t98) = VALUE abap_bool( ).
    DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t99 = t58.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = VALUE abap_bool( ).
    IF t99 IS INITIAL.
      t103 = abap_true.
    ELSEIF t99->has = abap_false.
      t103 = abap_true.
    ENDIF.
    t98 = t103.
    IF t98 = abap_true.
    ELSE.
      DATA t107 TYPE REF TO zif_lnt_class_definition.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t112) = VALUE string( ).
      t112 = t58->value.
      DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t114->has = abap_true.
      t114->value = t112.
      t109 = t114.
      DATA t116 TYPE REF TO zif_lnt_class_definition.
      DATA(t117) = VALUE abap_bool( ).
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t118 = t109.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t122) = VALUE abap_bool( ).
      IF t118 IS INITIAL.
        t122 = abap_true.
      ELSEIF t118->has = abap_false.
        t122 = abap_true.
      ENDIF.
      t117 = t122.
      IF t117 = abap_true.
      ELSE.
        DATA t126 TYPE REF TO zif_lnt_class_definition.
        DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t129 = t55->current.
        t128 = t129.
        DATA t131 TYPE REF TO zif_lnt_class_definition.
        DATA(t132) = xsdbool( t128 IS INITIAL ).
        IF t132 = abap_true.
        ELSE.
          DATA t135 TYPE REF TO zif_lnt_class_definition.
          DATA t136 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t136 = t128.
          DATA(t138) = VALUE string( ).
          t138 = t109->value.
          t135 = t136->find_class_definition( i_name = t138 ).
          t131 = t135.
        ENDIF.
        t126 = t131.
        DATA t140 TYPE REF TO zif_lnt_class_definition.
        DATA(t141) = VALUE abap_bool( ).
        t141 = xsdbool( t126 IS BOUND ).
        IF t141 = abap_true.
          t140 = t126.
        ELSE.
          DATA t149 TYPE REF TO zcl_lnt_class.
          DATA t150 TYPE REF TO zcl_lnt_class.
          DATA t151 TYPE REF TO zif_lnt_object.
          DATA t152 TYPE REF TO zif_lnt_registry.
          t152 = t55->reg.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t156) = |CLAS|.
          DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t157->has = abap_true.
          t157->value = t156.
          t154 = t157.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t161) = VALUE string( ).
          t161 = t109->value.
          DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t163->has = abap_true.
          t163->value = t161.
          t159 = t163.
          t151 = t152->get_object( i_type_9913 = t154 i_name = t159 ).
          DATA t165 TYPE REF TO object.
          t165 = t151.
          t150 ?= t165.
          t149 = t150.
          DATA t166 TYPE REF TO zif_lnt_class_definition.
          DATA(t167) = VALUE abap_bool( ).
          t167 = xsdbool( t149 IS BOUND ).
          IF t167 = abap_true.
            DATA t169 TYPE REF TO zif_lnt_class_definition.
            DATA t170 TYPE REF TO zcl_lnt_class.
            t170 = t149.
            t169 = t170->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t166 = t169.
          ELSE.
            CLEAR t166.
          ENDIF.
          t140 = t166.
        ENDIF.
        t116 = t140.
      ENDIF.
      t107 = t116.
      DATA t173 TYPE REF TO zif_lnt_interface_definition.
      DATA(t174) = VALUE abap_bool( ).
      t174 = xsdbool( t107 IS BOUND ).
      IF t174 = abap_true.
        DATA t176 TYPE REF TO zif_lnt_interface_definition.
        DATA t177 TYPE REF TO zif_lnt_class_definition.
        t177 = t107.
        t176 ?= t177.
        t173 = t176.
      ELSE.
        DATA t180 TYPE REF TO zif_lnt_interface_definition.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t185) = VALUE string( ).
        t185 = t58->value.
        DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t187->has = abap_true.
        t187->value = t185.
        t182 = t187.
        DATA t189 TYPE REF TO zif_lnt_interface_definition.
        DATA(t190) = VALUE abap_bool( ).
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t191 = t182.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t195) = VALUE abap_bool( ).
        IF t191 IS INITIAL.
          t195 = abap_true.
        ELSEIF t191->has = abap_false.
          t195 = abap_true.
        ENDIF.
        t190 = t195.
        IF t190 = abap_true.
        ELSE.
          DATA t199 TYPE REF TO zif_lnt_interface_definition.
          DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t202 = t55->current.
          t201 = t202.
          DATA t204 TYPE REF TO zif_lnt_interface_definition.
          DATA(t205) = xsdbool( t201 IS INITIAL ).
          IF t205 = abap_true.
          ELSE.
            DATA t208 TYPE REF TO zif_lnt_interface_definition.
            DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t209 = t201.
            DATA(t211) = VALUE string( ).
            t211 = t182->value.
            t208 = t209->find_interface_definition( i_name = t211 ).
            t204 = t208.
          ENDIF.
          t199 = t204.
          DATA t213 TYPE REF TO zif_lnt_interface_definition.
          DATA(t214) = VALUE abap_bool( ).
          t214 = xsdbool( t199 IS BOUND ).
          IF t214 = abap_true.
            t213 = t199.
          ELSE.
            DATA t222 TYPE REF TO zcl_lnt_ob_interface.
            DATA t223 TYPE REF TO zcl_lnt_ob_interface.
            DATA t224 TYPE REF TO zif_lnt_object.
            DATA t225 TYPE REF TO zif_lnt_registry.
            t225 = t55->reg.
            DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t229) = |INTF|.
            DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t230->has = abap_true.
            t230->value = t229.
            t227 = t230.
            DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t234) = VALUE string( ).
            t234 = t182->value.
            DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t236->has = abap_true.
            t236->value = t234.
            t232 = t236.
            t224 = t225->get_object( i_type_9913 = t227 i_name = t232 ).
            DATA t238 TYPE REF TO object.
            t238 = t224.
            t223 ?= t238.
            t222 = t223.
            DATA t239 TYPE REF TO zif_lnt_interface_definition.
            DATA(t240) = VALUE abap_bool( ).
            t240 = xsdbool( t222 IS BOUND ).
            IF t240 = abap_true.
              DATA t246 TYPE REF TO zif_lnt_interface_definition.
              t246 = t222->def.
              t239 = t246.
            ELSE.
              CLEAR t239.
            ENDIF.
            t213 = t239.
          ENDIF.
          t189 = t213.
        ENDIF.
        t180 = t189.
        DATA t249 TYPE REF TO zif_lnt_interface_definition.
        DATA(t250) = VALUE abap_bool( ).
        t250 = xsdbool( t180 IS BOUND ).
        IF t250 = abap_true.
          t249 = t180.
        ELSE.
          CLEAR t249.
        ENDIF.
        t173 = t249.
      ENDIF.
      t97 = t173.
    ENDIF.
    t53 = t97.
    DATA(t258) = VALUE abap_bool( ).
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t258 = xsdbool( t53 IS INITIAL ).
    IF t258 = abap_true.
      DATA(t265) = VALUE string( ).
      DATA(t266) = VALUE string( ).
      DATA(t267) = VALUE string( ).
      DATA(t268) = |Definition for "|.
      DATA(t269) = VALUE string( ).
      DATA t271 TYPE REF TO zcl_lnt_object_reference_type.
      t271 ?= t1.
      DATA(t273) = VALUE string( ).
      DATA t275 TYPE REF TO zcl_lnt_fi_identifier.
      t275 = t271->identifier.
      DATA(t277) = VALUE string( ).
      DATA(t278) = VALUE string( ).
      DATA(t279) = VALUE string( ).
      DATA t281 TYPE REF TO zcl_lnt_abstract_token.
      t281 = t275->token.
      DATA(t283) = VALUE string( ).
      t283 = t281->str.
      t279 = t283.
      t278 = t279.
      DATA(t285) = VALUE abap_bool( ).
      DATA(t286) = VALUE string( ).
      DATA(t287) = t278.
      DATA(t288) = 0.
      DATA(t289) = 1.
      DATA(t290) = strlen( t287 ).
      IF t288 < 0.
        t288 = t288 + t290.
        IF t288 < 0.
          t288 = 0.
        ENDIF.
      ENDIF.
      IF t288 > t290 OR t289 <= 0.
        CLEAR t286.
      ELSE.
        IF t289 > t290 - t288.
          t289 = t290 - t288.
        ENDIF.
        t286 = t287+t288(t289).
      ENDIF.
      DATA(t291) = |!|.
      t285 = xsdbool( t286 = t291 ).
      IF t285 = abap_true.
        DATA(t292) = VALUE string( ).
        DATA(t293) = VALUE string( ).
        t293 = t278.
        DATA(t295) = VALUE string( ).
        DATA(t297) = 1.
        DATA(t298) = VALUE i( ).
        t298 = strlen( t293 ).
        DATA(t301) = strlen( t293 ).
        IF t297 < 0.
          t297 = t297 + t301.
          IF t297 < 0.
            t297 = 0.
          ENDIF.
        ENDIF.
        IF t297 > t301 OR t298 <= 0.
          CLEAR t295.
        ELSE.
          IF t298 > t301 - t297.
            t298 = t301 - t297.
          ENDIF.
          t295 = t293+t297(t298).
        ENDIF.
        t292 = t295.
        t278 = t292.
      ENDIF.
      t277 = t278.
      t273 = t277.
      t269 = t273.
      DATA(t303) = strlen( t268 ).
      t267 = |{ t268 }{ t269 }|.
      DATA(t304) = |" not found in scope(AttributeChain)|.
      DATA(t305) = strlen( t267 ).
      t266 = |{ t267 }{ t304 }|.
      t265 = t266.
      DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t306 = t3->issues.
      DATA t308 TYPE REF TO zcl_lnt_issue.
      DATA t310 TYPE REF TO zcl_lnt_abstract_token.
      t310 = t2->get_first_token( ).
      DATA t313 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t308 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t310 i_message_26cb = t265 i_fix = t313 ).
      t306->load( ).
      APPEND t308 TO t306->items.
      t306->save( ).
      DATA t314 TYPE REF TO zcl_lnt_void_type.
      DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t317) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t318) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t318->has = abap_true.
      t318->value = t317.
      t315 = t318.
      DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t314 = zcl_lnt_void_type=>get_db65( i_voided = t315 i_qualified_name = t320 ).
      result = t314.
      RETURN.
    ENDIF.
    DATA t321 TYPE REF TO zcl_lnt_abstract_token.
    DATA t322 TYPE REF TO zcl_lnt_abstract_token.
    t322 = t27->get_first_token( ).
    t321 = t322.
    DATA(t324) = VALUE string( ).
    DATA(t325) = VALUE string( ).
    DATA(t328) = VALUE string( ).
    t328 = t321->str.
    t325 = t328.
    t324 = t325.
    DATA t330 TYPE REF TO zcl_lnt_object_oriented.
    DATA t331 TYPE REF TO zcl_lnt_object_oriented.
    DATA t332 TYPE REF TO zcl_lnt_current_scope.
    t332 = t3->scope.
    t331 = NEW zcl_lnt_object_oriented( i_scope = t332 ).
    t330 = t331.
    DATA t334 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t335 TYPE REF TO zcl_lnt_class_attribute.
    DATA t337 TYPE REF TO zif_lnt_interface_definition.
    t337 = t53.
    DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t345) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t345->has = abap_true.
    t345->value = t324.
    t342 = t345.
    t335 = t330->search_attribute_name( i_def = t337 i_name = t342 ).
    t334 = t335.
    DATA(t347) = VALUE abap_bool( ).
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t347 = xsdbool( t334 IS INITIAL ).
    IF t347 = abap_true.
      DATA t354 TYPE REF TO zcl_lnt_class_constant.
      DATA t356 TYPE REF TO zif_lnt_interface_definition.
      t356 = t53.
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t364->has = abap_true.
      t364->value = t324.
      t361 = t364.
      t354 = t330->search_constant_name( i_def = t356 i_name = t361 ).
      t334 = t354.
    ENDIF.
    DATA(t366) = VALUE abap_bool( ).
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t366 = xsdbool( t334 IS INITIAL ).
    IF t366 = abap_true.
      DATA(t373) = VALUE string( ).
      DATA(t374) = VALUE string( ).
      DATA(t375) = VALUE string( ).
      DATA(t376) = VALUE string( ).
      DATA(t377) = VALUE string( ).
      DATA(t378) = |Attribute or constant "|.
      DATA(t380) = strlen( t378 ).
      t377 = |{ t378 }{ t324 }|.
      DATA(t381) = |" not found in "|.
      DATA(t382) = strlen( t377 ).
      t376 = |{ t377 }{ t381 }|.
      DATA(t383) = VALUE string( ).
      DATA t384 TYPE REF TO zif_lnt_interface_definition.
      t384 = t53.
      t383 = t384->get_name( ).
      DATA(t386) = strlen( t376 ).
      t375 = |{ t376 }{ t383 }|.
      DATA(t387) = |"|.
      DATA(t388) = strlen( t375 ).
      t374 = |{ t375 }{ t387 }|.
      t373 = t374.
      DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t389 = t3->issues.
      DATA t391 TYPE REF TO zcl_lnt_issue.
      DATA t395 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t391 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t321 i_message_26cb = t373 i_fix = t395 ).
      t389->load( ).
      APPEND t391 TO t389->items.
      t389->save( ).
      DATA t396 TYPE REF TO zcl_lnt_void_type.
      DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t399) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t400) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t400->has = abap_true.
      t400->value = t399.
      t397 = t400.
      DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t396 = zcl_lnt_void_type=>get_db65( i_voided = t397 i_qualified_name = t402 ).
      result = t396.
      RETURN.
    ENDIF.
    DATA(t404) = VALUE string( ).
    t4->dense( ).
    DATA(t405) = VALUE i( ).
    DO.
      t4->load( ).
      IF t405 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t404.
      READ TABLE t4->items INDEX t405 + 1 INTO t404.
      IF t4->has( t405 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t405 = t405 + 1.
      DATA t406 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t406.
      t406 = t3->scope.
      DATA t408 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t408.
      t408 = t321.
      DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t412.
      t412 = t334.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      CLEAR t414.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t414->sval = t404.
      DATA(t416) = VALUE string( ).
      t416 = t3->filename.
      DATA t418 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t418.
      t406->add_reference( i_usage = t408 i_referencing = t412 i_type_9913 = t414 i_filename = t416 i_extra = t418 ).
    ENDDO.
    DATA t419 TYPE REF TO zcl_lnt_abstract_type.
    DATA t426 TYPE REF TO zcl_lnt_abstract_type.
    t426 = t334->type_cba0.
    t419 = t426.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t430 = t2->get_children( ).
    t429 = t430.
    DATA(t432) = VALUE i( ).
    t432 = 1.
    DO.
      DATA(t434) = VALUE abap_bool( ).
      DATA(t436) = VALUE i( ).
      t429->load( ).
      t436 = lines( t429->items ).
      t434 = xsdbool( t432 < t436 ).
      IF t434 = abap_false.
        EXIT.
      ENDIF.
      DATA t438 TYPE REF TO zif_lnt_node.
      CLEAR t438.
      DATA t439 TYPE REF TO zif_lnt_node.
      CLEAR t439.
      DATA(t441) = t432.
      t441 = t441 + 1.
      DATA t442 TYPE REF TO object.
      CLEAR t442.
      t429->load( ).
      CLEAR t442.
      READ TABLE t429->items INDEX t441 INTO t442.
      DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t443.
      CLEAR t439.
      IF t442 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t443 ?= t442.
        DATA t444 TYPE REF TO object.
        CLEAR t444.
        t444 = t443->as_ref( ).
        t439 ?= t444.
      ELSE.
        t439 ?= t442.
      ENDIF.
      t438 = t439.
      DATA(t445) = VALUE abap_bool( ).
      DATA(t446) = VALUE abap_bool( ).
      DATA(t447) = t419.
      t446 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_void_type ).
      t445 = t446.
      IF t446 = abap_false.
        DATA(t448) = VALUE abap_bool( ).
        DATA(t449) = t419.
        t448 = xsdbool( t449 IS BOUND AND t449 IS INSTANCE OF zcl_lnt_unknown_type ).
        t445 = t448.
      ENDIF.
      IF t445 = abap_true.
        DATA t452 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t452.
        DATA t453 TYPE REF TO zif_lnt_union_adffe656.
        CLEAR t453.
        DATA t454 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t454.
        t454 = t419.
        t453 ?= t454.
        t452 ?= t453.
        result = t452.
        RETURN.
      ELSE.
        DATA(t457) = VALUE abap_bool( ).
        DATA t458 TYPE REF TO object.
        CLEAR t458.
        t458 = t438->get_db65( ).
        t457 = xsdbool( t458 IS BOUND AND t458 IS INSTANCE OF zcl_lnt_arrow_or_dash ).
        IF t457 = abap_true.
          DATA(t460) = VALUE string( ).
          DATA(t461) = VALUE string( ).
          DATA t463 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t463.
          t463 = t438->get_first_token( ).
          DATA(t465) = VALUE string( ).
          t465 = t463->str.
          t461 = t465.
          t460 = t461.
          DATA(t467) = VALUE abap_bool( ).
          DATA(t468) = VALUE abap_bool( ).
          DATA(t470) = |-|.
          t468 = xsdbool( t460 = t470 ).
          t467 = t468.
          IF t468 = abap_true.
            DATA(t471) = VALUE abap_bool( ).
            DATA(t472) = VALUE abap_bool( ).
            DATA(t473) = t419.
            t472 = xsdbool( t473 IS BOUND AND t473 IS INSTANCE OF zcl_lnt_structure_type ).
            t471 = xsdbool( t472 = abap_false ).
            t467 = t471.
          ENDIF.
          IF t467 = abap_true.
            DATA t474 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t474.
            t474 = t3->issues.
            DATA t476 TYPE REF TO zcl_lnt_issue.
            CLEAR t476.
            DATA t478 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t478.
            t478 = t438->get_first_token( ).
            DATA(t480) = |AttributeChain, not a structure|.
            DATA t481 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t481.
            t476 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t478 i_message_26cb = t480 i_fix = t481 ).
            t474->load( ).
            APPEND t476 TO t474->items.
            t474->save( ).
            DATA t482 TYPE REF TO zcl_lnt_void_type.
            CLEAR t482.
            DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t483.
            DATA(t485) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t486) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t486->has = abap_true.
            t486->value = t485.
            t483 = t486.
            DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t488.
            t482 = zcl_lnt_void_type=>get_db65( i_voided = t483 i_qualified_name = t488 ).
            result = t482.
            RETURN.
          ELSE.
            DATA(t489) = VALUE abap_bool( ).
            DATA(t490) = VALUE abap_bool( ).
            DATA(t491) = VALUE abap_bool( ).
            DATA(t492) = VALUE abap_bool( ).
            DATA(t494) = |->|.
            t492 = xsdbool( t460 = t494 ).
            t491 = t492.
            IF t492 = abap_false.
              DATA(t495) = VALUE abap_bool( ).
              DATA(t497) = |=>|.
              t495 = xsdbool( t460 = t497 ).
              t491 = t495.
            ENDIF.
            t490 = t491.
            IF t491 = abap_true.
              DATA(t498) = VALUE abap_bool( ).
              DATA(t499) = VALUE abap_bool( ).
              DATA(t500) = t419.
              t499 = xsdbool( t500 IS BOUND AND t500 IS INSTANCE OF zcl_lnt_object_reference_type ).
              t498 = xsdbool( t499 = abap_false ).
              t490 = t498.
            ENDIF.
            t489 = t490.
            IF t490 = abap_true.
              DATA(t501) = VALUE abap_bool( ).
              DATA(t502) = VALUE abap_bool( ).
              DATA(t503) = t419.
              t502 = xsdbool( t503 IS BOUND AND t503 IS INSTANCE OF zcl_lnt_data_reference ).
              t501 = xsdbool( t502 = abap_false ).
              t489 = t501.
            ENDIF.
            IF t489 = abap_true.
              DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t504.
              t504 = t3->issues.
              DATA t506 TYPE REF TO zcl_lnt_issue.
              CLEAR t506.
              DATA t508 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t508.
              t508 = t438->get_first_token( ).
              DATA(t510) = |AttributeChain, not a reference|.
              DATA t511 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t511.
              t506 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t508 i_message_26cb = t510 i_fix = t511 ).
              t504->load( ).
              APPEND t506 TO t504->items.
              t504->save( ).
              DATA t512 TYPE REF TO zcl_lnt_void_type.
              CLEAR t512.
              DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t513.
              DATA(t515) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t516) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t516->has = abap_true.
              t516->value = t515.
              t513 = t516.
              DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t518.
              t512 = zcl_lnt_void_type=>get_db65( i_voided = t513 i_qualified_name = t518 ).
              result = t512.
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t519) = VALUE abap_bool( ).
          DATA t520 TYPE REF TO object.
          CLEAR t520.
          t520 = t438->get_db65( ).
          t519 = xsdbool( t520 IS BOUND AND t520 IS INSTANCE OF zcl_lnt_st_component_name ).
          IF t519 = abap_true.
            DATA(t522) = VALUE abap_bool( ).
            DATA(t523) = VALUE abap_bool( ).
            DATA(t524) = t419.
            t523 = xsdbool( t524 IS BOUND AND t524 IS INSTANCE OF zcl_lnt_object_reference_type ).
            t522 = t523.
            IF t523 = abap_false.
              DATA(t525) = VALUE abap_bool( ).
              DATA(t526) = t419.
              t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_data_reference ).
              t522 = t525.
            ENDIF.
            IF t522 = abap_true.
              DATA t527 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t527.
              DATA t528 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t528.
              DATA t530 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t530.
              DATA t531 TYPE REF TO zif_lnt_union_168ba5e4.
              CLEAR t531.
              DATA t532 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t532.
              t532 = t419.
              t531 ?= t532.
              t530 ?= t531.
              t528 = t530.
              DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t537.
              DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t539.
              CLEAR t539.
              IF t4 IS BOUND.
                DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t541.
                DATA t542 TYPE REF TO object.
                CLEAR t542.
                CLEAR t541.
                t542 = t4.
                TRY.
                    t539 ?= t542.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t539 IS NOT BOUND.
                  TRY.
                      t541 ?= t4.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t541 IS BOUND.
                    t539 = t541->source( ).
                  ENDIF.
                  IF t539 IS NOT BOUND.
                    CREATE OBJECT t539.
                    t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t539->oval = t4.
                  ENDIF.
                ENDIF.
              ENDIF.
              t537 = t539.
              DATA t544 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t544.
              t527 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t528 i_node = t438 i_input_967e = t3 i_type_9913 = t537 i_error = t544 ).
              t419 = t527.
            ELSE.
              DATA t545 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t545.
              t545 = zcl_lnt_sy_component_name=>run_syntax( i_context = t419 i_node = t438 i_input_967e = t3 ).
              t419 = t545.
            ENDIF.
          ELSE.
            DATA(t549) = VALUE abap_bool( ).
            DATA(t550) = VALUE abap_bool( ).
            DATA(t551) = VALUE string( ).
            DATA t553 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t553.
            t553 = t438->get_first_token( ).
            DATA(t555) = VALUE string( ).
            t555 = t553->str.
            t551 = t555.
            DATA(t557) = |*|.
            t550 = xsdbool( t551 = t557 ).
            t549 = t550.
            IF t550 = abap_true.
              DATA(t558) = VALUE abap_bool( ).
              DATA(t559) = t419.
              t558 = xsdbool( t559 IS BOUND AND t559 IS INSTANCE OF zcl_lnt_data_reference ).
              t549 = t558.
            ENDIF.
            IF t549 = abap_true.
              DATA t564 TYPE REF TO zcl_lnt_data_reference.
              CLEAR t564.
              t564 ?= t419.
              DATA t566 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t566.
              t566 = t564->type_cba0.
              t419 = t566.
            ELSE.
              DATA(t569) = VALUE abap_bool( ).
              DATA(t570) = VALUE abap_bool( ).
              t570 = xsdbool( t438 IS BOUND AND t438 IS INSTANCE OF zcl_lnt_expression_node ).
              t569 = t570.
              IF t570 = abap_true.
                DATA(t572) = VALUE abap_bool( ).
                DATA t573 TYPE REF TO zif_lnt_statement_runnable.
                CLEAR t573.
                DATA t574 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t574.
                DATA t576 TYPE REF TO object.
                CLEAR t576.
                t576 = t438.
                t574 ?= t576.
                t573 = t574->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                t572 = xsdbool( t573 IS BOUND AND t573 IS INSTANCE OF zcl_lnt_st_table_expression ).
                t569 = t572.
              ENDIF.
              IF t569 = abap_true.
                DATA(t577) = VALUE abap_bool( ).
                DATA(t578) = VALUE abap_bool( ).
                DATA(t579) = t419.
                t578 = xsdbool( t579 IS BOUND AND t579 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t577 = xsdbool( t578 = abap_false ).
                IF t577 = abap_true.
                  DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t580.
                  t580 = t3->issues.
                  DATA t582 TYPE REF TO zcl_lnt_issue.
                  CLEAR t582.
                  DATA t584 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t584.
                  DATA t585 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t585.
                  DATA t587 TYPE REF TO object.
                  CLEAR t587.
                  t587 = t438.
                  t585 ?= t587.
                  t584 = t585->get_first_token( ).
                  DATA(t588) = |Table expression, expected table|.
                  DATA t589 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t589.
                  t582 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t584 i_message_26cb = t588 i_fix = t589 ).
                  t580->load( ).
                  APPEND t582 TO t580->items.
                  t580->save( ).
                  DATA t590 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t590.
                  DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t591.
                  DATA(t593) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t594) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t594->has = abap_true.
                  t594->value = t593.
                  t591 = t594.
                  DATA t596 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t596.
                  t590 = zcl_lnt_void_type=>get_db65( i_voided = t591 i_qualified_name = t596 ).
                  result = t590.
                  RETURN.
                ENDIF.
                DATA t597 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t597.
                DATA t599 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t599.
                DATA t601 TYPE REF TO object.
                CLEAR t601.
                t601 = t438.
                t599 ?= t601.
                t597 = t599.
                DATA t604 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t604.
                t604 ?= t419.
                zcl_lnt_sy_table_expression=>run_syntax( i_node = t597 i_input_967e = t3 i_row_type = t604 ).
                DATA t610 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t610.
                t610 ?= t419.
                DATA t612 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t612.
                t612 = t610->row_type.
                t419 = t612.
              ELSE.
                DATA(t615) = VALUE abap_bool( ).
                DATA(t616) = VALUE abap_bool( ).
                t616 = xsdbool( t438 IS BOUND AND t438 IS INSTANCE OF zcl_lnt_expression_node ).
                t615 = t616.
                IF t616 = abap_true.
                  DATA(t618) = VALUE abap_bool( ).
                  DATA t619 TYPE REF TO zif_lnt_statement_runnable.
                  CLEAR t619.
                  DATA t620 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t620.
                  DATA t622 TYPE REF TO object.
                  CLEAR t622.
                  t622 = t438.
                  t620 ?= t622.
                  t619 = t620->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t618 = xsdbool( t619 IS BOUND AND t619 IS INSTANCE OF zcl_lnt_st_field_offset ).
                  t615 = t618.
                ENDIF.
                IF t615 = abap_true.
                  DATA t623 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t623.
                  DATA t624 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t624.
                  DATA t625 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t625.
                  DATA t627 TYPE REF TO object.
                  CLEAR t627.
                  t627 = t438.
                  t625 ?= t627.
                  t624 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t625 i_input_967e = t3 ).
                  t623 = t624.
                  DATA(t629) = VALUE abap_bool( ).
                  DATA t630 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t630.
                  t630 = t623.
                  DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t632.
                  CLEAR t632.
                  DATA(t634) = VALUE abap_bool( ).
                  DATA(t635) = VALUE abap_bool( ).
                  IF t630 IS INITIAL.
                    t635 = abap_true.
                  ELSEIF t630->has = abap_false.
                    t635 = abap_true.
                  ENDIF.
                  t634 = xsdbool( t635 = abap_false ).
                  t629 = t634.
                  IF t629 = abap_true.
                    DATA(t637) = VALUE abap_bool( ).
                    DATA(t638) = t419.
                    t637 = xsdbool( t638 IS BOUND AND t638 IS INSTANCE OF zcl_lnt_character_type ).
                    IF t637 = abap_true.
                      DATA t639 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t639.
                      DATA(t640) = VALUE f( ).
                      DATA(t641) = VALUE f( ).
                      DATA t643 TYPE REF TO zcl_lnt_character_type.
                      CLEAR t643.
                      t643 ?= t419.
                      DATA(t645) = VALUE f( ).
                      t645 = t643->length.
                      t641 = t645.
                      DATA(t647) = VALUE f( ).
                      IF t623->number_special <> 0.
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      t647 = t623->value.
                      t640 = t641 - t647.
                      DATA t649 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t649.
                      t639 = NEW zcl_lnt_character_type( i_length = t640 i_extra = t649 ).
                      t419 = t639.
                    ELSE.
                      DATA(t650) = VALUE abap_bool( ).
                      DATA(t651) = t419.
                      t650 = xsdbool( t651 IS BOUND AND t651 IS INSTANCE OF zcl_lnt_hex_type ).
                      IF t650 = abap_true.
                        DATA t652 TYPE REF TO zcl_lnt_hex_type.
                        CLEAR t652.
                        DATA(t653) = VALUE f( ).
                        DATA(t654) = VALUE f( ).
                        DATA t656 TYPE REF TO zcl_lnt_hex_type.
                        CLEAR t656.
                        t656 ?= t419.
                        DATA(t658) = VALUE f( ).
                        t658 = t656->length.
                        t654 = t658.
                        DATA(t660) = VALUE f( ).
                        IF t623->number_special <> 0.
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        t660 = t623->value.
                        t653 = t654 - t660.
                        DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t662.
                        t652 = NEW zcl_lnt_hex_type( i_length = t653 i_qualified_name = t662 ).
                        t419 = t652.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ELSE.
                  DATA(t663) = VALUE abap_bool( ).
                  DATA(t664) = VALUE abap_bool( ).
                  t664 = xsdbool( t438 IS BOUND AND t438 IS INSTANCE OF zcl_lnt_expression_node ).
                  t663 = t664.
                  IF t664 = abap_true.
                    DATA(t666) = VALUE abap_bool( ).
                    DATA t667 TYPE REF TO zif_lnt_statement_runnable.
                    CLEAR t667.
                    DATA t668 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t668.
                    DATA t670 TYPE REF TO object.
                    CLEAR t670.
                    t670 = t438.
                    t668 ?= t670.
                    t667 = t668->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                    t666 = xsdbool( t667 IS BOUND AND t667 IS INSTANCE OF zcl_lnt_st_field_length ).
                    t663 = t666.
                  ENDIF.
                  IF t663 = abap_true.
                    DATA t671 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t671.
                    DATA t672 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t672.
                    DATA t673 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t673.
                    DATA t675 TYPE REF TO object.
                    CLEAR t675.
                    t675 = t438.
                    t673 ?= t675.
                    t672 = zcl_lnt_sy_field_length=>run_syntax( i_node = t673 i_input_967e = t3 ).
                    t671 = t672.
                    DATA(t677) = VALUE abap_bool( ).
                    DATA t678 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    CLEAR t678.
                    t678 = t671.
                    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t680.
                    CLEAR t680.
                    DATA(t682) = VALUE abap_bool( ).
                    DATA(t683) = VALUE abap_bool( ).
                    IF t678 IS INITIAL.
                      t683 = abap_true.
                    ELSEIF t678->has = abap_false.
                      t683 = abap_true.
                    ENDIF.
                    t682 = xsdbool( t683 = abap_false ).
                    t677 = t682.
                    IF t677 = abap_true.
                      DATA(t685) = VALUE abap_bool( ).
                      DATA(t686) = t419.
                      t685 = xsdbool( t686 IS BOUND AND t686 IS INSTANCE OF zcl_lnt_character_type ).
                      IF t685 = abap_true.
                        DATA t687 TYPE REF TO zcl_lnt_character_type.
                        CLEAR t687.
                        DATA(t688) = VALUE f( ).
                        IF t671->number_special <> 0.
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        t688 = t671->value.
                        DATA t690 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t690.
                        t687 = NEW zcl_lnt_character_type( i_length = t688 i_extra = t690 ).
                        t419 = t687.
                      ELSE.
                        DATA(t691) = VALUE abap_bool( ).
                        DATA(t692) = t419.
                        t691 = xsdbool( t692 IS BOUND AND t692 IS INSTANCE OF zcl_lnt_hex_type ).
                        IF t691 = abap_true.
                          DATA t693 TYPE REF TO zcl_lnt_hex_type.
                          CLEAR t693.
                          DATA(t694) = VALUE f( ).
                          IF t671->number_special <> 0.
                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                          ENDIF.
                          t694 = t671->value.
                          DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t696.
                          t693 = NEW zcl_lnt_hex_type( i_length = t694 i_qualified_name = t696 ).
                          t419 = t693.
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
      DATA(t697) = VALUE i( ).
      DATA(t699) = 1.
      t697 = t432 + t699.
      t432 = t697.
    ENDDO.
    result = t419.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d783_4fa93caf800d.
  ENDMETHOD.
ENDCLASS.
