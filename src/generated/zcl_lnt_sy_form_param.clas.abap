* TS: src/abap/5_syntax/expressions/form_param.ts:11:1 FormParam
CLASS zcl_lnt_sy_form_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_form_param IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d187_ac8768b55725.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA t14 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t15 TYPE REF TO zcx_lnt_assert_error.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = |FormParam, could not find FormParamName|.
      t15 = NEW zcx_lnt_assert_error( i_message_26cb = t19 ).
      t14 = NEW #( ).
      t14->payload = t15.
      CLEAR t14->source_value.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t15.
      TRY.
          t14->source_value ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14->source_value IS NOT BOUND.
        TRY.
            t21 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t14->source_value = t21->source( ).
        ENDIF.
        IF t14->source_value IS NOT BOUND.
          CREATE OBJECT t14->source_value.
          t14->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->source_value->oval = t15.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t14.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    t23 = t3->get_first_token( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zcl_lnt_abstract_node.
    t31 = t3.
    t29 ?= t31->children.
    t29->load( ).
    IF xsdbool( lines( t29->items ) > 1 ) = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_position.
      t38 = t23->start.
      t23 = NEW zcl_lnt_lx_identifier( i_start = t38 i_str = t3->concat_tokens( ) ).
    ENDIF.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zcl_lnt_abstract_token.
    t48 = t1->find_direct_token_by_text( i_text = |STRUCTURE| ).
    t47 = xsdbool( t48 IS BOUND ).
    t46 = t47.
    IF t47 = abap_true.
      t46 = xsdbool( t23 IS BOUND ).
    ENDIF.
    IF t46 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t57 = t1->find_direct_expression( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t57 IS INITIAL ) = abap_true.
      ELSE.
        t61 = t57->get_first_token( ).
      ENDIF.
      t55 = t61.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t55 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t76) = VALUE string( ).
        t76 = t55->str.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t76.
        t68 = t78.
      ENDIF.
      t53 = t68.
      DATA t79 TYPE REF TO zif_lnt_union_ea265422.
      DATA(t81) = VALUE abap_bool( ).
      IF t53 IS BOUND.
        IF t53->has = abap_true.
          t81 = xsdbool( strlen( t53->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t81 = abap_true.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t87 TYPE REF TO zcl_lnt_current_scope.
        t87 = t2->scope.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t92) = VALUE string( ).
        t92 = t53->value.
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t92.
        t89 = t94.
        DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t98 = t89.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t102) = VALUE abap_bool( ).
        IF t98 IS INITIAL.
          t102 = abap_true.
        ELSEIF t98->has = abap_false.
          t102 = abap_true.
        ENDIF.
        IF t102 = abap_true.
        ELSE.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t106 = t87->current.
          DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t106 IS INITIAL ) = abap_true.
          ELSE.
            DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t114 = t106.
            DATA(t116) = VALUE string( ).
            t116 = t89->value.
            t109 = t114->find_type( i_name = t116 ).
          ENDIF.
          t96 = t109.
        ENDIF.
        t84 = t96.
        DATA t118 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t84 IS INITIAL ) = abap_true.
        ELSE.
          t118 = t84->type_cba0.
        ENDIF.
        t79 = t118.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t79 IS INITIAL ) = abap_true.
          DATA t137 TYPE REF TO zcl_lnt_ddic.
          DATA t143 TYPE REF TO zif_lnt_registry.
          t143 = t2->scope->reg.
          t137 = NEW zcl_lnt_ddic( i_reg_f149 = t143 ).
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t148) = VALUE string( ).
          t148 = t53->value.
          DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t150->has = abap_true.
          t150->value = t148.
          t145 = t150.
          DATA t152 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t154 = t145.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t158) = VALUE abap_bool( ).
          IF t154 IS INITIAL.
            t158 = abap_true.
          ELSEIF t154->has = abap_false.
            t158 = abap_true.
          ENDIF.
          IF t158 = abap_true.
            DATA t160 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t161 TYPE REF TO zcl_lnt_abstract_type.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t161 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t164 ).
            DATA t165 TYPE REF TO zif_lnt_object.
            t160 = NEW zcl_lnt_ilookup_result( i_type_9913 = t161 i_object_19cd = t165 ).
            CREATE OBJECT t160->zlnt_view_ownkeys_b0e8086400eb.
            t160->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t167 ).
            CREATE OBJECT t160->zlnt_json_ownkeys_70e5fd461788.
            t160->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t169 ).
            t152 = t160.
          ELSE.
            DATA t171 TYPE REF TO zcl_lnt_table.
            DATA t172 TYPE REF TO zcl_lnt_table.
            DATA t174 TYPE REF TO zif_lnt_registry.
            t174 = t137->reg.
            DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t179->has = abap_true.
            t179->value = |TABL|.
            t176 = t179.
            DATA(t183) = VALUE string( ).
            t183 = t145->value.
            DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t185->has = abap_true.
            t185->value = t183.
            DATA t187 TYPE REF TO object.
            t187 = t174->get_object( i_type_9913 = t176 i_name = t185 ).
            t172 ?= t187.
            t171 = t172.
            DATA t188 TYPE REF TO zcl_lnt_ilookup_result.
            IF xsdbool( t171 IS BOUND ) = abap_true.
              DATA t191 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t192 TYPE REF TO zcl_lnt_abstract_type.
              DATA t194 TYPE REF TO zcl_lnt_table.
              t194 = t171.
              DATA t196 TYPE REF TO zif_lnt_registry.
              t196 = t137->reg.
              DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t192 = t194->parse_type( i_reg_f149 = t196 i_data_element = t198 i_description = t199 ).
              DATA t200 TYPE REF TO zif_lnt_object.
              t200 = t171.
              t191 = NEW zcl_lnt_ilookup_result( i_type_9913 = t192 i_object_19cd = t200 ).
              CREATE OBJECT t191->zlnt_view_ownkeys_b0e8086400eb.
              t191->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t203 ).
              DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t204 ).
              ENDIF.
              CREATE OBJECT t191->zlnt_json_ownkeys_70e5fd461788.
              t191->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t206 ).
              DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t208 ).
              ENDIF.
              t188 = t191.
            ELSE.
              DATA t210 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t215) = VALUE string( ).
              t215 = t145->value.
              DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t217->has = abap_true.
              t217->value = t215.
              t210 = t137->lookup_ddls( i_name = t217 ).
              DATA t219 TYPE REF TO zcl_lnt_ilookup_result.
              IF xsdbool( t210 IS BOUND ) = abap_true.
                t219 = t210.
              ELSE.
                DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t228) = VALUE string( ).
                t228 = t145->value.
                DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t230->has = abap_true.
                t230->value = t228.
                t225 = t230.
                DATA t232 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t234 = t225.
                DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t238) = VALUE abap_bool( ).
                IF t234 IS INITIAL.
                  t238 = abap_true.
                ELSEIF t234->has = abap_false.
                  t238 = abap_true.
                ENDIF.
                IF t238 = abap_true.
                  DATA t240 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t241 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t241 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t244 ).
                  DATA t245 TYPE REF TO zif_lnt_object.
                  t240 = NEW zcl_lnt_ilookup_result( i_type_9913 = t241 i_object_19cd = t245 ).
                  CREATE OBJECT t240->zlnt_view_ownkeys_b0e8086400eb.
                  t240->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t247 ).
                  CREATE OBJECT t240->zlnt_json_ownkeys_70e5fd461788.
                  t240->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t249 ).
                  t232 = t240.
                ELSE.
                  DATA t251 TYPE REF TO zcl_lnt_table.
                  DATA t252 TYPE REF TO zcl_lnt_table.
                  DATA t254 TYPE REF TO zif_lnt_registry.
                  t254 = t137->reg.
                  DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t259->has = abap_true.
                  t259->value = |VIEW|.
                  t256 = t259.
                  DATA(t263) = VALUE string( ).
                  t263 = t225->value.
                  DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t265->has = abap_true.
                  t265->value = t263.
                  DATA t267 TYPE REF TO object.
                  t267 = t254->get_object( i_type_9913 = t256 i_name = t265 ).
                  t252 ?= t267.
                  t251 = t252.
                  DATA t268 TYPE REF TO zcl_lnt_ilookup_result.
                  IF xsdbool( t251 IS BOUND ) = abap_true.
                    DATA t271 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t272 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t274 TYPE REF TO zcl_lnt_table.
                    t274 = t251.
                    DATA t276 TYPE REF TO zif_lnt_registry.
                    t276 = t137->reg.
                    DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t272 = t274->parse_type( i_reg_f149 = t276 i_data_element = t278 i_description = t279 ).
                    DATA t280 TYPE REF TO zif_lnt_object.
                    t280 = t251.
                    t271 = NEW zcl_lnt_ilookup_result( i_type_9913 = t272 i_object_19cd = t280 ).
                    CREATE OBJECT t271->zlnt_view_ownkeys_b0e8086400eb.
                    t271->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t283 ).
                    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t284 ).
                    ENDIF.
                    CREATE OBJECT t271->zlnt_json_ownkeys_70e5fd461788.
                    t271->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t286 ).
                    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t288 ).
                    ENDIF.
                    t268 = t271.
                  ELSE.
                    DATA t289 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t291 TYPE REF TO zif_lnt_registry.
                    t291 = t137->reg.
                    DATA(t293) = VALUE string( ).
                    t293 = t225->value.
                    IF t291->in_error_namespace( i_name = t293 ) = abap_true.
                      DATA t295 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t296 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t299) = VALUE string( ).
                      t299 = t225->value.
                      DATA(t302) = strlen( t299 ).
                      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t296 = NEW zcl_lnt_unknown_type( i_error = |{ t299 }{ | not found, lookupView| }| i_qualified_name = t303 ).
                      DATA t304 TYPE REF TO zif_lnt_object.
                      t295 = NEW zcl_lnt_ilookup_result( i_type_9913 = t296 i_object_19cd = t304 ).
                      CREATE OBJECT t295->zlnt_view_ownkeys_b0e8086400eb.
                      t295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t306 ).
                      CREATE OBJECT t295->zlnt_json_ownkeys_70e5fd461788.
                      t295->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t308 ).
                      t289 = t295.
                    ELSE.
                      DATA t309 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t310 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t314) = VALUE string( ).
                      t314 = t225->value.
                      DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t316->has = abap_true.
                      t316->value = t314.
                      DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t310 = zcl_lnt_void_type=>get_db65( i_voided = t316 i_qualified_name = t318 ).
                      DATA t319 TYPE REF TO zif_lnt_object.
                      t309 = NEW zcl_lnt_ilookup_result( i_type_9913 = t310 i_object_19cd = t319 ).
                      CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
                      t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t321 ).
                      CREATE OBJECT t309->zlnt_json_ownkeys_70e5fd461788.
                      t309->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t323 ).
                      t289 = t309.
                    ENDIF.
                    t268 = t289.
                  ENDIF.
                  t232 = t268.
                ENDIF.
                t219 = t232.
              ENDIF.
              t188 = t219.
            ENDIF.
            t152 = t188.
          ENDIF.
          t79 = t152->zlnt_view_read_sr_9be58e2d4893( ).
        ENDIF.
      ELSE.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t79 = NEW zcl_lnt_unknown_type( i_error = |todo, FORM STRUCTURES typing| i_qualified_name = t326 ).
      ENDIF.
      DATA(t329) = VALUE string( ).
      t329 = t2->filename.
      DATA t331 TYPE REF TO zcl_lnt_abstract_type.
      t331 ?= t79.
      DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t337.
      t337->load( ).
      APPEND |form_parameter| TO t337->items.
      t337->save( ).
      t337->load( ).
      APPEND |form_parameter_structure| TO t337->items.
      t337->save( ).
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t329 i_type_9913 = t331 i_meta = t337 i_value = t345 ).
      RETURN.
    ENDIF.
    DATA(t346) = VALUE abap_bool( ).
    DATA(t347) = VALUE abap_bool( ).
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t351 TYPE REF TO zcl_lnt_abstract_node.
    t351 = t1.
    t349 ?= t351->children.
    t349->load( ).
    t347 = xsdbool( lines( t349->items ) = 1 ).
    t346 = t347.
    IF t347 = abap_true.
      t346 = xsdbool( t23 IS BOUND ).
    ENDIF.
    IF t346 = abap_true.
      DATA(t360) = VALUE string( ).
      t360 = t2->filename.
      DATA t362 TYPE REF TO zcl_lnt_any_type.
      DATA t363 TYPE REF TO zcl_lnt_abstract_type_data.
      t362 = zcl_lnt_any_type=>get_db65( i_input_967e = t363 ).
      DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t367.
      t367->load( ).
      APPEND |form_parameter| TO t367->items.
      t367->save( ).
      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t360 i_type_9913 = t362 i_meta = t367 i_value = t373 ).
      RETURN.
    ENDIF.
    DATA t374 TYPE REF TO zcl_lnt_abstract_type.
    DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t374 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->parse_type( i_node = t1 i_qualified_name = t379 ).
    DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t384 TYPE REF TO zcl_lnt_expression_node.
    DATA(t387) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t384 = t1->find_first_expression( i_type_9913 = t387 ).
    DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t384 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t392) = VALUE string( ).
      t392 = t384->concat_tokens( ).
      DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t395->has = abap_true.
      t395->value = t392.
      t388 = t395.
    ENDIF.
    t382 = t388.
    DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t397) = VALUE abap_bool( ).
    IF t382 IS INITIAL.
      t397 = abap_true.
    ELSEIF t382->has = abap_false.
      t397 = abap_true.
    ENDIF.
    IF t397 = abap_true.
    ELSE.
      DATA(t400) = VALUE string( ).
      DATA(t401) = VALUE string( ).
      t401 = t382->value.
      DATA(t403) = strlen( t401 ).
      t400 = t401.
      IF t400 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t400 TO UPPER CASE.
      ELSE.
        t400 = zlnt_runtime_uppe_91169605024d=>full( t400 ).
      ENDIF.
      DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t404->has = abap_true.
      t404->value = t400.
      t396 = t404.
    ENDIF.
    t380 = t396.
    DATA(t406) = VALUE abap_bool( ).
    DATA(t407) = VALUE abap_bool( ).
    DATA t409 TYPE REF TO zcl_lnt_expression_node.
    DATA(t411) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    t409 = t1->find_first_expression( i_type_9913 = t411 ).
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t407 = xsdbool( xsdbool( t409 IS INITIAL ) = abap_false ).
    t406 = t407.
    IF t407 = abap_false.
      DATA t419 TYPE REF TO zcl_lnt_expression_node.
      DATA(t421) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
      t419 = t1->find_first_expression( i_type_9913 = t421 ).
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t406 = xsdbool( xsdbool( t419 IS INITIAL ) = abap_false ).
    ENDIF.
    IF xsdbool( t406 = abap_false ) = abap_true.
      DATA(t430) = VALUE abap_bool( ).
      DATA(t431) = VALUE abap_bool( ).
      DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t436) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t436->has = abap_true.
      t436->value = |C|.
      t433 = t436.
      DATA(t438) = VALUE abap_bool( ).
      DATA(t439) = VALUE abap_bool( ).
      IF t380 IS BOUND.
        t438 = t380->has.
      ENDIF.
      IF t433 IS BOUND.
        t439 = t433->has.
      ENDIF.
      IF t438 = t439.
        IF t438 = abap_false.
          t431 = abap_true.
        ELSEIF t380->value = t433->value.
          t431 = abap_true.
        ENDIF.
      ENDIF.
      t430 = t431.
      IF t431 = abap_true.
        DATA(t441) = t374.
        t430 = xsdbool( t441 IS BOUND AND t441 IS INSTANCE OF zcl_lnt_character_type ).
      ENDIF.
      IF t430 = abap_true.
        t374 = CAST zcl_lnt_c_generic_type( zcl_lnt_c_generic_type=>get_db65( ) ).
      ELSE.
        DATA(t443) = VALUE abap_bool( ).
        DATA(t444) = VALUE abap_bool( ).
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t449) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t449->has = abap_true.
        t449->value = |X|.
        t446 = t449.
        DATA(t451) = VALUE abap_bool( ).
        DATA(t452) = VALUE abap_bool( ).
        IF t380 IS BOUND.
          t451 = t380->has.
        ENDIF.
        IF t446 IS BOUND.
          t452 = t446->has.
        ENDIF.
        IF t451 = t452.
          IF t451 = abap_false.
            t444 = abap_true.
          ELSEIF t380->value = t446->value.
            t444 = abap_true.
          ENDIF.
        ENDIF.
        t443 = t444.
        IF t444 = abap_true.
          DATA(t454) = t374.
          t443 = xsdbool( t454 IS BOUND AND t454 IS INSTANCE OF zcl_lnt_hex_type ).
        ENDIF.
        IF t443 = abap_true.
          t374 = CAST zcl_lnt_x_generic_type( zcl_lnt_x_generic_type=>get_db65( ) ).
        ELSE.
          DATA(t456) = VALUE abap_bool( ).
          DATA(t457) = VALUE abap_bool( ).
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t462) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t462->has = abap_true.
          t462->value = |P|.
          t459 = t462.
          DATA(t464) = VALUE abap_bool( ).
          DATA(t465) = VALUE abap_bool( ).
          IF t380 IS BOUND.
            t464 = t380->has.
          ENDIF.
          IF t459 IS BOUND.
            t465 = t459->has.
          ENDIF.
          IF t464 = t465.
            IF t464 = abap_false.
              t457 = abap_true.
            ELSEIF t380->value = t459->value.
              t457 = abap_true.
            ENDIF.
          ENDIF.
          t456 = t457.
          IF t457 = abap_true.
            DATA(t467) = t374.
            t456 = xsdbool( t467 IS BOUND AND t467 IS INSTANCE OF zcl_lnt_packed_type ).
          ENDIF.
          IF t456 = abap_true.
            t374 = CAST zcl_lnt_p_generic_type( zcl_lnt_p_generic_type=>get_db65( ) ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t469) = VALUE abap_bool( ).
    DATA(t470) = VALUE abap_bool( ).
    t470 = xsdbool( t23 IS BOUND ).
    t469 = t470.
    IF t470 = abap_true.
      t469 = xsdbool( t374 IS BOUND ).
    ENDIF.
    IF t469 = abap_true.
      DATA(t476) = VALUE string( ).
      t476 = t2->filename.
      DATA t478 TYPE REF TO zcl_lnt_abstract_type.
      t478 = t374.
      DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t483.
      t483->load( ).
      APPEND |form_parameter| TO t483->items.
      t483->save( ).
      DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t476 i_type_9913 = t478 i_meta = t483 i_value = t489 ).
      RETURN.
    ENDIF.
    IF xsdbool( t23 IS BOUND ) = abap_true.
      DATA(t494) = VALUE string( ).
      t494 = t2->filename.
      DATA t496 TYPE REF TO zcl_lnt_unknown_type.
      DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t496 = NEW zcl_lnt_unknown_type( i_error = |FormParam, todo| i_qualified_name = t498 ).
      DATA t502 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t502.
      t502->load( ).
      APPEND |form_parameter| TO t502->items.
      t502->save( ).
      DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t494 i_type_9913 = t496 i_meta = t502 i_value = t508 ).
      RETURN.
    ENDIF.
    DATA t509 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    DATA t510 TYPE REF TO zcx_lnt_assert_error.
    DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t514->has = abap_true.
    t514->value = |FormParam, unexpected node|.
    t510 = NEW zcx_lnt_assert_error( i_message_26cb = t514 ).
    t509 = NEW #( ).
    t509->payload = t510.
    CLEAR t509->source_value.
    DATA t516 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t517 TYPE REF TO object.
    t517 = t510.
    TRY.
        t509->source_value ?= t517.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t509->source_value IS NOT BOUND.
      TRY.
          t516 ?= t510.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t516 IS BOUND.
        t509->source_value = t516->source( ).
      ENDIF.
      IF t509->source_value IS NOT BOUND.
        CREATE OBJECT t509->source_value.
        t509->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t509->source_value->oval = t510.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t509.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d808_902ac2ef73c2.
  ENDMETHOD.
ENDCLASS.
