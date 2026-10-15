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
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t5.
    DATA(t6) = t1.
    DATA(t7) = t2.
    t5 = zcl_lnt_lsp_lookup=>find_include( i_found = t6 i_reg_f149 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_location.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_location.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t12.
      DATA(t13) = t4.
      t12 = t13.
      t11 = zcl_lnt_lsp_lookup=>abap_file_result( i_abap = t12 ).
      t10 = t11.
      DATA t14 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t16.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA(t20) = |Include|.
          DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t21->has = abap_true.
          t21->value = t20.
          t18 = t21.
        ELSE.
          DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t22.
          t18 = t22.
        ENDIF.
        t17 = t18.
        DATA t23 TYPE REF TO zcl_lnt_location.
        CLEAR t23.
        DATA t24 TYPE REF TO zcl_lnt_location.
        CLEAR t24.
        DATA(t25) = abap_true.
        IF t25 = abap_true.
          DATA(t26) = t10.
          t24 = t26.
        ELSE.
          DATA t27 TYPE REF TO zcl_lnt_location.
          CLEAR t27.
          t24 = t27.
        ENDIF.
        t23 = t24.
        DATA t28 TYPE REF TO zcl_lnt_location.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_location.
        CLEAR t29.
        DATA(t30) = abap_true.
        IF t30 = abap_true.
          DATA(t31) = t10.
          t29 = t31.
        ELSE.
          DATA t32 TYPE REF TO zcl_lnt_location.
          CLEAR t32.
          t29 = t32.
        ENDIF.
        t28 = t29.
        DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t34.
        t33 = t34.
        DATA t35 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t35.
        DATA t36 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t36.
        t35 = t36.
        t16 = NEW zcl_lnt_lsp_lookup_result( i_hover = t17 i_definition = t23 i_implementation = t28 i_definition_id = t33 i_scope = t35 ).
        CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
        t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t37 ).
        ENDIF.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t38 ).
        ENDIF.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t39 ).
        ENDIF.
        CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
        t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t40) = |hover|.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
        ENDIF.
        DATA(t42) = |definition|.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
        ENDIF.
        DATA(t44) = |implementation|.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
        ENDIF.
        t14 = t16.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t46.
        t14 = t46.
      ENDIF.
      result = t14.
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    DATA(t49) = t1.
    t48 = zcl_lnt_lsp_lookup=>find_function_module( i_found = t49 ).
    t47 = t48.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = t47.
    IF t51 IS BOUND.
      IF t51->has = abap_true.
        t50 = xsdbool( strlen( t51->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t50 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA t54 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = VALUE string( ).
          DATA(t59) = |Function Module |.
          DATA(t60) = VALUE string( ).
          DATA(t61) = t47.
          t60 = t61->value.
          DATA(t62) = strlen( t59 ).
          t58 = |{ t59 }{ t60 }|.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t58.
          t56 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t56 = t64.
        ENDIF.
        t55 = t56.
        DATA t65 TYPE REF TO zcl_lnt_location.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_location.
        CLEAR t66.
        t65 = t66.
        DATA t67 TYPE REF TO zcl_lnt_location.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_location.
        CLEAR t68.
        t67 = t68.
        DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t70.
        t69 = t70.
        DATA t71 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t71.
        DATA t72 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t72.
        t71 = t72.
        t54 = NEW zcl_lnt_lsp_lookup_result( i_hover = t55 i_definition = t65 i_implementation = t67 i_definition_id = t69 i_scope = t71 ).
        CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
        t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t73 ).
        ENDIF.
        CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
        t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t74) = |hover|.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
        ENDIF.
        t52 = t54.
      ELSE.
        DATA t76 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t76.
        t52 = t76.
      ENDIF.
      result = t52.
      RETURN.
    ENDIF.
    DATA t77 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t77.
    DATA(t78) = t3.
    t77 = t78.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t3.
    t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_ob_program ).
    t79 = t80.
    IF t80 = abap_true.
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zcl_lnt_ob_program.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_ob_program.
      CLEAR t84.
      DATA(t85) = t3.
      t84 ?= t85.
      t83 = t84.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = t83.
      t87->parse_xml( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA t89 TYPE REF TO zcl_lnt_shape_d77da4ed.
      CLEAR t89.
      DATA t90 TYPE REF TO zcl_lnt_shape_d77da4ed.
      CLEAR t90.
      DATA(t91) = t83.
      t90 = t91->parsed_xml.
      t89 = t90.
      t88 = t89->is_include.
      t86 = t88.
      t82 = t86.
      t79 = t82.
    ENDIF.
    IF t79 = abap_true.
      DATA t92 TYPE REF TO zcl_lnt_include_graph.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_include_graph.
      CLEAR t93.
      DATA(t94) = t2.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      t93 = NEW zcl_lnt_include_graph( i_reg_f149 = t94 i_severity = t95 i_allow_unused = t96 ).
      t92 = t93.
      DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t97.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t98.
      DATA(t99) = t92.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA(t101) = abap_true.
      IF t101 = abap_true.
        DATA(t102) = VALUE string( ).
        DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t103.
        DATA t104 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t104.
        DATA(t105) = t1.
        t104 = t105->identifier.
        t103 = t104.
        DATA(t106) = VALUE string( ).
        DATA(t107) = t103.
        t106 = t107->filename.
        t102 = t106.
        DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t108->has = abap_true.
        t108->value = t102.
        t100 = t108.
      ELSE.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        t100 = t109.
      ENDIF.
      t98 = t99->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t100 ).
      t97 = t98.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = VALUE i( ).
      DATA(t112) = t97.
      t112->load( ).
      t111 = lines( t112->items ).
      DATA(t113) = 1.
      t110 = xsdbool( t111 = t113 ).
      IF t110 = abap_true.
        DATA t114 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t114.
        DATA t115 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t116.
        DATA t117 TYPE REF TO zif_lnt_object.
        CLEAR t117.
        DATA(t118) = t2.
        DATA t119 TYPE REF TO zif_lnt_file.
        CLEAR t119.
        DATA t120 TYPE REF TO zif_lnt_file.
        CLEAR t120.
        DATA(t121) = t2.
        DATA(t122) = VALUE string( ).
        DATA(t123) = t97.
        IF t123->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t123->load( ).
        CLEAR t122.
        READ TABLE t123->items INDEX 1 INTO t122.
        t120 = t121->get_file_by_name( i_filename = t122 ).
        t119 = t120.
        t117 = t118->find_object_for_file( i_file = t119 ).
        t116 ?= t117.
        t115 = t116.
        DATA t124 TYPE REF TO zcl_lnt_abap_object.
        CLEAR t124.
        DATA(t125) = VALUE abap_bool( ).
        DATA(t126) = t115.
        t125 = xsdbool( t126 IS BOUND ).
        IF t125 = abap_true.
          DATA(t127) = t115.
          t124 = t127.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_ob_program.
          CLEAR t128.
          DATA(t129) = t3.
          t128 ?= t129.
          t124 = t128.
        ENDIF.
        t114 = t124.
        t77 = t114.
      ENDIF.
    ENDIF.
    DATA t130 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t132.
    DATA t133 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t133.
    DATA t134 TYPE REF TO zcl_lnt_syntax_logic.
    CLEAR t134.
    DATA(t135) = t2.
    DATA(t136) = t77.
    t134 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t135 i_object_19cd = t136 ).
    t133 = t134->run( ).
    t132 = t133->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t137 TYPE REF TO zcl_lnt_position.
    CLEAR t137.
    DATA(t138) = abap_true.
    IF t138 = abap_true.
      DATA t139 TYPE REF TO zcl_lnt_position.
      CLEAR t139.
      DATA t140 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t140.
      DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t141.
      DATA(t142) = t1.
      t141 = t142->identifier.
      t140 = t141.
      DATA t143 TYPE REF TO zcl_lnt_position.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t144.
      DATA t145 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t145.
      DATA(t146) = t140.
      t145 = t146->token.
      t144 = t145.
      DATA t147 TYPE REF TO zcl_lnt_position.
      CLEAR t147.
      DATA(t148) = t144.
      t147 = t148->start.
      t143 = t147.
      t139 = t143.
      t137 = t139.
    ELSE.
      DATA t149 TYPE REF TO zcl_lnt_position.
      CLEAR t149.
      t137 = t149.
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t150.
    DATA(t151) = abap_true.
    IF t151 = abap_true.
      DATA(t152) = VALUE string( ).
      DATA t153 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t153.
      DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t154.
      DATA(t155) = t1.
      t154 = t155->identifier.
      t153 = t154.
      DATA(t156) = VALUE string( ).
      DATA(t157) = t153.
      t156 = t157->filename.
      t152 = t156.
      DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t158->has = abap_true.
      t158->value = t152.
      t150 = t158.
    ELSE.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t159.
      t150 = t159.
    ENDIF.
    t131 = t132->lookup_position( i_p = t137 i_filename = t150 ).
    t130 = t131.
    DATA(t160) = VALUE abap_bool( ).
    DATA t161 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t161.
    DATA(t162) = t130.
    t161 = t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    t163 = t164.
    DATA(t165) = VALUE abap_bool( ).
    DATA(t166) = t161.
    IF t166 IS INITIAL.
      t165 = abap_true.
    ENDIF.
    t160 = t165.
    IF t160 = abap_true.
      DATA t167 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t167.
      result = t167.
      RETURN.
    ENDIF.
    DATA t168 TYPE REF TO zif_lnt_class_definition.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_class_definition.
    CLEAR t169.
    DATA t170 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t170.
    DATA(t171) = t130.
    t170 = t171.
    DATA(t172) = VALUE string( ).
    DATA t173 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t173.
    DATA t174 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t174.
    DATA(t175) = t1.
    t174 = t175->token.
    t173 = t174.
    DATA(t176) = VALUE string( ).
    DATA(t177) = t173.
    t176 = t177->str.
    t172 = t176.
    t169 = t170->find_class_definition( i_name = t172 ).
    t168 = t169.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = VALUE abap_bool( ).
    DATA(t180) = t168.
    t179 = xsdbool( t180 IS BOUND ).
    t178 = t179.
    IF t179 = abap_true.
      DATA(t181) = VALUE abap_bool( ).
      DATA t182 TYPE REF TO zcl_lnt_position.
      CLEAR t182.
      DATA t183 TYPE REF TO zif_lnt_class_definition.
      CLEAR t183.
      DATA(t184) = t168.
      t183 = t184.
      t182 = t183->get_start( ).
      DATA t185 TYPE REF TO zcl_lnt_position.
      CLEAR t185.
      DATA t186 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t186.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t187.
      DATA(t188) = t1.
      t187 = t188->token.
      t186 = t187.
      DATA t189 TYPE REF TO zcl_lnt_position.
      CLEAR t189.
      DATA(t190) = t186.
      t189 = t190->start.
      t185 = t189.
      t181 = t182->equals( i_p = t185 ).
      t178 = t181.
    ENDIF.
    IF t178 = abap_true.
      DATA t191 TYPE REF TO zcl_lnt_location.
      CLEAR t191.
      DATA t192 TYPE REF TO zcl_lnt_location.
      CLEAR t192.
      DATA t193 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t193.
      DATA t194 TYPE REF TO zif_lnt_class_definition.
      CLEAR t194.
      DATA(t195) = t168.
      t194 = t195.
      t193 ?= t194.
      t192 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t193 ).
      t191 = t192.
      DATA t196 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t196.
      DATA(t197) = abap_true.
      IF t197 = abap_true.
        DATA t198 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t198.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t200.
        DATA(t201) = abap_true.
        IF t201 = abap_true.
          DATA(t202) = VALUE string( ).
          DATA(t203) = |Class Definition, |.
          DATA(t204) = VALUE string( ).
          DATA t205 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t206.
          DATA(t207) = t1.
          t206 = t207->token.
          t205 = t206.
          DATA(t208) = VALUE string( ).
          DATA(t209) = t205.
          t208 = t209->str.
          t204 = t208.
          DATA(t210) = strlen( t203 ).
          t202 = |{ t203 }{ t204 }|.
          DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t211->has = abap_true.
          t211->value = t202.
          t200 = t211.
        ELSE.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          t200 = t212.
        ENDIF.
        t199 = t200.
        DATA t213 TYPE REF TO zcl_lnt_location.
        CLEAR t213.
        DATA t214 TYPE REF TO zcl_lnt_location.
        CLEAR t214.
        DATA(t215) = abap_true.
        IF t215 = abap_true.
          DATA(t216) = t191.
          t214 = t216.
        ELSE.
          DATA t217 TYPE REF TO zcl_lnt_location.
          CLEAR t217.
          t214 = t217.
        ENDIF.
        t213 = t214.
        DATA t218 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t218.
        DATA t219 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t219.
        DATA(t220) = abap_true.
        IF t220 = abap_true.
          DATA t221 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t221.
          DATA t222 TYPE REF TO zif_lnt_class_definition.
          CLEAR t222.
          DATA(t223) = t168.
          t222 = t223.
          t221 ?= t222.
          t219 = t221.
        ELSE.
          DATA t224 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t224.
          t219 = t224.
        ENDIF.
        t218 = t219.
        DATA t225 TYPE REF TO zcl_lnt_location.
        CLEAR t225.
        DATA t226 TYPE REF TO zcl_lnt_location.
        CLEAR t226.
        t225 = t226.
        DATA t227 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t227.
        DATA t228 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t228.
        DATA(t229) = abap_true.
        IF t229 = abap_true.
          DATA t230 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t230.
          DATA(t231) = t130.
          t230 = t231.
          t228 = t230.
        ELSE.
          DATA t232 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t232.
          t228 = t232.
        ENDIF.
        t227 = t228.
        t198 = NEW zcl_lnt_lsp_lookup_result( i_hover = t199 i_definition = t213 i_implementation = t225 i_definition_id = t218 i_scope = t227 ).
        CREATE OBJECT t198->zlnt_view_ownkeys_b0e8086400eb.
        t198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t233 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t234 ).
        ENDIF.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t235.
        IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t235 ).
        ENDIF.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t236 ).
        ENDIF.
        DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t237.
        IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t237 ).
        ENDIF.
        CREATE OBJECT t198->zlnt_json_ownkeys_70e5fd461788.
        t198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t238) = |hover|.
        DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t239.
        IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
        ENDIF.
        DATA(t240) = |definition|.
        DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t241.
        IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
        ENDIF.
        DATA(t242) = |definitionId|.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t242 p1 = t243 ).
        ENDIF.
        DATA(t244) = |implementation|.
        DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t245.
        IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t244 p1 = t245 ).
        ENDIF.
        DATA(t246) = |scope|.
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t247.
        IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t246 p1 = t247 ).
        ENDIF.
        t196 = t198.
      ELSE.
        DATA t248 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t248.
        t196 = t248.
      ENDIF.
      result = t196.
      RETURN.
    ENDIF.
    DATA t249 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t250.
    DATA t251 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t251.
    DATA(t252) = t130.
    t251 = t252.
    DATA(t253) = VALUE string( ).
    DATA t254 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t254.
    DATA t255 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t255.
    DATA(t256) = t1.
    t255 = t256->token.
    t254 = t255.
    DATA(t257) = VALUE string( ).
    DATA(t258) = t254.
    t257 = t258->str.
    t253 = t257.
    t250 = t251->find_interface_definition( i_name = t253 ).
    t249 = t250.
    DATA(t259) = VALUE abap_bool( ).
    DATA(t260) = VALUE abap_bool( ).
    DATA(t261) = t249.
    t260 = xsdbool( t261 IS BOUND ).
    t259 = t260.
    IF t260 = abap_true.
      DATA(t262) = VALUE abap_bool( ).
      DATA t263 TYPE REF TO zcl_lnt_position.
      CLEAR t263.
      DATA t264 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t264.
      DATA(t265) = t249.
      t264 = t265.
      t263 = t264->get_start( ).
      DATA t266 TYPE REF TO zcl_lnt_position.
      CLEAR t266.
      DATA t267 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t267.
      DATA t268 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t268.
      DATA(t269) = t1.
      t268 = t269->token.
      t267 = t268.
      DATA t270 TYPE REF TO zcl_lnt_position.
      CLEAR t270.
      DATA(t271) = t267.
      t270 = t271->start.
      t266 = t270.
      t262 = t263->equals( i_p = t266 ).
      t259 = t262.
    ENDIF.
    IF t259 = abap_true.
      DATA t272 TYPE REF TO zcl_lnt_location.
      CLEAR t272.
      DATA t273 TYPE REF TO zcl_lnt_location.
      CLEAR t273.
      DATA t274 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t274.
      DATA t275 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t275.
      DATA(t276) = t249.
      t275 = t276.
      t274 ?= t275.
      t273 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t274 ).
      t272 = t273.
      DATA t277 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t277.
      DATA(t278) = abap_true.
      IF t278 = abap_true.
        DATA t279 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t279.
        DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t280.
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t281.
        DATA(t282) = abap_true.
        IF t282 = abap_true.
          DATA(t283) = VALUE string( ).
          DATA(t284) = |Interface Definition, |.
          DATA(t285) = VALUE string( ).
          DATA t286 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t286.
          DATA t287 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t287.
          DATA(t288) = t1.
          t287 = t288->token.
          t286 = t287.
          DATA(t289) = VALUE string( ).
          DATA(t290) = t286.
          t289 = t290->str.
          t285 = t289.
          DATA(t291) = strlen( t284 ).
          t283 = |{ t284 }{ t285 }|.
          DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t292->has = abap_true.
          t292->value = t283.
          t281 = t292.
        ELSE.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          t281 = t293.
        ENDIF.
        t280 = t281.
        DATA t294 TYPE REF TO zcl_lnt_location.
        CLEAR t294.
        DATA t295 TYPE REF TO zcl_lnt_location.
        CLEAR t295.
        DATA(t296) = abap_true.
        IF t296 = abap_true.
          DATA(t297) = t272.
          t295 = t297.
        ELSE.
          DATA t298 TYPE REF TO zcl_lnt_location.
          CLEAR t298.
          t295 = t298.
        ENDIF.
        t294 = t295.
        DATA t299 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t299.
        DATA t300 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t300.
        DATA(t301) = abap_true.
        IF t301 = abap_true.
          DATA t302 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t302.
          DATA t303 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t303.
          DATA(t304) = t249.
          t303 = t304.
          t302 ?= t303.
          t300 = t302.
        ELSE.
          DATA t305 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t305.
          t300 = t305.
        ENDIF.
        t299 = t300.
        DATA t306 TYPE REF TO zcl_lnt_location.
        CLEAR t306.
        DATA t307 TYPE REF TO zcl_lnt_location.
        CLEAR t307.
        t306 = t307.
        DATA t308 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t308.
        DATA t309 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t309.
        DATA(t310) = abap_true.
        IF t310 = abap_true.
          DATA t311 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t311.
          DATA(t312) = t130.
          t311 = t312.
          t309 = t311.
        ELSE.
          DATA t313 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t313.
          t309 = t313.
        ENDIF.
        t308 = t309.
        t279 = NEW zcl_lnt_lsp_lookup_result( i_hover = t280 i_definition = t294 i_implementation = t306 i_definition_id = t299 i_scope = t308 ).
        CREATE OBJECT t279->zlnt_view_ownkeys_b0e8086400eb.
        t279->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t314.
        IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t314 ).
        ENDIF.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t315 ).
        ENDIF.
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t316.
        IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t316 ).
        ENDIF.
        DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t317.
        IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t317 ).
        ENDIF.
        DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t318.
        IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t318 ).
        ENDIF.
        CREATE OBJECT t279->zlnt_json_ownkeys_70e5fd461788.
        t279->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t319) = |hover|.
        DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t320.
        IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
        ENDIF.
        DATA(t321) = |definition|.
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t322.
        IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
        ENDIF.
        DATA(t323) = |definitionId|.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
        ENDIF.
        DATA(t325) = |implementation|.
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t326.
        IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
        ENDIF.
        DATA(t327) = |scope|.
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = t327 p1 = t328 ).
        ENDIF.
        t277 = t279.
      ELSE.
        DATA t329 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t329.
        t277 = t329.
      ENDIF.
      result = t277.
      RETURN.
    ENDIF.
    DATA t330 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t330.
    DATA t331 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t331.
    DATA t332 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t332.
    DATA(t333) = t130.
    t332 = t333.
    DATA(t334) = VALUE string( ).
    DATA t335 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t335.
    DATA t336 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t336.
    DATA(t337) = t1.
    t336 = t337->token.
    t335 = t336.
    DATA(t338) = VALUE string( ).
    DATA(t339) = t335.
    t338 = t339->str.
    t334 = t338.
    t331 = t332->find_type( i_name = t334 ).
    t330 = t331.
    DATA(t340) = VALUE abap_bool( ).
    DATA(t341) = VALUE abap_bool( ).
    DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t342.
    DATA(t343) = t330.
    t342 = t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    t344 = t345.
    DATA(t346) = VALUE abap_bool( ).
    DATA(t347) = VALUE abap_bool( ).
    DATA(t348) = t342.
    IF t348 IS INITIAL.
      t347 = abap_true.
    ENDIF.
    t346 = xsdbool( t347 = abap_false ).
    t341 = t346.
    t340 = t341.
    IF t341 = abap_true.
      DATA(t349) = VALUE abap_bool( ).
      DATA t350 TYPE REF TO zcl_lnt_position.
      CLEAR t350.
      DATA t351 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t351.
      DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t352.
      DATA(t353) = t330.
      t352 = t353.
      t351 = t352.
      DATA t354 TYPE REF TO zcl_lnt_position.
      CLEAR t354.
      DATA t355 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t355.
      DATA t356 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t356.
      DATA(t357) = t351.
      t356 = t357->token.
      t355 = t356.
      DATA t358 TYPE REF TO zcl_lnt_position.
      CLEAR t358.
      DATA(t359) = t355.
      t358 = t359->start.
      t354 = t358.
      t350 = t354.
      DATA t360 TYPE REF TO zcl_lnt_position.
      CLEAR t360.
      DATA t361 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t361.
      DATA t362 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t362.
      DATA(t363) = t1.
      t362 = t363->token.
      t361 = t362.
      DATA t364 TYPE REF TO zcl_lnt_position.
      CLEAR t364.
      DATA(t365) = t361.
      t364 = t365->start.
      t360 = t364.
      t349 = t350->equals( i_p = t360 ).
      t340 = t349.
    ENDIF.
    IF t340 = abap_true.
      DATA t366 TYPE REF TO zcl_lnt_location.
      CLEAR t366.
      DATA t367 TYPE REF TO zcl_lnt_location.
      CLEAR t367.
      DATA t368 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t368.
      DATA(t369) = t330.
      t368 = t369.
      t367 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t368 ).
      t366 = t367.
      DATA(t370) = VALUE string( ).
      DATA(t371) = VALUE string( ).
      DATA(t372) = VALUE string( ).
      DATA(t373) = VALUE string( ).
      DATA(t374) = |Type Definition, |.
      DATA(t375) = VALUE string( ).
      DATA t376 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t376.
      DATA t377 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t377.
      DATA(t378) = t1.
      t377 = t378->token.
      t376 = t377.
      DATA(t379) = VALUE string( ).
      DATA(t380) = t376.
      t379 = t380->str.
      t375 = t379.
      DATA(t381) = strlen( t374 ).
      t373 = |{ t374 }{ t375 }|.
      DATA(t382) = |\n\n|.
      DATA(t383) = strlen( t373 ).
      t372 = |{ t373 }{ t382 }|.
      DATA(t384) = VALUE string( ).
      DATA t385 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t385.
      DATA(t386) = t330.
      t385 = t386.
      t384 = zcl_lnt_lsp_lookup=>dump_type( i_variable = t385 ).
      DATA(t387) = strlen( t372 ).
      t371 = |{ t372 }{ t384 }|.
      t370 = t371.
      DATA t388 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t388.
      DATA(t389) = abap_true.
      IF t389 = abap_true.
        DATA t390 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t390.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
        DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t392.
        DATA(t393) = abap_true.
        IF t393 = abap_true.
          DATA(t394) = t370.
          DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t395->has = abap_true.
          t395->value = t394.
          t392 = t395.
        ELSE.
          DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t396.
          t392 = t396.
        ENDIF.
        t391 = t392.
        DATA t397 TYPE REF TO zcl_lnt_location.
        CLEAR t397.
        DATA t398 TYPE REF TO zcl_lnt_location.
        CLEAR t398.
        DATA(t399) = abap_true.
        IF t399 = abap_true.
          DATA(t400) = t366.
          t398 = t400.
        ELSE.
          DATA t401 TYPE REF TO zcl_lnt_location.
          CLEAR t401.
          t398 = t401.
        ENDIF.
        t397 = t398.
        DATA t402 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t402.
        DATA t403 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t403.
        DATA(t404) = t330.
        t403 = t404.
        t402 = t403.
        DATA t405 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t405.
        DATA t406 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t406.
        DATA(t407) = abap_true.
        IF t407 = abap_true.
          DATA t408 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t408.
          DATA(t409) = t130.
          t408 = t409.
          t406 = t408.
        ELSE.
          DATA t410 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t410.
          t406 = t410.
        ENDIF.
        t405 = t406.
        DATA t411 TYPE REF TO zcl_lnt_location.
        CLEAR t411.
        DATA t412 TYPE REF TO zcl_lnt_location.
        CLEAR t412.
        t411 = t412.
        t390 = NEW zcl_lnt_lsp_lookup_result( i_hover = t391 i_definition = t397 i_implementation = t411 i_definition_id = t402 i_scope = t405 ).
        CREATE OBJECT t390->zlnt_view_ownkeys_b0e8086400eb.
        t390->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t413.
        IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t413 ).
        ENDIF.
        DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t414.
        IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t414 ).
        ENDIF.
        DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t415.
        IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t415 ).
        ENDIF.
        DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t416.
        IF t390->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t390->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t416 ).
        ENDIF.
        CREATE OBJECT t390->zlnt_json_ownkeys_70e5fd461788.
        t390->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t417) = |hover|.
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t418.
        IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
        ENDIF.
        DATA(t419) = |definition|.
        DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t420.
        IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
        ENDIF.
        DATA(t421) = |definitionId|.
        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t422.
        IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
        ENDIF.
        DATA(t423) = |scope|.
        DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t424.
        IF t390->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t390->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
        ENDIF.
        t388 = t390.
      ELSE.
        DATA t425 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t425.
        t388 = t425.
      ENDIF.
      result = t388.
      RETURN.
    ENDIF.
    DATA t426 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t426.
    DATA t427 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t427.
    DATA(t428) = t1.
    DATA t429 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t429.
    DATA t430 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t430.
    DATA(t431) = t130.
    t430 = t431.
    t429 = t430->get_parent( ).
    t427 = zcl_lnt_lsp_lookup=>find_method_definition( i_found = t428 i_scope = t429 ).
    t426 = t427.
    DATA(t432) = VALUE abap_bool( ).
    DATA(t433) = VALUE abap_bool( ).
    DATA t434 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t434.
    DATA(t435) = t426.
    t434 = t435.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    t436 = t437.
    DATA(t438) = VALUE abap_bool( ).
    DATA(t439) = VALUE abap_bool( ).
    DATA(t440) = t434.
    IF t440 IS INITIAL.
      t439 = abap_true.
    ENDIF.
    t438 = xsdbool( t439 = abap_false ).
    t433 = t438.
    t432 = t433.
    IF t433 = abap_true.
      DATA(t441) = VALUE abap_bool( ).
      DATA t442 TYPE REF TO zcl_lnt_position.
      CLEAR t442.
      DATA t443 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t443.
      DATA t444 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t444.
      DATA(t445) = t426.
      t444 = t445.
      t443 = t444.
      DATA t446 TYPE REF TO zcl_lnt_position.
      CLEAR t446.
      DATA t447 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t447.
      DATA t448 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t448.
      DATA(t449) = t443.
      t448 = t449->token.
      t447 = t448.
      DATA t450 TYPE REF TO zcl_lnt_position.
      CLEAR t450.
      DATA(t451) = t447.
      t450 = t451->start.
      t446 = t450.
      t442 = t446.
      DATA t452 TYPE REF TO zcl_lnt_position.
      CLEAR t452.
      DATA t453 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t453.
      DATA t454 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t454.
      DATA(t455) = t1.
      t454 = t455->token.
      t453 = t454.
      DATA t456 TYPE REF TO zcl_lnt_position.
      CLEAR t456.
      DATA(t457) = t453.
      t456 = t457->start.
      t452 = t456.
      t441 = t442->equals( i_p = t452 ).
      t432 = t441.
    ENDIF.
    IF t432 = abap_true.
      DATA t458 TYPE REF TO zcl_lnt_location.
      CLEAR t458.
      DATA t459 TYPE REF TO zcl_lnt_location.
      CLEAR t459.
      DATA t460 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t460.
      DATA(t461) = t426.
      t460 = t461.
      t459 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t460 ).
      t458 = t459.
      DATA(t462) = VALUE string( ).
      DATA(t463) = VALUE string( ).
      DATA(t464) = VALUE string( ).
      DATA(t465) = |Method Definition "|.
      DATA(t466) = VALUE string( ).
      DATA t467 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t467.
      DATA t468 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t468.
      DATA(t469) = t426.
      t468 = t469.
      t467 = t468.
      DATA(t470) = VALUE string( ).
      DATA(t471) = VALUE string( ).
      DATA(t472) = VALUE string( ).
      DATA t473 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t473.
      DATA t474 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t474.
      DATA(t475) = t467.
      t474 = t475->token.
      t473 = t474.
      DATA(t476) = VALUE string( ).
      DATA(t477) = t473.
      t476 = t477->str.
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
        DATA(t487) = t471.
        t486 = t487.
        DATA(t488) = VALUE string( ).
        DATA(t489) = t486.
        DATA(t490) = 1.
        DATA(t491) = VALUE i( ).
        DATA(t492) = t486.
        DATA(t493) = strlen( t492 ).
        t491 = t493.
        DATA(t494) = strlen( t489 ).
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
          t488 = t489+t490(t491).
        ENDIF.
        t485 = t488.
        t471 = t485.
      ENDIF.
      DATA(t495) = t471.
      t470 = t495.
      t466 = t470.
      DATA(t496) = strlen( t465 ).
      t464 = |{ t465 }{ t466 }|.
      DATA(t497) = |"|.
      DATA(t498) = strlen( t464 ).
      t463 = |{ t464 }{ t497 }|.
      t462 = t463.
      DATA t499 TYPE REF TO zif_lnt_method_definition.
      CLEAR t499.
      DATA t500 TYPE REF TO zif_lnt_method_definition.
      CLEAR t500.
      DATA t501 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t501.
      DATA(t502) = t426.
      t501 = t502.
      t500 ?= t501.
      t499 = t500.
      DATA(t503) = VALUE string( ).
      DATA(t504) = VALUE string( ).
      DATA(t505) = VALUE f( ).
      DATA(t506) = t499.
      t505 = t506->get_visibility( ).
      t504 = zcl_lnt_lsp_lookup=>visibility_to_string( i_visibility_5c1f = t505 ).
      t503 = t504.
      DATA(t507) = VALUE string( ).
      DATA(t508) = t462.
      DATA(t509) = VALUE string( ).
      DATA(t510) = |\n\n|.
      DATA(t511) = t503.
      DATA(t512) = strlen( t510 ).
      t509 = |{ t510 }{ t511 }|.
      DATA(t513) = strlen( t508 ).
      t507 = |{ t508 }{ t509 }|.
      t462 = t507.
      DATA t514 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t514.
      DATA(t515) = abap_true.
      IF t515 = abap_true.
        DATA t516 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t516.
        DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t517.
        DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t518.
        DATA(t519) = abap_true.
        IF t519 = abap_true.
          DATA(t520) = t462.
          DATA(t521) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t521->has = abap_true.
          t521->value = t520.
          t518 = t521.
        ELSE.
          DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t522.
          t518 = t522.
        ENDIF.
        t517 = t518.
        DATA t523 TYPE REF TO zcl_lnt_location.
        CLEAR t523.
        DATA t524 TYPE REF TO zcl_lnt_location.
        CLEAR t524.
        DATA(t525) = abap_true.
        IF t525 = abap_true.
          DATA(t526) = t458.
          t524 = t526.
        ELSE.
          DATA t527 TYPE REF TO zcl_lnt_location.
          CLEAR t527.
          t524 = t527.
        ENDIF.
        t523 = t524.
        DATA t528 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t528.
        DATA t529 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t529.
        DATA(t530) = abap_true.
        IF t530 = abap_true.
          DATA t531 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t531.
          DATA(t532) = t426.
          t531 = t532.
          t529 = t531.
        ELSE.
          DATA t533 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t533.
          t529 = t533.
        ENDIF.
        t528 = t529.
        DATA t534 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t534.
        DATA t535 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t535.
        DATA(t536) = abap_true.
        IF t536 = abap_true.
          DATA t537 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t537.
          DATA(t538) = t130.
          t537 = t538.
          t535 = t537.
        ELSE.
          DATA t539 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t539.
          t535 = t539.
        ENDIF.
        t534 = t535.
        DATA t540 TYPE REF TO zcl_lnt_location.
        CLEAR t540.
        DATA t541 TYPE REF TO zcl_lnt_location.
        CLEAR t541.
        t540 = t541.
        t516 = NEW zcl_lnt_lsp_lookup_result( i_hover = t517 i_definition = t523 i_implementation = t540 i_definition_id = t528 i_scope = t534 ).
        CREATE OBJECT t516->zlnt_view_ownkeys_b0e8086400eb.
        t516->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t542.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t542 ).
        ENDIF.
        DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t543.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t543 ).
        ENDIF.
        DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t544.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t544 ).
        ENDIF.
        DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t545.
        IF t516->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t516->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t545 ).
        ENDIF.
        CREATE OBJECT t516->zlnt_json_ownkeys_70e5fd461788.
        t516->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t546) = |hover|.
        DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t547.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
        ENDIF.
        DATA(t548) = |definition|.
        DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t549.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t548 p1 = t549 ).
        ENDIF.
        DATA(t550) = |definitionId|.
        DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t551.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t550 p1 = t551 ).
        ENDIF.
        DATA(t552) = |scope|.
        DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t553.
        IF t516->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t516->zlnt_json_ownkeys_70e5fd461788->put( p0 = t552 p1 = t553 ).
        ENDIF.
        t514 = t516.
      ELSE.
        DATA t554 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t554.
        t514 = t554.
      ENDIF.
      result = t514.
      RETURN.
    ENDIF.
    DATA(t555) = VALUE string( ).
    DATA(t556) = ||.
    t555 = t556.
    DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t558.
    DATA t559 TYPE REF TO zif_lnt_ddic_references.
    CLEAR t559.
    DATA(t560) = t2.
    t559 = t560->get_ddic_references( ).
    DATA(t561) = VALUE string( ).
    DATA t562 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t562.
    DATA t563 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t563.
    DATA(t564) = t1.
    t563 = t564->identifier.
    t562 = t563.
    DATA(t565) = VALUE string( ).
    DATA(t566) = t562.
    t565 = t566->filename.
    t561 = t565.
    DATA(t567) = VALUE f( ).
    DATA t568 TYPE REF TO zcl_lnt_position.
    CLEAR t568.
    DATA t569 TYPE REF TO zcl_lnt_position.
    CLEAR t569.
    DATA t570 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t570.
    DATA t571 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t571.
    DATA(t572) = t1.
    t571 = t572->identifier.
    t570 = t571.
    DATA t573 TYPE REF TO zcl_lnt_position.
    CLEAR t573.
    DATA t574 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t574.
    DATA t575 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t575.
    DATA(t576) = t570.
    t575 = t576->token.
    t574 = t575.
    DATA t577 TYPE REF TO zcl_lnt_position.
    CLEAR t577.
    DATA(t578) = t574.
    t577 = t578->start.
    t573 = t577.
    t569 = t573.
    t568 = t569.
    DATA(t579) = VALUE f( ).
    DATA(t580) = t568.
    t579 = t580->row.
    t567 = t579.
    t558 = t559->list_by_filename( i_filename = t561 i_line = t567 ).
    t557 = t558.
    DATA(t581) = t557.
    DATA t582 TYPE REF TO zcl_lnt_iobject_and_token.
    CLEAR t582.
    DATA t583 TYPE REF TO object.
    CLEAR t583.
    DATA(t584) = VALUE i( ).
    DO.
      t581->load( ).
      IF t584 >= lines( t581->items ).
        EXIT.
      ENDIF.
      CLEAR t583.
      READ TABLE t581->items INDEX t584 + 1 INTO t583.
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
      DATA(t591) = t582.
      t590 = t591->object_a393.
      t589 = xsdbool( t590 IS BOUND ).
      t588 = t589.
      IF t589 = abap_true.
        DATA(t592) = VALUE abap_bool( ).
        DATA t593 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t593.
        DATA(t594) = t582.
        t593 = t594->token.
        t592 = xsdbool( t593 IS BOUND ).
        t588 = t592.
      ENDIF.
      t587 = t588.
      IF t588 = abap_true.
        DATA(t595) = VALUE abap_bool( ).
        DATA t596 TYPE REF TO zcl_lnt_position.
        CLEAR t596.
        DATA t597 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t597.
        DATA t598 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t598.
        DATA t599 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t599.
        DATA(t600) = t582.
        t599 = t600->token.
        t598 = t599.
        t597 = t598.
        DATA t601 TYPE REF TO zcl_lnt_position.
        CLEAR t601.
        DATA(t602) = t597.
        t601 = t602->start.
        t596 = t601.
        DATA t603 TYPE REF TO zcl_lnt_position.
        CLEAR t603.
        DATA t604 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t604.
        DATA t605 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t605.
        DATA(t606) = t1.
        t605 = t606->identifier.
        t604 = t605.
        DATA t607 TYPE REF TO zcl_lnt_position.
        CLEAR t607.
        DATA t608 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t608.
        DATA t609 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t609.
        DATA(t610) = t604.
        t609 = t610->token.
        t608 = t609.
        DATA t611 TYPE REF TO zcl_lnt_position.
        CLEAR t611.
        DATA(t612) = t608.
        t611 = t612->start.
        t607 = t611.
        t603 = t607.
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
        DATA(t623) = t582.
        t622 = t623->object_a393.
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
        DATA(t630) = t582.
        t629 = t630->object_a393.
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
    CLEAR t635.
    DATA t636 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t636.
    DATA t637 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t637.
    DATA(t638) = t130.
    t637 = t638.
    DATA(t639) = VALUE string( ).
    DATA t640 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t640.
    DATA t641 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t641.
    DATA(t642) = t1.
    t641 = t642->token.
    t640 = t641.
    DATA(t643) = VALUE string( ).
    DATA(t644) = t640.
    t643 = t644->str.
    t639 = t643.
    t636 = t637->find_variable( i_name = t639 ).
    t635 = t636.
    DATA(t645) = VALUE abap_bool( ).
    DATA(t646) = VALUE abap_bool( ).
    DATA t647 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t647.
    DATA(t648) = t635.
    t647 = t648.
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t649.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t650.
    t649 = t650.
    DATA(t651) = VALUE abap_bool( ).
    DATA(t652) = VALUE abap_bool( ).
    DATA(t653) = t647.
    IF t653 IS INITIAL.
      t652 = abap_true.
    ENDIF.
    t651 = xsdbool( t652 = abap_false ).
    t646 = t651.
    t645 = t646.
    IF t646 = abap_true.
      DATA(t654) = VALUE abap_bool( ).
      DATA t655 TYPE REF TO zcl_lnt_position.
      CLEAR t655.
      DATA t656 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t656.
      DATA t657 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t657.
      DATA(t658) = t635.
      t657 = t658.
      t656 = t657.
      DATA t659 TYPE REF TO zcl_lnt_position.
      CLEAR t659.
      DATA t660 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t660.
      DATA t661 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t661.
      DATA(t662) = t656.
      t661 = t662->token.
      t660 = t661.
      DATA t663 TYPE REF TO zcl_lnt_position.
      CLEAR t663.
      DATA(t664) = t660.
      t663 = t664->start.
      t659 = t663.
      t655 = t659.
      DATA t665 TYPE REF TO zcl_lnt_position.
      CLEAR t665.
      DATA t666 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t666.
      DATA t667 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t667.
      DATA(t668) = t1.
      t667 = t668->token.
      t666 = t667.
      DATA t669 TYPE REF TO zcl_lnt_position.
      CLEAR t669.
      DATA(t670) = t666.
      t669 = t670->start.
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
      CLEAR t675.
      DATA(t676) = t635.
      t675 = t676.
      t674 = zcl_lnt_lsp_lookup=>dump_type( i_variable = t675 ).
      DATA(t677) = strlen( t673 ).
      t672 = |{ t673 }{ t674 }|.
      t671 = t672.
      DATA(t678) = VALUE abap_bool( ).
      DATA(t679) = t555.
      DATA(t680) = ||.
      t678 = xsdbool( t679 <> t680 ).
      IF t678 = abap_true.
        DATA(t681) = VALUE string( ).
        DATA(t682) = VALUE string( ).
        DATA(t683) = t671.
        DATA(t684) = |\n_________________\n|.
        DATA(t685) = strlen( t683 ).
        t682 = |{ t683 }{ t684 }|.
        DATA(t686) = t555.
        DATA(t687) = strlen( t682 ).
        t681 = |{ t682 }{ t686 }|.
        t555 = t681.
      ELSE.
        DATA(t688) = t671.
        t555 = t688.
      ENDIF.
      DATA t689 TYPE REF TO zcl_lnt_location.
      CLEAR t689.
      DATA t690 TYPE REF TO zcl_lnt_location.
      CLEAR t690.
      t689 = t690.
      DATA(t691) = VALUE abap_bool( ).
      DATA(t692) = VALUE abap_bool( ).
      DATA t693 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t693.
      DATA t694 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t694.
      DATA t695 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t695.
      DATA(t696) = t635.
      t695 = t696.
      t694 = t695.
      DATA t697 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t697.
      DATA(t698) = t694.
      t697 = t698->meta.
      t693 = t697.
      DATA(t699) = |built-in|.
      t692 = t693->includes( p0 = t699 ).
      DATA(t700) = abap_false.
      t691 = xsdbool( t692 = t700 ).
      IF t691 = abap_true.
        DATA t701 TYPE REF TO zcl_lnt_location.
        CLEAR t701.
        DATA(t702) = abap_true.
        IF t702 = abap_true.
          DATA t703 TYPE REF TO zcl_lnt_location.
          CLEAR t703.
          DATA t704 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t704.
          DATA(t705) = t635.
          t704 = t705.
          t703 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t704 ).
          t701 = t703.
        ELSE.
          DATA t706 TYPE REF TO zcl_lnt_location.
          CLEAR t706.
          t701 = t706.
        ENDIF.
        t689 = t701.
      ENDIF.
      DATA t707 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t707.
      DATA(t708) = abap_true.
      IF t708 = abap_true.
        DATA t709 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t709.
        DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t710.
        DATA t711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t711.
        DATA(t712) = abap_true.
        IF t712 = abap_true.
          DATA(t713) = t555.
          DATA(t714) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t714->has = abap_true.
          t714->value = t713.
          t711 = t714.
        ELSE.
          DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t715.
          t711 = t715.
        ENDIF.
        t710 = t711.
        DATA t716 TYPE REF TO zcl_lnt_location.
        CLEAR t716.
        DATA(t717) = t689.
        t716 = t717.
        DATA t718 TYPE REF TO zcl_lnt_location.
        CLEAR t718.
        DATA(t719) = t689.
        t718 = t719.
        DATA t720 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t720.
        DATA t721 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t721.
        DATA(t722) = t635.
        t721 = t722.
        t720 = t721.
        DATA t723 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t723.
        DATA t724 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t724.
        DATA(t725) = abap_true.
        IF t725 = abap_true.
          DATA t726 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t726.
          DATA(t727) = t130.
          t726 = t727.
          t724 = t726.
        ELSE.
          DATA t728 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t728.
          t724 = t728.
        ENDIF.
        t723 = t724.
        t709 = NEW zcl_lnt_lsp_lookup_result( i_hover = t710 i_definition = t716 i_implementation = t718 i_definition_id = t720 i_scope = t723 ).
        CREATE OBJECT t709->zlnt_view_ownkeys_b0e8086400eb.
        t709->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t729.
        IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t729 ).
        ENDIF.
        DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t730.
        IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t730 ).
        ENDIF.
        DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t731.
        IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t731 ).
        ENDIF.
        DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t732.
        IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t732 ).
        ENDIF.
        DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t733.
        IF t709->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t709->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t733 ).
        ENDIF.
        CREATE OBJECT t709->zlnt_json_ownkeys_70e5fd461788.
        t709->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t734) = |hover|.
        DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t735.
        IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t734 p1 = t735 ).
        ENDIF.
        DATA(t736) = |definition|.
        DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t737.
        IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t736 p1 = t737 ).
        ENDIF.
        DATA(t738) = |implementation|.
        DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t739.
        IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t738 p1 = t739 ).
        ENDIF.
        DATA(t740) = |definitionId|.
        DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t741.
        IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t740 p1 = t741 ).
        ENDIF.
        DATA(t742) = |scope|.
        DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t743.
        IF t709->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t709->zlnt_json_ownkeys_70e5fd461788->put( p0 = t742 p1 = t743 ).
        ENDIF.
        t707 = t709.
      ELSE.
        DATA t744 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t744.
        t707 = t744.
      ENDIF.
      result = t707.
      RETURN.
    ENDIF.
    DATA t745 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t745.
    DATA t746 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t746.
    DATA t747 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t747.
    CREATE OBJECT t747.
    t746 = t747.
    DATA t748 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t748.
    DATA t749 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t749.
    DATA(t750) = t746.
    DATA t751 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t751.
    DATA t752 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t752.
    DATA(t753) = t130.
    t752 = t753.
    t751 = t752->list_class_definitions( ).
    t749 = t750->concat( p0 = t751 ).
    t748 = t749.
    DATA t754 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t754.
    DATA t755 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t755.
    DATA(t756) = t748.
    DATA t757 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t757.
    DATA t758 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t758.
    DATA(t759) = t130.
    t758 = t759.
    t757 = t758->list_interface_definitions( ).
    t755 = t756->concat( p0 = t757 ).
    t754 = t755.
    DATA(t760) = t754.
    t745 = t760.
    DATA t761 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t761.
    DATA t762 TYPE REF TO object.
    CLEAR t762.
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
      DATA t767 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t767.
      DATA t768 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t768.
      DATA t769 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t769.
      DATA(t770) = t761.
      t769 = t770->get_method_definitions( ).
      t768 = t769.
      DATA t771 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t771.
      DATA(t772) = VALUE abap_bool( ).
      DATA(t773) = t768.
      IF t773 IS INITIAL.
        t772 = abap_true.
      ENDIF.
      IF t772 = abap_true.
        DATA t774 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t774.
        t771 = t774.
      ELSE.
        DATA t775 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t775.
        DATA(t776) = t768.
        t775 = t776->get_all( ).
        t771 = t775.
      ENDIF.
      t767 = t771.
      t766 = t767.
      DATA(t777) = VALUE abap_bool( ).
      DATA(t778) = VALUE abap_bool( ).
      DATA(t779) = t766.
      IF t779 IS INITIAL.
        t778 = abap_true.
      ENDIF.
      t777 = xsdbool( t778 = abap_false ).
      IF t777 = abap_true.
        DATA t780 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t780.
        DATA t781 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t781.
        DATA t782 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t782.
        DATA(t783) = t766.
        t782 = t783.
        t781 = t782->iterate( ).
        t780 = t781.
        DO.
          DATA(t784) = abap_true.
          IF t784 = abap_false.
            EXIT.
          ENDIF.
          DATA t785 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t785.
          DATA t786 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t786.
          DATA(t787) = t780.
          t786 = t787->next( ).
          t785 = t786.
          DATA(t788) = VALUE abap_bool( ).
          DATA(t789) = t785.
          t788 = t789->done.
          IF t788 = abap_true.
            EXIT.
          ENDIF.
          DATA t790 TYPE REF TO zif_lnt_method_definition.
          CLEAR t790.
          DATA t791 TYPE REF TO zif_lnt_method_definition.
          CLEAR t791.
          DATA t792 TYPE REF TO zif_lnt_method_definition.
          CLEAR t792.
          DATA(t793) = t785.
          t792 = t793->value.
          t791 = t792.
          t790 = t791.
          DATA t794 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t794.
          DATA t795 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t795.
          DATA(t796) = VALUE abap_bool( ).
          DATA(t797) = abap_false.
          t796 = t797.
          DATA t798 TYPE REF TO cx_root.
          CLEAR t798.
          TRY.
              DATA t799 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t799.
              DATA t800 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t800.
              DATA t801 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t801.
              DATA t802 TYPE REF TO zif_lnt_method_parameters.
              CLEAR t802.
              DATA t803 TYPE REF TO zif_lnt_method_parameters.
              CLEAR t803.
              DATA(t804) = t790.
              t803 = t804->get_parameters( ).
              t802 = t803.
              DATA t805 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t805.
              DATA(t806) = VALUE abap_bool( ).
              DATA(t807) = t802.
              IF t807 IS INITIAL.
                t806 = abap_true.
              ENDIF.
              IF t806 = abap_true.
                DATA t808 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t808.
                t805 = t808.
              ELSE.
                DATA t809 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t809.
                DATA(t810) = t802.
                t809 = t810->get_all( ).
                t805 = t809.
              ENDIF.
              t801 = t805.
              t800 = t801.
              DATA t811 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t811.
              DATA(t812) = VALUE abap_bool( ).
              DATA(t813) = t800.
              t812 = xsdbool( t813 IS BOUND ).
              IF t812 = abap_true.
                DATA t814 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t814.
                DATA(t815) = t800.
                t814 = t815.
                t811 = t814.
              ELSE.
                DATA t816 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t816.
                CREATE OBJECT t816.
                t811 = t816.
              ENDIF.
              t799 = t811.
              t795 = t799.
              DATA(t817) = abap_true.
              t796 = t817.
            CATCH cx_root INTO t798.
              DATA(t818) = VALUE abap_bool( ).
              DATA(t819) = t796.
              t818 = xsdbool( t819 = abap_false ).
              IF t818 = abap_true.
                DATA(t820) = t780.
                t820->close( ).
              ENDIF.
              RAISE EXCEPTION t798.
          ENDTRY.
          DATA(t821) = VALUE abap_bool( ).
          DATA(t822) = t796.
          t821 = xsdbool( t822 = abap_false ).
          IF t821 = abap_true.
            DATA(t823) = t780.
            t823->close( ).
          ENDIF.
          DATA(t824) = t795.
          t794 = t824.
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
            DATA(t833) = abap_false.
            t832 = t833.
            DATA t834 TYPE REF TO cx_root.
            CLEAR t834.
            TRY.
                DATA(t835) = VALUE abap_bool( ).
                DATA t836 TYPE REF TO zcl_lnt_position.
                CLEAR t836.
                DATA t837 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t837.
                DATA(t838) = t825.
                t837 = t838.
                DATA t839 TYPE REF TO zcl_lnt_position.
                CLEAR t839.
                DATA t840 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t840.
                DATA t841 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t841.
                DATA(t842) = t837.
                t841 = t842->token.
                t840 = t841.
                DATA t843 TYPE REF TO zcl_lnt_position.
                CLEAR t843.
                DATA(t844) = t840.
                t843 = t844->start.
                t839 = t843.
                t836 = t839.
                DATA t845 TYPE REF TO zcl_lnt_position.
                CLEAR t845.
                DATA t846 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t846.
                DATA t847 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t847.
                DATA(t848) = t1.
                t847 = t848->token.
                t846 = t847.
                DATA t849 TYPE REF TO zcl_lnt_position.
                CLEAR t849.
                DATA(t850) = t846.
                t849 = t850->start.
                t845 = t849.
                t835 = t836->equals( i_p = t845 ).
                t831 = t835.
                DATA(t851) = abap_true.
                t832 = t851.
              CATCH cx_root INTO t834.
                DATA(t852) = VALUE abap_bool( ).
                DATA(t853) = t832.
                t852 = xsdbool( t853 = abap_false ).
                IF t852 = abap_true.
                  DATA(t854) = t780.
                  t854->close( ).
                ENDIF.
                RAISE EXCEPTION t834.
            ENDTRY.
            DATA(t855) = VALUE abap_bool( ).
            DATA(t856) = t832.
            t855 = xsdbool( t856 = abap_false ).
            IF t855 = abap_true.
              DATA(t857) = t780.
              t857->close( ).
            ENDIF.
            DATA(t858) = t831.
            t830 = t858.
            IF t830 = abap_true.
              DATA t859 TYPE REF TO zcl_lnt_location.
              CLEAR t859.
              DATA t860 TYPE REF TO zcl_lnt_location.
              CLEAR t860.
              DATA t861 TYPE REF TO zcl_lnt_location.
              CLEAR t861.
              DATA(t862) = VALUE abap_bool( ).
              DATA(t863) = abap_false.
              t862 = t863.
              DATA t864 TYPE REF TO cx_root.
              CLEAR t864.
              TRY.
                  DATA t865 TYPE REF TO zcl_lnt_location.
                  CLEAR t865.
                  DATA(t866) = t825.
                  t865 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t866 ).
                  t861 = t865.
                  DATA(t867) = abap_true.
                  t862 = t867.
                CATCH cx_root INTO t864.
                  DATA(t868) = VALUE abap_bool( ).
                  DATA(t869) = t862.
                  t868 = xsdbool( t869 = abap_false ).
                  IF t868 = abap_true.
                    DATA(t870) = t780.
                    t870->close( ).
                  ENDIF.
                  RAISE EXCEPTION t864.
              ENDTRY.
              DATA(t871) = VALUE abap_bool( ).
              DATA(t872) = t862.
              t871 = xsdbool( t872 = abap_false ).
              IF t871 = abap_true.
                DATA(t873) = t780.
                t873->close( ).
              ENDIF.
              DATA(t874) = t861.
              t860 = t874.
              t859 = t860.
              DATA t875 TYPE REF TO zcl_lnt_lsp_lookup_result.
              CLEAR t875.
              DATA t876 TYPE REF TO zcl_lnt_lsp_lookup_result.
              CLEAR t876.
              DATA t877 TYPE REF TO zcl_lnt_lsp_lookup_result.
              CLEAR t877.
              DATA(t878) = VALUE abap_bool( ).
              DATA(t879) = abap_false.
              t878 = t879.
              DATA t880 TYPE REF TO cx_root.
              CLEAR t880.
              TRY.
                  DATA t881 TYPE REF TO zcl_lnt_lsp_lookup_result.
                  CLEAR t881.
                  DATA(t882) = abap_true.
                  IF t882 = abap_true.
                    DATA t883 TYPE REF TO zcl_lnt_lsp_lookup_result.
                    CLEAR t883.
                    DATA t884 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t884.
                    DATA t885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t885.
                    DATA(t886) = abap_true.
                    IF t886 = abap_true.
                      DATA(t887) = VALUE string( ).
                      DATA(t888) = |Method Parameter: |.
                      DATA(t889) = VALUE string( ).
                      DATA(t890) = VALUE string( ).
                      DATA t891 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t891.
                      DATA t892 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t892.
                      DATA(t893) = t1.
                      t892 = t893->token.
                      t891 = t892.
                      DATA(t894) = VALUE string( ).
                      DATA(t895) = t891.
                      t894 = t895->str.
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
                      t885 = t900.
                    ELSE.
                      DATA t901 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t901.
                      t885 = t901.
                    ENDIF.
                    t884 = t885.
                    DATA t902 TYPE REF TO zcl_lnt_location.
                    CLEAR t902.
                    DATA t903 TYPE REF TO zcl_lnt_location.
                    CLEAR t903.
                    DATA(t904) = abap_true.
                    IF t904 = abap_true.
                      DATA(t905) = t859.
                      t903 = t905.
                    ELSE.
                      DATA t906 TYPE REF TO zcl_lnt_location.
                      CLEAR t906.
                      t903 = t906.
                    ENDIF.
                    t902 = t903.
                    DATA t907 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t907.
                    DATA(t908) = t825.
                    t907 = t908.
                    DATA t909 TYPE REF TO zcl_lnt_location.
                    CLEAR t909.
                    DATA t910 TYPE REF TO zcl_lnt_location.
                    CLEAR t910.
                    t909 = t910.
                    DATA t911 TYPE REF TO zif_lnt_spaghetti_scope_node.
                    CLEAR t911.
                    DATA t912 TYPE REF TO zif_lnt_spaghetti_scope_node.
                    CLEAR t912.
                    DATA(t913) = abap_true.
                    IF t913 = abap_true.
                      DATA t914 TYPE REF TO zif_lnt_spaghetti_scope_node.
                      CLEAR t914.
                      DATA(t915) = t130.
                      t914 = t915.
                      t912 = t914.
                    ELSE.
                      DATA t916 TYPE REF TO zif_lnt_spaghetti_scope_node.
                      CLEAR t916.
                      t912 = t916.
                    ENDIF.
                    t911 = t912.
                    t883 = NEW zcl_lnt_lsp_lookup_result( i_hover = t884 i_definition = t902 i_implementation = t909 i_definition_id = t907 i_scope = t911 ).
                    CREATE OBJECT t883->zlnt_view_ownkeys_b0e8086400eb.
                    t883->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t917.
                    IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t917 ).
                    ENDIF.
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
                    IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t922 p1 = t923 ).
                    ENDIF.
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
                    t881 = t883.
                  ELSE.
                    DATA t932 TYPE REF TO zcl_lnt_lsp_lookup_result.
                    CLEAR t932.
                    t881 = t932.
                  ENDIF.
                  t877 = t881.
                  DATA(t933) = abap_true.
                  t878 = t933.
                CATCH cx_root INTO t880.
                  DATA(t934) = VALUE abap_bool( ).
                  DATA(t935) = t878.
                  t934 = xsdbool( t935 = abap_false ).
                  IF t934 = abap_true.
                    DATA(t936) = t780.
                    t936->close( ).
                  ENDIF.
                  RAISE EXCEPTION t880.
              ENDTRY.
              DATA(t937) = VALUE abap_bool( ).
              DATA(t938) = t878.
              t937 = xsdbool( t938 = abap_false ).
              IF t937 = abap_true.
                DATA(t939) = t780.
                t939->close( ).
              ENDIF.
              DATA(t940) = t877.
              t876 = t940.
              t875 = t876.
              DATA(t941) = t780.
              t941->close( ).
              DATA(t942) = t875.
              result = t942.
              RETURN.
            ENDIF.
          ENDDO.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA t943 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t943.
    DATA t944 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t944.
    DATA t945 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t945.
    DATA(t946) = t130.
    t945 = t946.
    DATA t947 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t947.
    DATA(t948) = t1.
    t947 = t948->token.
    t944 = zcl_lnt_lsp_lookup=>search_references( i_scope = t945 i_token = t947 ).
    t943 = t944.
    DATA(t949) = VALUE abap_bool( ).
    DATA(t950) = VALUE i( ).
    DATA(t951) = t943.
    t951->load( ).
    t950 = lines( t951->items ).
    DATA(t952) = 0.
    t949 = xsdbool( t950 > t952 ).
    IF t949 = abap_true.
      DATA(t953) = t943.
      DATA t954 TYPE REF TO zcl_lnt_ireference.
      CLEAR t954.
      DATA t955 TYPE REF TO object.
      CLEAR t955.
      DATA(t956) = VALUE i( ).
      DO.
        t953->load( ).
        IF t956 >= lines( t953->items ).
          EXIT.
        ENDIF.
        CLEAR t955.
        READ TABLE t953->items INDEX t956 + 1 INTO t955.
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
        DATA(t960) = t555.
        DATA(t961) = ||.
        t959 = xsdbool( t960 <> t961 ).
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
        DATA(t969) = t954.
        DATA t970 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t970.
        DATA(t971) = t130.
        t970 = t971.
        DATA(t972) = t2.
        t968 = zcl_lnt_lsp_lookup=>reference_hover( i_ref = t969 i_scope = t970 i_reg_f149 = t972 ).
        DATA(t973) = strlen( t967 ).
        t966 = |{ t967 }{ t968 }|.
        t555 = t966.
      ENDDO.
      DATA t974 TYPE REF TO zcl_lnt_location.
      CLEAR t974.
      DATA t975 TYPE REF TO zcl_lnt_location.
      CLEAR t975.
      t974 = t975.
      DATA t976 TYPE REF TO zcl_lnt_location.
      CLEAR t976.
      DATA t977 TYPE REF TO zcl_lnt_location.
      CLEAR t977.
      t976 = t977.
      DATA(t978) = VALUE abap_bool( ).
      DATA t979 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t979.
      DATA t980 TYPE REF TO zcl_lnt_ireference.
      CLEAR t980.
      DATA(t981) = t943.
      DATA t982 TYPE REF TO object.
      CLEAR t982.
      t981->load( ).
      CLEAR t982.
      READ TABLE t981->items INDEX 1 INTO t982.
      DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t983.
      CLEAR t980.
      IF t982 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t983 ?= t982.
        DATA t984 TYPE REF TO object.
        CLEAR t984.
        t984 = t983->as_ref( ).
        t980 ?= t984.
      ELSE.
        t980 ?= t982.
      ENDIF.
      t979 = t980->resolved.
      t978 = xsdbool( t979 IS BOUND ).
      IF t978 = abap_true.
        DATA t985 TYPE REF TO zcl_lnt_location.
        CLEAR t985.
        DATA(t986) = abap_true.
        IF t986 = abap_true.
          DATA t987 TYPE REF TO zcl_lnt_location.
          CLEAR t987.
          DATA t988 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t988.
          DATA t989 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t989.
          DATA t990 TYPE REF TO zcl_lnt_ireference.
          CLEAR t990.
          DATA(t991) = t943.
          DATA t992 TYPE REF TO object.
          CLEAR t992.
          t991->load( ).
          CLEAR t992.
          READ TABLE t991->items INDEX 1 INTO t992.
          DATA t993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t993.
          CLEAR t990.
          IF t992 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t993 ?= t992.
            DATA t994 TYPE REF TO object.
            CLEAR t994.
            t994 = t993->as_ref( ).
            t990 ?= t994.
          ELSE.
            t990 ?= t992.
          ENDIF.
          t989 = t990->resolved.
          t988 = t989.
          t987 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t988 ).
          t985 = t987.
        ELSE.
          DATA t995 TYPE REF TO zcl_lnt_location.
          CLEAR t995.
          t985 = t995.
        ENDIF.
        t974 = t985.
        DATA(t996) = VALUE abap_bool( ).
        DATA(t997) = VALUE string( ).
        DATA t998 TYPE REF TO zcl_lnt_location.
        CLEAR t998.
        DATA(t999) = t974.
        t998 = t999.
        t997 = t998->uri.
        DATA(t1000) = CONV string( zcl_lnt_built_in=>filename ).
        t996 = xsdbool( t997 = t1000 ).
        IF t996 = abap_true.
          DATA t1001 TYPE REF TO zcl_lnt_location.
          CLEAR t1001.
          t974 = t1001.
        ENDIF.
        DATA(t1002) = VALUE abap_bool( ).
        DATA t1003 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t1003.
        DATA t1004 TYPE REF TO zcl_lnt_ireference.
        CLEAR t1004.
        DATA(t1005) = t943.
        DATA t1006 TYPE REF TO object.
        CLEAR t1006.
        t1005->load( ).
        CLEAR t1006.
        READ TABLE t1005->items INDEX 1 INTO t1006.
        DATA t1007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1007.
        CLEAR t1004.
        IF t1006 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t1007 ?= t1006.
          DATA t1008 TYPE REF TO object.
          CLEAR t1008.
          t1008 = t1007->as_ref( ).
          t1004 ?= t1008.
        ELSE.
          t1004 ?= t1006.
        ENDIF.
        t1003 = t1004->resolved.
        t1002 = xsdbool( t1003 IS BOUND AND t1003 IS INSTANCE OF zcl_lnt_ty_form_definition ).
        IF t1002 = abap_true.
          DATA(t1009) = t974.
          t976 = t1009.
        ENDIF.
      ENDIF.
      DATA t1010 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t1010.
      DATA(t1011) = abap_true.
      IF t1011 = abap_true.
        DATA t1012 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t1012.
        DATA t1013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1013.
        DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1014.
        DATA(t1015) = abap_true.
        IF t1015 = abap_true.
          DATA(t1016) = t555.
          DATA(t1017) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1017->has = abap_true.
          t1017->value = t1016.
          t1014 = t1017.
        ELSE.
          DATA t1018 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1018.
          t1014 = t1018.
        ENDIF.
        t1013 = t1014.
        DATA t1019 TYPE REF TO zcl_lnt_location.
        CLEAR t1019.
        DATA(t1020) = t974.
        t1019 = t1020.
        DATA t1021 TYPE REF TO zcl_lnt_location.
        CLEAR t1021.
        DATA(t1022) = t976.
        t1021 = t1022.
        DATA t1023 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t1023.
        DATA t1024 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t1024.
        DATA t1025 TYPE REF TO zcl_lnt_ireference.
        CLEAR t1025.
        DATA(t1026) = t943.
        DATA t1027 TYPE REF TO object.
        CLEAR t1027.
        t1026->load( ).
        CLEAR t1027.
        READ TABLE t1026->items INDEX 1 INTO t1027.
        DATA t1028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1028.
        CLEAR t1025.
        IF t1027 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t1028 ?= t1027.
          DATA t1029 TYPE REF TO object.
          CLEAR t1029.
          t1029 = t1028->as_ref( ).
          t1025 ?= t1029.
        ELSE.
          t1025 ?= t1027.
        ENDIF.
        t1024 = t1025->resolved.
        t1023 = t1024.
        DATA t1030 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t1030.
        DATA t1031 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t1031.
        DATA(t1032) = abap_true.
        IF t1032 = abap_true.
          DATA t1033 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t1033.
          DATA(t1034) = t130.
          t1033 = t1034.
          t1031 = t1033.
        ELSE.
          DATA t1035 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t1035.
          t1031 = t1035.
        ENDIF.
        t1030 = t1031.
        t1012 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1013 i_definition = t1019 i_implementation = t1021 i_definition_id = t1023 i_scope = t1030 ).
        CREATE OBJECT t1012->zlnt_view_ownkeys_b0e8086400eb.
        t1012->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1036 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1036.
        IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t1036 ).
        ENDIF.
        DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1037.
        IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t1037 ).
        ENDIF.
        DATA t1038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1038.
        IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementation` p1 = t1038 ).
        ENDIF.
        DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1039.
        IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionId` p1 = t1039 ).
        ENDIF.
        DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1040.
        IF t1012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t1040 ).
        ENDIF.
        CREATE OBJECT t1012->zlnt_json_ownkeys_70e5fd461788.
        t1012->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1041) = |hover|.
        DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1042.
        IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1041 p1 = t1042 ).
        ENDIF.
        DATA(t1043) = |definition|.
        DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1044.
        IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1043 p1 = t1044 ).
        ENDIF.
        DATA(t1045) = |implementation|.
        DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1046.
        IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1045 p1 = t1046 ).
        ENDIF.
        DATA(t1047) = |definitionId|.
        DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1048.
        IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1047 p1 = t1048 ).
        ENDIF.
        DATA(t1049) = |scope|.
        DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1050.
        IF t1012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1049 p1 = t1050 ).
        ENDIF.
        t1010 = t1012.
      ELSE.
        DATA t1051 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t1051.
        t1010 = t1051.
      ENDIF.
      result = t1010.
      RETURN.
    ENDIF.
    DATA(t1052) = VALUE abap_bool( ).
    DATA t1053 TYPE REF TO zif_lnt_statement.
    CLEAR t1053.
    DATA t1054 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t1054.
    DATA(t1055) = t1.
    t1054 = t1055->snode.
    t1053 = t1054->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t1052 = xsdbool( t1053 IS BOUND AND t1053 IS INSTANCE OF zcl_lnt_macro_call ).
    IF t1052 = abap_true.
      DATA t1056 TYPE REF TO zcl_lnt_ifilename_and_token.
      CLEAR t1056.
      DATA t1057 TYPE REF TO zcl_lnt_ifilename_and_token.
      CLEAR t1057.
      DATA t1058 TYPE REF TO zif_lnt_macro_references.
      CLEAR t1058.
      DATA(t1059) = t2.
      t1058 = t1059->get_macro_references( ).
      DATA(t1060) = VALUE string( ).
      DATA t1061 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t1061.
      DATA t1062 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t1062.
      DATA(t1063) = t1.
      t1062 = t1063->identifier.
      t1061 = t1062.
      DATA(t1064) = VALUE string( ).
      DATA(t1065) = t1061.
      t1064 = t1065->filename.
      t1060 = t1064.
      DATA t1066 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t1066.
      DATA t1067 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t1067.
      DATA(t1068) = t1.
      t1067 = t1068->snode.
      t1066 = t1067->get_first_token( ).
      t1057 = t1058->find_definition_by_usage( i_filename = t1060 i_token = t1066 ).
      t1056 = t1057.
      DATA(t1069) = VALUE abap_bool( ).
      DATA(t1070) = t1056.
      t1069 = xsdbool( t1070 IS BOUND ).
      IF t1069 = abap_true.
        DATA t1071 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t1071.
        DATA(t1072) = abap_true.
        IF t1072 = abap_true.
          DATA t1073 TYPE REF TO zcl_lnt_lsp_lookup_result.
          CLEAR t1073.
          DATA t1074 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1074.
          DATA t1075 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1075.
          DATA(t1076) = abap_true.
          IF t1076 = abap_true.
            DATA(t1077) = |Macro Call|.
            DATA(t1078) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1078->has = abap_true.
            t1078->value = t1077.
            t1075 = t1078.
          ELSE.
            DATA t1079 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1079.
            t1075 = t1079.
          ENDIF.
          t1074 = t1075.
          DATA t1080 TYPE REF TO zcl_lnt_location.
          CLEAR t1080.
          DATA t1081 TYPE REF TO zcl_lnt_location.
          CLEAR t1081.
          DATA(t1082) = abap_true.
          IF t1082 = abap_true.
            DATA t1083 TYPE REF TO zcl_lnt_location.
            CLEAR t1083.
            DATA(t1084) = VALUE string( ).
            DATA(t1085) = VALUE string( ).
            DATA t1086 TYPE REF TO zcl_lnt_ifilename_and_token.
            CLEAR t1086.
            DATA t1087 TYPE REF TO zcl_lnt_ifilename_and_token.
            CLEAR t1087.
            DATA(t1088) = t1056.
            t1087 = t1088.
            t1086 = t1087.
            DATA(t1089) = VALUE string( ).
            DATA t1090 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1090.
            DATA(t1091) = VALUE abap_bool( ).
            DATA(t1092) = t1086.
            IF t1092 IS INITIAL.
              t1091 = abap_true.
            ENDIF.
            IF t1091 = abap_true.
              DATA t1093 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1093.
              t1090 = t1093.
            ELSE.
              DATA(t1094) = VALUE string( ).
              DATA(t1095) = t1086.
              t1094 = t1095->filename.
              DATA(t1096) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1096->has = abap_true.
              t1096->value = t1094.
              t1090 = t1096.
            ENDIF.
            t1089 = t1090->value.
            t1085 = t1089.
            t1084 = t1085.
            DATA t1097 TYPE REF TO zcl_lnt_range.
            CLEAR t1097.
            DATA t1098 TYPE REF TO zcl_lnt_range.
            CLEAR t1098.
            DATA t1099 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1099.
            DATA t1100 TYPE REF TO zcl_lnt_ifilename_and_token.
            CLEAR t1100.
            DATA(t1101) = t1056.
            t1100 = t1101.
            t1099 = t1100->token.
            t1098 = zcl_lnt_lsp_utils=>token_to_range( i_token = t1099 ).
            t1097 = t1098.
            t1083 = NEW zcl_lnt_location( i_uri = t1084 i_range = t1097 ).
            CREATE OBJECT t1083->zlnt_view_ownkeys_b0e8086400eb.
            t1083->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1102.
            IF t1083->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1083->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t1102 ).
            ENDIF.
            DATA t1103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1103.
            IF t1083->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1083->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t1103 ).
            ENDIF.
            CREATE OBJECT t1083->zlnt_json_ownkeys_70e5fd461788.
            t1083->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t1104) = |uri|.
            DATA t1105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1105.
            IF t1083->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1083->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1104 p1 = t1105 ).
            ENDIF.
            DATA(t1106) = |range|.
            DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1107.
            IF t1083->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1083->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1106 p1 = t1107 ).
            ENDIF.
            t1081 = t1083.
          ELSE.
            DATA t1108 TYPE REF TO zcl_lnt_location.
            CLEAR t1108.
            t1081 = t1108.
          ENDIF.
          t1080 = t1081.
          DATA t1109 TYPE REF TO zcl_lnt_location.
          CLEAR t1109.
          DATA t1110 TYPE REF TO zcl_lnt_location.
          CLEAR t1110.
          t1109 = t1110.
          DATA t1111 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t1111.
          DATA t1112 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t1112.
          t1111 = t1112.
          DATA t1113 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t1113.
          DATA t1114 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t1114.
          t1113 = t1114.
          t1073 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1074 i_definition = t1080 i_implementation = t1109 i_definition_id = t1111 i_scope = t1113 ).
          CREATE OBJECT t1073->zlnt_view_ownkeys_b0e8086400eb.
          t1073->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1115.
          IF t1073->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1073->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t1115 ).
          ENDIF.
          DATA t1116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1116.
          IF t1073->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1073->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definition` p1 = t1116 ).
          ENDIF.
          CREATE OBJECT t1073->zlnt_json_ownkeys_70e5fd461788.
          t1073->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1117) = |hover|.
          DATA t1118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1118.
          IF t1073->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1073->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1117 p1 = t1118 ).
          ENDIF.
          DATA(t1119) = |definition|.
          DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1120.
          IF t1073->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1073->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1119 p1 = t1120 ).
          ENDIF.
          t1071 = t1073.
        ELSE.
          DATA t1121 TYPE REF TO zcl_lnt_lsp_lookup_result.
          CLEAR t1121.
          t1071 = t1121.
        ENDIF.
        result = t1071.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t1122) = VALUE abap_bool( ).
    DATA(t1123) = t555.
    DATA(t1124) = ||.
    t1122 = xsdbool( t1123 <> t1124 ).
    IF t1122 = abap_true.
      DATA t1125 TYPE REF TO zcl_lnt_lsp_lookup_result.
      CLEAR t1125.
      DATA(t1126) = abap_true.
      IF t1126 = abap_true.
        DATA t1127 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t1127.
        DATA t1128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1128.
        DATA t1129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1129.
        DATA(t1130) = abap_true.
        IF t1130 = abap_true.
          DATA(t1131) = t555.
          DATA(t1132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1132->has = abap_true.
          t1132->value = t1131.
          t1129 = t1132.
        ELSE.
          DATA t1133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1133.
          t1129 = t1133.
        ENDIF.
        t1128 = t1129.
        DATA t1134 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t1134.
        DATA t1135 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t1135.
        DATA(t1136) = abap_true.
        IF t1136 = abap_true.
          DATA t1137 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t1137.
          DATA(t1138) = t130.
          t1137 = t1138.
          t1135 = t1137.
        ELSE.
          DATA t1139 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t1139.
          t1135 = t1139.
        ENDIF.
        t1134 = t1135.
        DATA t1140 TYPE REF TO zcl_lnt_location.
        CLEAR t1140.
        DATA t1141 TYPE REF TO zcl_lnt_location.
        CLEAR t1141.
        t1140 = t1141.
        DATA t1142 TYPE REF TO zcl_lnt_location.
        CLEAR t1142.
        DATA t1143 TYPE REF TO zcl_lnt_location.
        CLEAR t1143.
        t1142 = t1143.
        DATA t1144 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t1144.
        DATA t1145 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t1145.
        t1144 = t1145.
        t1127 = NEW zcl_lnt_lsp_lookup_result( i_hover = t1128 i_definition = t1140 i_implementation = t1142 i_definition_id = t1144 i_scope = t1134 ).
        CREATE OBJECT t1127->zlnt_view_ownkeys_b0e8086400eb.
        t1127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1146.
        IF t1127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `hover` p1 = t1146 ).
        ENDIF.
        DATA t1147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1147.
        IF t1127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `scope` p1 = t1147 ).
        ENDIF.
        CREATE OBJECT t1127->zlnt_json_ownkeys_70e5fd461788.
        t1127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1148) = |hover|.
        DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1149.
        IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1148 p1 = t1149 ).
        ENDIF.
        DATA(t1150) = |scope|.
        DATA t1151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1151.
        IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1150 p1 = t1151 ).
        ENDIF.
        t1125 = t1127.
      ELSE.
        DATA t1152 TYPE REF TO zcl_lnt_lsp_lookup_result.
        CLEAR t1152.
        t1125 = t1152.
      ENDIF.
      result = t1125.
      RETURN.
    ENDIF.
    DATA t1153 TYPE REF TO zcl_lnt_lsp_lookup_result.
    CLEAR t1153.
    result = t1153.

  ENDMETHOD.

  METHOD dump_type.
    DATA(t1) = i_variable.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t7) = t1.
    t6 = t7.
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = |Identifier: ```|.
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t13) = t6.
    t12 = t13.
    DATA(t14) = VALUE string( ).
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t19) = t12.
    t18 = t19->token.
    t17 = t18.
    DATA t20 TYPE string.
    DATA(t21) = t17.
    t20 = t21->str.
    t16 = t20.
    t15 = t16.
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
      DATA(t31) = t15.
      t30 = t31.
      DATA(t32) = VALUE string( ).
      DATA(t33) = t30.
      DATA(t34) = 1.
      DATA t35 TYPE i.
      DATA(t36) = t30.
      DATA(t37) = strlen( t36 ).
      t35 = t37.
      DATA(t38) = strlen( t33 ).
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
        t32 = t33+t34(t35).
      ENDIF.
      t29 = t32.
      t15 = t29.
    ENDIF.
    DATA(t39) = t15.
    t14 = t39.
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
    DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t48) = t1.
    t47 = t48.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t50) = t47.
    t49 = t50->type_cba0.
    t46 = t49.
    DATA(t51) = CONV f( 0 ).
    t45 = t46->to_text( i_level = t51 ).
    DATA(t52) = strlen( t4 ).
    t3 = |{ t4 }{ t45 }|.
    t2 = t3.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t56) = t1.
    t55 = t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = t55.
    t57 = t58->value.
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
      DATA t66 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t67) = t1.
      t66 = t67.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t69) = t66.
      t68 = t69->value.
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
    DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t86) = t1.
    t85 = t86.
    DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t88) = t85.
    t87 = t88->meta.
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
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t97) = t1.
      t96 = t97.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t99) = t96.
      t98 = t99->meta.
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
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t108) = t1.
    t107 = t108.
    DATA t109 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t110) = t107.
    t109 = t110->type_cba0.
    t106 = t109.
    t105 = t106->contains_void( ).
    DATA(t111) = abap_true.
    t104 = xsdbool( t105 = t111 ).
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
    DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t120) = t1.
    t119 = t120.
    DATA t121 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t122) = t119.
    t121 = t122->type_cba0.
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
      DATA t132 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t133) = t1.
      t132 = t133.
      DATA t134 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t135) = t132.
      t134 = t135->type_cba0.
      t131 = t134.
      t130 = t131->get_qualified_name( ).
      t129 = t130.
      DATA(t136) = VALUE string( ).
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = t129.
      IF t138 IS INITIAL.
        t137 = abap_true.
      ELSEIF t138->has = abap_false.
        t137 = abap_true.
      ENDIF.
      IF t137 = abap_true.
        DATA(t139) = |undefined|.
        t136 = t139.
      ELSE.
        DATA t140 TYPE string.
        DATA(t141) = t129.
        t140 = t141->value.
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
    CLEAR t147.
    DATA t148 TYPE REF TO zcl_lnt_abstract_type.
    DATA t149 TYPE REF TO zcl_lnt_abstract_type.
    DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t151) = t1.
    t150 = t151.
    DATA t152 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t153) = t150.
    t152 = t153->type_cba0.
    t149 = t152.
    t148 = t149.
    DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t154.
    DATA t155 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t156 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t157) = t148.
    t156 = t157->data_56cc.
    t155 = t156.
    DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t158.
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = t155.
    IF t160 IS INITIAL.
      t159 = abap_true.
    ENDIF.
    IF t159 = abap_true.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t161.
      t158 = t161.
    ELSE.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t163 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t164) = t155.
      t163 = t164.
      t162 = t163->zlnt_view_read_sr_a5933bdf8829( ).
      t158 = t162.
    ENDIF.
    t154 = t158.
    t147 = t154.
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
      CLEAR t171.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t172.
      DATA t173 TYPE REF TO zcl_lnt_abstract_type.
      DATA t174 TYPE REF TO zcl_lnt_abstract_type.
      DATA t175 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t176) = t1.
      t175 = t176.
      DATA t177 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t178) = t175.
      t177 = t178->type_cba0.
      t174 = t177.
      t173 = t174.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA t180 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t181 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t182) = t173.
      t181 = t182->data_56cc.
      t180 = t181.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t183.
      DATA(t184) = VALUE abap_bool( ).
      DATA(t185) = t180.
      IF t185 IS INITIAL.
        t184 = abap_true.
      ENDIF.
      IF t184 = abap_true.
        DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t186.
        t183 = t186.
      ELSE.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t188 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t189) = t180.
        t188 = t189.
        t187 = t188->zlnt_view_read_sr_a5933bdf8829( ).
        t183 = t187.
      ENDIF.
      t179 = t183.
      t172 = t179.
      t171 = t172.
      DATA(t190) = VALUE string( ).
      DATA(t191) = VALUE abap_bool( ).
      DATA(t192) = t171.
      IF t192 IS INITIAL.
        t191 = abap_true.
      ELSEIF t192->has = abap_false.
        t191 = abap_true.
      ENDIF.
      IF t191 = abap_true.
        DATA(t193) = |undefined|.
        t190 = t193.
      ELSE.
        DATA t194 TYPE string.
        DATA(t195) = t171.
        t194 = t195->value.
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
    DATA t203 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t204) = t1.
    t203 = t204.
    DATA t205 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t206) = t203.
    t205 = t206->type_cba0.
    t202 = t205.
    t201 = t202->is_generic( ).
    DATA(t207) = abap_true.
    t200 = xsdbool( t201 = t207 ).
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
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t214.
    DATA t215 TYPE REF TO zcl_lnt_abstract_type.
    DATA t216 TYPE REF TO zcl_lnt_abstract_type.
    DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t218) = t1.
    t217 = t218.
    DATA t219 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t220) = t217.
    t219 = t220->type_cba0.
    t216 = t219.
    t215 = t216.
    DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t221.
    DATA t222 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t224) = t215.
    t223 = t224->data_56cc.
    t222 = t223.
    DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t225.
    DATA(t226) = VALUE abap_bool( ).
    DATA(t227) = t222.
    IF t227 IS INITIAL.
      t226 = abap_true.
    ENDIF.
    IF t226 = abap_true.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      t225 = t228.
    ELSE.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t230 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t231) = t222.
      t230 = t231.
      t229 = t230->zlnt_view_read_sr_dfbdd4b4a00f( ).
      t225 = t229.
    ENDIF.
    t221 = t225.
    t214 = t221.
    t213 = t214.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    t232 = t233.
    DATA(t234) = VALUE abap_bool( ).
    DATA(t235) = VALUE abap_bool( ).
    DATA(t236) = t213.
    IF t236 IS INITIAL.
      t235 = abap_true.
    ELSEIF t236->has = abap_false.
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
      CLEAR t243.
      DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t244.
      DATA t245 TYPE REF TO zcl_lnt_abstract_type.
      DATA t246 TYPE REF TO zcl_lnt_abstract_type.
      DATA t247 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t248) = t1.
      t247 = t248.
      DATA t249 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t250) = t247.
      t249 = t250->type_cba0.
      t246 = t249.
      t245 = t246.
      DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t251.
      DATA t252 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t253 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t254) = t245.
      t253 = t254->data_56cc.
      t252 = t253.
      DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t255.
      DATA(t256) = VALUE abap_bool( ).
      DATA(t257) = t252.
      IF t257 IS INITIAL.
        t256 = abap_true.
      ENDIF.
      IF t256 = abap_true.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        t255 = t258.
      ELSE.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t260 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t261) = t252.
        t260 = t261.
        t259 = t260->zlnt_view_read_sr_dfbdd4b4a00f( ).
        t255 = t259.
      ENDIF.
      t251 = t255.
      t244 = t251.
      t243 = t244.
      DATA(t262) = VALUE string( ).
      DATA(t263) = VALUE abap_bool( ).
      DATA(t264) = t243.
      IF t264 IS INITIAL.
        t263 = abap_true.
      ELSEIF t264->has = abap_false.
        t263 = abap_true.
      ENDIF.
      IF t263 = abap_true.
        DATA(t265) = |undefined|.
        t262 = t265.
      ELSE.
        DATA t266 TYPE string.
        DATA(t267) = t243.
        t266 = t267->value.
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
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t274.
    DATA t275 TYPE REF TO zcl_lnt_abstract_type.
    DATA t276 TYPE REF TO zcl_lnt_abstract_type.
    DATA t277 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t278) = t1.
    t277 = t278.
    DATA t279 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t280) = t277.
    t279 = t280->type_cba0.
    t276 = t279.
    t275 = t276.
    DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t281.
    DATA t282 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t283 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t284) = t275.
    t283 = t284->data_56cc.
    t282 = t283.
    DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t285.
    DATA(t286) = VALUE abap_bool( ).
    DATA(t287) = t282.
    IF t287 IS INITIAL.
      t286 = abap_true.
    ENDIF.
    IF t286 = abap_true.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t288.
      t285 = t288.
    ELSE.
      DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t290 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t291) = t282.
      t290 = t291.
      t289 = t290->zlnt_view_read_sr_19ee0de30d00( ).
      t285 = t289.
    ENDIF.
    t281 = t285.
    t274 = t281.
    t273 = t274.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    t292 = t293.
    DATA(t294) = VALUE abap_bool( ).
    DATA(t295) = VALUE abap_bool( ).
    DATA(t296) = t273.
    IF t296 IS INITIAL.
      t295 = abap_true.
    ELSEIF t296->has = abap_false.
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
      CLEAR t303.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t304.
      DATA t305 TYPE REF TO zcl_lnt_abstract_type.
      DATA t306 TYPE REF TO zcl_lnt_abstract_type.
      DATA t307 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t308) = t1.
      t307 = t308.
      DATA t309 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t310) = t307.
      t309 = t310->type_cba0.
      t306 = t309.
      t305 = t306.
      DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t311.
      DATA t312 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t313 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t314) = t305.
      t313 = t314->data_56cc.
      t312 = t313.
      DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t315.
      DATA(t316) = VALUE abap_bool( ).
      DATA(t317) = t312.
      IF t317 IS INITIAL.
        t316 = abap_true.
      ENDIF.
      IF t316 = abap_true.
        DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t318.
        t315 = t318.
      ELSE.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t320 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t321) = t312.
        t320 = t321.
        t319 = t320->zlnt_view_read_sr_19ee0de30d00( ).
        t315 = t319.
      ENDIF.
      t311 = t315.
      t304 = t311.
      t303 = t304.
      DATA(t322) = VALUE string( ).
      DATA(t323) = VALUE abap_bool( ).
      DATA(t324) = t303.
      IF t324 IS INITIAL.
        t323 = abap_true.
      ELSEIF t324->has = abap_false.
        t323 = abap_true.
      ENDIF.
      IF t323 = abap_true.
        DATA(t325) = |undefined|.
        t322 = t325.
      ELSE.
        DATA t326 TYPE string.
        DATA(t327) = t303.
        t326 = t327->value.
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
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t334.
    DATA t335 TYPE REF TO zcl_lnt_abstract_type.
    DATA t336 TYPE REF TO zcl_lnt_abstract_type.
    DATA t337 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t338) = t1.
    t337 = t338.
    DATA t339 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t340) = t337.
    t339 = t340->type_cba0.
    t336 = t339.
    t335 = t336.
    DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t341.
    DATA t342 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t343 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t344) = t335.
    t343 = t344->data_56cc.
    t342 = t343.
    DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t345.
    DATA(t346) = VALUE abap_bool( ).
    DATA(t347) = t342.
    IF t347 IS INITIAL.
      t346 = abap_true.
    ENDIF.
    IF t346 = abap_true.
      DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t348.
      t345 = t348.
    ELSE.
      DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t350 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t351) = t342.
      t350 = t351.
      t349 = t350->zlnt_view_read_sr_b2a3e27508db( ).
      t345 = t349.
    ENDIF.
    t341 = t345.
    t334 = t341.
    t333 = t334.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    t352 = t353.
    DATA(t354) = VALUE abap_bool( ).
    DATA(t355) = VALUE abap_bool( ).
    DATA(t356) = t333.
    IF t356 IS INITIAL.
      t355 = abap_true.
    ELSEIF t356->has = abap_false.
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
      CLEAR t362.
      DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t363.
      DATA t364 TYPE REF TO zcl_lnt_abstract_type.
      DATA t365 TYPE REF TO zcl_lnt_abstract_type.
      DATA t366 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t367) = t1.
      t366 = t367.
      DATA t368 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t369) = t366.
      t368 = t369->type_cba0.
      t365 = t368.
      t364 = t365.
      DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t370.
      DATA t371 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t372 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t373) = t364.
      t372 = t373->data_56cc.
      t371 = t372.
      DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t374.
      DATA(t375) = VALUE abap_bool( ).
      DATA(t376) = t371.
      IF t376 IS INITIAL.
        t375 = abap_true.
      ENDIF.
      IF t375 = abap_true.
        DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t377.
        t374 = t377.
      ELSE.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t379 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t380) = t371.
        t379 = t380.
        t378 = t379->zlnt_view_read_sr_b2a3e27508db( ).
        t374 = t378.
      ENDIF.
      t370 = t374.
      t363 = t370.
      t362 = t363.
      DATA(t381) = VALUE string( ).
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = t362.
      IF t383 IS INITIAL.
        t382 = abap_true.
      ELSEIF t383->has = abap_false.
        t382 = abap_true.
      ENDIF.
      IF t382 = abap_true.
        DATA(t384) = |undefined|.
        t381 = t384.
      ELSE.
        DATA t385 TYPE string.
        DATA(t386) = t362.
        t385 = t386->value.
        t381 = t385.
      ENDIF.
      t361 = t381.
      DATA(t387) = strlen( t360 ).
      t359 = |{ t360 }{ t361 }|.
      DATA(t388) = strlen( t358 ).
      t357 = |{ t358 }{ t359 }|.
      t2 = t357.
    ENDIF.
    DATA(t389) = t2.
    result = t389.

  ENDMETHOD.

  METHOD reference_hover.
    DATA(t1) = i_ref.
    DATA(t2) = i_scope.
    DATA(t3) = i_reg_f149.
    DATA(t4) = VALUE string( ).
    DATA(t5) = ||.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8->resolved.
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA(t9) = VALUE string( ).
      DATA(t10) = VALUE string( ).
      DATA(t11) = |```|.
      DATA(t12) = VALUE string( ).
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t15.
      DATA(t16) = t1.
      t15 = t16->resolved.
      t14 = t15.
      t13 = t14.
      DATA(t17) = VALUE string( ).
      DATA(t18) = VALUE string( ).
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA(t22) = t13.
      t21 = t22->token.
      t20 = t21.
      DATA(t23) = VALUE string( ).
      DATA(t24) = t20.
      t23 = t24->str.
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
        DATA(t34) = t18.
        t33 = t34.
        DATA(t35) = VALUE string( ).
        DATA(t36) = t33.
        DATA(t37) = 1.
        DATA(t38) = VALUE i( ).
        DATA(t39) = t33.
        DATA(t40) = strlen( t39 ).
        t38 = t40.
        DATA(t41) = strlen( t36 ).
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
          t35 = t36+t37(t38).
        ENDIF.
        t32 = t35.
        t18 = t32.
      ENDIF.
      DATA(t42) = t18.
      t17 = t42.
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
    DATA(t53) = t1.
    t52 = t53->reference_type.
    DATA(t54) = strlen( t51 ).
    t50 = |{ t51 }{ t52 }|.
    DATA(t55) = | |.
    DATA(t56) = strlen( t50 ).
    t49 = |{ t50 }{ t55 }|.
    DATA(t57) = t4.
    DATA(t58) = strlen( t49 ).
    t48 = |{ t49 }{ t57 }|.
    DATA(t59) = ||.
    DATA(t60) = strlen( t48 ).
    t47 = |{ t48 }{ t59 }|.
    t46 = t47.
    DATA(t61) = VALUE abap_bool( ).
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE string( ).
    DATA(t64) = t1.
    t63 = t64->reference_type.
    DATA(t65) = |Method|.
    t62 = xsdbool( t63 = t65 ).
    t61 = t62.
    IF t62 = abap_true.
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t68.
      DATA t69 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t69.
      DATA(t70) = t1.
      t69 = t70->extra.
      t68 = t69.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t68.
      IF t73 IS INITIAL.
        t72 = abap_true.
      ENDIF.
      IF t72 = abap_true.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t71 = t74.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t76.
        DATA(t77) = t68.
        t76 = t77.
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
      CLEAR t78.
      DATA t79 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t79.
      DATA t80 TYPE REF TO zif_lnt_class_definition.
      CLEAR t80.
      DATA(t81) = t2.
      DATA(t82) = VALUE string( ).
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t85.
      DATA(t86) = t1.
      t85 = t86->extra.
      t84 = t85.
      t83 = t84->oo_name.
      t82 = t83->value.
      t80 = t81->find_class_definition( i_name = t82 ).
      t79 ?= t80.
      t78 = t79.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t88.
      DATA(t89) = t78.
      t88 = t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t88.
      IF t93 IS INITIAL.
        t92 = abap_true.
      ENDIF.
      t87 = t92.
      IF t87 = abap_true.
        DATA t94 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t94.
        DATA(t95) = t2.
        DATA(t96) = VALUE string( ).
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t99.
        DATA(t100) = t1.
        t99 = t100->extra.
        t98 = t99.
        t97 = t98->oo_name.
        t96 = t97->value.
        t94 = t95->find_interface_definition( i_name = t96 ).
        t78 = t94.
      ENDIF.
      DATA(t101) = VALUE abap_bool( ).
      DATA t102 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t102.
      DATA(t103) = t78.
      t102 = t103.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      t104 = t105.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t102.
      IF t107 IS INITIAL.
        t106 = abap_true.
      ENDIF.
      t101 = t106.
      IF t101 = abap_true.
        DATA t108 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t108.
        DATA t109 TYPE REF TO zif_lnt_class_definition.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_class.
        CLEAR t110.
        DATA t111 TYPE REF TO zcl_lnt_class.
        CLEAR t111.
        DATA t112 TYPE REF TO zif_lnt_object.
        CLEAR t112.
        DATA(t113) = t3.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA(t116) = |CLAS|.
          DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t117->has = abap_true.
          t117->value = t116.
          t114 = t117.
        ELSE.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t114 = t118.
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        DATA(t120) = abap_true.
        IF t120 = abap_true.
          DATA(t121) = VALUE string( ).
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t123.
          DATA t124 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t124.
          DATA(t125) = t1.
          t124 = t125->extra.
          t123 = t124.
          t122 = t123->oo_name.
          t121 = t122->value.
          DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t126->has = abap_true.
          t126->value = t121.
          t119 = t126.
        ELSE.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          t119 = t127.
        ENDIF.
        t112 = t113->get_object( i_type_9913 = t114 i_name = t119 ).
        DATA t128 TYPE REF TO object.
        CLEAR t128.
        t128 = t112.
        t111 ?= t128.
        t110 = t111.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        CLEAR t129.
        DATA(t130) = VALUE abap_bool( ).
        DATA(t131) = t110.
        IF t131 IS INITIAL.
          t130 = abap_true.
        ENDIF.
        IF t130 = abap_true.
          DATA t132 TYPE REF TO zif_lnt_class_definition.
          CLEAR t132.
          t129 = t132.
        ELSE.
          DATA t133 TYPE REF TO zif_lnt_class_definition.
          CLEAR t133.
          DATA t134 TYPE REF TO zcl_lnt_class.
          CLEAR t134.
          DATA(t135) = t110.
          t134 = t135.
          t133 = t134->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t129 = t133.
        ENDIF.
        t109 = t129.
        t108 ?= t109.
        t78 = t108.
      ENDIF.
      DATA(t136) = VALUE abap_bool( ).
      DATA t137 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t137.
      DATA(t138) = t78.
      t137 = t138.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t139 = t140.
      DATA(t141) = VALUE abap_bool( ).
      DATA(t142) = t137.
      IF t142 IS INITIAL.
        t141 = abap_true.
      ENDIF.
      t136 = t141.
      IF t136 = abap_true.
        DATA t143 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t143.
        DATA t144 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t144.
        DATA t145 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t145.
        DATA t146 TYPE REF TO zif_lnt_object.
        CLEAR t146.
        DATA(t147) = t3.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA(t149) = abap_true.
        IF t149 = abap_true.
          DATA(t150) = |INTF|.
          DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t151->has = abap_true.
          t151->value = t150.
          t148 = t151.
        ELSE.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          t148 = t152.
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA(t154) = abap_true.
        IF t154 = abap_true.
          DATA(t155) = VALUE string( ).
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          DATA t157 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t157.
          DATA t158 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t158.
          DATA(t159) = t1.
          t158 = t159->extra.
          t157 = t158.
          t156 = t157->oo_name.
          t155 = t156->value.
          DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t160->has = abap_true.
          t160->value = t155.
          t153 = t160.
        ELSE.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          t153 = t161.
        ENDIF.
        t146 = t147->get_object( i_type_9913 = t148 i_name = t153 ).
        DATA t162 TYPE REF TO object.
        CLEAR t162.
        t162 = t146.
        t145 ?= t162.
        t144 = t145.
        DATA t163 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t163.
        DATA(t164) = VALUE abap_bool( ).
        DATA(t165) = t144.
        IF t165 IS INITIAL.
          t164 = abap_true.
        ENDIF.
        IF t164 = abap_true.
          DATA t166 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t166.
          t163 = t166.
        ELSE.
          DATA t167 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t168.
          DATA t169 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t169.
          DATA(t170) = t144.
          t169 = t170.
          t168 = t169.
          DATA t171 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t171.
          DATA(t172) = t168.
          t171 = t172->def.
          t167 = t171.
          t163 = t167.
        ENDIF.
        t143 = t163.
        t78 = t143.
      ENDIF.
      DATA(t173) = VALUE string( ).
      DATA(t174) = t46.
      DATA(t175) = VALUE string( ).
      DATA(t176) = |\n\n|.
      DATA(t177) = VALUE string( ).
      DATA(t178) = VALUE string( ).
      DATA t179 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t179.
      DATA t180 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t180.
      DATA(t181) = t1.
      t180 = t181->position_7b94.
      t179 = t180.
      DATA(t182) = VALUE string( ).
      DATA(t183) = VALUE string( ).
      DATA(t184) = VALUE string( ).
      DATA t185 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t185.
      DATA t186 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t186.
      DATA(t187) = t179.
      t186 = t187->token.
      t185 = t186.
      DATA(t188) = VALUE string( ).
      DATA(t189) = t185.
      t188 = t189->str.
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
        DATA(t199) = t183.
        t198 = t199.
        DATA(t200) = VALUE string( ).
        DATA(t201) = t198.
        DATA(t202) = 1.
        DATA(t203) = VALUE i( ).
        DATA(t204) = t198.
        DATA(t205) = strlen( t204 ).
        t203 = t205.
        DATA(t206) = strlen( t201 ).
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
          t200 = t201+t202(t203).
        ENDIF.
        t197 = t200.
        t183 = t197.
      ENDIF.
      DATA(t207) = t183.
      t182 = t207.
      t178 = t182.
      DATA(t208) = t78.
      t177 = zcl_lnt_lsp_lookup=>hover_method( i_method = t178 i_class_def = t208 ).
      DATA(t209) = strlen( t176 ).
      t175 = |{ t176 }{ t177 }|.
      DATA(t210) = strlen( t174 ).
      t173 = |{ t174 }{ t175 }|.
      t46 = t173.
    ELSE.
      DATA(t211) = VALUE abap_bool( ).
      DATA t212 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t212.
      DATA(t213) = t1.
      t212 = t213->resolved.
      t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_typed_identifier ).
      IF t211 = abap_true.
        DATA(t214) = VALUE string( ).
        DATA(t215) = t46.
        DATA(t216) = VALUE string( ).
        DATA(t217) = |\n\n|.
        DATA(t218) = VALUE string( ).
        DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t219.
        DATA t220 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t220.
        DATA(t221) = t1.
        t220 = t221->resolved.
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
        DATA(t226) = t1.
        t225 = t226->reference_type.
        DATA(t227) = |Builtin Method|.
        t224 = xsdbool( t225 = t227 ).
        IF t224 = abap_true.
          DATA t228 TYPE REF TO zif_lnt_method_definition.
          CLEAR t228.
          DATA t229 TYPE REF TO zif_lnt_method_definition.
          CLEAR t229.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t231.
          DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t232.
          DATA t233 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t233.
          DATA t234 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t234.
          DATA(t235) = t1.
          t234 = t235->resolved.
          t233 = t234.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t236.
          DATA(t237) = VALUE abap_bool( ).
          DATA(t238) = t233.
          IF t238 IS INITIAL.
            t237 = abap_true.
          ENDIF.
          IF t237 = abap_true.
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t239.
            t236 = t239.
          ELSE.
            DATA(t240) = VALUE string( ).
            DATA t241 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t241.
            DATA t242 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t242.
            DATA(t243) = t233.
            t242 = t243.
            t241 = t242.
            DATA(t244) = VALUE string( ).
            DATA(t245) = VALUE string( ).
            DATA(t246) = VALUE string( ).
            DATA t247 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t247.
            DATA t248 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t248.
            DATA(t249) = t241.
            t248 = t249->token.
            t247 = t248.
            DATA(t250) = VALUE string( ).
            DATA(t251) = t247.
            t250 = t251->str.
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
              DATA(t261) = t245.
              t260 = t261.
              DATA(t262) = VALUE string( ).
              DATA(t263) = t260.
              DATA(t264) = 1.
              DATA(t265) = VALUE i( ).
              DATA(t266) = t260.
              DATA(t267) = strlen( t266 ).
              t265 = t267.
              DATA(t268) = strlen( t263 ).
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
                t262 = t263+t264(t265).
              ENDIF.
              t259 = t262.
              t245 = t259.
            ENDIF.
            DATA(t269) = t245.
            t244 = t269.
            t240 = t244.
            DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t270->has = abap_true.
            t270->value = t240.
            t236 = t270.
          ENDIF.
          t232 = t236.
          t231 = t232.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          DATA(t272) = VALUE abap_bool( ).
          DATA(t273) = t231.
          IF t273 IS INITIAL.
            t272 = abap_true.
          ELSEIF t273->has = abap_false.
            t272 = abap_true.
          ENDIF.
          IF t272 = abap_true.
            DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t274.
            t271 = t274.
          ELSE.
            DATA(t275) = VALUE string( ).
            DATA(t276) = VALUE string( ).
            DATA(t277) = t231.
            t276 = t277->value.
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
          DATA t281 TYPE REF TO zif_lnt_method_definition.
          CLEAR t281.
          DATA(t282) = t228.
          t281 = t282.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t283.
          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t284.
          t283 = t284.
          DATA(t285) = VALUE abap_bool( ).
          DATA(t286) = t281.
          IF t286 IS INITIAL.
            t285 = abap_true.
          ENDIF.
          t280 = t285.
          IF t280 = abap_true.
            DATA(t287) = |Error: builtin method signature not found|.
            result = t287.
            RETURN.
          ENDIF.
          DATA(t288) = VALUE string( ).
          DATA(t289) = t46.
          DATA(t290) = VALUE string( ).
          DATA(t291) = |\n\n|.
          DATA(t292) = VALUE string( ).
          DATA t293 TYPE REF TO zif_lnt_method_definition.
          CLEAR t293.
          DATA(t294) = t228.
          t293 = t294.
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
    CLEAR t298.
    DATA(t299) = t1.
    t298 = t299->resolved.
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
    DATA t306 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t306.
    DATA t307 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t307.
    DATA(t308) = t1.
    t307 = t308->extra.
    t306 = t307.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    t309 = t310.
    DATA(t311) = VALUE abap_bool( ).
    DATA(t312) = VALUE abap_bool( ).
    DATA(t313) = t306.
    IF t313 IS INITIAL.
      t312 = abap_true.
    ENDIF.
    t311 = xsdbool( t312 = abap_false ).
    t305 = t311.
    t304 = t305.
    IF t305 = abap_true.
      DATA(t314) = VALUE abap_bool( ).
      DATA(t315) = VALUE i( ).
      DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t316.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t317.
      DATA t318 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t318.
      DATA t319 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t319.
      DATA(t320) = t1.
      t319 = t320->extra.
      t318 = t319.
      CLEAR t317.
      IF t318 IS BOUND.
        DATA t321 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t321.
        DATA t322 TYPE REF TO object.
        CLEAR t322.
        CLEAR t321.
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
      CLEAR t329.
      DATA t330 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t330.
      DATA(t331) = t1.
      t330 = t331->extra.
      t329 = t330.
      DATA t332 TYPE REF TO zlnt_runtime_conf_5b63794eccef.
      CLEAR t332.
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
    DATA(t335) = t46.
    result = t335.

  ENDMETHOD.

  METHOD hover_method.
    DATA(t1) = i_method.
    DATA(t2) = i_class_def.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_interface_definition.
    DATA(t5) = t2.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA(t10) = |class not found|.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zif_lnt_method_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_method_definition.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_method_definitions.
    DATA t14 TYPE REF TO zif_lnt_interface_definition.
    DATA(t15) = t2.
    t14 = t15.
    t13 = t14->get_method_definitions( ).
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = t1.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
    t12 = t13->get_by_name( i_name = t16 ).
    t11 = t12.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zif_lnt_method_definition.
    DATA(t23) = t11.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA(t28) = |method not found in definition|.
      result = t28.
      RETURN.
    ENDIF.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zif_lnt_method_definition.
    DATA(t31) = t11.
    t30 = t31.
    t29 = zcl_lnt_lsp_lookup=>method_parameters( i_method_def_15b7 = t30 ).
    result = t29.

  ENDMETHOD.

  METHOD visibility_to_string.
    DATA(t1) = i_visibility_5c1f.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    DATA(t4) = CONV f( 3 ).
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = |PUBLIC|.
      result = t5.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t1.
      DATA(t8) = CONV f( 2 ).
      t6 = xsdbool( t7 = t8 ).
      IF t6 = abap_true.
        DATA(t9) = |PROTECTED|.
        result = t9.
        RETURN.
      ELSE.
        DATA t10 TYPE abap_bool.
        DATA(t11) = t1.
        DATA(t12) = CONV f( 1 ).
        t10 = xsdbool( t11 = t12 ).
        IF t10 = abap_true.
          DATA(t13) = |PRIVATE|.
          result = t13.
          RETURN.
        ELSE.
          DATA(t14) = ||.
          result = t14.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD method_parameters.
    DATA(t1) = i_method_def_15b7.
    DATA t2 TYPE string.
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE f.
    DATA(t7) = t1.
    t6 = t7->get_visibility( ).
    t5 = zcl_lnt_lsp_lookup=>visibility_to_string( i_visibility_5c1f = t6 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t4.
    t8 = xsdbool( strlen( t9 ) > 0 ).
    IF t8 = abap_true.
      DATA t10 TYPE string.
      DATA(t11) = t2.
      DATA t12 TYPE string.
      DATA(t13) = t4.
      DATA(t14) = |\n\n|.
      DATA(t15) = strlen( t13 ).
      t12 = |{ t13 }{ t14 }|.
      DATA(t16) = strlen( t11 ).
      t10 = |{ t11 }{ t12 }|.
      t2 = t10.
    ENDIF.
    DATA t17 TYPE REF TO zif_lnt_method_parameters.
    DATA t18 TYPE REF TO zif_lnt_method_parameters.
    DATA(t19) = t1.
    t18 = t19->get_parameters( ).
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t17.
    t21 = t22->get_importing( ).
    t20 = t21.
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE i.
    DATA(t25) = t20.
    t25->load( ).
    t24 = lines( t25->items ).
    DATA(t26) = 0.
    t23 = xsdbool( t24 > t26 ).
    IF t23 = abap_true.
      DATA t27 TYPE string.
      DATA(t28) = t2.
      DATA(t29) = |IMPORTING\n|.
      DATA(t30) = strlen( t28 ).
      t27 = |{ t28 }{ t29 }|.
      t2 = t27.
      DATA(t31) = t20.
      DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t31->load( ).
        IF t34 >= lines( t31->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t31->items INDEX t34 + 1 INTO t33.
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
        DATA(t40) = t32.
        t39 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t40 ).
        DATA(t41) = strlen( t38 ).
        t37 = |{ t38 }{ t39 }|.
        t2 = t37.
      ENDDO.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t44) = t17.
    t43 = t44->get_exporting( ).
    t42 = t43.
    DATA t45 TYPE abap_bool.
    DATA t46 TYPE i.
    DATA(t47) = t42.
    t47->load( ).
    t46 = lines( t47->items ).
    DATA(t48) = 0.
    t45 = xsdbool( t46 > t48 ).
    IF t45 = abap_true.
      DATA t49 TYPE string.
      DATA(t50) = t2.
      DATA(t51) = |EXPORTING\n|.
      DATA(t52) = strlen( t50 ).
      t49 = |{ t50 }{ t51 }|.
      t2 = t49.
      DATA(t53) = t42.
      DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t54.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      DATA(t56) = VALUE i( ).
      DO.
        t53->load( ).
        IF t56 >= lines( t53->items ).
          EXIT.
        ENDIF.
        CLEAR t55.
        READ TABLE t53->items INDEX t56 + 1 INTO t55.
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
        DATA(t62) = t54.
        t61 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t62 ).
        DATA(t63) = strlen( t60 ).
        t59 = |{ t60 }{ t61 }|.
        t2 = t59.
      ENDDO.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t66) = t17.
    t65 = t66->get_changing( ).
    t64 = t65.
    DATA t67 TYPE abap_bool.
    DATA t68 TYPE i.
    DATA(t69) = t64.
    t69->load( ).
    t68 = lines( t69->items ).
    DATA(t70) = 0.
    t67 = xsdbool( t68 > t70 ).
    IF t67 = abap_true.
      DATA t71 TYPE string.
      DATA(t72) = t2.
      DATA(t73) = |CHANGING\n|.
      DATA(t74) = strlen( t72 ).
      t71 = |{ t72 }{ t73 }|.
      t2 = t71.
      DATA(t75) = t64.
      DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      DATA(t78) = VALUE i( ).
      DO.
        t75->load( ).
        IF t78 >= lines( t75->items ).
          EXIT.
        ENDIF.
        CLEAR t77.
        READ TABLE t75->items INDEX t78 + 1 INTO t77.
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
        DATA(t84) = t76.
        t83 = zcl_lnt_lsp_lookup=>single_parameter( i_p = t84 ).
        DATA(t85) = strlen( t82 ).
        t81 = |{ t82 }{ t83 }|.
        t2 = t81.
      ENDDO.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t88) = t17.
    t87 = t88->get_returning( ).
    t86 = t87.
    DATA t89 TYPE abap_bool.
    DATA(t90) = t86.
    t89 = xsdbool( t90 IS BOUND ).
    IF t89 = abap_true.
      DATA t91 TYPE string.
      DATA(t92) = t2.
      DATA t93 TYPE string.
      DATA(t94) = |RETURNING\n|.
      DATA t95 TYPE string.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t97) = t86.
      t96 = t97.
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
    DATA(t103) = t1.
    t102 = t103->get_raising( ).
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
      DATA(t110) = t1.
      t109 = t110->get_raising( ).
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
        DATA(t118) = t111.
        DATA(t119) = strlen( t117 ).
        t116 = |{ t117 }{ t118 }|.
        DATA(t120) = |\n|.
        DATA(t121) = strlen( t116 ).
        t115 = |{ t116 }{ t120 }|.
        DATA(t122) = strlen( t114 ).
        t113 = |{ t114 }{ t115 }|.
        t2 = t113.
      ENDDO.
    ENDIF.
    DATA(t123) = t2.
    result = t123.

  ENDMETHOD.

  METHOD single_parameter.
    DATA(t1) = i_p.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t8) = t5.
    t7 = t8->meta.
    t4 = t7.
    DATA(t9) = |, |.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = t9.
    t3 = t4->join( p0 = t10 ).
    t2 = t3.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t2.
    DATA(t13) = ||.
    t11 = xsdbool( t12 <> t13 ).
    IF t11 = abap_true.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA(t16) = |(Meta: |.
      DATA(t17) = t2.
      DATA(t18) = strlen( t16 ).
      t15 = |{ t16 }{ t17 }|.
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
    DATA(t29) = t1.
    t28 = t29.
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE string.
    DATA t32 TYPE string.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    DATA t34 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t35) = t28.
    t34 = t35->token.
    t33 = t34.
    DATA t36 TYPE string.
    DATA(t37) = t33.
    t36 = t37->str.
    t32 = t36.
    t31 = t32.
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
      DATA(t47) = t31.
      t46 = t47.
      DATA(t48) = VALUE string( ).
      DATA(t49) = t46.
      DATA(t50) = 1.
      DATA t51 TYPE i.
      DATA(t52) = t46.
      DATA(t53) = strlen( t52 ).
      t51 = t53.
      DATA(t54) = strlen( t49 ).
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
        t48 = t49+t50(t51).
      ENDIF.
      t45 = t48.
      t31 = t45.
    ENDIF.
    DATA(t55) = t31.
    t30 = t55.
    t27 = t30.
    DATA(t56) = strlen( t26 ).
    t25 = |{ t26 }{ t27 }|.
    DATA(t57) = t2.
    DATA(t58) = strlen( t25 ).
    t24 = |{ t25 }{ t57 }|.
    DATA(t59) = | TYPE |.
    DATA(t60) = strlen( t24 ).
    t23 = |{ t24 }{ t59 }|.
    DATA t61 TYPE string.
    DATA t62 TYPE REF TO zcl_lnt_abstract_type.
    DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t64) = t1.
    t63 = t64.
    DATA t65 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t66) = t63.
    t65 = t66->type_cba0.
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
    DATA(t7) = t1.
    t6 = t7->get_data( ).
    t5 = t6->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t17) = t8.
      t16 = t17->position_7b94.
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = t15.
      t20 = t21->token.
      t19 = t20.
      DATA t22 TYPE REF TO zcl_lnt_position.
      DATA(t23) = t19.
      t22 = t23->start.
      t18 = t22.
      t14 = t18.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t26) = t2.
      t25 = t26.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t28) = t25.
      t27 = t28->start.
      t24 = t27.
      t13 = t14->equals( i_p = t24 ).
      IF t13 = abap_true.
        DATA(t29) = t3.
        DATA(t30) = t8.
        t29->load( ).
        APPEND t30 TO t29->items.
        t29->save( ).
      ENDIF.
    ENDDO.
    DATA t31 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t32 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t33) = t1.
    t32 = t33->get_parent( ).
    t31 = t32.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t31.
    t34 = xsdbool( t35 IS BOUND ).
    IF t34 = abap_true.
      DATA(t36) = VALUE i( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t39) = t31.
      t38 = t39.
      DATA(t40) = t2.
      t37 = zcl_lnt_lsp_lookup=>search_references( i_scope = t38 i_token = t40 ).
      DATA t41 TYPE REF TO zcl_lnt_ireference.
      CLEAR t41.
      DATA t42 TYPE REF TO object.
      CLEAR t42.
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
        DATA(t46) = t3.
        DATA(t47) = t41.
        t46->load( ).
        APPEND t47 TO t46->items.
        t46->save( ).
      ENDDO.
      DATA t48 TYPE i.
      DATA(t49) = t3.
      t49->load( ).
      t48 = lines( t49->items ).
      t36 = t48.
    ENDIF.
    DATA(t50) = t3.
    result = t50.

  ENDMETHOD.

  METHOD abap_file_result.
    DATA(t1) = i_abap.
    DATA t2 TYPE REF TO zcl_lnt_location.
    CLEAR t2.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zcl_lnt_abstract_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE string.
    DATA(t8) = t5.
    t7 = t8->filename.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE REF TO zcl_lnt_range.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_range.
    CLEAR t10.
    DATA t11 TYPE i.
    DATA(t12) = 0.
    t11 = t12.
    DATA t13 TYPE i.
    DATA(t14) = 0.
    t13 = t14.
    DATA t15 TYPE i.
    DATA(t16) = 0.
    t15 = t16.
    DATA t17 TYPE i.
    DATA(t18) = 0.
    t17 = t18.
    DATA t19 TYPE REF TO zcl_lnt_range.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_no_position.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_no_position.
    DATA t22 TYPE f.
    DATA(t23) = t11.
    t22 = t23.
    DATA t24 TYPE f.
    DATA(t25) = t13.
    t24 = t25.
    DATA(t26) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t26->has = abap_true.
    t26->value = t24.
    t21 = NEW zcl_lnt_no_position( i_line = t22 i_character = t26 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t27 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t28 ).
    ENDIF.
    t20 = t21.
    DATA t29 TYPE REF TO zcl_lnt_no_position.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_no_position.
    DATA t31 TYPE f.
    DATA(t32) = t15.
    t31 = t32.
    DATA t33 TYPE f.
    DATA(t34) = t17.
    t33 = t34.
    DATA(t35) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t35->has = abap_true.
    t35->value = t33.
    t30 = NEW zcl_lnt_no_position( i_line = t31 i_character = t35 ).
    CREATE OBJECT t30->zlnt_view_ownkeys_b0e8086400eb.
    t30->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t30->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t30->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `character` p1 = t37 ).
    ENDIF.
    t29 = t30.
    t19 = NEW zcl_lnt_range( i_start = t20 i_end = t29 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t39 ).
    ENDIF.
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t40) = |start|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = |end|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    t10 = t19.
    t9 = t10.
    t2 = NEW zcl_lnt_location( i_uri = t3 i_range = t9 ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |uri|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |range|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_method_definition.
    DATA(t1) = i_found.
    DATA(t2) = i_scope.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t5) = t2.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE string.
    DATA t15 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t16 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t17) = t2.
    t16 = t17.
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
      DATA(t23) = t2.
      t22 = t23.
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
      DATA(t29) = t1.
      t28 = t29->snode.
      t27 = t28->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_method_def ).
      t25 = xsdbool( t26 = abap_false ).
      t11 = t25.
    ENDIF.
    IF t11 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t30.
      result = t30.
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    DATA(t36) = t1.
    t35 = t36->snode.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t34 = t35->find_first_expression( i_type_9913 = t37 ).
    t33 = t34.
    DATA t38 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = t33.
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    IF t39 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t41.
      t38 = t41.
    ELSE.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = t33.
      t43 = t44.
      t42 = t43->get_first_token( ).
      t38 = t42.
    ENDIF.
    t32 = t38.
    t31 = t32.
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t47) = t31.
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    t48 = t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = t46.
    IF t51 IS INITIAL.
      t50 = abap_true.
    ENDIF.
    t45 = t50.
    IF t45 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t52.
      result = t52.
      RETURN.
    ENDIF.
    DATA t53 TYPE abap_bool.
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA t55 TYPE REF TO zcl_lnt_statement_node.
    DATA(t56) = t1.
    t55 = t56->snode.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167.
    t54 = t55->find_first_expression( i_type_9913 = t57 ).
    t53 = xsdbool( t54 IS BOUND ).
    IF t53 = abap_true.
      DATA t58 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t58.
      result = t58.
      RETURN.
    ENDIF.
    DATA t59 TYPE abap_bool.
    DATA t60 TYPE abap_bool.
    DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t62 TYPE REF TO zcl_lnt_position.
    DATA t63 TYPE REF TO zcl_lnt_position.
    DATA t64 TYPE REF TO zcl_lnt_abstract_token.
    DATA t65 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t66) = t31.
    t65 = t66.
    t64 = t65.
    DATA t67 TYPE REF TO zcl_lnt_position.
    DATA(t68) = t64.
    t67 = t68->start.
    t63 = t67.
    t62 = t63.
    DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t70) = t62.
    t69 = t70->col.
    t61 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t72 TYPE REF TO zcl_lnt_position.
    DATA t73 TYPE REF TO zcl_lnt_position.
    DATA t74 TYPE REF TO zcl_lnt_abstract_token.
    DATA t75 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t76) = t1.
    t75 = t76->token.
    t74 = t75.
    DATA t77 TYPE REF TO zcl_lnt_position.
    DATA(t78) = t74.
    t77 = t78->start.
    t73 = t77.
    t72 = t73.
    DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t80) = t72.
    t79 = t80->col.
    t71 = t79.
    t60 = zlnt_runtime_numb_290eb04a9758=>compare( left = t61 right = t71 op = `!=` ).
    t59 = t60.
    IF t60 = abap_false.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE f.
      DATA t83 TYPE REF TO zcl_lnt_position.
      DATA t84 TYPE REF TO zcl_lnt_position.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t87) = t31.
      t86 = t87.
      t85 = t86.
      DATA t88 TYPE REF TO zcl_lnt_position.
      DATA(t89) = t85.
      t88 = t89->start.
      t84 = t88.
      t83 = t84.
      DATA t90 TYPE f.
      DATA(t91) = t83.
      t90 = t91->row.
      t82 = t90.
      DATA t92 TYPE f.
      DATA t93 TYPE REF TO zcl_lnt_position.
      DATA t94 TYPE REF TO zcl_lnt_position.
      DATA t95 TYPE REF TO zcl_lnt_abstract_token.
      DATA t96 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t97) = t1.
      t96 = t97->token.
      t95 = t96.
      DATA t98 TYPE REF TO zcl_lnt_position.
      DATA(t99) = t95.
      t98 = t99->start.
      t94 = t98.
      t93 = t94.
      DATA t100 TYPE f.
      DATA(t101) = t93.
      t100 = t101->row.
      t92 = t100.
      t81 = xsdbool( t82 <> t92 ).
      t59 = t81.
    ENDIF.
    IF t59 = abap_true.
      DATA t102 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t102.
      result = t102.
      RETURN.
    ENDIF.
    DATA t103 TYPE abap_bool.
    DATA t104 TYPE string.
    DATA t105 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t106 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t107) = t2.
    t106 = t107.
    t105 = t106->get_identifier( ).
    t104 = t105->stype.
    DATA(t108) = |class_definition|.
    t103 = xsdbool( t104 = t108 ).
    IF t103 = abap_true.
      DATA t109 TYPE REF TO zif_lnt_method_definition.
      CLEAR t109.
      DATA t110 TYPE REF TO zif_lnt_method_definition.
      CLEAR t110.
      DATA t111 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t111.
      DATA t112 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t112.
      DATA t113 TYPE REF TO zif_lnt_class_definition.
      CLEAR t113.
      DATA t114 TYPE REF TO zif_lnt_class_definition.
      CLEAR t114.
      DATA t115 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t116 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t117 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t118) = t2.
      t117 = t118.
      t116 = t117->get_parent( ).
      t115 = t116.
      DATA t119 TYPE REF TO zif_lnt_class_definition.
      CLEAR t119.
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = t115.
      IF t121 IS INITIAL.
        t120 = abap_true.
      ENDIF.
      IF t120 = abap_true.
        DATA t122 TYPE REF TO zif_lnt_class_definition.
        CLEAR t122.
        t119 = t122.
      ELSE.
        DATA t123 TYPE REF TO zif_lnt_class_definition.
        DATA t124 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t125) = t115.
        t124 = t125.
        DATA t126 TYPE string.
        DATA t127 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t128 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t129) = t2.
        t128 = t129.
        t127 = t128->get_identifier( ).
        t126 = t127->sname.
        t123 = t124->find_class_definition( i_name = t126 ).
        t119 = t123.
      ENDIF.
      t114 = t119.
      t113 = t114.
      DATA t130 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t130.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = t113.
      IF t132 IS INITIAL.
        t131 = abap_true.
      ENDIF.
      IF t131 = abap_true.
        DATA t133 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t133.
        t130 = t133.
      ELSE.
        DATA t134 TYPE REF TO zif_lnt_method_definitions.
        DATA t135 TYPE REF TO zif_lnt_class_definition.
        DATA(t136) = t113.
        t135 = t136.
        t134 = t135->get_method_definitions( ).
        t130 = t134.
      ENDIF.
      t112 = t130.
      t111 = t112.
      DATA t137 TYPE REF TO zif_lnt_method_definition.
      CLEAR t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = t111.
      IF t139 IS INITIAL.
        t138 = abap_true.
      ENDIF.
      IF t138 = abap_true.
        DATA t140 TYPE REF TO zif_lnt_method_definition.
        CLEAR t140.
        t137 = t140.
      ELSE.
        DATA t141 TYPE REF TO zif_lnt_method_definition.
        CLEAR t141.
        DATA t142 TYPE REF TO zif_lnt_method_definitions.
        DATA(t143) = t111.
        t142 = t143.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA t146 TYPE string.
          DATA t147 TYPE REF TO zcl_lnt_abstract_token.
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t149) = t31.
          t148 = t149.
          t147 = t148.
          DATA t150 TYPE string.
          DATA(t151) = t147.
          t150 = t151->str.
          t146 = t150.
          DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t152->has = abap_true.
          t152->value = t146.
          t144 = t152.
        ELSE.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t153.
          t144 = t153.
        ENDIF.
        t141 = t142->get_by_name( i_name = t144 ).
        t137 = t141.
      ENDIF.
      t110 = t137.
      t109 = t110.
      DATA t154 TYPE REF TO zif_lnt_method_definition.
      DATA(t155) = t109.
      t154 = t155.
      DATA t156 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t156.
      DATA(t157) = VALUE abap_bool( ).
      DATA(t158) = t154.
      IF t158 IS INITIAL.
        t157 = abap_true.
      ENDIF.
      IF t157 = abap_true.
        DATA t159 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t159.
        t156 = t159.
      ELSE.
        DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t161 TYPE REF TO zif_lnt_method_definition.
        DATA(t162) = t154.
        t161 = t162.
        t160 ?= t161.
        t156 = t160.
      ENDIF.
      result = t156.
      RETURN.
    ELSE.
      DATA t163 TYPE REF TO zif_lnt_method_definition.
      CLEAR t163.
      DATA t164 TYPE REF TO zif_lnt_method_definition.
      CLEAR t164.
      DATA t165 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t165.
      DATA t166 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t166.
      DATA t167 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t167.
      DATA t168 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t168.
      DATA t169 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t170 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t171 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t172) = t2.
      t171 = t172.
      t170 = t171->get_parent( ).
      t169 = t170.
      DATA t173 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t173.
      DATA(t174) = VALUE abap_bool( ).
      DATA(t175) = t169.
      IF t175 IS INITIAL.
        t174 = abap_true.
      ENDIF.
      IF t174 = abap_true.
        DATA t176 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t176.
        t173 = t176.
      ELSE.
        DATA t177 TYPE REF TO zif_lnt_interface_definition.
        DATA t178 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t179) = t169.
        t178 = t179.
        DATA t180 TYPE string.
        DATA t181 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t182 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t183) = t2.
        t182 = t183.
        t181 = t182->get_identifier( ).
        t180 = t181->sname.
        t177 = t178->find_interface_definition( i_name = t180 ).
        t173 = t177.
      ENDIF.
      t168 = t173.
      t167 = t168.
      DATA t184 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t184.
      DATA(t185) = VALUE abap_bool( ).
      DATA(t186) = t167.
      IF t186 IS INITIAL.
        t185 = abap_true.
      ENDIF.
      IF t185 = abap_true.
        DATA t187 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t187.
        t184 = t187.
      ELSE.
        DATA t188 TYPE REF TO zif_lnt_method_definitions.
        DATA t189 TYPE REF TO zif_lnt_interface_definition.
        DATA(t190) = t167.
        t189 = t190.
        t188 = t189->get_method_definitions( ).
        t184 = t188.
      ENDIF.
      t166 = t184.
      t165 = t166.
      DATA t191 TYPE REF TO zif_lnt_method_definition.
      CLEAR t191.
      DATA(t192) = VALUE abap_bool( ).
      DATA(t193) = t165.
      IF t193 IS INITIAL.
        t192 = abap_true.
      ENDIF.
      IF t192 = abap_true.
        DATA t194 TYPE REF TO zif_lnt_method_definition.
        CLEAR t194.
        t191 = t194.
      ELSE.
        DATA t195 TYPE REF TO zif_lnt_method_definition.
        CLEAR t195.
        DATA t196 TYPE REF TO zif_lnt_method_definitions.
        DATA(t197) = t165.
        t196 = t197.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        DATA(t199) = abap_true.
        IF t199 = abap_true.
          DATA t200 TYPE string.
          DATA t201 TYPE REF TO zcl_lnt_abstract_token.
          DATA t202 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t203) = t31.
          t202 = t203.
          t201 = t202.
          DATA t204 TYPE string.
          DATA(t205) = t201.
          t204 = t205->str.
          t200 = t204.
          DATA(t206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t206->has = abap_true.
          t206->value = t200.
          t198 = t206.
        ELSE.
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          t198 = t207.
        ENDIF.
        t195 = t196->get_by_name( i_name = t198 ).
        t191 = t195.
      ENDIF.
      t164 = t191.
      t163 = t164.
      DATA t208 TYPE REF TO zif_lnt_method_definition.
      DATA(t209) = t163.
      t208 = t209.
      DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t210.
      DATA(t211) = VALUE abap_bool( ).
      DATA(t212) = t208.
      IF t212 IS INITIAL.
        t211 = abap_true.
      ENDIF.
      IF t211 = abap_true.
        DATA t213 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t213.
        t210 = t213.
      ELSE.
        DATA t214 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t215 TYPE REF TO zif_lnt_method_definition.
        DATA(t216) = t208.
        t215 = t216.
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
    DATA(t6) = t1.
    t5 = t6->snode.
    t4 = t5->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_st_call_function ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    DATA(t11) = t1.
    t10 = t11->snode.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
    t9 = t10->find_first_expression( i_type_9913 = t12 ).
    t8 = t9.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = t8.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t14.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t13 = t18.
    IF t13 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      result = t20.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA(t24) = t8.
    t23 = t24.
    t22 = t23->get_first_token( ).
    t21 = t22.
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE abap_bool.
    DATA t27 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t31) = t21.
    t30 = t31.
    DATA t32 TYPE REF TO zcl_lnt_position.
    DATA(t33) = t30.
    t32 = t33->start.
    t29 = t32.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t35) = t28.
    t34 = t35->col.
    t27 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t37 TYPE REF TO zcl_lnt_position.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_abstract_token.
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t41) = t1.
    t40 = t41->token.
    t39 = t40.
    DATA t42 TYPE REF TO zcl_lnt_position.
    DATA(t43) = t39.
    t42 = t43->start.
    t38 = t42.
    t37 = t38.
    DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t45) = t37.
    t44 = t45->col.
    t36 = t44.
    t26 = zlnt_runtime_numb_290eb04a9758=>compare( left = t27 right = t36 op = `!=` ).
    t25 = t26.
    IF t26 = abap_false.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE f.
      DATA t48 TYPE REF TO zcl_lnt_position.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t51) = t21.
      t50 = t51.
      DATA t52 TYPE REF TO zcl_lnt_position.
      DATA(t53) = t50.
      t52 = t53->start.
      t49 = t52.
      t48 = t49.
      DATA t54 TYPE f.
      DATA(t55) = t48.
      t54 = t55->row.
      t47 = t54.
      DATA t56 TYPE f.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t61) = t1.
      t60 = t61->token.
      t59 = t60.
      DATA t62 TYPE REF TO zcl_lnt_position.
      DATA(t63) = t59.
      t62 = t63->start.
      t58 = t62.
      t57 = t58.
      DATA t64 TYPE f.
      DATA(t65) = t57.
      t64 = t65->row.
      t56 = t64.
      t46 = xsdbool( t47 <> t56 ).
      t25 = t46.
    ENDIF.
    IF t25 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      result = t66.
      RETURN.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t67.
    DATA(t68) = abap_true.
    IF t68 = abap_true.
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t71) = t21.
      t70 = t71.
      DATA t72 TYPE string.
      DATA(t73) = t70.
      t72 = t73->str.
      t69 = t72.
      DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t74->has = abap_true.
      t74->value = t69.
      t67 = t74.
    ELSE.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      t67 = t75.
    ENDIF.
    result = t67.

  ENDMETHOD.

  METHOD find_include.
    DATA(t1) = i_found.
    DATA(t2) = i_reg_f149.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_statement.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    DATA(t7) = t1.
    t6 = t7->snode.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_include ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t8.
      result = t8.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA(t12) = t1.
    t11 = t12->snode.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t10 = t11->find_first_expression( i_type_9913 = t13 ).
    t9 = t10.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = t9.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t21.
      result = t21.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t25) = t9.
    t24 = t25.
    t23 = t24->get_first_token( ).
    t22 = t23.
    DATA t26 TYPE abap_bool.
    DATA t27 TYPE abap_bool.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE REF TO zcl_lnt_position.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t32) = t22.
    t31 = t32.
    DATA t33 TYPE REF TO zcl_lnt_position.
    DATA(t34) = t31.
    t33 = t34->start.
    t30 = t33.
    t29 = t30.
    DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t36) = t29.
    t35 = t36->col.
    t28 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA t40 TYPE REF TO zcl_lnt_abstract_token.
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t42) = t1.
    t41 = t42->token.
    t40 = t41.
    DATA t43 TYPE REF TO zcl_lnt_position.
    DATA(t44) = t40.
    t43 = t44->start.
    t39 = t43.
    t38 = t39.
    DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t46) = t38.
    t45 = t46->col.
    t37 = t45.
    t27 = zlnt_runtime_numb_290eb04a9758=>compare( left = t28 right = t37 op = `!=` ).
    t26 = t27.
    IF t27 = abap_false.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE f.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t52) = t22.
      t51 = t52.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA(t54) = t51.
      t53 = t54->start.
      t50 = t53.
      t49 = t50.
      DATA t55 TYPE f.
      DATA(t56) = t49.
      t55 = t56->row.
      t48 = t55.
      DATA t57 TYPE f.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t62) = t1.
      t61 = t62->token.
      t60 = t61.
      DATA t63 TYPE REF TO zcl_lnt_position.
      DATA(t64) = t60.
      t63 = t64->start.
      t59 = t63.
      t58 = t59.
      DATA t65 TYPE f.
      DATA(t66) = t58.
      t65 = t66->row.
      t57 = t65.
      t47 = xsdbool( t48 <> t57 ).
      t26 = t47.
    ENDIF.
    IF t26 = abap_true.
      DATA t67 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t67.
      result = t67.
      RETURN.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t68.
    DATA t69 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_object.
    CLEAR t70.
    DATA(t71) = t2.
    DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t72.
    DATA(t73) = abap_true.
    IF t73 = abap_true.
      DATA(t74) = |PROG|.
      DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t75->has = abap_true.
      t75->value = t74.
      t72 = t75.
    ELSE.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      t72 = t76.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t77.
    DATA(t78) = abap_true.
    IF t78 = abap_true.
      DATA t79 TYPE string.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t81) = t22.
      t80 = t81.
      DATA t82 TYPE string.
      DATA(t83) = t80.
      t82 = t83->str.
      t79 = t82.
      DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t84->has = abap_true.
      t84->value = t79.
      t77 = t84.
    ELSE.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      t77 = t85.
    ENDIF.
    t70 = t71->get_object( i_type_9913 = t72 i_name = t77 ).
    DATA t86 TYPE REF TO object.
    t86 = t70.
    t69 ?= t86.
    t68 = t69.
    DATA t87 TYPE abap_bool.
    DATA(t88) = t68.
    t87 = xsdbool( t88 IS BOUND ).
    IF t87 = abap_true.
      DATA t89 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t89.
      DATA(t90) = abap_true.
      IF t90 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t93 TYPE REF TO zcl_lnt_abap_object.
        DATA t94 TYPE REF TO zcl_lnt_abap_object.
        DATA(t95) = t68.
        t94 = t95.
        t93 = t94.
        DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t97) = t93.
        t96 = t97->parsed.
        t92 = t96.
        DATA t98 TYPE REF TO object.
        CLEAR t98.
        t92->load( ).
        CLEAR t98.
        READ TABLE t92->items INDEX 1 INTO t98.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        CLEAR t91.
        IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t99 ?= t98.
          DATA t100 TYPE REF TO object.
          t100 = t99->as_ref( ).
          t91 ?= t100.
        ELSE.
          t91 ?= t98.
        ENDIF.
        t89 = t91.
      ELSE.
        DATA t101 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t101.
        t89 = t101.
      ENDIF.
      result = t89.
      RETURN.
    ENDIF.
    DATA t102 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t102.
    result = t102.

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
