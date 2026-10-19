* TS: src/abap/5_syntax/structures/type_enum.ts:13:1 TypeEnum
CLASS zcl_lnt_sy_type_enum DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_33d96643.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type_enum IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t9 TYPE REF TO zif_lnt_structure.
    t9 = t1->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    IF xsdbool( xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_sr_type_enum ) = abap_false ) = abap_true.
      DATA t11 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t12 TYPE REF TO zcx_lnt_assert_error.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = |TypeEnum, unexpected type|.
      t12 = NEW zcx_lnt_assert_error( i_message_26cb = t16 ).
      t11 = NEW #( ).
      t11->payload = t12.
      CLEAR t11->source_value.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t12.
      TRY.
          t11->source_value ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11->source_value IS NOT BOUND.
        TRY.
            t18 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t11->source_value = t18->source( ).
        ENDIF.
        IF t11->source_value IS NOT BOUND.
          CREATE OBJECT t11->source_value.
          t11->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->source_value->oval = t12.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t11.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d666_0f34aaf902de.
    t20 = t1->find_direct_statement( i_type_9913 = t23 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
      DATA t31 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t32 TYPE REF TO zcx_lnt_assert_error.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = |TypeEnum, unexpected type, begin|.
      t32 = NEW zcx_lnt_assert_error( i_message_26cb = t36 ).
      t31 = NEW #( ).
      t31->payload = t32.
      CLEAR t31->source_value.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t32.
      TRY.
          t31->source_value ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31->source_value IS NOT BOUND.
        TRY.
            t38 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t31->source_value = t38->source( ).
        ENDIF.
        IF t31->source_value IS NOT BOUND.
          CREATE OBJECT t31->source_value.
          t31->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->source_value->oval = t32.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t31.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t40 = t1->find_direct_statements( i_type_9913 = t42 ).
    DATA t43 TYPE REF TO zcl_lnt_statement_node.
    DATA t44 TYPE REF TO object.
    DATA(t45) = VALUE i( ).
    DO.
      t40->load( ).
      IF t45 >= lines( t40->items ).
        EXIT.
      ENDIF.
      CLEAR t44.
      READ TABLE t40->items INDEX t45 + 1 INTO t44.
      t45 = t45 + 1.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      CLEAR t43.
      IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t46 ?= t44.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t47 = t46->as_ref( ).
        t43 ?= t47.
      ELSE.
        t43 ?= t44.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t48.
      DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t48 = t43->find_first_expression( i_type_9913 = t51 ).
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      CLEAR t55.
      IF xsdbool( t48 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t60.
      t60 = t48->get_first_token( ).
      DATA(t63) = t3.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t64.
      DATA(t66) = VALUE string( ).
      t66 = t2->filename.
      DATA t68 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t68.
      DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t69.
      t68 = zcl_lnt_integer_type=>get_db65( i_input_967e = t69 ).
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t64 = NEW zcl_lnt_typed_identifier( i_token = t60 i_filename = t66 i_type_9913 = t68 i_meta = t70 i_value = t71 ).
      t63->load( ).
      APPEND t64 TO t63->items.
      t63->save( ).
    ENDDO.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d665_f295bf63bcfe.
    t72 = t1->find_direct_statements( i_type_9913 = t74 ).
    DATA t75 TYPE REF TO zcl_lnt_statement_node.
    DATA t76 TYPE REF TO object.
    DATA(t77) = VALUE i( ).
    DO.
      t72->load( ).
      IF t77 >= lines( t72->items ).
        EXIT.
      ENDIF.
      CLEAR t76.
      READ TABLE t72->items INDEX t77 + 1 INTO t76.
      t77 = t77 + 1.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      CLEAR t75.
      IF t76 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t78 ?= t76.
        DATA t79 TYPE REF TO object.
        CLEAR t79.
        t79 = t78->as_ref( ).
        t75 ?= t79.
      ELSE.
        t75 ?= t76.
      ENDIF.
      DATA t80 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t80.
      DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t80 = t75->find_first_expression( i_type_9913 = t83 ).
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      CLEAR t87.
      IF xsdbool( t80 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t92.
      t92 = t80->get_first_token( ).
      DATA(t95) = t3.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t96.
      DATA(t98) = VALUE string( ).
      t98 = t2->filename.
      DATA t100 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t101.
      t100 = zcl_lnt_integer_type=>get_db65( i_input_967e = t101 ).
      DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t102.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      t96 = NEW zcl_lnt_typed_identifier( i_token = t92 i_filename = t98 i_type_9913 = t100 i_meta = t102 i_value = t103 ).
      t95->load( ).
      APPEND t96 TO t95->items.
      t95->save( ).
    ENDDO.
    DATA t104 TYPE REF TO zcl_lnt_abstract_token.
    DATA t106 TYPE REF TO zcl_lnt_expression_node.
    t106 = t20->find_expression_after_token( i_text = |TYPE| ).
    DATA t111 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t106 IS INITIAL ) = abap_true.
    ELSE.
      t111 = t106->get_first_token( ).
    ENDIF.
    t104 = t111.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t120 TYPE REF TO zcl_lnt_abstract_token.
    t120 = t104.
    DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t120 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t130) = VALUE string( ).
      t130 = t120->str.
      DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t132->has = abap_true.
      t132->value = t130.
      t122 = t132.
    ENDIF.
    t118 = t122.
    DATA(t133) = VALUE abap_bool( ).
    DATA(t134) = VALUE abap_bool( ).
    t134 = xsdbool( t104 IS BOUND ).
    t133 = t134.
    IF t134 = abap_true.
      DATA(t136) = VALUE abap_bool( ).
      IF t118 IS BOUND.
        IF t118->has = abap_true.
          t136 = xsdbool( strlen( t118->value ) > 0 ).
        ENDIF.
      ENDIF.
      t133 = t136.
    ENDIF.
    IF t133 = abap_true.
      DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t141 TYPE REF TO zcl_lnt_current_scope.
      t141 = t2->scope.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t146) = VALUE string( ).
      t146 = t118->value.
      DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t148->has = abap_true.
      t148->value = t146.
      t143 = t148.
      DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t152 = t143.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t156) = VALUE abap_bool( ).
      IF t152 IS INITIAL.
        t156 = abap_true.
      ELSEIF t152->has = abap_false.
        t156 = abap_true.
      ENDIF.
      IF t156 = abap_true.
      ELSE.
        DATA t160 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t160 = t141->current.
        DATA t163 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t160 IS INITIAL ) = abap_true.
        ELSE.
          DATA t168 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t168 = t160.
          DATA(t170) = VALUE string( ).
          t170 = t143->value.
          t163 = t168->find_type( i_name = t170 ).
        ENDIF.
        t150 = t163.
      ENDIF.
      t138 = t150.
      IF xsdbool( t138 IS BOUND ) = abap_true.
        DATA t174 TYPE REF TO zcl_lnt_current_scope.
        t174 = t2->scope.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        t176 = t104.
        DATA t181 TYPE REF TO zcl_lnt_typed_identifier.
        t181 = t138.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t183.
        t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t183->sval = |Type|.
        DATA(t185) = VALUE string( ).
        t185 = t2->filename.
        DATA t187 TYPE REF TO zcl_lnt_ireference_extras.
        t174->add_reference( i_usage = t176 i_referencing = t181 i_type_9913 = t183 i_filename = t185 i_extra = t187 ).
      ENDIF.
    ENDIF.
    DATA t188 TYPE REF TO zcl_lnt_expression_node.
    DATA t190 TYPE REF TO zcl_lnt_statement_node.
    t190 = t20.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t188 = t190->find_first_expression( i_type_9913 = t192 ).
    IF xsdbool( t188 IS BOUND ) = abap_true.
      DATA(t195) = VALUE string( ).
      t195 = t188->concat_tokens( ).
      DATA(t199) = VALUE abap_bool( ).
      DATA(t200) = VALUE abap_bool( ).
      t200 = xsdbool( t2->scope->get_type( ) = |class_definition| ).
      t199 = t200.
      IF t200 = abap_false.
        t199 = xsdbool( t2->scope->get_type( ) = |interface| ).
      ENDIF.
      IF t199 = abap_true.
        DATA(t211) = VALUE string( ).
        DATA(t212) = VALUE string( ).
        t212 = t2->scope->get_name( ).
        DATA(t216) = strlen( t212 ).
        t211 = |{ t212 }{ |=>| }|.
        DATA(t218) = strlen( t211 ).
        t195 = |{ t211 }{ t195 }|.
      ENDIF.
      DATA t220 TYPE REF TO zcl_lnt_enum_type.
      DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t228->has = abap_true.
      t228->value = t195.
      DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t223 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t228 i_conversion_exit = t230 i_derived_from_constant = t232 i_ddic_name = t234 i_rtti_name = t236 i_description = t238 ).
      CREATE OBJECT t223->zlnt_view_ownkeys_b0e8086400eb.
      t223->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t240 ).
      CREATE OBJECT t223->zlnt_json_ownkeys_70e5fd461788.
      t223->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t242 ).
      t220 = NEW zcl_lnt_enum_type( i_input_967e = t223 ).
      DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t246 TYPE REF TO zcl_lnt_abstract_token.
      t246 = t188->get_first_token( ).
      DATA(t249) = VALUE string( ).
      t249 = t2->filename.
      DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t255.
      t255->load( ).
      APPEND |enum| TO t255->items.
      t255->save( ).
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t244 = NEW zcl_lnt_typed_identifier( i_token = t246 i_filename = t249 i_type_9913 = t220 i_meta = t255 i_value = t261 ).
      DATA t263 TYPE REF TO zcl_lnt_current_scope.
      t263 = t2->scope.
      DATA t265 TYPE REF TO zcl_lnt_typed_identifier.
      t265 = t244.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t265 IS INITIAL ) = abap_true.
      ELSE.
        DATA t279 TYPE REF TO zcl_lnt_fi_identifier.
        t279 = t265.
        DATA(t283) = VALUE string( ).
        t283 = t279->token->str.
        DATA(t291) = VALUE string( ).
        DATA(t292) = t283.
        DATA(t293) = 0.
        DATA(t294) = 1.
        DATA(t295) = strlen( t292 ).
        IF t293 < 0.
          t293 = t293 + t295.
          IF t293 < 0.
            t293 = 0.
          ENDIF.
        ENDIF.
        IF t293 > t295 OR t294 <= 0.
        ELSE.
          IF t294 > t295 - t293.
            t294 = t295 - t293.
          ENDIF.
          t291 = t292+t293(t294).
        ENDIF.
        IF xsdbool( t291 = |!| ) = abap_true.
          DATA(t298) = VALUE string( ).
          t298 = t283.
          DATA(t300) = VALUE string( ).
          DATA(t302) = 1.
          DATA(t303) = VALUE i( ).
          t303 = strlen( t298 ).
          DATA(t306) = strlen( t298 ).
          IF t302 < 0.
            t302 = t302 + t306.
            IF t302 < 0.
              t302 = 0.
            ENDIF.
          ENDIF.
          IF t302 > t306 OR t303 <= 0.
          ELSE.
            IF t303 > t306 - t302.
              t303 = t306 - t302.
            ENDIF.
            t300 = t298+t302(t303).
          ENDIF.
          t283 = t300.
        ENDIF.
        t263->add_type_named( i_name = t283 i_type_9913 = t265 ).
      ENDIF.
      t5->load( ).
      APPEND t244 TO t5->items.
      t5->save( ).
    ENDIF.
    DATA t315 TYPE REF TO zcl_lnt_expression_node.
    t315 = t20->find_expression_after_token( i_text = |STRUCTURE| ).
    IF xsdbool( t315 IS BOUND ) = abap_true.
      DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t322.
      DATA(t324) = t3.
      DATA t325 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t326 TYPE REF TO object.
      DATA(t327) = VALUE i( ).
      DO.
        t324->load( ).
        IF t327 >= lines( t324->items ).
          EXIT.
        ENDIF.
        CLEAR t326.
        READ TABLE t324->items INDEX t327 + 1 INTO t326.
        t327 = t327 + 1.
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        CLEAR t325.
        IF t326 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t328 ?= t326.
          DATA t329 TYPE REF TO object.
          CLEAR t329.
          t329 = t328->as_ref( ).
          t325 ?= t329.
        ELSE.
          t325 ?= t326.
        ENDIF.
        DATA t331 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t331.
        DATA(t332) = VALUE string( ).
        DATA t334 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t334.
        t334 = t325.
        DATA(t337) = VALUE string( ).
        t337 = t334->token->str.
        DATA(t345) = VALUE string( ).
        DATA(t346) = t337.
        DATA(t347) = 0.
        DATA(t348) = 1.
        DATA(t349) = strlen( t346 ).
        IF t347 < 0.
          t347 = t347 + t349.
          IF t347 < 0.
            t347 = 0.
          ENDIF.
        ENDIF.
        IF t347 > t349 OR t348 <= 0.
        ELSE.
          IF t348 > t349 - t347.
            t348 = t349 - t347.
          ENDIF.
          t345 = t346+t347(t348).
        ENDIF.
        IF xsdbool( t345 = |!| ) = abap_true.
          DATA(t352) = VALUE string( ).
          t352 = t337.
          DATA(t354) = VALUE string( ).
          DATA(t356) = 1.
          DATA(t357) = VALUE i( ).
          t357 = strlen( t352 ).
          DATA(t360) = strlen( t352 ).
          IF t356 < 0.
            t356 = t356 + t360.
            IF t356 < 0.
              t356 = 0.
            ENDIF.
          ENDIF.
          IF t356 > t360 OR t357 <= 0.
          ELSE.
            IF t357 > t360 - t356.
              t357 = t360 - t356.
            ENDIF.
            t354 = t352+t356(t357).
          ENDIF.
          t337 = t354.
        ENDIF.
        t332 = t337.
        DATA t362 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t362.
        t362 = t325->type_cba0.
        DATA t368 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t368.
        CLEAR t368.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        CLEAR t370.
        t331 = NEW zcl_lnt_istructure_component( i_name = t332 i_type_9913 = t362 i_as_include = t368 i_suffix = t370 ).
        CREATE OBJECT t331->zlnt_view_ownkeys_b0e8086400eb.
        t331->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t372 ).
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t331->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t373 ).
        ENDIF.
        CREATE OBJECT t331->zlnt_json_ownkeys_70e5fd461788.
        t331->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t375 ).
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t377 ).
        ENDIF.
        t322->load( ).
        APPEND t331 TO t322->items.
        t322->save( ).
      ENDDO.
      CREATE OBJECT t3.
      DATA t380 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t381 TYPE REF TO zcl_lnt_abstract_token.
      t381 = t315->get_first_token( ).
      DATA(t384) = VALUE string( ).
      t384 = t2->filename.
      DATA t386 TYPE REF TO zcl_lnt_structure_type.
      DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t386 = NEW zcl_lnt_structure_type( i_components = t322 i_qualified_name = t388 i_ddic_name = t389 i_description = t390 ).
      DATA t394 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t394.
      t394->load( ).
      APPEND |enum| TO t394->items.
      t394->save( ).
      DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t380 = NEW zcl_lnt_typed_identifier( i_token = t381 i_filename = t384 i_type_9913 = t386 i_meta = t394 i_value = t400 ).
      t3->load( ).
      APPEND t380 TO t3->items.
      t3->save( ).
    ENDIF.
    DATA t403 TYPE REF TO zcl_lnt_shape_33d96643.
    t403 = NEW zcl_lnt_shape_33d96643( i_values = t3 i_types = t5 ).
    CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
    t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t414 ).
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `types` p1 = t415 ).
    ENDIF.
    CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
    t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = |values| p1 = t417 ).
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = |types| p1 = t419 ).
    ENDIF.
    result = t403.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d994_4813704df8cd.
  ENDMETHOD.
ENDCLASS.
