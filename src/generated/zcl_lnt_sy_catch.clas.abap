* TS: src/abap/5_syntax/statements/catch.ts:12:1 Catch
CLASS zcl_lnt_sy_catch DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS find_common_superclass IMPORTING i_class_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_catch IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    t13 = t3.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t13 IS INITIAL ) = abap_true.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      t20 = t13.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t15 = t20->find_direct_expression( i_type_9913 = t22 ).
    ENDIF.
    t11 = t15.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t11.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t23 = t28->find_first_expression( i_type_9913 = t30 ).
    ENDIF.
    t9 = t23.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t31 = t9->get_first_token( ).
    ENDIF.
    t7 = t31.
    DATA t38 TYPE abap_bool.
    DATA t39 TYPE abap_bool.
    t39 = xsdbool( t7 IS BOUND ).
    t38 = t39.
    IF t39 = abap_true.
      t38 = xsdbool( strlen( t7->str ) > 30 ).
    ENDIF.
    IF t38 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t51 = t2->issues.
      DATA t53 TYPE REF TO zcl_lnt_issue.
      DATA t58 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t53 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t7 i_message_26cb = |Inline exception name longer than 30 characters| i_fix = t58 ).
      t51->load( ).
      APPEND t53 TO t51->items.
      t51->save( ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t59 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t61 = t1->find_direct_expressions( i_type_9913 = t63 ).
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    DATA t65 TYPE REF TO object.
    DATA(t66) = VALUE i( ).
    DO.
      t61->load( ).
      IF t66 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t65.
      READ TABLE t61->items INDEX t66 + 1 INTO t65.
      t66 = t66 + 1.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      CLEAR t64.
      IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t67 ?= t65.
        DATA t68 TYPE REF TO object.
        t68 = t67->as_ref( ).
        t64 ?= t68.
      ELSE.
        t64 ?= t65.
      ENDIF.
      DATA t69 TYPE REF TO zcl_lnt_abstract_token.
      t69 = t64->get_first_token( ).
      DATA(t72) = VALUE string( ).
      DATA t73 TYPE string.
      DATA t74 TYPE string.
      t74 = t69->str.
      DATA(t79) = strlen( t74 ).
      t73 = t74.
      IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t73 TO UPPER CASE.
      ELSE.
        t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
      ENDIF.
      t72 = t73.
      DATA t80 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t82 TYPE REF TO zcl_lnt_current_scope.
      t82 = t2->scope.
      DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t87->has = abap_true.
      t87->value = t72.
      t80 = t82->exists_object( i_name = t87 ).
      DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_shape_59e28496.
      t91 = t80.
      DATA t93 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t93.
      IF xsdbool( t91 IS INITIAL ) = abap_true.
        CLEAR t93.
      ELSE.
        t93 = t91->id.
      ENDIF.
      t90 = t93.
      IF xsdbool( t90 IS BOUND ) = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_current_scope.
        t100 = t2->scope.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        t102 = t69.
        DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t106.
        t106 = t80->id.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        CLEAR t113.
        CREATE OBJECT t113.
        t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t113->sval = |Object|.
        DATA t115 TYPE string.
        t115 = t2->filename.
        DATA t117 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t117.
        t100->add_reference( i_usage = t102 i_referencing = t106 i_type_9913 = t113 i_filename = t115 i_extra = t117 ).
      ELSE.
        DATA t125 TYPE REF TO zcl_lnt_ddic.
        DATA t126 TYPE REF TO zif_lnt_registry.
        t126 = t2->scope->reg.
        t125 = NEW zcl_lnt_ddic( i_reg_f149 = t126 ).
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t132->has = abap_true.
        t132->value = t72.
        t128 = t132.
        DATA(t134) = VALUE abap_bool( ).
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t136 = t128.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        DATA(t140) = VALUE abap_bool( ).
        IF t136 IS INITIAL.
          t140 = abap_true.
        ELSEIF t136->has = abap_false.
          t140 = abap_true.
        ENDIF.
        IF t140 = abap_true.
          t134 = abap_true.
        ELSE.
          DATA t144 TYPE REF TO zif_lnt_registry.
          t144 = t125->reg.
          DATA t146 TYPE string.
          t146 = t128->value.
          t134 = t144->in_error_namespace( i_name = t146 ).
        ENDIF.
        IF xsdbool( t134 = abap_false ) = abap_true.
          DATA t150 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t155->has = abap_true.
          t155->value = t72.
          t151 = t155.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t161->has = abap_true.
          t161->value = |Void|.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t163.
          t150 = NEW zcl_lnt_ireference_extras( i_oo_name = t151 i_oo_type = t157 i_found_qualified = t163 ).
          CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
          t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t165 ).
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t166 ).
          ENDIF.
          CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
          t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t168 ).
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t170 ).
          ENDIF.
          DATA t171 TYPE REF TO zcl_lnt_current_scope.
          t171 = t2->scope.
          DATA t173 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t173.
          t173 = t69.
          DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t177.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          CLEAR t178.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t178->sval = |Object (Void)|.
          DATA t180 TYPE string.
          t180 = t2->filename.
          t171->add_reference( i_usage = t173 i_referencing = t177 i_type_9913 = t178 i_filename = t180 i_extra = t150 ).
        ELSE.
          DATA t187 TYPE string.
          DATA(t188) = |CATCH, unknown class |.
          DATA(t190) = strlen( t188 ).
          t187 = |{ t188 }{ t72 }|.
          DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t191 = t2->issues.
          DATA t193 TYPE REF TO zcl_lnt_issue.
          DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t197.
          t193 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t69 i_message_26cb = t187 i_fix = t197 ).
          t191->load( ).
          APPEND t193 TO t191->items.
          t191->save( ).
        ENDIF.
      ENDIF.
      IF t59->has( p0 = t72 ) = abap_true.
        DATA t202 TYPE string.
        DATA(t203) = |Duplicate class name in CATCH: |.
        DATA(t205) = strlen( t203 ).
        t202 = |{ t203 }{ t72 }|.
        DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t206 = t2->issues.
        DATA t208 TYPE REF TO zcl_lnt_issue.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        t210 = t1->get_first_token( ).
        DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t213.
        t208 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t210 i_message_26cb = t202 i_fix = t213 ).
        t206->load( ).
        APPEND t208 TO t206->items.
        t206->save( ).
        RETURN.
      ENDIF.
      DATA t214 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t214 = t59->add( p0 = t72 ).
    ENDDO.
    DATA t218 TYPE REF TO zcl_lnt_expression_node.
    DATA t219 TYPE REF TO zcl_lnt_expression_node.
    t219 = t3.
    DATA t221 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t219 IS INITIAL ) = abap_true.
    ELSE.
      DATA t226 TYPE REF TO zcl_lnt_expression_node.
      t226 = t219.
      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t221 = t226->find_direct_expression( i_type_9913 = t228 ).
    ENDIF.
    t218 = t221.
    IF xsdbool( t218 IS BOUND ) = abap_true.
      DATA t229 TYPE REF TO zcl_lnt_abstract_token.
      DATA t231 TYPE REF TO zcl_lnt_expression_node.
      DATA t233 TYPE REF TO zcl_lnt_expression_node.
      t233 = t3.
      DATA(t235) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t231 = t233->find_first_expression( i_type_9913 = t235 ).
      DATA t236 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t231 IS INITIAL ) = abap_true.
      ELSE.
        t236 = t231->get_first_token( ).
      ENDIF.
      t229 = t236.
      IF xsdbool( t229 IS BOUND ) = abap_true.
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t245 = t59->values( ).
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t250 = t245.
        DATA t252 TYPE i.
        t250->load( ).
        t252 = lines( t250->items ).
        DATA t255 TYPE i.
        t255 = 0.
        DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DO.
          IF xsdbool( t255 < t252 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t262 TYPE string.
          t262 = t250->get( p0 = t255 )->value.
          DATA t270 TYPE REF TO zcl_lnt_current_scope.
          t270 = t2->scope.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t277) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t277->has = abap_true.
          t277->value = t262.
          t273 = t277.
          DATA t279 TYPE REF TO zif_lnt_class_definition.
          CLEAR t279.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t281 = t273.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t283.
          DATA(t285) = VALUE abap_bool( ).
          IF t281 IS INITIAL.
            t285 = abap_true.
          ELSEIF t281->has = abap_false.
            t285 = abap_true.
          ENDIF.
          IF t285 = abap_true.
            CLEAR t279.
          ELSE.
            DATA t289 TYPE REF TO zif_lnt_class_definition.
            CLEAR t289.
            DATA t291 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t291 = t270->current.
            DATA t294 TYPE REF TO zif_lnt_class_definition.
            CLEAR t294.
            IF xsdbool( t291 IS INITIAL ) = abap_true.
              CLEAR t294.
            ELSE.
              DATA t299 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t299 = t291.
              DATA t301 TYPE string.
              t301 = t273->value.
              t294 = t299->find_class_definition( i_name = t301 ).
            ENDIF.
            t289 = t294.
            DATA t303 TYPE REF TO zif_lnt_class_definition.
            CLEAR t303.
            IF xsdbool( t289 IS BOUND ) = abap_true.
              t303 = t289.
            ELSE.
              DATA t312 TYPE REF TO zcl_lnt_class.
              DATA t313 TYPE REF TO zcl_lnt_class.
              CLEAR t313.
              DATA t315 TYPE REF TO zif_lnt_registry.
              t315 = t270->reg.
              DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t317.
              DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t320->has = abap_true.
              t320->value = |CLAS|.
              t317 = t320.
              DATA t324 TYPE string.
              t324 = t273->value.
              DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t326->has = abap_true.
              t326->value = t324.
              DATA t328 TYPE REF TO object.
              t328 = t315->get_object( i_type_9913 = t317 i_name = t326 ).
              t313 ?= t328.
              t312 = t313.
              DATA t329 TYPE REF TO zif_lnt_class_definition.
              CLEAR t329.
              IF xsdbool( t312 IS BOUND ) = abap_true.
                t329 = t312->gt_dfn_ins_src_obj_cls_ts_clss( ).
              ELSE.
                CLEAR t329.
              ENDIF.
              t303 = t329.
            ENDIF.
            t279 = t303.
          ENDIF.
          DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t336.
          IF xsdbool( t279 IS INITIAL ) = abap_true.
            DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t343->has = abap_true.
            t343->value = t262.
            t257 = t343.
            EXIT.
          ENDIF.
          DATA(t347) = 1.
          t255 = t255 + t347.
        ENDDO.
        t248 = t257.
        DATA t349 TYPE REF TO zif_lnt_class_definition.
        DATA t350 TYPE REF TO zif_lnt_class_definition.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t352 = t248.
        DATA t354 TYPE REF TO zif_lnt_class_definition.
        DATA(t356) = VALUE abap_bool( ).
        IF t352 IS INITIAL.
          t356 = abap_true.
        ELSEIF t352->has = abap_false.
          t356 = abap_true.
        ENDIF.
        IF t356 = abap_true.
          t350 = me->find_common_superclass( i_class_names = t245 i_input_967e = t2 ).
        ELSE.
          CLEAR t350.
        ENDIF.
        t349 = t350.
        DATA t363 TYPE REF TO zif_lnt_union_265b2b50.
        IF xsdbool( t349 IS BOUND ) = abap_true.
          DATA t367 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t368 TYPE REF TO zif_lnt_class_definition.
          t368 = t349.
          t367 ?= t368.
          DATA t370 TYPE REF TO zcl_lnt_abstract_type_data.
          t363 = NEW zcl_lnt_object_reference_type( i_id = t367 i_extra = t370 ).
        ELSE.
          DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t375 = t248.
          DATA(t377) = VALUE string( ).
          DATA(t378) = VALUE abap_bool( ).
          IF t375 IS BOUND.
            IF t375->has = abap_true.
              t378 = xsdbool( strlen( t375->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t378 = abap_true.
            t377 = t375->value.
          ELSE.
            DATA(t385) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t385->has = abap_true.
            t385->value = | |.
            t377 = t245->join( p0 = t385 ).
          ENDIF.
          DATA(t386) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t386->has = abap_true.
          t386->value = t377.
          DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t363 = zcl_lnt_void_type=>get_db65( i_voided = t386 i_qualified_name = t388 ).
        ENDIF.
        DATA t389 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t391 TYPE REF TO zcl_lnt_abstract_token.
        t391 = t229.
        DATA t393 TYPE string.
        t393 = t2->filename.
        DATA t395 TYPE REF TO zif_lnt_union_ea265422.
        t395 ?= t363.
        DATA t400 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t400.
        t400->load( ).
        APPEND |inline| TO t400->items.
        t400->save( ).
        DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t389 = NEW zcl_lnt_typed_identifier( i_token = t391 i_filename = t393 i_type_9913 = t395 i_meta = t400 i_value = t406 ).
        DATA t408 TYPE REF TO zcl_lnt_current_scope.
        t408 = t2->scope.
        DATA t410 TYPE REF TO zcl_lnt_typed_identifier.
        t410 = t389.
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t410 IS INITIAL ) = abap_true.
        ELSE.
          DATA t424 TYPE REF TO zcl_lnt_fi_identifier.
          t424 = t410.
          DATA t428 TYPE string.
          t428 = t424->token->str.
          DATA(t436) = VALUE string( ).
          DATA(t437) = t428.
          DATA(t438) = 0.
          DATA(t439) = 1.
          DATA(t440) = strlen( t437 ).
          IF t438 < 0.
            t438 = t438 + t440.
            IF t438 < 0.
              t438 = 0.
            ENDIF.
          ENDIF.
          IF t438 > t440 OR t439 <= 0.
          ELSE.
            IF t439 > t440 - t438.
              t439 = t440 - t438.
            ENDIF.
            t436 = t437+t438(t439).
          ENDIF.
          IF xsdbool( t436 = |!| ) = abap_true.
            DATA t443 TYPE string.
            t443 = t428.
            DATA(t445) = VALUE string( ).
            DATA(t447) = 1.
            DATA t448 TYPE i.
            t448 = strlen( t443 ).
            DATA(t451) = strlen( t443 ).
            IF t447 < 0.
              t447 = t447 + t451.
              IF t447 < 0.
                t447 = 0.
              ENDIF.
            ENDIF.
            IF t447 > t451 OR t448 <= 0.
            ELSE.
              IF t448 > t451 - t447.
                t448 = t451 - t447.
              ENDIF.
              t445 = t443+t447(t448).
            ENDIF.
            t428 = t445.
          ENDIF.
          t408->add_named_identifier( i_name = t428 i_identifier = t410 ).
        ENDIF.
        DATA t455 TYPE REF TO zcl_lnt_current_scope.
        t455 = t2->scope.
        DATA t457 TYPE REF TO zcl_lnt_abstract_token.
        t457 = t229.
        DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t463.
        t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t463->sval = |Write To|.
        DATA t465 TYPE string.
        t465 = t2->filename.
        DATA t467 TYPE REF TO zcl_lnt_ireference_extras.
        t455->add_reference( i_usage = t457 i_referencing = t389 i_type_9913 = t463 i_filename = t465 i_extra = t467 ).
      ENDIF.
    ELSE.
      IF xsdbool( t3 IS BOUND ) = abap_true.
        DATA t470 TYPE REF TO zcl_lnt_abstract_type.
        t470 = zcl_lnt_sy_target=>run_syntax( i_node = t3 i_input_967e = t2 ).
        IF xsdbool( t470 IS BOUND AND t470 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
          DATA t477 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t479) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
          t477 = t1->find_direct_expressions( i_type_9913 = t479 ).
          DATA t480 TYPE REF TO zcl_lnt_expression_node.
          DATA t481 TYPE REF TO object.
          DATA(t482) = VALUE i( ).
          DO.
            t477->load( ).
            IF t482 >= lines( t477->items ).
              EXIT.
            ENDIF.
            CLEAR t481.
            READ TABLE t477->items INDEX t482 + 1 INTO t481.
            t482 = t482 + 1.
            DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t483.
            CLEAR t480.
            IF t481 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t483 ?= t481.
              DATA t484 TYPE REF TO object.
              t484 = t483->as_ref( ).
              t480 ?= t484.
            ELSE.
              t480 ?= t481.
            ENDIF.
            DATA t485 TYPE REF TO zcl_lnt_abstract_token.
            t485 = t480->get_first_token( ).
            DATA(t488) = VALUE string( ).
            DATA t489 TYPE string.
            DATA t490 TYPE string.
            t490 = t485->str.
            DATA(t495) = strlen( t490 ).
            t489 = t490.
            IF t489 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t489 TO UPPER CASE.
            ELSE.
              t489 = zlnt_runtime_uppe_91169605024d=>full( t489 ).
            ENDIF.
            t488 = t489.
            DATA t496 TYPE REF TO zcl_lnt_shape_59e28496.
            DATA t498 TYPE REF TO zcl_lnt_current_scope.
            t498 = t2->scope.
            DATA(t503) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t503->has = abap_true.
            t503->value = t488.
            t496 = t498->exists_object( i_name = t503 ).
            DATA t506 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t506.
            DATA t507 TYPE REF TO zcl_lnt_shape_59e28496.
            t507 = t496.
            DATA t509 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t509.
            IF xsdbool( t507 IS INITIAL ) = abap_true.
              CLEAR t509.
            ELSE.
              t509 = t507->id.
            ENDIF.
            t506 = t509.
            IF xsdbool( t506 IS BOUND ) = abap_true.
              DATA t517 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t518 TYPE REF TO zcl_lnt_fi_identifier.
              t518 = t496->id.
              DATA t522 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t522.
              t517 = NEW zcl_lnt_object_reference_type( i_id = t518 i_extra = t522 ).
              DATA t525 TYPE REF TO zcl_lnt_type_utils.
              DATA t526 TYPE REF TO zcl_lnt_current_scope.
              t526 = t2->scope.
              t525 = NEW zcl_lnt_type_utils( i_scope = t526 ).
              DATA t529 TYPE REF TO zcl_lnt_object_reference_type.
              t529 ?= t470.
              DATA t531 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t531.
              IF xsdbool( t525->is_assignable_strict( i_source_75cf = t517 i_target_5f8a = t529 i_node = t531 ) = abap_false ) = abap_true.
                DATA t534 TYPE string.
                DATA(t535) = |CATCH target not compatible with |.
                DATA(t537) = strlen( t535 ).
                t534 = |{ t535 }{ t488 }|.
                DATA t538 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t538 = t2->issues.
                DATA t540 TYPE REF TO zcl_lnt_issue.
                DATA t544 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t544.
                t540 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t485 i_message_26cb = t534 i_fix = t544 ).
                t538->load( ).
                APPEND t540 TO t538->items.
                t538->save( ).
                RETURN.
              ENDIF.
            ENDIF.
          ENDDO.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_common_superclass.
    DATA(t1) = i_class_names.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA(t6) = VALUE string( ).
    t1->dense( ).
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
      IF t1->has( t7 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t8.
      DATA t10 TYPE REF TO zif_lnt_class_definition.
      CLEAR t10.
      DATA t12 TYPE REF TO zcl_lnt_current_scope.
      t12 = t2->scope.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t6.
      t15 = t19.
      DATA t21 TYPE REF TO zif_lnt_class_definition.
      CLEAR t21.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t23 = t15.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t25.
      DATA(t27) = VALUE abap_bool( ).
      IF t23 IS INITIAL.
        t27 = abap_true.
      ELSEIF t23->has = abap_false.
        t27 = abap_true.
      ENDIF.
      IF t27 = abap_true.
        CLEAR t21.
      ELSE.
        DATA t31 TYPE REF TO zif_lnt_class_definition.
        CLEAR t31.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t33 = t12->current.
        DATA t36 TYPE REF TO zif_lnt_class_definition.
        CLEAR t36.
        IF xsdbool( t33 IS INITIAL ) = abap_true.
          CLEAR t36.
        ELSE.
          DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t41 = t33.
          DATA(t43) = VALUE string( ).
          t43 = t15->value.
          t36 = t41->find_class_definition( i_name = t43 ).
        ENDIF.
        t31 = t36.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        IF xsdbool( t31 IS BOUND ) = abap_true.
          t45 = t31.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_class.
          DATA t55 TYPE REF TO zcl_lnt_class.
          CLEAR t55.
          DATA t57 TYPE REF TO zif_lnt_registry.
          t57 = t12->reg.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t62->has = abap_true.
          t62->value = |CLAS|.
          t59 = t62.
          DATA(t66) = VALUE string( ).
          t66 = t15->value.
          DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t68->has = abap_true.
          t68->value = t66.
          DATA t70 TYPE REF TO object.
          t70 = t57->get_object( i_type_9913 = t59 i_name = t68 ).
          t55 ?= t70.
          t54 = t55.
          DATA t71 TYPE REF TO zif_lnt_class_definition.
          CLEAR t71.
          IF xsdbool( t54 IS BOUND ) = abap_true.
            t71 = t54->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t71.
          ENDIF.
          t45 = t71.
        ENDIF.
        t21 = t45.
      ENDIF.
      t10 = t21.
      DATA t78 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t78 = NEW zlnt_runtime_set__1827558fd4c7( ).
      DO.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        t81 = xsdbool( t10 IS BOUND ).
        t80 = t81.
        IF t81 = abap_true.
          DATA(t86) = VALUE string( ).
          DATA(t87) = VALUE string( ).
          t87 = t10->get_name( ).
          DATA(t90) = strlen( t87 ).
          t86 = t87.
          IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t86 TO UPPER CASE.
          ELSE.
            t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
          ENDIF.
          t80 = xsdbool( t78->has( p0 = t86 ) = abap_false ).
        ENDIF.
        IF t80 = abap_false.
          EXIT.
        ENDIF.
        DATA t93 TYPE REF TO zif_lnt_class_definition.
        t93 = t10.
        t8->load( ).
        APPEND t93 TO t8->items.
        t8->save( ).
        DATA t95 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t95.
        DATA(t97) = VALUE string( ).
        DATA(t98) = VALUE string( ).
        t98 = t10->get_name( ).
        DATA(t101) = strlen( t98 ).
        t97 = t98.
        IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t97 TO UPPER CASE.
        ELSE.
          t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
        ENDIF.
        t95 = t78->add( p0 = t97 ).
        DATA t103 TYPE REF TO zcl_lnt_current_scope.
        t103 = t2->scope.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t106 = t10->get_super_class( ).
        DATA t110 TYPE REF TO zif_lnt_class_definition.
        CLEAR t110.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t112 = t106.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        CLEAR t114.
        DATA(t116) = VALUE abap_bool( ).
        IF t112 IS INITIAL.
          t116 = abap_true.
        ELSEIF t112->has = abap_false.
          t116 = abap_true.
        ENDIF.
        IF t116 = abap_true.
          CLEAR t110.
        ELSE.
          DATA t120 TYPE REF TO zif_lnt_class_definition.
          CLEAR t120.
          DATA t122 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t122 = t103->current.
          DATA t125 TYPE REF TO zif_lnt_class_definition.
          CLEAR t125.
          IF xsdbool( t122 IS INITIAL ) = abap_true.
            CLEAR t125.
          ELSE.
            DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t130 = t122.
            DATA(t132) = VALUE string( ).
            t132 = t106->value.
            t125 = t130->find_class_definition( i_name = t132 ).
          ENDIF.
          t120 = t125.
          DATA t134 TYPE REF TO zif_lnt_class_definition.
          CLEAR t134.
          IF xsdbool( t120 IS BOUND ) = abap_true.
            t134 = t120.
          ELSE.
            DATA t143 TYPE REF TO zcl_lnt_class.
            DATA t144 TYPE REF TO zcl_lnt_class.
            CLEAR t144.
            DATA t146 TYPE REF TO zif_lnt_registry.
            t146 = t103->reg.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t151->has = abap_true.
            t151->value = |CLAS|.
            t148 = t151.
            DATA(t155) = VALUE string( ).
            t155 = t106->value.
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = t155.
            DATA t159 TYPE REF TO object.
            t159 = t146->get_object( i_type_9913 = t148 i_name = t157 ).
            t144 ?= t159.
            t143 = t144.
            DATA t160 TYPE REF TO zif_lnt_class_definition.
            CLEAR t160.
            IF xsdbool( t143 IS BOUND ) = abap_true.
              t160 = t143->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t160.
            ENDIF.
            t134 = t160.
          ENDIF.
          t110 = t134.
        ENDIF.
        t10 = t110.
      ENDDO.
      t3->load( ).
      APPEND t8 TO t3->items.
      t3->save( ).
    ENDDO.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t174 TYPE REF TO object.
    t174 = t3->get( p0 = 0 ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t174 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t175 ?= t174.
      IF t175 IS BOUND.
        IF t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t171 ?= t175->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
          ENDTRY.
        ELSEIF t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          CREATE OBJECT t171.
          t171->source = t175.
        ELSE.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
        ENDIF.
        t171->load( ).
        DATA t176 TYPE REF TO object.
        DATA t177 TYPE REF TO zif_lnt_class_definition.
        LOOP AT t171->items INTO t176.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          CLEAR t177.
          IF t176 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t178 ?= t176.
            DATA t179 TYPE REF TO object.
            t179 = t178->as_ref( ).
            t177 ?= t179.
          ELSE.
            t177 ?= t176.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ELSE.
      t171 ?= t174.
    ENDIF.
    t170 = t171.
    DATA t180 TYPE REF TO zif_lnt_class_definition.
    IF xsdbool( t170 IS INITIAL ) = abap_true.
    ELSE.
      DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t185 = t170.
      DATA(t188) = VALUE i( ).
      t185->load( ).
      t188 = lines( t185->items ).
      DATA(t191) = VALUE i( ).
      t191 = 0.
      DATA t193 TYPE REF TO zif_lnt_class_definition.
      DO.
        IF xsdbool( t191 < t188 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t198 TYPE REF TO zif_lnt_class_definition.
        CLEAR t198.
        DATA t200 TYPE REF TO zif_lnt_class_definition.
        CLEAR t200.
        DATA t203 TYPE REF TO object.
        t203 = t185->get( p0 = t191 ).
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        CLEAR t200.
        IF t203 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t204 ?= t203.
          DATA t205 TYPE REF TO object.
          t205 = t204->as_ref( ).
          t200 ?= t205.
        ELSE.
          t200 ?= t203.
        ENDIF.
        t198 = t200.
        DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t207.
        t207 = t3.
        DATA(t209) = VALUE i( ).
        t207->load( ).
        t209 = lines( t207->items ).
        DATA(t212) = VALUE i( ).
        t212 = 0.
        DATA(t214) = VALUE abap_bool( ).
        t214 = abap_true.
        DO.
          IF xsdbool( t212 < t209 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t219.
          DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t221.
          DATA t224 TYPE REF TO object.
          t224 = t207->get( p0 = t212 ).
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          CLEAR t221.
          IF t224 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t225 ?= t224.
            CLEAR t221.
            IF t225 IS BOUND.
              IF t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t221 ?= t225->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
                ENDTRY.
              ELSEIF t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
                CREATE OBJECT t221.
                t221->source = t225.
              ELSE.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
              ENDIF.
              t221->load( ).
              DATA t226 TYPE REF TO object.
              CLEAR t226.
              DATA t227 TYPE REF TO zif_lnt_class_definition.
              CLEAR t227.
              LOOP AT t221->items INTO t226.
                DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t228.
                CLEAR t227.
                IF t226 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t228 ?= t226.
                  DATA t229 TYPE REF TO object.
                  t229 = t228->as_ref( ).
                  t227 ?= t229.
                ELSE.
                  t227 ?= t226.
                ENDIF.
              ENDLOOP.
            ENDIF.
          ELSE.
            t221 ?= t224.
          ENDIF.
          t219 = t221.
          DATA(t232) = VALUE abap_bool( ).
          t232 = abap_false.
          DATA t235 TYPE REF TO zif_lnt_class_definition.
          CLEAR t235.
          DATA t236 TYPE REF TO object.
          CLEAR t236.
          DATA(t237) = VALUE i( ).
          DO.
            t219->load( ).
            IF t237 >= lines( t219->items ).
              EXIT.
            ENDIF.
            CLEAR t236.
            READ TABLE t219->items INDEX t237 + 1 INTO t236.
            t237 = t237 + 1.
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t238.
            CLEAR t235.
            IF t236 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t238 ?= t236.
              DATA t239 TYPE REF TO object.
              t239 = t238->as_ref( ).
              t235 ?= t239.
            ELSE.
              t235 ?= t236.
            ENDIF.
            DATA(t241) = VALUE string( ).
            DATA(t242) = VALUE string( ).
            t242 = t235->get_name( ).
            DATA(t244) = strlen( t242 ).
            t241 = t242.
            IF t241 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t241 TO UPPER CASE.
            ELSE.
              t241 = zlnt_runtime_uppe_91169605024d=>full( t241 ).
            ENDIF.
            DATA(t245) = VALUE string( ).
            DATA(t246) = VALUE string( ).
            t246 = t198->get_name( ).
            DATA(t248) = strlen( t246 ).
            t245 = t246.
            IF t245 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t245 TO UPPER CASE.
            ELSE.
              t245 = zlnt_runtime_uppe_91169605024d=>full( t245 ).
            ENDIF.
            IF xsdbool( t241 = t245 ) = abap_true.
              t232 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          IF xsdbool( t232 = abap_false ) = abap_true.
            t214 = abap_false.
            EXIT.
          ENDIF.
          DATA(t254) = 1.
          t212 = t212 + t254.
        ENDDO.
        IF t214 = abap_true.
          t193 = t198.
          EXIT.
        ENDIF.
        DATA(t262) = 1.
        t191 = t191 + t262.
      ENDDO.
      t180 = t193.
    ENDIF.
    result = t180.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d868_06226f4d12ae.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
