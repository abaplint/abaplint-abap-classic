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
    t4 = zcl_lnt_lsp_lookup=>find_include( i_found = t1 i_reg_f149 = t2 ).
    IF xsdbool( t4 IS BOUND ) = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_location.
      t10 = zcl_lnt_lsp_lookup=>abap_file_result( i_abap = t4 ).
      DATA t16 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = |Include|.
      DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t35 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t16 = NEW zcl_lnt_lsp_lookup_result( i_hover = t21 i_definition = t10 i_implementation = t10 i_definition_id = t33 i_scope = t35 ).
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
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t41 ).
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t43 ).
      ENDIF.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementation| p1 = t45 ).
      ENDIF.
      result = t16.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t47 = zcl_lnt_lsp_lookup=>find_function_module( i_found = t1 ).
    DATA(t50) = VALUE abap_bool( ).
    IF t47 IS BOUND.
      IF t47->has = abap_true.
        t50 = xsdbool( strlen( t47->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t50 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t58) = VALUE string( ).
      DATA(t59) = |Function Module |.
      DATA(t60) = VALUE string( ).
      t60 = t47->value.
      DATA(t62) = strlen( t59 ).
      t58 = |{ t59 }{ t60 }|.
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = t58.
      DATA t65 TYPE REF TO zcl_lnt_location.
      DATA t67 TYPE REF TO zcl_lnt_location.
      DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t71 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t54 = NEW zcl_lnt_lsp_lookup_result( i_hover = t63 i_definition = t65 i_implementation = t67 i_definition_id = t69 i_scope = t71 ).
      CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
      t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t73 ).
      CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
      t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t75 ).
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
      DATA t83 TYPE REF TO zcl_lnt_ob_program.
      DATA t84 TYPE REF TO zcl_lnt_ob_program.
      t84 ?= t3.
      t83 = t84.
      t83->parse_xml( ).
      t79 = t83->parsed_xml->is_include.
    ENDIF.
    IF t79 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_include_graph.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t93 = NEW zcl_lnt_include_graph( i_reg_f149 = t2 i_severity = t95 i_allow_unused = t96 ).
      DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t104 TYPE REF TO zcl_lnt_fi_identifier.
      t104 = t1->identifier.
      DATA(t106) = VALUE string( ).
      t106 = t104->filename.
      DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t108->has = abap_true.
      t108->value = t106.
      t97 = t93->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t108 ).
      t97->load( ).
      IF xsdbool( lines( t97->items ) = 1 ) = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_abap_object.
        DATA t116 TYPE REF TO zcl_lnt_abap_object.
        DATA t117 TYPE REF TO zif_lnt_object.
        DATA(t122) = VALUE string( ).
        IF t97->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t97->load( ).
        READ TABLE t97->items INDEX 1 INTO t122.
        t117 = t2->find_object_for_file( i_file = t2->get_file_by_name( i_filename = t122 ) ).
        t116 ?= t117.
        t115 = t116.
        DATA t124 TYPE REF TO zcl_lnt_abap_object.
        IF xsdbool( t115 IS BOUND ) = abap_true.
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
    DATA t132 TYPE REF TO zif_lnt_spaghetti_scope.
    t132 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t2 i_object_19cd = t77 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t137 TYPE REF TO zcl_lnt_position.
    t137 = t1->identifier->token->start.
    DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
    t154 = t1->identifier.
    DATA(t156) = VALUE string( ).
    t156 = t154->filename.
    DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t158->has = abap_true.
    t158->value = t156.
    t130 = t132->lookup_position( i_p = t137 i_filename = t158 ).
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t130 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t168 TYPE REF TO zif_lnt_class_definition.
    DATA t170 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t170 = t130.
    DATA(t172) = VALUE string( ).
    t172 = t1->token->str.
    t168 = t170->find_class_definition( i_name = t172 ).
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    t179 = xsdbool( t168 IS BOUND ).
    t178 = t179.
    IF t179 = abap_true.
      DATA t182 TYPE REF TO zcl_lnt_position.
      t182 = t168->get_start( ).
      DATA t189 TYPE REF TO zcl_lnt_position.
      t189 = t1->token->start.
      t178 = t182->equals( i_p = t189 ).
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
      t204 = t1->token->str.
      DATA(t210) = strlen( t203 ).
      t202 = |{ t203 }{ t204 }|.
      DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t211->has = abap_true.
      t211->value = t202.
      t199 = t211.
      DATA t213 TYPE REF TO zcl_lnt_location.
      t213 = t192.
      DATA t221 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t222 TYPE REF TO zif_lnt_class_definition.
      t222 = t168.
      t221 ?= t222.
      DATA t225 TYPE REF TO zcl_lnt_location.
      t198 = NEW zcl_lnt_lsp_lookup_result( i_hover = t199 i_definition = t213 i_implementation = t225 i_definition_id = t221 i_scope = t130 ).
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
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t239 ).
      DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t241 ).
      ENDIF.
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definitionId| p1 = t243 ).
      ENDIF.
      DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementation| p1 = t245 ).
      ENDIF.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t247 ).
      ENDIF.
      result = t198.
      RETURN.
    ENDIF.
    DATA t249 TYPE REF TO zif_lnt_interface_definition.
    DATA t251 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t251 = t130.
    DATA(t253) = VALUE string( ).
    t253 = t1->token->str.
    t249 = t251->find_interface_definition( i_name = t253 ).
    DATA(t259) = VALUE abap_bool( ).
    DATA(t260) = VALUE abap_bool( ).
    t260 = xsdbool( t249 IS BOUND ).
    t259 = t260.
    IF t260 = abap_true.
      DATA t263 TYPE REF TO zcl_lnt_position.
      t263 = t249->get_start( ).
      DATA t270 TYPE REF TO zcl_lnt_position.
      t270 = t1->token->start.
      t259 = t263->equals( i_p = t270 ).
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
      t285 = t1->token->str.
      DATA(t291) = strlen( t284 ).
      t283 = |{ t284 }{ t285 }|.
      DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t292->has = abap_true.
      t292->value = t283.
      t280 = t292.
      DATA t294 TYPE REF TO zcl_lnt_location.
      t294 = t273.
      DATA t302 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t303 TYPE REF TO zif_lnt_interface_definition.
      t303 = t249.
      t302 ?= t303.
      DATA t306 TYPE REF TO zcl_lnt_location.
      t279 = NEW zcl_lnt_lsp_lookup_result( i_hover = t280 i_definition = t294 i_implementation = t306 i_definition_id = t302 i_scope = t130 ).
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
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t320 ).
      DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t322 ).
      ENDIF.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definitionId| p1 = t324 ).
      ENDIF.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementation| p1 = t326 ).
      ENDIF.
      DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t328 ).
      ENDIF.
      result = t279.
      RETURN.
    ENDIF.
    DATA t330 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t332 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t332 = t130.
    DATA(t334) = VALUE string( ).
    t334 = t1->token->str.
    t330 = t332->find_type( i_name = t334 ).
    DATA(t340) = VALUE abap_bool( ).
    DATA(t341) = VALUE abap_bool( ).
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t341 = xsdbool( xsdbool( t330 IS INITIAL ) = abap_false ).
    t340 = t341.
    IF t341 = abap_true.
      DATA t350 TYPE REF TO zcl_lnt_position.
      DATA t351 TYPE REF TO zcl_lnt_fi_identifier.
      t351 = t330.
      t350 = t351->token->start.
      DATA t364 TYPE REF TO zcl_lnt_position.
      t364 = t1->token->start.
      t340 = t350->equals( i_p = t364 ).
    ENDIF.
    IF t340 = abap_true.
      DATA t367 TYPE REF TO zcl_lnt_location.
      t367 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t330 ).
      DATA(t371) = VALUE string( ).
      DATA(t372) = VALUE string( ).
      DATA(t373) = VALUE string( ).
      DATA(t374) = |Type Definition, |.
      DATA(t375) = VALUE string( ).
      t375 = t1->token->str.
      DATA(t381) = strlen( t374 ).
      t373 = |{ t374 }{ t375 }|.
      DATA(t383) = strlen( t373 ).
      t372 = |{ t373 }{ |\n\n| }|.
      DATA(t384) = VALUE string( ).
      t384 = zcl_lnt_lsp_lookup=>dump_type( i_variable = t330 ).
      DATA(t387) = strlen( t372 ).
      t371 = |{ t372 }{ t384 }|.
      DATA t390 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t395->has = abap_true.
      t395->value = t371.
      t391 = t395.
      DATA t397 TYPE REF TO zcl_lnt_location.
      t397 = t367.
      DATA t402 TYPE REF TO zcl_lnt_fi_identifier.
      t402 = t330.
      DATA t411 TYPE REF TO zcl_lnt_location.
      t390 = NEW zcl_lnt_lsp_lookup_result( i_hover = t391 i_definition = t397 i_implementation = t411 i_definition_id = t402 i_scope = t130 ).
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
      DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t418 ).
      DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t420 ).
      ENDIF.
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definitionId| p1 = t422 ).
      ENDIF.
      DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t424 ).
      ENDIF.
      result = t390.
      RETURN.
    ENDIF.
    DATA t426 TYPE REF TO zcl_lnt_fi_identifier.
    t426 = zcl_lnt_lsp_lookup=>find_method_definition( i_found = t1 i_scope = t130->get_parent( ) ).
    DATA(t432) = VALUE abap_bool( ).
    DATA(t433) = VALUE abap_bool( ).
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t433 = xsdbool( xsdbool( t426 IS INITIAL ) = abap_false ).
    t432 = t433.
    IF t433 = abap_true.
      DATA t442 TYPE REF TO zcl_lnt_position.
      t442 = t426->token->start.
      DATA t456 TYPE REF TO zcl_lnt_position.
      t456 = t1->token->start.
      t432 = t442->equals( i_p = t456 ).
    ENDIF.
    IF t432 = abap_true.
      DATA t459 TYPE REF TO zcl_lnt_location.
      t459 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t426 ).
      DATA(t462) = VALUE string( ).
      DATA(t464) = VALUE string( ).
      DATA(t465) = |Method Definition "|.
      DATA(t466) = VALUE string( ).
      DATA(t471) = VALUE string( ).
      t471 = t426->token->str.
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
      ELSE.
        IF t482 > t483 - t481.
          t482 = t483 - t481.
        ENDIF.
        t479 = t480+t481(t482).
      ENDIF.
      IF xsdbool( t479 = |!| ) = abap_true.
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
        ELSE.
          IF t491 > t494 - t490.
            t491 = t494 - t490.
          ENDIF.
          t488 = t486+t490(t491).
        ENDIF.
        t471 = t488.
      ENDIF.
      t466 = t471.
      DATA(t496) = strlen( t465 ).
      t464 = |{ t465 }{ t466 }|.
      DATA(t498) = strlen( t464 ).
      t462 = |{ t464 }{ |"| }|.
      DATA t500 TYPE REF TO zif_lnt_method_definition.
      DATA t501 TYPE REF TO zcl_lnt_fi_identifier.
      t501 = t426.
      t500 ?= t501.
      DATA(t503) = VALUE string( ).
      t503 = zcl_lnt_lsp_lookup=>visibility_to_string( i_visibility_5c1f = t500->get_visibility( ) ).
      DATA(t508) = t462.
      DATA(t509) = VALUE string( ).
      DATA(t510) = |\n\n|.
      DATA(t512) = strlen( t510 ).
      t509 = |{ t510 }{ t503 }|.
      DATA(t513) = strlen( t508 ).
      t462 = |{ t508 }{ t509 }|.
      DATA t516 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t521) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t521->has = abap_true.
      t521->value = t462.
      DATA t540 TYPE REF TO zcl_lnt_location.
      t516 = NEW zcl_lnt_lsp_lookup_result( i_hover = t521 i_definition = t459 i_implementation = t540 i_definition_id = t426 i_scope = t130 ).
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
      DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t547 ).
      DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t549 ).
      ENDIF.
      DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definitionId| p1 = t551 ).
      ENDIF.
      DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t553 ).
      ENDIF.
      result = t516.
      RETURN.
    ENDIF.
    DATA(t555) = VALUE string( ).
    t555 = ||.
    DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t559 TYPE REF TO zif_lnt_ddic_references.
    t559 = t2->get_ddic_references( ).
    DATA(t561) = VALUE string( ).
    t561 = t1->identifier->filename.
    DATA(t567) = VALUE f( ).
    t567 = t1->identifier->token->start->row.
    t557 = t559->list_by_filename( i_filename = t561 i_line = t567 ).
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
        DATA t593 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t593.
        t593 = t582->token.
        t588 = xsdbool( t593 IS BOUND ).
      ENDIF.
      t587 = t588.
      IF t588 = abap_true.
        DATA t596 TYPE REF TO zcl_lnt_position.
        CLEAR t596.
        t596 = t582->token->start.
        DATA t603 TYPE REF TO zcl_lnt_position.
        CLEAR t603.
        t603 = t1->identifier->token->start.
        t587 = t596->equals( i_p = t603 ).
      ENDIF.
      IF t587 = abap_true.
        DATA(t614) = t555.
        DATA(t615) = VALUE string( ).
        DATA(t616) = VALUE string( ).
        DATA(t617) = VALUE string( ).
        DATA(t618) = VALUE string( ).
        DATA(t619) = |DDIC: |.
        DATA(t620) = VALUE string( ).
        t620 = t582->object_a393->get_type( ).
        DATA(t624) = strlen( t619 ).
        t618 = |{ t619 }{ t620 }|.
        DATA(t626) = strlen( t618 ).
        t617 = |{ t618 }{ | | }|.
        DATA(t627) = VALUE string( ).
        t627 = t582->object_a393->get_name( ).
        DATA(t631) = strlen( t617 ).
        t616 = |{ t617 }{ t627 }|.
        DATA(t633) = strlen( t616 ).
        t615 = |{ t616 }{ || }|.
        DATA(t634) = strlen( t614 ).
        t555 = |{ t614 }{ t615 }|.
      ENDIF.
    ENDDO.
    DATA t635 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t637 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t637 = t130.
    DATA(t639) = VALUE string( ).
    t639 = t1->token->str.
    t635 = t637->find_variable( i_name = t639 ).
    DATA(t645) = VALUE abap_bool( ).
    DATA(t646) = VALUE abap_bool( ).
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t646 = xsdbool( xsdbool( t635 IS INITIAL ) = abap_false ).
    t645 = t646.
    IF t646 = abap_true.
      DATA t655 TYPE REF TO zcl_lnt_position.
      DATA t656 TYPE REF TO zcl_lnt_fi_identifier.
      t656 = t635.
      t655 = t656->token->start.
      DATA t669 TYPE REF TO zcl_lnt_position.
      t669 = t1->token->start.
      t645 = t655->equals( i_p = t669 ).
    ENDIF.
    IF t645 = abap_true.
      DATA(t671) = VALUE string( ).
      DATA(t673) = |Variable Definition\n\n|.
      DATA(t674) = VALUE string( ).
      t674 = zcl_lnt_lsp_lookup=>dump_type( i_variable = t635 ).
      DATA(t677) = strlen( t673 ).
      t671 = |{ t673 }{ t674 }|.
      IF xsdbool( t555 <> || ) = abap_true.
        DATA(t682) = VALUE string( ).
        DATA(t685) = strlen( t671 ).
        t682 = |{ t671 }{ |\n_________________\n| }|.
        DATA(t687) = strlen( t682 ).
        t555 = |{ t682 }{ t555 }|.
      ELSE.
        t555 = t671.
      ENDIF.
      DATA t689 TYPE REF TO zcl_lnt_location.
      DATA t693 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t693 = t635->meta.
      IF xsdbool( t693->includes( p0 = |built-in| ) = abap_false ) = abap_true.
        t689 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t635 ).
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
      t709 = NEW zcl_lnt_lsp_lookup_result( i_hover = t710 i_definition = t716 i_implementation = t718 i_definition_id = t720 i_scope = t130 ).
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
      DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t735 ).
      DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t737 ).
      ENDIF.
      DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementation| p1 = t739 ).
      ENDIF.
      DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definitionId| p1 = t741 ).
      ENDIF.
      DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t743 ).
      ENDIF.
      result = t709.
      RETURN.
    ENDIF.
    DATA t745 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t747 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t747.
    t745 = t747->concat( p0 = t130->list_class_definitions( ) )->concat( p0 = t130->list_interface_definitions( ) ).
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
      t768 = t761->get_method_definitions( ).
      DATA t771 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t771.
      IF xsdbool( t768 IS INITIAL ) = abap_true.
        CLEAR t771.
      ELSE.
        t771 = t768->get_all( ).
      ENDIF.
      t766 = t771.
      IF xsdbool( xsdbool( t766 IS INITIAL ) = abap_false ) = abap_true.
        DATA t780 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t780.
        t780 = t766->iterate( ).
        DO.
          DATA t785 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t785.
          t785 = t780->next( ).
          IF t785->done = abap_true.
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
              t802 = t792->get_parameters( ).
              DATA t805 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t805.
              IF xsdbool( t802 IS INITIAL ) = abap_true.
                CLEAR t805.
              ELSE.
                t805 = t802->get_all( ).
              ENDIF.
              t800 = t805.
              DATA t811 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t811.
              IF xsdbool( t800 IS BOUND ) = abap_true.
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
              IF xsdbool( t796 = abap_false ) = abap_true.
                t780->close( ).
              ENDIF.
              RAISE EXCEPTION t798.
          ENDTRY.
          IF xsdbool( t796 = abap_false ) = abap_true.
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
            DATA(t831) = VALUE abap_bool( ).
            DATA(t832) = VALUE abap_bool( ).
            t832 = abap_false.
            DATA t834 TYPE REF TO cx_root.
            CLEAR t834.
            TRY.
                DATA t836 TYPE REF TO zcl_lnt_position.
                CLEAR t836.
                DATA t837 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t837.
                t837 = t825.
                t836 = t837->token->start.
                DATA t845 TYPE REF TO zcl_lnt_position.
                CLEAR t845.
                t845 = t1->token->start.
                t831 = t836->equals( i_p = t845 ).
                t832 = abap_true.
              CATCH cx_root INTO t834.
                IF xsdbool( t832 = abap_false ) = abap_true.
                  t780->close( ).
                ENDIF.
                RAISE EXCEPTION t834.
            ENDTRY.
            IF xsdbool( t832 = abap_false ) = abap_true.
              t780->close( ).
            ENDIF.
            IF t831 = abap_true.
              DATA t861 TYPE REF TO zcl_lnt_location.
              CLEAR t861.
              DATA(t862) = VALUE abap_bool( ).
              t862 = abap_false.
              DATA t864 TYPE REF TO cx_root.
              CLEAR t864.
              TRY.
                  t861 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t825 ).
                  t862 = abap_true.
                CATCH cx_root INTO t864.
                  IF xsdbool( t862 = abap_false ) = abap_true.
                    t780->close( ).
                  ENDIF.
                  RAISE EXCEPTION t864.
              ENDTRY.
              IF xsdbool( t862 = abap_false ) = abap_true.
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
                  t890 = t1->token->str.
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
                  t883 = NEW zcl_lnt_lsp_lookup_result( i_hover = t884 i_definition = t902 i_implementation = t909 i_definition_id = t907 i_scope = t130 ).
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
                  DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t923.
                  t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t923 ).
                  DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t925.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t925 ).
                  ENDIF.
                  DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t927.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definitionId| p1 = t927 ).
                  ENDIF.
                  DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t929.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementation| p1 = t929 ).
                  ENDIF.
                  DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t931.
                  IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t931 ).
                  ENDIF.
                  t877 = t883.
                  t878 = abap_true.
                CATCH cx_root INTO t880.
                  IF xsdbool( t878 = abap_false ) = abap_true.
                    t780->close( ).
                  ENDIF.
                  RAISE EXCEPTION t880.
              ENDTRY.
              IF xsdbool( t878 = abap_false ) = abap_true.
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
    DATA t945 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t945 = t130.
    DATA t947 TYPE REF TO zcl_lnt_abstract_token.
    t947 = t1->token.
    t943 = zcl_lnt_lsp_lookup=>search_references( i_scope = t945 i_token = t947 ).
    t943->load( ).
    IF xsdbool( lines( t943->items ) > 0 ) = abap_true.
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
        IF xsdbool( t555 <> || ) = abap_true.
          DATA(t963) = t555.
          DATA(t965) = strlen( t963 ).
          t555 = |{ t963 }{ |\n_________________\n| }|.
        ENDIF.
        DATA(t967) = t555.
        DATA(t968) = VALUE string( ).
        t968 = zcl_lnt_lsp_lookup=>reference_hover( i_ref = t954 i_scope = t130 i_reg_f149 = t2 ).
        DATA(t973) = strlen( t967 ).
        t555 = |{ t967 }{ t968 }|.
      ENDDO.
      DATA t974 TYPE REF TO zcl_lnt_location.
      DATA t976 TYPE REF TO zcl_lnt_location.
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
      IF xsdbool( t979 IS BOUND ) = abap_true.
        DATA t988 TYPE REF TO zcl_lnt_fi_identifier.
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
        t988 = t990->resolved.
        t974 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t988 ).
        DATA(t997) = VALUE string( ).
        t997 = t974->uri.
        DATA(t1000) = CONV string( zcl_lnt_built_in=>filename ).
        IF xsdbool( t997 = t1000 ) = abap_true.
          CLEAR t974.
        ENDIF.
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
        IF xsdbool( t1003 IS BOUND AND t1003 IS INSTANCE OF zcl_lnt_ty_form_definition ) = abap_true.
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
      t1023 = t1025->resolved.
      t1012 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1013 i_definition = t1019 i_implementation = t1021 i_definition_id = t1023 i_scope = t130 ).
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
      DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t1042 ).
      DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t1044 ).
      ENDIF.
      DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |implementation| p1 = t1046 ).
      ENDIF.
      DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definitionId| p1 = t1048 ).
      ENDIF.
      DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t1050 ).
      ENDIF.
      result = t1012.
      RETURN.
    ENDIF.
    DATA t1053 TYPE REF TO zif_lnt_statement.
    t1053 = t1->snode->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( t1053 IS BOUND AND t1053 IS INSTANCE OF zcl_lnt_macro_call ) = abap_true.
      DATA t1056 TYPE REF TO zcl_lnt_ifilename_and_token.
      DATA t1058 TYPE REF TO zif_lnt_macro_references.
      t1058 = t2->get_macro_references( ).
      DATA(t1060) = VALUE string( ).
      t1060 = t1->identifier->filename.
      t1056 = t1058->find_definition_by_usage( i_filename = t1060 i_token = t1->snode->get_first_token( ) ).
      IF xsdbool( t1056 IS BOUND ) = abap_true.
        DATA t1073 TYPE REF TO zcl_lnt_lsp_lookup_result.
        DATA t1074 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1078) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1078->has = abap_true.
        t1078->value = |Macro Call|.
        t1074 = t1078.
        DATA t1083 TYPE REF TO zcl_lnt_location.
        DATA(t1084) = VALUE string( ).
        DATA t1086 TYPE REF TO zcl_lnt_ifilename_and_token.
        t1086 = t1056.
        DATA t1090 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t1086 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t1094) = VALUE string( ).
          t1094 = t1086->filename.
          DATA(t1096) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1096->has = abap_true.
          t1096->value = t1094.
          t1090 = t1096.
        ENDIF.
        t1084 = t1090->value.
        DATA t1099 TYPE REF TO zcl_lnt_abstract_token.
        t1099 = t1056->token.
        t1083 = NEW zcl_lnt_location( i_uri = t1084 i_range = zcl_lnt_lsp_utils=>token_to_range( i_token = t1099 ) ).
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
        DATA t1105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1083->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t1105 ).
        DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1083->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1083->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t1107 ).
        ENDIF.
        DATA t1109 TYPE REF TO zcl_lnt_location.
        DATA t1111 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t1113 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t1073 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1074 i_definition = t1083 i_implementation = t1109 i_definition_id = t1111 i_scope = t1113 ).
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
        DATA t1118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1073->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t1118 ).
        DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1073->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1073->zlnt_json_ownkeys_70e5fd461788->put( p0 = |definition| p1 = t1120 ).
        ENDIF.
        result = t1073.
        RETURN.
      ENDIF.
    ENDIF.
    IF xsdbool( t555 <> || ) = abap_true.
      DATA t1127 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t1132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1132->has = abap_true.
      t1132->value = t555.
      DATA t1140 TYPE REF TO zcl_lnt_location.
      DATA t1142 TYPE REF TO zcl_lnt_location.
      DATA t1144 TYPE REF TO zcl_lnt_fi_identifier.
      t1127 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1132 i_definition = t1140 i_implementation = t1142 i_definition_id = t1144 i_scope = t130 ).
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
      DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |hover| p1 = t1149 ).
      DATA t1151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |scope| p1 = t1151 ).
      ENDIF.
      result = t1127.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD dump_type.
    DATA(t1) = i_variable.
    DATA(t2) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = |Identifier: ```|.
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
    t12 = t1.
    DATA t15 TYPE string.
    t15 = t12->token->str.
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
    ELSE.
      IF t26 > t27 - t25.
        t26 = t27 - t25.
      ENDIF.
      t23 = t24+t25(t26).
    ENDIF.
    IF xsdbool( t23 = |!| ) = abap_true.
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
      ELSE.
        IF t35 > t38 - t34.
          t35 = t38 - t34.
        ENDIF.
        t32 = t30+t34(t35).
      ENDIF.
      t15 = t32.
    ENDIF.
    t11 = t15.
    DATA(t40) = strlen( t10 ).
    t9 = |{ t10 }{ t11 }|.
    DATA(t42) = strlen( t9 ).
    t5 = |{ t9 }{ |```| }|.
    DATA(t44) = strlen( t5 ).
    t4 = |{ t5 }{ |\n\nType: | }|.
    DATA t45 TYPE string.
    t45 = t1->type_cba0->to_text( i_level = CONV f( 0 ) ).
    DATA(t52) = strlen( t4 ).
    t2 = |{ t4 }{ t45 }|.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t54 = t1->value.
    IF t54 IS BOUND.
      t53 = t54->truth( ).
    ENDIF.
    IF t53 = abap_true.
      DATA(t60) = t2.
      DATA(t61) = VALUE string( ).
      DATA(t62) = VALUE string( ).
      DATA(t63) = |\n\nValue: ```|.
      DATA(t64) = VALUE string( ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t65 = t1->value.
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
      DATA(t80) = strlen( t62 ).
      t61 = |{ t62 }{ |```| }|.
      DATA(t81) = strlen( t60 ).
      t2 = |{ t60 }{ t61 }|.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t84 = t1->meta.
    t84->load( ).
    IF xsdbool( lines( t84->items ) > 0 ) = abap_true.
      DATA(t91) = t2.
      DATA t92 TYPE string.
      DATA(t93) = |\n\nMeta: |.
      DATA t94 TYPE string.
      DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t95 = t1->meta.
      DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t101->has = abap_true.
      t101->value = |, |.
      t94 = t95->join( p0 = t101 ).
      DATA(t102) = strlen( t93 ).
      t92 = |{ t93 }{ t94 }|.
      DATA(t103) = strlen( t91 ).
      t2 = |{ t91 }{ t92 }|.
    ENDIF.
    DATA t109 TYPE REF TO zcl_lnt_abstract_type.
    t109 = t1->type_cba0.
    IF xsdbool( t109->contains_void( ) = abap_true ) = abap_true.
      DATA(t113) = t2.
      DATA(t115) = strlen( t113 ).
      t2 = |{ t113 }{ |\n\nContains Void types| }|.
    ENDIF.
    DATA(t116) = VALUE abap_bool( ).
    DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t117 = t1->type_cba0->get_qualified_name( ).
    IF t117 IS BOUND.
      IF t117->has = abap_true.
        t116 = xsdbool( strlen( t117->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t116 = abap_true.
      DATA(t124) = t2.
      DATA(t125) = VALUE string( ).
      DATA(t126) = VALUE string( ).
      DATA(t127) = |\n\nQualified Type Name: ```|.
      DATA(t128) = VALUE string( ).
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t129 = t1->type_cba0->get_qualified_name( ).
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
        t136 = t129->value.
      ENDIF.
      t128 = t136.
      DATA(t142) = strlen( t127 ).
      t126 = |{ t127 }{ t128 }|.
      DATA(t144) = strlen( t126 ).
      t125 = |{ t126 }{ |```| }|.
      DATA(t145) = strlen( t124 ).
      t2 = |{ t124 }{ t125 }|.
    ENDIF.
    DATA(t146) = VALUE abap_bool( ).
    DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t155 TYPE REF TO zcl_lnt_abstract_type_data.
    t155 = t1->type_cba0->data_56cc.
    DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t155 IS INITIAL ) = abap_true.
    ELSE.
      t158 = t155->zlnt_view_read_sr_a5933bdf8829( ).
    ENDIF.
    t147 = t158.
    IF t147 IS BOUND.
      IF t147->has = abap_true.
        t146 = xsdbool( strlen( t147->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t146 = abap_true.
      DATA(t166) = t2.
      DATA(t167) = VALUE string( ).
      DATA(t168) = VALUE string( ).
      DATA(t169) = |\n\nRTTI Name: ```|.
      DATA(t170) = VALUE string( ).
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t180 TYPE REF TO zcl_lnt_abstract_type_data.
      t180 = t1->type_cba0->data_56cc.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t180 IS INITIAL ) = abap_true.
      ELSE.
        t183 = t180->zlnt_view_read_sr_a5933bdf8829( ).
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
        t190 = t171->value.
      ENDIF.
      t170 = t190.
      DATA(t196) = strlen( t169 ).
      t168 = |{ t169 }{ t170 }|.
      DATA(t198) = strlen( t168 ).
      t167 = |{ t168 }{ |```| }|.
      DATA(t199) = strlen( t166 ).
      t2 = |{ t166 }{ t167 }|.
    ENDIF.
    DATA t205 TYPE REF TO zcl_lnt_abstract_type.
    t205 = t1->type_cba0.
    IF xsdbool( t205->is_generic( ) = abap_true ) = abap_true.
      DATA(t209) = t2.
      DATA(t211) = strlen( t209 ).
      t2 = |{ t209 }{ |\n\nIs Generic Type| }|.
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t222 TYPE REF TO zcl_lnt_abstract_type_data.
    t222 = t1->type_cba0->data_56cc.
    DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t222 IS INITIAL ) = abap_true.
    ELSE.
      t225 = t222->zlnt_view_read_sr_dfbdd4b4a00f( ).
    ENDIF.
    t213 = t225.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t235) = VALUE abap_bool( ).
    IF t213 IS INITIAL.
      t235 = abap_true.
    ELSEIF t213->has = abap_false.
      t235 = abap_true.
    ENDIF.
    IF xsdbool( t235 = abap_false ) = abap_true.
      DATA(t238) = t2.
      DATA(t239) = VALUE string( ).
      DATA(t240) = VALUE string( ).
      DATA(t241) = |\n\nConversion Exit: ```|.
      DATA(t242) = VALUE string( ).
      DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t252 TYPE REF TO zcl_lnt_abstract_type_data.
      t252 = t1->type_cba0->data_56cc.
      DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t252 IS INITIAL ) = abap_true.
      ELSE.
        t255 = t252->zlnt_view_read_sr_dfbdd4b4a00f( ).
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
        t262 = t243->value.
      ENDIF.
      t242 = t262.
      DATA(t268) = strlen( t241 ).
      t240 = |{ t241 }{ t242 }|.
      DATA(t270) = strlen( t240 ).
      t239 = |{ t240 }{ |```| }|.
      DATA(t271) = strlen( t238 ).
      t2 = |{ t238 }{ t239 }|.
    ENDIF.
    DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t282 TYPE REF TO zcl_lnt_abstract_type_data.
    t282 = t1->type_cba0->data_56cc.
    DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t282 IS INITIAL ) = abap_true.
    ELSE.
      t285 = t282->zlnt_view_read_sr_19ee0de30d00( ).
    ENDIF.
    t273 = t285.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t295) = VALUE abap_bool( ).
    IF t273 IS INITIAL.
      t295 = abap_true.
    ELSEIF t273->has = abap_false.
      t295 = abap_true.
    ENDIF.
    IF xsdbool( t295 = abap_false ) = abap_true.
      DATA(t298) = t2.
      DATA(t299) = VALUE string( ).
      DATA(t300) = VALUE string( ).
      DATA(t301) = |\n\nDDIC Name: ```|.
      DATA(t302) = VALUE string( ).
      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t312 TYPE REF TO zcl_lnt_abstract_type_data.
      t312 = t1->type_cba0->data_56cc.
      DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t312 IS INITIAL ) = abap_true.
      ELSE.
        t315 = t312->zlnt_view_read_sr_19ee0de30d00( ).
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
        t322 = t303->value.
      ENDIF.
      t302 = t322.
      DATA(t328) = strlen( t301 ).
      t300 = |{ t301 }{ t302 }|.
      DATA(t330) = strlen( t300 ).
      t299 = |{ t300 }{ |```| }|.
      DATA(t331) = strlen( t298 ).
      t2 = |{ t298 }{ t299 }|.
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t342 TYPE REF TO zcl_lnt_abstract_type_data.
    t342 = t1->type_cba0->data_56cc.
    DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t342 IS INITIAL ) = abap_true.
    ELSE.
      t345 = t342->zlnt_view_read_sr_b2a3e27508db( ).
    ENDIF.
    t333 = t345.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t355) = VALUE abap_bool( ).
    IF t333 IS INITIAL.
      t355 = abap_true.
    ELSEIF t333->has = abap_false.
      t355 = abap_true.
    ENDIF.
    IF xsdbool( t355 = abap_false ) = abap_true.
      DATA(t358) = t2.
      DATA(t359) = VALUE string( ).
      DATA(t360) = |\n\nDescription: |.
      DATA(t361) = VALUE string( ).
      DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t371 TYPE REF TO zcl_lnt_abstract_type_data.
      t371 = t1->type_cba0->data_56cc.
      DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t371 IS INITIAL ) = abap_true.
      ELSE.
        t374 = t371->zlnt_view_read_sr_b2a3e27508db( ).
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
        t381 = t362->value.
      ENDIF.
      t361 = t381.
      DATA(t387) = strlen( t360 ).
      t359 = |{ t360 }{ t361 }|.
      DATA(t388) = strlen( t358 ).
      t2 = |{ t358 }{ t359 }|.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD reference_hover.
    DATA(t1) = i_ref.
    DATA(t2) = i_scope.
    DATA(t3) = i_reg_f149.
    DATA(t4) = VALUE string( ).
    t4 = ||.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    t7 = t1->resolved.
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA(t10) = VALUE string( ).
      DATA(t11) = |```|.
      DATA(t12) = VALUE string( ).
      DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
      t15 = t1->resolved.
      DATA(t18) = VALUE string( ).
      t18 = t15->token->str.
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
      ELSE.
        IF t29 > t30 - t28.
          t29 = t30 - t28.
        ENDIF.
        t26 = t27+t28(t29).
      ENDIF.
      IF xsdbool( t26 = |!| ) = abap_true.
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
        ELSE.
          IF t38 > t41 - t37.
            t38 = t41 - t37.
          ENDIF.
          t35 = t33+t37(t38).
        ENDIF.
        t18 = t35.
      ENDIF.
      t12 = t18.
      DATA(t43) = strlen( t11 ).
      t10 = |{ t11 }{ t12 }|.
      DATA(t45) = strlen( t10 ).
      t4 = |{ t10 }{ |```| }|.
    ENDIF.
    DATA(t46) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    DATA(t49) = VALUE string( ).
    DATA(t50) = VALUE string( ).
    DATA(t51) = ||.
    DATA(t52) = VALUE string( ).
    t52 = t1->reference_type.
    DATA(t54) = strlen( t51 ).
    t50 = |{ t51 }{ t52 }|.
    DATA(t56) = strlen( t50 ).
    t49 = |{ t50 }{ | | }|.
    DATA(t58) = strlen( t49 ).
    t48 = |{ t49 }{ t4 }|.
    DATA(t60) = strlen( t48 ).
    t46 = |{ t48 }{ || }|.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = VALUE abap_bool( ).
    t62 = xsdbool( t1->reference_type = |Method| ).
    t61 = t62.
    IF t62 = abap_true.
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t68 TYPE REF TO zcl_lnt_ireference_extras.
      t68 = t1->extra.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t68 IS INITIAL ) = abap_true.
      ELSE.
        t71 = t68->oo_name.
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
      t82 = t1->extra->oo_name->value.
      t80 = t2->find_class_definition( i_name = t82 ).
      t79 ?= t80.
      t78 = t79.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t78 IS INITIAL ) = abap_true.
        DATA(t96) = VALUE string( ).
        t96 = t1->extra->oo_name->value.
        t78 = t2->find_interface_definition( i_name = t96 ).
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t78 IS INITIAL ) = abap_true.
        DATA t108 TYPE REF TO zif_lnt_interface_definition.
        DATA t109 TYPE REF TO zif_lnt_class_definition.
        DATA t110 TYPE REF TO zcl_lnt_class.
        DATA t111 TYPE REF TO zcl_lnt_class.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t117->has = abap_true.
        t117->value = |CLAS|.
        t114 = t117.
        DATA(t121) = VALUE string( ).
        t121 = t1->extra->oo_name->value.
        DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t126->has = abap_true.
        t126->value = t121.
        DATA t128 TYPE REF TO object.
        t128 = t3->get_object( i_type_9913 = t114 i_name = t126 ).
        t111 ?= t128.
        t110 = t111.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t110 IS INITIAL ) = abap_true.
        ELSE.
          t129 = t110->gt_dfn_ins_src_obj_cls_ts_clss( ).
        ENDIF.
        t109 = t129.
        t108 ?= t109.
        t78 = t108.
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t78 IS INITIAL ) = abap_true.
        DATA t144 TYPE REF TO zcl_lnt_ob_interface.
        DATA t145 TYPE REF TO zcl_lnt_ob_interface.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t151->has = abap_true.
        t151->value = |INTF|.
        t148 = t151.
        DATA(t155) = VALUE string( ).
        t155 = t1->extra->oo_name->value.
        DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t160->has = abap_true.
        t160->value = t155.
        DATA t162 TYPE REF TO object.
        t162 = t3->get_object( i_type_9913 = t148 i_name = t160 ).
        t145 ?= t162.
        t144 = t145.
        DATA t163 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t144 IS INITIAL ) = abap_true.
        ELSE.
          t163 = t144->def.
        ENDIF.
        t78 = t163.
      ENDIF.
      DATA(t174) = t46.
      DATA(t175) = VALUE string( ).
      DATA(t176) = |\n\n|.
      DATA(t177) = VALUE string( ).
      DATA t180 TYPE REF TO zcl_lnt_fi_identifier.
      t180 = t1->position_7b94.
      DATA(t183) = VALUE string( ).
      t183 = t180->token->str.
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
      ELSE.
        IF t194 > t195 - t193.
          t194 = t195 - t193.
        ENDIF.
        t191 = t192+t193(t194).
      ENDIF.
      IF xsdbool( t191 = |!| ) = abap_true.
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
        ELSE.
          IF t203 > t206 - t202.
            t203 = t206 - t202.
          ENDIF.
          t200 = t198+t202(t203).
        ENDIF.
        t183 = t200.
      ENDIF.
      t177 = zcl_lnt_lsp_lookup=>hover_method( i_method = t183 i_class_def = t78 ).
      DATA(t209) = strlen( t176 ).
      t175 = |{ t176 }{ t177 }|.
      DATA(t210) = strlen( t174 ).
      t46 = |{ t174 }{ t175 }|.
    ELSE.
      DATA t212 TYPE REF TO zcl_lnt_fi_identifier.
      t212 = t1->resolved.
      IF xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_typed_identifier ) = abap_true.
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
        t46 = |{ t215 }{ t216 }|.
      ELSE.
        IF xsdbool( t1->reference_type = |Builtin Method| ) = abap_true.
          DATA t228 TYPE REF TO zif_lnt_method_definition.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t233 TYPE REF TO zcl_lnt_fi_identifier.
          t233 = t1->resolved.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t233 IS INITIAL ) = abap_true.
          ELSE.
            DATA(t245) = VALUE string( ).
            t245 = t233->token->str.
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
            ELSE.
              IF t256 > t257 - t255.
                t256 = t257 - t255.
              ENDIF.
              t253 = t254+t255(t256).
            ENDIF.
            IF xsdbool( t253 = |!| ) = abap_true.
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
              ELSE.
                IF t265 > t268 - t264.
                  t265 = t268 - t264.
                ENDIF.
                t262 = t260+t264(t265).
              ENDIF.
              t245 = t262.
            ENDIF.
            DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t270->has = abap_true.
            t270->value = t245.
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
          t228 = zcl_lnt_built_in=>search_builtin( i_name = t271 ).
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( t228 IS INITIAL ) = abap_true.
            result = |Error: builtin method signature not found|.
            RETURN.
          ENDIF.
          DATA(t289) = t46.
          DATA(t290) = VALUE string( ).
          DATA(t291) = |\n\n|.
          DATA(t292) = VALUE string( ).
          t292 = zcl_lnt_lsp_lookup=>method_parameters( i_method_def_15b7 = t228 ).
          DATA(t295) = strlen( t291 ).
          t290 = |{ t291 }{ t292 }|.
          DATA(t296) = strlen( t289 ).
          t46 = |{ t289 }{ t290 }|.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t298 TYPE REF TO zcl_lnt_fi_identifier.
    t298 = t1->resolved.
    IF xsdbool( t298 IS BOUND ) = abap_true.
      DATA(t301) = t46.
      DATA(t303) = strlen( t301 ).
      t46 = |{ t301 }{ |\n\n(Resolved)| }|.
    ENDIF.
    DATA(t304) = VALUE abap_bool( ).
    DATA(t305) = VALUE abap_bool( ).
    DATA t307 TYPE REF TO zcl_lnt_ireference_extras.
    t307 = t1->extra.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t305 = xsdbool( xsdbool( t307 IS INITIAL ) = abap_false ).
    t304 = t305.
    IF t305 = abap_true.
      DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t318 TYPE REF TO zcl_lnt_ireference_extras.
      t318 = t1->extra.
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
      t304 = xsdbool( lines( t316->items ) > 0 ).
    ENDIF.
    IF t304 = abap_true.
      DATA(t325) = t46.
      DATA(t326) = VALUE string( ).
      DATA(t327) = |\n\nExtra: |.
      DATA(t328) = VALUE string( ).
      DATA t329 TYPE REF TO zcl_lnt_ireference_extras.
      t329 = t1->extra.
      DATA t332 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
      CREATE OBJECT t332.
      t328 = t332->zlnt_json_write_s_16b9e184e975( t329 ).
      IF t328 IS INITIAL.
        RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
      ENDIF.
      DATA(t333) = strlen( t327 ).
      t326 = |{ t327 }{ t328 }|.
      DATA(t334) = strlen( t325 ).
      t46 = |{ t325 }{ t326 }|.
    ENDIF.
    result = t46.

  ENDMETHOD.

  METHOD hover_method.
    DATA(t1) = i_method.
    DATA(t2) = i_class_def.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      result = |class not found|.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zif_lnt_method_definition.
    DATA t13 TYPE REF TO zif_lnt_method_definitions.
    t13 = t2->get_method_definitions( ).
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = t1.
    t11 = t13->get_by_name( i_name = t19 ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
      result = |method not found in definition|.
      RETURN.
    ENDIF.
    result = zcl_lnt_lsp_lookup=>method_parameters( i_method_def_15b7 = t11 ).

  ENDMETHOD.

  METHOD visibility_to_string.
    DATA(t1) = i_visibility_5c1f.
    IF xsdbool( t1 = CONV f( 3 ) ) = abap_true.
      result = |PUBLIC|.
      RETURN.
    ELSE.
      IF xsdbool( t1 = CONV f( 2 ) ) = abap_true.
        result = |PROTECTED|.
        RETURN.
      ELSE.
        IF xsdbool( t1 = CONV f( 1 ) ) = abap_true.
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
    t4 = zcl_lnt_lsp_lookup=>visibility_to_string( i_visibility_5c1f = t1->get_visibility( ) ).
    IF xsdbool( strlen( t4 ) > 0 ) = abap_true.
      DATA(t11) = t2.
      DATA t12 TYPE string.
      DATA(t15) = strlen( t4 ).
      t12 = |{ t4 }{ |\n\n| }|.
      DATA(t16) = strlen( t11 ).
      t2 = |{ t11 }{ t12 }|.
    ENDIF.
    DATA t17 TYPE REF TO zif_lnt_method_parameters.
    t17 = t1->get_parameters( ).
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t20 = t17->get_importing( ).
    t20->load( ).
    IF xsdbool( lines( t20->items ) > 0 ) = abap_true.
      DATA(t28) = t2.
      DATA(t30) = strlen( t28 ).
      t2 = |{ t28 }{ |IMPORTING\n| }|.
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
        DATA(t38) = t2.
        DATA t39 TYPE string.
        t39 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t32 ).
        DATA(t41) = strlen( t38 ).
        t2 = |{ t38 }{ t39 }|.
      ENDDO.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t42 = t17->get_exporting( ).
    t42->load( ).
    IF xsdbool( lines( t42->items ) > 0 ) = abap_true.
      DATA(t50) = t2.
      DATA(t52) = strlen( t50 ).
      t2 = |{ t50 }{ |EXPORTING\n| }|.
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
        DATA(t60) = t2.
        DATA t61 TYPE string.
        t61 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t54 ).
        DATA(t63) = strlen( t60 ).
        t2 = |{ t60 }{ t61 }|.
      ENDDO.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t64 = t17->get_changing( ).
    t64->load( ).
    IF xsdbool( lines( t64->items ) > 0 ) = abap_true.
      DATA(t72) = t2.
      DATA(t74) = strlen( t72 ).
      t2 = |{ t72 }{ |CHANGING\n| }|.
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
        DATA(t82) = t2.
        DATA t83 TYPE string.
        t83 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t76 ).
        DATA(t85) = strlen( t82 ).
        t2 = |{ t82 }{ t83 }|.
      ENDDO.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
    t86 = t17->get_returning( ).
    IF xsdbool( t86 IS BOUND ) = abap_true.
      DATA(t92) = t2.
      DATA t93 TYPE string.
      DATA(t94) = |RETURNING\n|.
      DATA t95 TYPE string.
      t95 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t86 ).
      DATA(t98) = strlen( t94 ).
      t93 = |{ t94 }{ t95 }|.
      DATA(t99) = strlen( t92 ).
      t2 = |{ t92 }{ t93 }|.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t102 = t1->get_raising( ).
    t102->load( ).
    IF xsdbool( lines( t102->items ) > 0 ) = abap_true.
      DATA(t106) = t2.
      DATA(t108) = strlen( t106 ).
      t2 = |{ t106 }{ |RAISING\n| }|.
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
        DATA(t114) = t2.
        DATA t115 TYPE string.
        DATA t116 TYPE string.
        DATA(t117) = |* |.
        DATA(t119) = strlen( t117 ).
        t116 = |{ t117 }{ t111 }|.
        DATA(t121) = strlen( t116 ).
        t115 = |{ t116 }{ |\n| }|.
        DATA(t122) = strlen( t114 ).
        t2 = |{ t114 }{ t115 }|.
      ENDDO.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD single_parameter.
    DATA(t1) = i_p.
    DATA t2 TYPE string.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t4 = t1->meta.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = |, |.
    t2 = t4->join( p0 = t10 ).
    IF xsdbool( t2 <> || ) = abap_true.
      DATA t15 TYPE string.
      DATA(t16) = |(Meta: |.
      DATA(t18) = strlen( t16 ).
      t15 = |{ t16 }{ t2 }|.
      DATA(t20) = strlen( t15 ).
      t2 = |{ t15 }{ |)| }|.
    ENDIF.
    DATA(t22) = VALUE string( ).
    DATA(t23) = VALUE string( ).
    DATA(t24) = VALUE string( ).
    DATA(t25) = VALUE string( ).
    DATA(t26) = |* |.
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
    t28 = t1.
    DATA t31 TYPE string.
    t31 = t28->token->str.
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
    ELSE.
      IF t42 > t43 - t41.
        t42 = t43 - t41.
      ENDIF.
      t39 = t40+t41(t42).
    ENDIF.
    IF xsdbool( t39 = |!| ) = abap_true.
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
      ELSE.
        IF t51 > t54 - t50.
          t51 = t54 - t50.
        ENDIF.
        t48 = t46+t50(t51).
      ENDIF.
      t31 = t48.
    ENDIF.
    t27 = t31.
    DATA(t56) = strlen( t26 ).
    t25 = |{ t26 }{ t27 }|.
    DATA(t58) = strlen( t25 ).
    t24 = |{ t25 }{ t2 }|.
    DATA(t60) = strlen( t24 ).
    t23 = |{ t24 }{ | TYPE | }|.
    DATA t61 TYPE string.
    t61 = t1->type_cba0->to_text( i_level = CONV f( 1 ) ).
    DATA(t68) = strlen( t23 ).
    t22 = |{ t23 }{ t61 }|.
    DATA(t70) = strlen( t22 ).
    result = |{ t22 }{ |\n\n| }|.

  ENDMETHOD.

  METHOD search_references.
    DATA(t1) = i_scope.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->get_data( )->references.
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
      DATA t14 TYPE REF TO zcl_lnt_position.
      t14 = t8->position_7b94->token->start.
      DATA t24 TYPE REF TO zcl_lnt_position.
      t24 = t2->start.
      IF t14->equals( i_p = t24 ) = abap_true.
        t3->load( ).
        APPEND t8 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA t31 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t31 = t1->get_parent( ).
    IF xsdbool( t31 IS BOUND ) = abap_true.
      DATA(t36) = VALUE i( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t37 = zcl_lnt_lsp_lookup=>search_references( i_scope = t31 i_token = t2 ).
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
      t3->load( ).
      t36 = lines( t3->items ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD abap_file_result.
    DATA t2 TYPE REF TO zcl_lnt_location.
    DATA t3 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_abstract_file.
    t5 = i_abap.
    t3 = t5->filename.
    DATA t19 TYPE REF TO zcl_lnt_range.
    DATA t20 TYPE REF TO zcl_lnt_no_position.
    DATA t21 TYPE REF TO zcl_lnt_no_position.
    DATA t22 TYPE f.
    t22 = 0.
    DATA t24 TYPE f.
    t24 = 0.
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
    DATA t30 TYPE REF TO zcl_lnt_no_position.
    DATA t31 TYPE f.
    t31 = 0.
    DATA t33 TYPE f.
    t33 = 0.
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
    t19 = NEW zcl_lnt_range( i_start = t20 i_end = t30 ).
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
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t41 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t43 ).
    ENDIF.
    t2 = NEW zcl_lnt_location( i_uri = t3 i_range = t19 ).
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
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t49 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_method_definition.
    DATA(t1) = i_found.
    DATA(t2) = i_scope.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE string.
    t14 = t2->get_identifier( )->stype.
    t13 = xsdbool( t14 <> |class_definition| ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t20 TYPE string.
      t20 = t2->get_identifier( )->stype.
      t12 = xsdbool( t20 <> |interface| ).
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t27 TYPE REF TO zif_lnt_statement.
      t27 = t1->snode->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t11 = xsdbool( xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_method_def ) = abap_false ).
    ENDIF.
    IF t11 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    t35 = t1->snode.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t33 = t35->find_first_expression( i_type_9913 = t37 ).
    DATA t38 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t33 IS INITIAL ) = abap_true.
    ELSE.
      t38 = t33->get_first_token( ).
    ENDIF.
    t31 = t38.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t31 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA t55 TYPE REF TO zcl_lnt_statement_node.
    t55 = t1->snode.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167.
    t54 = t55->find_first_expression( i_type_9913 = t57 ).
    IF xsdbool( t54 IS BOUND ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t59 TYPE abap_bool.
    DATA t60 TYPE abap_bool.
    DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t61 = t31->start->col.
    DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t79 = t1->token->start->col.
    t60 = zlnt_runtime_numb_290eb04a9758=>compare( left = t61 right = t79 op = `!=` ).
    t59 = t60.
    IF t60 = abap_false.
      t59 = xsdbool( t31->start->row <> t1->token->start->row ).
    ENDIF.
    IF t59 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t104 TYPE string.
    t104 = t2->get_identifier( )->stype.
    IF xsdbool( t104 = |class_definition| ) = abap_true.
      DATA t111 TYPE REF TO zif_lnt_method_definitions.
      DATA t113 TYPE REF TO zif_lnt_class_definition.
      DATA t115 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t115 = t2->get_parent( ).
      DATA t119 TYPE REF TO zif_lnt_class_definition.
      IF xsdbool( t115 IS INITIAL ) = abap_true.
      ELSE.
        DATA t124 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t124 = t115.
        DATA t126 TYPE string.
        t126 = t2->get_identifier( )->sname.
        t119 = t124->find_class_definition( i_name = t126 ).
      ENDIF.
      t113 = t119.
      DATA t130 TYPE REF TO zif_lnt_method_definitions.
      IF xsdbool( t113 IS INITIAL ) = abap_true.
      ELSE.
        t130 = t113->get_method_definitions( ).
      ENDIF.
      t111 = t130.
      DATA t137 TYPE REF TO zif_lnt_method_definition.
      IF xsdbool( t111 IS INITIAL ) = abap_true.
      ELSE.
        DATA t142 TYPE REF TO zif_lnt_method_definitions.
        t142 = t111.
        DATA t150 TYPE string.
        t150 = t31->str.
        DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t152->has = abap_true.
        t152->value = t150.
        t137 = t142->get_by_name( i_name = t152 ).
      ENDIF.
      DATA t154 TYPE REF TO zif_lnt_method_definition.
      t154 = t137.
      DATA t156 TYPE REF TO zcl_lnt_fi_identifier.
      IF xsdbool( t154 IS INITIAL ) = abap_true.
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
      t169 = t2->get_parent( ).
      DATA t173 TYPE REF TO zif_lnt_interface_definition.
      IF xsdbool( t169 IS INITIAL ) = abap_true.
      ELSE.
        DATA t178 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t178 = t169.
        DATA t180 TYPE string.
        t180 = t2->get_identifier( )->sname.
        t173 = t178->find_interface_definition( i_name = t180 ).
      ENDIF.
      t167 = t173.
      DATA t184 TYPE REF TO zif_lnt_method_definitions.
      IF xsdbool( t167 IS INITIAL ) = abap_true.
      ELSE.
        t184 = t167->get_method_definitions( ).
      ENDIF.
      t165 = t184.
      DATA t191 TYPE REF TO zif_lnt_method_definition.
      IF xsdbool( t165 IS INITIAL ) = abap_true.
      ELSE.
        DATA t196 TYPE REF TO zif_lnt_method_definitions.
        t196 = t165.
        DATA t204 TYPE string.
        t204 = t31->str.
        DATA(t206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t206->has = abap_true.
        t206->value = t204.
        t191 = t196->get_by_name( i_name = t206 ).
      ENDIF.
      DATA t208 TYPE REF TO zif_lnt_method_definition.
      t208 = t191.
      DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
      IF xsdbool( t208 IS INITIAL ) = abap_true.
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
    DATA t4 TYPE REF TO zif_lnt_statement.
    t4 = t1->snode->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_st_call_function ) = abap_false ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    t10 = t1->snode.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
    t8 = t10->find_first_expression( i_type_9913 = t12 ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    t21 = t8->get_first_token( ).
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE abap_bool.
    DATA t27 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t27 = t21->start->col.
    DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t44 = t1->token->start->col.
    t26 = zlnt_runtime_numb_290eb04a9758=>compare( left = t27 right = t44 op = `!=` ).
    t25 = t26.
    IF t26 = abap_false.
      t25 = xsdbool( t21->start->row <> t1->token->start->row ).
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
    DATA t5 TYPE REF TO zif_lnt_statement.
    t5 = t1->snode->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_include ) = abap_false ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    t11 = t1->snode.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t9 = t11->find_first_expression( i_type_9913 = t13 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    t22 = t9->get_first_token( ).
    DATA t26 TYPE abap_bool.
    DATA t27 TYPE abap_bool.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t28 = t22->start->col.
    DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t45 = t1->token->start->col.
    t27 = zlnt_runtime_numb_290eb04a9758=>compare( left = t28 right = t45 op = `!=` ).
    t26 = t27.
    IF t27 = abap_false.
      t26 = xsdbool( t22->start->row <> t1->token->start->row ).
    ENDIF.
    IF t26 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_abap_object.
    DATA t69 TYPE REF TO zcl_lnt_abap_object.
    DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t75->has = abap_true.
    t75->value = |PROG|.
    t72 = t75.
    DATA t82 TYPE string.
    t82 = t22->str.
    DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t84->has = abap_true.
    t84->value = t82.
    DATA t86 TYPE REF TO object.
    t86 = t2->get_object( i_type_9913 = t72 i_name = t84 ).
    t69 ?= t86.
    t68 = t69.
    IF xsdbool( t68 IS BOUND ) = abap_true.
      DATA t91 TYPE REF TO zcl_lnt_abap_file.
      DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t92 = t68->parsed.
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
