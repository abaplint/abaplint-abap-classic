* TS: src/abap/5_syntax/expressions/new_object.ts:17:1 NewObject
CLASS zcl_lnt_sy_new_object DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS parameters IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_obj_1ed0 TYPE REF TO zcl_lnt_object_reference_type i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS default_importing_type IMPORTING i_method TYPE REF TO zif_lnt_method_definition RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_new_object IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t6 = t1->find_direct_expression( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    t12 = t6.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
    ELSE.
      t14 = t12->get_first_token( ).
    ENDIF.
    t10 = t14.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = |NewObject, child TypeNameOrInfer not found|.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t33 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t29.
      TRY.
          t28->source_value ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28->source_value IS NOT BOUND.
        TRY.
            t35 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t28->source_value = t35->source( ).
        ENDIF.
        IF t28->source_value IS NOT BOUND.
          CREATE OBJECT t28->source_value.
          t28->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->source_value->oval = t29.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zcl_lnt_expression_node.
    t39 = t6.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t39 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t45) = VALUE string( ).
      t45 = t39->concat_tokens( ).
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t45.
      t41 = t48.
    ENDIF.
    t37 = t41.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t50 = t37.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = VALUE abap_bool( ).
    IF t50 IS INITIAL.
      t54 = abap_true.
    ELSEIF t50->has = abap_false.
      t54 = abap_true.
    ENDIF.
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t57 TYPE REF TO zcx_lnt_assert_error.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = |NewObject, child TypeNameOrInfer not found|.
      t57 = NEW zcx_lnt_assert_error( i_message_26cb = t61 ).
      t56 = NEW #( ).
      t56->payload = t57.
      CLEAR t56->source_value.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t57.
      TRY.
          t56->source_value ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56->source_value IS NOT BOUND.
        TRY.
            t63 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t56->source_value = t63->source( ).
        ENDIF.
        IF t56->source_value IS NOT BOUND.
          CREATE OBJECT t56->source_value.
          t56->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->source_value->oval = t57.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t56.
    ENDIF.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE abap_bool( ).
    t67 = xsdbool( t37->value = |#| ).
    t66 = t67.
    IF t67 = abap_true.
      t66 = xsdbool( t3 IS BOUND ).
    ENDIF.
    t65 = t66.
    IF t66 = abap_true.
      t65 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_object_reference_type ).
    ENDIF.
    IF t65 = abap_true.
      DATA t75 TYPE REF TO zif_lnt_class_definition.
      DATA t77 TYPE REF TO zcl_lnt_current_scope.
      t77 = t2->scope.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t85 TYPE REF TO zcl_lnt_object_reference_type.
      t85 ?= t3.
      DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
      t89 = t85->identifier.
      DATA(t92) = VALUE string( ).
      t92 = t89->token->str.
      DATA(t100) = VALUE string( ).
      DATA(t101) = t92.
      DATA(t102) = 0.
      DATA(t103) = 1.
      DATA(t104) = strlen( t101 ).
      IF t102 < 0.
        t102 = t102 + t104.
        IF t102 < 0.
          t102 = 0.
        ENDIF.
      ENDIF.
      IF t102 > t104 OR t103 <= 0.
      ELSE.
        IF t103 > t104 - t102.
          t103 = t104 - t102.
        ENDIF.
        t100 = t101+t102(t103).
      ENDIF.
      IF xsdbool( t100 = |!| ) = abap_true.
        DATA(t107) = VALUE string( ).
        t107 = t92.
        DATA(t109) = VALUE string( ).
        DATA(t111) = 1.
        DATA(t112) = VALUE i( ).
        t112 = strlen( t107 ).
        DATA(t115) = strlen( t107 ).
        IF t111 < 0.
          t111 = t111 + t115.
          IF t111 < 0.
            t111 = 0.
          ENDIF.
        ENDIF.
        IF t111 > t115 OR t112 <= 0.
        ELSE.
          IF t112 > t115 - t111.
            t112 = t115 - t111.
          ENDIF.
          t109 = t107+t111(t112).
        ENDIF.
        t92 = t109.
      ENDIF.
      DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t117->has = abap_true.
      t117->value = t92.
      t80 = t117.
      DATA t119 TYPE REF TO zif_lnt_class_definition.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t121 = t80.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t125) = VALUE abap_bool( ).
      IF t121 IS INITIAL.
        t125 = abap_true.
      ELSEIF t121->has = abap_false.
        t125 = abap_true.
      ENDIF.
      IF t125 = abap_true.
      ELSE.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t131 = t77->current.
        DATA t134 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t131 IS INITIAL ) = abap_true.
        ELSE.
          DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t139 = t131.
          DATA(t141) = VALUE string( ).
          t141 = t80->value.
          t134 = t139->find_class_definition( i_name = t141 ).
        ENDIF.
        t129 = t134.
        DATA t143 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t129 IS BOUND ) = abap_true.
          t143 = t129.
        ELSE.
          DATA t152 TYPE REF TO zcl_lnt_class.
          DATA t153 TYPE REF TO zcl_lnt_class.
          DATA t155 TYPE REF TO zif_lnt_registry.
          t155 = t77->reg.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t160->has = abap_true.
          t160->value = |CLAS|.
          t157 = t160.
          DATA(t164) = VALUE string( ).
          t164 = t80->value.
          DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t166->has = abap_true.
          t166->value = t164.
          DATA t168 TYPE REF TO object.
          t168 = t155->get_object( i_type_9913 = t157 i_name = t166 ).
          t153 ?= t168.
          t152 = t153.
          DATA t169 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t152 IS BOUND ) = abap_true.
            t169 = t152->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t169.
          ENDIF.
          t143 = t169.
        ENDIF.
        t119 = t143.
      ENDIF.
      t75 = t119.
      IF xsdbool( t75 IS BOUND ) = abap_true.
        DATA t179 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t180 TYPE REF TO zcl_lnt_abstract_token.
        t180 = t10.
        DATA(t182) = VALUE string( ).
        t182 = t2->filename.
        DATA t184 TYPE REF TO zcl_lnt_object_reference_type.
        t184 ?= t3.
        DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t179 = NEW zcl_lnt_typed_identifier( i_token = t180 i_filename = t182 i_type_9913 = t184 i_meta = t186 i_value = t187 ).
        DATA t188 TYPE REF TO zcl_lnt_current_scope.
        t188 = t2->scope.
        DATA t190 TYPE REF TO zcl_lnt_abstract_token.
        t190 = t10.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t196.
        t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t196->sval = |Inferred Type|.
        DATA(t198) = VALUE string( ).
        t198 = t2->filename.
        DATA t200 TYPE REF TO zcl_lnt_ireference_extras.
        t188->add_reference( i_usage = t190 i_referencing = t179 i_type_9913 = t196 i_filename = t198 i_extra = t200 ).
        DATA t201 TYPE REF TO zcl_lnt_current_scope.
        t201 = t2->scope.
        DATA t203 TYPE REF TO zcl_lnt_abstract_token.
        t203 = t10.
        DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t211 TYPE REF TO zif_lnt_class_definition.
        t211 = t75.
        t210 ?= t211.
        t208 = t210.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t214.
        t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t214->sval = |Constructor Reference|.
        DATA(t216) = VALUE string( ).
        t216 = t2->filename.
        DATA t220 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t224) = VALUE string( ).
        t224 = t75->get_name( ).
        DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t227->has = abap_true.
        t227->value = t224.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t231 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t220 = NEW zcl_lnt_ireference_extras( i_oo_name = t227 i_oo_type = t229 i_found_qualified = t231 ).
        CREATE OBJECT t220->zlnt_view_ownkeys_b0e8086400eb.
        t220->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t233 ).
        CREATE OBJECT t220->zlnt_json_ownkeys_70e5fd461788.
        t220->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t235 ).
        t201->add_reference( i_usage = t203 i_referencing = t208 i_type_9913 = t214 i_filename = t216 i_extra = t220 ).
      ELSE.
        DATA t237 TYPE REF TO zif_lnt_interface_definition.
        DATA t239 TYPE REF TO zcl_lnt_current_scope.
        t239 = t2->scope.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t247 TYPE REF TO zcl_lnt_object_reference_type.
        t247 ?= t3.
        DATA t251 TYPE REF TO zcl_lnt_fi_identifier.
        t251 = t247->identifier.
        DATA(t254) = VALUE string( ).
        t254 = t251->token->str.
        DATA(t262) = VALUE string( ).
        DATA(t263) = t254.
        DATA(t264) = 0.
        DATA(t265) = 1.
        DATA(t266) = strlen( t263 ).
        IF t264 < 0.
          t264 = t264 + t266.
          IF t264 < 0.
            t264 = 0.
          ENDIF.
        ENDIF.
        IF t264 > t266 OR t265 <= 0.
        ELSE.
          IF t265 > t266 - t264.
            t265 = t266 - t264.
          ENDIF.
          t262 = t263+t264(t265).
        ENDIF.
        IF xsdbool( t262 = |!| ) = abap_true.
          DATA(t269) = VALUE string( ).
          t269 = t254.
          DATA(t271) = VALUE string( ).
          DATA(t273) = 1.
          DATA(t274) = VALUE i( ).
          t274 = strlen( t269 ).
          DATA(t277) = strlen( t269 ).
          IF t273 < 0.
            t273 = t273 + t277.
            IF t273 < 0.
              t273 = 0.
            ENDIF.
          ENDIF.
          IF t273 > t277 OR t274 <= 0.
          ELSE.
            IF t274 > t277 - t273.
              t274 = t277 - t273.
            ENDIF.
            t271 = t269+t273(t274).
          ENDIF.
          t254 = t271.
        ENDIF.
        DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t279->has = abap_true.
        t279->value = t254.
        t242 = t279.
        DATA t281 TYPE REF TO zif_lnt_interface_definition.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t283 = t242.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t287) = VALUE abap_bool( ).
        IF t283 IS INITIAL.
          t287 = abap_true.
        ELSEIF t283->has = abap_false.
          t287 = abap_true.
        ENDIF.
        IF t287 = abap_true.
        ELSE.
          DATA t291 TYPE REF TO zif_lnt_interface_definition.
          DATA t293 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t293 = t239->current.
          DATA t296 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t293 IS INITIAL ) = abap_true.
          ELSE.
            DATA t301 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t301 = t293.
            DATA(t303) = VALUE string( ).
            t303 = t242->value.
            t296 = t301->find_interface_definition( i_name = t303 ).
          ENDIF.
          t291 = t296.
          DATA t305 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t291 IS BOUND ) = abap_true.
            t305 = t291.
          ELSE.
            DATA t314 TYPE REF TO zcl_lnt_ob_interface.
            DATA t315 TYPE REF TO zcl_lnt_ob_interface.
            DATA t317 TYPE REF TO zif_lnt_registry.
            t317 = t239->reg.
            DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t322->has = abap_true.
            t322->value = |INTF|.
            t319 = t322.
            DATA(t326) = VALUE string( ).
            t326 = t242->value.
            DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t328->has = abap_true.
            t328->value = t326.
            DATA t330 TYPE REF TO object.
            t330 = t317->get_object( i_type_9913 = t319 i_name = t328 ).
            t315 ?= t330.
            t314 = t315.
            DATA t331 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t314 IS BOUND ) = abap_true.
              t331 = t314->def.
            ELSE.
              CLEAR t331.
            ENDIF.
            t305 = t331.
          ENDIF.
          t281 = t305.
        ENDIF.
        t237 = t281.
        IF xsdbool( t237 IS BOUND ) = abap_true.
          DATA(t343) = VALUE string( ).
          DATA(t345) = VALUE string( ).
          t345 = t237->get_name( ).
          DATA(t349) = strlen( t345 ).
          t343 = |{ t345 }{ | is an interface, cannot be instantiated| }|.
          DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t350 = t2->issues.
          DATA t352 TYPE REF TO zcl_lnt_issue.
          DATA t357 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t352 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t343 i_fix = t357 ).
          t350->load( ).
          APPEND t352 TO t350->items.
          t350->save( ).
          DATA(t361) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t362->has = abap_true.
          t362->value = t361.
          DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t362 i_qualified_name = t364 ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t365 TYPE REF TO zcl_lnt_object_reference_type.
      t365 ?= t3.
      t4 = t365.
      DATA(t367) = VALUE abap_bool( ).
      DATA t368 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t369 TYPE REF TO zif_lnt_class_definition.
      t369 = t75.
      DATA t371 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      IF xsdbool( t369 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t375) = VALUE abap_bool( ).
        t375 = t369->is_abstract( ).
        DATA(t378) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t378->has = abap_true.
        t378->value = t375.
        t371 = t378.
      ENDIF.
      t368 = t371.
      DATA t379 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t382) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t382->has = abap_true.
      t382->value = abap_true.
      t379 = t382.
      DATA(t384) = VALUE abap_bool( ).
      DATA(t385) = VALUE abap_bool( ).
      IF t368 IS BOUND.
        t384 = t368->has.
      ENDIF.
      IF t379 IS BOUND.
        t385 = t379->has.
      ENDIF.
      IF t384 = t385.
        IF t384 = abap_false.
          t367 = abap_true.
        ELSEIF t368->value = t379->value.
          t367 = abap_true.
        ENDIF.
      ENDIF.
      IF t367 = abap_true.
        DATA(t386) = VALUE string( ).
        DATA(t388) = VALUE string( ).
        t388 = t75->get_name( ).
        DATA(t392) = strlen( t388 ).
        t386 = |{ t388 }{ | is abstract, cannot be instantiated| }|.
        DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t393 = t2->issues.
        DATA t395 TYPE REF TO zcl_lnt_issue.
        DATA t400 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t395 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t386 i_fix = t400 ).
        t393->load( ).
        APPEND t395 TO t393->items.
        t393->save( ).
        DATA(t404) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t405) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t405->has = abap_true.
        t405->value = t404.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t405 i_qualified_name = t407 ).
        RETURN.
      ENDIF.
      IF xsdbool( t75 IS BOUND ) = abap_true.
        DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t410 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t75 i_input_967e = t2 ).
        DATA(t415) = VALUE abap_bool( ).
        IF t410 IS BOUND.
          IF t410->has = abap_true.
            t415 = xsdbool( strlen( t410->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t415 = abap_true.
          DATA t417 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t417 = t2->issues.
          DATA t419 TYPE REF TO zcl_lnt_issue.
          DATA t421 TYPE REF TO zcl_lnt_abstract_token.
          t421 = t1->get_first_token( ).
          DATA(t423) = VALUE string( ).
          t423 = t410->value.
          DATA t425 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t419 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t421 i_message_26cb = t423 i_fix = t425 ).
          t417->load( ).
          APPEND t419 TO t417->items.
          t417->save( ).
          DATA(t429) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t430->has = abap_true.
          t430->value = t429.
          DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t430 i_qualified_name = t432 ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t433) = VALUE abap_bool( ).
      DATA(t434) = VALUE abap_bool( ).
      t434 = xsdbool( t37->value = |#| ).
      t433 = t434.
      IF t434 = abap_true.
        t433 = xsdbool( t3 IS BOUND ).
      ENDIF.
      IF t433 = abap_true.
        t4 = t3.
      ELSE.
        IF xsdbool( t37->value = |#| ) = abap_true.
          DATA t449 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
          DATA t450 TYPE REF TO zcx_lnt_assert_error.
          DATA(t454) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t454->has = abap_true.
          t454->value = |NewObject, todo, infer type|.
          t450 = NEW zcx_lnt_assert_error( i_message_26cb = t454 ).
          t449 = NEW #( ).
          t449->payload = t450.
          CLEAR t449->source_value.
          DATA t456 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t457 TYPE REF TO object.
          t457 = t450.
          TRY.
              t449->source_value ?= t457.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t449->source_value IS NOT BOUND.
            TRY.
                t456 ?= t450.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t456 IS BOUND.
              t449->source_value = t456->source( ).
            ENDIF.
            IF t449->source_value IS NOT BOUND.
              CREATE OBJECT t449->source_value.
              t449->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t449->source_value->oval = t450.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t449.
        ENDIF.
      ENDIF.
    ENDIF.

    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t465 TYPE REF TO zif_lnt_interface_definition.
      DATA t467 TYPE REF TO zcl_lnt_current_scope.
      t467 = t2->scope.
      DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t473) = VALUE string( ).
      t473 = t37->value.
      DATA(t475) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t475->has = abap_true.
      t475->value = t473.
      t470 = t475.
      DATA t477 TYPE REF TO zif_lnt_interface_definition.
      DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t479 = t470.
      DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t483) = VALUE abap_bool( ).
      IF t479 IS INITIAL.
        t483 = abap_true.
      ELSEIF t479->has = abap_false.
        t483 = abap_true.
      ENDIF.
      IF t483 = abap_true.
      ELSE.
        DATA t487 TYPE REF TO zif_lnt_class_definition.
        DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t492) = VALUE string( ).
        t492 = t470->value.
        DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t494->has = abap_true.
        t494->value = t492.
        t489 = t494.
        DATA t496 TYPE REF TO zif_lnt_class_definition.
        DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t498 = t489.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t502) = VALUE abap_bool( ).
        IF t498 IS INITIAL.
          t502 = abap_true.
        ELSEIF t498->has = abap_false.
          t502 = abap_true.
        ENDIF.
        IF t502 = abap_true.
        ELSE.
          DATA t506 TYPE REF TO zif_lnt_class_definition.
          DATA t508 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t508 = t467->current.
          DATA t511 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t508 IS INITIAL ) = abap_true.
          ELSE.
            DATA t516 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t516 = t508.
            DATA(t518) = VALUE string( ).
            t518 = t489->value.
            t511 = t516->find_class_definition( i_name = t518 ).
          ENDIF.
          t506 = t511.
          DATA t520 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t506 IS BOUND ) = abap_true.
            t520 = t506.
          ELSE.
            DATA t529 TYPE REF TO zcl_lnt_class.
            DATA t530 TYPE REF TO zcl_lnt_class.
            DATA t532 TYPE REF TO zif_lnt_registry.
            t532 = t467->reg.
            DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t537) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t537->has = abap_true.
            t537->value = |CLAS|.
            t534 = t537.
            DATA(t541) = VALUE string( ).
            t541 = t489->value.
            DATA(t543) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t543->has = abap_true.
            t543->value = t541.
            DATA t545 TYPE REF TO object.
            t545 = t532->get_object( i_type_9913 = t534 i_name = t543 ).
            t530 ?= t545.
            t529 = t530.
            DATA t546 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t529 IS BOUND ) = abap_true.
              t546 = t529->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t546.
            ENDIF.
            t520 = t546.
          ENDIF.
          t496 = t520.
        ENDIF.
        t487 = t496.
        DATA t553 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t487 IS BOUND ) = abap_true.
          DATA t556 TYPE REF TO zif_lnt_interface_definition.
          DATA t557 TYPE REF TO zif_lnt_class_definition.
          t557 = t487.
          t556 ?= t557.
          t553 = t556.
        ELSE.
          DATA t560 TYPE REF TO zif_lnt_interface_definition.
          DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t565) = VALUE string( ).
          t565 = t470->value.
          DATA(t567) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t567->has = abap_true.
          t567->value = t565.
          t562 = t567.
          DATA t569 TYPE REF TO zif_lnt_interface_definition.
          DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t571 = t562.
          DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t575) = VALUE abap_bool( ).
          IF t571 IS INITIAL.
            t575 = abap_true.
          ELSEIF t571->has = abap_false.
            t575 = abap_true.
          ENDIF.
          IF t575 = abap_true.
          ELSE.
            DATA t579 TYPE REF TO zif_lnt_interface_definition.
            DATA t581 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t581 = t467->current.
            DATA t584 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t581 IS INITIAL ) = abap_true.
            ELSE.
              DATA t589 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t589 = t581.
              DATA(t591) = VALUE string( ).
              t591 = t562->value.
              t584 = t589->find_interface_definition( i_name = t591 ).
            ENDIF.
            t579 = t584.
            DATA t593 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t579 IS BOUND ) = abap_true.
              t593 = t579.
            ELSE.
              DATA t602 TYPE REF TO zcl_lnt_ob_interface.
              DATA t603 TYPE REF TO zcl_lnt_ob_interface.
              DATA t605 TYPE REF TO zif_lnt_registry.
              t605 = t467->reg.
              DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t610) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t610->has = abap_true.
              t610->value = |INTF|.
              t607 = t610.
              DATA(t614) = VALUE string( ).
              t614 = t562->value.
              DATA(t616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t616->has = abap_true.
              t616->value = t614.
              DATA t618 TYPE REF TO object.
              t618 = t605->get_object( i_type_9913 = t607 i_name = t616 ).
              t603 ?= t618.
              t602 = t603.
              DATA t619 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t602 IS BOUND ) = abap_true.
                t619 = t602->def.
              ELSE.
                CLEAR t619.
              ENDIF.
              t593 = t619.
            ENDIF.
            t569 = t593.
          ENDIF.
          t560 = t569.
          DATA t629 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t560 IS BOUND ) = abap_true.
            t629 = t560.
          ELSE.
            CLEAR t629.
          ENDIF.
          t553 = t629.
        ENDIF.
        t477 = t553.
      ENDIF.
      t465 = t477.
      IF xsdbool( t465 IS BOUND ) = abap_true.
        DATA t640 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t642 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t643 TYPE REF TO zif_lnt_interface_definition.
        t643 = t465.
        t642 ?= t643.
        DATA t645 TYPE REF TO zcl_lnt_abstract_type_data.
        t640 = NEW zcl_lnt_object_reference_type( i_id = t642 i_extra = t645 ).
        DATA t647 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t648 TYPE REF TO zcl_lnt_abstract_token.
        t648 = t10.
        DATA(t650) = VALUE string( ).
        t650 = t2->filename.
        DATA t653 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t647 = NEW zcl_lnt_typed_identifier( i_token = t648 i_filename = t650 i_type_9913 = t640 i_meta = t653 i_value = t654 ).
        DATA t655 TYPE REF TO zcl_lnt_current_scope.
        t655 = t2->scope.
        DATA t657 TYPE REF TO zcl_lnt_abstract_token.
        t657 = t10.
        DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t663.
        t663->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t663->sval = |Inferred Type|.
        DATA(t665) = VALUE string( ).
        t665 = t2->filename.
        DATA t667 TYPE REF TO zcl_lnt_ireference_extras.
        t655->add_reference( i_usage = t657 i_referencing = t647 i_type_9913 = t663 i_filename = t665 i_extra = t667 ).
        DATA t668 TYPE REF TO zcl_lnt_current_scope.
        t668 = t2->scope.
        DATA t670 TYPE REF TO zcl_lnt_abstract_token.
        t670 = t10.
        DATA t675 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t677 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t678 TYPE REF TO zif_lnt_interface_definition.
        t678 = t465.
        t677 ?= t678.
        t675 = t677.
        DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t681.
        t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t681->sval = |Object|.
        DATA(t683) = VALUE string( ).
        t683 = t2->filename.
        DATA t685 TYPE REF TO zcl_lnt_ireference_extras.
        t668->add_reference( i_usage = t670 i_referencing = t675 i_type_9913 = t681 i_filename = t683 i_extra = t685 ).
        DATA t686 TYPE REF TO zcl_lnt_current_scope.
        t686 = t2->scope.
        DATA t688 TYPE REF TO zcl_lnt_abstract_token.
        t688 = t10.
        DATA t693 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t695 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t696 TYPE REF TO zif_lnt_interface_definition.
        t696 = t465.
        t695 ?= t696.
        t693 = t695.
        DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t699.
        t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t699->sval = |Constructor Reference|.
        DATA(t701) = VALUE string( ).
        t701 = t2->filename.
        DATA t705 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t709) = VALUE string( ).
        t709 = t465->get_name( ).
        DATA(t712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t712->has = abap_true.
        t712->value = t709.
        DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t705 = NEW zcl_lnt_ireference_extras( i_oo_name = t712 i_oo_type = t714 i_found_qualified = t716 ).
        CREATE OBJECT t705->zlnt_view_ownkeys_b0e8086400eb.
        t705->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t705->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t718 ).
        CREATE OBJECT t705->zlnt_json_ownkeys_70e5fd461788.
        t705->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t705->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t720 ).
        t686->add_reference( i_usage = t688 i_referencing = t693 i_type_9913 = t699 i_filename = t701 i_extra = t705 ).
        DATA t722 TYPE REF TO zif_lnt_class_definition.
        DATA t724 TYPE REF TO zcl_lnt_current_scope.
        t724 = t2->scope.
        DATA t727 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t735 TYPE REF TO zcl_lnt_fi_identifier.
        t735 = t640->identifier.
        DATA(t738) = VALUE string( ).
        t738 = t735->token->str.
        DATA(t746) = VALUE string( ).
        DATA(t747) = t738.
        DATA(t748) = 0.
        DATA(t749) = 1.
        DATA(t750) = strlen( t747 ).
        IF t748 < 0.
          t748 = t748 + t750.
          IF t748 < 0.
            t748 = 0.
          ENDIF.
        ENDIF.
        IF t748 > t750 OR t749 <= 0.
        ELSE.
          IF t749 > t750 - t748.
            t749 = t750 - t748.
          ENDIF.
          t746 = t747+t748(t749).
        ENDIF.
        IF xsdbool( t746 = |!| ) = abap_true.
          DATA(t753) = VALUE string( ).
          t753 = t738.
          DATA(t755) = VALUE string( ).
          DATA(t757) = 1.
          DATA(t758) = VALUE i( ).
          t758 = strlen( t753 ).
          DATA(t761) = strlen( t753 ).
          IF t757 < 0.
            t757 = t757 + t761.
            IF t757 < 0.
              t757 = 0.
            ENDIF.
          ENDIF.
          IF t757 > t761 OR t758 <= 0.
          ELSE.
            IF t758 > t761 - t757.
              t758 = t761 - t757.
            ENDIF.
            t755 = t753+t757(t758).
          ENDIF.
          t738 = t755.
        ENDIF.
        DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t763->has = abap_true.
        t763->value = t738.
        t727 = t763.
        DATA t765 TYPE REF TO zif_lnt_class_definition.
        DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t767 = t727.
        DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t771) = VALUE abap_bool( ).
        IF t767 IS INITIAL.
          t771 = abap_true.
        ELSEIF t767->has = abap_false.
          t771 = abap_true.
        ENDIF.
        IF t771 = abap_true.
        ELSE.
          DATA t775 TYPE REF TO zif_lnt_class_definition.
          DATA t777 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t777 = t724->current.
          DATA t780 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t777 IS INITIAL ) = abap_true.
          ELSE.
            DATA t785 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t785 = t777.
            DATA(t787) = VALUE string( ).
            t787 = t727->value.
            t780 = t785->find_class_definition( i_name = t787 ).
          ENDIF.
          t775 = t780.
          DATA t789 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t775 IS BOUND ) = abap_true.
            t789 = t775.
          ELSE.
            DATA t798 TYPE REF TO zcl_lnt_class.
            DATA t799 TYPE REF TO zcl_lnt_class.
            DATA t801 TYPE REF TO zif_lnt_registry.
            t801 = t724->reg.
            DATA t803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t806) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t806->has = abap_true.
            t806->value = |CLAS|.
            t803 = t806.
            DATA(t810) = VALUE string( ).
            t810 = t727->value.
            DATA(t812) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t812->has = abap_true.
            t812->value = t810.
            DATA t814 TYPE REF TO object.
            t814 = t801->get_object( i_type_9913 = t803 i_name = t812 ).
            t799 ?= t814.
            t798 = t799.
            DATA t815 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t798 IS BOUND ) = abap_true.
              t815 = t798->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t815.
            ENDIF.
            t789 = t815.
          ENDIF.
          t765 = t789.
        ENDIF.
        t722 = t765.
        DATA(t822) = VALUE abap_bool( ).
        DATA t823 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t824 TYPE REF TO zif_lnt_class_definition.
        t824 = t722.
        DATA t826 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        IF xsdbool( t824 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t830) = VALUE abap_bool( ).
          t830 = t824->is_abstract( ).
          DATA(t833) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t833->has = abap_true.
          t833->value = t830.
          t826 = t833.
        ENDIF.
        t823 = t826.
        DATA t834 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t837) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t837->has = abap_true.
        t837->value = abap_true.
        t834 = t837.
        DATA(t839) = VALUE abap_bool( ).
        DATA(t840) = VALUE abap_bool( ).
        IF t823 IS BOUND.
          t839 = t823->has.
        ENDIF.
        IF t834 IS BOUND.
          t840 = t834->has.
        ENDIF.
        IF t839 = t840.
          IF t839 = abap_false.
            t822 = abap_true.
          ELSEIF t823->value = t834->value.
            t822 = abap_true.
          ENDIF.
        ENDIF.
        IF t822 = abap_true.
          DATA(t841) = VALUE string( ).
          DATA(t843) = VALUE string( ).
          t843 = t722->get_name( ).
          DATA(t847) = strlen( t843 ).
          t841 = |{ t843 }{ | is abstract, cannot be instantiated| }|.
          DATA t848 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t848 = t2->issues.
          DATA t850 TYPE REF TO zcl_lnt_issue.
          DATA t855 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t850 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t841 i_fix = t855 ).
          t848->load( ).
          APPEND t850 TO t848->items.
          t848->save( ).
          DATA(t859) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t860) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t860->has = abap_true.
          t860->value = t859.
          DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t860 i_qualified_name = t862 ).
          RETURN.
        ENDIF.
        IF xsdbool( t722 IS BOUND ) = abap_true.
          DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t865 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t722 i_input_967e = t2 ).
          DATA(t870) = VALUE abap_bool( ).
          IF t865 IS BOUND.
            IF t865->has = abap_true.
              t870 = xsdbool( strlen( t865->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t870 = abap_true.
            DATA t872 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t872 = t2->issues.
            DATA t874 TYPE REF TO zcl_lnt_issue.
            DATA t876 TYPE REF TO zcl_lnt_abstract_token.
            t876 = t1->get_first_token( ).
            DATA(t878) = VALUE string( ).
            t878 = t865->value.
            DATA t880 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t874 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t876 i_message_26cb = t878 i_fix = t880 ).
            t872->load( ).
            APPEND t874 TO t872->items.
            t872->save( ).
            DATA(t884) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t885) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t885->has = abap_true.
            t885->value = t884.
            DATA t887 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = zcl_lnt_void_type=>get_db65( i_voided = t885 i_qualified_name = t887 ).
            RETURN.
          ENDIF.
        ENDIF.
        t4 = t640.
      ENDIF.
    ENDIF.
    DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t899 TYPE REF TO zcl_lnt_abstract_type.
      DATA t903 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t904 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t899 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->resolve_type_name( i_type_name = t6 i_length = t903 i_decimals_2eed = t904 i_qualified_name = t905 ).
      IF xsdbool( t899 IS BOUND AND t899 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
        DATA t908 TYPE REF TO zcl_lnt_unknown_type.
        t908 ?= t899.
        t4 = t908.
      ELSE.
        DATA(t910) = VALUE abap_bool( ).
        DATA(t911) = VALUE abap_bool( ).
        t911 = xsdbool( t899 IS BOUND ).
        t910 = t911.
        IF t911 = abap_true.
          DATA t915 TYPE REF TO zcl_lnt_abstract_type.
          t915 = t899.
          t910 = xsdbool( xsdbool( t915 IS BOUND AND t915 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
        ENDIF.
        IF t910 = abap_true.
          DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t4 = NEW zcl_lnt_data_reference( i_type_9913 = t899 i_qualified_name = t920 ).
        ELSE.
          IF xsdbool( t899 IS BOUND AND t899 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
            DATA t923 TYPE REF TO zcl_lnt_void_type.
            t923 ?= t899.
            t4 = t923.
          ELSE.
            DATA(t925) = VALUE string( ).
            DATA(t927) = VALUE string( ).
            DATA(t928) = |Type "|.
            DATA(t929) = VALUE string( ).
            t929 = t37->value.
            DATA(t931) = strlen( t928 ).
            t927 = |{ t928 }{ t929 }|.
            DATA(t933) = strlen( t927 ).
            t925 = |{ t927 }{ |" not found in scope, NewObject| }|.
            DATA t934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t934 = t2->issues.
            DATA t936 TYPE REF TO zcl_lnt_issue.
            DATA t941 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t936 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t925 i_fix = t941 ).
            t934->load( ).
            APPEND t936 TO t934->items.
            t934->save( ).
            DATA(t945) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t946) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t946->has = abap_true.
            t946->value = t945.
            DATA t948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = zcl_lnt_void_type=>get_db65( i_voided = t946 i_qualified_name = t948 ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    IF xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
      DATA t952 TYPE REF TO zcl_lnt_object_reference_type.
      t952 ?= t4.
      zcl_lnt_sy_new_object=>parameters( i_node = t1 i_obj_1ed0 = t952 i_input_967e = t2 ).
    ELSE.
      DATA t955 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t957) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t955 = t1->find_all_expressions( i_type_9913 = t957 ).
      DATA t958 TYPE REF TO zcl_lnt_expression_node.
      DATA t959 TYPE REF TO object.
      DATA(t960) = VALUE i( ).
      DO.
        t955->load( ).
        IF t960 >= lines( t955->items ).
          EXIT.
        ENDIF.
        CLEAR t959.
        READ TABLE t955->items INDEX t960 + 1 INTO t959.
        t960 = t960 + 1.
        DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t961.
        CLEAR t958.
        IF t959 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t961 ?= t959.
          DATA t962 TYPE REF TO object.
          t962 = t961->as_ref( ).
          t958 ?= t962.
        ELSE.
          t958 ?= t959.
        ENDIF.
        DATA t963 TYPE REF TO zcl_lnt_abstract_type.
        DATA t964 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t964.
        t964 = t958.
        DATA t969 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t969.
        t969 = t4.
        DATA t974 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t974.
        DATA t975 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t975.
        DATA t976 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t976.
        t963 = zcl_lnt_sy_source=>run_syntax( i_node = t964 i_input_967e = t2 i_target_type = t969 i_write_reference = t974 i_allow_generic_deference = t975 i_read_reference = t976 ).
      ENDDO.
    ENDIF.
    DATA(t977) = VALUE abap_bool( ).
    DATA(t978) = VALUE abap_bool( ).
    t978 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_unknown_type ).
    t977 = t978.
    IF t978 = abap_true.
      DATA t987 TYPE REF TO zcl_lnt_ddic.
      DATA t988 TYPE REF TO zif_lnt_registry.
      t988 = t2->scope->reg.
      t987 = NEW zcl_lnt_ddic( i_reg_f149 = t988 ).
      DATA t990 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t993) = VALUE string( ).
      t993 = t37->value.
      DATA(t995) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t995->has = abap_true.
      t995->value = t993.
      t990 = t995.
      DATA(t997) = VALUE abap_bool( ).
      DATA t999 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t999 = t990.
      DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t1003) = VALUE abap_bool( ).
      IF t999 IS INITIAL.
        t1003 = abap_true.
      ELSEIF t999->has = abap_false.
        t1003 = abap_true.
      ENDIF.
      IF t1003 = abap_true.
        t997 = abap_true.
      ELSE.
        DATA t1007 TYPE REF TO zif_lnt_registry.
        t1007 = t987->reg.
        DATA(t1009) = VALUE string( ).
        t1009 = t990->value.
        t997 = t1007->in_error_namespace( i_name = t1009 ).
      ENDIF.
      t977 = xsdbool( t997 = abap_true ).
    ENDIF.
    IF t977 = abap_true.
      DATA(t1012) = VALUE string( ).
      DATA(t1014) = VALUE string( ).
      DATA(t1015) = |Class or type "|.
      DATA(t1016) = VALUE string( ).
      t1016 = t37->value.
      DATA(t1018) = strlen( t1015 ).
      t1014 = |{ t1015 }{ t1016 }|.
      DATA(t1020) = strlen( t1014 ).
      t1012 = |{ t1014 }{ |" not found| }|.
      DATA t1021 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t1021 = t2->issues.
      DATA t1023 TYPE REF TO zcl_lnt_issue.
      DATA t1028 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t1023 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t1012 i_fix = t1028 ).
      t1021->load( ).
      APPEND t1023 TO t1021->items.
      t1021->save( ).
      DATA(t1032) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t1033) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1033->has = abap_true.
      t1033->value = t1032.
      DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t1033 i_qualified_name = t1035 ).
      RETURN.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD parameters.
    DATA(t1) = i_node.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE string( ).
    DATA t13 TYPE string.
    t13 = i_obj_1ed0->identifier->token->str.
    DATA(t21) = VALUE string( ).
    DATA(t22) = t13.
    DATA(t23) = 0.
    DATA(t24) = 1.
    DATA(t25) = strlen( t22 ).
    IF t23 < 0.
      t23 = t23 + t25.
      IF t23 < 0.
        t23 = 0.
      ENDIF.
    ENDIF.
    IF t23 > t25 OR t24 <= 0.
    ELSE.
      IF t24 > t25 - t23.
        t24 = t25 - t23.
      ENDIF.
      t21 = t22+t23(t24).
    ENDIF.
    IF xsdbool( t21 = |!| ) = abap_true.
      DATA t28 TYPE string.
      t28 = t13.
      DATA(t30) = VALUE string( ).
      DATA(t32) = 1.
      DATA t33 TYPE i.
      t33 = strlen( t28 ).
      DATA(t36) = strlen( t28 ).
      IF t32 < 0.
        t32 = t32 + t36.
        IF t32 < 0.
          t32 = 0.
        ENDIF.
      ENDIF.
      IF t32 > t36 OR t33 <= 0.
      ELSE.
        IF t33 > t36 - t32.
          t33 = t36 - t32.
        ENDIF.
        t30 = t28+t32(t33).
      ENDIF.
      t13 = t30.
    ENDIF.
    t4 = t13.
    DATA t40 TYPE REF TO zcl_lnt_current_scope.
    t40 = t3->scope.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t47->has = abap_true.
    t47->value = t4.
    t43 = t47.
    DATA t49 TYPE REF TO zif_lnt_interface_definition.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t51 = t43.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = VALUE abap_bool( ).
    IF t51 IS INITIAL.
      t55 = abap_true.
    ELSEIF t51->has = abap_false.
      t55 = abap_true.
    ENDIF.
    IF t55 = abap_true.
    ELSE.
      DATA t59 TYPE REF TO zif_lnt_class_definition.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t64 TYPE string.
      t64 = t43->value.
      DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t66->has = abap_true.
      t66->value = t64.
      t61 = t66.
      DATA t68 TYPE REF TO zif_lnt_class_definition.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t70 = t61.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t74) = VALUE abap_bool( ).
      IF t70 IS INITIAL.
        t74 = abap_true.
      ELSEIF t70->has = abap_false.
        t74 = abap_true.
      ENDIF.
      IF t74 = abap_true.
      ELSE.
        DATA t78 TYPE REF TO zif_lnt_class_definition.
        DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t80 = t40->current.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t80 IS INITIAL ) = abap_true.
        ELSE.
          DATA t88 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t88 = t80.
          DATA t90 TYPE string.
          t90 = t61->value.
          t83 = t88->find_class_definition( i_name = t90 ).
        ENDIF.
        t78 = t83.
        DATA t92 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t78 IS BOUND ) = abap_true.
          t92 = t78.
        ELSE.
          DATA t101 TYPE REF TO zcl_lnt_class.
          DATA t102 TYPE REF TO zcl_lnt_class.
          DATA t104 TYPE REF TO zif_lnt_registry.
          t104 = t40->reg.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = |CLAS|.
          t106 = t109.
          DATA t113 TYPE string.
          t113 = t61->value.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t113.
          DATA t117 TYPE REF TO object.
          t117 = t104->get_object( i_type_9913 = t106 i_name = t115 ).
          t102 ?= t117.
          t101 = t102.
          DATA t118 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t101 IS BOUND ) = abap_true.
            t118 = t101->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t118.
          ENDIF.
          t92 = t118.
        ENDIF.
        t68 = t92.
      ENDIF.
      t59 = t68.
      DATA t125 TYPE REF TO zif_lnt_interface_definition.
      IF xsdbool( t59 IS BOUND ) = abap_true.
        DATA t128 TYPE REF TO zif_lnt_interface_definition.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        t129 = t59.
        t128 ?= t129.
        t125 = t128.
      ELSE.
        DATA t132 TYPE REF TO zif_lnt_interface_definition.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t137 TYPE string.
        t137 = t43->value.
        DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t139->has = abap_true.
        t139->value = t137.
        t134 = t139.
        DATA t141 TYPE REF TO zif_lnt_interface_definition.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t143 = t134.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t147) = VALUE abap_bool( ).
        IF t143 IS INITIAL.
          t147 = abap_true.
        ELSEIF t143->has = abap_false.
          t147 = abap_true.
        ENDIF.
        IF t147 = abap_true.
        ELSE.
          DATA t151 TYPE REF TO zif_lnt_interface_definition.
          DATA t153 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t153 = t40->current.
          DATA t156 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t153 IS INITIAL ) = abap_true.
          ELSE.
            DATA t161 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t161 = t153.
            DATA t163 TYPE string.
            t163 = t134->value.
            t156 = t161->find_interface_definition( i_name = t163 ).
          ENDIF.
          t151 = t156.
          DATA t165 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t151 IS BOUND ) = abap_true.
            t165 = t151.
          ELSE.
            DATA t174 TYPE REF TO zcl_lnt_ob_interface.
            DATA t175 TYPE REF TO zcl_lnt_ob_interface.
            DATA t177 TYPE REF TO zif_lnt_registry.
            t177 = t40->reg.
            DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = |INTF|.
            t179 = t182.
            DATA t186 TYPE string.
            t186 = t134->value.
            DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t188->has = abap_true.
            t188->value = t186.
            DATA t190 TYPE REF TO object.
            t190 = t177->get_object( i_type_9913 = t179 i_name = t188 ).
            t175 ?= t190.
            t174 = t175.
            DATA t191 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t174 IS BOUND ) = abap_true.
              t191 = t174->def.
            ELSE.
              CLEAR t191.
            ENDIF.
            t165 = t191.
          ENDIF.
          t141 = t165.
        ENDIF.
        t132 = t141.
        DATA t201 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t132 IS BOUND ) = abap_true.
          t201 = t132.
        ELSE.
          CLEAR t201.
        ENDIF.
        t125 = t201.
      ENDIF.
      t49 = t125.
    ENDIF.
    DATA t211 TYPE REF TO zcl_lnt_object_oriented.
    DATA t212 TYPE REF TO zcl_lnt_current_scope.
    t212 = t3->scope.
    t211 = NEW zcl_lnt_object_oriented( i_scope = t212 ).
    DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t221->has = abap_true.
    t221->value = |CONSTRUCTOR|.
    DATA t223 TYPE REF TO zif_lnt_method_definition.
    t223 = t211->search_method_name( i_def = t49 i_name = t221 )->method.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t230 TYPE REF TO zif_lnt_method_parameters.
    DATA t232 TYPE REF TO zif_lnt_method_definition.
    t232 = t223.
    DATA t234 TYPE REF TO zif_lnt_method_parameters.
    IF xsdbool( t232 IS INITIAL ) = abap_true.
    ELSE.
      t234 = t232->get_parameters( ).
    ENDIF.
    t230 = t234.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t230 IS INITIAL ) = abap_true.
    ELSE.
      t241 = t230->get_required_parameters( ).
    ENDIF.
    t228 = t241.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t228 IS BOUND ) = abap_true.
      t248 = t228.
    ELSE.
      CREATE OBJECT t248.
    ENDIF.
    t226 = t248.
    DATA t254 TYPE REF TO zcl_lnt_expression_node.
    DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t254 = t1->find_direct_expression( i_type_9913 = t257 ).
    DATA t258 TYPE REF TO zcl_lnt_expression_node.
    DATA(t261) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t258 = t1->find_direct_expression( i_type_9913 = t261 ).
    IF xsdbool( t254 IS BOUND ) = abap_true.
      DATA t264 TYPE REF TO zcl_lnt_abstract_type.
      t264 = zcl_lnt_sy_new_object=>default_importing_type( i_method = t223 ).
      DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t264 IS INITIAL ) = abap_true.
        DATA t275 TYPE string.
        DATA(t276) = |NewObject, no default importing parameter found for construc|.
        t276 = t276 && |tor, |.
        DATA(t278) = strlen( t276 ).
        t275 = |{ t276 }{ t4 }|.
        DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t279 = t3->issues.
        DATA t281 TYPE REF TO zcl_lnt_issue.
        DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t281 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t1->get_first_token( ) i_message_26cb = t275 i_fix = t286 ).
        t279->load( ).
        APPEND t281 TO t279->items.
        t279->save( ).
        RETURN.
      ENDIF.
      DATA t288 TYPE REF TO zcl_lnt_abstract_type.
      DATA t300 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t302 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t288 = zcl_lnt_sy_source=>run_syntax( i_node = t254 i_input_967e = t3 i_target_type = t264 i_write_reference = t300 i_allow_generic_deference = t301 i_read_reference = t302 ).
      DATA t306 TYPE REF TO zcl_lnt_current_scope.
      t306 = t3->scope.
      DATA t314 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( NEW zcl_lnt_type_utils( i_scope = t306 )->is_assignable_strict( i_source_75cf = t288 i_target_5f8a = t264 i_node = t314 ) = abap_false ) = abap_true.
        DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t318 = t3->issues.
        DATA t320 TYPE REF TO zcl_lnt_issue.
        DATA t325 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t320 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t1->get_first_token( ) i_message_26cb = |NEW parameter type not compatible| i_fix = t325 ).
        t318->load( ).
        APPEND t320 TO t318->items.
        t318->save( ).
        RETURN.
      ENDIF.
    ELSE.
      IF xsdbool( t258 IS BOUND ) = abap_true.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t223 IS INITIAL ) = abap_true.
          DATA t336 TYPE string.
          DATA(t337) = |NewObject, no parameters for constructor found, |.
          DATA(t339) = strlen( t337 ).
          t336 = |{ t337 }{ t4 }|.
          DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t340 = t3->issues.
          DATA t342 TYPE REF TO zcl_lnt_issue.
          DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t342 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t1->get_first_token( ) i_message_26cb = t336 i_fix = t347 ).
          t340->load( ).
          APPEND t342 TO t340->items.
          t340->save( ).
          RETURN.
        ENDIF.
        DATA(t348) = NEW zcl_lnt_sy_method_parameters( ).
        DATA t349 TYPE REF TO zcl_lnt_expression_node.
        t349 = t258.
        DATA t352 TYPE REF TO zif_lnt_union_8cd68e5e.
        DATA t353 TYPE REF TO zif_lnt_method_definition.
        t353 = t223.
        t352 ?= t353.
        DATA t355 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t348->check_exporting( i_node = t349 i_input_967e = t3 i_method = t352 i_errors = t355 ).
      ELSE.
        t226->load( ).
        IF xsdbool( lines( t226->items ) > 0 ) = abap_true.
          DATA(t360) = VALUE string( ).
          DATA(t362) = VALUE string( ).
          DATA(t363) = VALUE string( ).
          DATA(t364) = |constructor parameter "|.
          DATA(t365) = VALUE string( ).
          DATA t366 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t367 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t369 TYPE REF TO object.
          t226->load( ).
          READ TABLE t226->items INDEX 1 INTO t369.
          DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t369 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t370 ?= t369.
            DATA t371 TYPE REF TO object.
            t371 = t370->as_ref( ).
            t367 ?= t371.
          ELSE.
            t367 ?= t369.
          ENDIF.
          t366 = t367.
          DATA t373 TYPE string.
          t373 = t366->token->str.
          DATA(t381) = VALUE string( ).
          DATA(t382) = t373.
          DATA(t383) = 0.
          DATA(t384) = 1.
          DATA(t385) = strlen( t382 ).
          IF t383 < 0.
            t383 = t383 + t385.
            IF t383 < 0.
              t383 = 0.
            ENDIF.
          ENDIF.
          IF t383 > t385 OR t384 <= 0.
          ELSE.
            IF t384 > t385 - t383.
              t384 = t385 - t383.
            ENDIF.
            t381 = t382+t383(t384).
          ENDIF.
          IF xsdbool( t381 = |!| ) = abap_true.
            DATA t388 TYPE string.
            t388 = t373.
            DATA(t390) = VALUE string( ).
            DATA(t392) = 1.
            DATA t393 TYPE i.
            t393 = strlen( t388 ).
            DATA(t396) = strlen( t388 ).
            IF t392 < 0.
              t392 = t392 + t396.
              IF t392 < 0.
                t392 = 0.
              ENDIF.
            ENDIF.
            IF t392 > t396 OR t393 <= 0.
            ELSE.
              IF t393 > t396 - t392.
                t393 = t396 - t392.
              ENDIF.
              t390 = t388+t392(t393).
            ENDIF.
            t373 = t390.
          ENDIF.
          t365 = t373.
          DATA(t398) = strlen( t364 ).
          t363 = |{ t364 }{ t365 }|.
          DATA(t400) = strlen( t363 ).
          t362 = |{ t363 }{ |" must be supplied, | }|.
          DATA(t402) = strlen( t362 ).
          t360 = |{ t362 }{ t4 }|.
          DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t403 = t3->issues.
          DATA t405 TYPE REF TO zcl_lnt_issue.
          DATA t410 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t405 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t1->get_first_token( ) i_message_26cb = t360 i_fix = t410 ).
          t403->load( ).
          APPEND t405 TO t403->items.
          t403->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD default_importing_type.
    DATA(t1) = i_method.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t12 = t1->get_parameters( )->get_default_importing( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = t1->get_parameters( )->get_importing( ).
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t22 TYPE REF TO object.
    DATA(t23) = VALUE i( ).
    DO.
      t17->load( ).
      IF t23 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t17->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t29) = VALUE string( ).
      DATA(t30) = VALUE string( ).
      DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
      t31 = t21.
      DATA t34 TYPE string.
      t34 = t31->token->str.
      DATA(t42) = VALUE string( ).
      DATA(t43) = t34.
      DATA(t44) = 0.
      DATA(t45) = 1.
      DATA(t46) = strlen( t43 ).
      IF t44 < 0.
        t44 = t44 + t46.
        IF t44 < 0.
          t44 = 0.
        ENDIF.
      ENDIF.
      IF t44 > t46 OR t45 <= 0.
      ELSE.
        IF t45 > t46 - t44.
          t45 = t46 - t44.
        ENDIF.
        t42 = t43+t44(t45).
      ENDIF.
      IF xsdbool( t42 = |!| ) = abap_true.
        DATA t49 TYPE string.
        t49 = t34.
        DATA(t51) = VALUE string( ).
        DATA(t53) = 1.
        DATA t54 TYPE i.
        t54 = strlen( t49 ).
        DATA(t57) = strlen( t49 ).
        IF t53 < 0.
          t53 = t53 + t57.
          IF t53 < 0.
            t53 = 0.
          ENDIF.
        ENDIF.
        IF t53 > t57 OR t54 <= 0.
        ELSE.
          IF t54 > t57 - t53.
            t54 = t57 - t53.
          ENDIF.
          t51 = t49+t53(t54).
        ENDIF.
        t34 = t51.
      ENDIF.
      t30 = t34.
      DATA(t59) = strlen( t30 ).
      t29 = t30.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t60->has = abap_true.
      t60->value = t29.
      t27 = t60.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      IF t27 IS BOUND.
        t63 = t27->has.
      ENDIF.
      IF t12 IS BOUND.
        t64 = t12->has.
      ENDIF.
      IF t63 = t64.
        IF t63 = abap_false.
          t26 = abap_true.
        ELSEIF t27->value = t12->value.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      IF t26 = abap_true.
        t2 = t21->type_cba0.
      ENDIF.
    ENDDO.
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d827_4ef46d4fa79b.
  ENDMETHOD.
ENDCLASS.
