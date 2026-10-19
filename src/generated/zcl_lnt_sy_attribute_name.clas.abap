* TS: src/abap/5_syntax/expressions/attribute_name.ts:13:1 AttributeName
CLASS zcl_lnt_sy_attribute_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_error TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_attribute_name IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_context.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA(t4) = i_type_9913.
    DATA(t5) = i_error.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t5.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ELSEIF t7->has = abap_false.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA(t11) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t11->has = abap_true.
      t11->value = abap_true.
      t5 = t11.
    ENDIF.
    DATA t13 TYPE abap_bool.
    t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_void_type.
      t15 ?= t1.
      result = t15.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_object_oriented.
    DATA t18 TYPE REF TO zcl_lnt_object_oriented.
    DATA t19 TYPE REF TO zcl_lnt_current_scope.
    t19 = t3->scope.
    t18 = NEW zcl_lnt_object_oriented( i_scope = t19 ).
    t17 = t18.
    DATA t21 TYPE REF TO zcl_lnt_abstract_type.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_interface_definition.
      DATA t27 TYPE REF TO zcl_lnt_current_scope.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      t28 = t3->scope.
      t27 = t28.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t33) = VALUE string( ).
      DATA t35 TYPE REF TO zcl_lnt_object_reference_type.
      t35 ?= t1.
      DATA(t37) = VALUE string( ).
      DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
      t39 = t35->identifier.
      DATA(t41) = VALUE string( ).
      DATA t42 TYPE string.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      t45 = t39->token.
      DATA t47 TYPE string.
      t47 = t45->str.
      t42 = t47.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = VALUE string( ).
      DATA(t51) = t42.
      DATA(t52) = 0.
      DATA(t53) = 1.
      DATA(t54) = strlen( t51 ).
      IF t52 < 0.
        t52 = t52 + t54.
        IF t52 < 0.
          t52 = 0.
        ENDIF.
      ENDIF.
      IF t52 > t54 OR t53 <= 0.
        CLEAR t50.
      ELSE.
        IF t53 > t54 - t52.
          t53 = t54 - t52.
        ENDIF.
        t50 = t51+t52(t53).
      ENDIF.
      DATA(t55) = |!|.
      t49 = xsdbool( t50 = t55 ).
      IF t49 = abap_true.
        DATA(t56) = VALUE string( ).
        DATA t57 TYPE string.
        t57 = t42.
        DATA(t59) = VALUE string( ).
        DATA(t61) = 1.
        DATA t62 TYPE i.
        t62 = strlen( t57 ).
        DATA(t65) = strlen( t57 ).
        IF t61 < 0.
          t61 = t61 + t65.
          IF t61 < 0.
            t61 = 0.
          ENDIF.
        ENDIF.
        IF t61 > t65 OR t62 <= 0.
          CLEAR t59.
        ELSE.
          IF t62 > t65 - t61.
            t62 = t65 - t61.
          ENDIF.
          t59 = t57+t61(t62).
        ENDIF.
        t56 = t59.
        t42 = t56.
      ENDIF.
      t41 = t42.
      t37 = t41.
      t33 = t37.
      DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t67->has = abap_true.
      t67->value = t33.
      t30 = t67.
      DATA t69 TYPE REF TO zif_lnt_interface_definition.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t71 = t30.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t75) = VALUE abap_bool( ).
      IF t71 IS INITIAL.
        t75 = abap_true.
      ELSEIF t71->has = abap_false.
        t75 = abap_true.
      ENDIF.
      t70 = t75.
      IF t70 = abap_true.
      ELSE.
        DATA t79 TYPE REF TO zif_lnt_class_definition.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t84 TYPE string.
        t84 = t30->value.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = t84.
        t81 = t86.
        DATA t88 TYPE REF TO zif_lnt_class_definition.
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t90 = t81.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t94) = VALUE abap_bool( ).
        IF t90 IS INITIAL.
          t94 = abap_true.
        ELSEIF t90->has = abap_false.
          t94 = abap_true.
        ENDIF.
        t89 = t94.
        IF t89 = abap_true.
        ELSE.
          DATA t98 TYPE REF TO zif_lnt_class_definition.
          DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t101 = t27->current.
          t100 = t101.
          DATA t103 TYPE REF TO zif_lnt_class_definition.
          DATA(t104) = xsdbool( t100 IS INITIAL ).
          IF t104 = abap_true.
          ELSE.
            DATA t107 TYPE REF TO zif_lnt_class_definition.
            DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t108 = t100.
            DATA t110 TYPE string.
            t110 = t81->value.
            t107 = t108->find_class_definition( i_name = t110 ).
            t103 = t107.
          ENDIF.
          t98 = t103.
          DATA t112 TYPE REF TO zif_lnt_class_definition.
          DATA t113 TYPE abap_bool.
          t113 = xsdbool( t98 IS BOUND ).
          IF t113 = abap_true.
            t112 = t98.
          ELSE.
            DATA t121 TYPE REF TO zcl_lnt_class.
            DATA t122 TYPE REF TO zcl_lnt_class.
            DATA t123 TYPE REF TO zif_lnt_object.
            DATA t124 TYPE REF TO zif_lnt_registry.
            t124 = t27->reg.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t128) = |CLAS|.
            DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t129->has = abap_true.
            t129->value = t128.
            t126 = t129.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t133 TYPE string.
            t133 = t81->value.
            DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t135->has = abap_true.
            t135->value = t133.
            t131 = t135.
            t123 = t124->get_object( i_type_9913 = t126 i_name = t131 ).
            DATA t137 TYPE REF TO object.
            t137 = t123.
            t122 ?= t137.
            t121 = t122.
            DATA t138 TYPE REF TO zif_lnt_class_definition.
            DATA t139 TYPE abap_bool.
            t139 = xsdbool( t121 IS BOUND ).
            IF t139 = abap_true.
              DATA t141 TYPE REF TO zif_lnt_class_definition.
              DATA t142 TYPE REF TO zcl_lnt_class.
              t142 = t121.
              t141 = t142->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t138 = t141.
            ELSE.
              CLEAR t138.
            ENDIF.
            t112 = t138.
          ENDIF.
          t88 = t112.
        ENDIF.
        t79 = t88.
        DATA t145 TYPE REF TO zif_lnt_interface_definition.
        DATA t146 TYPE abap_bool.
        t146 = xsdbool( t79 IS BOUND ).
        IF t146 = abap_true.
          DATA t148 TYPE REF TO zif_lnt_interface_definition.
          DATA t149 TYPE REF TO zif_lnt_class_definition.
          t149 = t79.
          t148 ?= t149.
          t145 = t148.
        ELSE.
          DATA t152 TYPE REF TO zif_lnt_interface_definition.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t157 TYPE string.
          t157 = t30->value.
          DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t159->has = abap_true.
          t159->value = t157.
          t154 = t159.
          DATA t161 TYPE REF TO zif_lnt_interface_definition.
          DATA(t162) = VALUE abap_bool( ).
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t163 = t154.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t167) = VALUE abap_bool( ).
          IF t163 IS INITIAL.
            t167 = abap_true.
          ELSEIF t163->has = abap_false.
            t167 = abap_true.
          ENDIF.
          t162 = t167.
          IF t162 = abap_true.
          ELSE.
            DATA t171 TYPE REF TO zif_lnt_interface_definition.
            DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t174 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t174 = t27->current.
            t173 = t174.
            DATA t176 TYPE REF TO zif_lnt_interface_definition.
            DATA(t177) = xsdbool( t173 IS INITIAL ).
            IF t177 = abap_true.
            ELSE.
              DATA t180 TYPE REF TO zif_lnt_interface_definition.
              DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t181 = t173.
              DATA t183 TYPE string.
              t183 = t154->value.
              t180 = t181->find_interface_definition( i_name = t183 ).
              t176 = t180.
            ENDIF.
            t171 = t176.
            DATA t185 TYPE REF TO zif_lnt_interface_definition.
            DATA t186 TYPE abap_bool.
            t186 = xsdbool( t171 IS BOUND ).
            IF t186 = abap_true.
              t185 = t171.
            ELSE.
              DATA t194 TYPE REF TO zcl_lnt_ob_interface.
              DATA t195 TYPE REF TO zcl_lnt_ob_interface.
              DATA t196 TYPE REF TO zif_lnt_object.
              DATA t197 TYPE REF TO zif_lnt_registry.
              t197 = t27->reg.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t201) = |INTF|.
              DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t202->has = abap_true.
              t202->value = t201.
              t199 = t202.
              DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t206 TYPE string.
              t206 = t154->value.
              DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t208->has = abap_true.
              t208->value = t206.
              t204 = t208.
              t196 = t197->get_object( i_type_9913 = t199 i_name = t204 ).
              DATA t210 TYPE REF TO object.
              t210 = t196.
              t195 ?= t210.
              t194 = t195.
              DATA t211 TYPE REF TO zif_lnt_interface_definition.
              DATA t212 TYPE abap_bool.
              t212 = xsdbool( t194 IS BOUND ).
              IF t212 = abap_true.
                DATA t218 TYPE REF TO zif_lnt_interface_definition.
                t218 = t194->def.
                t211 = t218.
              ELSE.
                CLEAR t211.
              ENDIF.
              t185 = t211.
            ENDIF.
            t161 = t185.
          ENDIF.
          t152 = t161.
          DATA t221 TYPE REF TO zif_lnt_interface_definition.
          DATA t222 TYPE abap_bool.
          t222 = xsdbool( t152 IS BOUND ).
          IF t222 = abap_true.
            t221 = t152.
          ELSE.
            CLEAR t221.
          ENDIF.
          t145 = t221.
        ENDIF.
        t69 = t145.
      ENDIF.
      t25 = t69.
      DATA(t230) = VALUE abap_bool( ).
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t230 = xsdbool( t25 IS INITIAL ).
      IF t230 = abap_true.
        DATA(t237) = VALUE string( ).
        DATA(t238) = VALUE string( ).
        DATA(t239) = VALUE string( ).
        DATA(t240) = |Definition for "|.
        DATA(t241) = VALUE string( ).
        DATA t243 TYPE REF TO zcl_lnt_object_reference_type.
        t243 ?= t1.
        DATA(t245) = VALUE string( ).
        DATA t247 TYPE REF TO zcl_lnt_fi_identifier.
        t247 = t243->identifier.
        DATA(t249) = VALUE string( ).
        DATA t250 TYPE string.
        DATA t253 TYPE REF TO zcl_lnt_abstract_token.
        t253 = t247->token.
        DATA t255 TYPE string.
        t255 = t253->str.
        t250 = t255.
        DATA(t257) = VALUE abap_bool( ).
        DATA(t258) = VALUE string( ).
        DATA(t259) = t250.
        DATA(t260) = 0.
        DATA(t261) = 1.
        DATA(t262) = strlen( t259 ).
        IF t260 < 0.
          t260 = t260 + t262.
          IF t260 < 0.
            t260 = 0.
          ENDIF.
        ENDIF.
        IF t260 > t262 OR t261 <= 0.
          CLEAR t258.
        ELSE.
          IF t261 > t262 - t260.
            t261 = t262 - t260.
          ENDIF.
          t258 = t259+t260(t261).
        ENDIF.
        DATA(t263) = |!|.
        t257 = xsdbool( t258 = t263 ).
        IF t257 = abap_true.
          DATA(t264) = VALUE string( ).
          DATA t265 TYPE string.
          t265 = t250.
          DATA(t267) = VALUE string( ).
          DATA(t269) = 1.
          DATA t270 TYPE i.
          t270 = strlen( t265 ).
          DATA(t273) = strlen( t265 ).
          IF t269 < 0.
            t269 = t269 + t273.
            IF t269 < 0.
              t269 = 0.
            ENDIF.
          ENDIF.
          IF t269 > t273 OR t270 <= 0.
            CLEAR t267.
          ELSE.
            IF t270 > t273 - t269.
              t270 = t273 - t269.
            ENDIF.
            t267 = t265+t269(t270).
          ENDIF.
          t264 = t267.
          t250 = t264.
        ENDIF.
        t249 = t250.
        t245 = t249.
        t241 = t245.
        DATA(t275) = strlen( t240 ).
        t239 = |{ t240 }{ t241 }|.
        DATA(t276) = |" not found in scope(AttributeName)|.
        DATA(t277) = strlen( t239 ).
        t238 = |{ t239 }{ t276 }|.
        t237 = t238.
        DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t278 = t3->issues.
        DATA t280 TYPE REF TO zcl_lnt_issue.
        DATA t282 TYPE REF TO zcl_lnt_abstract_token.
        t282 = t2->get_first_token( ).
        DATA t285 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t280 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t282 i_message_26cb = t237 i_fix = t285 ).
        t278->load( ).
        APPEND t280 TO t278->items.
        t278->save( ).
        DATA t286 TYPE REF TO zcl_lnt_void_type.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t289) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t290->has = abap_true.
        t290->value = t289.
        t287 = t290.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t286 = zcl_lnt_void_type=>get_db65( i_voided = t287 i_qualified_name = t292 ).
        result = t286.
        RETURN.
      ENDIF.
      DATA t293 TYPE REF TO zcl_lnt_abstract_token.
      DATA t294 TYPE REF TO zcl_lnt_abstract_token.
      t294 = t2->get_first_token( ).
      t293 = t294.
      DATA t296 TYPE string.
      DATA t300 TYPE string.
      t300 = t293->str.
      t296 = t300.
      DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t303 TYPE REF TO zcl_lnt_class_attribute.
      DATA t305 TYPE REF TO zif_lnt_interface_definition.
      t305 = t25.
      DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t313->has = abap_true.
      t313->value = t296.
      t310 = t313.
      t303 = t17->search_attribute_name( i_def = t305 i_name = t310 ).
      t302 = t303.
      DATA(t315) = VALUE abap_bool( ).
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t315 = xsdbool( t302 IS INITIAL ).
      IF t315 = abap_true.
        DATA t322 TYPE REF TO zcl_lnt_class_constant.
        DATA t324 TYPE REF TO zif_lnt_interface_definition.
        t324 = t25.
        DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t332->has = abap_true.
        t332->value = t296.
        t329 = t332.
        t322 = t17->search_constant_name( i_def = t324 i_name = t329 ).
        t302 = t322.
      ENDIF.
      DATA(t334) = VALUE abap_bool( ).
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t334 = xsdbool( t302 IS INITIAL ).
      IF t334 = abap_true.
        DATA t342 TYPE string.
        DATA t343 TYPE string.
        DATA t344 TYPE string.
        DATA t345 TYPE string.
        DATA(t346) = |Attribute or constant "|.
        DATA(t348) = strlen( t346 ).
        t345 = |{ t346 }{ t296 }|.
        DATA(t349) = |" not found in "|.
        DATA(t350) = strlen( t345 ).
        t344 = |{ t345 }{ t349 }|.
        DATA t351 TYPE string.
        DATA t352 TYPE REF TO zif_lnt_interface_definition.
        t352 = t25.
        t351 = t352->get_name( ).
        DATA(t354) = strlen( t344 ).
        t343 = |{ t344 }{ t351 }|.
        DATA(t355) = |"|.
        DATA(t356) = strlen( t343 ).
        t342 = |{ t343 }{ t355 }|.
        DATA t357 TYPE abap_bool.
        DATA t358 TYPE abap_bool.
        t358 = t5->value.
        t357 = xsdbool( t358 = abap_true ).
        IF t357 = abap_true.
          DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t361 = t3->issues.
          DATA t363 TYPE REF TO zcl_lnt_issue.
          DATA t365 TYPE REF TO zcl_lnt_abstract_token.
          t365 = t2->get_first_token( ).
          DATA t368 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t363 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t365 i_message_26cb = t342 i_fix = t368 ).
          t361->load( ).
          APPEND t363 TO t361->items.
          t361->save( ).
        ENDIF.
        DATA t369 TYPE REF TO zcl_lnt_void_type.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t372) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t373->has = abap_true.
        t373->value = t372.
        t370 = t373.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t369 = zcl_lnt_void_type=>get_db65( i_voided = t370 i_qualified_name = t375 ).
        result = t369.
        RETURN.
      ENDIF.
      DATA(t376) = VALUE abap_bool( ).
      DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t377 = t4.
      IF t377 IS BOUND.
        t376 = t377->truth( ).
      ENDIF.
      IF t376 = abap_true.
        DATA t379 TYPE REF TO zcl_lnt_current_scope.
        t379 = t3->scope.
        DATA t381 TYPE REF TO zcl_lnt_abstract_token.
        t381 = t293.
        DATA t385 TYPE REF TO zcl_lnt_typed_identifier.
        t385 = t302.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t387 = t4.
        DATA t389 TYPE string.
        t389 = t3->filename.
        DATA t391 TYPE REF TO zcl_lnt_ireference_extras.
        t379->add_reference( i_usage = t381 i_referencing = t385 i_type_9913 = t387 i_filename = t389 i_extra = t391 ).
      ENDIF.
      DATA t392 TYPE abap_bool.
      DATA t393 TYPE abap_bool.
      t393 = xsdbool( t302 IS BOUND ).
      t392 = t393.
      IF t393 = abap_true.
        DATA(t395) = VALUE abap_bool( ).
        DATA(t396) = VALUE i( ).
        DATA(t398) = |~|.
        DATA(t399) = strlen( t296 ).
        IF t398 IS INITIAL.
          t396 = 0.
        ELSE.
          FIND t398 IN t296 MATCH OFFSET t396.
          IF sy-subrc <> 0.
            t396 = -1.
          ENDIF.
        ENDIF.
        DATA(t400) = 0.
        t395 = xsdbool( t396 >= t400 ).
        t392 = t395.
      ENDIF.
      IF t392 = abap_true.
        DATA t401 TYPE REF TO zif_lnt_interface_definition.
        DATA t403 TYPE REF TO zcl_lnt_current_scope.
        DATA t404 TYPE REF TO zcl_lnt_current_scope.
        t404 = t3->scope.
        t403 = t404.
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t408 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t410) = |~|.
        DATA(t411) = strlen( t296 ).
        DATA t412 TYPE i.
        DATA(t413) = VALUE i( ).
        DATA(t414) = VALUE i( ).
        DATA t415 TYPE i.
        DATA(t416) = VALUE string( ).
        CREATE OBJECT t408.
        t415 = strlen( t410 ).
        t412 = 0.
        IF t415 = 0.
          WHILE t412 < t411.
            t416 = t296+t412(1).
            APPEND t416 TO t408->items.
            t412 = t412 + 1.
          ENDWHILE.
        ELSE.
          WHILE t412 <= t411.
            FIND FIRST OCCURRENCE OF t410 IN SECTION OFFSET t412 OF t296 MATCH OFFSET t413.
            IF sy-subrc = 0.
              t414 = t413 - t412.
            ELSE.
              t413 = -1.
              t414 = t411 - t412.
            ENDIF.
            CLEAR t416.
            IF t414 > 0.
              t416 = t296+t412(t414).
            ENDIF.
            APPEND t416 TO t408->items.
            IF t413 < 0.
              EXIT.
            ENDIF.
            t412 = t413 + t415.
          ENDWHILE.
        ENDIF.
        DATA(t417) = 0.
        t407 = t408->get( p0 = t417 ).
        t406 = t407.
        DATA t418 TYPE REF TO zif_lnt_interface_definition.
        DATA(t419) = VALUE abap_bool( ).
        DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t420 = t406.
        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t424) = VALUE abap_bool( ).
        IF t420 IS INITIAL.
          t424 = abap_true.
        ELSEIF t420->has = abap_false.
          t424 = abap_true.
        ENDIF.
        t419 = t424.
        IF t419 = abap_true.
        ELSE.
          DATA t428 TYPE REF TO zif_lnt_interface_definition.
          DATA t430 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t431 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t431 = t403->current.
          t430 = t431.
          DATA t433 TYPE REF TO zif_lnt_interface_definition.
          DATA(t434) = xsdbool( t430 IS INITIAL ).
          IF t434 = abap_true.
          ELSE.
            DATA t437 TYPE REF TO zif_lnt_interface_definition.
            DATA t438 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t438 = t430.
            DATA t440 TYPE string.
            t440 = t406->value.
            t437 = t438->find_interface_definition( i_name = t440 ).
            t433 = t437.
          ENDIF.
          t428 = t433.
          DATA t442 TYPE REF TO zif_lnt_interface_definition.
          DATA t443 TYPE abap_bool.
          t443 = xsdbool( t428 IS BOUND ).
          IF t443 = abap_true.
            t442 = t428.
          ELSE.
            DATA t451 TYPE REF TO zcl_lnt_ob_interface.
            DATA t452 TYPE REF TO zcl_lnt_ob_interface.
            DATA t453 TYPE REF TO zif_lnt_object.
            DATA t454 TYPE REF TO zif_lnt_registry.
            t454 = t403->reg.
            DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t458) = |INTF|.
            DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t459->has = abap_true.
            t459->value = t458.
            t456 = t459.
            DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t463 TYPE string.
            t463 = t406->value.
            DATA(t465) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t465->has = abap_true.
            t465->value = t463.
            t461 = t465.
            t453 = t454->get_object( i_type_9913 = t456 i_name = t461 ).
            DATA t467 TYPE REF TO object.
            t467 = t453.
            t452 ?= t467.
            t451 = t452.
            DATA t468 TYPE REF TO zif_lnt_interface_definition.
            DATA t469 TYPE abap_bool.
            t469 = xsdbool( t451 IS BOUND ).
            IF t469 = abap_true.
              DATA t475 TYPE REF TO zif_lnt_interface_definition.
              t475 = t451->def.
              t468 = t475.
            ELSE.
              CLEAR t468.
            ENDIF.
            t442 = t468.
          ENDIF.
          t418 = t442.
        ENDIF.
        t401 = t418.
        DATA t478 TYPE abap_bool.
        t478 = xsdbool( t401 IS BOUND ).
        IF t478 = abap_true.
          DATA t480 TYPE REF TO zcl_lnt_current_scope.
          t480 = t3->scope.
          DATA t482 TYPE REF TO zcl_lnt_abstract_token.
          t482 = t293.
          DATA t486 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t488 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t489 TYPE REF TO zif_lnt_interface_definition.
          t489 = t401.
          t488 ?= t489.
          t486 = t488.
          DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t493) = |Object|.
          CREATE OBJECT t492.
          t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t492->sval = t493.
          DATA t494 TYPE string.
          t494 = t3->filename.
          DATA t496 TYPE REF TO zcl_lnt_ireference_extras.
          t480->add_reference( i_usage = t482 i_referencing = t486 i_type_9913 = t492 i_filename = t494 i_extra = t496 ).
        ENDIF.
      ENDIF.
      DATA t503 TYPE REF TO zcl_lnt_abstract_type.
      t503 = t302->type_cba0.
      t21 = t503.
    ELSE.
      DATA t506 TYPE abap_bool.
      t506 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_reference ).
      IF t506 = abap_true.
        DATA t508 TYPE REF TO zcl_lnt_abstract_type.
        DATA t511 TYPE REF TO zcl_lnt_data_reference.
        t511 ?= t1.
        DATA t513 TYPE REF TO zcl_lnt_abstract_type.
        t513 = t511->type_cba0.
        t508 = t513.
        DATA t515 TYPE string.
        DATA t518 TYPE REF TO zcl_lnt_abstract_token.
        t518 = t2->get_first_token( ).
        DATA t520 TYPE string.
        t520 = t518->str.
        t515 = t520.
        DATA(t522) = VALUE abap_bool( ).
        DATA t523 TYPE abap_bool.
        DATA t524 TYPE abap_bool.
        DATA(t526) = |*|.
        t524 = xsdbool( t515 = t526 ).
        t523 = t524.
        IF t524 = abap_false.
          DATA t527 TYPE abap_bool.
          t527 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_void_type ).
          t523 = t527.
        ENDIF.
        t522 = t523.
        IF t523 = abap_false.
          DATA t529 TYPE abap_bool.
          t529 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_any_type ).
          t522 = t529.
        ENDIF.
        IF t522 = abap_true.
          result = t508.
          RETURN.
        ENDIF.
        DATA t535 TYPE abap_bool.
        DATA t536 TYPE abap_bool.
        t536 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_structure_type ).
        t535 = xsdbool( t536 = abap_false ).
        IF t535 = abap_true.
          DATA(t539) = |Data reference not structured|.
          DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t540 = t3->issues.
          DATA t542 TYPE REF TO zcl_lnt_issue.
          DATA t544 TYPE REF TO zcl_lnt_abstract_token.
          t544 = t2->get_first_token( ).
          DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t542 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t544 i_message_26cb = t539 i_fix = t547 ).
          t540->load( ).
          APPEND t542 TO t540->items.
          t540->save( ).
          DATA t548 TYPE REF TO zcl_lnt_void_type.
          DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t551) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t552) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t552->has = abap_true.
          t552->value = t551.
          t549 = t552.
          DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t548 = zcl_lnt_void_type=>get_db65( i_voided = t549 i_qualified_name = t554 ).
          result = t548.
          RETURN.
        ENDIF.
        DATA t557 TYPE REF TO zcl_lnt_structure_type.
        t557 ?= t508.
        DATA t559 TYPE string.
        t559 = t515.
        DATA t561 TYPE REF TO zcl_lnt_abstract_type.
        DATA t562 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        t562 = t557->indexed.
        DATA t564 TYPE string.
        DATA(t566) = strlen( t559 ).
        t564 = t559.
        IF t564 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t564 TO UPPER CASE.
        ELSE.
          t564 = zlnt_runtime_uppe_91169605024d=>full( t564 ).
        ENDIF.
        t561 = t562->get( p0 = t564 ).
        t21 = t561.
        DATA(t567) = VALUE abap_bool( ).
        DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t567 = xsdbool( t21 IS INITIAL ).
        IF t567 = abap_true.
          DATA t575 TYPE string.
          DATA t576 TYPE string.
          DATA(t577) = |Component "|.
          DATA(t579) = strlen( t577 ).
          t576 = |{ t577 }{ t515 }|.
          DATA(t580) = |" not found in data reference structure|.
          DATA(t581) = strlen( t576 ).
          t575 = |{ t576 }{ t580 }|.
          DATA t582 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t582 = t3->issues.
          DATA t584 TYPE REF TO zcl_lnt_issue.
          DATA t586 TYPE REF TO zcl_lnt_abstract_token.
          t586 = t2->get_first_token( ).
          DATA t589 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t584 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t586 i_message_26cb = t575 i_fix = t589 ).
          t582->load( ).
          APPEND t584 TO t582->items.
          t582->save( ).
          DATA t590 TYPE REF TO zcl_lnt_void_type.
          DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t593) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t594) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t594->has = abap_true.
          t594->value = t593.
          t591 = t594.
          DATA t596 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t590 = zcl_lnt_void_type=>get_db65( i_voided = t591 i_qualified_name = t596 ).
          result = t590.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t598) = |Not an object reference, attribute name|.
        DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t599 = t3->issues.
        DATA t601 TYPE REF TO zcl_lnt_issue.
        DATA t603 TYPE REF TO zcl_lnt_abstract_token.
        t603 = t2->get_first_token( ).
        DATA t606 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t601 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t603 i_message_26cb = t598 i_fix = t606 ).
        t599->load( ).
        APPEND t601 TO t599->items.
        t599->save( ).
        DATA t607 TYPE REF TO zcl_lnt_void_type.
        DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t610) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t611) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t611->has = abap_true.
        t611->value = t610.
        t608 = t611.
        DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t607 = zcl_lnt_void_type=>get_db65( i_voided = t608 i_qualified_name = t613 ).
        result = t607.
        RETURN.
      ENDIF.
    ENDIF.
    result = t21.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d784_b0dc1a04ca48.
  ENDMETHOD.
ENDCLASS.
