* TS: src/abap/5_syntax/statements/raise.ts:14:1 Raise
CLASS zcl_lnt_sy_raise DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_raise IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    t5 = t2->scope.
    t3 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    DATA t7 TYPE REF TO zif_lnt_union_8cd68e5e.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t10 = t1->find_direct_expression( i_type_9913 = t13 ).
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
    ELSE.
      t14 = t10->get_first_token( ).
    ENDIF.
    t8 = t14.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    t23 = t8.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t23 IS INITIAL ) = abap_true.
    ELSE.
      DATA t33 TYPE string.
      t33 = t23->str.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t33.
      t25 = t35.
    ENDIF.
    t21 = t25.
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE abap_bool.
    t37 = xsdbool( t8 IS BOUND ).
    t36 = t37.
    IF t37 = abap_true.
      DATA(t39) = VALUE abap_bool( ).
      IF t21 IS BOUND.
        IF t21->has = abap_true.
          t39 = xsdbool( strlen( t21->value ) > 0 ).
        ENDIF.
      ENDIF.
      t36 = t39.
    ENDIF.
    IF t36 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t43 TYPE REF TO zcl_lnt_current_scope.
      t43 = t2->scope.
      DATA t47 TYPE string.
      t47 = t21->value.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = t47.
      t41 = t43->exists_object( i_name = t49 ).
      DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t53 TYPE REF TO zcl_lnt_shape_59e28496.
      t53 = t41.
      DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
      IF xsdbool( t53 IS INITIAL ) = abap_true.
      ELSE.
        t55 = t53->id.
      ENDIF.
      t52 = t55.
      IF xsdbool( t52 IS BOUND ) = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_current_scope.
        t62 = t2->scope.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        t64 = t8.
        DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
        t69 = t41->id.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t76.
        t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t76->sval = |Object|.
        DATA t78 TYPE string.
        t78 = t2->filename.
        DATA t80 TYPE REF TO zcl_lnt_ireference_extras.
        t62->add_reference( i_usage = t64 i_referencing = t69 i_type_9913 = t76 i_filename = t78 i_extra = t80 ).
        DATA t83 TYPE REF TO zcl_lnt_current_scope.
        t83 = t2->scope.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t89 TYPE string.
        t89 = t21->value.
        DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t91->has = abap_true.
        t91->value = t89.
        t86 = t91.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t95 = t86.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t99) = VALUE abap_bool( ).
        IF t95 IS INITIAL.
          t99 = abap_true.
        ELSEIF t95->has = abap_false.
          t99 = abap_true.
        ENDIF.
        IF t99 = abap_true.
        ELSE.
          DATA t103 TYPE REF TO zif_lnt_class_definition.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t108 TYPE string.
          t108 = t86->value.
          DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t110->has = abap_true.
          t110->value = t108.
          t105 = t110.
          DATA t112 TYPE REF TO zif_lnt_class_definition.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t114 = t105.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t118) = VALUE abap_bool( ).
          IF t114 IS INITIAL.
            t118 = abap_true.
          ELSEIF t114->has = abap_false.
            t118 = abap_true.
          ENDIF.
          IF t118 = abap_true.
          ELSE.
            DATA t122 TYPE REF TO zif_lnt_class_definition.
            DATA t124 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t124 = t83->current.
            DATA t127 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t124 IS INITIAL ) = abap_true.
            ELSE.
              DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t132 = t124.
              DATA t134 TYPE string.
              t134 = t105->value.
              t127 = t132->find_class_definition( i_name = t134 ).
            ENDIF.
            t122 = t127.
            DATA t136 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t122 IS BOUND ) = abap_true.
              t136 = t122.
            ELSE.
              DATA t145 TYPE REF TO zcl_lnt_class.
              DATA t146 TYPE REF TO zcl_lnt_class.
              DATA t148 TYPE REF TO zif_lnt_registry.
              t148 = t83->reg.
              DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t153->has = abap_true.
              t153->value = |CLAS|.
              t150 = t153.
              DATA t157 TYPE string.
              t157 = t105->value.
              DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t159->has = abap_true.
              t159->value = t157.
              DATA t161 TYPE REF TO object.
              t161 = t148->get_object( i_type_9913 = t150 i_name = t159 ).
              t146 ?= t161.
              t145 = t146.
              DATA t162 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t145 IS BOUND ) = abap_true.
                t162 = t145->gt_dfn_ins_src_obj_cls_ts_clss( ).
              ELSE.
                CLEAR t162.
              ENDIF.
              t136 = t162.
            ENDIF.
            t112 = t136.
          ENDIF.
          t103 = t112.
          DATA t169 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t103 IS BOUND ) = abap_true.
            DATA t172 TYPE REF TO zif_lnt_interface_definition.
            DATA t173 TYPE REF TO zif_lnt_class_definition.
            t173 = t103.
            t172 ?= t173.
            t169 = t172.
          ELSE.
            DATA t176 TYPE REF TO zif_lnt_interface_definition.
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t181 TYPE string.
            t181 = t86->value.
            DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t183->has = abap_true.
            t183->value = t181.
            t178 = t183.
            DATA t185 TYPE REF TO zif_lnt_interface_definition.
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t187 = t178.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t191) = VALUE abap_bool( ).
            IF t187 IS INITIAL.
              t191 = abap_true.
            ELSEIF t187->has = abap_false.
              t191 = abap_true.
            ENDIF.
            IF t191 = abap_true.
            ELSE.
              DATA t195 TYPE REF TO zif_lnt_interface_definition.
              DATA t197 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t197 = t83->current.
              DATA t200 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t197 IS INITIAL ) = abap_true.
              ELSE.
                DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t205 = t197.
                DATA t207 TYPE string.
                t207 = t178->value.
                t200 = t205->find_interface_definition( i_name = t207 ).
              ENDIF.
              t195 = t200.
              DATA t209 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t195 IS BOUND ) = abap_true.
                t209 = t195.
              ELSE.
                DATA t218 TYPE REF TO zcl_lnt_ob_interface.
                DATA t219 TYPE REF TO zcl_lnt_ob_interface.
                DATA t221 TYPE REF TO zif_lnt_registry.
                t221 = t83->reg.
                DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t226->has = abap_true.
                t226->value = |INTF|.
                t223 = t226.
                DATA t230 TYPE string.
                t230 = t178->value.
                DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t232->has = abap_true.
                t232->value = t230.
                DATA t234 TYPE REF TO object.
                t234 = t221->get_object( i_type_9913 = t223 i_name = t232 ).
                t219 ?= t234.
                t218 = t219.
                DATA t235 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t218 IS BOUND ) = abap_true.
                  t235 = t218->def.
                ELSE.
                  CLEAR t235.
                ENDIF.
                t209 = t235.
              ENDIF.
              t185 = t209.
            ENDIF.
            t176 = t185.
            DATA t245 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t176 IS BOUND ) = abap_true.
              t245 = t176.
            ELSE.
              CLEAR t245.
            ENDIF.
            t169 = t245.
          ENDIF.
          t93 = t169.
        ENDIF.
        DATA t254 TYPE REF TO zif_lnt_union_8cd68e5e.
        DATA t255 TYPE REF TO zif_lnt_method_definition.
        DATA t256 TYPE REF TO zcl_lnt_shape_a38e878f.
        DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t263->has = abap_true.
        t263->value = |CONSTRUCTOR|.
        t256 = t3->search_method_name( i_def = t93 i_name = t263 ).
        DATA t265 TYPE REF TO zif_lnt_method_definition.
        IF xsdbool( t256 IS INITIAL ) = abap_true.
        ELSE.
          t265 = t256->method.
        ENDIF.
        t255 = t265.
        t254 ?= t255.
        t7 = t254.
      ELSE.
        DATA t278 TYPE REF TO zcl_lnt_ddic.
        DATA t279 TYPE REF TO zif_lnt_registry.
        t279 = t2->scope->reg.
        t278 = NEW zcl_lnt_ddic( i_reg_f149 = t279 ).
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t284 TYPE string.
        t284 = t21->value.
        DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t286->has = abap_true.
        t286->value = t284.
        t281 = t286.
        DATA(t288) = VALUE abap_bool( ).
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t290 = t281.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t294) = VALUE abap_bool( ).
        IF t290 IS INITIAL.
          t294 = abap_true.
        ELSEIF t290->has = abap_false.
          t294 = abap_true.
        ENDIF.
        IF t294 = abap_true.
          t288 = abap_true.
        ELSE.
          DATA t298 TYPE REF TO zif_lnt_registry.
          t298 = t278->reg.
          DATA t300 TYPE string.
          t300 = t281->value.
          t288 = t298->in_error_namespace( i_name = t300 ).
        ENDIF.
        IF xsdbool( t288 = abap_false ) = abap_true.
          DATA t304 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t308 TYPE string.
          t308 = t21->value.
          DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t310->has = abap_true.
          t310->value = t308.
          t305 = t310.
          DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t316->has = abap_true.
          t316->value = |Void|.
          DATA t318 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t304 = NEW zcl_lnt_ireference_extras( i_oo_name = t305 i_oo_type = t316 i_found_qualified = t318 ).
          CREATE OBJECT t304->zlnt_view_ownkeys_b0e8086400eb.
          t304->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t304->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t320 ).
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t304->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t304->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t321 ).
          ENDIF.
          CREATE OBJECT t304->zlnt_json_ownkeys_70e5fd461788.
          t304->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t304->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t323 ).
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t304->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t304->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t325 ).
          ENDIF.
          DATA t326 TYPE REF TO zcl_lnt_current_scope.
          t326 = t2->scope.
          DATA t328 TYPE REF TO zcl_lnt_abstract_token.
          t328 = t8.
          DATA t333 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t334->sval = |Object (Void)|.
          DATA t336 TYPE string.
          t336 = t2->filename.
          t326->add_reference( i_usage = t328 i_referencing = t333 i_type_9913 = t334 i_filename = t336 i_extra = t304 ).
          DATA t345 TYPE string.
          t345 = t21->value.
          DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t347->has = abap_true.
          t347->value = t345.
          DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t7 = zcl_lnt_void_type=>get_db65( i_voided = t347 i_qualified_name = t349 ).
        ELSE.
          DATA t351 TYPE string.
          DATA(t352) = |RAISE, unknown class |.
          DATA t353 TYPE string.
          t353 = t21->value.
          DATA(t355) = strlen( t352 ).
          t351 = |{ t352 }{ t353 }|.
          DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t356 = t2->issues.
          DATA t358 TYPE REF TO zcl_lnt_issue.
          DATA t363 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t358 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t8 i_message_26cb = t351 i_fix = t363 ).
          t356->load( ).
          APPEND t358 TO t356->items.
          t356->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t7 IS INITIAL ) = abap_true.
        DATA t374 TYPE string.
        t374 = t21->value.
        DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t376->has = abap_true.
        t376->value = t374.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t7 = zcl_lnt_void_type=>get_db65( i_voided = t376 i_qualified_name = t378 ).
      ENDIF.
    ENDIF.
    DATA t379 TYPE REF TO zcl_lnt_expression_node.
    t379 = t1->find_expression_after_token( i_text = |EXCEPTION| ).
    DATA t383 TYPE abap_bool.
    DATA t384 TYPE abap_bool.
    t384 = xsdbool( t379 IS BOUND AND t379 IS INSTANCE OF zcl_lnt_expression_node ).
    t383 = t384.
    IF t384 = abap_true.
      DATA t386 TYPE abap_bool.
      DATA t387 TYPE abap_bool.
      DATA t388 TYPE REF TO zif_lnt_statement_runnable.
      t388 = t379->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t387 = xsdbool( t388 IS BOUND AND t388 IS INSTANCE OF zcl_lnt_simple_source2 ).
      t386 = t387.
      IF t387 = abap_false.
        DATA t392 TYPE REF TO zif_lnt_statement_runnable.
        t392 = t379->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t386 = xsdbool( t392 IS BOUND AND t392 IS INSTANCE OF zcl_lnt_st_source ).
      ENDIF.
      t383 = t386.
    ENDIF.
    IF t383 = abap_true.
      DATA t395 TYPE REF TO zcl_lnt_abstract_type.
      DATA t403 TYPE REF TO zcl_lnt_abstract_type.
      DATA t404 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t395 = zcl_lnt_sy_source=>run_syntax( i_node = t379 i_input_967e = t2 i_target_type = t403 i_write_reference = t404 i_allow_generic_deference = t405 i_read_reference = t406 ).
      IF xsdbool( t395 IS BOUND AND t395 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
        DATA t409 TYPE REF TO zcl_lnt_void_type.
        t409 ?= t395.
        t7 = t409.
      ELSE.
        IF xsdbool( t395 IS BOUND AND t395 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
          DATA t415 TYPE REF TO zcl_lnt_current_scope.
          t415 = t2->scope.
          DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t423 TYPE REF TO zcl_lnt_object_reference_type.
          t423 ?= t395.
          DATA t430 TYPE string.
          t430 = t423->identifier->token->str.
          DATA(t438) = VALUE string( ).
          DATA(t439) = t430.
          DATA(t440) = 0.
          DATA(t441) = 1.
          DATA(t442) = strlen( t439 ).
          IF t440 < 0.
            t440 = t440 + t442.
            IF t440 < 0.
              t440 = 0.
            ENDIF.
          ENDIF.
          IF t440 > t442 OR t441 <= 0.
          ELSE.
            IF t441 > t442 - t440.
              t441 = t442 - t440.
            ENDIF.
            t438 = t439+t440(t441).
          ENDIF.
          IF xsdbool( t438 = |!| ) = abap_true.
            DATA t445 TYPE string.
            t445 = t430.
            DATA(t447) = VALUE string( ).
            DATA(t449) = 1.
            DATA t450 TYPE i.
            t450 = strlen( t445 ).
            DATA(t453) = strlen( t445 ).
            IF t449 < 0.
              t449 = t449 + t453.
              IF t449 < 0.
                t449 = 0.
              ENDIF.
            ENDIF.
            IF t449 > t453 OR t450 <= 0.
            ELSE.
              IF t450 > t453 - t449.
                t450 = t453 - t449.
              ENDIF.
              t447 = t445+t449(t450).
            ENDIF.
            t430 = t447.
          ENDIF.
          DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t455->has = abap_true.
          t455->value = t430.
          t418 = t455.
          DATA t457 TYPE REF TO zif_lnt_interface_definition.
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t459 = t418.
          DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t463) = VALUE abap_bool( ).
          IF t459 IS INITIAL.
            t463 = abap_true.
          ELSEIF t459->has = abap_false.
            t463 = abap_true.
          ENDIF.
          IF t463 = abap_true.
          ELSE.
            DATA t467 TYPE REF TO zif_lnt_class_definition.
            DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t472 TYPE string.
            t472 = t418->value.
            DATA(t474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t474->has = abap_true.
            t474->value = t472.
            t469 = t474.
            DATA t476 TYPE REF TO zif_lnt_class_definition.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t478 = t469.
            DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t482) = VALUE abap_bool( ).
            IF t478 IS INITIAL.
              t482 = abap_true.
            ELSEIF t478->has = abap_false.
              t482 = abap_true.
            ENDIF.
            IF t482 = abap_true.
            ELSE.
              DATA t486 TYPE REF TO zif_lnt_class_definition.
              DATA t488 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t488 = t415->current.
              DATA t491 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t488 IS INITIAL ) = abap_true.
              ELSE.
                DATA t496 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t496 = t488.
                DATA t498 TYPE string.
                t498 = t469->value.
                t491 = t496->find_class_definition( i_name = t498 ).
              ENDIF.
              t486 = t491.
              DATA t500 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t486 IS BOUND ) = abap_true.
                t500 = t486.
              ELSE.
                DATA t509 TYPE REF TO zcl_lnt_class.
                DATA t510 TYPE REF TO zcl_lnt_class.
                DATA t512 TYPE REF TO zif_lnt_registry.
                t512 = t415->reg.
                DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t517) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t517->has = abap_true.
                t517->value = |CLAS|.
                t514 = t517.
                DATA t521 TYPE string.
                t521 = t469->value.
                DATA(t523) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t523->has = abap_true.
                t523->value = t521.
                DATA t525 TYPE REF TO object.
                t525 = t512->get_object( i_type_9913 = t514 i_name = t523 ).
                t510 ?= t525.
                t509 = t510.
                DATA t526 TYPE REF TO zif_lnt_class_definition.
                IF xsdbool( t509 IS BOUND ) = abap_true.
                  t526 = t509->gt_dfn_ins_src_obj_cls_ts_clss( ).
                ELSE.
                  CLEAR t526.
                ENDIF.
                t500 = t526.
              ENDIF.
              t476 = t500.
            ENDIF.
            t467 = t476.
            DATA t533 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t467 IS BOUND ) = abap_true.
              DATA t536 TYPE REF TO zif_lnt_interface_definition.
              DATA t537 TYPE REF TO zif_lnt_class_definition.
              t537 = t467.
              t536 ?= t537.
              t533 = t536.
            ELSE.
              DATA t540 TYPE REF TO zif_lnt_interface_definition.
              DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t545 TYPE string.
              t545 = t418->value.
              DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t547->has = abap_true.
              t547->value = t545.
              t542 = t547.
              DATA t549 TYPE REF TO zif_lnt_interface_definition.
              DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t551 = t542.
              DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t555) = VALUE abap_bool( ).
              IF t551 IS INITIAL.
                t555 = abap_true.
              ELSEIF t551->has = abap_false.
                t555 = abap_true.
              ENDIF.
              IF t555 = abap_true.
              ELSE.
                DATA t559 TYPE REF TO zif_lnt_interface_definition.
                DATA t561 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t561 = t415->current.
                DATA t564 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t561 IS INITIAL ) = abap_true.
                ELSE.
                  DATA t569 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t569 = t561.
                  DATA t571 TYPE string.
                  t571 = t542->value.
                  t564 = t569->find_interface_definition( i_name = t571 ).
                ENDIF.
                t559 = t564.
                DATA t573 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t559 IS BOUND ) = abap_true.
                  t573 = t559.
                ELSE.
                  DATA t582 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t583 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t585 TYPE REF TO zif_lnt_registry.
                  t585 = t415->reg.
                  DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t590) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t590->has = abap_true.
                  t590->value = |INTF|.
                  t587 = t590.
                  DATA t594 TYPE string.
                  t594 = t542->value.
                  DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t596->has = abap_true.
                  t596->value = t594.
                  DATA t598 TYPE REF TO object.
                  t598 = t585->get_object( i_type_9913 = t587 i_name = t596 ).
                  t583 ?= t598.
                  t582 = t583.
                  DATA t599 TYPE REF TO zif_lnt_interface_definition.
                  IF xsdbool( t582 IS BOUND ) = abap_true.
                    t599 = t582->def.
                  ELSE.
                    CLEAR t599.
                  ENDIF.
                  t573 = t599.
                ENDIF.
                t549 = t573.
              ENDIF.
              t540 = t549.
              DATA t609 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t540 IS BOUND ) = abap_true.
                t609 = t540.
              ELSE.
                CLEAR t609.
              ENDIF.
              t533 = t609.
            ENDIF.
            t457 = t533.
          ENDIF.
          DATA t618 TYPE REF TO zif_lnt_union_8cd68e5e.
          DATA t619 TYPE REF TO zif_lnt_method_definition.
          DATA t620 TYPE REF TO zcl_lnt_shape_a38e878f.
          DATA(t627) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t627->has = abap_true.
          t627->value = |CONSTRUCTOR|.
          t620 = t3->search_method_name( i_def = t457 i_name = t627 ).
          DATA t629 TYPE REF TO zif_lnt_method_definition.
          IF xsdbool( t620 IS INITIAL ) = abap_true.
          ELSE.
            t629 = t620->method.
          ENDIF.
          t619 = t629.
          t618 ?= t619.
          t7 = t618.
        ELSE.
          DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( xsdbool( t395 IS INITIAL ) = abap_false ) = abap_true.
            DATA t644 TYPE string.
            DATA(t645) = |RAISE EXCEPTION, must be object reference, got |.
            DATA t646 TYPE string.
            t646 = t395->zlnt_builtin_clas_3f891b097658( )->name.
            DATA(t650) = strlen( t645 ).
            t644 = |{ t645 }{ t646 }|.
            DATA t651 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t651 = t2->issues.
            DATA t653 TYPE REF TO zcl_lnt_issue.
            DATA t659 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t653 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t379->get_first_token( ) i_message_26cb = t644 i_fix = t659 ).
            t651->load( ).
            APPEND t653 TO t651->items.
            t651->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
      DATA(t671) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t671->has = abap_true.
      t671->value = |Exception|.
      DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t7 = zcl_lnt_void_type=>get_db65( i_voided = t671 i_qualified_name = t673 ).
    ENDIF.
    DATA t674 TYPE REF TO zcl_lnt_expression_node.
    DATA(t677) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t674 = t1->find_direct_expression( i_type_9913 = t677 ).
    IF xsdbool( t674 IS BOUND ) = abap_true.
      DATA(t680) = NEW zcl_lnt_sy_method_parameters( ).
      DATA t681 TYPE REF TO zcl_lnt_expression_node.
      t681 = t674.
      DATA t684 TYPE REF TO zif_lnt_union_8cd68e5e.
      t684 = t7.
      DATA(t689) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t689->has = abap_true.
      t689->value = abap_true.
      t680->check_exporting( i_node = t681 i_input_967e = t2 i_method = t684 i_errors = t689 ).
    ENDIF.
    DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t693) = zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d.
    t691 = t1->find_direct_expressions( i_type_9913 = t693 ).
    DATA t694 TYPE REF TO zcl_lnt_expression_node.
    DATA t695 TYPE REF TO object.
    DATA(t696) = VALUE i( ).
    DO.
      t691->load( ).
      IF t696 >= lines( t691->items ).
        EXIT.
      ENDIF.
      CLEAR t695.
      READ TABLE t691->items INDEX t696 + 1 INTO t695.
      t696 = t696 + 1.
      DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t697.
      CLEAR t694.
      IF t695 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t697 ?= t695.
        DATA t698 TYPE REF TO object.
        t698 = t697->as_ref( ).
        t694 ?= t698.
      ELSE.
        t694 ?= t695.
      ENDIF.
      zcl_lnt_sy_raise_with=>run_syntax( i_node = t694 i_input_967e = t2 ).
    ENDDO.
    DATA t701 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t703) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t701 = t1->find_direct_expressions( i_type_9913 = t703 ).
    DATA t704 TYPE REF TO zcl_lnt_expression_node.
    DATA t705 TYPE REF TO object.
    DATA(t706) = VALUE i( ).
    DO.
      t701->load( ).
      IF t706 >= lines( t701->items ).
        EXIT.
      ENDIF.
      CLEAR t705.
      READ TABLE t701->items INDEX t706 + 1 INTO t705.
      t706 = t706 + 1.
      DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t707.
      CLEAR t704.
      IF t705 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t707 ?= t705.
        DATA t708 TYPE REF TO object.
        t708 = t707->as_ref( ).
        t704 ?= t708.
      ELSE.
        t704 ?= t705.
      ENDIF.
      DATA t709 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t709.
      DATA t710 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t710.
      t710 = t704.
      DATA t715 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t715.
      DATA t716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t716.
      DATA t717 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t717.
      DATA t718 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t718.
      t709 = zcl_lnt_sy_source=>run_syntax( i_node = t710 i_input_967e = t2 i_target_type = t715 i_write_reference = t716 i_allow_generic_deference = t717 i_read_reference = t718 ).
    ENDDO.
    DATA t719 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t721) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    t719 = t1->find_direct_expressions( i_type_9913 = t721 ).
    DATA t722 TYPE REF TO zcl_lnt_expression_node.
    DATA t723 TYPE REF TO object.
    DATA(t724) = VALUE i( ).
    DO.
      t719->load( ).
      IF t724 >= lines( t719->items ).
        EXIT.
      ENDIF.
      CLEAR t723.
      READ TABLE t719->items INDEX t724 + 1 INTO t723.
      t724 = t724 + 1.
      DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t725.
      CLEAR t722.
      IF t723 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t725 ?= t723.
        DATA t726 TYPE REF TO object.
        t726 = t725->as_ref( ).
        t722 ?= t726.
      ELSE.
        t722 ?= t723.
      ENDIF.
      DATA t727 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t727.
      DATA t728 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t728.
      t728 = t722.
      DATA t733 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t733.
      DATA t734 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t734.
      DATA t735 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t735.
      DATA t736 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t736.
      t727 = zcl_lnt_sy_source=>run_syntax( i_node = t728 i_input_967e = t2 i_target_type = t733 i_write_reference = t734 i_allow_generic_deference = t735 i_read_reference = t736 ).
    ENDDO.
    DATA t737 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t739) = zlnt_runtime_desc_78196487750d=>zlnt_member_d218_79f2a1395386.
    t737 = t1->find_direct_expressions( i_type_9913 = t739 ).
    DATA t740 TYPE REF TO zcl_lnt_expression_node.
    DATA t741 TYPE REF TO object.
    DATA(t742) = VALUE i( ).
    DO.
      t737->load( ).
      IF t742 >= lines( t737->items ).
        EXIT.
      ENDIF.
      CLEAR t741.
      READ TABLE t737->items INDEX t742 + 1 INTO t741.
      t742 = t742 + 1.
      DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t743.
      CLEAR t740.
      IF t741 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t743 ?= t741.
        DATA t744 TYPE REF TO object.
        t744 = t743->as_ref( ).
        t740 ?= t744.
      ELSE.
        t740 ?= t741.
      ENDIF.
      zcl_lnt_sy_message_source=>run_syntax( i_node = t740 i_input_967e = t2 ).
    ENDDO.
    DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t749 TYPE REF TO zcl_lnt_expression_node.
    t749 = t1->find_expression_after_token( i_text = |ID| ).
    DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t749 IS INITIAL ) = abap_true.
    ELSE.
      DATA t757 TYPE string.
      t757 = t749->concat_tokens( ).
      DATA(t760) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t760->has = abap_true.
      t760->value = t757.
      t753 = t760.
    ENDIF.
    t747 = t753.
    DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t763 TYPE REF TO zcl_lnt_expression_node.
    DATA(t766) = zlnt_runtime_desc_78196487750d=>zlnt_member_d216_5867c1ce5807.
    t763 = t1->find_direct_expression( i_type_9913 = t766 ).
    DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t763 IS INITIAL ) = abap_true.
    ELSE.
      DATA t771 TYPE string.
      t771 = t763->concat_tokens( ).
      DATA(t774) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t774->has = abap_true.
      t774->value = t771.
      t767 = t774.
    ENDIF.
    t761 = t767.
    DATA t776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t776 = t761.
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t780) = VALUE abap_bool( ).
    IF t776 IS INITIAL.
      t780 = abap_true.
    ELSEIF t776->has = abap_false.
      t780 = abap_true.
    ENDIF.
    IF t780 = abap_true.
      DATA t782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t784 TYPE REF TO zcl_lnt_expression_node.
      t784 = t1->find_expression_after_token( i_text = |NUMBER| ).
      DATA t788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t784 IS INITIAL ) = abap_true.
      ELSE.
        DATA t792 TYPE string.
        t792 = t784->concat_tokens( ).
        DATA(t795) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t795->has = abap_true.
        t795->value = t792.
        t788 = t795.
      ENDIF.
      t782 = t788.
      DATA(t796) = VALUE abap_bool( ).
      DATA t797 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t798 = t782.
      DATA t800 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t801) = VALUE abap_bool( ).
      IF t798 IS INITIAL.
        t801 = abap_true.
      ELSEIF t798->has = abap_false.
        t801 = abap_true.
      ENDIF.
      IF t801 = abap_true.
      ELSE.
        DATA(t804) = VALUE abap_bool( ).
        DATA t805 TYPE string.
        t805 = t798->value.
        DATA(t807) = |'|.
        DATA(t808) = strlen( t805 ).
        DATA t809 TYPE i.
        DATA(t810) = VALUE i( ).
        DATA(t811) = VALUE string( ).
        t809 = strlen( t807 ).
        IF t809 = 0.
          t804 = abap_true.
        ELSEIF t809 <= t808.
          t810 = 0.
          t811 = t805+t810(t809).
          IF t811 = t807.
            t804 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t812) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t812->has = abap_true.
        t812->value = t804.
        t800 = t812.
      ENDIF.
      t797 = t800.
      IF t797 IS BOUND.
        IF t797->has = abap_true.
          t796 = xsdbool( t797->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t796 = abap_true.
        DATA(t815) = VALUE string( ).
        DATA(t816) = VALUE string( ).
        DATA t817 TYPE string.
        t817 = t782->value.
        DATA(t819) = 1.
        DATA t820 TYPE i.
        DATA t821 TYPE i.
        t821 = strlen( t782->value ).
        DATA(t825) = 1.
        t820 = t821 - t825.
        DATA(t826) = strlen( t817 ).
        t819 = COND i( WHEN t819 < 0 THEN 0 WHEN t819 > t826 THEN t826 ELSE t819 ).
        t820 = COND i( WHEN t820 < 0 THEN 0 WHEN t820 > t826 THEN t826 ELSE t820 ).
        IF t819 > t820.
          t826 = t819.
          t819 = t820.
          t820 = t826.
        ENDIF.
        t826 = t820 - t819.
        t816 = t817+t819(t826).
        DATA(t827) = strlen( t816 ).
        t815 = t816.
        IF t815 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t815 TO UPPER CASE.
        ELSE.
          t815 = zlnt_runtime_uppe_91169605024d=>full( t815 ).
        ENDIF.
        DATA(t828) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t828->has = abap_true.
        t828->value = t815.
        t761 = t828.
      ENDIF.
    ENDIF.
    DATA(t830) = VALUE abap_bool( ).
    DATA(t831) = VALUE abap_bool( ).
    DATA t832 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t833 = t747.
    DATA t835 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t836) = VALUE abap_bool( ).
    IF t833 IS INITIAL.
      t836 = abap_true.
    ELSEIF t833->has = abap_false.
      t836 = abap_true.
    ENDIF.
    IF t836 = abap_true.
    ELSE.
      DATA(t839) = VALUE abap_bool( ).
      DATA t840 TYPE string.
      t840 = t833->value.
      DATA(t842) = |'|.
      DATA(t843) = strlen( t840 ).
      DATA t844 TYPE i.
      DATA(t845) = VALUE i( ).
      DATA(t846) = VALUE string( ).
      t844 = strlen( t842 ).
      IF t844 = 0.
        t839 = abap_true.
      ELSEIF t844 <= t843.
        t845 = 0.
        t846 = t840+t845(t844).
        IF t846 = t842.
          t839 = abap_true.
        ENDIF.
      ENDIF.
      DATA(t847) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t847->has = abap_true.
      t847->value = t839.
      t835 = t847.
    ENDIF.
    t832 = t835.
    IF t832 IS BOUND.
      IF t832->has = abap_true.
        t831 = xsdbool( t832->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t830 = t831.
    IF t831 = abap_true.
      DATA(t848) = VALUE abap_bool( ).
      IF t761 IS BOUND.
        IF t761->has = abap_true.
          t848 = xsdbool( strlen( t761->value ) > 0 ).
        ENDIF.
      ENDIF.
      t830 = t848.
    ENDIF.
    IF t830 = abap_true.
      DATA(t850) = VALUE string( ).
      DATA(t851) = VALUE string( ).
      DATA(t852) = VALUE string( ).
      DATA t853 TYPE string.
      t853 = t747->value.
      DATA(t855) = 1.
      DATA t856 TYPE i.
      DATA t857 TYPE i.
      t857 = strlen( t747->value ).
      DATA(t861) = 1.
      t856 = t857 - t861.
      DATA(t862) = strlen( t853 ).
      t855 = COND i( WHEN t855 < 0 THEN 0 WHEN t855 > t862 THEN t862 ELSE t855 ).
      t856 = COND i( WHEN t856 < 0 THEN 0 WHEN t856 > t862 THEN t862 ELSE t856 ).
      IF t855 > t856.
        t862 = t855.
        t855 = t856.
        t856 = t862.
      ENDIF.
      t862 = t856 - t855.
      t852 = t853+t855(t862).
      DATA(t863) = strlen( t852 ).
      t851 = t852.
      IF t851 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t851 TO UPPER CASE.
      ELSE.
        t851 = zlnt_runtime_uppe_91169605024d=>full( t851 ).
      ENDIF.
      t850 = t851.
      DATA t864 TYPE REF TO zif_lnt_msag_references.
      t864 = t2->scope->reg->get_msag_references( ).
      DATA t871 TYPE string.
      t871 = t2->filename.
      DATA t873 TYPE REF TO zcl_lnt_abstract_token.
      t873 = t1->get_first_token( ).
      DATA t876 TYPE string.
      t876 = t761->value.
      t864->add_using( i_filename = t871 i_token = t873 i_message_class = t850 i_number = t876 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d942_3216565cd4c4.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
