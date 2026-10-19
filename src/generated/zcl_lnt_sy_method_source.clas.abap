* TS: src/abap/5_syntax/expressions/method_source.ts:19:1 MethodSource
CLASS zcl_lnt_sy_method_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_union_8cd68e5e.
    CLASS-METHODS find_top IMPORTING i_first TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    t5 = t2->scope.
    t3 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    t11 = t1.
    t10 = t11->children.
    t9 ?= t10.
    t7 = t9->slice0( ).
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t18 TYPE REF TO object.
    t18 = t7->shift( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t19 ?= t18.
      DATA t20 TYPE REF TO object.
      t20 = t19->as_ref( ).
      t16 ?= t20.
    ELSE.
      t16 ?= t18.
    ENDIF.
    t15 = t16.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t29 TYPE REF TO zcx_lnt_assert_error.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = |MethodSource, first child expected|.
      t29 = NEW zcx_lnt_assert_error( i_message_26cb = t33 ).
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
    DATA t37 TYPE REF TO zif_lnt_union_b6d4892d.
    DATA t39 TYPE REF TO zif_lnt_node.
    DATA t40 TYPE REF TO zif_lnt_union_4cf1d054.
    t40 = t15.
    t39 ?= t40.
    t37 = zcl_lnt_sy_method_source=>find_top( i_first = t39 i_input_967e = t2 i_children_9020 = t7 ).
    DATA(t44) = VALUE abap_bool( ).
    t44 = abap_false.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t37 IS INITIAL ) = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t56 TYPE REF TO zcl_lnt_current_scope.
      t56 = t2->scope.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = |me|.
      t59 = t63.
      DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t67 = t59.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t71) = VALUE abap_bool( ).
      IF t67 IS INITIAL.
        t71 = abap_true.
      ELSEIF t67->has = abap_false.
        t71 = abap_true.
      ENDIF.
      IF t71 = abap_true.
      ELSE.
        DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t77 = t56->current.
        DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t77 IS INITIAL ) = abap_true.
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t85 = t77.
          DATA(t87) = VALUE string( ).
          t87 = t59->value.
          t80 = t85->find_variable( i_name = t87 ).
        ENDIF.
        t75 = t80.
        DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t75 IS BOUND ) = abap_true.
          t89 = t75.
        ELSE.
          DATA(t101) = VALUE string( ).
          t101 = t59->value.
          DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t103->has = abap_true.
          t103->value = t101.
          t89 = t56->find_type_pool_constant( i_name = t103 ).
        ENDIF.
        t65 = t89.
      ENDIF.
      t54 = t65.
      DATA t105 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t54 IS INITIAL ) = abap_true.
      ELSE.
        t105 = t54->type_cba0.
      ENDIF.
      t37 = t105.
      DATA(t115) = VALUE i( ).
      t115 = t7->unshift( p0 = t15 ).
      t44 = abap_true.
    ENDIF.
    DATA(t120) = VALUE abap_bool( ).
    DATA(t121) = VALUE abap_bool( ).
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = VALUE abap_bool( ).
    DATA t126 TYPE REF TO zcl_lnt_current_scope.
    t126 = t2->scope.
    t123 = xsdbool( t126->reg->get_config( )->get_language_version( ) = |Cloud| ).
    t122 = t123.
    IF t123 = abap_true.
      DATA t134 TYPE REF TO object.
      t134 = t15->get_db65( ).
      t122 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_st_dynamic ).
    ENDIF.
    t121 = t122.
    IF t122 = abap_true.
      t121 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_expression_node ).
    ENDIF.
    t120 = t121.
    IF t121 = abap_true.
      DATA(t139) = VALUE abap_bool( ).
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t141 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t142 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t145 TYPE REF TO object.
      t145 = t7->get( p0 = 0 ).
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t146 ?= t145.
        DATA t147 TYPE REF TO object.
        t147 = t146->as_ref( ).
        t142 ?= t147.
      ELSE.
        t142 ?= t145.
      ENDIF.
      t141 = t142.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t141 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t152) = VALUE string( ).
        t152 = t141->concat_tokens( ).
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t152.
        t148 = t155.
      ENDIF.
      t140 = t148.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t159->has = abap_true.
      t159->value = |=>|.
      t156 = t159.
      DATA(t161) = VALUE abap_bool( ).
      DATA(t162) = VALUE abap_bool( ).
      IF t140 IS BOUND.
        t161 = t140->has.
      ENDIF.
      IF t156 IS BOUND.
        t162 = t156->has.
      ENDIF.
      IF t161 = t162.
        IF t161 = abap_false.
          t139 = abap_true.
        ELSEIF t140->value = t156->value.
          t139 = abap_true.
        ENDIF.
      ENDIF.
      t120 = t139.
    ENDIF.
    IF t120 = abap_true.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t169 TYPE REF TO zcl_lnt_expression_node.
      DATA t171 TYPE REF TO zcl_lnt_expression_node.
      DATA t173 TYPE REF TO object.
      t173 = t15.
      t171 ?= t173.
      DATA(t174) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
      t169 = t171->find_direct_expression( i_type_9913 = t174 ).
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t169 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t179) = VALUE string( ).
        t179 = t169->concat_tokens( ).
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t179.
        t175 = t182.
      ENDIF.
      t167 = t175.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t184) = VALUE abap_bool( ).
      IF t167 IS INITIAL.
        t184 = abap_true.
      ELSEIF t167->has = abap_false.
        t184 = abap_true.
      ENDIF.
      IF t184 = abap_true.
      ELSE.
        DATA(t187) = VALUE string( ).
        DATA(t188) = VALUE string( ).
        t188 = t167->value.
        DATA t190 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t190 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |'| flags = |g| checked = abap_true.
        DATA(t194) = strlen( t188 ).
        t187 = t190->replace( p0 = t188 p1 = || ).
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t187.
        t183 = t195.
      ENDIF.
      t165 = t183.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t197) = VALUE abap_bool( ).
      IF t165 IS INITIAL.
        t197 = abap_true.
      ELSEIF t165->has = abap_false.
        t197 = abap_true.
      ENDIF.
      IF t197 = abap_true.
      ELSE.
        DATA(t200) = VALUE string( ).
        DATA(t201) = VALUE string( ).
        t201 = t165->value.
        DATA t203 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t203 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |`| flags = |g| checked = abap_true.
        DATA(t207) = strlen( t201 ).
        t200 = t203->replace( p0 = t201 p1 = || ).
        DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t208->has = abap_true.
        t208->value = t200.
        t196 = t208.
      ENDIF.
      t163 = t196.
      DATA(t209) = VALUE abap_bool( ).
      DATA(t210) = VALUE abap_bool( ).
      DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t211 = t163.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t216) = VALUE abap_bool( ).
      IF t211 IS INITIAL.
        t216 = abap_true.
      ELSEIF t211->has = abap_false.
        t216 = abap_true.
      ENDIF.
      t210 = xsdbool( t216 = abap_false ).
      t209 = t210.
      IF t210 = abap_true.
        DATA t221 TYPE REF TO zcl_lnt_current_scope.
        t221 = t2->scope.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t227) = VALUE string( ).
        t227 = t163->value.
        DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t229->has = abap_true.
        t229->value = t227.
        t224 = t229.
        DATA t231 TYPE REF TO zif_lnt_class_definition.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t233 = t224.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t237) = VALUE abap_bool( ).
        IF t233 IS INITIAL.
          t237 = abap_true.
        ELSEIF t233->has = abap_false.
          t237 = abap_true.
        ENDIF.
        IF t237 = abap_true.
        ELSE.
          DATA t241 TYPE REF TO zif_lnt_class_definition.
          DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t243 = t221->current.
          DATA t246 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t243 IS INITIAL ) = abap_true.
          ELSE.
            DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t251 = t243.
            DATA(t253) = VALUE string( ).
            t253 = t224->value.
            t246 = t251->find_class_definition( i_name = t253 ).
          ENDIF.
          t241 = t246.
          DATA t255 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t241 IS BOUND ) = abap_true.
            t255 = t241.
          ELSE.
            DATA t264 TYPE REF TO zcl_lnt_class.
            DATA t265 TYPE REF TO zcl_lnt_class.
            DATA t267 TYPE REF TO zif_lnt_registry.
            t267 = t221->reg.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t272->has = abap_true.
            t272->value = |CLAS|.
            t269 = t272.
            DATA(t276) = VALUE string( ).
            t276 = t224->value.
            DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t278->has = abap_true.
            t278->value = t276.
            DATA t280 TYPE REF TO object.
            t280 = t267->get_object( i_type_9913 = t269 i_name = t278 ).
            t265 ?= t280.
            t264 = t265.
            DATA t281 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t264 IS BOUND ) = abap_true.
              t281 = t264->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t281.
            ENDIF.
            t255 = t281.
          ENDIF.
          t231 = t255.
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t209 = xsdbool( t231 IS INITIAL ).
      ENDIF.
      IF t209 = abap_true.
        DATA(t292) = VALUE string( ).
        DATA(t294) = VALUE string( ).
        DATA(t295) = |Class "|.
        DATA(t296) = VALUE string( ).
        t296 = t163->value.
        DATA(t298) = strlen( t295 ).
        t294 = |{ t295 }{ t296 }|.
        DATA(t300) = strlen( t294 ).
        t292 = |{ t294 }{ |" not found/released| }|.
        DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t301 = t2->issues.
        DATA t303 TYPE REF TO zcl_lnt_issue.
        DATA t308 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t303 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t292 i_fix = t308 ).
        t301->load( ).
        APPEND t303 TO t301->items.
        t301->save( ).
        DATA(t312) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t313->has = abap_true.
        t313->value = t312.
        DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t313 i_qualified_name = t315 ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t317) = t37.
    IF xsdbool( t317 IS BOUND AND t317 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
      DO.
        t7->load( ).
        IF xsdbool( lines( t7->items ) > 0 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t322 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t322.
        DATA t323 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t323.
        DATA t325 TYPE REF TO object.
        CLEAR t325.
        t325 = t7->shift( ).
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t326.
        CLEAR t323.
        IF t325 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t326 ?= t325.
          DATA t327 TYPE REF TO object.
          CLEAR t327.
          t327 = t326->as_ref( ).
          t323 ?= t327.
        ELSE.
          t323 ?= t325.
        ENDIF.
        t322 = t323.
        DATA(t328) = VALUE abap_bool( ).
        DATA(t329) = VALUE abap_bool( ).
        t329 = xsdbool( t322 IS BOUND AND t322 IS INSTANCE OF zcl_lnt_expression_node ).
        t328 = t329.
        IF t329 = abap_true.
          DATA t332 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t332.
          DATA t333 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t333.
          DATA t335 TYPE REF TO object.
          CLEAR t335.
          t335 = t322.
          t333 ?= t335.
          t332 = t333->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t328 = xsdbool( t332 IS BOUND AND t332 IS INSTANCE OF zcl_lnt_st_dynamic ).
        ENDIF.
        IF t328 = abap_true.
          DATA t336 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t336.
          DATA t338 TYPE REF TO object.
          CLEAR t338.
          t338 = t322.
          t336 ?= t338.
          zcl_lnt_sy_dynamic=>run_syntax( i_node = t336 i_input_967e = t2 ).
        ENDIF.
      ENDDO.
      DATA t340 TYPE REF TO zcl_lnt_void_type.
      DATA t342 TYPE REF TO object.
      t342 = t37.
      t340 ?= t342.
      result = t340.
      RETURN.
    ENDIF.
    DO.
      t7->load( ).
      IF xsdbool( lines( t7->items ) > 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t347 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t347.
      DATA t348 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t348.
      DATA t350 TYPE REF TO object.
      CLEAR t350.
      t350 = t7->shift( ).
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      CLEAR t348.
      IF t350 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t351 ?= t350.
        DATA t352 TYPE REF TO object.
        CLEAR t352.
        t352 = t351->as_ref( ).
        t348 ?= t352.
      ELSE.
        t348 ?= t350.
      ENDIF.
      t347 = t348.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      CLEAR t356.
      IF xsdbool( t347 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
      DATA t361 TYPE REF TO object.
      CLEAR t361.
      t361 = t347->get_db65( ).
      IF xsdbool( t361 IS BOUND AND t361 IS INSTANCE OF zcl_lnt_dash ) = abap_true.
        DATA(t365) = t37.
        IF xsdbool( t365 IS BOUND AND t365 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
          DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t368.
          t368 = t2->issues.
          DATA t370 TYPE REF TO zcl_lnt_issue.
          CLEAR t370.
          DATA t372 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t372.
          t372 = t1->get_first_token( ).
          DATA t375 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t375.
          t370 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t372 i_message_26cb = |Not a structure, type unknown, MethodSource| i_fix = t375 ).
          t368->load( ).
          APPEND t370 TO t368->items.
          t368->save( ).
          DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t377.
          DATA(t379) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t380->has = abap_true.
          t380->value = t379.
          t377 = t380.
          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t382.
          result = zcl_lnt_void_type=>get_db65( i_voided = t377 i_qualified_name = t382 ).
          RETURN.
        ELSE.
          DATA(t385) = t37.
          IF xsdbool( xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
            DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t388.
            t388 = t2->issues.
            DATA t390 TYPE REF TO zcl_lnt_issue.
            CLEAR t390.
            DATA t392 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t392.
            t392 = t1->get_first_token( ).
            DATA t395 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t395.
            t390 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t392 i_message_26cb = |Not a structure, MethodSource| i_fix = t395 ).
            t388->load( ).
            APPEND t390 TO t388->items.
            t388->save( ).
            DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t397.
            DATA(t399) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t400) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t400->has = abap_true.
            t400->value = t399.
            t397 = t400.
            DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t402.
            result = zcl_lnt_void_type=>get_db65( i_voided = t397 i_qualified_name = t402 ).
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t403) = VALUE abap_bool( ).
        DATA(t404) = VALUE abap_bool( ).
        DATA t405 TYPE REF TO object.
        CLEAR t405.
        t405 = t347->get_db65( ).
        t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_instance_arrow ).
        t403 = t404.
        IF t404 = abap_false.
          DATA t409 TYPE REF TO object.
          CLEAR t409.
          t409 = t347->get_db65( ).
          t403 = xsdbool( t409 IS BOUND AND t409 IS INSTANCE OF zcl_lnt_static_arrow ).
        ENDIF.
        IF t403 = abap_true.
        ELSE.
          DATA(t412) = VALUE abap_bool( ).
          DATA(t413) = VALUE abap_bool( ).
          DATA t414 TYPE REF TO object.
          CLEAR t414.
          t414 = t347->get_db65( ).
          t413 = xsdbool( t414 IS BOUND AND t414 IS INSTANCE OF zcl_lnt_st_attribute_name ).
          t412 = t413.
          IF t413 = abap_false.
            DATA t418 TYPE REF TO object.
            CLEAR t418.
            t418 = t347->get_db65( ).
            t412 = xsdbool( t418 IS BOUND AND t418 IS INSTANCE OF zcl_lnt_st_source_field ).
          ENDIF.
          IF t412 = abap_true.
            DATA(t422) = t37.
            IF xsdbool( t422 IS BOUND AND t422 IS INSTANCE OF zcl_lnt_abstract_type ) = abap_true.
              DATA t423 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t423.
              DATA t425 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t425.
              DATA t427 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t427.
              DATA t429 TYPE REF TO object.
              CLEAR t429.
              t429 = t37.
              t427 ?= t429.
              t425 = t427.
              DATA t431 TYPE REF TO zif_lnt_node.
              CLEAR t431.
              DATA t432 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t432.
              t432 = t347.
              t431 ?= t432.
              DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t435.
              DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t437.
              CLEAR t437.
              CREATE OBJECT t437.
              t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t437->sval = |Read From|.
              t435 = t437.
              DATA(t443) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t443->has = abap_true.
              t443->value = abap_false.
              t423 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t425 i_node = t431 i_input_967e = t2 i_type_9913 = t435 i_error = t443 ).
              DATA(t446) = VALUE abap_bool( ).
              DATA(t447) = VALUE abap_bool( ).
              t447 = xsdbool( t423 IS BOUND AND t423 IS INSTANCE OF zcl_lnt_void_type ).
              t446 = t447.
              IF t447 = abap_true.
                DATA(t449) = VALUE abap_bool( ).
                DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t450.
                DATA t452 TYPE REF TO zcl_lnt_void_type.
                CLEAR t452.
                t452 ?= t423.
                t450 = t452->voided.
                DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t456.
                DATA(t458) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t459->has = abap_true.
                t459->value = t458.
                t456 = t459.
                DATA(t461) = VALUE abap_bool( ).
                DATA(t462) = VALUE abap_bool( ).
                IF t450 IS BOUND.
                  t461 = t450->has.
                ENDIF.
                IF t456 IS BOUND.
                  t462 = t456->has.
                ENDIF.
                IF t461 = t462.
                  IF t461 = abap_false.
                    t449 = abap_true.
                  ELSEIF t450->value = t456->value.
                    t449 = abap_true.
                  ENDIF.
                ENDIF.
                t446 = t449.
              ENDIF.
              IF xsdbool( t446 = abap_false ) = abap_true.
                t37 = t423.
                CONTINUE.
              ENDIF.
            ENDIF.
            DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t467.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t468.
            DATA(t470) = t37.
            IF xsdbool( t470 IS BOUND AND t470 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
              DATA t475 TYPE REF TO zcl_lnt_object_reference_type.
              CLEAR t475.
              DATA t477 TYPE REF TO object.
              CLEAR t477.
              t477 = t37.
              t475 ?= t477.
              DATA t480 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t480.
              t480 = t475->identifier.
              DATA(t483) = VALUE string( ).
              t483 = t480->token->str.
              DATA(t491) = VALUE string( ).
              DATA(t492) = t483.
              DATA(t493) = 0.
              DATA(t494) = 1.
              DATA(t495) = strlen( t492 ).
              IF t493 < 0.
                t493 = t493 + t495.
                IF t493 < 0.
                  t493 = 0.
                ENDIF.
              ENDIF.
              IF t493 > t495 OR t494 <= 0.
              ELSE.
                IF t494 > t495 - t493.
                  t494 = t495 - t493.
                ENDIF.
                t491 = t492+t493(t494).
              ENDIF.
              IF xsdbool( t491 = |!| ) = abap_true.
                DATA(t498) = VALUE string( ).
                t498 = t483.
                DATA(t500) = VALUE string( ).
                DATA(t502) = 1.
                DATA(t503) = VALUE i( ).
                t503 = strlen( t498 ).
                DATA(t506) = strlen( t498 ).
                IF t502 < 0.
                  t502 = t502 + t506.
                  IF t502 < 0.
                    t502 = 0.
                  ENDIF.
                ENDIF.
                IF t502 > t506 OR t503 <= 0.
                ELSE.
                  IF t503 > t506 - t502.
                    t503 = t506 - t502.
                  ENDIF.
                  t500 = t498+t502(t503).
                ENDIF.
                t483 = t500.
              ENDIF.
              DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t508->has = abap_true.
              t508->value = t483.
              t468 = t508.
            ELSE.
              CLEAR t468.
            ENDIF.
            t467 = t468.
            DATA t511 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t511.
            t511 = t347->get_first_token( ).
            DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t515.
            DATA t517 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t517.
            t517 = t511.
            DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t519.
            IF xsdbool( t517 IS INITIAL ) = abap_true.
              CLEAR t519.
            ELSE.
              DATA(t526) = VALUE string( ).
              t526 = t517->str.
              DATA(t528) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t528->has = abap_true.
              t528->value = t526.
              t519 = t528.
            ENDIF.
            t515 = t519.
            DATA t531 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t531.
            t531 = t2->scope.
            DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t534.
            t534 = t467.
            DATA t536 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t536.
            DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t538.
            t538 = t534.
            DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t540.
            CLEAR t540.
            DATA(t542) = VALUE abap_bool( ).
            IF t538 IS INITIAL.
              t542 = abap_true.
            ELSEIF t538->has = abap_false.
              t542 = abap_true.
            ENDIF.
            IF t542 = abap_true.
              CLEAR t536.
            ELSE.
              DATA t546 TYPE REF TO zif_lnt_class_definition.
              CLEAR t546.
              DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t548.
              DATA(t551) = VALUE string( ).
              t551 = t534->value.
              DATA(t553) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t553->has = abap_true.
              t553->value = t551.
              t548 = t553.
              DATA t555 TYPE REF TO zif_lnt_class_definition.
              CLEAR t555.
              DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t557.
              t557 = t548.
              DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t559.
              CLEAR t559.
              DATA(t561) = VALUE abap_bool( ).
              IF t557 IS INITIAL.
                t561 = abap_true.
              ELSEIF t557->has = abap_false.
                t561 = abap_true.
              ENDIF.
              IF t561 = abap_true.
                CLEAR t555.
              ELSE.
                DATA t565 TYPE REF TO zif_lnt_class_definition.
                CLEAR t565.
                DATA t567 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t567.
                t567 = t531->current.
                DATA t570 TYPE REF TO zif_lnt_class_definition.
                CLEAR t570.
                IF xsdbool( t567 IS INITIAL ) = abap_true.
                  CLEAR t570.
                ELSE.
                  DATA t575 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t575.
                  t575 = t567.
                  DATA(t577) = VALUE string( ).
                  t577 = t548->value.
                  t570 = t575->find_class_definition( i_name = t577 ).
                ENDIF.
                t565 = t570.
                DATA t579 TYPE REF TO zif_lnt_class_definition.
                CLEAR t579.
                IF xsdbool( t565 IS BOUND ) = abap_true.
                  t579 = t565.
                ELSE.
                  DATA t588 TYPE REF TO zcl_lnt_class.
                  CLEAR t588.
                  DATA t589 TYPE REF TO zcl_lnt_class.
                  CLEAR t589.
                  DATA t590 TYPE REF TO zif_lnt_object.
                  CLEAR t590.
                  DATA t591 TYPE REF TO zif_lnt_registry.
                  CLEAR t591.
                  t591 = t531->reg.
                  DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t593.
                  DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t596->has = abap_true.
                  t596->value = |CLAS|.
                  t593 = t596.
                  DATA(t600) = VALUE string( ).
                  t600 = t548->value.
                  DATA(t602) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t602->has = abap_true.
                  t602->value = t600.
                  t590 = t591->get_object( i_type_9913 = t593 i_name = t602 ).
                  DATA t604 TYPE REF TO object.
                  CLEAR t604.
                  t604 = t590.
                  t589 ?= t604.
                  t588 = t589.
                  DATA t605 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t605.
                  IF xsdbool( t588 IS BOUND ) = abap_true.
                    t605 = t588->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  ELSE.
                    CLEAR t605.
                  ENDIF.
                  t579 = t605.
                ENDIF.
                t555 = t579.
              ENDIF.
              t546 = t555.
              DATA t612 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t612.
              IF xsdbool( t546 IS BOUND ) = abap_true.
                DATA t615 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t615.
                DATA t616 TYPE REF TO zif_lnt_class_definition.
                CLEAR t616.
                t616 = t546.
                t615 ?= t616.
                t612 = t615.
              ELSE.
                DATA t619 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t619.
                DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t621.
                DATA(t624) = VALUE string( ).
                t624 = t534->value.
                DATA(t626) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t626->has = abap_true.
                t626->value = t624.
                t621 = t626.
                DATA t628 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t628.
                DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t630.
                t630 = t621.
                DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t632.
                CLEAR t632.
                DATA(t634) = VALUE abap_bool( ).
                IF t630 IS INITIAL.
                  t634 = abap_true.
                ELSEIF t630->has = abap_false.
                  t634 = abap_true.
                ENDIF.
                IF t634 = abap_true.
                  CLEAR t628.
                ELSE.
                  DATA t638 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t638.
                  DATA t640 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t640.
                  t640 = t531->current.
                  DATA t643 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t643.
                  IF xsdbool( t640 IS INITIAL ) = abap_true.
                    CLEAR t643.
                  ELSE.
                    DATA t648 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    CLEAR t648.
                    t648 = t640.
                    DATA(t650) = VALUE string( ).
                    t650 = t621->value.
                    t643 = t648->find_interface_definition( i_name = t650 ).
                  ENDIF.
                  t638 = t643.
                  DATA t652 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t652.
                  IF xsdbool( t638 IS BOUND ) = abap_true.
                    t652 = t638.
                  ELSE.
                    DATA t661 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t661.
                    DATA t662 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t662.
                    DATA t663 TYPE REF TO zif_lnt_object.
                    CLEAR t663.
                    DATA t664 TYPE REF TO zif_lnt_registry.
                    CLEAR t664.
                    t664 = t531->reg.
                    DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t666.
                    DATA(t669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t669->has = abap_true.
                    t669->value = |INTF|.
                    t666 = t669.
                    DATA(t673) = VALUE string( ).
                    t673 = t621->value.
                    DATA(t675) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t675->has = abap_true.
                    t675->value = t673.
                    t663 = t664->get_object( i_type_9913 = t666 i_name = t675 ).
                    DATA t677 TYPE REF TO object.
                    CLEAR t677.
                    t677 = t663.
                    t662 ?= t677.
                    t661 = t662.
                    DATA t678 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t678.
                    IF xsdbool( t661 IS BOUND ) = abap_true.
                      t678 = t661->def.
                    ELSE.
                      CLEAR t678.
                    ENDIF.
                    t652 = t678.
                  ENDIF.
                  t628 = t652.
                ENDIF.
                t619 = t628.
                DATA t688 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t688.
                IF xsdbool( t619 IS BOUND ) = abap_true.
                  t688 = t619.
                ELSE.
                  CLEAR t688.
                ENDIF.
                t612 = t688.
              ENDIF.
              t536 = t612.
            ENDIF.
            DATA t697 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t697.
            t697 = t3->search_method_name( i_def = t536 i_name = t515 ).
            DATA t702 TYPE REF TO zif_lnt_method_definition.
            CLEAR t702.
            t702 = t697->method.
            DATA t706 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t706.
            t706 = t697->def.
            DATA(t708) = VALUE abap_bool( ).
            DATA(t709) = VALUE abap_bool( ).
            DATA(t710) = VALUE abap_bool( ).
            t710 = t44.
            IF t44 = abap_true.
              DATA(t712) = VALUE abap_bool( ).
              DATA t713 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t713.
              t713 = t347.
              DATA t715 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t715.
              t715 = t15.
              DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t717.
              DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t718.
              CLEAR t717.
              IF t713 IS BOUND.
                DATA t719 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t719.
                DATA t720 TYPE REF TO object.
                CLEAR t720.
                CLEAR t719.
                t720 = t713.
                TRY.
                    t717 ?= t720.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t717 IS NOT BOUND.
                  TRY.
                      t719 ?= t713.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t719 IS BOUND.
                    t717 = t719->source( ).
                  ENDIF.
                  IF t717 IS NOT BOUND.
                    CREATE OBJECT t717.
                    t717->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t717->oval = t713.
                  ENDIF.
                ENDIF.
              ENDIF.
              CLEAR t718.
              IF t715 IS BOUND.
                DATA t721 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t721.
                DATA t722 TYPE REF TO object.
                CLEAR t722.
                CLEAR t721.
                t722 = t715.
                TRY.
                    t718 ?= t722.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t718 IS NOT BOUND.
                  TRY.
                      t721 ?= t715.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t721 IS BOUND.
                    t718 = t721->source( ).
                  ENDIF.
                  IF t718 IS NOT BOUND.
                    CREATE OBJECT t718.
                    t718->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t718->oval = t715.
                  ENDIF.
                ENDIF.
              ENDIF.
              IF t717 IS BOUND.
                t712 = t717->strict_equals( t718 ).
              ELSE.
                t712 = xsdbool( t718 IS NOT BOUND ).
              ENDIF.
              t710 = t712.
            ENDIF.
            t709 = t710.
            IF t710 = abap_true.
              DATA(t723) = VALUE abap_bool( ).
              DATA t724 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t724.
              DATA t725 TYPE REF TO zif_lnt_method_definition.
              CLEAR t725.
              t725 = t702.
              DATA t727 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t727.
              IF xsdbool( t725 IS INITIAL ) = abap_true.
                CLEAR t727.
              ELSE.
                DATA(t731) = VALUE abap_bool( ).
                t731 = t725->is_static_4685( ).
                DATA(t734) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t734->has = abap_true.
                t734->value = t731.
                t727 = t734.
              ENDIF.
              t724 = t727.
              DATA t735 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t735.
              DATA(t738) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t738->has = abap_true.
              t738->value = abap_false.
              t735 = t738.
              DATA(t740) = VALUE abap_bool( ).
              DATA(t741) = VALUE abap_bool( ).
              IF t724 IS BOUND.
                t740 = t724->has.
              ENDIF.
              IF t735 IS BOUND.
                t741 = t735->has.
              ENDIF.
              IF t740 = t741.
                IF t740 = abap_false.
                  t723 = abap_true.
                ELSEIF t724->value = t735->value.
                  t723 = abap_true.
                ENDIF.
              ENDIF.
              t709 = t723.
            ENDIF.
            t708 = t709.
            IF t709 = abap_true.
              t708 = xsdbool( t2->scope->is_in_static_method( ) = abap_true ).
            ENDIF.
            IF t708 = abap_true.
              DATA(t747) = VALUE string( ).
              DATA(t749) = VALUE string( ).
              DATA(t750) = |Method "|.
              DATA(t751) = VALUE string( ).
              DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t752.
              t752 = t515.
              DATA(t754) = VALUE string( ).
              DATA(t755) = VALUE abap_bool( ).
              IF t752 IS INITIAL.
                t755 = abap_true.
              ELSEIF t752->has = abap_false.
                t755 = abap_true.
              ENDIF.
              IF t755 = abap_true.
                t754 = |undefined|.
              ELSE.
                t754 = t752->value.
              ENDIF.
              t751 = t754.
              DATA(t760) = strlen( t750 ).
              t749 = |{ t750 }{ t751 }|.
              DATA(t762) = strlen( t749 ).
              t747 = |{ t749 }{ |" not static| }|.
              DATA t763 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t763.
              t763 = t2->issues.
              DATA t765 TYPE REF TO zcl_lnt_issue.
              CLEAR t765.
              DATA t769 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t769.
              t765 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t511 i_message_26cb = t747 i_fix = t769 ).
              t763->load( ).
              APPEND t765 TO t763->items.
              t763->save( ).
              DATA t771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t771.
              DATA(t773) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t774) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t774->has = abap_true.
              t774->value = t773.
              t771 = t774.
              DATA t776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t776.
              result = zcl_lnt_void_type=>get_db65( i_voided = t771 i_qualified_name = t776 ).
              RETURN.
            ENDIF.
            DATA(t777) = VALUE abap_bool( ).
            DATA(t778) = VALUE abap_bool( ).
            DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t781.
            CLEAR t781.
            t778 = xsdbool( t702 IS INITIAL ).
            t777 = t778.
            IF t778 = abap_true.
              DATA(t785) = VALUE abap_bool( ).
              DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t786.
              DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t787.
              t787 = t515.
              DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t789.
              DATA(t790) = VALUE abap_bool( ).
              IF t787 IS INITIAL.
                t790 = abap_true.
              ELSEIF t787->has = abap_false.
                t790 = abap_true.
              ENDIF.
              IF t790 = abap_true.
                CLEAR t789.
              ELSE.
                DATA(t793) = VALUE string( ).
                DATA(t794) = VALUE string( ).
                t794 = t787->value.
                DATA(t796) = strlen( t794 ).
                t793 = t794.
                IF t793 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t793 TO UPPER CASE.
                ELSE.
                  t793 = zlnt_runtime_uppe_91169605024d=>full( t793 ).
                ENDIF.
                DATA(t797) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t797->has = abap_true.
                t797->value = t793.
                t789 = t797.
              ENDIF.
              t786 = t789.
              DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t798.
              DATA(t801) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t801->has = abap_true.
              t801->value = |CONSTRUCTOR|.
              t798 = t801.
              DATA(t803) = VALUE abap_bool( ).
              DATA(t804) = VALUE abap_bool( ).
              IF t786 IS BOUND.
                t803 = t786->has.
              ENDIF.
              IF t798 IS BOUND.
                t804 = t798->has.
              ENDIF.
              IF t803 = t804.
                IF t803 = abap_false.
                  t785 = abap_true.
                ELSEIF t786->value = t798->value.
                  t785 = abap_true.
                ENDIF.
              ENDIF.
              t777 = t785.
            ENDIF.
            IF t777 = abap_true.
              DATA t806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t806.
              DATA(t809) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t809->has = abap_true.
              t809->value = |CONSTRUCTOR|.
              t806 = t809.
              DATA t811 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t811.
              t37 = zcl_lnt_void_type=>get_db65( i_voided = t806 i_qualified_name = t811 ).
            ELSE.
              DATA(t812) = VALUE abap_bool( ).
              DATA(t813) = VALUE abap_bool( ).
              DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t816.
              CLEAR t816.
              t813 = xsdbool( t702 IS INITIAL ).
              t812 = t813.
              IF t813 = abap_true.
                DATA(t822) = t37.
                t812 = xsdbool( xsdbool( t822 IS BOUND AND t822 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
              ENDIF.
              IF t812 = abap_true.
                DATA(t823) = VALUE string( ).
                DATA(t825) = VALUE string( ).
                DATA(t826) = |Method or attribute "|.
                DATA(t827) = VALUE string( ).
                DATA t828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t828.
                t828 = t515.
                DATA(t830) = VALUE string( ).
                DATA(t831) = VALUE abap_bool( ).
                IF t828 IS INITIAL.
                  t831 = abap_true.
                ELSEIF t828->has = abap_false.
                  t831 = abap_true.
                ENDIF.
                IF t831 = abap_true.
                  t830 = |undefined|.
                ELSE.
                  t830 = t828->value.
                ENDIF.
                t827 = t830.
                DATA(t836) = strlen( t826 ).
                t825 = |{ t826 }{ t827 }|.
                DATA(t838) = strlen( t825 ).
                t823 = |{ t825 }{ |" not found, MethodSource| }|.
                DATA t839 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t839.
                t839 = t2->issues.
                DATA t841 TYPE REF TO zcl_lnt_issue.
                CLEAR t841.
                DATA t843 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t843.
                t843 = t1->get_first_token( ).
                DATA t846 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t846.
                t841 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t843 i_message_26cb = t823 i_fix = t846 ).
                t839->load( ).
                APPEND t841 TO t839->items.
                t839->save( ).
                DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t848.
                DATA(t850) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t851) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t851->has = abap_true.
                t851->value = t850.
                t848 = t851.
                DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t853.
                result = zcl_lnt_void_type=>get_db65( i_voided = t848 i_qualified_name = t853 ).
                RETURN.
              ELSE.
                IF xsdbool( t702 IS BOUND ) = abap_true.
                  DATA t858 TYPE REF TO zcl_lnt_object_oriented.
                  CLEAR t858.
                  t858 = t3.
                  DATA t860 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t860.
                  t860 = t706.
                  DATA t864 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t864.
                  DATA t868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t868.
                  CLEAR t868.
                  IF xsdbool( t860 IS INITIAL ) = abap_true.
                    DATA t872 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t872.
                    DATA t873 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t873.
                    t873 = t467.
                    DATA t875 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t875.
                    CLEAR t875.
                    DATA t877 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t877.
                    CLEAR t877.
                    t872 = NEW zcl_lnt_ireference_extras( i_oo_name = t873 i_oo_type = t875 i_found_qualified = t877 ).
                    CREATE OBJECT t872->zlnt_view_ownkeys_b0e8086400eb.
                    t872->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t879.
                    t872->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t879 ).
                    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t880.
                    IF t872->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t872->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t880 ).
                    ENDIF.
                    CREATE OBJECT t872->zlnt_json_ownkeys_70e5fd461788.
                    t872->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t882.
                    t872->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t882 ).
                    DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t884.
                    IF t872->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t872->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t884 ).
                    ENDIF.
                    t864 = t872.
                  ELSE.
                    DATA t885 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t885.
                    DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t886.
                    DATA t888 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t888.
                    t888 = t860.
                    DATA t891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t891.
                    IF xsdbool( t888 IS INITIAL ) = abap_true.
                      CLEAR t891.
                    ELSE.
                      DATA(t895) = VALUE string( ).
                      t895 = t888->get_name( ).
                      DATA(t897) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t897->has = abap_true.
                      t897->value = t895.
                      t891 = t897.
                    ENDIF.
                    t886 = t891.
                    DATA t898 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t898.
                    DATA(t901) = VALUE string( ).
                    IF xsdbool( t860 IS BOUND AND t860 IS INSTANCE OF zcl_lnt_ty_class_definition ) = abap_true.
                      t901 = |CLAS|.
                    ELSE.
                      t901 = |INTF|.
                    ENDIF.
                    DATA(t906) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t906->has = abap_true.
                    t906->value = t901.
                    t898 = t906.
                    DATA t908 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t908.
                    CLEAR t908.
                    t885 = NEW zcl_lnt_ireference_extras( i_oo_name = t886 i_oo_type = t898 i_found_qualified = t908 ).
                    CREATE OBJECT t885->zlnt_view_ownkeys_b0e8086400eb.
                    t885->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t910.
                    t885->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t910 ).
                    DATA t911 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t911.
                    IF t885->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t885->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t911 ).
                    ENDIF.
                    CREATE OBJECT t885->zlnt_json_ownkeys_70e5fd461788.
                    t885->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t913.
                    t885->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t913 ).
                    DATA t915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t915.
                    IF t885->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t885->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t915 ).
                    ENDIF.
                    t864 = t885.
                  ENDIF.
                  DATA t916 TYPE REF TO zcl_lnt_current_scope.
                  CLEAR t916.
                  t916 = t2->scope.
                  DATA t918 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t918.
                  t918 = t511.
                  DATA t922 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t922.
                  DATA t924 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t924.
                  DATA t925 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t925.
                  t925 = t702.
                  t924 ?= t925.
                  t922 = t924.
                  DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t928.
                  CLEAR t928.
                  CREATE OBJECT t928.
                  t928->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t928->sval = |Method|.
                  DATA(t930) = VALUE string( ).
                  t930 = t2->filename.
                  t916->add_reference( i_usage = t918 i_referencing = t922 i_type_9913 = t928 i_filename = t930 i_extra = t864 ).
                  DATA t936 TYPE REF TO zif_lnt_union_b6d4892d.
                  CLEAR t936.
                  DATA t937 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t937.
                  t937 = t702.
                  t936 ?= t937.
                  t37 = t936.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA(t939) = VALUE abap_bool( ).
            DATA(t940) = VALUE abap_bool( ).
            DATA t941 TYPE REF TO object.
            CLEAR t941.
            t941 = t347->get_db65( ).
            t940 = xsdbool( t941 IS BOUND AND t941 IS INSTANCE OF zcl_lnt_st_component_name ).
            t939 = t940.
            IF t940 = abap_true.
              DATA(t945) = t37.
              t939 = xsdbool( t945 IS BOUND AND t945 IS INSTANCE OF zcl_lnt_abstract_type ).
            ENDIF.
            IF t939 = abap_true.
              DATA(t946) = VALUE abap_bool( ).
              DATA(t947) = VALUE abap_bool( ).
              DATA(t948) = t37.
              t947 = xsdbool( t948 IS BOUND AND t948 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t946 = t947.
              IF t947 = abap_true.
                DATA t951 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t951.
                DATA t953 TYPE REF TO object.
                CLEAR t953.
                t953 = t37.
                t951 ?= t953.
                t946 = t951->options->zlnt_view_read_sr_ec4602663c93( ).
              ENDIF.
              IF t946 = abap_true.
                DATA t959 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t959.
                DATA t961 TYPE REF TO object.
                CLEAR t961.
                t961 = t37.
                t959 ?= t961.
                t37 = t959->row_type.
              ENDIF.
              DATA t965 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t965.
              DATA t967 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t967.
              DATA t969 TYPE REF TO object.
              CLEAR t969.
              t969 = t37.
              t967 ?= t969.
              t965 = t967.
              DATA t971 TYPE REF TO zif_lnt_node.
              CLEAR t971.
              DATA t972 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t972.
              t972 = t347.
              t971 ?= t972.
              t37 = zcl_lnt_sy_component_name=>run_syntax( i_context = t965 i_node = t971 i_input_967e = t2 ).
            ELSE.
              DATA(t975) = VALUE abap_bool( ).
              DATA(t976) = VALUE abap_bool( ).
              t976 = xsdbool( t347 IS BOUND AND t347 IS INSTANCE OF zcl_lnt_expression_node ).
              t975 = t976.
              IF t976 = abap_true.
                DATA t979 TYPE REF TO zif_lnt_statement_runnable.
                CLEAR t979.
                DATA t980 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t980.
                DATA t982 TYPE REF TO object.
                CLEAR t982.
                t982 = t347.
                t980 ?= t982.
                t979 = t980->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                t975 = xsdbool( t979 IS BOUND AND t979 IS INSTANCE OF zcl_lnt_st_dynamic ).
              ENDIF.
              IF t975 = abap_true.
                DATA t983 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t983.
                DATA t985 TYPE REF TO object.
                CLEAR t985.
                t985 = t347.
                t983 ?= t985.
                zcl_lnt_sy_dynamic=>run_syntax( i_node = t983 i_input_967e = t2 ).
                DATA t988 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t988.
                DATA(t991) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t991->has = abap_true.
                t991->value = |Dynamic|.
                t988 = t991.
                DATA t993 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t993.
                t37 = zcl_lnt_void_type=>get_db65( i_voided = t988 i_qualified_name = t993 ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t994) = VALUE abap_bool( ).
    DATA(t995) = VALUE abap_bool( ).
    t995 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_abstract_type ).
    t994 = t995.
    IF t995 = abap_true.
      t994 = xsdbool( xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ).
    ENDIF.
    IF t994 = abap_true.
      DATA t1002 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t1002 = t2->issues.
      DATA t1004 TYPE REF TO zcl_lnt_issue.
      DATA t1009 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t1004 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Not a method, MethodSource| i_fix = t1009 ).
      t1002->load( ).
      APPEND t1004 TO t1002->items.
      t1002->save( ).
      DATA(t1013) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t1014) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1014->has = abap_true.
      t1014->value = t1013.
      DATA t1016 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t1014 i_qualified_name = t1016 ).
      RETURN.
    ELSE.
      DATA t1020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t37 IS INITIAL ) = abap_true.
        DATA t1026 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t1026 = t2->issues.
        DATA t1028 TYPE REF TO zcl_lnt_issue.
        DATA t1033 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t1028 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Not found, MethodSource| i_fix = t1033 ).
        t1026->load( ).
        APPEND t1028 TO t1026->items.
        t1026->save( ).
        DATA(t1037) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t1038) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1038->has = abap_true.
        t1038->value = t1037.
        DATA t1040 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t1038 i_qualified_name = t1040 ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t1043 TYPE REF TO zif_lnt_union_8cd68e5e.
    t1043 ?= t37.
    result = t1043.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_first.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_children_9020.
    DATA t5 TYPE REF TO object.
    t5 = t1->get_db65( ).
    IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_class_name ) = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      t7 = t1->get_first_token( ).
      DATA t10 TYPE string.
      t10 = t7->str.
      DATA t16 TYPE REF TO zif_lnt_interface_definition.
      DATA t18 TYPE REF TO zcl_lnt_current_scope.
      t18 = t2->scope.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t10.
      t21 = t25.
      DATA t27 TYPE REF TO zif_lnt_interface_definition.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = t21.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t33) = VALUE abap_bool( ).
      IF t29 IS INITIAL.
        t33 = abap_true.
      ELSEIF t29->has = abap_false.
        t33 = abap_true.
      ENDIF.
      IF t33 = abap_true.
      ELSE.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t42 TYPE string.
        t42 = t21->value.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t42.
        t39 = t44.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t48 = t39.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t52) = VALUE abap_bool( ).
        IF t48 IS INITIAL.
          t52 = abap_true.
        ELSEIF t48->has = abap_false.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
        ELSE.
          DATA t56 TYPE REF TO zif_lnt_class_definition.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t58 = t18->current.
          DATA t61 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t58 IS INITIAL ) = abap_true.
          ELSE.
            DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t66 = t58.
            DATA t68 TYPE string.
            t68 = t39->value.
            t61 = t66->find_class_definition( i_name = t68 ).
          ENDIF.
          t56 = t61.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t56 IS BOUND ) = abap_true.
            t70 = t56.
          ELSE.
            DATA t79 TYPE REF TO zcl_lnt_class.
            DATA t80 TYPE REF TO zcl_lnt_class.
            DATA t82 TYPE REF TO zif_lnt_registry.
            t82 = t18->reg.
            DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t87->has = abap_true.
            t87->value = |CLAS|.
            t84 = t87.
            DATA t91 TYPE string.
            t91 = t39->value.
            DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t93->has = abap_true.
            t93->value = t91.
            DATA t95 TYPE REF TO object.
            t95 = t82->get_object( i_type_9913 = t84 i_name = t93 ).
            t80 ?= t95.
            t79 = t80.
            DATA t96 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t79 IS BOUND ) = abap_true.
              t96 = t79->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t96.
            ENDIF.
            t70 = t96.
          ENDIF.
          t46 = t70.
        ENDIF.
        t37 = t46.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t37 IS BOUND ) = abap_true.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          t107 = t37.
          t106 ?= t107.
          t103 = t106.
        ELSE.
          DATA t110 TYPE REF TO zif_lnt_interface_definition.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t115 TYPE string.
          t115 = t21->value.
          DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t117->has = abap_true.
          t117->value = t115.
          t112 = t117.
          DATA t119 TYPE REF TO zif_lnt_interface_definition.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t121 = t112.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t125) = VALUE abap_bool( ).
          IF t121 IS INITIAL.
            t125 = abap_true.
          ELSEIF t121->has = abap_false.
            t125 = abap_true.
          ENDIF.
          IF t125 = abap_true.
          ELSE.
            DATA t129 TYPE REF TO zif_lnt_interface_definition.
            DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t131 = t18->current.
            DATA t134 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t131 IS INITIAL ) = abap_true.
            ELSE.
              DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t139 = t131.
              DATA t141 TYPE string.
              t141 = t112->value.
              t134 = t139->find_interface_definition( i_name = t141 ).
            ENDIF.
            t129 = t134.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t129 IS BOUND ) = abap_true.
              t143 = t129.
            ELSE.
              DATA t152 TYPE REF TO zcl_lnt_ob_interface.
              DATA t153 TYPE REF TO zcl_lnt_ob_interface.
              DATA t155 TYPE REF TO zif_lnt_registry.
              t155 = t18->reg.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t160->has = abap_true.
              t160->value = |INTF|.
              t157 = t160.
              DATA t164 TYPE string.
              t164 = t112->value.
              DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t166->has = abap_true.
              t166->value = t164.
              DATA t168 TYPE REF TO object.
              t168 = t155->get_object( i_type_9913 = t157 i_name = t166 ).
              t153 ?= t168.
              t152 = t153.
              DATA t169 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t152 IS BOUND ) = abap_true.
                t169 = t152->def.
              ELSE.
                CLEAR t169.
              ENDIF.
              t143 = t169.
            ENDIF.
            t119 = t143.
          ENDIF.
          t110 = t119.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t110 IS BOUND ) = abap_true.
            t179 = t110.
          ELSE.
            CLEAR t179.
          ENDIF.
          t103 = t179.
        ENDIF.
        t27 = t103.
      ENDIF.
      t16 = t27.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t189 = xsdbool( t16 IS INITIAL ).
      t188 = t189.
      IF t189 = abap_true.
        DATA t203 TYPE REF TO zcl_lnt_ddic.
        DATA t204 TYPE REF TO zif_lnt_registry.
        t204 = t2->scope->reg.
        t203 = NEW zcl_lnt_ddic( i_reg_f149 = t204 ).
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t210->has = abap_true.
        t210->value = t10.
        t206 = t210.
        DATA(t212) = VALUE abap_bool( ).
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t214 = t206.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t218) = VALUE abap_bool( ).
        IF t214 IS INITIAL.
          t218 = abap_true.
        ELSEIF t214->has = abap_false.
          t218 = abap_true.
        ENDIF.
        IF t218 = abap_true.
          t212 = abap_true.
        ELSE.
          DATA t222 TYPE REF TO zif_lnt_registry.
          t222 = t203->reg.
          DATA t224 TYPE string.
          t224 = t206->value.
          t212 = t222->in_error_namespace( i_name = t224 ).
        ENDIF.
        t188 = xsdbool( t212 = abap_false ).
      ENDIF.
      IF t188 = abap_true.
        DATA t228 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t233->has = abap_true.
        t233->value = t10.
        t229 = t233.
        DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t239->has = abap_true.
        t239->value = |Void|.
        DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t228 = NEW zcl_lnt_ireference_extras( i_oo_name = t229 i_oo_type = t239 i_found_qualified = t241 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t243 ).
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t244 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t246 ).
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t248 ).
        ENDIF.
        DATA t249 TYPE REF TO zcl_lnt_current_scope.
        t249 = t2->scope.
        DATA t251 TYPE REF TO zcl_lnt_abstract_token.
        t251 = t7.
        DATA t255 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t256.
        t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t256->sval = |Object (Void)|.
        DATA t258 TYPE string.
        t258 = t2->filename.
        t249->add_reference( i_usage = t251 i_referencing = t255 i_type_9913 = t256 i_filename = t258 i_extra = t228 ).
        DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t268->has = abap_true.
        t268->value = t10.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t268 i_qualified_name = t270 ).
        RETURN.
      ELSE.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t16 IS INITIAL ) = abap_true.
          DATA t279 TYPE string.
          DATA t280 TYPE string.
          DATA(t281) = |Class |.
          DATA(t283) = strlen( t281 ).
          t280 = |{ t281 }{ t10 }|.
          DATA(t285) = strlen( t280 ).
          t279 = |{ t280 }{ | not found| }|.
          DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t286 = t2->issues.
          DATA t288 TYPE REF TO zcl_lnt_issue.
          DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t288 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t279 i_fix = t293 ).
          t286->load( ).
          APPEND t288 TO t286->items.
          t286->save( ).
          DATA(t297) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t298->has = abap_true.
          t298->value = t297.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t298 i_qualified_name = t300 ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t301 TYPE REF TO zcl_lnt_current_scope.
      t301 = t2->scope.
      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
      t303 = t1->get_first_token( ).
      DATA t308 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t310 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t311 TYPE REF TO zif_lnt_interface_definition.
      t311 = t16.
      t310 ?= t311.
      t308 = t310.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t314.
      t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t314->sval = |Object|.
      DATA t316 TYPE string.
      t316 = t2->filename.
      DATA t318 TYPE REF TO zcl_lnt_ireference_extras.
      t301->add_reference( i_usage = t303 i_referencing = t308 i_type_9913 = t314 i_filename = t316 i_extra = t318 ).
      DATA t320 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t321 TYPE REF TO zif_lnt_interface_definition.
      t321 = t16.
      t320 ?= t321.
      DATA t323 TYPE REF TO zcl_lnt_abstract_type_data.
      result = NEW zcl_lnt_object_reference_type( i_id = t320 i_extra = t323 ).
      RETURN.
    ELSE.
      DATA(t324) = VALUE abap_bool( ).
      DATA t325 TYPE abap_bool.
      DATA t326 TYPE abap_bool.
      t326 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
      t325 = t326.
      IF t326 = abap_true.
        DATA t329 TYPE REF TO zif_lnt_statement_runnable.
        DATA t330 TYPE REF TO zcl_lnt_expression_node.
        DATA t332 TYPE REF TO object.
        t332 = t1.
        t330 ?= t332.
        t329 = t330->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t325 = xsdbool( t329 IS BOUND AND t329 IS INSTANCE OF zcl_lnt_st_source_field ).
      ENDIF.
      t324 = t325.
      IF t325 = abap_true.
        t3->load( ).
        t324 = xsdbool( lines( t3->items ) > 0 ).
      ENDIF.
      IF t324 = abap_true.
        DATA t338 TYPE REF TO zcl_lnt_expression_node.
        DATA t340 TYPE REF TO object.
        t340 = t1.
        t338 ?= t340.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t344.
        t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t344->sval = |Read From|.
        DATA t347 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        result = zcl_lnt_sy_source_field=>run_syntax( i_node = t338 i_input_967e = t2 i_type_9913 = t344 i_error = t347 ).
        RETURN.
      ELSE.
        DATA t348 TYPE abap_bool.
        DATA t349 TYPE abap_bool.
        t349 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
        t348 = t349.
        IF t349 = abap_true.
          DATA t352 TYPE REF TO zif_lnt_statement_runnable.
          DATA t353 TYPE REF TO zcl_lnt_expression_node.
          DATA t355 TYPE REF TO object.
          t355 = t1.
          t353 ?= t355.
          t352 = t353->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t348 = xsdbool( t352 IS BOUND AND t352 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
        ENDIF.
        IF t348 = abap_true.
          DATA t359 TYPE REF TO zcl_lnt_expression_node.
          DATA t361 TYPE REF TO object.
          t361 = t1.
          t359 ?= t361.
          result = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t359 i_input_967e = t2 ).
          RETURN.
        ELSE.
          DATA t364 TYPE abap_bool.
          DATA t365 TYPE abap_bool.
          t365 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
          t364 = t365.
          IF t365 = abap_true.
            DATA t368 TYPE REF TO zif_lnt_statement_runnable.
            DATA t369 TYPE REF TO zcl_lnt_expression_node.
            DATA t371 TYPE REF TO object.
            t371 = t1.
            t369 ?= t371.
            t368 = t369->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t364 = xsdbool( t368 IS BOUND AND t368 IS INSTANCE OF zcl_lnt_st_dynamic ).
          ENDIF.
          IF t364 = abap_true.
            DATA t372 TYPE REF TO zcl_lnt_expression_node.
            DATA t374 TYPE REF TO object.
            t374 = t1.
            t372 ?= t374.
            zcl_lnt_sy_dynamic=>run_syntax( i_node = t372 i_input_967e = t2 ).
            DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t380->has = abap_true.
            t380->value = |Dynamic|.
            DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = zcl_lnt_void_type=>get_db65( i_voided = t380 i_qualified_name = t382 ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d826_069eb7b1cef6.
  ENDMETHOD.
ENDCLASS.
