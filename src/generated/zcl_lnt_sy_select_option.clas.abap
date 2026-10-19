* TS: src/abap/5_syntax/statements/selectoption.ts:11:1 SelectOption
CLASS zcl_lnt_sy_select_option DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_select_option IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t3 IS INITIAL ).
    IF t7 = abap_true.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    t16 = t3.
    t15 = t16->get_first_token( ).
    t14 = t15.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE i.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    t22 = t3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t25 = t22->children.
    t21 = t25.
    t20 ?= t21.
    t20->load( ).
    t19 = lines( t20->items ).
    DATA(t27) = 1.
    t18 = xsdbool( t19 > t27 ).
    IF t18 = abap_true.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      t32 = t3.
      t31 = t32->concat_tokens( ).
      DATA t34 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t35) = `\(.+$`.
      DATA(t36) = `\([^`.
      t36 = t36 && |\n\r|.
      DATA t37 TYPE c LENGTH 1.
      t37 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t36 t37 INTO t36 RESPECTING BLANKS.
      DATA t38 TYPE c LENGTH 1.
      t38 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t36 t38 INTO t36 RESPECTING BLANKS.
      t36 = t36 && |]+$|.
      DATA(t39) = ||.
      CREATE OBJECT t34 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t36 flags = t39.
      t34->source = t35.
      DATA(t40) = ||.
      DATA(t41) = strlen( t31 ).
      t30 = t34->replace( p0 = t31 p1 = t40 ).
      DATA t42 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t43) = `\[\]$`.
      DATA(t44) = ||.
      CREATE OBJECT t42 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t43 flags = t44.
      DATA(t45) = ||.
      DATA(t46) = strlen( t30 ).
      t29 = t42->replace( p0 = t30 p1 = t45 ).
      DATA t47 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t48 TYPE REF TO zcl_lnt_position.
      DATA t51 TYPE REF TO zcl_lnt_position.
      t51 = t14->start.
      t48 = t51.
      t47 = NEW zcl_lnt_lx_identifier( i_start = t48 i_str = t29 ).
      t14 = t47.
    ENDIF.
    DATA t54 TYPE abap_bool.
    DATA t55 TYPE abap_bool.
    t55 = xsdbool( t14 IS BOUND ).
    t54 = t55.
    IF t55 = abap_true.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE i.
      DATA t59 TYPE string.
      DATA t62 TYPE string.
      t62 = t14->str.
      t59 = t62.
      t58 = strlen( t59 ).
      DATA(t65) = 8.
      t57 = xsdbool( t58 > t65 ).
      t54 = t57.
    ENDIF.
    IF t54 = abap_true.
      DATA t67 TYPE string.
      DATA(t68) = |Select-option name too long, |.
      DATA t69 TYPE string.
      DATA t72 TYPE string.
      t72 = t14->str.
      t69 = t72.
      DATA(t74) = strlen( t68 ).
      t67 = |{ t68 }{ t69 }|.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t75 = t2->issues.
      DATA t77 TYPE REF TO zcl_lnt_issue.
      DATA t81 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t77 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t14 i_message_26cb = t67 i_fix = t81 ).
      t75->load( ).
      APPEND t77 TO t75->items.
      t75->save( ).
      RETURN.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t82 = t1->find_direct_expressions( i_type_9913 = t84 ).
    DATA t85 TYPE REF TO zcl_lnt_expression_node.
    DATA t86 TYPE REF TO object.
    DATA(t87) = VALUE i( ).
    DO.
      t82->load( ).
      IF t87 >= lines( t82->items ).
        EXIT.
      ENDIF.
      CLEAR t86.
      READ TABLE t82->items INDEX t87 + 1 INTO t86.
      t87 = t87 + 1.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      CLEAR t85.
      IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t88 ?= t86.
        DATA t89 TYPE REF TO object.
        t89 = t88->as_ref( ).
        t85 ?= t89.
      ELSE.
        t85 ?= t86.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t85 i_input_967e = t2 ).
      DATA t93 TYPE REF TO zcl_lnt_current_scope.
      t93 = t2->scope.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t95.
      DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t98.
      DATA t100 TYPE string.
      t100 = t2->filename.
      DATA t102 TYPE REF TO zcl_lnt_void_type.
      CLEAR t102.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      DATA(t105) = |DYNAMIC_SELECT_OPTION|.
      DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t106->has = abap_true.
      t106->value = t105.
      t103 = t106.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      t102 = zcl_lnt_void_type=>get_db65( i_voided = t103 i_qualified_name = t108 ).
      DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      t98 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t100 i_type_9913 = t102 i_meta = t109 i_value = t110 ).
      t95 = t98.
      DATA(t112) = VALUE abap_bool( ).
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      t112 = xsdbool( t95 IS INITIAL ).
      IF t112 = abap_true.
      ELSE.
        DATA(t120) = VALUE string( ).
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        t121 = t95.
        DATA(t124) = VALUE string( ).
        DATA t125 TYPE string.
        DATA t128 TYPE REF TO zcl_lnt_abstract_token.
        t128 = t121->token.
        DATA t130 TYPE string.
        t130 = t128->str.
        t125 = t130.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = VALUE string( ).
        DATA(t134) = t125.
        DATA(t135) = 0.
        DATA(t136) = 1.
        DATA(t137) = strlen( t134 ).
        IF t135 < 0.
          t135 = t135 + t137.
          IF t135 < 0.
            t135 = 0.
          ENDIF.
        ENDIF.
        IF t135 > t137 OR t136 <= 0.
          CLEAR t133.
        ELSE.
          IF t136 > t137 - t135.
            t136 = t137 - t135.
          ENDIF.
          t133 = t134+t135(t136).
        ENDIF.
        DATA(t138) = |!|.
        t132 = xsdbool( t133 = t138 ).
        IF t132 = abap_true.
          DATA(t139) = VALUE string( ).
          DATA t140 TYPE string.
          t140 = t125.
          DATA(t142) = VALUE string( ).
          DATA(t144) = 1.
          DATA t145 TYPE i.
          t145 = strlen( t140 ).
          DATA(t148) = strlen( t140 ).
          IF t144 < 0.
            t144 = t144 + t148.
            IF t144 < 0.
              t144 = 0.
            ENDIF.
          ENDIF.
          IF t144 > t148 OR t145 <= 0.
            CLEAR t142.
          ELSE.
            IF t145 > t148 - t144.
              t145 = t148 - t144.
            ENDIF.
            t142 = t140+t144(t145).
          ENDIF.
          t139 = t142.
          t125 = t139.
        ENDIF.
        t124 = t125.
        t120 = t124.
        DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
        t150 = t95.
        t93->add_named_identifier( i_name = t120 i_identifier = t150 ).
      ENDIF.
      RETURN.
    ENDDO.
    DATA t153 TYPE REF TO zcl_lnt_expression_node.
    DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t153 = t1->find_first_expression( i_type_9913 = t155 ).
    DATA t156 TYPE REF TO zcl_lnt_abstract_type.
    DATA t157 TYPE REF TO zcl_lnt_abstract_type.
    DATA t158 TYPE REF TO zcl_lnt_basic_types.
    t158 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t157 = t158->resolve_like_name( i_node = t153 i_header_logic = t161 ).
    t156 = t157.
    DATA t162 TYPE abap_bool.
    t162 = xsdbool( t156 IS BOUND ).
    IF t162 = abap_true.
      DATA t165 TYPE REF TO zcl_lnt_structure_type.
      DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t168.
      t167 = t168.
      DATA t170 TYPE REF TO zcl_lnt_istructure_component.
      DATA t171 TYPE string.
      t171 = |SIGN|.
      DATA t173 TYPE REF TO zcl_lnt_abstract_type.
      DATA t174 TYPE REF TO zcl_lnt_character_type.
      DATA(t175) = CONV f( 1 ).
      DATA t176 TYPE REF TO zcl_lnt_abstract_type_data.
      t174 = NEW zcl_lnt_character_type( i_length = t175 i_extra = t176 ).
      t173 = t174.
      DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t170 = NEW zcl_lnt_istructure_component( i_name = t171 i_type_9913 = t173 i_as_include = t177 i_suffix = t179 ).
      CREATE OBJECT t170->zlnt_view_ownkeys_b0e8086400eb.
      t170->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t181 ).
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t182 ).
      ENDIF.
      CREATE OBJECT t170->zlnt_json_ownkeys_70e5fd461788.
      t170->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t183) = |name|.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
      DATA(t185) = |type|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      ENDIF.
      t167->load( ).
      APPEND t170 TO t167->items.
      t167->save( ).
      DATA t188 TYPE REF TO zcl_lnt_istructure_component.
      DATA t189 TYPE string.
      t189 = |OPTION|.
      DATA t191 TYPE REF TO zcl_lnt_abstract_type.
      DATA t192 TYPE REF TO zcl_lnt_character_type.
      DATA(t193) = CONV f( 2 ).
      DATA t194 TYPE REF TO zcl_lnt_abstract_type_data.
      t192 = NEW zcl_lnt_character_type( i_length = t193 i_extra = t194 ).
      t191 = t192.
      DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t188 = NEW zcl_lnt_istructure_component( i_name = t189 i_type_9913 = t191 i_as_include = t195 i_suffix = t197 ).
      CREATE OBJECT t188->zlnt_view_ownkeys_b0e8086400eb.
      t188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t199 ).
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t200 ).
      ENDIF.
      CREATE OBJECT t188->zlnt_json_ownkeys_70e5fd461788.
      t188->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t201) = |name|.
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
      DATA(t203) = |type|.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
      ENDIF.
      t167->load( ).
      APPEND t188 TO t167->items.
      t167->save( ).
      DATA t206 TYPE REF TO zcl_lnt_istructure_component.
      DATA t207 TYPE string.
      t207 = |LOW|.
      DATA t209 TYPE REF TO zcl_lnt_abstract_type.
      t209 = t156.
      DATA t212 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t206 = NEW zcl_lnt_istructure_component( i_name = t207 i_type_9913 = t209 i_as_include = t212 i_suffix = t214 ).
      CREATE OBJECT t206->zlnt_view_ownkeys_b0e8086400eb.
      t206->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t216 ).
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t217 ).
      ENDIF.
      CREATE OBJECT t206->zlnt_json_ownkeys_70e5fd461788.
      t206->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t218) = |name|.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
      DATA(t220) = |type|.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
      ENDIF.
      t167->load( ).
      APPEND t206 TO t167->items.
      t167->save( ).
      DATA t223 TYPE REF TO zcl_lnt_istructure_component.
      DATA t224 TYPE string.
      t224 = |HIGH|.
      DATA t226 TYPE REF TO zcl_lnt_abstract_type.
      t226 = t156.
      DATA t229 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t223 = NEW zcl_lnt_istructure_component( i_name = t224 i_type_9913 = t226 i_as_include = t229 i_suffix = t231 ).
      CREATE OBJECT t223->zlnt_view_ownkeys_b0e8086400eb.
      t223->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t233 ).
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t234 ).
      ENDIF.
      CREATE OBJECT t223->zlnt_json_ownkeys_70e5fd461788.
      t223->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t235) = |name|.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
      DATA(t237) = |type|.
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
      ENDIF.
      t167->load( ).
      APPEND t223 TO t167->items.
      t167->save( ).
      t166 = t167.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t165 = NEW zcl_lnt_structure_type( i_components = t166 i_qualified_name = t240 i_ddic_name = t241 i_description = t242 ).
      DATA t244 TYPE REF TO zcl_lnt_current_scope.
      t244 = t2->scope.
      DATA t246 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t249 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t251 TYPE string.
      t251 = t2->filename.
      DATA t253 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t255 TYPE REF TO zcl_lnt_itable_options.
      DATA t256 TYPE abap_bool.
      t256 = abap_true.
      DATA t258 TYPE string.
      t258 = |DEFAULT|.
      DATA t260 TYPE REF TO zcl_lnt_itable_key.
      DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t255 = NEW zcl_lnt_itable_options( i_with_header = t256 i_key_type = t258 i_primary_key = t260 i_secondary = t262 ).
      CREATE OBJECT t255->zlnt_view_ownkeys_b0e8086400eb.
      t255->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t264 ).
      DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t265 ).
      ENDIF.
      CREATE OBJECT t255->zlnt_json_ownkeys_70e5fd461788.
      t255->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t266) = |withHeader|.
      DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
      DATA(t268) = |keyType|.
      DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
      ENDIF.
      DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t253 = NEW zcl_lnt_ty_table_type( i_row_type = t165 i_options = t255 i_qualified_name = t270 i_description = t271 ).
      DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t249 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t251 i_type_9913 = t253 i_meta = t272 i_value = t273 ).
      t246 = t249.
      DATA(t275) = VALUE abap_bool( ).
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t275 = xsdbool( t246 IS INITIAL ).
      IF t275 = abap_true.
      ELSE.
        DATA(t283) = VALUE string( ).
        DATA t284 TYPE REF TO zcl_lnt_fi_identifier.
        t284 = t246.
        DATA(t287) = VALUE string( ).
        DATA t288 TYPE string.
        DATA t291 TYPE REF TO zcl_lnt_abstract_token.
        t291 = t284->token.
        DATA t293 TYPE string.
        t293 = t291->str.
        t288 = t293.
        DATA(t295) = VALUE abap_bool( ).
        DATA(t296) = VALUE string( ).
        DATA(t297) = t288.
        DATA(t298) = 0.
        DATA(t299) = 1.
        DATA(t300) = strlen( t297 ).
        IF t298 < 0.
          t298 = t298 + t300.
          IF t298 < 0.
            t298 = 0.
          ENDIF.
        ENDIF.
        IF t298 > t300 OR t299 <= 0.
          CLEAR t296.
        ELSE.
          IF t299 > t300 - t298.
            t299 = t300 - t298.
          ENDIF.
          t296 = t297+t298(t299).
        ENDIF.
        DATA(t301) = |!|.
        t295 = xsdbool( t296 = t301 ).
        IF t295 = abap_true.
          DATA(t302) = VALUE string( ).
          DATA t303 TYPE string.
          t303 = t288.
          DATA(t305) = VALUE string( ).
          DATA(t307) = 1.
          DATA t308 TYPE i.
          t308 = strlen( t303 ).
          DATA(t311) = strlen( t303 ).
          IF t307 < 0.
            t307 = t307 + t311.
            IF t307 < 0.
              t307 = 0.
            ENDIF.
          ENDIF.
          IF t307 > t311 OR t308 <= 0.
            CLEAR t305.
          ELSE.
            IF t308 > t311 - t307.
              t308 = t311 - t307.
            ENDIF.
            t305 = t303+t307(t308).
          ENDIF.
          t302 = t305.
          t288 = t302.
        ENDIF.
        t287 = t288.
        t283 = t287.
        DATA t313 TYPE REF TO zcl_lnt_typed_identifier.
        t313 = t246.
        t244->add_named_identifier( i_name = t283 i_identifier = t313 ).
      ENDIF.
    ELSE.
      DATA t316 TYPE REF TO zcl_lnt_current_scope.
      t316 = t2->scope.
      DATA t318 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t321 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t323 TYPE string.
      t323 = t2->filename.
      DATA t325 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t326) = |Select option, fallback|.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t325 = NEW zcl_lnt_unknown_type( i_error = t326 i_qualified_name = t327 ).
      DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t321 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t323 i_type_9913 = t325 i_meta = t328 i_value = t329 ).
      t318 = t321.
      DATA(t331) = VALUE abap_bool( ).
      DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t331 = xsdbool( t318 IS INITIAL ).
      IF t331 = abap_true.
      ELSE.
        DATA(t339) = VALUE string( ).
        DATA t340 TYPE REF TO zcl_lnt_fi_identifier.
        t340 = t318.
        DATA(t343) = VALUE string( ).
        DATA t344 TYPE string.
        DATA t347 TYPE REF TO zcl_lnt_abstract_token.
        t347 = t340->token.
        DATA t349 TYPE string.
        t349 = t347->str.
        t344 = t349.
        DATA(t351) = VALUE abap_bool( ).
        DATA(t352) = VALUE string( ).
        DATA(t353) = t344.
        DATA(t354) = 0.
        DATA(t355) = 1.
        DATA(t356) = strlen( t353 ).
        IF t354 < 0.
          t354 = t354 + t356.
          IF t354 < 0.
            t354 = 0.
          ENDIF.
        ENDIF.
        IF t354 > t356 OR t355 <= 0.
          CLEAR t352.
        ELSE.
          IF t355 > t356 - t354.
            t355 = t356 - t354.
          ENDIF.
          t352 = t353+t354(t355).
        ENDIF.
        DATA(t357) = |!|.
        t351 = xsdbool( t352 = t357 ).
        IF t351 = abap_true.
          DATA(t358) = VALUE string( ).
          DATA t359 TYPE string.
          t359 = t344.
          DATA(t361) = VALUE string( ).
          DATA(t363) = 1.
          DATA t364 TYPE i.
          t364 = strlen( t359 ).
          DATA(t367) = strlen( t359 ).
          IF t363 < 0.
            t363 = t363 + t367.
            IF t363 < 0.
              t363 = 0.
            ENDIF.
          ENDIF.
          IF t363 > t367 OR t364 <= 0.
            CLEAR t361.
          ELSE.
            IF t364 > t367 - t363.
              t364 = t367 - t363.
            ENDIF.
            t361 = t359+t363(t364).
          ENDIF.
          t358 = t361.
          t344 = t358.
        ENDIF.
        t343 = t344.
        t339 = t343.
        DATA t369 TYPE REF TO zcl_lnt_typed_identifier.
        t369 = t318.
        t316->add_named_identifier( i_name = t339 i_identifier = t369 ).
      ENDIF.
    ENDIF.
    DATA t372 TYPE string.
    DATA t373 TYPE string.
    DATA(t374) = |%_|.
    DATA t375 TYPE string.
    DATA t378 TYPE string.
    t378 = t14->str.
    t375 = t378.
    DATA(t380) = strlen( t374 ).
    t373 = |{ t374 }{ t375 }|.
    DATA(t381) = |_%_app_%|.
    DATA(t382) = strlen( t373 ).
    t372 = |{ t373 }{ t381 }|.
    DATA t384 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t385 TYPE REF TO zcl_lnt_position.
    DATA t388 TYPE REF TO zcl_lnt_position.
    t388 = t14->start.
    t385 = t388.
    t384 = NEW zcl_lnt_lx_identifier( i_start = t385 i_str = t372 ).
    DATA t392 TYPE REF TO zcl_lnt_current_scope.
    t392 = t2->scope.
    DATA t394 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t397 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t399 TYPE string.
    t399 = t2->filename.
    DATA t401 TYPE REF TO zcl_lnt_void_type.
    DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t404) = |SELECT-OPTION magic|.
    DATA(t405) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t405->has = abap_true.
    t405->value = t404.
    t402 = t405.
    DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t401 = zcl_lnt_void_type=>get_db65( i_voided = t402 i_qualified_name = t407 ).
    DATA t408 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t397 = NEW zcl_lnt_typed_identifier( i_token = t384 i_filename = t399 i_type_9913 = t401 i_meta = t408 i_value = t409 ).
    t394 = t397.
    DATA(t411) = VALUE abap_bool( ).
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t411 = xsdbool( t394 IS INITIAL ).
    IF t411 = abap_true.
    ELSE.
      DATA(t419) = VALUE string( ).
      DATA t420 TYPE REF TO zcl_lnt_fi_identifier.
      t420 = t394.
      DATA(t423) = VALUE string( ).
      DATA t424 TYPE string.
      DATA t427 TYPE REF TO zcl_lnt_abstract_token.
      t427 = t420->token.
      DATA t429 TYPE string.
      t429 = t427->str.
      t424 = t429.
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = VALUE string( ).
      DATA(t433) = t424.
      DATA(t434) = 0.
      DATA(t435) = 1.
      DATA(t436) = strlen( t433 ).
      IF t434 < 0.
        t434 = t434 + t436.
        IF t434 < 0.
          t434 = 0.
        ENDIF.
      ENDIF.
      IF t434 > t436 OR t435 <= 0.
        CLEAR t432.
      ELSE.
        IF t435 > t436 - t434.
          t435 = t436 - t434.
        ENDIF.
        t432 = t433+t434(t435).
      ENDIF.
      DATA(t437) = |!|.
      t431 = xsdbool( t432 = t437 ).
      IF t431 = abap_true.
        DATA(t438) = VALUE string( ).
        DATA t439 TYPE string.
        t439 = t424.
        DATA(t441) = VALUE string( ).
        DATA(t443) = 1.
        DATA t444 TYPE i.
        t444 = strlen( t439 ).
        DATA(t447) = strlen( t439 ).
        IF t443 < 0.
          t443 = t443 + t447.
          IF t443 < 0.
            t443 = 0.
          ENDIF.
        ENDIF.
        IF t443 > t447 OR t444 <= 0.
          CLEAR t441.
        ELSE.
          IF t444 > t447 - t443.
            t444 = t447 - t443.
          ENDIF.
          t441 = t439+t443(t444).
        ENDIF.
        t438 = t441.
        t424 = t438.
      ENDIF.
      t423 = t424.
      t419 = t423.
      DATA t449 TYPE REF TO zcl_lnt_typed_identifier.
      t449 = t394.
      t392->add_named_identifier( i_name = t419 i_identifier = t449 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d959_17227a025f5d.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
