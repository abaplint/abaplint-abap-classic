* TS: src/abap/5_syntax/statements/create_object.ts:16:1 CreateObject
CLASS zcl_lnt_sy_create_object DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS check_instantiation_allowed IMPORTING i_cdef TYPE REF TO zif_lnt_class_definition i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS validate_parameters IMPORTING i_cdef TYPE REF TO zif_lnt_class_definition i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_create_object IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zif_lnt_class_definition.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    t5 = t1->find_expression_after_token( i_text = |TYPE| ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    t10 = xsdbool( t5 IS BOUND ).
    t9 = t10.
    IF t10 = abap_true.
      DATA t13 TYPE REF TO zif_lnt_statement_runnable.
      t13 = t5->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t9 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_class_name ).
    ENDIF.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      t16 = t5->get_first_token( ).
      DATA(t20) = VALUE string( ).
      t20 = t16->str.
      DATA t27 TYPE REF TO zcl_lnt_current_scope.
      t27 = t2->scope.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t20.
      t30 = t34.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t38 = t30.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t42) = VALUE abap_bool( ).
      IF t38 IS INITIAL.
        t42 = abap_true.
      ELSEIF t38->has = abap_false.
        t42 = abap_true.
      ENDIF.
      IF t42 = abap_true.
      ELSE.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t48 = t27->current.
        DATA t51 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t48 IS INITIAL ) = abap_true.
        ELSE.
          DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t56 = t48.
          DATA(t58) = VALUE string( ).
          t58 = t30->value.
          t51 = t56->find_class_definition( i_name = t58 ).
        ENDIF.
        t46 = t51.
        DATA t60 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t46 IS BOUND ) = abap_true.
          t60 = t46.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_class.
          DATA t70 TYPE REF TO zcl_lnt_class.
          DATA t72 TYPE REF TO zif_lnt_registry.
          t72 = t27->reg.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = |CLAS|.
          t74 = t77.
          DATA(t81) = VALUE string( ).
          t81 = t30->value.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t81.
          DATA t85 TYPE REF TO object.
          t85 = t72->get_object( i_type_9913 = t74 i_name = t83 ).
          t70 ?= t85.
          t69 = t70.
          DATA t86 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t69 IS BOUND ) = abap_true.
            t86 = t69->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t86.
          ENDIF.
          t60 = t86.
        ENDIF.
        t36 = t60.
      ENDIF.
      t3 = t36.
      IF xsdbool( t3 IS BOUND ) = abap_true.
        DATA t95 TYPE REF TO zcl_lnt_current_scope.
        t95 = t2->scope.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        t97 = t16.
        DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
        t103 ?= t3.
        t101 = t103.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t107.
        t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t107->sval = |Object|.
        DATA(t109) = VALUE string( ).
        t109 = t2->filename.
        DATA t111 TYPE REF TO zcl_lnt_ireference_extras.
        t95->add_reference( i_usage = t97 i_referencing = t101 i_type_9913 = t107 i_filename = t109 i_extra = t111 ).
        DATA t112 TYPE REF TO zcl_lnt_current_scope.
        t112 = t2->scope.
        DATA t114 TYPE REF TO zcl_lnt_abstract_token.
        t114 = t16.
        DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
        t120 ?= t3.
        t118 = t120.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t124.
        t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t124->sval = |Constructor Reference|.
        DATA(t126) = VALUE string( ).
        t126 = t2->filename.
        DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t134) = VALUE string( ).
        t134 = t3->get_name( ).
        DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t137->has = abap_true.
        t137->value = t134.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t130 = NEW zcl_lnt_ireference_extras( i_oo_name = t137 i_oo_type = t139 i_found_qualified = t141 ).
        CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
        t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t143 ).
        CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
        t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t145 ).
        t112->add_reference( i_usage = t114 i_referencing = t118 i_type_9913 = t124 i_filename = t126 i_extra = t130 ).
        IF xsdbool( t3->is_abstract( ) = abap_true ) = abap_true.
          DATA(t152) = VALUE string( ).
          DATA(t154) = VALUE string( ).
          t154 = t3->get_name( ).
          DATA(t158) = strlen( t154 ).
          t152 = |{ t154 }{ | is abstract, cannot be instantiated| }|.
          DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t159 = t2->issues.
          DATA t161 TYPE REF TO zcl_lnt_issue.
          DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t161 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t152 i_fix = t166 ).
          t159->load( ).
          APPEND t161 TO t159->items.
          t159->save( ).
          RETURN.
        ENDIF.
      ELSE.
        DATA t174 TYPE REF TO zcl_lnt_ddic.
        DATA t175 TYPE REF TO zif_lnt_registry.
        t175 = t2->scope->reg.
        t174 = NEW zcl_lnt_ddic( i_reg_f149 = t175 ).
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t181->has = abap_true.
        t181->value = t20.
        t177 = t181.
        DATA(t183) = VALUE abap_bool( ).
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t185 = t177.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t189) = VALUE abap_bool( ).
        IF t185 IS INITIAL.
          t189 = abap_true.
        ELSEIF t185->has = abap_false.
          t189 = abap_true.
        ENDIF.
        IF t189 = abap_true.
          t183 = abap_true.
        ELSE.
          DATA t193 TYPE REF TO zif_lnt_registry.
          t193 = t174->reg.
          DATA(t195) = VALUE string( ).
          t195 = t177->value.
          t183 = t193->in_error_namespace( i_name = t195 ).
        ENDIF.
        IF xsdbool( t183 = abap_false ) = abap_true.
          DATA t198 TYPE REF TO zcl_lnt_current_scope.
          t198 = t2->scope.
          DATA t200 TYPE REF TO zcl_lnt_abstract_token.
          t200 = t16.
          DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t205->sval = |Object (Void)|.
          DATA(t207) = VALUE string( ).
          t207 = t2->filename.
          DATA t211 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t216->has = abap_true.
          t216->value = t20.
          t212 = t216.
          DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t222->has = abap_true.
          t222->value = |CLAS|.
          DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t211 = NEW zcl_lnt_ireference_extras( i_oo_name = t212 i_oo_type = t222 i_found_qualified = t224 ).
          CREATE OBJECT t211->zlnt_view_ownkeys_b0e8086400eb.
          t211->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t226 ).
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t227 ).
          ENDIF.
          CREATE OBJECT t211->zlnt_json_ownkeys_70e5fd461788.
          t211->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t229 ).
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t231 ).
          ENDIF.
          t198->add_reference( i_usage = t200 i_referencing = t204 i_type_9913 = t205 i_filename = t207 i_extra = t211 ).
        ELSE.
          DATA(t233) = VALUE string( ).
          DATA(t235) = VALUE string( ).
          DATA(t236) = |TYPE "|.
          DATA(t238) = strlen( t236 ).
          t235 = |{ t236 }{ t20 }|.
          DATA(t240) = strlen( t235 ).
          t233 = |{ t235 }{ |" not found| }|.
          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t241 = t2->issues.
          DATA t243 TYPE REF TO zcl_lnt_issue.
          DATA t248 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t243 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t233 i_fix = t248 ).
          t241->load( ).
          APPEND t243 TO t241->items.
          t241->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t251) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t249 = t1->find_direct_expressions( i_type_9913 = t251 ).
    DATA t252 TYPE REF TO zcl_lnt_expression_node.
    DATA t253 TYPE REF TO object.
    DATA(t254) = VALUE i( ).
    DO.
      t249->load( ).
      IF t254 >= lines( t249->items ).
        EXIT.
      ENDIF.
      CLEAR t253.
      READ TABLE t249->items INDEX t254 + 1 INTO t253.
      t254 = t254 + 1.
      DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t255.
      CLEAR t252.
      IF t253 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t255 ?= t253.
        DATA t256 TYPE REF TO object.
        t256 = t255->as_ref( ).
        t252 ?= t256.
      ELSE.
        t252 ?= t253.
      ENDIF.
      DATA t257 TYPE REF TO zcl_lnt_abstract_type.
      DATA t258 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t258.
      t258 = t252.
      DATA t263 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t264.
      DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t265.
      DATA t266 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t266.
      t257 = zcl_lnt_sy_source=>run_syntax( i_node = t258 i_input_967e = t2 i_target_type = t263 i_write_reference = t264 i_allow_generic_deference = t265 i_read_reference = t266 ).
    ENDDO.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t270 TYPE REF TO zcl_lnt_expression_node.
    DATA(t273) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
    t270 = t1->find_direct_expression( i_type_9913 = t273 ).
    DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t270 IS INITIAL ) = abap_true.
    ELSE.
      DATA t279 TYPE REF TO zcl_lnt_expression_node.
      t279 = t270.
      DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t274 = t279->find_all_expressions( i_type_9913 = t281 ).
    ENDIF.
    t268 = t274.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t268 IS BOUND ) = abap_true.
      t282 = t268.
    ELSE.
      CREATE OBJECT t282.
    ENDIF.
    t267 = t282.
    DATA t288 TYPE REF TO zcl_lnt_expression_node.
    DATA t289 TYPE REF TO object.
    DATA(t290) = VALUE i( ).
    DO.
      t267->load( ).
      IF t290 >= lines( t267->items ).
        EXIT.
      ENDIF.
      CLEAR t289.
      READ TABLE t267->items INDEX t290 + 1 INTO t289.
      t290 = t290 + 1.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      CLEAR t288.
      IF t289 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t291 ?= t289.
        DATA t292 TYPE REF TO object.
        t292 = t291->as_ref( ).
        t288 ?= t292.
      ELSE.
        t288 ?= t289.
      ENDIF.
      DATA t293 TYPE REF TO zcl_lnt_abstract_type.
      t293 = zcl_lnt_sy_target=>run_syntax( i_node = t288 i_input_967e = t2 ).
    ENDDO.
    DATA t296 TYPE REF TO zcl_lnt_expression_node.
    DATA(t299) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t296 = t1->find_direct_expression( i_type_9913 = t299 ).
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t296 IS BOUND ) = abap_true.
      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t307 TYPE REF TO zcl_lnt_abstract_type.
      t307 = zcl_lnt_sy_target=>run_syntax( i_node = t296 i_input_967e = t2 ).
      IF t307 IS BOUND.
        IF t307 IS BOUND.
          DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t312 TYPE REF TO object.
          t312 = t307.
          TRY.
              t306 ?= t312.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t306 IS NOT BOUND.
            TRY.
                t311 ?= t307.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t311 IS BOUND.
              t306 = t311->source( ).
            ENDIF.
            IF t306 IS NOT BOUND.
              CREATE OBJECT t306.
              t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t306->oval = t307.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      t300 = t306.
      DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t315 = t300.
      DATA(t317) = VALUE abap_bool( ).
      DATA(t318) = VALUE abap_bool( ).
      t318 = xsdbool( xsdbool( t315 IS INITIAL ) = abap_false ).
      t317 = t318.
      IF t318 = abap_true.
        DATA(t321) = VALUE abap_bool( ).
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t322 = t315.
        IF t322 IS BOUND AND t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t321 = xsdbool( t322->oval IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        t317 = t321.
      ENDIF.
      IF t317 = abap_true.
      ELSE.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t325 = t300.
        DATA(t327) = VALUE abap_bool( ).
        DATA(t328) = VALUE abap_bool( ).
        t328 = xsdbool( xsdbool( t325 IS INITIAL ) = abap_false ).
        t327 = t328.
        IF t328 = abap_true.
          DATA(t331) = VALUE abap_bool( ).
          DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t332 = t325.
          IF t332 IS BOUND AND t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t331 = xsdbool( t332->oval IS INSTANCE OF zcl_lnt_unknown_type ).
          ENDIF.
          t327 = t331.
        ENDIF.
        IF t327 = abap_true.
          DATA(t334) = VALUE string( ).
          DATA(t336) = |Target type unknown, |.
          DATA(t337) = VALUE string( ).
          t337 = t296->concat_tokens( ).
          DATA(t340) = strlen( t336 ).
          t334 = |{ t336 }{ t337 }|.
          DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t341 = t2->issues.
          DATA t343 TYPE REF TO zcl_lnt_issue.
          DATA t348 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t343 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t334 i_fix = t348 ).
          t341->load( ).
          APPEND t343 TO t341->items.
          t341->save( ).
          RETURN.
        ELSE.
          DATA(t349) = VALUE abap_bool( ).
          DATA(t350) = VALUE abap_bool( ).
          DATA(t351) = VALUE abap_bool( ).
          DATA(t352) = VALUE abap_bool( ).
          DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t354 = t300.
          DATA(t356) = VALUE abap_bool( ).
          DATA(t357) = VALUE abap_bool( ).
          t357 = xsdbool( xsdbool( t354 IS INITIAL ) = abap_false ).
          t356 = t357.
          IF t357 = abap_true.
            DATA(t360) = VALUE abap_bool( ).
            DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t361 = t354.
            IF t361 IS BOUND AND t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t360 = xsdbool( t361->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
            ENDIF.
            t356 = t360.
          ENDIF.
          t352 = xsdbool( t356 = abap_false ).
          t351 = t352.
          IF t352 = abap_true.
            DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t365 = t300.
            DATA(t367) = VALUE abap_bool( ).
            DATA(t368) = VALUE abap_bool( ).
            t368 = xsdbool( xsdbool( t365 IS INITIAL ) = abap_false ).
            t367 = t368.
            IF t368 = abap_true.
              DATA(t371) = VALUE abap_bool( ).
              DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t372 = t365.
              IF t372 IS BOUND AND t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t371 = xsdbool( t372->oval IS INSTANCE OF zcl_lnt_any_type ).
              ENDIF.
              t367 = t371.
            ENDIF.
            t351 = xsdbool( t367 = abap_false ).
          ENDIF.
          t350 = t351.
          IF t351 = abap_true.
            DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t376 = t300.
            DATA(t378) = VALUE abap_bool( ).
            DATA(t379) = VALUE abap_bool( ).
            t379 = xsdbool( xsdbool( t376 IS INITIAL ) = abap_false ).
            t378 = t379.
            IF t379 = abap_true.
              DATA(t382) = VALUE abap_bool( ).
              DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t383 = t376.
              IF t383 IS BOUND AND t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t382 = xsdbool( t383->oval IS INSTANCE OF zcl_lnt_data_type ).
              ENDIF.
              t378 = t382.
            ENDIF.
            t350 = xsdbool( t378 = abap_false ).
          ENDIF.
          t349 = t350.
          IF t350 = abap_true.
            DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t387 = t300.
            DATA(t389) = VALUE abap_bool( ).
            DATA(t390) = VALUE abap_bool( ).
            t390 = xsdbool( xsdbool( t387 IS INITIAL ) = abap_false ).
            t389 = t390.
            IF t390 = abap_true.
              DATA(t393) = VALUE abap_bool( ).
              DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t394 = t387.
              IF t394 IS BOUND AND t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t393 = xsdbool( t394->oval IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
              ENDIF.
              t389 = t393.
            ENDIF.
            t349 = xsdbool( t389 = abap_false ).
          ENDIF.
          IF t349 = abap_true.
            DATA(t396) = VALUE string( ).
            DATA(t398) = |Target must be an object reference, |.
            DATA(t399) = VALUE string( ).
            t399 = t296->concat_tokens( ).
            DATA(t402) = strlen( t398 ).
            t396 = |{ t398 }{ t399 }|.
            DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t403 = t2->issues.
            DATA t405 TYPE REF TO zcl_lnt_issue.
            DATA t410 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t405 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t396 i_fix = t410 ).
            t403->load( ).
            APPEND t405 TO t403->items.
            t403->save( ).
            RETURN.
          ELSE.
            DATA(t411) = VALUE abap_bool( ).
            DATA(t412) = VALUE abap_bool( ).
            DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t413 = t300.
            DATA(t415) = VALUE abap_bool( ).
            DATA(t416) = VALUE abap_bool( ).
            t416 = xsdbool( xsdbool( t413 IS INITIAL ) = abap_false ).
            t415 = t416.
            IF t416 = abap_true.
              DATA(t419) = VALUE abap_bool( ).
              DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t420 = t413.
              IF t420 IS BOUND AND t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t419 = xsdbool( t420->oval IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
              ENDIF.
              t415 = t419.
            ENDIF.
            t412 = t415.
            t411 = t412.
            IF t412 = abap_true.
              DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t411 = xsdbool( t5 IS INITIAL ).
            ENDIF.
            IF t411 = abap_true.
              DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t431 = t2->issues.
              DATA t433 TYPE REF TO zcl_lnt_issue.
              DATA t438 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t433 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Generic type, cannot be instantiated| i_fix = t438 ).
              t431->load( ).
              APPEND t433 TO t431->items.
              t431->save( ).
              RETURN.
            ELSE.
              DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t440 = t300.
              DATA(t442) = VALUE abap_bool( ).
              DATA(t443) = VALUE abap_bool( ).
              t443 = xsdbool( xsdbool( t440 IS INITIAL ) = abap_false ).
              t442 = t443.
              IF t443 = abap_true.
                DATA(t446) = VALUE abap_bool( ).
                DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t447 = t440.
                IF t447 IS BOUND AND t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t446 = xsdbool( t447->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
                ENDIF.
                t442 = t446.
              ENDIF.
              IF t442 = abap_true.
                DATA t449 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t452 TYPE REF TO zcl_lnt_object_reference_type.
                DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t453 = t300.
                IF t453 IS BOUND.
                  IF t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    TRY.
                        t452 ?= t453->oval.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                  ENDIF.
                  IF t452 IS NOT BOUND.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                  ENDIF.
                ENDIF.
                t449 = t452->identifier.
                DATA t457 TYPE REF TO zif_lnt_interface_definition.
                DATA t459 TYPE REF TO zcl_lnt_current_scope.
                t459 = t2->scope.
                DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t469) = VALUE string( ).
                t469 = t449->token->str.
                DATA(t477) = VALUE string( ).
                DATA(t478) = t469.
                DATA(t479) = 0.
                DATA(t480) = 1.
                DATA(t481) = strlen( t478 ).
                IF t479 < 0.
                  t479 = t479 + t481.
                  IF t479 < 0.
                    t479 = 0.
                  ENDIF.
                ENDIF.
                IF t479 > t481 OR t480 <= 0.
                ELSE.
                  IF t480 > t481 - t479.
                    t480 = t481 - t479.
                  ENDIF.
                  t477 = t478+t479(t480).
                ENDIF.
                IF xsdbool( t477 = |!| ) = abap_true.
                  DATA(t484) = VALUE string( ).
                  t484 = t469.
                  DATA(t486) = VALUE string( ).
                  DATA(t488) = 1.
                  DATA(t489) = VALUE i( ).
                  t489 = strlen( t484 ).
                  DATA(t492) = strlen( t484 ).
                  IF t488 < 0.
                    t488 = t488 + t492.
                    IF t488 < 0.
                      t488 = 0.
                    ENDIF.
                  ENDIF.
                  IF t488 > t492 OR t489 <= 0.
                  ELSE.
                    IF t489 > t492 - t488.
                      t489 = t492 - t488.
                    ENDIF.
                    t486 = t484+t488(t489).
                  ENDIF.
                  t469 = t486.
                ENDIF.
                DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t494->has = abap_true.
                t494->value = t469.
                t462 = t494.
                DATA t496 TYPE REF TO zif_lnt_interface_definition.
                DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t498 = t462.
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
                  DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t511) = VALUE string( ).
                  t511 = t462->value.
                  DATA(t513) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t513->has = abap_true.
                  t513->value = t511.
                  t508 = t513.
                  DATA t515 TYPE REF TO zif_lnt_class_definition.
                  DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t517 = t508.
                  DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t521) = VALUE abap_bool( ).
                  IF t517 IS INITIAL.
                    t521 = abap_true.
                  ELSEIF t517->has = abap_false.
                    t521 = abap_true.
                  ENDIF.
                  IF t521 = abap_true.
                  ELSE.
                    DATA t525 TYPE REF TO zif_lnt_class_definition.
                    DATA t527 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    t527 = t459->current.
                    DATA t530 TYPE REF TO zif_lnt_class_definition.
                    IF xsdbool( t527 IS INITIAL ) = abap_true.
                    ELSE.
                      DATA t535 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      t535 = t527.
                      DATA(t537) = VALUE string( ).
                      t537 = t508->value.
                      t530 = t535->find_class_definition( i_name = t537 ).
                    ENDIF.
                    t525 = t530.
                    DATA t539 TYPE REF TO zif_lnt_class_definition.
                    IF xsdbool( t525 IS BOUND ) = abap_true.
                      t539 = t525.
                    ELSE.
                      DATA t548 TYPE REF TO zcl_lnt_class.
                      DATA t549 TYPE REF TO zcl_lnt_class.
                      DATA t551 TYPE REF TO zif_lnt_registry.
                      t551 = t459->reg.
                      DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t556) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t556->has = abap_true.
                      t556->value = |CLAS|.
                      t553 = t556.
                      DATA(t560) = VALUE string( ).
                      t560 = t508->value.
                      DATA(t562) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t562->has = abap_true.
                      t562->value = t560.
                      DATA t564 TYPE REF TO object.
                      t564 = t551->get_object( i_type_9913 = t553 i_name = t562 ).
                      t549 ?= t564.
                      t548 = t549.
                      DATA t565 TYPE REF TO zif_lnt_class_definition.
                      IF xsdbool( t548 IS BOUND ) = abap_true.
                        t565 = t548->gt_dfn_ins_src_obj_cls_ts_clss( ).
                      ELSE.
                        CLEAR t565.
                      ENDIF.
                      t539 = t565.
                    ENDIF.
                    t515 = t539.
                  ENDIF.
                  t506 = t515.
                  DATA t572 TYPE REF TO zif_lnt_interface_definition.
                  IF xsdbool( t506 IS BOUND ) = abap_true.
                    DATA t575 TYPE REF TO zif_lnt_interface_definition.
                    t575 ?= t506.
                    t572 = t575.
                  ELSE.
                    DATA t579 TYPE REF TO zif_lnt_interface_definition.
                    DATA t581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t584) = VALUE string( ).
                    t584 = t462->value.
                    DATA(t586) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t586->has = abap_true.
                    t586->value = t584.
                    t581 = t586.
                    DATA t588 TYPE REF TO zif_lnt_interface_definition.
                    DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t590 = t581.
                    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t594) = VALUE abap_bool( ).
                    IF t590 IS INITIAL.
                      t594 = abap_true.
                    ELSEIF t590->has = abap_false.
                      t594 = abap_true.
                    ENDIF.
                    IF t594 = abap_true.
                    ELSE.
                      DATA t598 TYPE REF TO zif_lnt_interface_definition.
                      DATA t600 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      t600 = t459->current.
                      DATA t603 TYPE REF TO zif_lnt_interface_definition.
                      IF xsdbool( t600 IS INITIAL ) = abap_true.
                      ELSE.
                        DATA t608 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        t608 = t600.
                        DATA(t610) = VALUE string( ).
                        t610 = t581->value.
                        t603 = t608->find_interface_definition( i_name = t610 ).
                      ENDIF.
                      t598 = t603.
                      DATA t612 TYPE REF TO zif_lnt_interface_definition.
                      IF xsdbool( t598 IS BOUND ) = abap_true.
                        t612 = t598.
                      ELSE.
                        DATA t621 TYPE REF TO zcl_lnt_ob_interface.
                        DATA t622 TYPE REF TO zcl_lnt_ob_interface.
                        DATA t624 TYPE REF TO zif_lnt_registry.
                        t624 = t459->reg.
                        DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA(t629) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t629->has = abap_true.
                        t629->value = |INTF|.
                        t626 = t629.
                        DATA(t633) = VALUE string( ).
                        t633 = t581->value.
                        DATA(t635) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t635->has = abap_true.
                        t635->value = t633.
                        DATA t637 TYPE REF TO object.
                        t637 = t624->get_object( i_type_9913 = t626 i_name = t635 ).
                        t622 ?= t637.
                        t621 = t622.
                        DATA t638 TYPE REF TO zif_lnt_interface_definition.
                        IF xsdbool( t621 IS BOUND ) = abap_true.
                          t638 = t621->def.
                        ELSE.
                          CLEAR t638.
                        ENDIF.
                        t612 = t638.
                      ENDIF.
                      t588 = t612.
                    ENDIF.
                    t579 = t588.
                    DATA t648 TYPE REF TO zif_lnt_interface_definition.
                    IF xsdbool( t579 IS BOUND ) = abap_true.
                      t648 = t579.
                    ELSE.
                      CLEAR t648.
                    ENDIF.
                    t572 = t648.
                  ENDIF.
                  t496 = t572.
                ENDIF.
                t457 = t496.
                DATA(t657) = VALUE abap_bool( ).
                DATA(t658) = VALUE abap_bool( ).
                t658 = xsdbool( t457 IS BOUND AND t457 IS INSTANCE OF zcl_lnt_interface_definition ).
                t657 = t658.
                IF t658 = abap_true.
                  DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t657 = xsdbool( t5 IS INITIAL ).
                ENDIF.
                IF t657 = abap_true.
                  DATA t669 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t669 = t2->issues.
                  DATA t671 TYPE REF TO zcl_lnt_issue.
                  DATA t676 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  t671 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Interface reference, cannot be instantiated| i_fix = t676 ).
                  t669->load( ).
                  APPEND t671 TO t669->items.
                  t669->save( ).
                  RETURN.
                ELSE.
                  DATA(t677) = VALUE abap_bool( ).
                  DATA(t678) = VALUE abap_bool( ).
                  DATA(t679) = VALUE abap_bool( ).
                  DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t680 = t300.
                  DATA(t682) = VALUE abap_bool( ).
                  DATA(t683) = VALUE abap_bool( ).
                  t683 = xsdbool( xsdbool( t680 IS INITIAL ) = abap_false ).
                  t682 = t683.
                  IF t683 = abap_true.
                    DATA(t686) = VALUE abap_bool( ).
                    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t687 = t680.
                    IF t687 IS BOUND AND t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t686 = xsdbool( t687->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
                    ENDIF.
                    t682 = t686.
                  ENDIF.
                  t679 = t682.
                  t678 = t679.
                  IF t679 = abap_true.
                    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t678 = xsdbool( t5 IS INITIAL ).
                  ENDIF.
                  t677 = t678.
                  IF t678 = abap_true.
                    DATA t697 TYPE REF TO zif_lnt_interface_definition.
                    DATA t698 TYPE REF TO zcl_lnt_current_scope.
                    t698 = t2->scope.
                    DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t703 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t704 TYPE REF TO zcl_lnt_object_reference_type.
                    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t705 = t300.
                    IF t705 IS BOUND.
                      IF t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t704 ?= t705->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t704 IS NOT BOUND.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                      ENDIF.
                    ENDIF.
                    t703 = t704.
                    DATA t708 TYPE REF TO zcl_lnt_abstract_type_data.
                    t708 = t703->data_56cc.
                    DATA t711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    IF xsdbool( t708 IS INITIAL ) = abap_true.
                    ELSE.
                      t711 = t708->zlnt_view_read_sr_c978da49ae47( ).
                    ENDIF.
                    t701 = t711.
                    DATA t718 TYPE REF TO zif_lnt_interface_definition.
                    DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t720 = t701.
                    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t724) = VALUE abap_bool( ).
                    IF t720 IS INITIAL.
                      t724 = abap_true.
                    ELSEIF t720->has = abap_false.
                      t724 = abap_true.
                    ENDIF.
                    IF t724 = abap_true.
                    ELSE.
                      DATA t728 TYPE REF TO zif_lnt_interface_definition.
                      DATA t730 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      t730 = t698->current.
                      DATA t733 TYPE REF TO zif_lnt_interface_definition.
                      IF xsdbool( t730 IS INITIAL ) = abap_true.
                      ELSE.
                        DATA t738 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        t738 = t730.
                        DATA(t740) = VALUE string( ).
                        t740 = t701->value.
                        t733 = t738->find_interface_definition( i_name = t740 ).
                      ENDIF.
                      t728 = t733.
                      DATA t742 TYPE REF TO zif_lnt_interface_definition.
                      IF xsdbool( t728 IS BOUND ) = abap_true.
                        t742 = t728.
                      ELSE.
                        DATA t751 TYPE REF TO zcl_lnt_ob_interface.
                        DATA t752 TYPE REF TO zcl_lnt_ob_interface.
                        DATA t754 TYPE REF TO zif_lnt_registry.
                        t754 = t698->reg.
                        DATA t756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA(t759) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t759->has = abap_true.
                        t759->value = |INTF|.
                        t756 = t759.
                        DATA(t763) = VALUE string( ).
                        t763 = t701->value.
                        DATA(t765) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t765->has = abap_true.
                        t765->value = t763.
                        DATA t767 TYPE REF TO object.
                        t767 = t754->get_object( i_type_9913 = t756 i_name = t765 ).
                        t752 ?= t767.
                        t751 = t752.
                        DATA t768 TYPE REF TO zif_lnt_interface_definition.
                        IF xsdbool( t751 IS BOUND ) = abap_true.
                          t768 = t751->def.
                        ELSE.
                          CLEAR t768.
                        ENDIF.
                        t742 = t768.
                      ENDIF.
                      t718 = t742.
                    ENDIF.
                    t697 = t718.
                    t677 = xsdbool( t697 IS BOUND ).
                  ENDIF.
                  IF t677 = abap_true.
                    DATA t780 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t780 = t2->issues.
                    DATA t782 TYPE REF TO zcl_lnt_issue.
                    DATA t787 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    t782 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Interface reference, cannot be instantiated| i_fix = t787 ).
                    t780->load( ).
                    APPEND t782 TO t780->items.
                    t780->save( ).
                    RETURN.
                  ELSE.
                    DATA(t788) = VALUE abap_bool( ).
                    DATA(t789) = VALUE abap_bool( ).
                    t789 = xsdbool( t457 IS BOUND AND t457 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                    t788 = t789.
                    IF t789 = abap_true.
                      DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t788 = xsdbool( t3 IS INITIAL ).
                    ENDIF.
                    IF t788 = abap_true.
                      DATA t798 TYPE REF TO zcl_lnt_ty_class_definition.
                      t798 ?= t457.
                      t3 = t798.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA(t801) = VALUE abap_bool( ).
                DATA(t802) = VALUE abap_bool( ).
                DATA(t803) = VALUE abap_bool( ).
                DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t803 = xsdbool( t5 IS INITIAL ).
                t802 = t803.
                IF t803 = abap_true.
                  t802 = xsdbool( t457 IS BOUND AND t457 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                ENDIF.
                t801 = t802.
                IF t802 = abap_true.
                  DATA t815 TYPE REF TO zcl_lnt_ty_class_definition.
                  t815 ?= t457.
                  t801 = xsdbool( t815->abstract = abap_true ).
                ENDIF.
                IF t801 = abap_true.
                  DATA(t821) = VALUE string( ).
                  DATA(t823) = VALUE string( ).
                  DATA(t827) = VALUE string( ).
                  t827 = t449->token->str.
                  DATA(t835) = VALUE string( ).
                  DATA(t836) = t827.
                  DATA(t837) = 0.
                  DATA(t838) = 1.
                  DATA(t839) = strlen( t836 ).
                  IF t837 < 0.
                    t837 = t837 + t839.
                    IF t837 < 0.
                      t837 = 0.
                    ENDIF.
                  ENDIF.
                  IF t837 > t839 OR t838 <= 0.
                  ELSE.
                    IF t838 > t839 - t837.
                      t838 = t839 - t837.
                    ENDIF.
                    t835 = t836+t837(t838).
                  ENDIF.
                  IF xsdbool( t835 = |!| ) = abap_true.
                    DATA(t842) = VALUE string( ).
                    t842 = t827.
                    DATA(t844) = VALUE string( ).
                    DATA(t846) = 1.
                    DATA(t847) = VALUE i( ).
                    t847 = strlen( t842 ).
                    DATA(t850) = strlen( t842 ).
                    IF t846 < 0.
                      t846 = t846 + t850.
                      IF t846 < 0.
                        t846 = 0.
                      ENDIF.
                    ENDIF.
                    IF t846 > t850 OR t847 <= 0.
                    ELSE.
                      IF t847 > t850 - t846.
                        t847 = t850 - t846.
                      ENDIF.
                      t844 = t842+t846(t847).
                    ENDIF.
                    t827 = t844.
                  ENDIF.
                  t823 = t827.
                  DATA(t853) = strlen( t823 ).
                  t821 = |{ t823 }{ | is abstract, cannot be instantiated| }|.
                  DATA t854 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t854 = t2->issues.
                  DATA t856 TYPE REF TO zcl_lnt_issue.
                  DATA t861 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  t856 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t821 i_fix = t861 ).
                  t854->load( ).
                  APPEND t856 TO t854->items.
                  t854->save( ).
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t862) = VALUE abap_bool( ).
      DATA(t863) = VALUE abap_bool( ).
      DATA t864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t864 = t300.
      DATA(t866) = VALUE abap_bool( ).
      DATA(t867) = VALUE abap_bool( ).
      t867 = xsdbool( xsdbool( t864 IS INITIAL ) = abap_false ).
      t866 = t867.
      IF t867 = abap_true.
        DATA(t870) = VALUE abap_bool( ).
        DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t871 = t864.
        IF t871 IS BOUND AND t871->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t870 = xsdbool( t871->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
        ENDIF.
        t866 = t870.
      ENDIF.
      t863 = t866.
      t862 = t863.
      IF t863 = abap_true.
        DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t862 = xsdbool( t3 IS INITIAL ).
      ENDIF.
      IF t862 = abap_true.
        DATA t881 TYPE REF TO zcl_lnt_current_scope.
        t881 = t2->scope.
        DATA t884 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t886 TYPE REF TO zcl_lnt_abstract_type.
        DATA t887 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t888 = t300.
        IF t888 IS BOUND.
          IF t888->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t887 ?= t888->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t887 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
          ENDIF.
        ENDIF.
        t886 = t887.
        DATA t891 TYPE REF TO zcl_lnt_abstract_type_data.
        t891 = t886->data_56cc.
        DATA t894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t891 IS INITIAL ) = abap_true.
        ELSE.
          t894 = t891->zlnt_view_read_sr_c978da49ae47( ).
        ENDIF.
        t884 = t894.
        DATA t901 TYPE REF TO zif_lnt_class_definition.
        DATA t903 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t903 = t884.
        DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t907) = VALUE abap_bool( ).
        IF t903 IS INITIAL.
          t907 = abap_true.
        ELSEIF t903->has = abap_false.
          t907 = abap_true.
        ENDIF.
        IF t907 = abap_true.
        ELSE.
          DATA t911 TYPE REF TO zif_lnt_class_definition.
          DATA t913 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t913 = t881->current.
          DATA t916 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t913 IS INITIAL ) = abap_true.
          ELSE.
            DATA t921 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t921 = t913.
            DATA(t923) = VALUE string( ).
            t923 = t884->value.
            t916 = t921->find_class_definition( i_name = t923 ).
          ENDIF.
          t911 = t916.
          DATA t925 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t911 IS BOUND ) = abap_true.
            t925 = t911.
          ELSE.
            DATA t934 TYPE REF TO zcl_lnt_class.
            DATA t935 TYPE REF TO zcl_lnt_class.
            DATA t937 TYPE REF TO zif_lnt_registry.
            t937 = t881->reg.
            DATA t939 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t942) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t942->has = abap_true.
            t942->value = |CLAS|.
            t939 = t942.
            DATA(t946) = VALUE string( ).
            t946 = t884->value.
            DATA(t948) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t948->has = abap_true.
            t948->value = t946.
            DATA t950 TYPE REF TO object.
            t950 = t937->get_object( i_type_9913 = t939 i_name = t948 ).
            t935 ?= t950.
            t934 = t935.
            DATA t951 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t934 IS BOUND ) = abap_true.
              t951 = t934->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t951.
            ENDIF.
            t925 = t951.
          ENDIF.
          t901 = t925.
        ENDIF.
        t3 = t901.
      ENDIF.
    ENDIF.
    DATA t958 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t960) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t958 = t1->find_direct_expressions( i_type_9913 = t960 ).
    DATA t961 TYPE REF TO zcl_lnt_expression_node.
    DATA t962 TYPE REF TO object.
    DATA(t963) = VALUE i( ).
    DO.
      t958->load( ).
      IF t963 >= lines( t958->items ).
        EXIT.
      ENDIF.
      CLEAR t962.
      READ TABLE t958->items INDEX t963 + 1 INTO t962.
      t963 = t963 + 1.
      DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t964.
      CLEAR t961.
      IF t962 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t964 ?= t962.
        DATA t965 TYPE REF TO object.
        t965 = t964->as_ref( ).
        t961 ?= t965.
      ELSE.
        t961 ?= t962.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t961 i_input_967e = t2 ).
    ENDDO.
    DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t970 TYPE REF TO zif_lnt_class_definition.
    t970 = t3.
    DATA t972 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t970 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t976) = VALUE string( ).
      t976 = t970->get_name( ).
      DATA(t979) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t979->has = abap_true.
      t979->value = t976.
      t972 = t979.
    ENDIF.
    t968 = t972.
    DATA(t980) = VALUE abap_bool( ).
    DATA(t981) = VALUE abap_bool( ).
    DATA t982 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t982 = t968.
    DATA t984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t986) = VALUE abap_bool( ).
    IF t982 IS INITIAL.
      t986 = abap_true.
    ELSEIF t982->has = abap_false.
      t986 = abap_true.
    ENDIF.
    t981 = t986.
    t980 = t981.
    IF t981 = abap_true.
      DATA t989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t989 = t300.
      DATA(t991) = VALUE abap_bool( ).
      DATA(t992) = VALUE abap_bool( ).
      t992 = xsdbool( xsdbool( t989 IS INITIAL ) = abap_false ).
      t991 = t992.
      IF t992 = abap_true.
        DATA(t995) = VALUE abap_bool( ).
        DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t996 = t989.
        IF t996 IS BOUND AND t996->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t995 = xsdbool( t996->oval IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        t991 = t995.
      ENDIF.
      t980 = t991.
    ENDIF.
    IF t980 = abap_true.
      DATA t1000 TYPE REF TO zcl_lnt_void_type.
      DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1001 = t300.
      IF t1001 IS BOUND.
        IF t1001->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t1000 ?= t1001->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t1000 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
        ENDIF.
      ENDIF.
      t968 = t1000->voided.
    ENDIF.
    DATA t1005 TYPE REF TO zif_lnt_class_definition.
    t1005 = t3.
    DATA t1007 TYPE REF TO zcl_lnt_current_scope.
    t1007 = t2->scope.
    DATA t1009 TYPE REF TO zcl_lnt_abstract_token.
    DATA t1010 TYPE REF TO zcl_lnt_expression_node.
    t1010 = t296.
    DATA t1012 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t1010 IS INITIAL ) = abap_true.
    ELSE.
      t1012 = t1010->get_first_token( ).
    ENDIF.
    t1009 = t1012.
    DATA t1019 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t1005 IS INITIAL ) = abap_true.
    ELSE.
      DATA t1023 TYPE REF TO zcl_lnt_fi_identifier.
      t1023 ?= t1005.
      t1019 = t1023.
    ENDIF.
    DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1026.
    t1026->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1026->sval = |Constructor Reference|.
    DATA(t1028) = VALUE string( ).
    t1028 = t2->filename.
    DATA t1032 TYPE REF TO zcl_lnt_ireference_extras.
    DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1037 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t1032 = NEW zcl_lnt_ireference_extras( i_oo_name = t968 i_oo_type = t1035 i_found_qualified = t1037 ).
    CREATE OBJECT t1032->zlnt_view_ownkeys_b0e8086400eb.
    t1032->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1032->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t1039 ).
    CREATE OBJECT t1032->zlnt_json_ownkeys_70e5fd461788.
    t1032->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1032->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t1041 ).
    t1007->add_reference( i_usage = t1009 i_referencing = t1019 i_type_9913 = t1026 i_filename = t1028 i_extra = t1032 ).
    DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t3 IS INITIAL ) = abap_false ) = abap_true.
      DATA t1051 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1051 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t3 i_input_967e = t2 ).
      DATA(t1056) = VALUE abap_bool( ).
      IF t1051 IS BOUND.
        IF t1051->has = abap_true.
          t1056 = xsdbool( strlen( t1051->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t1056 = abap_true.
        DATA t1058 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t1058 = t2->issues.
        DATA t1060 TYPE REF TO zcl_lnt_issue.
        DATA t1062 TYPE REF TO zcl_lnt_abstract_token.
        t1062 = t1->get_first_token( ).
        DATA(t1064) = VALUE string( ).
        t1064 = t1051->value.
        DATA t1066 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t1060 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1062 i_message_26cb = t1064 i_fix = t1066 ).
        t1058->load( ).
        APPEND t1060 TO t1058->items.
        t1058->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    me->validate_parameters( i_cdef = t3 i_node = t1 i_input_967e = t2 ).
  ENDMETHOD.

  METHOD check_instantiation_allowed.
    DATA(t1) = i_cdef.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE f.
    t3 = t1->get_create_visibility( ).
    IF xsdbool( t3 = CONV f( 3 ) ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t10 = t2->scope->get_enclosing_class_name( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t10.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t19 = abap_true.
    ELSEIF t15->has = abap_false.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA(t23) = VALUE string( ).
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      t25 = t1->get_name( ).
      DATA(t28) = strlen( t25 ).
      t24 = |{ t25 }{ | cannot be instantiated, class is defined as | }|.
      DATA(t29) = VALUE string( ).
      IF xsdbool( t3 = CONV f( 1 ) ) = abap_true.
        t29 = |private|.
      ELSE.
        t29 = |protected|.
      ENDIF.
      DATA(t35) = strlen( t24 ).
      t23 = |{ t24 }{ t29 }|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t23.
      result = t36.
      RETURN.
    ENDIF.
    DATA t39 TYPE string.
    DATA t40 TYPE string.
    t40 = t10->value.
    DATA(t42) = strlen( t40 ).
    t39 = t40.
    IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t39 TO UPPER CASE.
    ELSE.
      t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
    ENDIF.
    DATA t43 TYPE string.
    DATA t44 TYPE string.
    t44 = t1->get_name( ).
    DATA(t46) = strlen( t44 ).
    t43 = t44.
    IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t43 TO UPPER CASE.
    ELSE.
      t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
    ENDIF.
    IF xsdbool( t39 = t43 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_object_oriented.
    DATA t50 TYPE REF TO zcl_lnt_current_scope.
    t50 = t2->scope.
    t49 = NEW zcl_lnt_object_oriented( i_scope = t50 ).
    DATA t53 TYPE string.
    t53 = t10->value.
    IF t49->has_friendship( i_cd = t1 i_friend_name = t53 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    IF xsdbool( t3 = CONV f( 2 ) ) = abap_true.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t61 TYPE REF TO zif_lnt_class_definition.
      DATA t63 TYPE REF TO zcl_lnt_current_scope.
      t63 = t2->scope.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t69 TYPE string.
      t69 = t10->value.
      DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t71->has = abap_true.
      t71->value = t69.
      t66 = t71.
      DATA t73 TYPE REF TO zif_lnt_class_definition.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t75 = t66.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t79) = VALUE abap_bool( ).
      IF t75 IS INITIAL.
        t79 = abap_true.
      ELSEIF t75->has = abap_false.
        t79 = abap_true.
      ENDIF.
      IF t79 = abap_true.
      ELSE.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t85 = t63->current.
        DATA t88 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t85 IS INITIAL ) = abap_true.
        ELSE.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t93 = t85.
          DATA t95 TYPE string.
          t95 = t66->value.
          t88 = t93->find_class_definition( i_name = t95 ).
        ENDIF.
        t83 = t88.
        DATA t97 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t83 IS BOUND ) = abap_true.
          t97 = t83.
        ELSE.
          DATA t106 TYPE REF TO zcl_lnt_class.
          DATA t107 TYPE REF TO zcl_lnt_class.
          DATA t109 TYPE REF TO zif_lnt_registry.
          t109 = t63->reg.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t114->has = abap_true.
          t114->value = |CLAS|.
          t111 = t114.
          DATA t118 TYPE string.
          t118 = t66->value.
          DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t120->has = abap_true.
          t120->value = t118.
          DATA t122 TYPE REF TO object.
          t122 = t109->get_object( i_type_9913 = t111 i_name = t120 ).
          t107 ?= t122.
          t106 = t107.
          DATA t123 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t106 IS BOUND ) = abap_true.
            t123 = t106->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t123.
          ENDIF.
          t97 = t123.
        ENDIF.
        t73 = t97.
      ENDIF.
      t61 = t73.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t61 IS INITIAL ) = abap_true.
      ELSE.
        t130 = t61->get_super_class( ).
      ENDIF.
      t59 = t130.
      DO.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t138 = t59.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        DATA(t143) = VALUE abap_bool( ).
        IF t138 IS INITIAL.
          t143 = abap_true.
        ELSEIF t138->has = abap_false.
          t143 = abap_true.
        ENDIF.
        IF xsdbool( t143 = abap_false ) = abap_false.
          EXIT.
        ENDIF.
        DATA t146 TYPE string.
        DATA t147 TYPE string.
        t147 = t59->value.
        DATA(t149) = strlen( t147 ).
        t146 = t147.
        IF t146 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t146 TO UPPER CASE.
        ELSE.
          t146 = zlnt_runtime_uppe_91169605024d=>full( t146 ).
        ENDIF.
        DATA t150 TYPE string.
        DATA t151 TYPE string.
        t151 = t1->get_name( ).
        DATA(t153) = strlen( t151 ).
        t150 = t151.
        IF t150 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t150 TO UPPER CASE.
        ELSE.
          t150 = zlnt_runtime_uppe_91169605024d=>full( t150 ).
        ENDIF.
        IF xsdbool( t146 = t150 ) = abap_true.
          CLEAR result.
          RETURN.
        ENDIF.
        DATA t156 TYPE REF TO zif_lnt_class_definition.
        CLEAR t156.
        DATA t158 TYPE REF TO zcl_lnt_current_scope.
        t158 = t2->scope.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t164 TYPE string.
        t164 = t59->value.
        DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t166->has = abap_true.
        t166->value = t164.
        t161 = t166.
        DATA t168 TYPE REF TO zif_lnt_class_definition.
        CLEAR t168.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t170 = t161.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        DATA(t174) = VALUE abap_bool( ).
        IF t170 IS INITIAL.
          t174 = abap_true.
        ELSEIF t170->has = abap_false.
          t174 = abap_true.
        ENDIF.
        IF t174 = abap_true.
          CLEAR t168.
        ELSE.
          DATA t178 TYPE REF TO zif_lnt_class_definition.
          CLEAR t178.
          DATA t180 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t180 = t158->current.
          DATA t183 TYPE REF TO zif_lnt_class_definition.
          CLEAR t183.
          IF xsdbool( t180 IS INITIAL ) = abap_true.
            CLEAR t183.
          ELSE.
            DATA t188 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t188 = t180.
            DATA t190 TYPE string.
            t190 = t161->value.
            t183 = t188->find_class_definition( i_name = t190 ).
          ENDIF.
          t178 = t183.
          DATA t192 TYPE REF TO zif_lnt_class_definition.
          CLEAR t192.
          IF xsdbool( t178 IS BOUND ) = abap_true.
            t192 = t178.
          ELSE.
            DATA t201 TYPE REF TO zcl_lnt_class.
            DATA t202 TYPE REF TO zcl_lnt_class.
            CLEAR t202.
            DATA t204 TYPE REF TO zif_lnt_registry.
            t204 = t158->reg.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t209->has = abap_true.
            t209->value = |CLAS|.
            t206 = t209.
            DATA t213 TYPE string.
            t213 = t161->value.
            DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t215->has = abap_true.
            t215->value = t213.
            DATA t217 TYPE REF TO object.
            t217 = t204->get_object( i_type_9913 = t206 i_name = t215 ).
            t202 ?= t217.
            t201 = t202.
            DATA t218 TYPE REF TO zif_lnt_class_definition.
            CLEAR t218.
            IF xsdbool( t201 IS BOUND ) = abap_true.
              t218 = t201->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t218.
            ENDIF.
            t192 = t218.
          ENDIF.
          t168 = t192.
        ENDIF.
        t156 = t168.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        IF xsdbool( t156 IS INITIAL ) = abap_true.
          CLEAR t225.
        ELSE.
          t225 = t156->get_super_class( ).
        ENDIF.
        t59 = t225.
      ENDDO.
    ENDIF.
    DATA(t234) = VALUE string( ).
    DATA t235 TYPE string.
    DATA t236 TYPE string.
    t236 = t1->get_name( ).
    DATA(t239) = strlen( t236 ).
    t235 = |{ t236 }{ | cannot be instantiated, class is defined as | }|.
    DATA(t240) = VALUE string( ).
    IF xsdbool( t3 = CONV f( 1 ) ) = abap_true.
      t240 = |private|.
    ELSE.
      t240 = |protected|.
    ENDIF.
    DATA(t246) = strlen( t235 ).
    t234 = |{ t235 }{ t240 }|.
    DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t247->has = abap_true.
    t247->value = t234.
    result = t247.

  ENDMETHOD.

  METHOD validate_parameters.
    DATA(t1) = i_cdef.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t13 = t2->find_direct_expression( i_type_9913 = t16 ).
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t13 IS INITIAL ) = abap_true.
      ELSE.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        t22 = t13.
        DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t17 = t22->find_all_expressions( i_type_9913 = t24 ).
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t26 = t17.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t26 IS BOUND ) = abap_true.
        t28 = t26.
      ELSE.
        CREATE OBJECT t28.
      ENDIF.
      t25 = t28.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA t35 TYPE REF TO object.
      DATA(t36) = VALUE i( ).
      DO.
        t25->load( ).
        IF t36 >= lines( t25->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t25->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t40.
        t40 = t34.
        DATA t45 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t48.
        t39 = zcl_lnt_sy_source=>run_syntax( i_node = t40 i_input_967e = t3 i_target_type = t45 i_write_reference = t46 i_allow_generic_deference = t47 i_read_reference = t48 ).
      ENDDO.
      RETURN.
    ENDIF.
    DATA t51 TYPE REF TO zcl_lnt_object_oriented.
    DATA t52 TYPE REF TO zcl_lnt_current_scope.
    t52 = t3->scope.
    t51 = NEW zcl_lnt_object_oriented( i_scope = t52 ).
    DATA t54 TYPE REF TO zif_lnt_interface_definition.
    t54 ?= t1.
    DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t60->has = abap_true.
    t60->value = |CONSTRUCTOR|.
    DATA t62 TYPE REF TO zif_lnt_method_parameters.
    DATA t64 TYPE REF TO zif_lnt_method_definition.
    t64 = t51->search_method_name( i_def = t54 i_name = t60 )->method.
    DATA t67 TYPE REF TO zif_lnt_method_parameters.
    IF xsdbool( t64 IS INITIAL ) = abap_true.
    ELSE.
      t67 = t64->get_parameters( ).
    ENDIF.
    t62 = t67.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zif_lnt_method_parameters.
    t77 = t62.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t77 IS INITIAL ) = abap_true.
    ELSE.
      t79 = t77->get_importing( ).
    ENDIF.
    t75 = t79.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t75 IS BOUND ) = abap_true.
      t86 = t75.
    ELSE.
      CREATE OBJECT t86.
    ENDIF.
    t73 = t86.
    DATA t92 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t98 TYPE REF TO zif_lnt_method_parameters.
    t98 = t62.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t98 IS INITIAL ) = abap_true.
    ELSE.
      t100 = t98->get_required_parameters( ).
    ENDIF.
    t96 = t100.
    DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t96 IS INITIAL ) = abap_true.
    ELSE.
      DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t112.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t114 = t96.
      DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t117 TYPE REF TO object.
      DATA(t118) = VALUE i( ).
      DO.
        t114->load( ).
        IF t118 >= lines( t114->items ).
          EXIT.
        ENDIF.
        CLEAR t117.
        READ TABLE t114->items INDEX t118 + 1 INTO t117.
        t118 = t118 + 1.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        CLEAR t116.
        IF t117 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t119 ?= t117.
          DATA t120 TYPE REF TO object.
          t120 = t119->as_ref( ).
          t116 ?= t120.
        ELSE.
          t116 ?= t117.
        ENDIF.
        DATA(t122) = VALUE string( ).
        DATA(t123) = VALUE string( ).
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        t124 = t116.
        DATA t127 TYPE string.
        t127 = t124->token->str.
        DATA(t135) = VALUE string( ).
        DATA(t136) = t127.
        DATA(t137) = 0.
        DATA(t138) = 1.
        DATA(t139) = strlen( t136 ).
        IF t137 < 0.
          t137 = t137 + t139.
          IF t137 < 0.
            t137 = 0.
          ENDIF.
        ENDIF.
        IF t137 > t139 OR t138 <= 0.
        ELSE.
          IF t138 > t139 - t137.
            t138 = t139 - t137.
          ENDIF.
          t135 = t136+t137(t138).
        ENDIF.
        IF xsdbool( t135 = |!| ) = abap_true.
          DATA t142 TYPE string.
          t142 = t127.
          DATA(t144) = VALUE string( ).
          DATA(t146) = 1.
          DATA t147 TYPE i.
          t147 = strlen( t142 ).
          DATA(t150) = strlen( t142 ).
          IF t146 < 0.
            t146 = t146 + t150.
            IF t146 < 0.
              t146 = 0.
            ENDIF.
          ENDIF.
          IF t146 > t150 OR t147 <= 0.
          ELSE.
            IF t147 > t150 - t146.
              t147 = t150 - t146.
            ENDIF.
            t144 = t142+t146(t147).
          ENDIF.
          t127 = t144.
        ENDIF.
        t123 = t127.
        DATA(t152) = strlen( t123 ).
        t122 = t123.
        IF t122 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t122 TO UPPER CASE.
        ELSE.
          t122 = zlnt_runtime_uppe_91169605024d=>full( t122 ).
        ENDIF.
        t112->load( ).
        APPEND t122 TO t112->items.
        t112->save( ).
      ENDDO.
      t107 = t112.
    ENDIF.
    t94 = t107.
    DATA t154 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t154 = NEW zlnt_runtime_set__1827558fd4c7( ).
    IF xsdbool( xsdbool( t94 IS INITIAL ) = abap_false ) = abap_true.
      DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t159 = t94.
      DATA(t161) = VALUE string( ).
      t159->dense( ).
      DATA(t162) = VALUE i( ).
      DO.
        t159->load( ).
        IF t162 >= lines( t159->items ).
          EXIT.
        ENDIF.
        CLEAR t161.
        READ TABLE t159->items INDEX t162 + 1 INTO t161.
        IF t159->has( t162 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t162 = t162 + 1.
        DATA t163 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        t163 = t154->add( p0 = t161 ).
      ENDDO.
    ENDIF.
    t92 = t154.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t170 TYPE REF TO zcl_lnt_expression_node.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t170 = t2->find_direct_expression( i_type_9913 = t173 ).
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t170 IS INITIAL ) = abap_true.
    ELSE.
      DATA t179 TYPE REF TO zcl_lnt_expression_node.
      t179 = t170.
      DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
      t174 = t179->find_all_expressions( i_type_9913 = t181 ).
    ENDIF.
    t168 = t174.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t168 IS BOUND ) = abap_true.
      t182 = t168.
    ELSE.
      CREATE OBJECT t182.
    ENDIF.
    t167 = t182.
    DATA t188 TYPE REF TO zcl_lnt_expression_node.
    DATA t189 TYPE REF TO object.
    DATA(t190) = VALUE i( ).
    DO.
      t167->load( ).
      IF t190 >= lines( t167->items ).
        EXIT.
      ENDIF.
      CLEAR t189.
      READ TABLE t167->items INDEX t190 + 1 INTO t189.
      t190 = t190 + 1.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      CLEAR t188.
      IF t189 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t191 ?= t189.
        DATA t192 TYPE REF TO object.
        t192 = t191->as_ref( ).
        t188 ?= t192.
      ELSE.
        t188 ?= t189.
      ENDIF.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t195.
      DATA t197 TYPE REF TO zcl_lnt_expression_node.
      DATA(t200) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t197 = t188->find_direct_expression( i_type_9913 = t200 ).
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t201.
      IF xsdbool( t197 IS INITIAL ) = abap_true.
        CLEAR t201.
      ELSE.
        DATA t205 TYPE string.
        t205 = t197->concat_tokens( ).
        DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t208->has = abap_true.
        t208->value = t205.
        t201 = t208.
      ENDIF.
      t195 = t201.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t209.
      DATA(t210) = VALUE abap_bool( ).
      IF t195 IS INITIAL.
        t210 = abap_true.
      ELSEIF t195->has = abap_false.
        t210 = abap_true.
      ENDIF.
      IF t210 = abap_true.
        CLEAR t209.
      ELSE.
        DATA t213 TYPE string.
        DATA t214 TYPE string.
        t214 = t195->value.
        DATA(t216) = strlen( t214 ).
        t213 = t214.
        IF t213 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t213 TO UPPER CASE.
        ELSE.
          t213 = zlnt_runtime_uppe_91169605024d=>full( t213 ).
        ENDIF.
        DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t217->has = abap_true.
        t217->value = t213.
        t209 = t217.
      ENDIF.
      t193 = t209.
      DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t219 = t193.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t221.
      DATA(t223) = VALUE abap_bool( ).
      IF t219 IS INITIAL.
        t223 = abap_true.
      ELSEIF t219->has = abap_false.
        t223 = abap_true.
      ENDIF.
      IF t223 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t225 = t188->find_direct_expression( i_type_9913 = t228 ).
      DATA t230 TYPE REF TO zcl_lnt_abstract_type.
      DATA t233 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t233.
      DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t234.
      DATA t235 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t236.
      t230 = zcl_lnt_sy_source=>run_syntax( i_node = t225 i_input_967e = t3 i_target_type = t233 i_write_reference = t234 i_allow_generic_deference = t235 i_read_reference = t236 ).
      DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t237.
      DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t239 = t73.
      DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t241.
      IF xsdbool( t239 IS INITIAL ) = abap_true.
        CLEAR t241.
      ELSE.
        DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t246 = t239.
        DATA t248 TYPE i.
        t246->load( ).
        t248 = lines( t246->items ).
        DATA t251 TYPE i.
        t251 = 0.
        DATA t253 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t253.
        DO.
          IF xsdbool( t251 < t248 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t258 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t258.
          DATA t260 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t260.
          DATA t263 TYPE REF TO object.
          t263 = t246->get( p0 = t251 ).
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          CLEAR t260.
          IF t263 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t264 ?= t263.
            DATA t265 TYPE REF TO object.
            t265 = t264->as_ref( ).
            t260 ?= t265.
          ELSE.
            t260 ?= t263.
          ENDIF.
          t258 = t260.
          DATA(t267) = VALUE string( ).
          DATA(t268) = VALUE string( ).
          DATA t269 TYPE REF TO zcl_lnt_fi_identifier.
          t269 = t258.
          DATA t272 TYPE string.
          t272 = t269->token->str.
          DATA(t280) = VALUE string( ).
          DATA(t281) = t272.
          DATA(t282) = 0.
          DATA(t283) = 1.
          DATA(t284) = strlen( t281 ).
          IF t282 < 0.
            t282 = t282 + t284.
            IF t282 < 0.
              t282 = 0.
            ENDIF.
          ENDIF.
          IF t282 > t284 OR t283 <= 0.
          ELSE.
            IF t283 > t284 - t282.
              t283 = t284 - t282.
            ENDIF.
            t280 = t281+t282(t283).
          ENDIF.
          IF xsdbool( t280 = |!| ) = abap_true.
            DATA t287 TYPE string.
            t287 = t272.
            DATA(t289) = VALUE string( ).
            DATA(t291) = 1.
            DATA t292 TYPE i.
            t292 = strlen( t287 ).
            DATA(t295) = strlen( t287 ).
            IF t291 < 0.
              t291 = t291 + t295.
              IF t291 < 0.
                t291 = 0.
              ENDIF.
            ENDIF.
            IF t291 > t295 OR t292 <= 0.
            ELSE.
              IF t292 > t295 - t291.
                t292 = t295 - t291.
              ENDIF.
              t289 = t287+t291(t292).
            ENDIF.
            t272 = t289.
          ENDIF.
          t268 = t272.
          DATA(t297) = strlen( t268 ).
          t267 = t268.
          IF t267 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t267 TO UPPER CASE.
          ELSE.
            t267 = zlnt_runtime_uppe_91169605024d=>full( t267 ).
          ENDIF.
          IF xsdbool( t267 = t193->value ) = abap_true.
            t253 = t258.
            EXIT.
          ENDIF.
          DATA(t306) = 1.
          t251 = t251 + t306.
        ENDDO.
        t241 = t253.
      ENDIF.
      t237 = t241.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t311.
      IF xsdbool( t237 IS INITIAL ) = abap_true.
        DATA t316 TYPE string.
        DATA t317 TYPE string.
        DATA(t318) = |constructor parameter "|.
        DATA t319 TYPE string.
        t319 = t193->value.
        DATA(t321) = strlen( t318 ).
        t317 = |{ t318 }{ t319 }|.
        DATA(t323) = strlen( t317 ).
        t316 = |{ t317 }{ |" does not exist| }|.
        DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t324 = t3->issues.
        DATA t326 TYPE REF TO zcl_lnt_issue.
        DATA t328 TYPE REF TO zcl_lnt_abstract_token.
        t328 = t2->get_first_token( ).
        DATA t331 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t331.
        t326 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t328 i_message_26cb = t316 i_fix = t331 ).
        t324->load( ).
        APPEND t326 TO t324->items.
        t324->save( ).
        RETURN.
      ENDIF.
      DATA t334 TYPE REF TO zcl_lnt_type_utils.
      DATA t335 TYPE REF TO zcl_lnt_current_scope.
      t335 = t3->scope.
      t334 = NEW zcl_lnt_type_utils( i_scope = t335 ).
      DATA t344 TYPE REF TO zcl_lnt_abstract_type.
      t344 = t237->type_cba0.
      IF xsdbool( t334->is_assignable_strict( i_source_75cf = t230 i_target_5f8a = t344 i_node = t225 ) = abap_false ) = abap_true.
        DATA t350 TYPE string.
        DATA t351 TYPE string.
        DATA(t352) = |constructor parameter "|.
        DATA t353 TYPE string.
        t353 = t193->value.
        DATA(t355) = strlen( t352 ).
        t351 = |{ t352 }{ t353 }|.
        DATA(t357) = strlen( t351 ).
        t350 = |{ t351 }{ |" type not compatible| }|.
        DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t358 = t3->issues.
        DATA t360 TYPE REF TO zcl_lnt_issue.
        DATA t362 TYPE REF TO zcl_lnt_abstract_token.
        t362 = t2->get_first_token( ).
        DATA t365 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t365.
        t360 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t362 i_message_26cb = t350 i_fix = t365 ).
        t358->load( ).
        APPEND t360 TO t358->items.
        t358->save( ).
        RETURN.
      ENDIF.

      DATA t366 TYPE abap_bool.
      DATA t368 TYPE string.
      t368 = t193->value.
      t366 = t92->delete( p0 = t368 ).
    ENDDO.
    DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t370 = t92->values( ).
    DATA(t372) = VALUE string( ).
    t370->dense( ).
    DATA(t373) = VALUE i( ).
    DO.
      t370->load( ).
      IF t373 >= lines( t370->items ).
        EXIT.
      ENDIF.
      CLEAR t372.
      READ TABLE t370->items INDEX t373 + 1 INTO t372.
      IF t370->has( t373 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t373 = t373 + 1.
      DATA t375 TYPE string.
      DATA t376 TYPE string.
      DATA(t377) = |constructor parameter "|.
      DATA(t379) = strlen( t377 ).
      t376 = |{ t377 }{ t372 }|.
      DATA(t381) = strlen( t376 ).
      t375 = |{ t376 }{ |" must be supplied| }|.
      DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t382 = t3->issues.
      DATA t384 TYPE REF TO zcl_lnt_issue.
      DATA t386 TYPE REF TO zcl_lnt_abstract_token.
      t386 = t2->get_first_token( ).
      DATA t389 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t389.
      t384 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t386 i_message_26cb = t375 i_fix = t389 ).
      t382->load( ).
      APPEND t384 TO t382->items.
      t382->save( ).
      RETURN.
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d885_b4be87ef71b1.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
