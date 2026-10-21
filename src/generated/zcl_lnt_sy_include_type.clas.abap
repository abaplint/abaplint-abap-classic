* TS: src/abap/5_syntax/statements/include_type.ts:10:1 IncludeType
CLASS zcl_lnt_sy_include_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_include_type IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t5 = t1->find_first_expression( i_type_9913 = t8 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t17 TYPE REF TO zcx_lnt_assert_error.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = |IncludeType, unexpected node structure|.
      t17 = NEW zcx_lnt_assert_error( i_message_26cb = t21 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t17.
      TRY.
          t16->source_value ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16->source_value IS NOT BOUND.
        TRY.
            t23 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t16->source_value = t23->source( ).
        ENDIF.
        IF t16->source_value IS NOT BOUND.
          CREATE OBJECT t16->source_value.
          t16->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->source_value->oval = t17.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    t25 = t5->get_first_token( ).
    DATA(t29) = VALUE string( ).
    t29 = t25->str.
    DATA(t35) = VALUE abap_bool( ).
    DATA t38 TYPE REF TO zcl_lnt_abstract_token.
    t38 = t1->find_direct_token_by_text( i_text = |STRUCTURE| ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t35 = xsdbool( xsdbool( t38 IS INITIAL ) = abap_false ).
    DATA t46 TYPE REF TO zcl_lnt_abstract_type.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t46 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->parse_type( i_node = t5 i_qualified_name = t52 ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = t46.
    t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_void_type ).
    t54 = t55.
    IF t55 = abap_true.
      t54 = t35.
    ENDIF.
    t53 = t54.
    IF t54 = abap_false.
      DATA(t59) = t46.
      t53 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_unknown_type ).
    ENDIF.
    IF t53 = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t62 TYPE REF TO zcl_lnt_current_scope.
      t62 = t2->scope.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t69->has = abap_true.
      t69->value = t29.
      t65 = t69.
      DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t73 = t65.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t77) = VALUE abap_bool( ).
      IF t73 IS INITIAL.
        t77 = abap_true.
      ELSEIF t73->has = abap_false.
        t77 = abap_true.
      ENDIF.
      IF t77 = abap_true.
      ELSE.
        DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t83 = t62->current.
        DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t83 IS INITIAL ) = abap_true.
        ELSE.
          DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t91 = t83.
          DATA(t93) = VALUE string( ).
          t93 = t65->value.
          t86 = t91->find_variable( i_name = t93 ).
        ENDIF.
        t81 = t86.
        DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t81 IS BOUND ) = abap_true.
          t95 = t81.
        ELSE.
          DATA(t107) = VALUE string( ).
          t107 = t65->value.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t107.
          t95 = t62->find_type_pool_constant( i_name = t109 ).
        ENDIF.
        t71 = t95.
      ENDIF.
      t60 = t71.
      IF xsdbool( t60 IS BOUND ) = abap_true.
        DATA t113 TYPE REF TO zcl_lnt_current_scope.
        t113 = t2->scope.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        t115 = t25.
        DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
        t119 = t60.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t121.
        t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t121->sval = |Read From|.
        DATA(t123) = VALUE string( ).
        t123 = t2->filename.
        DATA t125 TYPE REF TO zcl_lnt_ireference_extras.
        t113->add_reference( i_usage = t115 i_referencing = t119 i_type_9913 = t121 i_filename = t123 i_extra = t125 ).
        t46 = t60->type_cba0.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t137 TYPE REF TO zcl_lnt_expression_node.
    t137 = t1->find_expression_after_token( i_text = |AS| ).
    DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t137 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t145) = VALUE string( ).
      t145 = t137->concat_tokens( ).
      DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t148->has = abap_true.
      t148->value = t145.
      t141 = t148.
    ENDIF.
    t135 = t141.
    DATA(t149) = VALUE abap_bool( ).
    DATA(t150) = VALUE abap_bool( ).
    IF t135 IS BOUND.
      IF t135->has = abap_true.
        t150 = xsdbool( strlen( t135->value ) > 0 ).
      ENDIF.
    ENDIF.
    t149 = t150.
    IF t150 = abap_true.
      DATA(t153) = t46.
      t149 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_structure_type ).
    ENDIF.
    IF t149 = abap_true.
      DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t158 TYPE REF TO zcl_lnt_structure_type.
      t158 ?= t46.
      t156 = t158->components.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t163.
      DATA t166 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t167) = VALUE string( ).
      t167 = t135->value.
      DATA t170 TYPE REF TO zcl_lnt_abstract_type.
      DATA t171 TYPE REF TO zcl_lnt_structure_type.
      t171 ?= t46.
      t170 = t171.
      DATA(t177) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t177->has = abap_true.
      t177->value = abap_true.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t166 = NEW zcl_lnt_istructure_component( i_name = t167 i_type_9913 = t170 i_as_include = t177 i_suffix = t179 ).
      CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
      t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t181 ).
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t182 ).
      ENDIF.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `asInclude` p1 = t183 ).
      ENDIF.
      CREATE OBJECT t166->zlnt_json_ownkeys_70e5fd461788.
      t166->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t185 ).
      DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t187 ).
      ENDIF.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |asInclude| p1 = t189 ).
      ENDIF.
      t163->load( ).
      APPEND t166 TO t163->items.
      t163->save( ).
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t46 = NEW zcl_lnt_structure_type( i_components = t156->concat( p0 = t163 ) i_qualified_name = t191 i_ddic_name = t192 i_description = t193 ).
    ELSE.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = VALUE abap_bool( ).
      DATA(t196) = t46.
      t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t194 = t195.
      IF t195 = abap_true.
        t194 = t35.
      ENDIF.
      IF t194 = abap_true.
        DATA t202 TYPE REF TO zcl_lnt_ty_table_type.
        t202 ?= t46.
        t46 = t202->row_type.
      ENDIF.
    ENDIF.
    DATA(t208) = t46.
    IF xsdbool( t208 IS BOUND AND t208 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t210 TYPE REF TO zcl_lnt_void_type.
      t210 ?= t46.
      IF t210 IS BOUND.
        DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t213 TYPE REF TO object.
        t213 = t210.
        TRY.
            t209 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t209 IS NOT BOUND.
          TRY.
              t212 ?= t210.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t212 IS BOUND.
            t209 = t212->source( ).
          ENDIF.
          IF t209 IS NOT BOUND.
            CREATE OBJECT t209.
            t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t209->oval = t210.
          ENDIF.
        ENDIF.
      ENDIF.
      result = t209.
      RETURN.
    ENDIF.
    DATA(t215) = t46.
    IF xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t217 TYPE REF TO zcl_lnt_unknown_type.
      t217 ?= t46.
      IF t217 IS BOUND.
        DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t220 TYPE REF TO object.
        t220 = t217.
        TRY.
            t216 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS NOT BOUND.
          TRY.
              t219 ?= t217.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t219 IS BOUND.
            t216 = t219->source( ).
          ENDIF.
          IF t216 IS NOT BOUND.
            CREATE OBJECT t216.
            t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t216->oval = t217.
          ENDIF.
        ENDIF.
      ENDIF.
      result = t216.
      RETURN.
    ENDIF.

    DATA(t223) = t46.
    IF xsdbool( xsdbool( t223 IS BOUND AND t223 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
      DATA(t224) = VALUE string( ).
      DATA(t226) = |not structured, |.
      DATA(t228) = strlen( t226 ).
      t224 = |{ t226 }{ t29 }|.
      DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t229 = t2->issues.
      DATA t231 TYPE REF TO zcl_lnt_issue.
      DATA t237 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t231 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t5->get_first_token( ) i_message_26cb = t224 i_fix = t237 ).
      t229->load( ).
      APPEND t231 TO t229->items.
      t229->save( ).
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t239 TYPE REF TO zcl_lnt_void_type.
      DATA(t242) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t243->has = abap_true.
      t243->value = t242.
      DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t239 = zcl_lnt_void_type=>get_db65( i_voided = t243 i_qualified_name = t245 ).
      IF t239 IS BOUND.
        DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t247 TYPE REF TO object.
        t247 = t239.
        TRY.
            t238 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS NOT BOUND.
          TRY.
              t246 ?= t239.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t246 IS BOUND.
            t238 = t246->source( ).
          ENDIF.
          IF t238 IS NOT BOUND.
            CREATE OBJECT t238.
            t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t238->oval = t239.
          ENDIF.
        ENDIF.
      ENDIF.
      result = t238.
      RETURN.
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t250 TYPE REF TO zcl_lnt_expression_node.
    t250 = t1->find_expression_after_token( i_text = |SUFFIX| ).
    DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t250 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t258) = VALUE string( ).
      t258 = t250->concat_tokens( ).
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = t258.
      t254 = t261.
    ENDIF.
    t248 = t254.
    DATA(t262) = VALUE abap_bool( ).
    DATA(t263) = VALUE abap_bool( ).
    IF t248 IS BOUND.
      IF t248->has = abap_true.
        t263 = xsdbool( strlen( t248->value ) > 0 ).
      ENDIF.
    ENDIF.
    t262 = t263.
    IF t263 = abap_true.
      DATA(t266) = t46.
      t262 = xsdbool( t266 IS BOUND AND t266 IS INSTANCE OF zcl_lnt_structure_type ).
    ENDIF.
    IF t262 = abap_true.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t267.
      DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t271 TYPE REF TO zcl_lnt_structure_type.
      t271 ?= t46.
      t269 = t271->components.
      DATA t275 TYPE REF TO zcl_lnt_istructure_component.
      DATA t276 TYPE REF TO object.
      DATA(t277) = VALUE i( ).
      DO.
        t269->load( ).
        IF t277 >= lines( t269->items ).
          EXIT.
        ENDIF.
        CLEAR t276.
        READ TABLE t269->items INDEX t277 + 1 INTO t276.
        t277 = t277 + 1.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        CLEAR t275.
        IF t276 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t278 ?= t276.
          CLEAR t275.
          IF t278 IS BOUND.
            IF t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t275 ?= t278->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t275 IS NOT BOUND.
              IF t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t279.
                IF t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t279 ?= t278->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t279->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t280) = VALUE string( ).
              DATA t281 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t281.
              DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t282.
              DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t283.
              t275 = NEW zcl_lnt_istructure_component( view_source = t278 i_name = t280 i_type_9913 = t281 i_as_include = t282 i_suffix = t283 ).
            ENDIF.
          ENDIF.
        ELSE.
          t275 ?= t276.
        ENDIF.
        DATA(t284) = VALUE abap_bool( ).
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t287) = VALUE string( ).
        t287 = t275->zlnt_view_read_sr_dae473e680bd( ).
        DATA(t289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t289->has = abap_true.
        t289->value = t287.
        t285 = t289.
        DATA(t292) = VALUE abap_bool( ).
        DATA(t293) = VALUE abap_bool( ).
        IF t285 IS BOUND.
          t292 = t285->has.
        ENDIF.
        IF t135 IS BOUND.
          t293 = t135->has.
        ENDIF.
        IF t292 = t293.
          IF t292 = abap_false.
            t284 = abap_true.
          ELSEIF t285->value = t135->value.
            t284 = abap_true.
          ENDIF.
        ENDIF.
        IF t284 = abap_true.
          DATA t295 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t295.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          TRY.
              t297 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
            CATCH zlnt_exception_js_ebcc2df7d5e4.
              DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t299->has = abap_true.
              t299->value = `Invalid JSON`.
              DATA(t300) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t299 ).
              DATA(t301) = NEW zlnt_exception_cl_30eec8e8805d( ).
              t301->payload = t300.
              DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t302.
              CLEAR t302.
              DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t303.
              DATA t304 TYPE REF TO object.
              CLEAR t304.
              CLEAR t303.
              t304 = t300.
              TRY.
                  t302 ?= t304.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t302 IS NOT BOUND.
                TRY.
                    t303 ?= t300.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t303 IS BOUND.
                  t302 = t303->source( ).
                ENDIF.
                IF t302 IS NOT BOUND.
                  CREATE OBJECT t302.
                  t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t302->oval = t300.
                ENDIF.
              ENDIF.
              t301->source_value = t302.
              RAISE EXCEPTION t301.
          ENDTRY.
          t296 = t297.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          CLEAR t306.
          IF t275 IS BOUND.
            DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t308.
            DATA t309 TYPE REF TO object.
            CLEAR t308.
            t309 = t275.
            TRY.
                t306 ?= t309.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t306 IS NOT BOUND.
              TRY.
                  t308 ?= t275.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t308 IS BOUND.
                t306 = t308->source( ).
              ENDIF.
              IF t306 IS NOT BOUND.
                CREATE OBJECT t306.
                t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t306->oval = t275.
              ENDIF.
            ENDIF.
          ENDIF.
          t305 = t306.
          DATA(t311) = VALUE abap_bool( ).
          IF t305 IS NOT BOUND.
            t311 = abap_true.
          ELSE.
            t311 = xsdbool( t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF xsdbool( t311 = abap_false ) = abap_true.
            DATA t313 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t313.
            t313 = zlnt_runtime_ownk_4497b85e405d=>keys( t305 ).
            DATA(t315) = VALUE string( ).
            t313->dense( ).
            DATA(t316) = VALUE i( ).
            DO.
              t313->load( ).
              IF t316 >= lines( t313->items ).
                EXIT.
              ENDIF.
              CLEAR t315.
              READ TABLE t313->items INDEX t316 + 1 INTO t315.
              IF t313->has( t316 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t316 = t316 + 1.
              t296->put( p0 = t315 p1 = t305->get( p0 = t315 ) ).
            ENDDO.
          ENDIF.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          DATA(t325) = VALUE string( ).
          t325 = t248->value.
          CLEAR t324.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t324->sval = t325.
          t296->put( p0 = |suffix| p1 = t324 ).
          DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t329.
          DATA t330 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t330 = t275->zlnt_view_read_sr_36a7cafeb178( ).
          CLEAR t329.
          IF t330 IS BOUND AND t330->has = abap_true.
            CLEAR t329.
            CREATE OBJECT t329.
            t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
            t329->bval = t330->value.
          ENDIF.
          t296->put( p0 = |asInclude| p1 = t329 ).
          DATA t332 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t332.
          CLEAR t332.
          IF t296 IS BOUND.
            IF t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t332 ?= t296->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t332 IS NOT BOUND.
              IF t296->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t296->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t296->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t296->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t334.
                IF t296->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t334 ?= t296->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t334->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t335) = VALUE string( ).
              DATA t336 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t336.
              DATA t337 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t337.
              DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t338.
              t332 = NEW zcl_lnt_istructure_component( view_source = t296 i_name = t335 i_type_9913 = t336 i_as_include = t337 i_suffix = t338 ).
            ENDIF.
          ENDIF.
          t295 = t332.
          t267->load( ).
          APPEND t295 TO t267->items.
          t267->save( ).
          CONTINUE.
        ENDIF.
        DATA t340 TYPE REF TO zcl_lnt_istructure_component.
        DATA(t341) = VALUE string( ).
        DATA(t343) = VALUE string( ).
        t343 = t275->zlnt_view_read_sr_dae473e680bd( ).
        DATA(t345) = VALUE string( ).
        t345 = t248->value.
        DATA(t347) = strlen( t343 ).
        t341 = |{ t343 }{ t345 }|.
        DATA t348 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t348.
        t348 = t275->zlnt_view_read_sr_455340cd1e80( ).
        DATA t351 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t351.
        CLEAR t351.
        DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t353.
        CLEAR t353.
        t340 = NEW zcl_lnt_istructure_component( i_name = t341 i_type_9913 = t348 i_as_include = t351 i_suffix = t353 ).
        CREATE OBJECT t340->zlnt_view_ownkeys_b0e8086400eb.
        t340->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t355 ).
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t356 ).
        ENDIF.
        CREATE OBJECT t340->zlnt_json_ownkeys_70e5fd461788.
        t340->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t358 ).
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t360 ).
        ENDIF.
        t267->load( ).
        APPEND t340 TO t267->items.
        t267->save( ).
      ENDDO.
      DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t46 = NEW zcl_lnt_structure_type( i_components = t267 i_qualified_name = t363 i_ddic_name = t364 i_description = t365 ).
    ENDIF.
    DATA(t366) = VALUE abap_bool( ).
    t366 = xsdbool( t46 IS BOUND ).
    DATA(t368) = VALUE abap_bool( ).
    DATA t369 TYPE REF TO zcl_lnt_abstract_type.
    t369 = t46.
    t368 = abap_false.
    DATA(t372) = VALUE abap_bool( ).
    DATA(t373) = VALUE abap_bool( ).
    t373 = xsdbool( t46 IS BOUND ).
    t372 = t373.
    IF t373 = abap_true.
      DATA t376 TYPE REF TO zcl_lnt_abstract_type.
      t376 = t46.
      t372 = xsdbool( t376 IS BOUND AND t376 IS INSTANCE OF zcl_lnt_structure_type ).
    ENDIF.
    IF t372 = abap_true.
      DATA(t378) = VALUE i( ).
      DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t381 TYPE REF TO zcl_lnt_structure_type.
      t381 ?= t46.
      t379 = t381->components.
      DATA t385 TYPE REF TO zcl_lnt_istructure_component.
      DATA t386 TYPE REF TO object.
      DATA(t387) = VALUE i( ).
      DO.
        t379->load( ).
        IF t387 >= lines( t379->items ).
          EXIT.
        ENDIF.
        CLEAR t386.
        READ TABLE t379->items INDEX t387 + 1 INTO t386.
        t387 = t387 + 1.
        DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t388.
        CLEAR t385.
        IF t386 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t388 ?= t386.
          CLEAR t385.
          IF t388 IS BOUND.
            IF t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t385 ?= t388->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t385 IS NOT BOUND.
              IF t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t389.
                IF t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t389 ?= t388->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t389->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t390) = VALUE string( ).
              DATA t391 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t391.
              DATA t392 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t392.
              DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t393.
              t385 = NEW zcl_lnt_istructure_component( view_source = t388 i_name = t390 i_type_9913 = t391 i_as_include = t392 i_suffix = t393 ).
            ENDIF.
          ENDIF.
        ELSE.
          t385 ?= t386.
        ENDIF.
        t3->load( ).
        APPEND t385 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t378 = lines( t3->items ).
    ELSE.
      DATA(t398) = VALUE abap_bool( ).
      DATA(t399) = VALUE abap_bool( ).
      t399 = xsdbool( t46 IS BOUND ).
      t398 = t399.
      IF t399 = abap_true.
        DATA t402 TYPE REF TO zcl_lnt_abstract_type.
        t402 = t46.
        t398 = xsdbool( t402 IS BOUND AND t402 IS INSTANCE OF zcl_lnt_void_type ).
      ENDIF.
      IF t398 = abap_true.
        DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t405 TYPE REF TO zcl_lnt_void_type.
        t405 ?= t46.
        IF t405 IS BOUND.
          DATA t407 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t408 TYPE REF TO object.
          t408 = t405.
          TRY.
              t404 ?= t408.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t404 IS NOT BOUND.
            TRY.
                t407 ?= t405.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t407 IS BOUND.
              t404 = t407->source( ).
            ENDIF.
            IF t404 IS NOT BOUND.
              CREATE OBJECT t404.
              t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t404->oval = t405.
            ENDIF.
          ENDIF.
        ENDIF.
        result = t404.
        RETURN.
      ELSE.
        DATA t416 TYPE REF TO zcl_lnt_ddic.
        DATA t417 TYPE REF TO zif_lnt_registry.
        t417 = t2->scope->reg.
        t416 = NEW zcl_lnt_ddic( i_reg_f149 = t417 ).
        DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t423->has = abap_true.
        t423->value = t29.
        t419 = t423.
        DATA(t425) = VALUE abap_bool( ).
        DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t427 = t419.
        DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t431) = VALUE abap_bool( ).
        IF t427 IS INITIAL.
          t431 = abap_true.
        ELSEIF t427->has = abap_false.
          t431 = abap_true.
        ENDIF.
        IF t431 = abap_true.
          t425 = abap_true.
        ELSE.
          DATA t435 TYPE REF TO zif_lnt_registry.
          t435 = t416->reg.
          DATA(t437) = VALUE string( ).
          t437 = t419->value.
          t425 = t435->in_error_namespace( i_name = t437 ).
        ENDIF.
        IF xsdbool( t425 = abap_false ) = abap_true.
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t441 TYPE REF TO zcl_lnt_void_type.
          DATA(t445) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t445->has = abap_true.
          t445->value = t29.
          DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t441 = zcl_lnt_void_type=>get_db65( i_voided = t445 i_qualified_name = t447 ).
          IF t441 IS BOUND.
            DATA t448 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t449 TYPE REF TO object.
            t449 = t441.
            TRY.
                t440 ?= t449.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t440 IS NOT BOUND.
              TRY.
                  t448 ?= t441.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t448 IS BOUND.
                t440 = t448->source( ).
              ENDIF.
              IF t440 IS NOT BOUND.
                CREATE OBJECT t440.
                t440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t440->oval = t441.
              ENDIF.
            ENDIF.
          ENDIF.
          result = t440.
          RETURN.
        ELSE.
          DATA(t450) = VALUE string( ).
          DATA(t452) = VALUE string( ).
          DATA(t453) = |IncludeType, type not found "|.
          DATA(t454) = VALUE string( ).
          t454 = t5->concat_tokens( ).
          DATA(t457) = strlen( t453 ).
          t452 = |{ t453 }{ t454 }|.
          DATA(t459) = strlen( t452 ).
          t450 = |{ t452 }{ |"| }|.
          DATA t460 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t460 = t2->issues.
          DATA t462 TYPE REF TO zcl_lnt_issue.
          DATA t467 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t462 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t450 i_fix = t467 ).
          t460->load( ).
          APPEND t462 TO t460->items.
          t460->save( ).
          DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t469 TYPE REF TO zcl_lnt_void_type.
          DATA(t472) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t473) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t473->has = abap_true.
          t473->value = t472.
          DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t469 = zcl_lnt_void_type=>get_db65( i_voided = t473 i_qualified_name = t475 ).
          IF t469 IS BOUND.
            DATA t476 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t477 TYPE REF TO object.
            t477 = t469.
            TRY.
                t468 ?= t477.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t468 IS NOT BOUND.
              TRY.
                  t476 ?= t469.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t476 IS BOUND.
                t468 = t476->source( ).
              ENDIF.
              IF t468 IS NOT BOUND.
                CREATE OBJECT t468.
                t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t468->oval = t469.
              ENDIF.
            ENDIF.
          ENDIF.
          result = t468.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3 IS BOUND.
      DATA t480 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t481 TYPE REF TO object.
      t481 = t3.
      TRY.
          t478 ?= t481.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t478 IS NOT BOUND.
        TRY.
            t480 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t480 IS BOUND.
          t478 = t480->source( ).
        ENDIF.
        IF t478 IS NOT BOUND.
          CREATE OBJECT t478.
          t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t478->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t478.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d918_2412a1956230.
  ENDMETHOD.
ENDCLASS.
