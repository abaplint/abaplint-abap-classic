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
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_void_type.
      t15 ?= t1.
      result = t15.
      RETURN.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_object_oriented.
    DATA t19 TYPE REF TO zcl_lnt_current_scope.
    t19 = t3->scope.
    t17 = NEW zcl_lnt_object_oriented( i_scope = t19 ).
    DATA t21 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
      DATA t25 TYPE REF TO zif_lnt_interface_definition.
      DATA t27 TYPE REF TO zcl_lnt_current_scope.
      t27 = t3->scope.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t35 TYPE REF TO zcl_lnt_object_reference_type.
      t35 ?= t1.
      DATA t42 TYPE string.
      t42 = t35->identifier->token->str.
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
      ELSE.
        IF t53 > t54 - t52.
          t53 = t54 - t52.
        ENDIF.
        t50 = t51+t52(t53).
      ENDIF.
      IF xsdbool( t50 = |!| ) = abap_true.
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
        ELSE.
          IF t62 > t65 - t61.
            t62 = t65 - t61.
          ENDIF.
          t59 = t57+t61(t62).
        ENDIF.
        t42 = t59.
      ENDIF.
      DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t67->has = abap_true.
      t67->value = t42.
      t30 = t67.
      DATA t69 TYPE REF TO zif_lnt_interface_definition.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t71 = t30.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t75) = VALUE abap_bool( ).
      IF t71 IS INITIAL.
        t75 = abap_true.
      ELSEIF t71->has = abap_false.
        t75 = abap_true.
      ENDIF.
      IF t75 = abap_true.
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
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t90 = t81.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t94) = VALUE abap_bool( ).
        IF t90 IS INITIAL.
          t94 = abap_true.
        ELSEIF t90->has = abap_false.
          t94 = abap_true.
        ENDIF.
        IF t94 = abap_true.
        ELSE.
          DATA t98 TYPE REF TO zif_lnt_class_definition.
          DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t100 = t27->current.
          DATA t103 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t100 IS INITIAL ) = abap_true.
          ELSE.
            DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t108 = t100.
            DATA t110 TYPE string.
            t110 = t81->value.
            t103 = t108->find_class_definition( i_name = t110 ).
          ENDIF.
          t98 = t103.
          DATA t112 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t98 IS BOUND ) = abap_true.
            t112 = t98.
          ELSE.
            DATA t121 TYPE REF TO zcl_lnt_class.
            DATA t122 TYPE REF TO zcl_lnt_class.
            DATA t124 TYPE REF TO zif_lnt_registry.
            t124 = t27->reg.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t129->has = abap_true.
            t129->value = |CLAS|.
            t126 = t129.
            DATA t133 TYPE string.
            t133 = t81->value.
            DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t135->has = abap_true.
            t135->value = t133.
            DATA t137 TYPE REF TO object.
            t137 = t124->get_object( i_type_9913 = t126 i_name = t135 ).
            t122 ?= t137.
            t121 = t122.
            DATA t138 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t121 IS BOUND ) = abap_true.
              t138 = t121->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t138.
            ENDIF.
            t112 = t138.
          ENDIF.
          t88 = t112.
        ENDIF.
        t79 = t88.
        DATA t145 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t79 IS BOUND ) = abap_true.
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
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t163 = t154.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t167) = VALUE abap_bool( ).
          IF t163 IS INITIAL.
            t167 = abap_true.
          ELSEIF t163->has = abap_false.
            t167 = abap_true.
          ENDIF.
          IF t167 = abap_true.
          ELSE.
            DATA t171 TYPE REF TO zif_lnt_interface_definition.
            DATA t173 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t173 = t27->current.
            DATA t176 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t173 IS INITIAL ) = abap_true.
            ELSE.
              DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t181 = t173.
              DATA t183 TYPE string.
              t183 = t154->value.
              t176 = t181->find_interface_definition( i_name = t183 ).
            ENDIF.
            t171 = t176.
            DATA t185 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t171 IS BOUND ) = abap_true.
              t185 = t171.
            ELSE.
              DATA t194 TYPE REF TO zcl_lnt_ob_interface.
              DATA t195 TYPE REF TO zcl_lnt_ob_interface.
              DATA t197 TYPE REF TO zif_lnt_registry.
              t197 = t27->reg.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t202->has = abap_true.
              t202->value = |INTF|.
              t199 = t202.
              DATA t206 TYPE string.
              t206 = t154->value.
              DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t208->has = abap_true.
              t208->value = t206.
              DATA t210 TYPE REF TO object.
              t210 = t197->get_object( i_type_9913 = t199 i_name = t208 ).
              t195 ?= t210.
              t194 = t195.
              DATA t211 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t194 IS BOUND ) = abap_true.
                t211 = t194->def.
              ELSE.
                CLEAR t211.
              ENDIF.
              t185 = t211.
            ENDIF.
            t161 = t185.
          ENDIF.
          t152 = t161.
          DATA t221 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t152 IS BOUND ) = abap_true.
            t221 = t152.
          ELSE.
            CLEAR t221.
          ENDIF.
          t145 = t221.
        ENDIF.
        t69 = t145.
      ENDIF.
      t25 = t69.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t25 IS INITIAL ) = abap_true.
        DATA(t237) = VALUE string( ).
        DATA(t239) = VALUE string( ).
        DATA(t240) = |Definition for "|.
        DATA(t241) = VALUE string( ).
        DATA t243 TYPE REF TO zcl_lnt_object_reference_type.
        t243 ?= t1.
        DATA t250 TYPE string.
        t250 = t243->identifier->token->str.
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
        ELSE.
          IF t261 > t262 - t260.
            t261 = t262 - t260.
          ENDIF.
          t258 = t259+t260(t261).
        ENDIF.
        IF xsdbool( t258 = |!| ) = abap_true.
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
          ELSE.
            IF t270 > t273 - t269.
              t270 = t273 - t269.
            ENDIF.
            t267 = t265+t269(t270).
          ENDIF.
          t250 = t267.
        ENDIF.
        t241 = t250.
        DATA(t275) = strlen( t240 ).
        t239 = |{ t240 }{ t241 }|.
        DATA(t277) = strlen( t239 ).
        t237 = |{ t239 }{ |" not found in scope(AttributeName)| }|.
        DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t278 = t3->issues.
        DATA t280 TYPE REF TO zcl_lnt_issue.
        DATA t285 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t280 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t2->get_first_token( ) i_message_26cb = t237 i_fix = t285 ).
        t278->load( ).
        APPEND t280 TO t278->items.
        t278->save( ).
        DATA(t289) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t290->has = abap_true.
        t290->value = t289.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t290 i_qualified_name = t292 ).
        RETURN.
      ENDIF.
      DATA t293 TYPE REF TO zcl_lnt_abstract_token.
      t293 = t2->get_first_token( ).
      DATA t296 TYPE string.
      t296 = t293->str.
      DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t305 TYPE REF TO zif_lnt_interface_definition.
      t305 = t25.
      DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t313->has = abap_true.
      t313->value = t296.
      t302 = t17->search_attribute_name( i_def = t305 i_name = t313 ).
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t302 IS INITIAL ) = abap_true.
        DATA t324 TYPE REF TO zif_lnt_interface_definition.
        t324 = t25.
        DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t332->has = abap_true.
        t332->value = t296.
        t302 = t17->search_constant_name( i_def = t324 i_name = t332 ).
      ENDIF.
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t302 IS INITIAL ) = abap_true.
        DATA t342 TYPE string.
        DATA t343 TYPE string.
        DATA t344 TYPE string.
        DATA t345 TYPE string.
        DATA(t346) = |Attribute or constant "|.
        DATA(t348) = strlen( t346 ).
        t345 = |{ t346 }{ t296 }|.
        DATA(t350) = strlen( t345 ).
        t344 = |{ t345 }{ |" not found in "| }|.
        DATA t351 TYPE string.
        t351 = t25->get_name( ).
        DATA(t354) = strlen( t344 ).
        t343 = |{ t344 }{ t351 }|.
        DATA(t356) = strlen( t343 ).
        t342 = |{ t343 }{ |"| }|.
        IF xsdbool( t5->value = abap_true ) = abap_true.
          DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t361 = t3->issues.
          DATA t363 TYPE REF TO zcl_lnt_issue.
          DATA t368 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t363 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t2->get_first_token( ) i_message_26cb = t342 i_fix = t368 ).
          t361->load( ).
          APPEND t363 TO t361->items.
          t361->save( ).
        ENDIF.
        DATA(t372) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t373->has = abap_true.
        t373->value = t372.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t373 i_qualified_name = t375 ).
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
        t392 = xsdbool( t396 >= 0 ).
      ENDIF.
      IF t392 = abap_true.
        DATA t401 TYPE REF TO zif_lnt_interface_definition.
        DATA t403 TYPE REF TO zcl_lnt_current_scope.
        t403 = t3->scope.
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
        t406 = t408->get( p0 = 0 ).
        DATA t418 TYPE REF TO zif_lnt_interface_definition.
        DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t420 = t406.
        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t424) = VALUE abap_bool( ).
        IF t420 IS INITIAL.
          t424 = abap_true.
        ELSEIF t420->has = abap_false.
          t424 = abap_true.
        ENDIF.
        IF t424 = abap_true.
        ELSE.
          DATA t428 TYPE REF TO zif_lnt_interface_definition.
          DATA t430 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t430 = t403->current.
          DATA t433 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t430 IS INITIAL ) = abap_true.
          ELSE.
            DATA t438 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t438 = t430.
            DATA t440 TYPE string.
            t440 = t406->value.
            t433 = t438->find_interface_definition( i_name = t440 ).
          ENDIF.
          t428 = t433.
          DATA t442 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t428 IS BOUND ) = abap_true.
            t442 = t428.
          ELSE.
            DATA t451 TYPE REF TO zcl_lnt_ob_interface.
            DATA t452 TYPE REF TO zcl_lnt_ob_interface.
            DATA t454 TYPE REF TO zif_lnt_registry.
            t454 = t403->reg.
            DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t459->has = abap_true.
            t459->value = |INTF|.
            t456 = t459.
            DATA t463 TYPE string.
            t463 = t406->value.
            DATA(t465) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t465->has = abap_true.
            t465->value = t463.
            DATA t467 TYPE REF TO object.
            t467 = t454->get_object( i_type_9913 = t456 i_name = t465 ).
            t452 ?= t467.
            t451 = t452.
            DATA t468 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t451 IS BOUND ) = abap_true.
              t468 = t451->def.
            ELSE.
              CLEAR t468.
            ENDIF.
            t442 = t468.
          ENDIF.
          t418 = t442.
        ENDIF.
        t401 = t418.
        IF xsdbool( t401 IS BOUND ) = abap_true.
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
          CREATE OBJECT t492.
          t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t492->sval = |Object|.
          DATA t494 TYPE string.
          t494 = t3->filename.
          DATA t496 TYPE REF TO zcl_lnt_ireference_extras.
          t480->add_reference( i_usage = t482 i_referencing = t486 i_type_9913 = t492 i_filename = t494 i_extra = t496 ).
        ENDIF.
      ENDIF.
      t21 = t302->type_cba0.
    ELSE.
      IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_reference ) = abap_true.
        DATA t508 TYPE REF TO zcl_lnt_abstract_type.
        DATA t511 TYPE REF TO zcl_lnt_data_reference.
        t511 ?= t1.
        t508 = t511->type_cba0.
        DATA t515 TYPE string.
        t515 = t2->get_first_token( )->str.
        DATA(t522) = VALUE abap_bool( ).
        DATA t523 TYPE abap_bool.
        DATA t524 TYPE abap_bool.
        t524 = xsdbool( t515 = |*| ).
        t523 = t524.
        IF t524 = abap_false.
          t523 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        t522 = t523.
        IF t523 = abap_false.
          t522 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_any_type ).
        ENDIF.
        IF t522 = abap_true.
          result = t508.
          RETURN.
        ENDIF.
        IF xsdbool( xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
          DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t540 = t3->issues.
          DATA t542 TYPE REF TO zcl_lnt_issue.
          DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t542 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t2->get_first_token( ) i_message_26cb = |Data reference not structured| i_fix = t547 ).
          t540->load( ).
          APPEND t542 TO t540->items.
          t540->save( ).
          DATA(t551) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t552) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t552->has = abap_true.
          t552->value = t551.
          DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t552 i_qualified_name = t554 ).
          RETURN.
        ENDIF.
        DATA t557 TYPE REF TO zcl_lnt_structure_type.
        t557 ?= t508.
        DATA t559 TYPE string.
        t559 = t515.
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
        t21 = t562->get( p0 = t564 ).
        DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t21 IS INITIAL ) = abap_true.
          DATA t575 TYPE string.
          DATA t576 TYPE string.
          DATA(t577) = |Component "|.
          DATA(t579) = strlen( t577 ).
          t576 = |{ t577 }{ t515 }|.
          DATA(t581) = strlen( t576 ).
          t575 = |{ t576 }{ |" not found in data reference structure| }|.
          DATA t582 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t582 = t3->issues.
          DATA t584 TYPE REF TO zcl_lnt_issue.
          DATA t589 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t584 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t2->get_first_token( ) i_message_26cb = t575 i_fix = t589 ).
          t582->load( ).
          APPEND t584 TO t582->items.
          t582->save( ).
          DATA(t593) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t594) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t594->has = abap_true.
          t594->value = t593.
          DATA t596 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t594 i_qualified_name = t596 ).
          RETURN.
        ENDIF.
      ELSE.
        DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t599 = t3->issues.
        DATA t601 TYPE REF TO zcl_lnt_issue.
        DATA t606 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t601 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t2->get_first_token( ) i_message_26cb = |Not an object reference, attribute name| i_fix = t606 ).
        t599->load( ).
        APPEND t601 TO t599->items.
        t599->save( ).
        DATA(t610) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t611) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t611->has = abap_true.
        t611->value = t610.
        DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t611 i_qualified_name = t613 ).
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
