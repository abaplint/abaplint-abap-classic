* TS: src/abap/5_syntax/statements/ranges.ts:10:1 Ranges
CLASS zcl_lnt_sy_ranges DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_ranges IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t4 TYPE REF TO zcl_lnt_current_scope.
    t4 = t2->scope.
    IF t4->is_any_oo( ) = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t8 = t2->issues.
      DATA t10 TYPE REF TO zcl_lnt_issue.
      DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t10 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |RANGES is not allowed within classes| i_fix = t15 ).
      t8->load( ).
      APPEND t10 TO t8->items.
      t8->save( ).
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t18 = t1->find_first_expression( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
    ELSE.
      t22 = t18->get_first_token( ).
    ENDIF.
    t16 = t22.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    t29 = t1->find_first_expression( i_type_9913 = t32 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t29 IS INITIAL ) = abap_true.
      DATA t40 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t41 TYPE REF TO zcx_lnt_assert_error.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = |Ranges, unexpected node|.
      t41 = NEW zcx_lnt_assert_error( i_message_26cb = t45 ).
      t40 = NEW #( ).
      t40->payload = t41.
      CLEAR t40->source_value.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t41.
      TRY.
          t40->source_value ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40->source_value IS NOT BOUND.
        TRY.
            t47 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t40->source_value = t47->source( ).
        ENDIF.
        IF t40->source_value IS NOT BOUND.
          CREATE OBJECT t40->source_value.
          t40->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->source_value->oval = t41.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t40.
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t49 = NEW zcl_lnt_basic_types( i_input_967e = t2 )->resolve_like_name( i_node = t29 i_header_logic = t55 ).
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    t57 = xsdbool( t49 IS BOUND ).
    t56 = t57.
    IF t57 = abap_true.
      t56 = xsdbool( t16 IS BOUND ).
    ENDIF.
    IF t56 = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_structure_type.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t64.
      DATA t67 TYPE REF TO zcl_lnt_istructure_component.
      DATA t70 TYPE REF TO zcl_lnt_abstract_type.
      DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
      t70 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t73 ).
      DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t67 = NEW zcl_lnt_istructure_component( i_name = |sign| i_type_9913 = t70 i_as_include = t74 i_suffix = t76 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t78 ).
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t79 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t81 ).
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t83 ).
      ENDIF.
      t64->load( ).
      APPEND t67 TO t64->items.
      t64->save( ).
      DATA t85 TYPE REF TO zcl_lnt_istructure_component.
      DATA t88 TYPE REF TO zcl_lnt_abstract_type.
      DATA t91 TYPE REF TO zcl_lnt_abstract_type_data.
      t88 = NEW zcl_lnt_character_type( i_length = CONV f( 2 ) i_extra = t91 ).
      DATA t92 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t85 = NEW zcl_lnt_istructure_component( i_name = |option| i_type_9913 = t88 i_as_include = t92 i_suffix = t94 ).
      CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
      t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t96 ).
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t97 ).
      ENDIF.
      CREATE OBJECT t85->zlnt_json_ownkeys_70e5fd461788.
      t85->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t99 ).
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t101 ).
      ENDIF.
      t64->load( ).
      APPEND t85 TO t64->items.
      t64->save( ).
      DATA t103 TYPE REF TO zcl_lnt_istructure_component.
      DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t103 = NEW zcl_lnt_istructure_component( i_name = |low| i_type_9913 = t49 i_as_include = t109 i_suffix = t111 ).
      CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
      t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t113 ).
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t114 ).
      ENDIF.
      CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
      t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t116 ).
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t118 ).
      ENDIF.
      t64->load( ).
      APPEND t103 TO t64->items.
      t64->save( ).
      DATA t120 TYPE REF TO zcl_lnt_istructure_component.
      DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t120 = NEW zcl_lnt_istructure_component( i_name = |high| i_type_9913 = t49 i_as_include = t126 i_suffix = t128 ).
      CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
      t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t130 ).
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t131 ).
      ENDIF.
      CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
      t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t133 ).
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t135 ).
      ENDIF.
      t64->load( ).
      APPEND t120 TO t64->items.
      t64->save( ).
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t62 = NEW zcl_lnt_structure_type( i_components = t64 i_qualified_name = t137 i_ddic_name = t138 i_description = t139 ).
      DATA t141 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t143 TYPE REF TO zcl_lnt_itable_options.
      DATA t148 TYPE REF TO zcl_lnt_itable_key.
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t143 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t148 i_secondary = t150 ).
      CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
      t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t152 ).
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t153 ).
      ENDIF.
      CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
      t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t155 ).
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t141 = NEW zcl_lnt_ty_table_type( i_row_type = t62 i_options = t143 i_qualified_name = t158 i_description = t159 ).
      DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t162 TYPE REF TO zcl_lnt_abstract_token.
      t162 = t16.
      DATA(t164) = VALUE string( ).
      t164 = t2->filename.
      DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t161 = NEW zcl_lnt_typed_identifier( i_token = t162 i_filename = t164 i_type_9913 = t141 i_meta = t167 i_value = t168 ).
      DATA t170 TYPE REF TO zcl_lnt_current_scope.
      t170 = t2->scope.
      DATA t172 TYPE REF TO zcl_lnt_typed_identifier.
      t172 = t161.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t172 IS INITIAL ) = abap_true.
      ELSE.
        DATA t186 TYPE REF TO zcl_lnt_fi_identifier.
        t186 = t172.
        DATA(t190) = VALUE string( ).
        t190 = t186->token->str.
        DATA(t198) = VALUE string( ).
        DATA(t199) = t190.
        DATA(t200) = 0.
        DATA(t201) = 1.
        DATA(t202) = strlen( t199 ).
        IF t200 < 0.
          t200 = t200 + t202.
          IF t200 < 0.
            t200 = 0.
          ENDIF.
        ENDIF.
        IF t200 > t202 OR t201 <= 0.
        ELSE.
          IF t201 > t202 - t200.
            t201 = t202 - t200.
          ENDIF.
          t198 = t199+t200(t201).
        ENDIF.
        IF xsdbool( t198 = |!| ) = abap_true.
          DATA(t205) = VALUE string( ).
          t205 = t190.
          DATA(t207) = VALUE string( ).
          DATA(t209) = 1.
          DATA(t210) = VALUE i( ).
          t210 = strlen( t205 ).
          DATA(t213) = strlen( t205 ).
          IF t209 < 0.
            t209 = t209 + t213.
            IF t209 < 0.
              t209 = 0.
            ENDIF.
          ENDIF.
          IF t209 > t213 OR t210 <= 0.
          ELSE.
            IF t210 > t213 - t209.
              t210 = t213 - t209.
            ENDIF.
            t207 = t205+t209(t210).
          ENDIF.
          t190 = t207.
        ENDIF.
        t170->add_named_identifier( i_name = t190 i_identifier = t172 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d944_8d23073c621c.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
