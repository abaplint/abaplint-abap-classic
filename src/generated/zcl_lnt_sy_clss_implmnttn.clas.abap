* TS: src/abap/5_syntax/statements/class_implementation.ts:12:1 ClassImplementation
CLASS zcl_lnt_sy_clss_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_clss_implmnttn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    t5 = t2->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    t8 = t3->find_class_name( i_node = t1 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_current_scope.
    DATA t12 TYPE REF TO zcl_lnt_current_scope.
    t12 = t2->scope.
    t11 = t12.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    t19 = t1->get_first_token( ).
    DATA t21 TYPE REF TO zcl_lnt_position.
    t21 = t19->start.
    DATA t24 TYPE string.
    t24 = t2->filename.
    DATA t26 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t27 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t28 TYPE string.
    t28 = |class_implementation|.
    DATA t30 TYPE string.
    t30 = t7.
    DATA t32 TYPE REF TO zcl_lnt_position.
    t32 = t21.
    DATA t34 TYPE string.
    t34 = t24.
    DATA t36 TYPE REF TO zcl_lnt_position.
    t27 = NEW zcl_lnt_iscope_identifier( i_stype = t28 i_sname = t30 i_filename = t34 i_start = t32 i_end = t36 ).
    CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
    t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t42 ).
    ENDIF.
    CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
    t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t43) = |stype|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    DATA(t45) = |sname|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |start|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |filename|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |end|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    t26 = t27.
    DATA(t53) = VALUE abap_bool( ).
    DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t55 = t11->current.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t53 = xsdbool( t55 IS INITIAL ).
    IF t53 = abap_true.
      DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t64 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t26 i_parent = t66 ).
      t11->current = t64.
      DELETE t11->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t70 = t11->current.
      t68 = t70.
      DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t77 = t68.
      t75 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t26 i_parent = t77 ).
      t11->current = t75.
      DELETE t11->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t84 = t11->current.
      t83 = t84.
      t68->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t83 ).
    ENDIF.
    DATA t86 TYPE REF TO zif_lnt_class_definition.
    DATA t88 TYPE REF TO zcl_lnt_current_scope.
    DATA t89 TYPE REF TO zcl_lnt_current_scope.
    t89 = t2->scope.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t95->has = abap_true.
    t95->value = t7.
    t91 = t95.
    DATA t97 TYPE REF TO zif_lnt_class_definition.
    DATA(t98) = VALUE abap_bool( ).
    DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t99 = t91.
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
      DATA t109 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t110 = t88->current.
      t109 = t110.
      DATA t112 TYPE REF TO zif_lnt_class_definition.
      DATA(t113) = xsdbool( t109 IS INITIAL ).
      IF t113 = abap_true.
      ELSE.
        DATA t116 TYPE REF TO zif_lnt_class_definition.
        DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t117 = t109.
        DATA t119 TYPE string.
        t119 = t91->value.
        t116 = t117->find_class_definition( i_name = t119 ).
        t112 = t116.
      ENDIF.
      t107 = t112.
      DATA t121 TYPE REF TO zif_lnt_class_definition.
      DATA t122 TYPE abap_bool.
      t122 = xsdbool( t107 IS BOUND ).
      IF t122 = abap_true.
        t121 = t107.
      ELSE.
        DATA t130 TYPE REF TO zcl_lnt_class.
        DATA t131 TYPE REF TO zcl_lnt_class.
        DATA t132 TYPE REF TO zif_lnt_object.
        DATA t133 TYPE REF TO zif_lnt_registry.
        t133 = t88->reg.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t137) = |CLAS|.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t137.
        t135 = t138.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE string.
        t142 = t91->value.
        DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t144->has = abap_true.
        t144->value = t142.
        t140 = t144.
        t132 = t133->get_object( i_type_9913 = t135 i_name = t140 ).
        DATA t146 TYPE REF TO object.
        t146 = t132.
        t131 ?= t146.
        t130 = t131.
        DATA t147 TYPE REF TO zif_lnt_class_definition.
        DATA t148 TYPE abap_bool.
        t148 = xsdbool( t130 IS BOUND ).
        IF t148 = abap_true.
          DATA t150 TYPE REF TO zif_lnt_class_definition.
          DATA t151 TYPE REF TO zcl_lnt_class.
          t151 = t130.
          t150 = t151->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t147 = t150.
        ELSE.
          CLEAR t147.
        ENDIF.
        t121 = t147.
      ENDIF.
      t97 = t121.
    ENDIF.
    t86 = t97.
    DATA(t154) = VALUE abap_bool( ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t154 = xsdbool( t86 IS INITIAL ).
    IF t154 = abap_true.
      DATA t162 TYPE string.
      DATA t163 TYPE string.
      DATA(t164) = |Class definition for "|.
      DATA(t166) = strlen( t164 ).
      t163 = |{ t164 }{ t7 }|.
      DATA(t167) = |" not found|.
      DATA(t168) = strlen( t163 ).
      t162 = |{ t163 }{ t167 }|.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t169 = t2->issues.
      DATA t171 TYPE REF TO zcl_lnt_issue.
      DATA t173 TYPE REF TO zcl_lnt_abstract_token.
      t173 = t1->get_first_token( ).
      DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t171 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t173 i_message_26cb = t162 i_fix = t176 ).
      t169->load( ).
      APPEND t171 TO t169->items.
      t169->save( ).
      RETURN.
    ENDIF.
    DATA t177 TYPE REF TO zif_lnt_type_definitions.
    DATA t178 TYPE REF TO zif_lnt_type_definitions.
    DATA t179 TYPE REF TO zif_lnt_class_definition.
    t179 = t86.
    t178 = t179->get_type_definitions( ).
    t177 = t178.
    DATA(t181) = VALUE abap_bool( ).
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t186) = VALUE abap_bool( ).
    DATA(t187) = xsdbool( t177 IS INITIAL ).
    t186 = xsdbool( t187 = abap_false ).
    t181 = t186.
    IF t181 = abap_true.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t189 = t177->get_all( ).
      DATA t191 TYPE REF TO zcl_lnt_type_definitions_entry.
      DATA t192 TYPE REF TO object.
      DATA(t193) = VALUE i( ).
      DO.
        t189->load( ).
        IF t193 >= lines( t189->items ).
          EXIT.
        ENDIF.
        CLEAR t192.
        READ TABLE t189->items INDEX t193 + 1 INTO t192.
        t193 = t193 + 1.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        CLEAR t191.
        IF t192 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t194 ?= t192.
          DATA t195 TYPE REF TO object.
          t195 = t194->as_ref( ).
          t191 ?= t195.
        ELSE.
          t191 ?= t192.
        ENDIF.
        DATA t197 TYPE REF TO zcl_lnt_current_scope.
        t197 = t2->scope.
        DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t199.
        DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
        t202 = t191->type_cba0.
        t199 = t202.
        DATA(t205) = VALUE abap_bool( ).
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        t205 = xsdbool( t199 IS INITIAL ).
        IF t205 = abap_true.
        ELSE.
          DATA(t213) = VALUE string( ).
          DATA t214 TYPE REF TO zcl_lnt_fi_identifier.
          t214 = t199.
          DATA(t217) = VALUE string( ).
          DATA t218 TYPE string.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          t221 = t214->token.
          DATA t223 TYPE string.
          t223 = t221->str.
          t218 = t223.
          DATA(t225) = VALUE abap_bool( ).
          DATA(t226) = VALUE string( ).
          DATA(t227) = t218.
          DATA(t228) = 0.
          DATA(t229) = 1.
          DATA(t230) = strlen( t227 ).
          IF t228 < 0.
            t228 = t228 + t230.
            IF t228 < 0.
              t228 = 0.
            ENDIF.
          ENDIF.
          IF t228 > t230 OR t229 <= 0.
            CLEAR t226.
          ELSE.
            IF t229 > t230 - t228.
              t229 = t230 - t228.
            ENDIF.
            t226 = t227+t228(t229).
          ENDIF.
          DATA(t231) = |!|.
          t225 = xsdbool( t226 = t231 ).
          IF t225 = abap_true.
            DATA(t232) = VALUE string( ).
            DATA t233 TYPE string.
            t233 = t218.
            DATA(t235) = VALUE string( ).
            DATA(t237) = 1.
            DATA t238 TYPE i.
            t238 = strlen( t233 ).
            DATA(t241) = strlen( t233 ).
            IF t237 < 0.
              t237 = t237 + t241.
              IF t237 < 0.
                t237 = 0.
              ENDIF.
            ENDIF.
            IF t237 > t241 OR t238 <= 0.
              CLEAR t235.
            ELSE.
              IF t238 > t241 - t237.
                t238 = t241 - t237.
              ENDIF.
              t235 = t233+t237(t238).
            ENDIF.
            t232 = t235.
            t218 = t232.
          ENDIF.
          t217 = t218.
          t213 = t217.
          DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t243.
          t243 = t199.
          t197->add_type_named( i_name = t213 i_type_9913 = t243 ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t248 TYPE REF TO zif_lnt_class_definition.
    DATA t250 TYPE REF TO zcl_lnt_current_scope.
    DATA t251 TYPE REF TO zcl_lnt_current_scope.
    t251 = t2->scope.
    t250 = t251.
    DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t255 TYPE REF TO zif_lnt_class_definition.
    t255 = t86.
    t254 = t255->get_super_class( ).
    t253 = t254.
    DATA t257 TYPE REF TO zif_lnt_class_definition.
    DATA(t258) = VALUE abap_bool( ).
    DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t259 = t253.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t263) = VALUE abap_bool( ).
    IF t259 IS INITIAL.
      t263 = abap_true.
    ELSEIF t259->has = abap_false.
      t263 = abap_true.
    ENDIF.
    t258 = t263.
    IF t258 = abap_true.
    ELSE.
      DATA t267 TYPE REF TO zif_lnt_class_definition.
      DATA t269 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t270 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t270 = t250->current.
      t269 = t270.
      DATA t272 TYPE REF TO zif_lnt_class_definition.
      DATA(t273) = xsdbool( t269 IS INITIAL ).
      IF t273 = abap_true.
      ELSE.
        DATA t276 TYPE REF TO zif_lnt_class_definition.
        DATA t277 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t277 = t269.
        DATA t279 TYPE string.
        t279 = t253->value.
        t276 = t277->find_class_definition( i_name = t279 ).
        t272 = t276.
      ENDIF.
      t267 = t272.
      DATA t281 TYPE REF TO zif_lnt_class_definition.
      DATA t282 TYPE abap_bool.
      t282 = xsdbool( t267 IS BOUND ).
      IF t282 = abap_true.
        t281 = t267.
      ELSE.
        DATA t290 TYPE REF TO zcl_lnt_class.
        DATA t291 TYPE REF TO zcl_lnt_class.
        DATA t292 TYPE REF TO zif_lnt_object.
        DATA t293 TYPE REF TO zif_lnt_registry.
        t293 = t250->reg.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t297) = |CLAS|.
        DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t298->has = abap_true.
        t298->value = t297.
        t295 = t298.
        DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t302 TYPE string.
        t302 = t253->value.
        DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t304->has = abap_true.
        t304->value = t302.
        t300 = t304.
        t292 = t293->get_object( i_type_9913 = t295 i_name = t300 ).
        DATA t306 TYPE REF TO object.
        t306 = t292.
        t291 ?= t306.
        t290 = t291.
        DATA t307 TYPE REF TO zif_lnt_class_definition.
        DATA t308 TYPE abap_bool.
        t308 = xsdbool( t290 IS BOUND ).
        IF t308 = abap_true.
          DATA t310 TYPE REF TO zif_lnt_class_definition.
          DATA t311 TYPE REF TO zcl_lnt_class.
          t311 = t290.
          t310 = t311->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t307 = t310.
        ELSE.
          CLEAR t307.
        ENDIF.
        t281 = t307.
      ENDIF.
      t257 = t281.
    ENDIF.
    t248 = t257.
    DATA t314 TYPE abap_bool.
    t314 = xsdbool( t248 IS BOUND ).
    IF t314 = abap_true.
      DATA t317 TYPE REF TO zcl_lnt_current_scope.
      t317 = t2->scope.
      DATA t319 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t323 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t324 TYPE REF TO zcl_lnt_position.
      DATA(t325) = CONV f( 1 ).
      DATA(t326) = CONV f( 1 ).
      DATA(t327) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t327->has = abap_true.
      t327->value = t326.
      t324 = NEW zcl_lnt_position( i_row = t325 i_col = t327 ).
      DATA(t328) = |super|.
      t323 = NEW zcl_lnt_lx_identifier( i_start = t324 i_str = t328 ).
      DATA(t329) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t330 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t331 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t332 TYPE REF TO zif_lnt_class_definition.
      t332 = t248.
      t331 ?= t332.
      DATA t334 TYPE REF TO zcl_lnt_abstract_type_data.
      t330 = NEW zcl_lnt_object_reference_type( i_id = t331 i_extra = t334 ).
      DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t322 = NEW zcl_lnt_typed_identifier( i_token = t323 i_filename = t329 i_type_9913 = t330 i_meta = t335 i_value = t336 ).
      t319 = t322.
      DATA(t338) = VALUE abap_bool( ).
      DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t338 = xsdbool( t319 IS INITIAL ).
      IF t338 = abap_true.
      ELSE.
        DATA(t346) = VALUE string( ).
        DATA t347 TYPE REF TO zcl_lnt_fi_identifier.
        t347 = t319.
        DATA(t350) = VALUE string( ).
        DATA t351 TYPE string.
        DATA t354 TYPE REF TO zcl_lnt_abstract_token.
        t354 = t347->token.
        DATA t356 TYPE string.
        t356 = t354->str.
        t351 = t356.
        DATA(t358) = VALUE abap_bool( ).
        DATA(t359) = VALUE string( ).
        DATA(t360) = t351.
        DATA(t361) = 0.
        DATA(t362) = 1.
        DATA(t363) = strlen( t360 ).
        IF t361 < 0.
          t361 = t361 + t363.
          IF t361 < 0.
            t361 = 0.
          ENDIF.
        ENDIF.
        IF t361 > t363 OR t362 <= 0.
          CLEAR t359.
        ELSE.
          IF t362 > t363 - t361.
            t362 = t363 - t361.
          ENDIF.
          t359 = t360+t361(t362).
        ENDIF.
        DATA(t364) = |!|.
        t358 = xsdbool( t359 = t364 ).
        IF t358 = abap_true.
          DATA(t365) = VALUE string( ).
          DATA t366 TYPE string.
          t366 = t351.
          DATA(t368) = VALUE string( ).
          DATA(t370) = 1.
          DATA t371 TYPE i.
          t371 = strlen( t366 ).
          DATA(t374) = strlen( t366 ).
          IF t370 < 0.
            t370 = t370 + t374.
            IF t370 < 0.
              t370 = 0.
            ENDIF.
          ENDIF.
          IF t370 > t374 OR t371 <= 0.
            CLEAR t368.
          ELSE.
            IF t371 > t374 - t370.
              t371 = t374 - t370.
            ENDIF.
            t368 = t366+t370(t371).
          ENDIF.
          t365 = t368.
          t351 = t365.
        ENDIF.
        t350 = t351.
        t346 = t350.
        DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
        t376 = t319.
        t317->add_named_identifier( i_name = t346 i_identifier = t376 ).
      ENDIF.
    ELSE.
      DATA t379 TYPE REF TO zcl_lnt_current_scope.
      t379 = t2->scope.
      DATA t381 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t384 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t385 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t386 TYPE REF TO zcl_lnt_position.
      DATA(t387) = CONV f( 1 ).
      DATA(t388) = CONV f( 1 ).
      DATA(t389) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t389->has = abap_true.
      t389->value = t388.
      t386 = NEW zcl_lnt_position( i_row = t387 i_col = t389 ).
      DATA(t390) = |super|.
      t385 = NEW zcl_lnt_lx_identifier( i_start = t386 i_str = t390 ).
      DATA(t391) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t392 TYPE REF TO zcl_lnt_void_type.
      DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t395) = |noSuperClass|.
      DATA(t396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t396->has = abap_true.
      t396->value = t395.
      t393 = t396.
      DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t392 = zcl_lnt_void_type=>get_db65( i_voided = t393 i_qualified_name = t398 ).
      DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t384 = NEW zcl_lnt_typed_identifier( i_token = t385 i_filename = t391 i_type_9913 = t392 i_meta = t399 i_value = t400 ).
      t381 = t384.
      DATA(t402) = VALUE abap_bool( ).
      DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t402 = xsdbool( t381 IS INITIAL ).
      IF t402 = abap_true.
      ELSE.
        DATA(t410) = VALUE string( ).
        DATA t411 TYPE REF TO zcl_lnt_fi_identifier.
        t411 = t381.
        DATA(t414) = VALUE string( ).
        DATA t415 TYPE string.
        DATA t418 TYPE REF TO zcl_lnt_abstract_token.
        t418 = t411->token.
        DATA t420 TYPE string.
        t420 = t418->str.
        t415 = t420.
        DATA(t422) = VALUE abap_bool( ).
        DATA(t423) = VALUE string( ).
        DATA(t424) = t415.
        DATA(t425) = 0.
        DATA(t426) = 1.
        DATA(t427) = strlen( t424 ).
        IF t425 < 0.
          t425 = t425 + t427.
          IF t425 < 0.
            t425 = 0.
          ENDIF.
        ENDIF.
        IF t425 > t427 OR t426 <= 0.
          CLEAR t423.
        ELSE.
          IF t426 > t427 - t425.
            t426 = t427 - t425.
          ENDIF.
          t423 = t424+t425(t426).
        ENDIF.
        DATA(t428) = |!|.
        t422 = xsdbool( t423 = t428 ).
        IF t422 = abap_true.
          DATA(t429) = VALUE string( ).
          DATA t430 TYPE string.
          t430 = t415.
          DATA(t432) = VALUE string( ).
          DATA(t434) = 1.
          DATA t435 TYPE i.
          t435 = strlen( t430 ).
          DATA(t438) = strlen( t430 ).
          IF t434 < 0.
            t434 = t434 + t438.
            IF t434 < 0.
              t434 = 0.
            ENDIF.
          ENDIF.
          IF t434 > t438 OR t435 <= 0.
            CLEAR t432.
          ELSE.
            IF t435 > t438 - t434.
              t435 = t438 - t434.
            ENDIF.
            t432 = t430+t434(t435).
          ENDIF.
          t429 = t432.
          t415 = t429.
        ENDIF.
        t414 = t415.
        t410 = t414.
        DATA t440 TYPE REF TO zcl_lnt_typed_identifier.
        t440 = t381.
        t379->add_named_identifier( i_name = t410 i_identifier = t440 ).
      ENDIF.
    ENDIF.
    DATA t443 TYPE REF TO zcl_lnt_current_scope.
    t443 = t2->scope.
    DATA t445 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t448 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t449 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t450 TYPE REF TO zcl_lnt_position.
    DATA(t451) = CONV f( 1 ).
    DATA(t452) = CONV f( 1 ).
    DATA(t453) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t453->has = abap_true.
    t453->value = t452.
    t450 = NEW zcl_lnt_position( i_row = t451 i_col = t453 ).
    DATA(t454) = |me|.
    t449 = NEW zcl_lnt_lx_identifier( i_start = t450 i_str = t454 ).
    DATA(t455) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t456 TYPE REF TO zcl_lnt_object_reference_type.
    DATA t457 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t458 TYPE REF TO zif_lnt_class_definition.
    t458 = t86.
    t457 ?= t458.
    DATA t460 TYPE REF TO zcl_lnt_abstract_type_data.
    t456 = NEW zcl_lnt_object_reference_type( i_id = t457 i_extra = t460 ).
    DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t448 = NEW zcl_lnt_typed_identifier( i_token = t449 i_filename = t455 i_type_9913 = t456 i_meta = t461 i_value = t462 ).
    t445 = t448.
    DATA(t464) = VALUE abap_bool( ).
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t464 = xsdbool( t445 IS INITIAL ).
    IF t464 = abap_true.
    ELSE.
      DATA(t472) = VALUE string( ).
      DATA t473 TYPE REF TO zcl_lnt_fi_identifier.
      t473 = t445.
      DATA(t476) = VALUE string( ).
      DATA t477 TYPE string.
      DATA t480 TYPE REF TO zcl_lnt_abstract_token.
      t480 = t473->token.
      DATA t482 TYPE string.
      t482 = t480->str.
      t477 = t482.
      DATA(t484) = VALUE abap_bool( ).
      DATA(t485) = VALUE string( ).
      DATA(t486) = t477.
      DATA(t487) = 0.
      DATA(t488) = 1.
      DATA(t489) = strlen( t486 ).
      IF t487 < 0.
        t487 = t487 + t489.
        IF t487 < 0.
          t487 = 0.
        ENDIF.
      ENDIF.
      IF t487 > t489 OR t488 <= 0.
        CLEAR t485.
      ELSE.
        IF t488 > t489 - t487.
          t488 = t489 - t487.
        ENDIF.
        t485 = t486+t487(t488).
      ENDIF.
      DATA(t490) = |!|.
      t484 = xsdbool( t485 = t490 ).
      IF t484 = abap_true.
        DATA(t491) = VALUE string( ).
        DATA t492 TYPE string.
        t492 = t477.
        DATA(t494) = VALUE string( ).
        DATA(t496) = 1.
        DATA t497 TYPE i.
        t497 = strlen( t492 ).
        DATA(t500) = strlen( t492 ).
        IF t496 < 0.
          t496 = t496 + t500.
          IF t496 < 0.
            t496 = 0.
          ENDIF.
        ENDIF.
        IF t496 > t500 OR t497 <= 0.
          CLEAR t494.
        ELSE.
          IF t497 > t500 - t496.
            t497 = t500 - t496.
          ENDIF.
          t494 = t492+t496(t497).
        ENDIF.
        t491 = t494.
        t477 = t491.
      ENDIF.
      t476 = t477.
      t472 = t476.
      DATA t502 TYPE REF TO zcl_lnt_typed_identifier.
      t502 = t445.
      t443->add_named_identifier( i_name = t472 i_identifier = t502 ).
    ENDIF.
    DATA t505 TYPE REF TO zif_lnt_class_definition.
    t505 = t86.
    t3->add_aliased_attributes( i_class_definition_ad05 = t505 ).
    DATA t508 TYPE REF TO zif_lnt_class_definition.
    t508 = t86.
    t3->add_aliased_types( i_class_definition_ad05 = t508 ).
    DATA t510 TYPE REF TO zif_lnt_attributes.
    DATA t511 TYPE REF TO zif_lnt_attributes.
    DATA t512 TYPE REF TO zif_lnt_class_definition.
    t512 = t86.
    t511 = t512->get_attributes( ).
    t510 = t511.
    DATA(t514) = VALUE abap_bool( ).
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t519) = VALUE abap_bool( ).
    DATA(t520) = xsdbool( t510 IS INITIAL ).
    t519 = xsdbool( t520 = abap_false ).
    t514 = t519.
    IF t514 = abap_true.
      DATA t522 TYPE REF TO zcl_lnt_current_scope.
      t522 = t2->scope.
      DATA t524 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t524 = t510->get_constants( ).
      t522->add_list( i_identifiers = t524 ).
      DATA t526 TYPE REF TO zcl_lnt_current_scope.
      t526 = t2->scope.
      DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t528 = t510->get_static( ).
      t526->add_list( i_identifiers = t528 ).
      DATA t530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t530 = t510->get_instance( ).
      DATA t532 TYPE REF TO zcl_lnt_class_attribute.
      DATA t533 TYPE REF TO object.
      DATA(t534) = VALUE i( ).
      DO.
        t530->load( ).
        IF t534 >= lines( t530->items ).
          EXIT.
        ENDIF.
        CLEAR t533.
        READ TABLE t530->items INDEX t534 + 1 INTO t533.
        t534 = t534 + 1.
        DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t535.
        CLEAR t532.
        IF t533 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t535 ?= t533.
          DATA t536 TYPE REF TO object.
          t536 = t535->as_ref( ).
          t532 ?= t536.
        ELSE.
          t532 ?= t533.
        ENDIF.
        DATA t538 TYPE REF TO zcl_lnt_current_scope.
        t538 = t2->scope.
        DATA t540 TYPE REF TO zcl_lnt_typed_identifier.
        t540 = t532.
        DATA(t542) = VALUE abap_bool( ).
        DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t545.
        t542 = xsdbool( t540 IS INITIAL ).
        IF t542 = abap_true.
        ELSE.
          DATA(t550) = VALUE string( ).
          DATA t551 TYPE REF TO zcl_lnt_fi_identifier.
          t551 = t540.
          DATA(t554) = VALUE string( ).
          DATA t555 TYPE string.
          DATA t558 TYPE REF TO zcl_lnt_abstract_token.
          t558 = t551->token.
          DATA t560 TYPE string.
          t560 = t558->str.
          t555 = t560.
          DATA(t562) = VALUE abap_bool( ).
          DATA(t563) = VALUE string( ).
          DATA(t564) = t555.
          DATA(t565) = 0.
          DATA(t566) = 1.
          DATA(t567) = strlen( t564 ).
          IF t565 < 0.
            t565 = t565 + t567.
            IF t565 < 0.
              t565 = 0.
            ENDIF.
          ENDIF.
          IF t565 > t567 OR t566 <= 0.
            CLEAR t563.
          ELSE.
            IF t566 > t567 - t565.
              t566 = t567 - t565.
            ENDIF.
            t563 = t564+t565(t566).
          ENDIF.
          DATA(t568) = |!|.
          t562 = xsdbool( t563 = t568 ).
          IF t562 = abap_true.
            DATA(t569) = VALUE string( ).
            DATA t570 TYPE string.
            t570 = t555.
            DATA(t572) = VALUE string( ).
            DATA(t574) = 1.
            DATA t575 TYPE i.
            t575 = strlen( t570 ).
            DATA(t578) = strlen( t570 ).
            IF t574 < 0.
              t574 = t574 + t578.
              IF t574 < 0.
                t574 = 0.
              ENDIF.
            ENDIF.
            IF t574 > t578 OR t575 <= 0.
              CLEAR t572.
            ELSE.
              IF t575 > t578 - t574.
                t575 = t578 - t574.
              ENDIF.
              t572 = t570+t574(t575).
            ENDIF.
            t569 = t572.
            t555 = t569.
          ENDIF.
          t554 = t555.
          t550 = t554.
          DATA t580 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t580.
          t580 = t540.
          t538->add_extra_like_type_named( i_name = t550 i_type_9913 = t580 ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t585 TYPE REF TO zcl_lnt_object_oriented.
    t585 = t3.
    DATA t587 TYPE REF TO zif_lnt_class_definition.
    t587 = t86.
    DATA t591 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t591 = t585->from_super_classes( i_child = t587 ).
    DATA t594 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t596 TYPE REF TO zif_lnt_interface_definition.
    t596 ?= t587.
    DATA t598 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t598 = t591.
    t594 = t585->from_interfaces( i_definition = t596 i_skip_34cc = t598 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d872_3bfff898e580.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
