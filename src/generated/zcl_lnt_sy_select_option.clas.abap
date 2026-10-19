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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    t14 = t3->get_first_token( ).
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    t22 = t3.
    t21 = t22->children.
    t20 ?= t21.
    t20->load( ).
    IF xsdbool( lines( t20->items ) > 1 ) = abap_true.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      t31 = t3->concat_tokens( ).
      DATA t34 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t36) = `\([^`.
      t36 = t36 && |\n\r|.
      DATA t37 TYPE c LENGTH 1.
      t37 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t36 t37 INTO t36 RESPECTING BLANKS.
      DATA t38 TYPE c LENGTH 1.
      t38 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t36 t38 INTO t36 RESPECTING BLANKS.
      t36 = t36 && |]+$|.
      CREATE OBJECT t34 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t36 flags = ||.
      t34->source = `\(.+$`.
      DATA(t41) = strlen( t31 ).
      t30 = t34->replace( p0 = t31 p1 = || ).
      DATA t42 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t42 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `\[\]$` flags = ||.
      DATA(t46) = strlen( t30 ).
      t29 = t42->replace( p0 = t30 p1 = || ).
      DATA t48 TYPE REF TO zcl_lnt_position.
      t48 = t14->start.
      t14 = NEW zcl_lnt_lx_identifier( i_start = t48 i_str = t29 ).
    ENDIF.
    DATA t54 TYPE abap_bool.
    DATA t55 TYPE abap_bool.
    t55 = xsdbool( t14 IS BOUND ).
    t54 = t55.
    IF t55 = abap_true.
      t54 = xsdbool( strlen( t14->str ) > 8 ).
    ENDIF.
    IF t54 = abap_true.
      DATA t67 TYPE string.
      DATA(t68) = |Select-option name too long, |.
      DATA t69 TYPE string.
      t69 = t14->str.
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
      DATA t100 TYPE string.
      t100 = t2->filename.
      DATA t102 TYPE REF TO zcl_lnt_void_type.
      CLEAR t102.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t106->has = abap_true.
      t106->value = |DYNAMIC_SELECT_OPTION|.
      t103 = t106.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      t102 = zcl_lnt_void_type=>get_db65( i_voided = t103 i_qualified_name = t108 ).
      DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      t95 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t100 i_type_9913 = t102 i_meta = t109 i_value = t110 ).
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF xsdbool( t95 IS INITIAL ) = abap_true.
      ELSE.
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        t121 = t95.
        DATA t125 TYPE string.
        t125 = t121->token->str.
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
        ELSE.
          IF t136 > t137 - t135.
            t136 = t137 - t135.
          ENDIF.
          t133 = t134+t135(t136).
        ENDIF.
        IF xsdbool( t133 = |!| ) = abap_true.
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
          ELSE.
            IF t145 > t148 - t144.
              t145 = t148 - t144.
            ENDIF.
            t142 = t140+t144(t145).
          ENDIF.
          t125 = t142.
        ENDIF.
        t93->add_named_identifier( i_name = t125 i_identifier = t95 ).
      ENDIF.
      RETURN.
    ENDDO.
    DATA t153 TYPE REF TO zcl_lnt_expression_node.
    DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t153 = t1->find_first_expression( i_type_9913 = t155 ).
    DATA t156 TYPE REF TO zcl_lnt_abstract_type.
    DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t156 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->resolve_like_name( i_node = t153 i_header_logic = t161 ).
    IF xsdbool( t156 IS BOUND ) = abap_true.
      DATA t165 TYPE REF TO zcl_lnt_structure_type.
      DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t167.
      DATA t170 TYPE REF TO zcl_lnt_istructure_component.
      DATA t173 TYPE REF TO zcl_lnt_abstract_type.
      DATA t176 TYPE REF TO zcl_lnt_abstract_type_data.
      t173 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t176 ).
      DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t170 = NEW zcl_lnt_istructure_component( i_name = |SIGN| i_type_9913 = t173 i_as_include = t177 i_suffix = t179 ).
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
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t184 ).
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t186 ).
      ENDIF.
      t167->load( ).
      APPEND t170 TO t167->items.
      t167->save( ).
      DATA t188 TYPE REF TO zcl_lnt_istructure_component.
      DATA t191 TYPE REF TO zcl_lnt_abstract_type.
      DATA t194 TYPE REF TO zcl_lnt_abstract_type_data.
      t191 = NEW zcl_lnt_character_type( i_length = CONV f( 2 ) i_extra = t194 ).
      DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t188 = NEW zcl_lnt_istructure_component( i_name = |OPTION| i_type_9913 = t191 i_as_include = t195 i_suffix = t197 ).
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
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t202 ).
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t204 ).
      ENDIF.
      t167->load( ).
      APPEND t188 TO t167->items.
      t167->save( ).
      DATA t206 TYPE REF TO zcl_lnt_istructure_component.
      DATA t212 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t206 = NEW zcl_lnt_istructure_component( i_name = |LOW| i_type_9913 = t156 i_as_include = t212 i_suffix = t214 ).
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
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t219 ).
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t221 ).
      ENDIF.
      t167->load( ).
      APPEND t206 TO t167->items.
      t167->save( ).
      DATA t223 TYPE REF TO zcl_lnt_istructure_component.
      DATA t229 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t223 = NEW zcl_lnt_istructure_component( i_name = |HIGH| i_type_9913 = t156 i_as_include = t229 i_suffix = t231 ).
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
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t236 ).
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t238 ).
      ENDIF.
      t167->load( ).
      APPEND t223 TO t167->items.
      t167->save( ).
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t165 = NEW zcl_lnt_structure_type( i_components = t167 i_qualified_name = t240 i_ddic_name = t241 i_description = t242 ).
      DATA t244 TYPE REF TO zcl_lnt_current_scope.
      t244 = t2->scope.
      DATA t246 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t251 TYPE string.
      t251 = t2->filename.
      DATA t255 TYPE REF TO zcl_lnt_itable_options.
      DATA t260 TYPE REF TO zcl_lnt_itable_key.
      DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t255 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t260 i_secondary = t262 ).
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
      DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t267 ).
      DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t269 ).
      ENDIF.
      DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t246 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t251 i_type_9913 = NEW zcl_lnt_ty_table_type( i_row_type = t165 i_options = t255 i_qualified_name = t270 i_description = t271 ) i_meta = t272 i_value = t273 ).
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t246 IS INITIAL ) = abap_true.
      ELSE.
        DATA t284 TYPE REF TO zcl_lnt_fi_identifier.
        t284 = t246.
        DATA t288 TYPE string.
        t288 = t284->token->str.
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
        ELSE.
          IF t299 > t300 - t298.
            t299 = t300 - t298.
          ENDIF.
          t296 = t297+t298(t299).
        ENDIF.
        IF xsdbool( t296 = |!| ) = abap_true.
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
          ELSE.
            IF t308 > t311 - t307.
              t308 = t311 - t307.
            ENDIF.
            t305 = t303+t307(t308).
          ENDIF.
          t288 = t305.
        ENDIF.
        t244->add_named_identifier( i_name = t288 i_identifier = t246 ).
      ENDIF.
    ELSE.
      DATA t316 TYPE REF TO zcl_lnt_current_scope.
      t316 = t2->scope.
      DATA t318 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t323 TYPE string.
      t323 = t2->filename.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t318 = NEW zcl_lnt_typed_identifier( i_token = t14 i_filename = t323 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |Select option, fallback| i_qualified_name = t327 ) i_meta = t328 i_value = t329 ).
      DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t318 IS INITIAL ) = abap_true.
      ELSE.
        DATA t340 TYPE REF TO zcl_lnt_fi_identifier.
        t340 = t318.
        DATA t344 TYPE string.
        t344 = t340->token->str.
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
        ELSE.
          IF t355 > t356 - t354.
            t355 = t356 - t354.
          ENDIF.
          t352 = t353+t354(t355).
        ENDIF.
        IF xsdbool( t352 = |!| ) = abap_true.
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
          ELSE.
            IF t364 > t367 - t363.
              t364 = t367 - t363.
            ENDIF.
            t361 = t359+t363(t364).
          ENDIF.
          t344 = t361.
        ENDIF.
        t316->add_named_identifier( i_name = t344 i_identifier = t318 ).
      ENDIF.
    ENDIF.
    DATA t372 TYPE string.
    DATA t373 TYPE string.
    DATA(t374) = |%_|.
    DATA t375 TYPE string.
    t375 = t14->str.
    DATA(t380) = strlen( t374 ).
    t373 = |{ t374 }{ t375 }|.
    DATA(t382) = strlen( t373 ).
    t372 = |{ t373 }{ |_%_app_%| }|.
    DATA t384 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t388 TYPE REF TO zcl_lnt_position.
    t388 = t14->start.
    t384 = NEW zcl_lnt_lx_identifier( i_start = t388 i_str = t372 ).
    DATA t392 TYPE REF TO zcl_lnt_current_scope.
    t392 = t2->scope.
    DATA t394 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t399 TYPE string.
    t399 = t2->filename.
    DATA(t405) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t405->has = abap_true.
    t405->value = |SELECT-OPTION magic|.
    DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t408 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t394 = NEW zcl_lnt_typed_identifier( i_token = t384 i_filename = t399 i_type_9913 = zcl_lnt_void_type=>get_db65( i_voided = t405 i_qualified_name = t407 ) i_meta = t408 i_value = t409 ).
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t394 IS INITIAL ) = abap_true.
    ELSE.
      DATA t420 TYPE REF TO zcl_lnt_fi_identifier.
      t420 = t394.
      DATA t424 TYPE string.
      t424 = t420->token->str.
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
      ELSE.
        IF t435 > t436 - t434.
          t435 = t436 - t434.
        ENDIF.
        t432 = t433+t434(t435).
      ENDIF.
      IF xsdbool( t432 = |!| ) = abap_true.
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
        ELSE.
          IF t444 > t447 - t443.
            t444 = t447 - t443.
          ENDIF.
          t441 = t439+t443(t444).
        ENDIF.
        t424 = t441.
      ENDIF.
      t392->add_named_identifier( i_name = t424 i_identifier = t394 ).
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
