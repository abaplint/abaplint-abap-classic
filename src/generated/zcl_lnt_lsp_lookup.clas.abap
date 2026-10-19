* TS: src/lsp/_lookup.ts:37:1 LSPLookup
CLASS zcl_lnt_lsp_lookup DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS lookup IMPORTING i_cursor TYPE REF TO zcl_lnt_icursor_data i_reg_f149 TYPE REF TO zif_lnt_registry i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_lsp_lookup_result.
    CLASS-METHODS dump_type IMPORTING i_variable TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE string.
    CLASS-METHODS reference_hover IMPORTING i_ref TYPE REF TO zcl_lnt_ireference i_scope TYPE REF TO zif_lnt_spaghetti_scope_node i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE string.
    CLASS-METHODS hover_method IMPORTING i_method TYPE string i_class_def TYPE REF TO zif_lnt_interface_definition RETURNING VALUE(result) TYPE string.
    CLASS-METHODS visibility_to_string IMPORTING i_visibility_5c1f TYPE f RETURNING VALUE(result) TYPE string.
    CLASS-METHODS method_parameters IMPORTING i_method_def_15b7 TYPE REF TO zif_lnt_method_definition RETURNING VALUE(result) TYPE string.
    CLASS-METHODS single_parameter IMPORTING i_p TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE string.
    CLASS-METHODS search_references IMPORTING i_scope TYPE REF TO zif_lnt_spaghetti_scope_node i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS abap_file_result IMPORTING i_abap TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_location.
    CLASS-METHODS find_method_definition IMPORTING i_found TYPE REF TO zcl_lnt_icursor_data i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_fi_identifier.
    CLASS-METHODS find_function_module IMPORTING i_found TYPE REF TO zcl_lnt_icursor_data RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLASS-METHODS find_include IMPORTING i_found TYPE REF TO zcl_lnt_icursor_data i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lsp_lookup IMPLEMENTATION.
  METHOD lookup.
    DATA(t1) = i_cursor.
    DATA(t2) = i_reg_f149.
    DATA(t3) = i_obj_1ed0.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    t5 = zcl_lnt_lsp_lookup=>find_include( i_found = t1 i_reg_f149 = t2 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    t8 = xsdbool( t4 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_location.
      DATA t11 TYPE REF TO zcl_lnt_location.
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      t12 = t4.
      t11 = zcl_lnt_lsp_lookup=>abap_file_result( i_abap = t12 ).
      t10 = t11.
      DATA t16 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t20) = |Include|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t20.
      t17 = t21.
      DATA t23 TYPE REF TO zcl_lnt_location.
      t23 = t10.
      DATA t28 TYPE REF TO zcl_lnt_location.
      t28 = t10.
      DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t35 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t16 = NEW zcl_lnt_lsp_lookup_result( i_hover = t17 i_definition = t23 i_implementation = t28 i_definition_id = t33 i_scope = t35 ).
      CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
      t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t37 ).
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t38 ).
      ENDIF.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t39 ).
      ENDIF.
      CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
      t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t40) = |hover|.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
      DATA(t42) = |definition|.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
      ENDIF.
      DATA(t44) = |implementation|.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
      ENDIF.
      result = t16.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t48 = zcl_lnt_lsp_lookup=>find_function_module( i_found = t1 ).
    t47 = t48.
    DATA(t50) = VALUE abap_bool( ).
    IF t47 IS BOUND.
      IF t47->has = abap_true.
        t50 = xsdbool( strlen( t47->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t50 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t58) = VALUE string( ).
      DATA(t59) = |Function Module |.
      DATA(t60) = VALUE string( ).
      t60 = t47->value.
      DATA(t62) = strlen( t59 ).
      t58 = |{ t59 }{ t60 }|.
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = t58.
      t55 = t63.
      DATA t65 TYPE REF TO zcl_lnt_location.
      DATA t67 TYPE REF TO zcl_lnt_location.
      DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t71 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t54 = NEW zcl_lnt_lsp_lookup_result( i_hover = t55 i_definition = t65 i_implementation = t67 i_definition_id = t69 i_scope = t71 ).
      CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
      t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t73 ).
      CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
      t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t74) = |hover|.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
      result = t54.
      RETURN.
    ENDIF.
    DATA t77 TYPE REF TO zcl_lnt_abap_object.
    t77 = t3.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = VALUE abap_bool( ).
    t80 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ob_program ).
    t79 = t80.
    IF t80 = abap_true.
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zcl_lnt_ob_program.
      DATA t84 TYPE REF TO zcl_lnt_ob_program.
      t84 ?= t3.
      t83 = t84.
      DATA(t86) = VALUE abap_bool( ).
      t83->parse_xml( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA t89 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t90 TYPE REF TO zcl_lnt_shape_d77da4ed.
      t90 = t83->parsed_xml.
      t89 = t90.
      t88 = t89->is_include.
      t86 = t88.
      t82 = t86.
      t79 = t82.
    ENDIF.
    IF t79 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_include_graph.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t93 = NEW zcl_lnt_include_graph( i_reg_f149 = t2 i_severity = t95 i_allow_unused = t96 ).
      DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t102) = VALUE string( ).
      DATA t104 TYPE REF TO zcl_lnt_fi_identifier.
      t104 = t1->identifier.
      DATA(t106) = VALUE string( ).
      t106 = t104->filename.
      t102 = t106.
      DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t108->has = abap_true.
      t108->value = t102.
      t100 = t108.
      t98 = t93->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t100 ).
      t97 = t98.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = VALUE i( ).
      t97->load( ).
      t111 = lines( t97->items ).
      DATA(t113) = 1.
      t110 = xsdbool( t111 = t113 ).
      IF t110 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_abap_object.
        DATA t116 TYPE REF TO zcl_lnt_abap_object.
        DATA t117 TYPE REF TO zif_lnt_object.
        DATA t119 TYPE REF TO zif_lnt_file.
        DATA t120 TYPE REF TO zif_lnt_file.
        DATA(t122) = VALUE string( ).
        IF t97->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t97->load( ).
        CLEAR t122.
        READ TABLE t97->items INDEX 1 INTO t122.
        t120 = t2->get_file_by_name( i_filename = t122 ).
        t119 = t120.
        t117 = t2->find_object_for_file( i_file = t119 ).
        t116 ?= t117.
        t115 = t116.
        DATA t124 TYPE REF TO zcl_lnt_abap_object.
        DATA(t125) = VALUE abap_bool( ).
        t125 = xsdbool( t115 IS BOUND ).
        IF t125 = abap_true.
          t124 = t115.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_ob_program.
          t128 ?= t3.
          t124 = t128.
        ENDIF.
        t77 = t124.
      ENDIF.
    ENDIF.
    DATA t130 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t131 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t132 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t133 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t134 TYPE REF TO zcl_lnt_syntax_logic.
    t134 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t2 i_object_19cd = t77 ).
    t133 = t134->run( ).
    t132 = t133->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t137 TYPE REF TO zcl_lnt_position.
    DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
    t141 = t1->identifier.
    DATA t145 TYPE REF TO zcl_lnt_abstract_token.
    t145 = t141->token.
    DATA t147 TYPE REF TO zcl_lnt_position.
    t147 = t145->start.
    t137 = t147.
    DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t152) = VALUE string( ).
    DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
    t154 = t1->identifier.
    DATA(t156) = VALUE string( ).
    t156 = t154->filename.
    t152 = t156.
    DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t158->has = abap_true.
    t158->value = t152.
    t150 = t158.
    t131 = t132->lookup_position( i_p = t137 i_filename = t150 ).
    t130 = t131.
    DATA(t160) = VALUE abap_bool( ).
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t160 = xsdbool( t130 IS INITIAL ).
    IF t160 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t168 TYPE REF TO zif_lnt_class_definition.
    DATA t169 TYPE REF TO zif_lnt_class_definition.
    DATA t170 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t170 = t130.
    DATA(t172) = VALUE string( ).
    DATA t174 TYPE REF TO zcl_lnt_abstract_token.
    t174 = t1->token.
    DATA(t176) = VALUE string( ).
    t176 = t174->str.
    t172 = t176.
    t169 = t170->find_class_definition( i_name = t172 ).
    t168 = t169.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    t179 = xsdbool( t168 IS BOUND ).
    t178 = t179.
    IF t179 = abap_true.
      DATA(t181) = VALUE abap_bool( ).
      DATA t182 TYPE REF TO zcl_lnt_position.
      DATA t183 TYPE REF TO zif_lnt_class_definition.
      t183 = t168.
      t182 = t183->get_start( ).
      DATA t185 TYPE REF TO zcl_lnt_position.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      t187 = t1->token.
      DATA t189 TYPE REF TO zcl_lnt_position.
      t189 = t187->start.
      t185 = t189.
      t181 = t182->equals( i_p = t185 ).
      t178 = t181.
    ENDIF.
    IF t178 = abap_true.
      DATA t192 TYPE REF TO zcl_lnt_location.
      DATA t193 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t194 TYPE REF TO zif_lnt_class_definition.
      t194 = t168.
      t193 ?= t194.
      t192 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t193 ).
      DATA t198 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t202) = VALUE string( ).
      DATA(t203) = |Class Definition, |.
      DATA(t204) = VALUE string( ).
      DATA t206 TYPE REF TO zcl_lnt_abstract_token.
      t206 = t1->token.
      DATA(t208) = VALUE string( ).
      t208 = t206->str.
      t204 = t208.
      DATA(t210) = strlen( t203 ).
      t202 = |{ t203 }{ t204 }|.
      DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t211->has = abap_true.
      t211->value = t202.
      t199 = t211.
      DATA t213 TYPE REF TO zcl_lnt_location.
      t213 = t192.
      DATA t218 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t221 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t222 TYPE REF TO zif_lnt_class_definition.
      t222 = t168.
      t221 ?= t222.
      t218 = t221.
      DATA t225 TYPE REF TO zcl_lnt_location.
      DATA t227 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t227 = t130.
      t198 = NEW zcl_lnt_lsp_lookup_result( i_hover = t199 i_definition = t213 i_implementation = t225 i_definition_id = t218 i_scope = t227 ).
      CREATE OBJECT t198->zlnt_view_ownkeys_b0e8086400eb.
      t198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t233 ).
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t234 ).
      ENDIF.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t235 ).
      ENDIF.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t236 ).
      ENDIF.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t237 ).
      ENDIF.
      CREATE OBJECT t198->zlnt_json_ownkeys_70e5fd461788.
      t198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t238) = |hover|.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
      DATA(t240) = |definition|.
      DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
      ENDIF.
      DATA(t242) = |definitionId|.
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
      ENDIF.
      DATA(t244) = |implementation|.
      DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t244 p1 = t245 ).
      ENDIF.
      DATA(t246) = |scope|.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t246 p1 = t247 ).
      ENDIF.
      result = t198.
      RETURN.
    ENDIF.
    DATA t249 TYPE REF TO zif_lnt_interface_definition.
    DATA t250 TYPE REF TO zif_lnt_interface_definition.
    DATA t251 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t251 = t130.
    DATA(t253) = VALUE string( ).
    DATA t255 TYPE REF TO zcl_lnt_abstract_token.
    t255 = t1->token.
    DATA(t257) = VALUE string( ).
    t257 = t255->str.
    t253 = t257.
    t250 = t251->find_interface_definition( i_name = t253 ).
    t249 = t250.
    DATA(t259) = VALUE abap_bool( ).
    DATA(t260) = VALUE abap_bool( ).
    t260 = xsdbool( t249 IS BOUND ).
    t259 = t260.
    IF t260 = abap_true.
      DATA(t262) = VALUE abap_bool( ).
      DATA t263 TYPE REF TO zcl_lnt_position.
      DATA t264 TYPE REF TO zif_lnt_interface_definition.
      t264 = t249.
      t263 = t264->get_start( ).
      DATA t266 TYPE REF TO zcl_lnt_position.
      DATA t268 TYPE REF TO zcl_lnt_abstract_token.
      t268 = t1->token.
      DATA t270 TYPE REF TO zcl_lnt_position.
      t270 = t268->start.
      t266 = t270.
      t262 = t263->equals( i_p = t266 ).
      t259 = t262.
    ENDIF.
    IF t259 = abap_true.
      DATA t273 TYPE REF TO zcl_lnt_location.
      DATA t274 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t275 TYPE REF TO zif_lnt_interface_definition.
      t275 = t249.
      t274 ?= t275.
      t273 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t274 ).
      DATA t279 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t283) = VALUE string( ).
      DATA(t284) = |Interface Definition, |.
      DATA(t285) = VALUE string( ).
      DATA t287 TYPE REF TO zcl_lnt_abstract_token.
      t287 = t1->token.
      DATA(t289) = VALUE string( ).
      t289 = t287->str.
      t285 = t289.
      DATA(t291) = strlen( t284 ).
      t283 = |{ t284 }{ t285 }|.
      DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t292->has = abap_true.
      t292->value = t283.
      t280 = t292.
      DATA t294 TYPE REF TO zcl_lnt_location.
      t294 = t273.
      DATA t299 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t302 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t303 TYPE REF TO zif_lnt_interface_definition.
      t303 = t249.
      t302 ?= t303.
      t299 = t302.
      DATA t306 TYPE REF TO zcl_lnt_location.
      DATA t308 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t308 = t130.
      t279 = NEW zcl_lnt_lsp_lookup_result( i_hover = t280 i_definition = t294 i_implementation = t306 i_definition_id = t299 i_scope = t308 ).
      CREATE OBJECT t279->zlnt_view_ownkeys_b0e8086400eb.
      t279->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t314 ).
      DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t315 ).
      ENDIF.
      DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t316 ).
      ENDIF.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t317 ).
      ENDIF.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t318 ).
      ENDIF.
      CREATE OBJECT t279->zlnt_json_ownkeys_70e5fd461788.
      t279->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t319) = |hover|.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
      DATA(t321) = |definition|.
      DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
      ENDIF.
      DATA(t323) = |definitionId|.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
      ENDIF.
      DATA(t325) = |implementation|.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
      ENDIF.
      DATA(t327) = |scope|.
      DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t327 p1 = t328 ).
      ENDIF.
      result = t279.
      RETURN.
    ENDIF.
    DATA t330 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t331 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t332 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t332 = t130.
    DATA(t334) = VALUE string( ).
    DATA t336 TYPE REF TO zcl_lnt_abstract_token.
    t336 = t1->token.
    DATA(t338) = VALUE string( ).
    t338 = t336->str.
    t334 = t338.
    t331 = t332->find_type( i_name = t334 ).
    t330 = t331.
    DATA(t340) = VALUE abap_bool( ).
    DATA(t341) = VALUE abap_bool( ).
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t346) = VALUE abap_bool( ).
    DATA(t347) = xsdbool( t330 IS INITIAL ).
    t346 = xsdbool( t347 = abap_false ).
    t341 = t346.
    t340 = t341.
    IF t341 = abap_true.
      DATA(t349) = VALUE abap_bool( ).
      DATA t350 TYPE REF TO zcl_lnt_position.
      DATA t351 TYPE REF TO zcl_lnt_fi_identifier.
      t351 = t330.
      DATA t356 TYPE REF TO zcl_lnt_abstract_token.
      t356 = t351->token.
      DATA t358 TYPE REF TO zcl_lnt_position.
      t358 = t356->start.
      t350 = t358.
      DATA t360 TYPE REF TO zcl_lnt_position.
      DATA t362 TYPE REF TO zcl_lnt_abstract_token.
      t362 = t1->token.
      DATA t364 TYPE REF TO zcl_lnt_position.
      t364 = t362->start.
      t360 = t364.
      t349 = t350->equals( i_p = t360 ).
      t340 = t349.
    ENDIF.
    IF t340 = abap_true.
      DATA t367 TYPE REF TO zcl_lnt_location.
      DATA t368 TYPE REF TO zcl_lnt_typed_identifier.
      t368 = t330.
      t367 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t368 ).
      DATA(t370) = VALUE string( ).
      DATA(t371) = VALUE string( ).
      DATA(t372) = VALUE string( ).
      DATA(t373) = VALUE string( ).
      DATA(t374) = |Type Definition, |.
      DATA(t375) = VALUE string( ).
      DATA t377 TYPE REF TO zcl_lnt_abstract_token.
      t377 = t1->token.
      DATA(t379) = VALUE string( ).
      t379 = t377->str.
      t375 = t379.
      DATA(t381) = strlen( t374 ).
      t373 = |{ t374 }{ t375 }|.
      DATA(t382) = |\n\n|.
      DATA(t383) = strlen( t373 ).
      t372 = |{ t373 }{ t382 }|.
      DATA(t384) = VALUE string( ).
      DATA t385 TYPE REF TO zcl_lnt_typed_identifier.
      t385 = t330.
      t384 = zcl_lnt_lsp_lookup=>dump_type( i_variable = t385 ).
      DATA(t387) = strlen( t372 ).
      t371 = |{ t372 }{ t384 }|.
      t370 = t371.
      DATA t390 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t395->has = abap_true.
      t395->value = t370.
      t391 = t395.
      DATA t397 TYPE REF TO zcl_lnt_location.
      t397 = t367.
      DATA t402 TYPE REF TO zcl_lnt_fi_identifier.
      t402 = t330.
      DATA t405 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t405 = t130.
      DATA t411 TYPE REF TO zcl_lnt_location.
      t390 = NEW zcl_lnt_lsp_lookup_result( i_hover = t391 i_definition = t397 i_implementation = t411 i_definition_id = t402 i_scope = t405 ).
      CREATE OBJECT t390->zlnt_view_ownkeys_b0e8086400eb.
      t390->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t413 ).
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t414 ).
      ENDIF.
      DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t415 ).
      ENDIF.
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t416 ).
      ENDIF.
      CREATE OBJECT t390->zlnt_json_ownkeys_70e5fd461788.
      t390->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t417) = |hover|.
      DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
      DATA(t419) = |definition|.
      DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
      ENDIF.
      DATA(t421) = |definitionId|.
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
      ENDIF.
      DATA(t423) = |scope|.
      DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
      ENDIF.
      result = t390.
      RETURN.
    ENDIF.
    DATA t426 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t427 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t429 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t430 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t430 = t130.
    t429 = t430->get_parent( ).
    t427 = zcl_lnt_lsp_lookup=>find_method_definition( i_found = t1 i_scope = t429 ).
    t426 = t427.
    DATA(t432) = VALUE abap_bool( ).
    DATA(t433) = VALUE abap_bool( ).
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t438) = VALUE abap_bool( ).
    DATA(t439) = xsdbool( t426 IS INITIAL ).
    t438 = xsdbool( t439 = abap_false ).
    t433 = t438.
    t432 = t433.
    IF t433 = abap_true.
      DATA(t441) = VALUE abap_bool( ).
      DATA t442 TYPE REF TO zcl_lnt_position.
      DATA t448 TYPE REF TO zcl_lnt_abstract_token.
      t448 = t426->token.
      DATA t450 TYPE REF TO zcl_lnt_position.
      t450 = t448->start.
      t442 = t450.
      DATA t452 TYPE REF TO zcl_lnt_position.
      DATA t454 TYPE REF TO zcl_lnt_abstract_token.
      t454 = t1->token.
      DATA t456 TYPE REF TO zcl_lnt_position.
      t456 = t454->start.
      t452 = t456.
      t441 = t442->equals( i_p = t452 ).
      t432 = t441.
    ENDIF.
    IF t432 = abap_true.
      DATA t459 TYPE REF TO zcl_lnt_location.
      DATA t460 TYPE REF TO zcl_lnt_fi_identifier.
      t460 = t426.
      t459 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t460 ).
      DATA(t462) = VALUE string( ).
      DATA(t463) = VALUE string( ).
      DATA(t464) = VALUE string( ).
      DATA(t465) = |Method Definition "|.
      DATA(t466) = VALUE string( ).
      DATA(t470) = VALUE string( ).
      DATA(t471) = VALUE string( ).
      DATA(t472) = VALUE string( ).
      DATA t474 TYPE REF TO zcl_lnt_abstract_token.
      t474 = t426->token.
      DATA(t476) = VALUE string( ).
      t476 = t474->str.
      t472 = t476.
      t471 = t472.
      DATA(t478) = VALUE abap_bool( ).
      DATA(t479) = VALUE string( ).
      DATA(t480) = t471.
      DATA(t481) = 0.
      DATA(t482) = 1.
      DATA(t483) = strlen( t480 ).
      IF t481 < 0.
        t481 = t481 + t483.
        IF t481 < 0.
          t481 = 0.
        ENDIF.
      ENDIF.
      IF t481 > t483 OR t482 <= 0.
        CLEAR t479.
      ELSE.
        IF t482 > t483 - t481.
          t482 = t483 - t481.
        ENDIF.
        t479 = t480+t481(t482).
      ENDIF.
      DATA(t484) = |!|.
      t478 = xsdbool( t479 = t484 ).
      IF t478 = abap_true.
        DATA(t485) = VALUE string( ).
        DATA(t486) = VALUE string( ).
        t486 = t471.
        DATA(t488) = VALUE string( ).
        DATA(t490) = 1.
        DATA(t491) = VALUE i( ).
        t491 = strlen( t486 ).
        DATA(t494) = strlen( t486 ).
        IF t490 < 0.
          t490 = t490 + t494.
          IF t490 < 0.
            t490 = 0.
          ENDIF.
        ENDIF.
        IF t490 > t494 OR t491 <= 0.
          CLEAR t488.
        ELSE.
          IF t491 > t494 - t490.
            t491 = t494 - t490.
          ENDIF.
          t488 = t486+t490(t491).
        ENDIF.
        t485 = t488.
        t471 = t485.
      ENDIF.
      t470 = t471.
      t466 = t470.
      DATA(t496) = strlen( t465 ).
      t464 = |{ t465 }{ t466 }|.
      DATA(t497) = |"|.
      DATA(t498) = strlen( t464 ).
      t463 = |{ t464 }{ t497 }|.
      t462 = t463.
      DATA t500 TYPE REF TO zif_lnt_method_definition.
      DATA t501 TYPE REF TO zcl_lnt_fi_identifier.
      t501 = t426.
      t500 ?= t501.
      DATA(t503) = VALUE string( ).
      DATA(t504) = VALUE string( ).
      DATA(t505) = VALUE f( ).
      t505 = t500->get_visibility( ).
      t504 = zcl_lnt_lsp_lookup=>visibility_to_string( i_visibility_5c1f = t505 ).
      t503 = t504.
      DATA(t507) = VALUE string( ).
      DATA(t508) = t462.
      DATA(t509) = VALUE string( ).
      DATA(t510) = |\n\n|.
      DATA(t512) = strlen( t510 ).
      t509 = |{ t510 }{ t503 }|.
      DATA(t513) = strlen( t508 ).
      t507 = |{ t508 }{ t509 }|.
      t462 = t507.
      DATA t516 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t521) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t521->has = abap_true.
      t521->value = t462.
      t517 = t521.
      DATA t523 TYPE REF TO zcl_lnt_location.
      t523 = t459.
      DATA t528 TYPE REF TO zcl_lnt_fi_identifier.
      t528 = t426.
      DATA t534 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t534 = t130.
      DATA t540 TYPE REF TO zcl_lnt_location.
      t516 = NEW zcl_lnt_lsp_lookup_result( i_hover = t517 i_definition = t523 i_implementation = t540 i_definition_id = t528 i_scope = t534 ).
      CREATE OBJECT t516->zlnt_view_ownkeys_b0e8086400eb.
      t516->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t542 ).
      DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t543 ).
      ENDIF.
      DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t544 ).
      ENDIF.
      DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t545 ).
      ENDIF.
      CREATE OBJECT t516->zlnt_json_ownkeys_70e5fd461788.
      t516->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t546) = |hover|.
      DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
      DATA(t548) = |definition|.
      DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t548 p1 = t549 ).
      ENDIF.
      DATA(t550) = |definitionId|.
      DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t550 p1 = t551 ).
      ENDIF.
      DATA(t552) = |scope|.
      DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t552 p1 = t553 ).
      ENDIF.
      result = t516.
      RETURN.
    ENDIF.
    DATA(t555) = VALUE string( ).
    t555 = ||.
    DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t559 TYPE REF TO zif_lnt_ddic_references.
    t559 = t2->get_ddic_references( ).
    DATA(t561) = VALUE string( ).
    DATA t563 TYPE REF TO zcl_lnt_fi_identifier.
    t563 = t1->identifier.
    DATA(t565) = VALUE string( ).
    t565 = t563->filename.
    t561 = t565.
    DATA(t567) = VALUE f( ).
    DATA t571 TYPE REF TO zcl_lnt_fi_identifier.
    t571 = t1->identifier.
    DATA t575 TYPE REF TO zcl_lnt_abstract_token.
    t575 = t571->token.
    DATA t577 TYPE REF TO zcl_lnt_position.
    t577 = t575->start.
    DATA(t579) = VALUE f( ).
    t579 = t577->row.
    t567 = t579.
    t558 = t559->list_by_filename( i_filename = t561 i_line = t567 ).
    t557 = t558.
    DATA t582 TYPE REF TO zcl_lnt_iobject_and_token.
    DATA t583 TYPE REF TO object.
    DATA(t584) = VALUE i( ).
    DO.
      t557->load( ).
      IF t584 >= lines( t557->items ).
        EXIT.
      ENDIF.
      CLEAR t583.
      READ TABLE t557->items INDEX t584 + 1 INTO t583.
      t584 = t584 + 1.
      DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t585.
      CLEAR t582.
      IF t583 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t585 ?= t583.
        DATA t586 TYPE REF TO object.
        CLEAR t586.
        t586 = t585->as_ref( ).
        t582 ?= t586.
      ELSE.
        t582 ?= t583.
      ENDIF.
      DATA(t587) = VALUE abap_bool( ).
      DATA(t588) = VALUE abap_bool( ).
      DATA(t589) = VALUE abap_bool( ).
      DATA t590 TYPE REF TO zif_lnt_object.
      CLEAR t590.
      t590 = t582->object_a393.
      t589 = xsdbool( t590 IS BOUND ).
      t588 = t589.
      IF t589 = abap_true.
        DATA(t592) = VALUE abap_bool( ).
        DATA t593 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t593.
        t593 = t582->token.
        t592 = xsdbool( t593 IS BOUND ).
        t588 = t592.
      ENDIF.
      t587 = t588.
      IF t588 = abap_true.
        DATA(t595) = VALUE abap_bool( ).
        DATA t596 TYPE REF TO zcl_lnt_position.
        CLEAR t596.
        DATA t599 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t599.
        t599 = t582->token.
        DATA t601 TYPE REF TO zcl_lnt_position.
        CLEAR t601.
        t601 = t599->start.
        t596 = t601.
        DATA t603 TYPE REF TO zcl_lnt_position.
        CLEAR t603.
        DATA t605 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t605.
        t605 = t1->identifier.
        DATA t609 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t609.
        t609 = t605->token.
        DATA t611 TYPE REF TO zcl_lnt_position.
        CLEAR t611.
        t611 = t609->start.
        t603 = t611.
        t595 = t596->equals( i_p = t603 ).
        t587 = t595.
      ENDIF.
      IF t587 = abap_true.
        DATA(t613) = VALUE string( ).
        DATA(t614) = t555.
        DATA(t615) = VALUE string( ).
        DATA(t616) = VALUE string( ).
        DATA(t617) = VALUE string( ).
        DATA(t618) = VALUE string( ).
        DATA(t619) = |DDIC: |.
        DATA(t620) = VALUE string( ).
        DATA t621 TYPE REF TO zif_lnt_object.
        CLEAR t621.
        DATA t622 TYPE REF TO zif_lnt_object.
        CLEAR t622.
        t622 = t582->object_a393.
        t621 = t622.
        t620 = t621->get_type( ).
        DATA(t624) = strlen( t619 ).
        t618 = |{ t619 }{ t620 }|.
        DATA(t625) = | |.
        DATA(t626) = strlen( t618 ).
        t617 = |{ t618 }{ t625 }|.
        DATA(t627) = VALUE string( ).
        DATA t628 TYPE REF TO zif_lnt_object.
        CLEAR t628.
        DATA t629 TYPE REF TO zif_lnt_object.
        CLEAR t629.
        t629 = t582->object_a393.
        t628 = t629.
        t627 = t628->get_name( ).
        DATA(t631) = strlen( t617 ).
        t616 = |{ t617 }{ t627 }|.
        DATA(t632) = ||.
        DATA(t633) = strlen( t616 ).
        t615 = |{ t616 }{ t632 }|.
        DATA(t634) = strlen( t614 ).
        t613 = |{ t614 }{ t615 }|.
        t555 = t613.
      ENDIF.
    ENDDO.
    DATA t635 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t636 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t637 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t637 = t130.
    DATA(t639) = VALUE string( ).
    DATA t641 TYPE REF TO zcl_lnt_abstract_token.
    t641 = t1->token.
    DATA(t643) = VALUE string( ).
    t643 = t641->str.
    t639 = t643.
    t636 = t637->find_variable( i_name = t639 ).
    t635 = t636.
    DATA(t645) = VALUE abap_bool( ).
    DATA(t646) = VALUE abap_bool( ).
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t651) = VALUE abap_bool( ).
    DATA(t652) = xsdbool( t635 IS INITIAL ).
    t651 = xsdbool( t652 = abap_false ).
    t646 = t651.
    t645 = t646.
    IF t646 = abap_true.
      DATA(t654) = VALUE abap_bool( ).
      DATA t655 TYPE REF TO zcl_lnt_position.
      DATA t656 TYPE REF TO zcl_lnt_fi_identifier.
      t656 = t635.
      DATA t661 TYPE REF TO zcl_lnt_abstract_token.
      t661 = t656->token.
      DATA t663 TYPE REF TO zcl_lnt_position.
      t663 = t661->start.
      t655 = t663.
      DATA t665 TYPE REF TO zcl_lnt_position.
      DATA t667 TYPE REF TO zcl_lnt_abstract_token.
      t667 = t1->token.
      DATA t669 TYPE REF TO zcl_lnt_position.
      t669 = t667->start.
      t665 = t669.
      t654 = t655->equals( i_p = t665 ).
      t645 = t654.
    ENDIF.
    IF t645 = abap_true.
      DATA(t671) = VALUE string( ).
      DATA(t672) = VALUE string( ).
      DATA(t673) = |Variable Definition\n\n|.
      DATA(t674) = VALUE string( ).
      DATA t675 TYPE REF TO zcl_lnt_typed_identifier.
      t675 = t635.
      t674 = zcl_lnt_lsp_lookup=>dump_type( i_variable = t675 ).
      DATA(t677) = strlen( t673 ).
      t672 = |{ t673 }{ t674 }|.
      t671 = t672.
      DATA(t678) = VALUE abap_bool( ).
      DATA(t680) = ||.
      t678 = xsdbool( t555 <> t680 ).
      IF t678 = abap_true.
        DATA(t681) = VALUE string( ).
        DATA(t682) = VALUE string( ).
        DATA(t684) = |\n_________________\n|.
        DATA(t685) = strlen( t671 ).
        t682 = |{ t671 }{ t684 }|.
        DATA(t687) = strlen( t682 ).
        t681 = |{ t682 }{ t555 }|.
        t555 = t681.
      ELSE.
        t555 = t671.
      ENDIF.
      DATA t689 TYPE REF TO zcl_lnt_location.
      DATA(t691) = VALUE abap_bool( ).
      DATA(t692) = VALUE abap_bool( ).
      DATA t693 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t697 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t697 = t635->meta.
      t693 = t697.
      DATA(t699) = |built-in|.
      t692 = t693->includes( p0 = t699 ).
      t691 = xsdbool( t692 = abap_false ).
      IF t691 = abap_true.
        DATA t703 TYPE REF TO zcl_lnt_location.
        DATA t704 TYPE REF TO zcl_lnt_typed_identifier.
        t704 = t635.
        t703 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t704 ).
        t689 = t703.
      ENDIF.
      DATA t709 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t714) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t714->has = abap_true.
      t714->value = t555.
      t710 = t714.
      DATA t716 TYPE REF TO zcl_lnt_location.
      t716 = t689.
      DATA t718 TYPE REF TO zcl_lnt_location.
      t718 = t689.
      DATA t720 TYPE REF TO zcl_lnt_fi_identifier.
      t720 = t635.
      DATA t723 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t723 = t130.
      t709 = NEW zcl_lnt_lsp_lookup_result( i_hover = t710 i_definition = t716 i_implementation = t718 i_definition_id = t720 i_scope = t723 ).
      CREATE OBJECT t709->zlnt_view_ownkeys_b0e8086400eb.
      t709->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t729 ).
      DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t730 ).
      ENDIF.
      DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t731 ).
      ENDIF.
      DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t732 ).
      ENDIF.
      DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t733 ).
      ENDIF.
      CREATE OBJECT t709->zlnt_json_ownkeys_70e5fd461788.
      t709->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t734) = |hover|.
      DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t734 p1 = t735 ).
      DATA(t736) = |definition|.
      DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t736 p1 = t737 ).
      ENDIF.
      DATA(t738) = |implementation|.
      DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t738 p1 = t739 ).
      ENDIF.
      DATA(t740) = |definitionId|.
      DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t740 p1 = t741 ).
      ENDIF.
      DATA(t742) = |scope|.
      DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t742 p1 = t743 ).
      ENDIF.
      result = t709.
      RETURN.
    ENDIF.
    DATA t745 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t747 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t747.
    DATA t749 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t751 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t752 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t752 = t130.
    t751 = t752->list_class_definitions( ).
    t749 = t747->concat( p0 = t751 ).
    DATA t755 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t757 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t758 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t758 = t130.
    t757 = t758->list_interface_definitions( ).
    t755 = t749->concat( p0 = t757 ).
    t745 = t755.
    DATA t761 TYPE REF TO zif_lnt_interface_definition.
    DATA t762 TYPE REF TO object.
    DATA(t763) = VALUE i( ).
    DO.
      t745->load( ).
      IF t763 >= lines( t745->items ).
        EXIT.
      ENDIF.
      CLEAR t762.
      READ TABLE t745->items INDEX t763 + 1 INTO t762.
      t763 = t763 + 1.
      DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t764.
      CLEAR t761.
      IF t762 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t764 ?= t762.
        DATA t765 TYPE REF TO object.
        CLEAR t765.
        t765 = t764->as_ref( ).
        t761 ?= t765.
      ELSE.
        t761 ?= t762.
      ENDIF.
      DATA t766 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t766.
      DATA t768 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t768.
      DATA t769 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t769.
      t769 = t761->get_method_definitions( ).
      t768 = t769.
      DATA t771 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t771.
      DATA(t772) = xsdbool( t768 IS INITIAL ).
      IF t772 = abap_true.
        CLEAR t771.
      ELSE.
        DATA t775 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t775.
        t775 = t768->get_all( ).
        t771 = t775.
      ENDIF.
      t766 = t771.
      DATA(t777) = VALUE abap_bool( ).
      DATA(t778) = xsdbool( t766 IS INITIAL ).
      t777 = xsdbool( t778 = abap_false ).
      IF t777 = abap_true.
        DATA t780 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t780.
        DATA t781 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t781.
        DATA t782 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t782.
        t782 = t766.
        t781 = t782->iterate( ).
        t780 = t781.
        DO.
          DATA t785 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t785.
          DATA t786 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t786.
          t786 = t780->next( ).
          t785 = t786.
          DATA(t788) = VALUE abap_bool( ).
          t788 = t785->done.
          IF t788 = abap_true.
            EXIT.
          ENDIF.
          DATA t792 TYPE REF TO zif_lnt_method_definition.
          CLEAR t792.
          t792 = t785->value.
          DATA t794 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t794.
          DATA t795 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t795.
          DATA(t796) = VALUE abap_bool( ).
          t796 = abap_false.
          DATA t798 TYPE REF TO cx_root.
          CLEAR t798.
          TRY.
              DATA t800 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t800.
              DATA t802 TYPE REF TO zif_lnt_method_parameters.
              CLEAR t802.
              DATA t803 TYPE REF TO zif_lnt_method_parameters.
              CLEAR t803.
              t803 = t792->get_parameters( ).
              t802 = t803.
              DATA t805 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t805.
              DATA(t806) = xsdbool( t802 IS INITIAL ).
              IF t806 = abap_true.
                CLEAR t805.
              ELSE.
                DATA t809 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t809.
                t809 = t802->get_all( ).
                t805 = t809.
              ENDIF.
              t800 = t805.
              DATA t811 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t811.
              DATA(t812) = VALUE abap_bool( ).
              t812 = xsdbool( t800 IS BOUND ).
              IF t812 = abap_true.
                t811 = t800.
              ELSE.
                DATA t816 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t816.
                CREATE OBJECT t816.
                t811 = t816.
              ENDIF.
              t795 = t811.
              t796 = abap_true.
            CATCH cx_root INTO t798.
              DATA(t818) = VALUE abap_bool( ).
              t818 = xsdbool( t796 = abap_false ).
              IF t818 = abap_true.
                t780->close( ).
              ENDIF.
              RAISE EXCEPTION t798.
          ENDTRY.
          DATA(t821) = VALUE abap_bool( ).
          t821 = xsdbool( t796 = abap_false ).
          IF t821 = abap_true.
            t780->close( ).
          ENDIF.
          t794 = t795.
          DATA t825 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t825.
          DATA t826 TYPE REF TO object.
          CLEAR t826.
          DATA(t827) = VALUE i( ).
          DO.
            t794->load( ).
            IF t827 >= lines( t794->items ).
              EXIT.
            ENDIF.
            CLEAR t826.
            READ TABLE t794->items INDEX t827 + 1 INTO t826.
            t827 = t827 + 1.
            DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t828.
            CLEAR t825.
            IF t826 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t828 ?= t826.
              DATA t829 TYPE REF TO object.
              CLEAR t829.
              t829 = t828->as_ref( ).
              t825 ?= t829.
            ELSE.
              t825 ?= t826.
            ENDIF.
            DATA(t830) = VALUE abap_bool( ).
            DATA(t831) = VALUE abap_bool( ).
            DATA(t832) = VALUE abap_bool( ).
            t832 = abap_false.
            DATA t834 TYPE REF TO cx_root.
            CLEAR t834.
            TRY.
                DATA(t835) = VALUE abap_bool( ).
                DATA t836 TYPE REF TO zcl_lnt_position.
                CLEAR t836.
                DATA t837 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t837.
                t837 = t825.
                DATA t841 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t841.
                t841 = t837->token.
                DATA t843 TYPE REF TO zcl_lnt_position.
                CLEAR t843.
                t843 = t841->start.
                t836 = t843.
                DATA t845 TYPE REF TO zcl_lnt_position.
                CLEAR t845.
                DATA t847 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t847.
                t847 = t1->token.
                DATA t849 TYPE REF TO zcl_lnt_position.
                CLEAR t849.
                t849 = t847->start.
                t845 = t849.
                t835 = t836->equals( i_p = t845 ).
                t831 = t835.
                t832 = abap_true.
              CATCH cx_root INTO t834.
                DATA(t852) = VALUE abap_bool( ).
                t852 = xsdbool( t832 = abap_false ).
                IF t852 = abap_true.
                  t780->close( ).
                ENDIF.
                RAISE EXCEPTION t834.
            ENDTRY.
            DATA(t855) = VALUE abap_bool( ).
            t855 = xsdbool( t832 = abap_false ).
            IF t855 = abap_true.
              t780->close( ).
            ENDIF.
            t830 = t831.
            IF t830 = abap_true.
              DATA t861 TYPE REF TO zcl_lnt_location.
              CLEAR t861.
              DATA(t862) = VALUE abap_bool( ).
              t862 = abap_false.
              DATA t864 TYPE REF TO cx_root.
              CLEAR t864.
              TRY.
                  DATA t865 TYPE REF TO zcl_lnt_location.
                  CLEAR t865.
                  t865 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t825 ).
                  t861 = t865.
                  t862 = abap_true.
                CATCH cx_root INTO t864.
                  DATA(t868) = VALUE abap_bool( ).
                  t868 = xsdbool( t862 = abap_false ).
                  IF t868 = abap_true.
                    t780->close( ).
                  ENDIF.
                  RAISE EXCEPTION t864.
              ENDTRY.
              DATA(t871) = VALUE abap_bool( ).
              t871 = xsdbool( t862 = abap_false ).
              IF t871 = abap_true.
                t780->close( ).
              ENDIF.
              DATA t877 TYPE REF TO zcl_lnt_lsp_lookup_result.
              CLEAR t877.
              DATA(t878) = VALUE abap_bool( ).
              t878 = abap_false.
              DATA t880 TYPE REF TO cx_root.
              CLEAR t880.
              TRY.
                  DATA t883 TYPE REF TO zcl_lnt_lsp_lookup_result.
                  CLEAR t883.
                  DATA t884 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t884.
                  DATA(t887) = VALUE string( ).
                  DATA(t888) = |Method Parameter: |.
                  DATA(t889) = VALUE string( ).
                  DATA(t890) = VALUE string( ).
                  DATA t892 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t892.
                  t892 = t1->token.
                  DATA(t894) = VALUE string( ).
                  t894 = t892->str.
                  t890 = t894.
                  DATA(t896) = |!|.
                  DATA(t897) = ||.
                  DATA(t898) = strlen( t890 ).
                  t889 = t890.
                  REPLACE ALL OCCURRENCES OF t896 IN t889 WITH t897.
                  DATA(t899) = strlen( t888 ).
                  t887 = |{ t888 }{ t889 }|.
                  DATA(t900) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t900->has = abap_true.
                  t900->value = t887.
                  t884 = t900.
                  DATA t902 TYPE REF TO zcl_lnt_location.
                  CLEAR t902.
                  t902 = t861.
                  DATA t907 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t907.
                  t907 = t825.
                  DATA t909 TYPE REF TO zcl_lnt_location.
                  CLEAR t909.
                  CLEAR t909.
                  DATA t911 TYPE REF TO zif_lnt_spaghetti_scope_node.
                  CLEAR t911.
                  t911 = t130.
                  t883 = NEW zcl_lnt_lsp_lookup_result( i_hover = t884 i_definition = t902 i_implementation = t909 i_definition_id = t907 i_scope = t911 ).
                  CREATE OBJECT t883->zlnt_view_ownkeys_b0e8086400eb.
                  t883->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t917.
                  t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t917 ).
                  DATA t918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t918.
                  IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t918 ).
                  ENDIF.
                  DATA t919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t919.
                  IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t919 ).
                  ENDIF.
                  DATA t920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t920.
                  IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t920 ).
                  ENDIF.
                  DATA t921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t921.
                  IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t921 ).
                  ENDIF.
                  CREATE OBJECT t883->zlnt_json_ownkeys_70e5fd461788.
                  t883->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t922) = |hover|.
                  DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t923.
                  t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t922 p1 = t923 ).
                  DATA(t924) = |definition|.
                  DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t925.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t924 p1 = t925 ).
                  ENDIF.
                  DATA(t926) = |definitionId|.
                  DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t927.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t926 p1 = t927 ).
                  ENDIF.
                  DATA(t928) = |implementation|.
                  DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t929.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t928 p1 = t929 ).
                  ENDIF.
                  DATA(t930) = |scope|.
                  DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t931.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t930 p1 = t931 ).
                  ENDIF.
                  t877 = t883.
                  t878 = abap_true.
                CATCH cx_root INTO t880.
                  DATA(t934) = VALUE abap_bool( ).
                  t934 = xsdbool( t878 = abap_false ).
                  IF t934 = abap_true.
                    t780->close( ).
                  ENDIF.
                  RAISE EXCEPTION t880.
              ENDTRY.
              DATA(t937) = VALUE abap_bool( ).
              t937 = xsdbool( t878 = abap_false ).
              IF t937 = abap_true.
                t780->close( ).
              ENDIF.
              t780->close( ).
              result = t877.
              RETURN.
            ENDIF.
          ENDDO.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA t943 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t944 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t945 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t945 = t130.
    DATA t947 TYPE REF TO zcl_lnt_abstract_token.
    t947 = t1->token.
    t944 = zcl_lnt_lsp_lookup=>search_references( i_scope = t945 i_token = t947 ).
    t943 = t944.
    DATA(t949) = VALUE abap_bool( ).
    DATA(t950) = VALUE i( ).
    t943->load( ).
    t950 = lines( t943->items ).
    DATA(t952) = 0.
    t949 = xsdbool( t950 > t952 ).
    IF t949 = abap_true.
      DATA t954 TYPE REF TO zcl_lnt_ireference.
      DATA t955 TYPE REF TO object.
      DATA(t956) = VALUE i( ).
      DO.
        t943->load( ).
        IF t956 >= lines( t943->items ).
          EXIT.
        ENDIF.
        CLEAR t955.
        READ TABLE t943->items INDEX t956 + 1 INTO t955.
        t956 = t956 + 1.
        DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t957.
        CLEAR t954.
        IF t955 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t957 ?= t955.
          DATA t958 TYPE REF TO object.
          CLEAR t958.
          t958 = t957->as_ref( ).
          t954 ?= t958.
        ELSE.
          t954 ?= t955.
        ENDIF.
        DATA(t959) = VALUE abap_bool( ).
        DATA(t961) = ||.
        t959 = xsdbool( t555 <> t961 ).
        IF t959 = abap_true.
          DATA(t962) = VALUE string( ).
          DATA(t963) = t555.
          DATA(t964) = |\n_________________\n|.
          DATA(t965) = strlen( t963 ).
          t962 = |{ t963 }{ t964 }|.
          t555 = t962.
        ENDIF.
        DATA(t966) = VALUE string( ).
        DATA(t967) = t555.
        DATA(t968) = VALUE string( ).
        DATA t970 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t970.
        t970 = t130.
        t968 = zcl_lnt_lsp_lookup=>reference_hover( i_ref = t954 i_scope = t970 i_reg_f149 = t2 ).
        DATA(t973) = strlen( t967 ).
        t966 = |{ t967 }{ t968 }|.
        t555 = t966.
      ENDDO.
      DATA t974 TYPE REF TO zcl_lnt_location.
      DATA t976 TYPE REF TO zcl_lnt_location.
      DATA(t978) = VALUE abap_bool( ).
      DATA t979 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t980 TYPE REF TO zcl_lnt_ireference.
      DATA t982 TYPE REF TO object.
      t943->load( ).
      READ TABLE t943->items INDEX 1 INTO t982.
      DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t982 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t983 ?= t982.
        DATA t984 TYPE REF TO object.
        t984 = t983->as_ref( ).
        t980 ?= t984.
      ELSE.
        t980 ?= t982.
      ENDIF.
      t979 = t980->resolved.
      t978 = xsdbool( t979 IS BOUND ).
      IF t978 = abap_true.
        DATA t987 TYPE REF TO zcl_lnt_location.
        DATA t988 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t989 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t990 TYPE REF TO zcl_lnt_ireference.
        DATA t992 TYPE REF TO object.
        t943->load( ).
        READ TABLE t943->items INDEX 1 INTO t992.
        DATA t993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t992 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t993 ?= t992.
          DATA t994 TYPE REF TO object.
          t994 = t993->as_ref( ).
          t990 ?= t994.
        ELSE.
          t990 ?= t992.
        ENDIF.
        t989 = t990->resolved.
        t988 = t989.
        t987 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t988 ).
        t974 = t987.
        DATA(t996) = VALUE abap_bool( ).
        DATA(t997) = VALUE string( ).
        DATA t998 TYPE REF TO zcl_lnt_location.
        t998 = t974.
        t997 = t998->uri.
        DATA(t1000) = CONV string( zcl_lnt_built_in=>filename ).
        t996 = xsdbool( t997 = t1000 ).
        IF t996 = abap_true.
          CLEAR t974.
        ENDIF.
        DATA(t1002) = VALUE abap_bool( ).
        DATA t1003 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t1004 TYPE REF TO zcl_lnt_ireference.
        DATA t1006 TYPE REF TO object.
        t943->load( ).
        READ TABLE t943->items INDEX 1 INTO t1006.
        DATA t1007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1006 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t1007 ?= t1006.
          DATA t1008 TYPE REF TO object.
          t1008 = t1007->as_ref( ).
          t1004 ?= t1008.
        ELSE.
          t1004 ?= t1006.
        ENDIF.
        t1003 = t1004->resolved.
        t1002 = xsdbool( t1003 IS BOUND AND t1003 IS INSTANCE OF zcl_lnt_ty_form_definition ).
        IF t1002 = abap_true.
          t976 = t974.
        ENDIF.
      ENDIF.
      DATA t1012 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t1013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1017) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1017->has = abap_true.
      t1017->value = t555.
      t1013 = t1017.
      DATA t1019 TYPE REF TO zcl_lnt_location.
      t1019 = t974.
      DATA t1021 TYPE REF TO zcl_lnt_location.
      t1021 = t976.
      DATA t1023 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t1024 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t1025 TYPE REF TO zcl_lnt_ireference.
      DATA t1027 TYPE REF TO object.
      t943->load( ).
      READ TABLE t943->items INDEX 1 INTO t1027.
      DATA t1028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1027 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t1028 ?= t1027.
        DATA t1029 TYPE REF TO object.
        t1029 = t1028->as_ref( ).
        t1025 ?= t1029.
      ELSE.
        t1025 ?= t1027.
      ENDIF.
      t1024 = t1025->resolved.
      t1023 = t1024.
      DATA t1030 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t1030 = t130.
      t1012 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1013 i_definition = t1019 i_implementation = t1021 i_definition_id = t1023 i_scope = t1030 ).
      CREATE OBJECT t1012->zlnt_view_ownkeys_b0e8086400eb.
      t1012->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1036 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t1036 ).
      DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t1037 ).
      ENDIF.
      DATA t1038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t1038 ).
      ENDIF.
      DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t1039 ).
      ENDIF.
      DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t1040 ).
      ENDIF.
      CREATE OBJECT t1012->zlnt_json_ownkeys_70e5fd461788.
      t1012->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1041) = |hover|.
      DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1041 p1 = t1042 ).
      DATA(t1043) = |definition|.
      DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1043 p1 = t1044 ).
      ENDIF.
      DATA(t1045) = |implementation|.
      DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1045 p1 = t1046 ).
      ENDIF.
      DATA(t1047) = |definitionId|.
      DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1047 p1 = t1048 ).
      ENDIF.
      DATA(t1049) = |scope|.
      DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1049 p1 = t1050 ).
      ENDIF.
      result = t1012.
      RETURN.
    ENDIF.
    DATA(t1052) = VALUE abap_bool( ).
    DATA t1053 TYPE REF TO zif_lnt_statement.
    DATA t1054 TYPE REF TO zcl_lnt_statement_node.
    t1054 = t1->snode.
    t1053 = t1054->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t1052 = xsdbool( t1053 IS BOUND AND t1053 IS INSTANCE OF zcl_lnt_macro_call ).
    IF t1052 = abap_true.
      DATA t1056 TYPE REF TO zcl_lnt_ifilename_and_token.
      DATA t1057 TYPE REF TO zcl_lnt_ifilename_and_token.
      DATA t1058 TYPE REF TO zif_lnt_macro_references.
      t1058 = t2->get_macro_references( ).
      DATA(t1060) = VALUE string( ).
      DATA t1062 TYPE REF TO zcl_lnt_fi_identifier.
      t1062 = t1->identifier.
      DATA(t1064) = VALUE string( ).
      t1064 = t1062->filename.
      t1060 = t1064.
      DATA t1066 TYPE REF TO zcl_lnt_abstract_token.
      DATA t1067 TYPE REF TO zcl_lnt_statement_node.
      t1067 = t1->snode.
      t1066 = t1067->get_first_token( ).
      t1057 = t1058->find_definition_by_usage( i_filename = t1060 i_token = t1066 ).
      t1056 = t1057.
      DATA(t1069) = VALUE abap_bool( ).
      t1069 = xsdbool( t1056 IS BOUND ).
      IF t1069 = abap_true.
        DATA t1073 TYPE REF TO zcl_lnt_lsp_lookup_result.
        DATA t1074 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1077) = |Macro Call|.
        DATA(t1078) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1078->has = abap_true.
        t1078->value = t1077.
        t1074 = t1078.
        DATA t1080 TYPE REF TO zcl_lnt_location.
        DATA t1083 TYPE REF TO zcl_lnt_location.
        DATA(t1084) = VALUE string( ).
        DATA(t1085) = VALUE string( ).
        DATA t1086 TYPE REF TO zcl_lnt_ifilename_and_token.
        t1086 = t1056.
        DATA(t1089) = VALUE string( ).
        DATA t1090 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1091) = xsdbool( t1086 IS INITIAL ).
        IF t1091 = abap_true.
        ELSE.
          DATA(t1094) = VALUE string( ).
          t1094 = t1086->filename.
          DATA(t1096) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1096->has = abap_true.
          t1096->value = t1094.
          t1090 = t1096.
        ENDIF.
        t1089 = t1090->value.
        t1085 = t1089.
        t1084 = t1085.
        DATA t1097 TYPE REF TO zcl_lnt_range.
        DATA t1098 TYPE REF TO zcl_lnt_range.
        DATA t1099 TYPE REF TO zcl_lnt_abstract_token.
        DATA t1100 TYPE REF TO zcl_lnt_ifilename_and_token.
        t1100 = t1056.
        t1099 = t1100->token.
        t1098 = zcl_lnt_lsp_utils=>token_to_range( i_token = t1099 ).
        t1097 = t1098.
        t1083 = NEW zcl_lnt_location( i_uri = t1084 i_range = t1097 ).
        CREATE OBJECT t1083->zlnt_view_ownkeys_b0e8086400eb.
        t1083->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1083->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t1102 ).
        DATA t1103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1083->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1083->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t1103 ).
        ENDIF.
        CREATE OBJECT t1083->zlnt_json_ownkeys_70e5fd461788.
        t1083->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1104) = |uri|.
        DATA t1105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1083->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1104 p1 = t1105 ).
        DATA(t1106) = |range|.
        DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1083->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1083->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1106 p1 = t1107 ).
        ENDIF.
        t1080 = t1083.
        DATA t1109 TYPE REF TO zcl_lnt_location.
        DATA t1111 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t1113 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t1073 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1074 i_definition = t1080 i_implementation = t1109 i_definition_id = t1111 i_scope = t1113 ).
        CREATE OBJECT t1073->zlnt_view_ownkeys_b0e8086400eb.
        t1073->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1073->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t1115 ).
        DATA t1116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1073->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1073->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t1116 ).
        ENDIF.
        CREATE OBJECT t1073->zlnt_json_ownkeys_70e5fd461788.
        t1073->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1117) = |hover|.
        DATA t1118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1073->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1117 p1 = t1118 ).
        DATA(t1119) = |definition|.
        DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1073->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1073->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1119 p1 = t1120 ).
        ENDIF.
        result = t1073.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t1122) = VALUE abap_bool( ).
    DATA(t1124) = ||.
    t1122 = xsdbool( t555 <> t1124 ).
    IF t1122 = abap_true.
      DATA t1127 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t1128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1132->has = abap_true.
      t1132->value = t555.
      t1128 = t1132.
      DATA t1134 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t1134 = t130.
      DATA t1140 TYPE REF TO zcl_lnt_location.
      DATA t1142 TYPE REF TO zcl_lnt_location.
      DATA t1144 TYPE REF TO zcl_lnt_fi_identifier.
      t1127 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1128 i_definition = t1140 i_implementation = t1142 i_definition_id = t1144 i_scope = t1134 ).
      CREATE OBJECT t1127->zlnt_view_ownkeys_b0e8086400eb.
      t1127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t1146 ).
      DATA t1147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t1147 ).
      ENDIF.
      CREATE OBJECT t1127->zlnt_json_ownkeys_70e5fd461788.
      t1127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1148) = |hover|.
      DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1148 p1 = t1149 ).
      DATA(t1150) = |scope|.
      DATA t1151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1150 p1 = t1151 ).
      ENDIF.
      result = t1127.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD dump_type.
    DATA(t1) = i_variable.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = |Identifier: ```|.
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
    t12 = t1.
    DATA(t14) = VALUE string( ).
    DATA t15 TYPE string.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    t18 = t12->token.
    DATA t20 TYPE string.
    t20 = t18->str.
    t15 = t20.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE string( ).
    DATA(t24) = t15.
    DATA(t25) = 0.
    DATA(t26) = 1.
    DATA(t27) = strlen( t24 ).
    IF t25 < 0.
      t25 = t25 + t27.
      IF t25 < 0.
        t25 = 0.
      ENDIF.
    ENDIF.
    IF t25 > t27 OR t26 <= 0.
      CLEAR t23.
    ELSE.
      IF t26 > t27 - t25.
        t26 = t27 - t25.
      ENDIF.
      t23 = t24+t25(t26).
    ENDIF.
    DATA(t28) = |!|.
    t22 = xsdbool( t23 = t28 ).
    IF t22 = abap_true.
      DATA(t29) = VALUE string( ).
      DATA t30 TYPE string.
      t30 = t15.
      DATA(t32) = VALUE string( ).
      DATA(t34) = 1.
      DATA t35 TYPE i.
      t35 = strlen( t30 ).
      DATA(t38) = strlen( t30 ).
      IF t34 < 0.
        t34 = t34 + t38.
        IF t34 < 0.
          t34 = 0.
        ENDIF.
      ENDIF.
      IF t34 > t38 OR t35 <= 0.
        CLEAR t32.
      ELSE.
        IF t35 > t38 - t34.
          t35 = t38 - t34.
        ENDIF.
        t32 = t30+t34(t35).
      ENDIF.
      t29 = t32.
      t15 = t29.
    ENDIF.
    t14 = t15.
    t11 = t14.
    DATA(t40) = strlen( t10 ).
    t9 = |{ t10 }{ t11 }|.
    DATA(t41) = |```|.
    DATA(t42) = strlen( t9 ).
    t8 = |{ t9 }{ t41 }|.
    t5 = t8.
    DATA(t43) = |\n\nType: |.
    DATA(t44) = strlen( t5 ).
    t4 = |{ t5 }{ t43 }|.
    DATA t45 TYPE string.
    DATA t46 TYPE REF TO zcl_lnt_abstract_type.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    t49 = t1->type_cba0.
    t46 = t49.
    DATA(t51) = CONV f( 0 ).
    t45 = t46->to_text( i_level = t51 ).
    DATA(t52) = strlen( t4 ).
    t3 = |{ t4 }{ t45 }|.
    t2 = t3.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57 = t1->value.
    t54 = t57.
    IF t54 IS BOUND.
      t53 = t54->truth( ).
    ENDIF.
    IF t53 = abap_true.
      DATA(t59) = VALUE string( ).
      DATA(t60) = t2.
      DATA(t61) = VALUE string( ).
      DATA(t62) = VALUE string( ).
      DATA(t63) = |\n\nValue: ```|.
      DATA(t64) = VALUE string( ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t68 = t1->value.
      t65 = t68.
      IF t65 IS BOUND.
        IF t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t70) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t71) = |src/lsp/_lookup.ts:208:35: ABAP record string conversion req|.
          t71 = t71 && |uires primitive dynamic storage|.
          t70->source_location = t71.
          RAISE EXCEPTION t70.
        ENDIF.
      ENDIF.
      IF t65 IS BOUND.
        IF t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t65->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t72) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t73) = |src/lsp/_lookup.ts:208:35: record string conversion requires|.
            t73 = t73 && | the original default Object coercion hooks|.
            t72->source_location = t73.
            RAISE EXCEPTION t72.
          ENDIF.
          READ TABLE t65->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t74) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t75) = |src/lsp/_lookup.ts:208:35: record string conversion requires|.
            t75 = t75 && | the original default Object coercion hooks|.
            t74->source_location = t75.
            RAISE EXCEPTION t74.
          ENDIF.
          READ TABLE t65->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t76) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t77) = |src/lsp/_lookup.ts:208:35: record string conversion requires|.
            t77 = t77 && | the original default Object coercion hooks|.
            t76->source_location = t77.
            RAISE EXCEPTION t76.
          ENDIF.
          t64 = `[object Object]`.
        ELSE.
          t64 = t65->to_string( ).
        ENDIF.
      ELSE.
        t64 = `undefined`.
      ENDIF.
      DATA(t78) = strlen( t63 ).
      t62 = |{ t63 }{ t64 }|.
      DATA(t79) = |```|.
      DATA(t80) = strlen( t62 ).
      t61 = |{ t62 }{ t79 }|.
      DATA(t81) = strlen( t60 ).
      t59 = |{ t60 }{ t61 }|.
      t2 = t59.
    ENDIF.
    DATA t82 TYPE abap_bool.
    DATA t83 TYPE i.
    DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t87 = t1->meta.
    t84 = t87.
    t84->load( ).
    t83 = lines( t84->items ).
    DATA(t89) = 0.
    t82 = xsdbool( t83 > t89 ).
    IF t82 = abap_true.
      DATA t90 TYPE string.
      DATA(t91) = t2.
      DATA t92 TYPE string.
      DATA(t93) = |\n\nMeta: |.
      DATA t94 TYPE string.
      DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t98 = t1->meta.
      t95 = t98.
      DATA(t100) = |, |.
      DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t101->has = abap_true.
      t101->value = t100.
      t94 = t95->join( p0 = t101 ).
      DATA(t102) = strlen( t93 ).
      t92 = |{ t93 }{ t94 }|.
      DATA(t103) = strlen( t91 ).
      t90 = |{ t91 }{ t92 }|.
      t2 = t90.
    ENDIF.
    DATA t104 TYPE abap_bool.
    DATA t105 TYPE abap_bool.
    DATA t106 TYPE REF TO zcl_lnt_abstract_type.
    DATA t109 TYPE REF TO zcl_lnt_abstract_type.
    t109 = t1->type_cba0.
    t106 = t109.
    t105 = t106->contains_void( ).
    t104 = xsdbool( t105 = abap_true ).
    IF t104 = abap_true.
      DATA t112 TYPE string.
      DATA(t113) = t2.
      DATA(t114) = |\n\nContains Void types|.
      DATA(t115) = strlen( t113 ).
      t112 = |{ t113 }{ t114 }|.
      t2 = t112.
    ENDIF.
    DATA(t116) = VALUE abap_bool( ).
    DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t118 TYPE REF TO zcl_lnt_abstract_type.
    DATA t121 TYPE REF TO zcl_lnt_abstract_type.
    t121 = t1->type_cba0.
    t118 = t121.
    t117 = t118->get_qualified_name( ).
    IF t117 IS BOUND.
      IF t117->has = abap_true.
        t116 = xsdbool( strlen( t117->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t116 = abap_true.
      DATA(t123) = VALUE string( ).
      DATA(t124) = t2.
      DATA(t125) = VALUE string( ).
      DATA(t126) = VALUE string( ).
      DATA(t127) = |\n\nQualified Type Name: ```|.
      DATA(t128) = VALUE string( ).
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t131 TYPE REF TO zcl_lnt_abstract_type.
      DATA t134 TYPE REF TO zcl_lnt_abstract_type.
      t134 = t1->type_cba0.
      t131 = t134.
      t130 = t131->get_qualified_name( ).
      t129 = t130.
      DATA(t136) = VALUE string( ).
      DATA(t137) = VALUE abap_bool( ).
      IF t129 IS INITIAL.
        t137 = abap_true.
      ELSEIF t129->has = abap_false.
        t137 = abap_true.
      ENDIF.
      IF t137 = abap_true.
        t136 = |undefined|.
      ELSE.
        DATA t140 TYPE string.
        t140 = t129->value.
        t136 = t140.
      ENDIF.
      t128 = t136.
      DATA(t142) = strlen( t127 ).
      t126 = |{ t127 }{ t128 }|.
      DATA(t143) = |```|.
      DATA(t144) = strlen( t126 ).
      t125 = |{ t126 }{ t143 }|.
      DATA(t145) = strlen( t124 ).
      t123 = |{ t124 }{ t125 }|.
      t2 = t123.
    ENDIF.
    DATA(t146) = VALUE abap_bool( ).
    DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t152 TYPE REF TO zcl_lnt_abstract_type.
    t152 = t1->type_cba0.
    DATA t155 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t156 TYPE REF TO zcl_lnt_abstract_type_data.
    t156 = t152->data_56cc.
    t155 = t156.
    DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t159) = xsdbool( t155 IS INITIAL ).
    IF t159 = abap_true.
    ELSE.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t163 TYPE REF TO zcl_lnt_abstract_type_data.
      t163 = t155.
      t162 = t163->zlnt_view_read_sr_a5933bdf8829( ).
      t158 = t162.
    ENDIF.
    t147 = t158.
    IF t147 IS BOUND.
      IF t147->has = abap_true.
        t146 = xsdbool( strlen( t147->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t146 = abap_true.
      DATA(t165) = VALUE string( ).
      DATA(t166) = t2.
      DATA(t167) = VALUE string( ).
      DATA(t168) = VALUE string( ).
      DATA(t169) = |\n\nRTTI Name: ```|.
      DATA(t170) = VALUE string( ).
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t177 TYPE REF TO zcl_lnt_abstract_type.
      t177 = t1->type_cba0.
      DATA t180 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t181 TYPE REF TO zcl_lnt_abstract_type_data.
      t181 = t177->data_56cc.
      t180 = t181.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t184) = xsdbool( t180 IS INITIAL ).
      IF t184 = abap_true.
      ELSE.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t188 TYPE REF TO zcl_lnt_abstract_type_data.
        t188 = t180.
        t187 = t188->zlnt_view_read_sr_a5933bdf8829( ).
        t183 = t187.
      ENDIF.
      t171 = t183.
      DATA(t190) = VALUE string( ).
      DATA(t191) = VALUE abap_bool( ).
      IF t171 IS INITIAL.
        t191 = abap_true.
      ELSEIF t171->has = abap_false.
        t191 = abap_true.
      ENDIF.
      IF t191 = abap_true.
        t190 = |undefined|.
      ELSE.
        DATA t194 TYPE string.
        t194 = t171->value.
        t190 = t194.
      ENDIF.
      t170 = t190.
      DATA(t196) = strlen( t169 ).
      t168 = |{ t169 }{ t170 }|.
      DATA(t197) = |```|.
      DATA(t198) = strlen( t168 ).
      t167 = |{ t168 }{ t197 }|.
      DATA(t199) = strlen( t166 ).
      t165 = |{ t166 }{ t167 }|.
      t2 = t165.
    ENDIF.
    DATA t200 TYPE abap_bool.
    DATA t201 TYPE abap_bool.
    DATA t202 TYPE REF TO zcl_lnt_abstract_type.
    DATA t205 TYPE REF TO zcl_lnt_abstract_type.
    t205 = t1->type_cba0.
    t202 = t205.
    t201 = t202->is_generic( ).
    t200 = xsdbool( t201 = abap_true ).
    IF t200 = abap_true.
      DATA t208 TYPE string.
      DATA(t209) = t2.
      DATA(t210) = |\n\nIs Generic Type|.
      DATA(t211) = strlen( t209 ).
      t208 = |{ t209 }{ t210 }|.
      t2 = t208.
    ENDIF.
    DATA(t212) = VALUE abap_bool( ).
    DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t219 TYPE REF TO zcl_lnt_abstract_type.
    t219 = t1->type_cba0.
    DATA t222 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
    t223 = t219->data_56cc.
    t222 = t223.
    DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t226) = xsdbool( t222 IS INITIAL ).
    IF t226 = abap_true.
    ELSE.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t230 TYPE REF TO zcl_lnt_abstract_type_data.
      t230 = t222.
      t229 = t230->zlnt_view_read_sr_dfbdd4b4a00f( ).
      t225 = t229.
    ENDIF.
    t213 = t225.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t234) = VALUE abap_bool( ).
    DATA(t235) = VALUE abap_bool( ).
    IF t213 IS INITIAL.
      t235 = abap_true.
    ELSEIF t213->has = abap_false.
      t235 = abap_true.
    ENDIF.
    t234 = xsdbool( t235 = abap_false ).
    t212 = t234.
    IF t212 = abap_true.
      DATA(t237) = VALUE string( ).
      DATA(t238) = t2.
      DATA(t239) = VALUE string( ).
      DATA(t240) = VALUE string( ).
      DATA(t241) = |\n\nConversion Exit: ```|.
      DATA(t242) = VALUE string( ).
      DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t249 TYPE REF TO zcl_lnt_abstract_type.
      t249 = t1->type_cba0.
      DATA t252 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t253 TYPE REF TO zcl_lnt_abstract_type_data.
      t253 = t249->data_56cc.
      t252 = t253.
      DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t256) = xsdbool( t252 IS INITIAL ).
      IF t256 = abap_true.
      ELSE.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t260 TYPE REF TO zcl_lnt_abstract_type_data.
        t260 = t252.
        t259 = t260->zlnt_view_read_sr_dfbdd4b4a00f( ).
        t255 = t259.
      ENDIF.
      t243 = t255.
      DATA(t262) = VALUE string( ).
      DATA(t263) = VALUE abap_bool( ).
      IF t243 IS INITIAL.
        t263 = abap_true.
      ELSEIF t243->has = abap_false.
        t263 = abap_true.
      ENDIF.
      IF t263 = abap_true.
        t262 = |undefined|.
      ELSE.
        DATA t266 TYPE string.
        t266 = t243->value.
        t262 = t266.
      ENDIF.
      t242 = t262.
      DATA(t268) = strlen( t241 ).
      t240 = |{ t241 }{ t242 }|.
      DATA(t269) = |```|.
      DATA(t270) = strlen( t240 ).
      t239 = |{ t240 }{ t269 }|.
      DATA(t271) = strlen( t238 ).
      t237 = |{ t238 }{ t239 }|.
      t2 = t237.
    ENDIF.
    DATA(t272) = VALUE abap_bool( ).
    DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t279 TYPE REF TO zcl_lnt_abstract_type.
    t279 = t1->type_cba0.
    DATA t282 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t283 TYPE REF TO zcl_lnt_abstract_type_data.
    t283 = t279->data_56cc.
    t282 = t283.
    DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t286) = xsdbool( t282 IS INITIAL ).
    IF t286 = abap_true.
    ELSE.
      DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t290 TYPE REF TO zcl_lnt_abstract_type_data.
      t290 = t282.
      t289 = t290->zlnt_view_read_sr_19ee0de30d00( ).
      t285 = t289.
    ENDIF.
    t273 = t285.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = VALUE abap_bool( ).
    DATA(t295) = VALUE abap_bool( ).
    IF t273 IS INITIAL.
      t295 = abap_true.
    ELSEIF t273->has = abap_false.
      t295 = abap_true.
    ENDIF.
    t294 = xsdbool( t295 = abap_false ).
    t272 = t294.
    IF t272 = abap_true.
      DATA(t297) = VALUE string( ).
      DATA(t298) = t2.
      DATA(t299) = VALUE string( ).
      DATA(t300) = VALUE string( ).
      DATA(t301) = |\n\nDDIC Name: ```|.
      DATA(t302) = VALUE string( ).
      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t309 TYPE REF TO zcl_lnt_abstract_type.
      t309 = t1->type_cba0.
      DATA t312 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t313 TYPE REF TO zcl_lnt_abstract_type_data.
      t313 = t309->data_56cc.
      t312 = t313.
      DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t316) = xsdbool( t312 IS INITIAL ).
      IF t316 = abap_true.
      ELSE.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t320 TYPE REF TO zcl_lnt_abstract_type_data.
        t320 = t312.
        t319 = t320->zlnt_view_read_sr_19ee0de30d00( ).
        t315 = t319.
      ENDIF.
      t303 = t315.
      DATA(t322) = VALUE string( ).
      DATA(t323) = VALUE abap_bool( ).
      IF t303 IS INITIAL.
        t323 = abap_true.
      ELSEIF t303->has = abap_false.
        t323 = abap_true.
      ENDIF.
      IF t323 = abap_true.
        t322 = |undefined|.
      ELSE.
        DATA t326 TYPE string.
        t326 = t303->value.
        t322 = t326.
      ENDIF.
      t302 = t322.
      DATA(t328) = strlen( t301 ).
      t300 = |{ t301 }{ t302 }|.
      DATA(t329) = |```|.
      DATA(t330) = strlen( t300 ).
      t299 = |{ t300 }{ t329 }|.
      DATA(t331) = strlen( t298 ).
      t297 = |{ t298 }{ t299 }|.
      t2 = t297.
    ENDIF.
    DATA(t332) = VALUE abap_bool( ).
    DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t339 TYPE REF TO zcl_lnt_abstract_type.
    t339 = t1->type_cba0.
    DATA t342 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t343 TYPE REF TO zcl_lnt_abstract_type_data.
    t343 = t339->data_56cc.
    t342 = t343.
    DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t346) = xsdbool( t342 IS INITIAL ).
    IF t346 = abap_true.
    ELSE.
      DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t350 TYPE REF TO zcl_lnt_abstract_type_data.
      t350 = t342.
      t349 = t350->zlnt_view_read_sr_b2a3e27508db( ).
      t345 = t349.
    ENDIF.
    t333 = t345.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t354) = VALUE abap_bool( ).
    DATA(t355) = VALUE abap_bool( ).
    IF t333 IS INITIAL.
      t355 = abap_true.
    ELSEIF t333->has = abap_false.
      t355 = abap_true.
    ENDIF.
    t354 = xsdbool( t355 = abap_false ).
    t332 = t354.
    IF t332 = abap_true.
      DATA(t357) = VALUE string( ).
      DATA(t358) = t2.
      DATA(t359) = VALUE string( ).
      DATA(t360) = |\n\nDescription: |.
      DATA(t361) = VALUE string( ).
      DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t368 TYPE REF TO zcl_lnt_abstract_type.
      t368 = t1->type_cba0.
      DATA t371 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t372 TYPE REF TO zcl_lnt_abstract_type_data.
      t372 = t368->data_56cc.
      t371 = t372.
      DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t375) = xsdbool( t371 IS INITIAL ).
      IF t375 = abap_true.
      ELSE.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t379 TYPE REF TO zcl_lnt_abstract_type_data.
        t379 = t371.
        t378 = t379->zlnt_view_read_sr_b2a3e27508db( ).
        t374 = t378.
      ENDIF.
      t362 = t374.
      DATA(t381) = VALUE string( ).
      DATA(t382) = VALUE abap_bool( ).
      IF t362 IS INITIAL.
        t382 = abap_true.
      ELSEIF t362->has = abap_false.
        t382 = abap_true.
      ENDIF.
      IF t382 = abap_true.
        t381 = |undefined|.
      ELSE.
        DATA t385 TYPE string.
        t385 = t362->value.
        t381 = t385.
      ENDIF.
      t361 = t381.
      DATA(t387) = strlen( t360 ).
      t359 = |{ t360 }{ t361 }|.
      DATA(t388) = strlen( t358 ).
      t357 = |{ t358 }{ t359 }|.
      t2 = t357.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD reference_hover.
    DATA(t1) = i_ref.
    DATA(t2) = i_scope.
    DATA(t3) = i_reg_f149.
    DATA(t4) = VALUE string( ).
    t4 = ||.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    t7 = t1->resolved.
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA(t9) = VALUE string( ).
      DATA(t10) = VALUE string( ).
      DATA(t11) = |```|.
      DATA(t12) = VALUE string( ).
      DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
      t15 = t1->resolved.
      DATA(t17) = VALUE string( ).
      DATA(t18) = VALUE string( ).
      DATA(t19) = VALUE string( ).
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      t21 = t15->token.
      DATA(t23) = VALUE string( ).
      t23 = t21->str.
      t19 = t23.
      t18 = t19.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE string( ).
      DATA(t27) = t18.
      DATA(t28) = 0.
      DATA(t29) = 1.
      DATA(t30) = strlen( t27 ).
      IF t28 < 0.
        t28 = t28 + t30.
        IF t28 < 0.
          t28 = 0.
        ENDIF.
      ENDIF.
      IF t28 > t30 OR t29 <= 0.
        CLEAR t26.
      ELSE.
        IF t29 > t30 - t28.
          t29 = t30 - t28.
        ENDIF.
        t26 = t27+t28(t29).
      ENDIF.
      DATA(t31) = |!|.
      t25 = xsdbool( t26 = t31 ).
      IF t25 = abap_true.
        DATA(t32) = VALUE string( ).
        DATA(t33) = VALUE string( ).
        t33 = t18.
        DATA(t35) = VALUE string( ).
        DATA(t37) = 1.
        DATA(t38) = VALUE i( ).
        t38 = strlen( t33 ).
        DATA(t41) = strlen( t33 ).
        IF t37 < 0.
          t37 = t37 + t41.
          IF t37 < 0.
            t37 = 0.
          ENDIF.
        ENDIF.
        IF t37 > t41 OR t38 <= 0.
          CLEAR t35.
        ELSE.
          IF t38 > t41 - t37.
            t38 = t41 - t37.
          ENDIF.
          t35 = t33+t37(t38).
        ENDIF.
        t32 = t35.
        t18 = t32.
      ENDIF.
      t17 = t18.
      t12 = t17.
      DATA(t43) = strlen( t11 ).
      t10 = |{ t11 }{ t12 }|.
      DATA(t44) = |```|.
      DATA(t45) = strlen( t10 ).
      t9 = |{ t10 }{ t44 }|.
      t4 = t9.
    ENDIF.
    DATA(t46) = VALUE string( ).
    DATA(t47) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    DATA(t49) = VALUE string( ).
    DATA(t50) = VALUE string( ).
    DATA(t51) = ||.
    DATA(t52) = VALUE string( ).
    t52 = t1->reference_type.
    DATA(t54) = strlen( t51 ).
    t50 = |{ t51 }{ t52 }|.
    DATA(t55) = | |.
    DATA(t56) = strlen( t50 ).
    t49 = |{ t50 }{ t55 }|.
    DATA(t58) = strlen( t49 ).
    t48 = |{ t49 }{ t4 }|.
    DATA(t59) = ||.
    DATA(t60) = strlen( t48 ).
    t47 = |{ t48 }{ t59 }|.
    t46 = t47.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE string( ).
    t63 = t1->reference_type.
    DATA(t65) = |Method|.
    t62 = xsdbool( t63 = t65 ).
    t61 = t62.
    IF t62 = abap_true.
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t68 TYPE REF TO zcl_lnt_ireference_extras.
      DATA t69 TYPE REF TO zcl_lnt_ireference_extras.
      t69 = t1->extra.
      t68 = t69.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t72) = xsdbool( t68 IS INITIAL ).
      IF t72 = abap_true.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t76 TYPE REF TO zcl_lnt_ireference_extras.
        t76 = t68.
        t75 = t76->oo_name.
        t71 = t75.
      ENDIF.
      t67 = t71.
      IF t67 IS BOUND.
        IF t67->has = abap_true.
          t66 = xsdbool( strlen( t67->value ) > 0 ).
        ENDIF.
      ENDIF.
      t61 = t66.
    ENDIF.
    IF t61 = abap_true.
      DATA t78 TYPE REF TO zif_lnt_interface_definition.
      DATA t79 TYPE REF TO zif_lnt_interface_definition.
      DATA t80 TYPE REF TO zif_lnt_class_definition.
      DATA(t82) = VALUE string( ).
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t84 TYPE REF TO zcl_lnt_ireference_extras.
      DATA t85 TYPE REF TO zcl_lnt_ireference_extras.
      t85 = t1->extra.
      t84 = t85.
      t83 = t84->oo_name.
      t82 = t83->value.
      t80 = t2->find_class_definition( i_name = t82 ).
      t79 ?= t80.
      t78 = t79.
      DATA(t87) = VALUE abap_bool( ).
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t87 = xsdbool( t78 IS INITIAL ).
      IF t87 = abap_true.
        DATA t94 TYPE REF TO zif_lnt_interface_definition.
        DATA(t96) = VALUE string( ).
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t99 TYPE REF TO zcl_lnt_ireference_extras.
        t99 = t1->extra.
        t98 = t99.
        t97 = t98->oo_name.
        t96 = t97->value.
        t94 = t2->find_interface_definition( i_name = t96 ).
        t78 = t94.
      ENDIF.
      DATA(t101) = VALUE abap_bool( ).
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t101 = xsdbool( t78 IS INITIAL ).
      IF t101 = abap_true.
        DATA t108 TYPE REF TO zif_lnt_interface_definition.
        DATA t109 TYPE REF TO zif_lnt_class_definition.
        DATA t110 TYPE REF TO zcl_lnt_class.
        DATA t111 TYPE REF TO zcl_lnt_class.
        DATA t112 TYPE REF TO zif_lnt_object.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t116) = |CLAS|.
        DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t117->has = abap_true.
        t117->value = t116.
        t114 = t117.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t121) = VALUE string( ).
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t123 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t124 TYPE REF TO zcl_lnt_ireference_extras.
        t124 = t1->extra.
        t123 = t124.
        t122 = t123->oo_name.
        t121 = t122->value.
        DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t126->has = abap_true.
        t126->value = t121.
        t119 = t126.
        t112 = t3->get_object( i_type_9913 = t114 i_name = t119 ).
        DATA t128 TYPE REF TO object.
        t128 = t112.
        t111 ?= t128.
        t110 = t111.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        DATA(t130) = xsdbool( t110 IS INITIAL ).
        IF t130 = abap_true.
        ELSE.
          DATA t133 TYPE REF TO zif_lnt_class_definition.
          DATA t134 TYPE REF TO zcl_lnt_class.
          t134 = t110.
          t133 = t134->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t129 = t133.
        ENDIF.
        t109 = t129.
        t108 ?= t109.
        t78 = t108.
      ENDIF.
      DATA(t136) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t136 = xsdbool( t78 IS INITIAL ).
      IF t136 = abap_true.
        DATA t144 TYPE REF TO zcl_lnt_ob_interface.
        DATA t145 TYPE REF TO zcl_lnt_ob_interface.
        DATA t146 TYPE REF TO zif_lnt_object.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t150) = |INTF|.
        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t151->has = abap_true.
        t151->value = t150.
        t148 = t151.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t155) = VALUE string( ).
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t157 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t158 TYPE REF TO zcl_lnt_ireference_extras.
        t158 = t1->extra.
        t157 = t158.
        t156 = t157->oo_name.
        t155 = t156->value.
        DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t160->has = abap_true.
        t160->value = t155.
        t153 = t160.
        t146 = t3->get_object( i_type_9913 = t148 i_name = t153 ).
        DATA t162 TYPE REF TO object.
        t162 = t146.
        t145 ?= t162.
        t144 = t145.
        DATA t163 TYPE REF TO zif_lnt_interface_definition.
        DATA(t164) = xsdbool( t144 IS INITIAL ).
        IF t164 = abap_true.
        ELSE.
          DATA t171 TYPE REF TO zif_lnt_interface_definition.
          t171 = t144->def.
          t163 = t171.
        ENDIF.
        t78 = t163.
      ENDIF.
      DATA(t173) = VALUE string( ).
      DATA(t174) = t46.
      DATA(t175) = VALUE string( ).
      DATA(t176) = |\n\n|.
      DATA(t177) = VALUE string( ).
      DATA(t178) = VALUE string( ).
      DATA t180 TYPE REF TO zcl_lnt_fi_identifier.
      t180 = t1->position_7b94.
      DATA(t182) = VALUE string( ).
      DATA(t183) = VALUE string( ).
      DATA(t184) = VALUE string( ).
      DATA t186 TYPE REF TO zcl_lnt_abstract_token.
      t186 = t180->token.
      DATA(t188) = VALUE string( ).
      t188 = t186->str.
      t184 = t188.
      t183 = t184.
      DATA(t190) = VALUE abap_bool( ).
      DATA(t191) = VALUE string( ).
      DATA(t192) = t183.
      DATA(t193) = 0.
      DATA(t194) = 1.
      DATA(t195) = strlen( t192 ).
      IF t193 < 0.
        t193 = t193 + t195.
        IF t193 < 0.
          t193 = 0.
        ENDIF.
      ENDIF.
      IF t193 > t195 OR t194 <= 0.
        CLEAR t191.
      ELSE.
        IF t194 > t195 - t193.
          t194 = t195 - t193.
        ENDIF.
        t191 = t192+t193(t194).
      ENDIF.
      DATA(t196) = |!|.
      t190 = xsdbool( t191 = t196 ).
      IF t190 = abap_true.
        DATA(t197) = VALUE string( ).
        DATA(t198) = VALUE string( ).
        t198 = t183.
        DATA(t200) = VALUE string( ).
        DATA(t202) = 1.
        DATA(t203) = VALUE i( ).
        t203 = strlen( t198 ).
        DATA(t206) = strlen( t198 ).
        IF t202 < 0.
          t202 = t202 + t206.
          IF t202 < 0.
            t202 = 0.
          ENDIF.
        ENDIF.
        IF t202 > t206 OR t203 <= 0.
          CLEAR t200.
        ELSE.
          IF t203 > t206 - t202.
            t203 = t206 - t202.
          ENDIF.
          t200 = t198+t202(t203).
        ENDIF.
        t197 = t200.
        t183 = t197.
      ENDIF.
      t182 = t183.
      t178 = t182.
      t177 = zcl_lnt_lsp_lookup=>hover_method( i_method = t178 i_class_def = t78 ).
      DATA(t209) = strlen( t176 ).
      t175 = |{ t176 }{ t177 }|.
      DATA(t210) = strlen( t174 ).
      t173 = |{ t174 }{ t175 }|.
      t46 = t173.
    ELSE.
      DATA(t211) = VALUE abap_bool( ).
      DATA t212 TYPE REF TO zcl_lnt_fi_identifier.
      t212 = t1->resolved.
      t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_typed_identifier ).
      IF t211 = abap_true.
        DATA(t214) = VALUE string( ).
        DATA(t215) = t46.
        DATA(t216) = VALUE string( ).
        DATA(t217) = |\n\n|.
        DATA(t218) = VALUE string( ).
        DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t220 TYPE REF TO zcl_lnt_fi_identifier.
        t220 = t1->resolved.
        t219 ?= t220.
        t218 = zcl_lnt_lsp_lookup=>dump_type( i_variable = t219 ).
        DATA(t222) = strlen( t217 ).
        t216 = |{ t217 }{ t218 }|.
        DATA(t223) = strlen( t215 ).
        t214 = |{ t215 }{ t216 }|.
        t46 = t214.
      ELSE.
        DATA(t224) = VALUE abap_bool( ).
        DATA(t225) = VALUE string( ).
        t225 = t1->reference_type.
        DATA(t227) = |Builtin Method|.
        t224 = xsdbool( t225 = t227 ).
        IF t224 = abap_true.
          DATA t228 TYPE REF TO zif_lnt_method_definition.
          DATA t229 TYPE REF TO zif_lnt_method_definition.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t233 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t234 TYPE REF TO zcl_lnt_fi_identifier.
          t234 = t1->resolved.
          t233 = t234.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t237) = xsdbool( t233 IS INITIAL ).
          IF t237 = abap_true.
          ELSE.
            DATA(t240) = VALUE string( ).
            DATA(t244) = VALUE string( ).
            DATA(t245) = VALUE string( ).
            DATA(t246) = VALUE string( ).
            DATA t248 TYPE REF TO zcl_lnt_abstract_token.
            t248 = t233->token.
            DATA(t250) = VALUE string( ).
            t250 = t248->str.
            t246 = t250.
            t245 = t246.
            DATA(t252) = VALUE abap_bool( ).
            DATA(t253) = VALUE string( ).
            DATA(t254) = t245.
            DATA(t255) = 0.
            DATA(t256) = 1.
            DATA(t257) = strlen( t254 ).
            IF t255 < 0.
              t255 = t255 + t257.
              IF t255 < 0.
                t255 = 0.
              ENDIF.
            ENDIF.
            IF t255 > t257 OR t256 <= 0.
              CLEAR t253.
            ELSE.
              IF t256 > t257 - t255.
                t256 = t257 - t255.
              ENDIF.
              t253 = t254+t255(t256).
            ENDIF.
            DATA(t258) = |!|.
            t252 = xsdbool( t253 = t258 ).
            IF t252 = abap_true.
              DATA(t259) = VALUE string( ).
              DATA(t260) = VALUE string( ).
              t260 = t245.
              DATA(t262) = VALUE string( ).
              DATA(t264) = 1.
              DATA(t265) = VALUE i( ).
              t265 = strlen( t260 ).
              DATA(t268) = strlen( t260 ).
              IF t264 < 0.
                t264 = t264 + t268.
                IF t264 < 0.
                  t264 = 0.
                ENDIF.
              ENDIF.
              IF t264 > t268 OR t265 <= 0.
                CLEAR t262.
              ELSE.
                IF t265 > t268 - t264.
                  t265 = t268 - t264.
                ENDIF.
                t262 = t260+t264(t265).
              ENDIF.
              t259 = t262.
              t245 = t259.
            ENDIF.
            t244 = t245.
            t240 = t244.
            DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t270->has = abap_true.
            t270->value = t240.
            t236 = t270.
          ENDIF.
          t231 = t236.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t272) = VALUE abap_bool( ).
          IF t231 IS INITIAL.
            t272 = abap_true.
          ELSEIF t231->has = abap_false.
            t272 = abap_true.
          ENDIF.
          IF t272 = abap_true.
          ELSE.
            DATA(t275) = VALUE string( ).
            DATA(t276) = VALUE string( ).
            t276 = t231->value.
            DATA(t278) = strlen( t276 ).
            t275 = t276.
            IF t275 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t275 TO UPPER CASE.
            ELSE.
              t275 = zlnt_runtime_uppe_91169605024d=>full( t275 ).
            ENDIF.
            DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t279->has = abap_true.
            t279->value = t275.
            t271 = t279.
          ENDIF.
          t230 = t271.
          t229 = zcl_lnt_built_in=>search_builtin( i_name = t230 ).
          t228 = t229.
          DATA(t280) = VALUE abap_bool( ).
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t280 = xsdbool( t228 IS INITIAL ).
          IF t280 = abap_true.
            result = |Error: builtin method signature not found|.
            RETURN.
          ENDIF.
          DATA(t288) = VALUE string( ).
          DATA(t289) = t46.
          DATA(t290) = VALUE string( ).
          DATA(t291) = |\n\n|.
          DATA(t292) = VALUE string( ).
          DATA t293 TYPE REF TO zif_lnt_method_definition.
          t293 = t228.
          t292 = zcl_lnt_lsp_lookup=>method_parameters( i_method_def_15b7 = t293 ).
          DATA(t295) = strlen( t291 ).
          t290 = |{ t291 }{ t292 }|.
          DATA(t296) = strlen( t289 ).
          t288 = |{ t289 }{ t290 }|.
          t46 = t288.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t297) = VALUE abap_bool( ).
    DATA t298 TYPE REF TO zcl_lnt_fi_identifier.
    t298 = t1->resolved.
    t297 = xsdbool( t298 IS BOUND ).
    IF t297 = abap_true.
      DATA(t300) = VALUE string( ).
      DATA(t301) = t46.
      DATA(t302) = |\n\n(Resolved)|.
      DATA(t303) = strlen( t301 ).
      t300 = |{ t301 }{ t302 }|.
      t46 = t300.
    ENDIF.
    DATA(t304) = VALUE abap_bool( ).
    DATA(t305) = VALUE abap_bool( ).
    DATA t307 TYPE REF TO zcl_lnt_ireference_extras.
    t307 = t1->extra.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t311) = VALUE abap_bool( ).
    DATA(t312) = xsdbool( t307 IS INITIAL ).
    t311 = xsdbool( t312 = abap_false ).
    t305 = t311.
    t304 = t305.
    IF t305 = abap_true.
      DATA(t314) = VALUE abap_bool( ).
      DATA(t315) = VALUE i( ).
      DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t318 TYPE REF TO zcl_lnt_ireference_extras.
      DATA t319 TYPE REF TO zcl_lnt_ireference_extras.
      t319 = t1->extra.
      t318 = t319.
      IF t318 IS BOUND.
        DATA t321 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t322 TYPE REF TO object.
        t322 = t318.
        TRY.
            t317 ?= t322.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS NOT BOUND.
          TRY.
              t321 ?= t318.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t321 IS BOUND.
            t317 = t321->source( ).
          ENDIF.
          IF t317 IS NOT BOUND.
            CREATE OBJECT t317.
            t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t317->oval = t318.
          ENDIF.
        ENDIF.
      ENDIF.
      t316 = zlnt_runtime_ownk_4497b85e405d=>keys( t317 ).
      t316->load( ).
      t315 = lines( t316->items ).
      DATA(t323) = 0.
      t314 = xsdbool( t315 > t323 ).
      t304 = t314.
    ENDIF.
    IF t304 = abap_true.
      DATA(t324) = VALUE string( ).
      DATA(t325) = t46.
      DATA(t326) = VALUE string( ).
      DATA(t327) = |\n\nExtra: |.
      DATA(t328) = VALUE string( ).
      DATA t329 TYPE REF TO zcl_lnt_ireference_extras.
      DATA t330 TYPE REF TO zcl_lnt_ireference_extras.
      t330 = t1->extra.
      t329 = t330.
      DATA t332 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
      CREATE OBJECT t332.
      t328 = t332->zlnt_json_write_s_16b9e184e975( t329 ).
      IF t328 IS INITIAL.
        RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
      ENDIF.
      DATA(t333) = strlen( t327 ).
      t326 = |{ t327 }{ t328 }|.
      DATA(t334) = strlen( t325 ).
      t324 = |{ t325 }{ t326 }|.
      t46 = t324.
    ENDIF.
    result = t46.

  ENDMETHOD.

  METHOD hover_method.
    DATA(t1) = i_method.
    DATA(t2) = i_class_def.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t2 IS INITIAL ).
    IF t3 = abap_true.
      result = |class not found|.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zif_lnt_method_definition.
    DATA t12 TYPE REF TO zif_lnt_method_definition.
    DATA t13 TYPE REF TO zif_lnt_method_definitions.
    DATA t14 TYPE REF TO zif_lnt_interface_definition.
    t14 = t2.
    t13 = t14->get_method_definitions( ).
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = t1.
    t16 = t19.
    t12 = t13->get_by_name( i_name = t16 ).
    t11 = t12.
    DATA(t21) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21 = xsdbool( t11 IS INITIAL ).
    IF t21 = abap_true.
      result = |method not found in definition|.
      RETURN.
    ENDIF.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zif_lnt_method_definition.
    t30 = t11.
    t29 = zcl_lnt_lsp_lookup=>method_parameters( i_method_def_15b7 = t30 ).
    result = t29.

  ENDMETHOD.

  METHOD visibility_to_string.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE abap_bool.
    DATA(t4) = CONV f( 3 ).
    t2 = xsdbool( t1 = t4 ).
    IF t2 = abap_true.
      result = |PUBLIC|.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA(t8) = CONV f( 2 ).
      t6 = xsdbool( t1 = t8 ).
      IF t6 = abap_true.
        result = |PROTECTED|.
        RETURN.
      ELSE.
        DATA t10 TYPE abap_bool.
        DATA(t12) = CONV f( 1 ).
        t10 = xsdbool( t1 = t12 ).
        IF t10 = abap_true.
          result = |PRIVATE|.
          RETURN.
        ELSE.
          result = ||.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD method_parameters.
    DATA(t1) = i_method_def_15b7.
    DATA t2 TYPE string.
    t2 = ||.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE f.
    t6 = t1->get_visibility( ).
    t5 = zcl_lnt_lsp_lookup=>visibility_to_string( i_visibility_5c1f = t6 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( strlen( t4 ) > 0 ).
    IF t8 = abap_true.
      DATA t10 TYPE string.
      DATA(t11) = t2.
      DATA t12 TYPE string.
      DATA(t14) = |\n\n|.
      DATA(t15) = strlen( t4 ).
      t12 = |{ t4 }{ t14 }|.
      DATA(t16) = strlen( t11 ).
      t10 = |{ t11 }{ t12 }|.
      t2 = t10.
    ENDIF.
    DATA t17 TYPE REF TO zif_lnt_method_parameters.
    DATA t18 TYPE REF TO zif_lnt_method_parameters.
    t18 = t1->get_parameters( ).
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t17->get_importing( ).
    t20 = t21.
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE i.
    t20->load( ).
    t24 = lines( t20->items ).
    DATA(t26) = 0.
    t23 = xsdbool( t24 > t26 ).
    IF t23 = abap_true.
      DATA t27 TYPE string.
      DATA(t28) = t2.
      DATA(t29) = |IMPORTING\n|.
      DATA(t30) = strlen( t28 ).
      t27 = |{ t28 }{ t29 }|.
      t2 = t27.
      DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t33 TYPE REF TO object.
      DATA(t34) = VALUE i( ).
      DO.
        t20->load( ).
        IF t34 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t20->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t37 TYPE string.
        DATA(t38) = t2.
        DATA t39 TYPE string.
        t39 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t32 ).
        DATA(t41) = strlen( t38 ).
        t37 = |{ t38 }{ t39 }|.
        t2 = t37.
      ENDDO.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t43 = t17->get_exporting( ).
    t42 = t43.
    DATA t45 TYPE abap_bool.
    DATA t46 TYPE i.
    t42->load( ).
    t46 = lines( t42->items ).
    DATA(t48) = 0.
    t45 = xsdbool( t46 > t48 ).
    IF t45 = abap_true.
      DATA t49 TYPE string.
      DATA(t50) = t2.
      DATA(t51) = |EXPORTING\n|.
      DATA(t52) = strlen( t50 ).
      t49 = |{ t50 }{ t51 }|.
      t2 = t49.
      DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t55 TYPE REF TO object.
      DATA(t56) = VALUE i( ).
      DO.
        t42->load( ).
        IF t56 >= lines( t42->items ).
          EXIT.
        ENDIF.
        CLEAR t55.
        READ TABLE t42->items INDEX t56 + 1 INTO t55.
        t56 = t56 + 1.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        CLEAR t54.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t57 ?= t55.
          DATA t58 TYPE REF TO object.
          t58 = t57->as_ref( ).
          t54 ?= t58.
        ELSE.
          t54 ?= t55.
        ENDIF.
        DATA t59 TYPE string.
        DATA(t60) = t2.
        DATA t61 TYPE string.
        t61 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t54 ).
        DATA(t63) = strlen( t60 ).
        t59 = |{ t60 }{ t61 }|.
        t2 = t59.
      ENDDO.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t65 = t17->get_changing( ).
    t64 = t65.
    DATA t67 TYPE abap_bool.
    DATA t68 TYPE i.
    t64->load( ).
    t68 = lines( t64->items ).
    DATA(t70) = 0.
    t67 = xsdbool( t68 > t70 ).
    IF t67 = abap_true.
      DATA t71 TYPE string.
      DATA(t72) = t2.
      DATA(t73) = |CHANGING\n|.
      DATA(t74) = strlen( t72 ).
      t71 = |{ t72 }{ t73 }|.
      t2 = t71.
      DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t77 TYPE REF TO object.
      DATA(t78) = VALUE i( ).
      DO.
        t64->load( ).
        IF t78 >= lines( t64->items ).
          EXIT.
        ENDIF.
        CLEAR t77.
        READ TABLE t64->items INDEX t78 + 1 INTO t77.
        t78 = t78 + 1.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        CLEAR t76.
        IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t79 ?= t77.
          DATA t80 TYPE REF TO object.
          t80 = t79->as_ref( ).
          t76 ?= t80.
        ELSE.
          t76 ?= t77.
        ENDIF.
        DATA t81 TYPE string.
        DATA(t82) = t2.
        DATA t83 TYPE string.
        t83 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t76 ).
        DATA(t85) = strlen( t82 ).
        t81 = |{ t82 }{ t83 }|.
        t2 = t81.
      ENDDO.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
    t87 = t17->get_returning( ).
    t86 = t87.
    DATA t89 TYPE abap_bool.
    t89 = xsdbool( t86 IS BOUND ).
    IF t89 = abap_true.
      DATA t91 TYPE string.
      DATA(t92) = t2.
      DATA t93 TYPE string.
      DATA(t94) = |RETURNING\n|.
      DATA t95 TYPE string.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      t96 = t86.
      t95 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t96 ).
      DATA(t98) = strlen( t94 ).
      t93 = |{ t94 }{ t95 }|.
      DATA(t99) = strlen( t92 ).
      t91 = |{ t92 }{ t93 }|.
      t2 = t91.
    ENDIF.
    DATA t100 TYPE abap_bool.
    DATA t101 TYPE i.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t102 = t1->get_raising( ).
    t102->load( ).
    t101 = lines( t102->items ).
    DATA(t104) = 0.
    t100 = xsdbool( t101 > t104 ).
    IF t100 = abap_true.
      DATA t105 TYPE string.
      DATA(t106) = t2.
      DATA(t107) = |RAISING\n|.
      DATA(t108) = strlen( t106 ).
      t105 = |{ t106 }{ t107 }|.
      t2 = t105.
      DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t109 = t1->get_raising( ).
      DATA(t111) = VALUE string( ).
      t109->dense( ).
      DATA(t112) = VALUE i( ).
      DO.
        t109->load( ).
        IF t112 >= lines( t109->items ).
          EXIT.
        ENDIF.
        CLEAR t111.
        READ TABLE t109->items INDEX t112 + 1 INTO t111.
        IF t109->has( t112 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t112 = t112 + 1.
        DATA t113 TYPE string.
        DATA(t114) = t2.
        DATA t115 TYPE string.
        DATA t116 TYPE string.
        DATA(t117) = |* |.
        DATA(t119) = strlen( t117 ).
        t116 = |{ t117 }{ t111 }|.
        DATA(t120) = |\n|.
        DATA(t121) = strlen( t116 ).
        t115 = |{ t116 }{ t120 }|.
        DATA(t122) = strlen( t114 ).
        t113 = |{ t114 }{ t115 }|.
        t2 = t113.
      ENDDO.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD single_parameter.
    DATA(t1) = i_p.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t7 = t1->meta.
    t4 = t7.
    DATA(t9) = |, |.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = t9.
    t3 = t4->join( p0 = t10 ).
    t2 = t3.
    DATA t11 TYPE abap_bool.
    DATA(t13) = ||.
    t11 = xsdbool( t2 <> t13 ).
    IF t11 = abap_true.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA(t16) = |(Meta: |.
      DATA(t18) = strlen( t16 ).
      t15 = |{ t16 }{ t2 }|.
      DATA(t19) = |)|.
      DATA(t20) = strlen( t15 ).
      t14 = |{ t15 }{ t19 }|.
      t2 = t14.
    ENDIF.
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA(t23) = VALUE string( ).
    DATA(t24) = VALUE string( ).
    DATA(t25) = VALUE string( ).
    DATA(t26) = |* |.
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
    t28 = t1.
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE string.
    DATA t34 TYPE REF TO zcl_lnt_abstract_token.
    t34 = t28->token.
    DATA t36 TYPE string.
    t36 = t34->str.
    t31 = t36.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE string( ).
    DATA(t40) = t31.
    DATA(t41) = 0.
    DATA(t42) = 1.
    DATA(t43) = strlen( t40 ).
    IF t41 < 0.
      t41 = t41 + t43.
      IF t41 < 0.
        t41 = 0.
      ENDIF.
    ENDIF.
    IF t41 > t43 OR t42 <= 0.
      CLEAR t39.
    ELSE.
      IF t42 > t43 - t41.
        t42 = t43 - t41.
      ENDIF.
      t39 = t40+t41(t42).
    ENDIF.
    DATA(t44) = |!|.
    t38 = xsdbool( t39 = t44 ).
    IF t38 = abap_true.
      DATA(t45) = VALUE string( ).
      DATA t46 TYPE string.
      t46 = t31.
      DATA(t48) = VALUE string( ).
      DATA(t50) = 1.
      DATA t51 TYPE i.
      t51 = strlen( t46 ).
      DATA(t54) = strlen( t46 ).
      IF t50 < 0.
        t50 = t50 + t54.
        IF t50 < 0.
          t50 = 0.
        ENDIF.
      ENDIF.
      IF t50 > t54 OR t51 <= 0.
        CLEAR t48.
      ELSE.
        IF t51 > t54 - t50.
          t51 = t54 - t50.
        ENDIF.
        t48 = t46+t50(t51).
      ENDIF.
      t45 = t48.
      t31 = t45.
    ENDIF.
    t30 = t31.
    t27 = t30.
    DATA(t56) = strlen( t26 ).
    t25 = |{ t26 }{ t27 }|.
    DATA(t58) = strlen( t25 ).
    t24 = |{ t25 }{ t2 }|.
    DATA(t59) = | TYPE |.
    DATA(t60) = strlen( t24 ).
    t23 = |{ t24 }{ t59 }|.
    DATA t61 TYPE string.
    DATA t62 TYPE REF TO zcl_lnt_abstract_type.
    DATA t65 TYPE REF TO zcl_lnt_abstract_type.
    t65 = t1->type_cba0.
    t62 = t65.
    DATA(t67) = CONV f( 1 ).
    t61 = t62->to_text( i_level = t67 ).
    DATA(t68) = strlen( t23 ).
    t22 = |{ t23 }{ t61 }|.
    DATA(t69) = |\n\n|.
    DATA(t70) = strlen( t22 ).
    t21 = |{ t22 }{ t69 }|.
    result = t21.

  ENDMETHOD.

  METHOD search_references.
    DATA(t1) = i_scope.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    t6 = t1->get_data( ).
    t5 = t6->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE REF TO zcl_lnt_position.
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      t16 = t8->position_7b94.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      t20 = t16->token.
      DATA t22 TYPE REF TO zcl_lnt_position.
      t22 = t20->start.
      t14 = t22.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_position.
      t27 = t2->start.
      t24 = t27.
      t13 = t14->equals( i_p = t24 ).
      IF t13 = abap_true.
        t3->load( ).
        APPEND t8 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA t31 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t32 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t32 = t1->get_parent( ).
    t31 = t32.
    DATA t34 TYPE abap_bool.
    t34 = xsdbool( t31 IS BOUND ).
    IF t34 = abap_true.
      DATA(t36) = VALUE i( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t38 = t31.
      t37 = zcl_lnt_lsp_lookup=>search_references( i_scope = t38 i_token = t2 ).
      DATA t41 TYPE REF TO zcl_lnt_ireference.
      DATA t42 TYPE REF TO object.
      DATA(t43) = VALUE i( ).
      DO.
        t37->load( ).
        IF t43 >= lines( t37->items ).
          EXIT.
        ENDIF.
        CLEAR t42.
        READ TABLE t37->items INDEX t43 + 1 INTO t42.
        t43 = t43 + 1.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        CLEAR t41.
        IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t44 ?= t42.
          DATA t45 TYPE REF TO object.
          t45 = t44->as_ref( ).
          t41 ?= t45.
        ELSE.
          t41 ?= t42.
        ENDIF.
        t3->load( ).
        APPEND t41 TO t3->items.
        t3->save( ).
      ENDDO.
      DATA t48 TYPE i.
      t3->load( ).
      t48 = lines( t3->items ).
      t36 = t48.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD abap_file_result.
    DATA t2 TYPE REF TO zcl_lnt_location.
    DATA t3 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_abstract_file.
    t5 = i_abap.
    DATA t7 TYPE string.
    t7 = t5->filename.
    t3 = t7.
    DATA t9 TYPE REF TO zcl_lnt_range.
    DATA(t12) = 0.
    DATA(t14) = 0.
    DATA(t16) = 0.
    DATA(t18) = 0.
    DATA t19 TYPE REF TO zcl_lnt_range.
    DATA t20 TYPE REF TO zcl_lnt_no_position.
    DATA t21 TYPE REF TO zcl_lnt_no_position.
    DATA t22 TYPE f.
    t22 = t12.
    DATA t24 TYPE f.
    t24 = t14.
    DATA(t26) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t26->has = abap_true.
    t26->value = t24.
    t21 = NEW zcl_lnt_no_position( i_line = t22 i_character = t26 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t27 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t28 ).
    ENDIF.
    t20 = t21.
    DATA t29 TYPE REF TO zcl_lnt_no_position.
    DATA t30 TYPE REF TO zcl_lnt_no_position.
    DATA t31 TYPE f.
    t31 = t16.
    DATA t33 TYPE f.
    t33 = t18.
    DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t35->has = abap_true.
    t35->value = t33.
    t30 = NEW zcl_lnt_no_position( i_line = t31 i_character = t35 ).
    CREATE OBJECT t30->zlnt_view_ownkeys_b0e8086400eb.
    t30->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t37 ).
    ENDIF.
    t29 = t30.
    t19 = NEW zcl_lnt_range( i_start = t20 i_end = t29 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t39 ).
    ENDIF.
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t40) = |start|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    DATA(t42) = |end|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    t9 = t19.
    t2 = NEW zcl_lnt_location( i_uri = t3 i_range = t9 ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |uri|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    DATA(t48) = |range|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_method_definition.
    DATA(t1) = i_found.
    DATA(t2) = i_scope.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t2 IS INITIAL ).
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE string.
    DATA t15 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t16 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t16 = t2.
    t15 = t16->get_identifier( ).
    t14 = t15->stype.
    DATA(t18) = |class_definition|.
    t13 = xsdbool( t14 <> t18 ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t22 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t22 = t2.
      t21 = t22->get_identifier( ).
      t20 = t21->stype.
      DATA(t24) = |interface|.
      t19 = xsdbool( t20 <> t24 ).
      t12 = t19.
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO zif_lnt_statement.
      DATA t28 TYPE REF TO zcl_lnt_statement_node.
      t28 = t1->snode.
      t27 = t28->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_method_def ).
      t25 = xsdbool( t26 = abap_false ).
      t11 = t25.
    ENDIF.
    IF t11 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    t35 = t1->snode.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t34 = t35->find_first_expression( i_type_9913 = t37 ).
    t33 = t34.
    DATA t38 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t39) = xsdbool( t33 IS INITIAL ).
    IF t39 = abap_true.
    ELSE.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      t43 = t33.
      t42 = t43->get_first_token( ).
      t38 = t42.
    ENDIF.
    t31 = t38.
    DATA(t45) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t45 = xsdbool( t31 IS INITIAL ).
    IF t45 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t53 TYPE abap_bool.
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA t55 TYPE REF TO zcl_lnt_statement_node.
    t55 = t1->snode.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167.
    t54 = t55->find_first_expression( i_type_9913 = t57 ).
    t53 = xsdbool( t54 IS BOUND ).
    IF t53 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t59 TYPE abap_bool.
    DATA t60 TYPE abap_bool.
    DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t67 TYPE REF TO zcl_lnt_position.
    t67 = t31->start.
    DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t69 = t67->col.
    t61 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t75 TYPE REF TO zcl_lnt_abstract_token.
    t75 = t1->token.
    DATA t77 TYPE REF TO zcl_lnt_position.
    t77 = t75->start.
    DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t79 = t77->col.
    t71 = t79.
    t60 = zlnt_runtime_numb_290eb04a9758=>compare( left = t61 right = t71 op = `!=` ).
    t59 = t60.
    IF t60 = abap_false.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE f.
      DATA t88 TYPE REF TO zcl_lnt_position.
      t88 = t31->start.
      DATA t90 TYPE f.
      t90 = t88->row.
      t82 = t90.
      DATA t92 TYPE f.
      DATA t96 TYPE REF TO zcl_lnt_abstract_token.
      t96 = t1->token.
      DATA t98 TYPE REF TO zcl_lnt_position.
      t98 = t96->start.
      DATA t100 TYPE f.
      t100 = t98->row.
      t92 = t100.
      t81 = xsdbool( t82 <> t92 ).
      t59 = t81.
    ENDIF.
    IF t59 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t103 TYPE abap_bool.
    DATA t104 TYPE string.
    DATA t105 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t106 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t106 = t2.
    t105 = t106->get_identifier( ).
    t104 = t105->stype.
    DATA(t108) = |class_definition|.
    t103 = xsdbool( t104 = t108 ).
    IF t103 = abap_true.
      DATA t111 TYPE REF TO zif_lnt_method_definitions.
      DATA t113 TYPE REF TO zif_lnt_class_definition.
      DATA t115 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t116 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t117 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t117 = t2.
      t116 = t117->get_parent( ).
      t115 = t116.
      DATA t119 TYPE REF TO zif_lnt_class_definition.
      DATA(t120) = xsdbool( t115 IS INITIAL ).
      IF t120 = abap_true.
      ELSE.
        DATA t123 TYPE REF TO zif_lnt_class_definition.
        DATA t124 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t124 = t115.
        DATA t126 TYPE string.
        DATA t127 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t128 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t128 = t2.
        t127 = t128->get_identifier( ).
        t126 = t127->sname.
        t123 = t124->find_class_definition( i_name = t126 ).
        t119 = t123.
      ENDIF.
      t113 = t119.
      DATA t130 TYPE REF TO zif_lnt_method_definitions.
      DATA(t131) = xsdbool( t113 IS INITIAL ).
      IF t131 = abap_true.
      ELSE.
        DATA t134 TYPE REF TO zif_lnt_method_definitions.
        DATA t135 TYPE REF TO zif_lnt_class_definition.
        t135 = t113.
        t134 = t135->get_method_definitions( ).
        t130 = t134.
      ENDIF.
      t111 = t130.
      DATA t137 TYPE REF TO zif_lnt_method_definition.
      DATA(t138) = xsdbool( t111 IS INITIAL ).
      IF t138 = abap_true.
      ELSE.
        DATA t141 TYPE REF TO zif_lnt_method_definition.
        DATA t142 TYPE REF TO zif_lnt_method_definitions.
        t142 = t111.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t150 TYPE string.
        t150 = t31->str.
        DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t152->has = abap_true.
        t152->value = t150.
        t144 = t152.
        t141 = t142->get_by_name( i_name = t144 ).
        t137 = t141.
      ENDIF.
      DATA t154 TYPE REF TO zif_lnt_method_definition.
      t154 = t137.
      DATA t156 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t157) = xsdbool( t154 IS INITIAL ).
      IF t157 = abap_true.
      ELSE.
        DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t161 TYPE REF TO zif_lnt_method_definition.
        t161 = t154.
        t160 ?= t161.
        t156 = t160.
      ENDIF.
      result = t156.
      RETURN.
    ELSE.
      DATA t165 TYPE REF TO zif_lnt_method_definitions.
      DATA t167 TYPE REF TO zif_lnt_interface_definition.
      DATA t169 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t170 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t171 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t171 = t2.
      t170 = t171->get_parent( ).
      t169 = t170.
      DATA t173 TYPE REF TO zif_lnt_interface_definition.
      DATA(t174) = xsdbool( t169 IS INITIAL ).
      IF t174 = abap_true.
      ELSE.
        DATA t177 TYPE REF TO zif_lnt_interface_definition.
        DATA t178 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t178 = t169.
        DATA t180 TYPE string.
        DATA t181 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t182 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t182 = t2.
        t181 = t182->get_identifier( ).
        t180 = t181->sname.
        t177 = t178->find_interface_definition( i_name = t180 ).
        t173 = t177.
      ENDIF.
      t167 = t173.
      DATA t184 TYPE REF TO zif_lnt_method_definitions.
      DATA(t185) = xsdbool( t167 IS INITIAL ).
      IF t185 = abap_true.
      ELSE.
        DATA t188 TYPE REF TO zif_lnt_method_definitions.
        DATA t189 TYPE REF TO zif_lnt_interface_definition.
        t189 = t167.
        t188 = t189->get_method_definitions( ).
        t184 = t188.
      ENDIF.
      t165 = t184.
      DATA t191 TYPE REF TO zif_lnt_method_definition.
      DATA(t192) = xsdbool( t165 IS INITIAL ).
      IF t192 = abap_true.
      ELSE.
        DATA t195 TYPE REF TO zif_lnt_method_definition.
        DATA t196 TYPE REF TO zif_lnt_method_definitions.
        t196 = t165.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t204 TYPE string.
        t204 = t31->str.
        DATA(t206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t206->has = abap_true.
        t206->value = t204.
        t198 = t206.
        t195 = t196->get_by_name( i_name = t198 ).
        t191 = t195.
      ENDIF.
      DATA t208 TYPE REF TO zif_lnt_method_definition.
      t208 = t191.
      DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t211) = xsdbool( t208 IS INITIAL ).
      IF t211 = abap_true.
      ELSE.
        DATA t214 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t215 TYPE REF TO zif_lnt_method_definition.
        t215 = t208.
        t214 ?= t215.
        t210 = t214.
      ENDIF.
      result = t210.

    ENDIF.
  ENDMETHOD.

  METHOD find_function_module.
    DATA(t1) = i_found.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zif_lnt_statement.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    t5 = t1->snode.
    t4 = t5->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_st_call_function ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    t10 = t1->snode.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
    t9 = t10->find_first_expression( i_type_9913 = t12 ).
    t8 = t9.
    DATA(t13) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t13 = xsdbool( t8 IS INITIAL ).
    IF t13 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    t23 = t8.
    t22 = t23->get_first_token( ).
    t21 = t22.
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE abap_bool.
    DATA t27 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t32 TYPE REF TO zcl_lnt_position.
    t32 = t21->start.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t34 = t32->col.
    t27 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    t40 = t1->token.
    DATA t42 TYPE REF TO zcl_lnt_position.
    t42 = t40->start.
    DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t44 = t42->col.
    t36 = t44.
    t26 = zlnt_runtime_numb_290eb04a9758=>compare( left = t27 right = t36 op = `!=` ).
    t25 = t26.
    IF t26 = abap_false.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE f.
      DATA t52 TYPE REF TO zcl_lnt_position.
      t52 = t21->start.
      DATA t54 TYPE f.
      t54 = t52->row.
      t47 = t54.
      DATA t56 TYPE f.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      t60 = t1->token.
      DATA t62 TYPE REF TO zcl_lnt_position.
      t62 = t60->start.
      DATA t64 TYPE f.
      t64 = t62->row.
      t56 = t64.
      t46 = xsdbool( t47 <> t56 ).
      t25 = t46.
    ENDIF.
    IF t25 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t72 TYPE string.
    t72 = t21->str.
    DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t74->has = abap_true.
    t74->value = t72.
    result = t74.

  ENDMETHOD.

  METHOD find_include.
    DATA(t1) = i_found.
    DATA(t2) = i_reg_f149.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_statement.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    t6 = t1->snode.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_include ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    t11 = t1->snode.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t10 = t11->find_first_expression( i_type_9913 = t13 ).
    t9 = t10.
    DATA(t14) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t14 = xsdbool( t9 IS INITIAL ).
    IF t14 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    t24 = t9.
    t23 = t24->get_first_token( ).
    t22 = t23.
    DATA t26 TYPE abap_bool.
    DATA t27 TYPE abap_bool.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t33 TYPE REF TO zcl_lnt_position.
    t33 = t22->start.
    DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t35 = t33->col.
    t28 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    t41 = t1->token.
    DATA t43 TYPE REF TO zcl_lnt_position.
    t43 = t41->start.
    DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t45 = t43->col.
    t37 = t45.
    t27 = zlnt_runtime_numb_290eb04a9758=>compare( left = t28 right = t37 op = `!=` ).
    t26 = t27.
    IF t27 = abap_false.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE f.
      DATA t53 TYPE REF TO zcl_lnt_position.
      t53 = t22->start.
      DATA t55 TYPE f.
      t55 = t53->row.
      t48 = t55.
      DATA t57 TYPE f.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      t61 = t1->token.
      DATA t63 TYPE REF TO zcl_lnt_position.
      t63 = t61->start.
      DATA t65 TYPE f.
      t65 = t63->row.
      t57 = t65.
      t47 = xsdbool( t48 <> t57 ).
      t26 = t47.
    ENDIF.
    IF t26 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_abap_object.
    DATA t69 TYPE REF TO zcl_lnt_abap_object.
    DATA t70 TYPE REF TO zif_lnt_object.
    DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t74) = |PROG|.
    DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t75->has = abap_true.
    t75->value = t74.
    t72 = t75.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t82 TYPE string.
    t82 = t22->str.
    DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t84->has = abap_true.
    t84->value = t82.
    t77 = t84.
    t70 = t2->get_object( i_type_9913 = t72 i_name = t77 ).
    DATA t86 TYPE REF TO object.
    t86 = t70.
    t69 ?= t86.
    t68 = t69.
    DATA t87 TYPE abap_bool.
    t87 = xsdbool( t68 IS BOUND ).
    IF t87 = abap_true.
      DATA t91 TYPE REF TO zcl_lnt_abap_file.
      DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t96 = t68->parsed.
      t92 = t96.
      DATA t98 TYPE REF TO object.
      t92->load( ).
      READ TABLE t92->items INDEX 1 INTO t98.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t99 ?= t98.
        DATA t100 TYPE REF TO object.
        t100 = t99->as_ref( ).
        t91 ?= t100.
      ELSE.
        t91 ?= t98.
      ENDIF.
      result = t91.
      RETURN.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1160_7e4c141d416a.
  ENDMETHOD.
ENDCLASS.
