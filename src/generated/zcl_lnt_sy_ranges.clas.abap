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
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t4.
    DATA(t5) = t2.
    t4 = t5->scope.
    t3 = t4->is_any_oo( ).
    IF t3 = abap_true.
      DATA(t6) = VALUE string( ).
      DATA(t7) = |RANGES is not allowed within classes|.
      t6 = t7.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      DATA(t9) = t2.
      t8 = t9->issues.
      DATA t10 TYPE REF TO zcl_lnt_issue.
      CLEAR t10.
      DATA(t11) = t2.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA(t13) = t1.
      t12 = t13->get_first_token( ).
      DATA(t14) = t6.
      DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t15.
      t10 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t11 i_token = t12 i_message_26cb = t14 i_fix = t15 ).
      t8->load( ).
      APPEND t10 TO t8->items.
      t8->save( ).
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA(t20) = t1.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t19 = t20->find_first_expression( i_type_9913 = t21 ).
    t18 = t19.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t18.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t27.
      DATA(t28) = t18.
      t27 = t28.
      t26 = t27->get_first_token( ).
      t22 = t26.
    ENDIF.
    t17 = t22.
    t16 = t17.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t30.
    DATA(t31) = t1.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    t30 = t31->find_first_expression( i_type_9913 = t32 ).
    t29 = t30.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t34.
    DATA(t35) = t29.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t34.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ENDIF.
    t33 = t38.
    IF t33 = abap_true.
      DATA t40 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t40.
      DATA t41 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA(t44) = |Ranges, unexpected node|.
        DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t45->has = abap_true.
        t45->value = t44.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        t42 = t46.
      ENDIF.
      t41 = NEW zcx_lnt_assert_error( i_message_26cb = t42 ).
      t40 = NEW #( ).
      t40->payload = t41.
      CLEAR t40->source_value.
      IF t41 IS BOUND.
        DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t47.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        CLEAR t47.
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
      ENDIF.
      RAISE EXCEPTION t40.
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t51.
    DATA(t52) = t2.
    t51 = NEW zcl_lnt_basic_types( i_input_967e = t52 ).
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t53.
    DATA(t54) = t29.
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t55.
    t50 = t51->resolve_like_name( i_node = t53 i_header_logic = t55 ).
    t49 = t50.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = t49.
    t57 = xsdbool( t58 IS BOUND ).
    t56 = t57.
    IF t57 = abap_true.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = t16.
      t59 = xsdbool( t60 IS BOUND ).
      t56 = t59.
    ENDIF.
    IF t56 = abap_true.
      DATA t61 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t65.
      CREATE OBJECT t65.
      t64 = t65.
      DATA(t66) = t64.
      DATA t67 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t67.
      DATA(t68) = VALUE string( ).
      DATA(t69) = |sign|.
      t68 = t69.
      DATA t70 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_character_type.
      CLEAR t71.
      DATA(t72) = CONV f( 1 ).
      DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t73.
      t71 = NEW zcl_lnt_character_type( i_length = t72 i_extra = t73 ).
      t70 = t71.
      DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t75.
      t74 = t75.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      t76 = t77.
      t67 = NEW zcl_lnt_istructure_component( i_name = t68 i_type_9913 = t70 i_as_include = t74 i_suffix = t76 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t78 ).
      ENDIF.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t79 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t80) = |name|.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
      ENDIF.
      DATA(t82) = |type|.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
      ENDIF.
      t66->load( ).
      APPEND t67 TO t66->items.
      t66->save( ).
      DATA(t84) = t64.
      DATA t85 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t85.
      DATA(t86) = VALUE string( ).
      DATA(t87) = |option|.
      t86 = t87.
      DATA t88 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t88.
      DATA t89 TYPE REF TO zcl_lnt_character_type.
      CLEAR t89.
      DATA(t90) = CONV f( 2 ).
      DATA t91 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t91.
      t89 = NEW zcl_lnt_character_type( i_length = t90 i_extra = t91 ).
      t88 = t89.
      DATA t92 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t93.
      t92 = t93.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      t94 = t95.
      t85 = NEW zcl_lnt_istructure_component( i_name = t86 i_type_9913 = t88 i_as_include = t92 i_suffix = t94 ).
      CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
      t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t96 ).
      ENDIF.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t97 ).
      ENDIF.
      CREATE OBJECT t85->zlnt_json_ownkeys_70e5fd461788.
      t85->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t98) = |name|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      DATA(t100) = |type|.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
      ENDIF.
      t84->load( ).
      APPEND t85 TO t84->items.
      t84->save( ).
      DATA(t102) = t64.
      DATA t103 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t103.
      DATA(t104) = VALUE string( ).
      DATA(t105) = |low|.
      t104 = t105.
      DATA t106 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t106.
      DATA t107 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t107.
      DATA(t108) = t49.
      t107 = t108.
      t106 = t107.
      DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t110.
      t109 = t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      t111 = t112.
      t103 = NEW zcl_lnt_istructure_component( i_name = t104 i_type_9913 = t106 i_as_include = t109 i_suffix = t111 ).
      CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
      t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t114 ).
      ENDIF.
      CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
      t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t115) = |name|.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
      ENDIF.
      DATA(t117) = |type|.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      ENDIF.
      t102->load( ).
      APPEND t103 TO t102->items.
      t102->save( ).
      DATA(t119) = t64.
      DATA t120 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t120.
      DATA(t121) = VALUE string( ).
      DATA(t122) = |high|.
      t121 = t122.
      DATA t123 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t123.
      DATA t124 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t124.
      DATA(t125) = t49.
      t124 = t125.
      t123 = t124.
      DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t127.
      t126 = t127.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      t128 = t129.
      t120 = NEW zcl_lnt_istructure_component( i_name = t121 i_type_9913 = t123 i_as_include = t126 i_suffix = t128 ).
      CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
      t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t130 ).
      ENDIF.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t131 ).
      ENDIF.
      CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
      t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t132) = |name|.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
      ENDIF.
      DATA(t134) = |type|.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
      ENDIF.
      t119->load( ).
      APPEND t120 TO t119->items.
      t119->save( ).
      DATA(t136) = t64.
      t63 = t136.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t137.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t138.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t139.
      t62 = NEW zcl_lnt_structure_type( i_components = t63 i_qualified_name = t137 i_ddic_name = t138 i_description = t139 ).
      t61 = t62.
      DATA t140 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t140.
      DATA t141 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t141.
      DATA(t142) = t61.
      DATA t143 TYPE REF TO zcl_lnt_itable_options.
      CLEAR t143.
      DATA(t144) = VALUE abap_bool( ).
      DATA(t145) = abap_true.
      t144 = t145.
      DATA(t146) = VALUE string( ).
      DATA(t147) = |DEFAULT|.
      t146 = t147.
      DATA t148 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t148.
      DATA t149 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t149.
      t148 = t149.
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t150.
      DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t151.
      t150 = t151.
      t143 = NEW zcl_lnt_itable_options( i_with_header = t144 i_key_type = t146 i_primary_key = t148 i_secondary = t150 ).
      CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
      t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t152 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t153 ).
      ENDIF.
      CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
      t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t154) = |withHeader|.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
      ENDIF.
      DATA(t156) = |keyType|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t159.
      t141 = NEW zcl_lnt_ty_table_type( i_row_type = t142 i_options = t143 i_qualified_name = t158 i_description = t159 ).
      t140 = t141.
      DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t160.
      DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t162.
      DATA(t163) = t16.
      t162 = t163.
      DATA(t164) = VALUE string( ).
      DATA(t165) = t2.
      t164 = t165->filename.
      DATA(t166) = t140.
      DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t167.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      t161 = NEW zcl_lnt_typed_identifier( i_token = t162 i_filename = t164 i_type_9913 = t166 i_meta = t167 i_value = t168 ).
      t160 = t161.
      DATA t169 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t170.
      DATA(t171) = t2.
      t170 = t171->scope.
      t169 = t170.
      DATA t172 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t172.
      DATA t173 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t173.
      DATA(t174) = abap_true.
      IF t174 = abap_true.
        DATA(t175) = t160.
        t173 = t175.
      ELSE.
        DATA t176 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t176.
        t173 = t176.
      ENDIF.
      t172 = t173.
      DATA(t177) = VALUE abap_bool( ).
      DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t178.
      DATA(t179) = t172.
      t178 = t179.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      t180 = t181.
      DATA(t182) = VALUE abap_bool( ).
      DATA(t183) = t178.
      IF t183 IS INITIAL.
        t182 = abap_true.
      ENDIF.
      t177 = t182.
      IF t177 = abap_true.
      ELSE.
        DATA(t184) = t169.
        DATA(t185) = VALUE string( ).
        DATA t186 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t186.
        DATA t187 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t187.
        DATA(t188) = t172.
        t187 = t188.
        t186 = t187.
        DATA(t189) = VALUE string( ).
        DATA(t190) = VALUE string( ).
        DATA(t191) = VALUE string( ).
        DATA t192 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t192.
        DATA t193 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t193.
        DATA(t194) = t186.
        t193 = t194->token.
        t192 = t193.
        DATA(t195) = VALUE string( ).
        DATA(t196) = t192.
        t195 = t196->str.
        t191 = t195.
        t190 = t191.
        DATA(t197) = VALUE abap_bool( ).
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
          CLEAR t198.
        ELSE.
          IF t201 > t202 - t200.
            t201 = t202 - t200.
          ENDIF.
          t198 = t199+t200(t201).
        ENDIF.
        DATA(t203) = |!|.
        t197 = xsdbool( t198 = t203 ).
        IF t197 = abap_true.
          DATA(t204) = VALUE string( ).
          DATA(t205) = VALUE string( ).
          DATA(t206) = t190.
          t205 = t206.
          DATA(t207) = VALUE string( ).
          DATA(t208) = t205.
          DATA(t209) = 1.
          DATA(t210) = VALUE i( ).
          DATA(t211) = t205.
          DATA(t212) = strlen( t211 ).
          t210 = t212.
          DATA(t213) = strlen( t208 ).
          IF t209 < 0.
            t209 = t209 + t213.
            IF t209 < 0.
              t209 = 0.
            ENDIF.
          ENDIF.
          IF t209 > t213 OR t210 <= 0.
            CLEAR t207.
          ELSE.
            IF t210 > t213 - t209.
              t210 = t213 - t209.
            ENDIF.
            t207 = t208+t209(t210).
          ENDIF.
          t204 = t207.
          t190 = t204.
        ENDIF.
        DATA(t214) = t190.
        t189 = t214.
        t185 = t189.
        DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t215.
        DATA(t216) = t172.
        t215 = t216.
        t184->add_named_identifier( i_name = t185 i_identifier = t215 ).
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
