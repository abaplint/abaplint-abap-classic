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
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d187_ac8768b55725.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t3 IS INITIAL ).
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t15 TYPE REF TO zcx_lnt_assert_error.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t18) = |FormParam, could not find FormParamName|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
      t15 = NEW zcx_lnt_assert_error( i_message_26cb = t16 ).
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
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    t25 = t3.
    t24 = t25->get_first_token( ).
    t23 = t24.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE i( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zcl_lnt_abstract_node.
    t31 = t3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = t31->children.
    t30 = t34.
    t29 ?= t30.
    t29->load( ).
    t28 = lines( t29->items ).
    DATA(t36) = 1.
    t27 = xsdbool( t28 > t36 ).
    IF t27 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t38 TYPE REF TO zcl_lnt_position.
      DATA t41 TYPE REF TO zcl_lnt_position.
      t41 = t23->start.
      t38 = t41.
      DATA(t43) = VALUE string( ).
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      t44 = t3.
      t43 = t44->concat_tokens( ).
      t37 = NEW zcl_lnt_lx_identifier( i_start = t38 i_str = t43 ).
      t23 = t37.
    ENDIF.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t50) = |STRUCTURE|.
    t48 = t1->find_direct_token_by_text( i_text = t50 ).
    t47 = xsdbool( t48 IS BOUND ).
    t46 = t47.
    IF t47 = abap_true.
      DATA(t51) = VALUE abap_bool( ).
      t51 = xsdbool( t23 IS BOUND ).
      t46 = t51.
    ENDIF.
    IF t46 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t58 = t1->find_direct_expression( i_type_9913 = t60 ).
      t57 = t58.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t62) = xsdbool( t57 IS INITIAL ).
      IF t62 = abap_true.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        t66 = t57.
        t65 = t66->get_first_token( ).
        t61 = t65.
      ENDIF.
      t55 = t61.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t69) = xsdbool( t55 IS INITIAL ).
      IF t69 = abap_true.
      ELSE.
        DATA(t72) = VALUE string( ).
        DATA(t76) = VALUE string( ).
        t76 = t55->str.
        t72 = t76.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t72.
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
        DATA(t97) = VALUE abap_bool( ).
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t98 = t89.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t102) = VALUE abap_bool( ).
        IF t98 IS INITIAL.
          t102 = abap_true.
        ELSEIF t98->has = abap_false.
          t102 = abap_true.
        ENDIF.
        t97 = t102.
        IF t97 = abap_true.
        ELSE.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t107 = t87->current.
          t106 = t107.
          DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t110) = xsdbool( t106 IS INITIAL ).
          IF t110 = abap_true.
          ELSE.
            DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t114 = t106.
            DATA(t116) = VALUE string( ).
            t116 = t89->value.
            t113 = t114->find_type( i_name = t116 ).
            t109 = t113.
          ENDIF.
          t96 = t109.
        ENDIF.
        t84 = t96.
        DATA t118 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t119) = xsdbool( t84 IS INITIAL ).
        IF t119 = abap_true.
        ELSE.
          DATA t126 TYPE REF TO zcl_lnt_abstract_type.
          t126 = t84->type_cba0.
          t118 = t126.
        ENDIF.
        t79 = t118.
        DATA(t128) = VALUE abap_bool( ).
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t128 = xsdbool( t79 IS INITIAL ).
        IF t128 = abap_true.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          DATA t136 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t137 TYPE REF TO zcl_lnt_ddic.
          DATA t140 TYPE REF TO zcl_lnt_current_scope.
          t140 = t2->scope.
          DATA t142 TYPE REF TO zcl_lnt_ddic.
          DATA t143 TYPE REF TO zif_lnt_registry.
          t143 = t140->reg.
          t142 = NEW zcl_lnt_ddic( i_reg_f149 = t143 ).
          t137 = t142.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t148) = VALUE string( ).
          t148 = t53->value.
          DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t150->has = abap_true.
          t150->value = t148.
          t145 = t150.
          DATA t152 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t153) = VALUE abap_bool( ).
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t154 = t145.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t158) = VALUE abap_bool( ).
          IF t154 IS INITIAL.
            t158 = abap_true.
          ELSEIF t154->has = abap_false.
            t158 = abap_true.
          ENDIF.
          t153 = t158.
          IF t153 = abap_true.
            DATA t160 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t161 TYPE REF TO zcl_lnt_abstract_type.
            DATA t162 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t163) = |undefined, lookupTableOrView|.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t162 = NEW zcl_lnt_unknown_type( i_error = t163 i_qualified_name = t164 ).
            t161 = t162.
            DATA t165 TYPE REF TO zif_lnt_object.
            t160 = NEW zcl_lnt_ilookup_result( i_type_9913 = t161 i_object_19cd = t165 ).
            CREATE OBJECT t160->zlnt_view_ownkeys_b0e8086400eb.
            t160->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t167 ).
            CREATE OBJECT t160->zlnt_json_ownkeys_70e5fd461788.
            t160->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t168) = |type|.
            DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
            t152 = t160.
          ELSE.
            DATA t171 TYPE REF TO zcl_lnt_table.
            DATA t172 TYPE REF TO zcl_lnt_table.
            DATA t173 TYPE REF TO zif_lnt_object.
            DATA t174 TYPE REF TO zif_lnt_registry.
            t174 = t137->reg.
            DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t178) = |TABL|.
            DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t179->has = abap_true.
            t179->value = t178.
            t176 = t179.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t183) = VALUE string( ).
            t183 = t145->value.
            DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t185->has = abap_true.
            t185->value = t183.
            t181 = t185.
            t173 = t174->get_object( i_type_9913 = t176 i_name = t181 ).
            DATA t187 TYPE REF TO object.
            t187 = t173.
            t172 ?= t187.
            t171 = t172.
            DATA t188 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t189) = VALUE abap_bool( ).
            t189 = xsdbool( t171 IS BOUND ).
            IF t189 = abap_true.
              DATA t191 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t192 TYPE REF TO zcl_lnt_abstract_type.
              DATA t193 TYPE REF TO zcl_lnt_abstract_type.
              DATA t194 TYPE REF TO zcl_lnt_table.
              t194 = t171.
              DATA t196 TYPE REF TO zif_lnt_registry.
              t196 = t137->reg.
              DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t193 = t194->parse_type( i_reg_f149 = t196 i_data_element = t198 i_description = t199 ).
              t192 = t193.
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
              DATA(t205) = |type|.
              DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
              DATA(t207) = |object|.
              DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
              ENDIF.
              t188 = t191.
            ELSE.
              DATA t210 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t211 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t215) = VALUE string( ).
              t215 = t145->value.
              DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t217->has = abap_true.
              t217->value = t215.
              t213 = t217.
              t211 = t137->lookup_ddls( i_name = t213 ).
              t210 = t211.
              DATA t219 TYPE REF TO zcl_lnt_ilookup_result.
              DATA(t220) = VALUE abap_bool( ).
              t220 = xsdbool( t210 IS BOUND ).
              IF t220 = abap_true.
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
                DATA(t233) = VALUE abap_bool( ).
                DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t234 = t225.
                DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t238) = VALUE abap_bool( ).
                IF t234 IS INITIAL.
                  t238 = abap_true.
                ELSEIF t234->has = abap_false.
                  t238 = abap_true.
                ENDIF.
                t233 = t238.
                IF t233 = abap_true.
                  DATA t240 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t241 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t242 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t243) = |undefined, lookupView|.
                  DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t242 = NEW zcl_lnt_unknown_type( i_error = t243 i_qualified_name = t244 ).
                  t241 = t242.
                  DATA t245 TYPE REF TO zif_lnt_object.
                  t240 = NEW zcl_lnt_ilookup_result( i_type_9913 = t241 i_object_19cd = t245 ).
                  CREATE OBJECT t240->zlnt_view_ownkeys_b0e8086400eb.
                  t240->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t247 ).
                  CREATE OBJECT t240->zlnt_json_ownkeys_70e5fd461788.
                  t240->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t248) = |type|.
                  DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
                  t232 = t240.
                ELSE.
                  DATA t251 TYPE REF TO zcl_lnt_table.
                  DATA t252 TYPE REF TO zcl_lnt_table.
                  DATA t253 TYPE REF TO zif_lnt_object.
                  DATA t254 TYPE REF TO zif_lnt_registry.
                  t254 = t137->reg.
                  DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t258) = |VIEW|.
                  DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t259->has = abap_true.
                  t259->value = t258.
                  t256 = t259.
                  DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t263) = VALUE string( ).
                  t263 = t225->value.
                  DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t265->has = abap_true.
                  t265->value = t263.
                  t261 = t265.
                  t253 = t254->get_object( i_type_9913 = t256 i_name = t261 ).
                  DATA t267 TYPE REF TO object.
                  t267 = t253.
                  t252 ?= t267.
                  t251 = t252.
                  DATA t268 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA(t269) = VALUE abap_bool( ).
                  t269 = xsdbool( t251 IS BOUND ).
                  IF t269 = abap_true.
                    DATA t271 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t272 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t273 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t274 TYPE REF TO zcl_lnt_table.
                    t274 = t251.
                    DATA t276 TYPE REF TO zif_lnt_registry.
                    t276 = t137->reg.
                    DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t273 = t274->parse_type( i_reg_f149 = t276 i_data_element = t278 i_description = t279 ).
                    t272 = t273.
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
                    DATA(t285) = |type|.
                    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
                    DATA(t287) = |object|.
                    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
                    ENDIF.
                    t268 = t271.
                  ELSE.
                    DATA t289 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA(t290) = VALUE abap_bool( ).
                    DATA t291 TYPE REF TO zif_lnt_registry.
                    t291 = t137->reg.
                    DATA(t293) = VALUE string( ).
                    t293 = t225->value.
                    t290 = t291->in_error_namespace( i_name = t293 ).
                    IF t290 = abap_true.
                      DATA t295 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t296 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t297 TYPE REF TO zcl_lnt_unknown_type.
                      DATA(t298) = VALUE string( ).
                      DATA(t299) = VALUE string( ).
                      t299 = t225->value.
                      DATA(t301) = | not found, lookupView|.
                      DATA(t302) = strlen( t299 ).
                      t298 = |{ t299 }{ t301 }|.
                      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t297 = NEW zcl_lnt_unknown_type( i_error = t298 i_qualified_name = t303 ).
                      t296 = t297.
                      DATA t304 TYPE REF TO zif_lnt_object.
                      t295 = NEW zcl_lnt_ilookup_result( i_type_9913 = t296 i_object_19cd = t304 ).
                      CREATE OBJECT t295->zlnt_view_ownkeys_b0e8086400eb.
                      t295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t306 ).
                      CREATE OBJECT t295->zlnt_json_ownkeys_70e5fd461788.
                      t295->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t307) = |type|.
                      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
                      t289 = t295.
                    ELSE.
                      DATA t309 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t310 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t311 TYPE REF TO zcl_lnt_void_type.
                      DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t314) = VALUE string( ).
                      t314 = t225->value.
                      DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t316->has = abap_true.
                      t316->value = t314.
                      t312 = t316.
                      DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t311 = zcl_lnt_void_type=>get_db65( i_voided = t312 i_qualified_name = t318 ).
                      t310 = t311.
                      DATA t319 TYPE REF TO zif_lnt_object.
                      t309 = NEW zcl_lnt_ilookup_result( i_type_9913 = t310 i_object_19cd = t319 ).
                      CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
                      t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t321 ).
                      CREATE OBJECT t309->zlnt_json_ownkeys_70e5fd461788.
                      t309->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t322) = |type|.
                      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
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
          t136 = t152.
          t135 = t136->zlnt_view_read_sr_9be58e2d4893( ).
          t79 = t135.
        ENDIF.
      ELSE.
        DATA t324 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t325) = |todo, FORM STRUCTURES typing|.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t324 = NEW zcl_lnt_unknown_type( i_error = t325 i_qualified_name = t326 ).
        t79 = t324.
      ENDIF.
      DATA t327 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t329) = VALUE string( ).
      t329 = t2->filename.
      DATA t331 TYPE REF TO zcl_lnt_abstract_type.
      DATA t333 TYPE REF TO object.
      t333 = t79.
      t331 ?= t333.
      DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t338.
      t337 = t338.
      DATA(t340) = |form_parameter|.
      t337->load( ).
      APPEND t340 TO t337->items.
      t337->save( ).
      DATA(t342) = |form_parameter_structure|.
      t337->load( ).
      APPEND t342 TO t337->items.
      t337->save( ).
      t334 = t337.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t327 = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t329 i_type_9913 = t331 i_meta = t334 i_value = t345 ).
      result = t327.
      RETURN.
    ENDIF.
    DATA(t346) = VALUE abap_bool( ).
    DATA(t347) = VALUE abap_bool( ).
    DATA(t348) = VALUE i( ).
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t351 TYPE REF TO zcl_lnt_abstract_node.
    t351 = t1.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t353 = t351->children.
    t350 = t353.
    t349 ?= t350.
    t349->load( ).
    t348 = lines( t349->items ).
    DATA(t355) = 1.
    t347 = xsdbool( t348 = t355 ).
    t346 = t347.
    IF t347 = abap_true.
      DATA(t356) = VALUE abap_bool( ).
      t356 = xsdbool( t23 IS BOUND ).
      t346 = t356.
    ENDIF.
    IF t346 = abap_true.
      DATA t358 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t360) = VALUE string( ).
      t360 = t2->filename.
      DATA t362 TYPE REF TO zcl_lnt_any_type.
      DATA t363 TYPE REF TO zcl_lnt_abstract_type_data.
      t362 = zcl_lnt_any_type=>get_db65( i_input_967e = t363 ).
      DATA t364 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t368 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t368.
      t367 = t368.
      DATA(t370) = |form_parameter|.
      t367->load( ).
      APPEND t370 TO t367->items.
      t367->save( ).
      t364 = t367.
      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t358 = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t360 i_type_9913 = t362 i_meta = t364 i_value = t373 ).
      result = t358.
      RETURN.
    ENDIF.
    DATA t374 TYPE REF TO zcl_lnt_abstract_type.
    DATA t375 TYPE REF TO zcl_lnt_abstract_type.
    DATA t376 TYPE REF TO zcl_lnt_basic_types.
    t376 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t375 = t376->parse_type( i_node = t1 i_qualified_name = t379 ).
    t374 = t375.
    DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t384 TYPE REF TO zcl_lnt_expression_node.
    DATA t385 TYPE REF TO zcl_lnt_expression_node.
    DATA(t387) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t385 = t1->find_first_expression( i_type_9913 = t387 ).
    t384 = t385.
    DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t389) = xsdbool( t384 IS INITIAL ).
    IF t389 = abap_true.
    ELSE.
      DATA(t392) = VALUE string( ).
      DATA t393 TYPE REF TO zcl_lnt_expression_node.
      t393 = t384.
      t392 = t393->concat_tokens( ).
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
    DATA(t405) = VALUE abap_bool( ).
    DATA(t406) = VALUE abap_bool( ).
    DATA(t407) = VALUE abap_bool( ).
    DATA t409 TYPE REF TO zcl_lnt_expression_node.
    DATA(t411) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    t409 = t1->find_first_expression( i_type_9913 = t411 ).
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t414) = VALUE abap_bool( ).
    DATA(t415) = xsdbool( t409 IS INITIAL ).
    t414 = xsdbool( t415 = abap_false ).
    t407 = t414.
    t406 = t407.
    IF t407 = abap_false.
      DATA(t417) = VALUE abap_bool( ).
      DATA t419 TYPE REF TO zcl_lnt_expression_node.
      DATA(t421) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
      t419 = t1->find_first_expression( i_type_9913 = t421 ).
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t424) = VALUE abap_bool( ).
      DATA(t425) = xsdbool( t419 IS INITIAL ).
      t424 = xsdbool( t425 = abap_false ).
      t417 = t424.
      t406 = t417.
    ENDIF.
    t405 = t406.
    DATA(t427) = VALUE abap_bool( ).
    t427 = xsdbool( t405 = abap_false ).
    IF t427 = abap_true.
      DATA(t430) = VALUE abap_bool( ).
      DATA(t431) = VALUE abap_bool( ).
      DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t435) = |C|.
      DATA(t436) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t436->has = abap_true.
      t436->value = t435.
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
        DATA(t440) = VALUE abap_bool( ).
        DATA(t441) = t374.
        t440 = xsdbool( t441 IS BOUND AND t441 IS INSTANCE OF zcl_lnt_character_type ).
        t430 = t440.
      ENDIF.
      IF t430 = abap_true.
        t374 = CAST zcl_lnt_c_generic_type( zcl_lnt_c_generic_type=>get_db65( ) ).
      ELSE.
        DATA(t443) = VALUE abap_bool( ).
        DATA(t444) = VALUE abap_bool( ).
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t448) = |X|.
        DATA(t449) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t449->has = abap_true.
        t449->value = t448.
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
          DATA(t453) = VALUE abap_bool( ).
          DATA(t454) = t374.
          t453 = xsdbool( t454 IS BOUND AND t454 IS INSTANCE OF zcl_lnt_hex_type ).
          t443 = t453.
        ENDIF.
        IF t443 = abap_true.
          t374 = CAST zcl_lnt_x_generic_type( zcl_lnt_x_generic_type=>get_db65( ) ).
        ELSE.
          DATA(t456) = VALUE abap_bool( ).
          DATA(t457) = VALUE abap_bool( ).
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t461) = |P|.
          DATA(t462) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t462->has = abap_true.
          t462->value = t461.
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
            DATA(t466) = VALUE abap_bool( ).
            DATA(t467) = t374.
            t466 = xsdbool( t467 IS BOUND AND t467 IS INSTANCE OF zcl_lnt_packed_type ).
            t456 = t466.
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
      DATA(t472) = VALUE abap_bool( ).
      t472 = xsdbool( t374 IS BOUND ).
      t469 = t472.
    ENDIF.
    IF t469 = abap_true.
      DATA t474 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t476) = VALUE string( ).
      t476 = t2->filename.
      DATA t478 TYPE REF TO zcl_lnt_abstract_type.
      t478 = t374.
      DATA t480 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t484.
      t483 = t484.
      DATA(t486) = |form_parameter|.
      t483->load( ).
      APPEND t486 TO t483->items.
      t483->save( ).
      t480 = t483.
      DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t474 = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t476 i_type_9913 = t478 i_meta = t480 i_value = t489 ).
      result = t474.
      RETURN.
    ENDIF.
    DATA(t490) = VALUE abap_bool( ).
    t490 = xsdbool( t23 IS BOUND ).
    IF t490 = abap_true.
      DATA t492 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t494) = VALUE string( ).
      t494 = t2->filename.
      DATA t496 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t497) = |FormParam, todo|.
      DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t496 = NEW zcl_lnt_unknown_type( i_error = t497 i_qualified_name = t498 ).
      DATA t499 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t502 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t503 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t503.
      t502 = t503.
      DATA(t505) = |form_parameter|.
      t502->load( ).
      APPEND t505 TO t502->items.
      t502->save( ).
      t499 = t502.
      DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t492 = NEW zcl_lnt_typed_identifier( i_token = t23 i_filename = t494 i_type_9913 = t496 i_meta = t499 i_value = t508 ).
      result = t492.
      RETURN.
    ENDIF.
    DATA t509 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    DATA t510 TYPE REF TO zcx_lnt_assert_error.
    DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t513) = |FormParam, unexpected node|.
    DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t514->has = abap_true.
    t514->value = t513.
    t511 = t514.
    t510 = NEW zcx_lnt_assert_error( i_message_26cb = t511 ).
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
