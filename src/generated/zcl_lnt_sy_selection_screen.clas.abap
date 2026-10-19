* TS: src/abap/5_syntax/statements/selection_screen.ts:8:1 SelectionScreen
CLASS zcl_lnt_sy_selection_screen DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_selection_screen IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
    t4 = t1->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t12) = xsdbool( t9 IS INITIAL ).
    IF t12 = abap_true.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t9.
      t15 = t16->get_first_token( ).
      t11 = t15.
    ENDIF.
    t7 = t11.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    t20 = t3.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = xsdbool( t20 IS INITIAL ).
    IF t23 = abap_true.
    ELSE.
      DATA t26 TYPE string.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      t27 = t20.
      t26 = t27->concat_tokens( ).
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t26.
      t22 = t29.
    ENDIF.
    t18 = t22.
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE string.
    DATA t32 TYPE string.
    t32 = t1->concat_tokens( ).
    DATA(t34) = strlen( t32 ).
    t31 = t32.
    IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t31 TO UPPER CASE.
    ELSE.
      t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
    ENDIF.
    t30 = t31.
    DATA(t35) = VALUE i( ).
    DATA(t36) = VALUE i( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE i( ).
    DATA(t40) = |BEGIN OF TABBED BLOCK|.
    DATA(t41) = strlen( t30 ).
    IF t40 IS INITIAL.
      t38 = 0.
    ELSE.
      FIND t40 IN t30 MATCH OFFSET t38.
      IF sy-subrc <> 0.
        t38 = -1.
      ENDIF.
    ENDIF.
    DATA(t42) = 0.
    t37 = xsdbool( t38 >= t42 ).
    IF t37 = abap_true.
      t36 = 16.
    ELSE.
      t36 = 20.
    ENDIF.
    t35 = t36.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t47 = t18.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    IF t47 IS INITIAL.
      t52 = abap_true.
    ELSEIF t47->has = abap_false.
      t52 = abap_true.
    ENDIF.
    t51 = xsdbool( t52 = abap_false ).
    t46 = t51.
    t45 = t46.
    IF t46 = abap_true.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE i.
      DATA t56 TYPE string.
      t56 = t18->value.
      t55 = strlen( t56 ).
      t54 = xsdbool( t55 > t35 ).
      t45 = t54.
    ENDIF.
    IF t45 = abap_true.
      DATA t61 TYPE string.
      DATA(t62) = |SELECTION-SCREEN block name too long, |.
      DATA t63 TYPE string.
      t63 = t18->value.
      DATA(t65) = strlen( t62 ).
      t61 = |{ t62 }{ t63 }|.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t66 = t2->issues.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      t70 = t1->get_first_token( ).
      DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t68 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t70 i_message_26cb = t61 i_fix = t73 ).
      t66->load( ).
      APPEND t68 TO t66->items.
      t66->save( ).
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zcl_lnt_expression_node.
    DATA t75 TYPE REF TO zcl_lnt_expression_node.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604.
    t75 = t1->find_first_expression( i_type_9913 = t77 ).
    t74 = t75.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = VALUE abap_bool( ).
    DATA(t85) = xsdbool( t74 IS INITIAL ).
    t84 = xsdbool( t85 = abap_false ).
    t79 = t84.
    t78 = t79.
    IF t79 = abap_true.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE i.
      DATA t89 TYPE string.
      DATA t90 TYPE REF TO zcl_lnt_expression_node.
      t90 = t74.
      t89 = t90->concat_tokens( ).
      t88 = strlen( t89 ).
      DATA(t93) = 8.
      t87 = xsdbool( t88 > t93 ).
      t78 = t87.
    ENDIF.
    IF t78 = abap_true.
      DATA t95 TYPE string.
      DATA(t96) = |SELECTION-SCREEN name too long, |.
      DATA t97 TYPE string.
      DATA t98 TYPE REF TO zcl_lnt_expression_node.
      t98 = t74.
      t97 = t98->concat_tokens( ).
      DATA(t100) = strlen( t96 ).
      t95 = |{ t96 }{ t97 }|.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t101 = t2->issues.
      DATA t103 TYPE REF TO zcl_lnt_issue.
      DATA t105 TYPE REF TO zcl_lnt_abstract_token.
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      t106 = t74.
      t105 = t106->get_first_token( ).
      DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t103 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t105 i_message_26cb = t95 i_fix = t109 ).
      t101->load( ).
      APPEND t103 TO t101->items.
      t101->save( ).
      RETURN.
    ENDIF.
    DATA t110 TYPE REF TO zcl_lnt_abstract_token.
    DATA t112 TYPE REF TO zcl_lnt_expression_node.
    t112 = t74.
    DATA t114 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t115) = xsdbool( t112 IS INITIAL ).
    IF t115 = abap_true.
    ELSE.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      DATA t119 TYPE REF TO zcl_lnt_expression_node.
      t119 = t112.
      t118 = t119->get_first_token( ).
      t114 = t118.
    ENDIF.
    t110 = t114.
    DATA(t121) = VALUE abap_bool( ).
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = VALUE i( ).
    DATA(t125) = |BEGIN OF TABBED BLOCK|.
    DATA(t126) = strlen( t30 ).
    IF t125 IS INITIAL.
      t123 = 0.
    ELSE.
      FIND t125 IN t30 MATCH OFFSET t123.
      IF sy-subrc <> 0.
        t123 = -1.
      ENDIF.
    ENDIF.
    DATA(t127) = 0.
    t122 = xsdbool( t123 >= t127 ).
    t121 = t122.
    IF t122 = abap_true.
      DATA t128 TYPE abap_bool.
      t128 = xsdbool( t7 IS BOUND ).
      t121 = t128.
    ENDIF.
    IF t121 = abap_true.
      DATA t131 TYPE REF TO zcl_lnt_structure_type.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t134.
      t133 = t134.
      DATA t136 TYPE REF TO zcl_lnt_istructure_component.
      DATA t137 TYPE string.
      t137 = |PROG|.
      DATA t139 TYPE REF TO zcl_lnt_abstract_type.
      DATA t140 TYPE REF TO zcl_lnt_character_type.
      DATA(t141) = CONV f( 40 ).
      DATA t142 TYPE REF TO zcl_lnt_abstract_type_data.
      t140 = NEW zcl_lnt_character_type( i_length = t141 i_extra = t142 ).
      t139 = t140.
      DATA t143 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t136 = NEW zcl_lnt_istructure_component( i_name = t137 i_type_9913 = t139 i_as_include = t143 i_suffix = t145 ).
      CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
      t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t147 ).
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t148 ).
      ENDIF.
      CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
      t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t149) = |name|.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
      DATA(t151) = |type|.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
      ENDIF.
      t133->load( ).
      APPEND t136 TO t133->items.
      t133->save( ).
      DATA t154 TYPE REF TO zcl_lnt_istructure_component.
      DATA t155 TYPE string.
      t155 = |DYNNR|.
      DATA t157 TYPE REF TO zcl_lnt_abstract_type.
      DATA t158 TYPE REF TO zcl_lnt_character_type.
      DATA(t159) = CONV f( 4 ).
      DATA t160 TYPE REF TO zcl_lnt_abstract_type_data.
      t158 = NEW zcl_lnt_character_type( i_length = t159 i_extra = t160 ).
      t157 = t158.
      DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t154 = NEW zcl_lnt_istructure_component( i_name = t155 i_type_9913 = t157 i_as_include = t161 i_suffix = t163 ).
      CREATE OBJECT t154->zlnt_view_ownkeys_b0e8086400eb.
      t154->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t165 ).
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t166 ).
      ENDIF.
      CREATE OBJECT t154->zlnt_json_ownkeys_70e5fd461788.
      t154->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t167) = |name|.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
      DATA(t169) = |type|.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
      ENDIF.
      t133->load( ).
      APPEND t154 TO t133->items.
      t133->save( ).
      DATA t172 TYPE REF TO zcl_lnt_istructure_component.
      DATA t173 TYPE string.
      t173 = |ACTIVETAB|.
      DATA t175 TYPE REF TO zcl_lnt_abstract_type.
      DATA t176 TYPE REF TO zcl_lnt_character_type.
      DATA(t177) = CONV f( 132 ).
      DATA t178 TYPE REF TO zcl_lnt_abstract_type_data.
      t176 = NEW zcl_lnt_character_type( i_length = t177 i_extra = t178 ).
      t175 = t176.
      DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t172 = NEW zcl_lnt_istructure_component( i_name = t173 i_type_9913 = t175 i_as_include = t179 i_suffix = t181 ).
      CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
      t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t183 ).
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t184 ).
      ENDIF.
      CREATE OBJECT t172->zlnt_json_ownkeys_70e5fd461788.
      t172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t185) = |name|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      DATA(t187) = |type|.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
      ENDIF.
      t133->load( ).
      APPEND t172 TO t133->items.
      t133->save( ).
      t132 = t133.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t131 = NEW zcl_lnt_structure_type( i_components = t132 i_qualified_name = t190 i_ddic_name = t191 i_description = t192 ).
      DATA t194 TYPE REF TO zcl_lnt_current_scope.
      t194 = t2->scope.
      DATA t196 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t200 TYPE REF TO zcl_lnt_abstract_token.
      t200 = t7.
      DATA t202 TYPE string.
      t202 = t2->filename.
      DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t209.
      t208 = t209.
      DATA(t211) = |selection_screen_tab|.
      t208->load( ).
      APPEND t211 TO t208->items.
      t208->save( ).
      t205 = t208.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t199 = NEW zcl_lnt_typed_identifier( i_token = t200 i_filename = t202 i_type_9913 = t131 i_meta = t205 i_value = t214 ).
      t196 = t199.
      DATA(t216) = VALUE abap_bool( ).
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t216 = xsdbool( t196 IS INITIAL ).
      IF t216 = abap_true.
      ELSE.
        DATA(t224) = VALUE string( ).
        DATA t225 TYPE REF TO zcl_lnt_fi_identifier.
        t225 = t196.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE string.
        DATA t232 TYPE REF TO zcl_lnt_abstract_token.
        t232 = t225->token.
        DATA t234 TYPE string.
        t234 = t232->str.
        t229 = t234.
        DATA(t236) = VALUE abap_bool( ).
        DATA(t237) = VALUE string( ).
        DATA(t238) = t229.
        DATA(t239) = 0.
        DATA(t240) = 1.
        DATA(t241) = strlen( t238 ).
        IF t239 < 0.
          t239 = t239 + t241.
          IF t239 < 0.
            t239 = 0.
          ENDIF.
        ENDIF.
        IF t239 > t241 OR t240 <= 0.
          CLEAR t237.
        ELSE.
          IF t240 > t241 - t239.
            t240 = t241 - t239.
          ENDIF.
          t237 = t238+t239(t240).
        ENDIF.
        DATA(t242) = |!|.
        t236 = xsdbool( t237 = t242 ).
        IF t236 = abap_true.
          DATA(t243) = VALUE string( ).
          DATA t244 TYPE string.
          t244 = t229.
          DATA(t246) = VALUE string( ).
          DATA(t248) = 1.
          DATA t249 TYPE i.
          t249 = strlen( t244 ).
          DATA(t252) = strlen( t244 ).
          IF t248 < 0.
            t248 = t248 + t252.
            IF t248 < 0.
              t248 = 0.
            ENDIF.
          ENDIF.
          IF t248 > t252 OR t249 <= 0.
            CLEAR t246.
          ELSE.
            IF t249 > t252 - t248.
              t249 = t252 - t248.
            ENDIF.
            t246 = t244+t248(t249).
          ENDIF.
          t243 = t246.
          t229 = t243.
        ENDIF.
        t228 = t229.
        t224 = t228.
        DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
        t254 = t196.
        t194->add_named_identifier( i_name = t224 i_identifier = t254 ).
      ENDIF.
    ELSE.
      DATA(t256) = VALUE abap_bool( ).
      DATA(t257) = VALUE abap_bool( ).
      DATA(t259) = |SELECTION-SCREEN TAB|.
      DATA(t260) = strlen( t30 ).
      DATA t261 TYPE i.
      DATA(t262) = VALUE i( ).
      DATA(t263) = VALUE string( ).
      t261 = strlen( t259 ).
      IF t261 = 0.
        t257 = abap_true.
      ELSEIF t261 <= t260.
        t262 = 0.
        t263 = t30+t262(t261).
        IF t263 = t259.
          t257 = abap_true.
        ENDIF.
      ENDIF.
      t256 = t257.
      IF t257 = abap_true.
        DATA t264 TYPE abap_bool.
        t264 = xsdbool( t110 IS BOUND ).
        t256 = t264.
      ENDIF.
      IF t256 = abap_true.
        DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        t268 = t110.
        DATA t270 TYPE string.
        t270 = t2->filename.
        DATA t272 TYPE REF TO zcl_lnt_character_type.
        DATA(t273) = CONV f( 83 ).
        DATA t274 TYPE REF TO zcl_lnt_abstract_type_data.
        t272 = NEW zcl_lnt_character_type( i_length = t273 i_extra = t274 ).
        DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t279 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t279.
        t278 = t279.
        DATA(t281) = |selection_screen_tab|.
        t278->load( ).
        APPEND t281 TO t278->items.
        t278->save( ).
        t275 = t278.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t267 = NEW zcl_lnt_typed_identifier( i_token = t268 i_filename = t270 i_type_9913 = t272 i_meta = t275 i_value = t284 ).
        DATA t285 TYPE REF TO zcl_lnt_current_scope.
        t285 = t2->scope.
        DATA t287 TYPE string.
        DATA t288 TYPE REF TO zcl_lnt_expression_node.
        t288 = t74.
        t287 = t288->concat_tokens( ).
        t285->add_named_identifier( i_name = t287 i_identifier = t267 ).
      ELSE.
        DATA t291 TYPE abap_bool.
        t291 = xsdbool( t110 IS BOUND ).
        IF t291 = abap_true.
          DATA t294 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t295 TYPE REF TO zcl_lnt_abstract_token.
          t295 = t110.
          DATA t297 TYPE string.
          t297 = t2->filename.
          DATA t299 TYPE REF TO zcl_lnt_character_type.
          DATA(t300) = CONV f( 83 ).
          DATA t301 TYPE REF TO zcl_lnt_abstract_type_data.
          t299 = NEW zcl_lnt_character_type( i_length = t300 i_extra = t301 ).
          DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t294 = NEW zcl_lnt_typed_identifier( i_token = t295 i_filename = t297 i_type_9913 = t299 i_meta = t302 i_value = t303 ).
          DATA t304 TYPE REF TO zcl_lnt_current_scope.
          t304 = t2->scope.
          DATA t306 TYPE string.
          DATA t307 TYPE REF TO zcl_lnt_expression_node.
          t307 = t74.
          t306 = t307->concat_tokens( ).
          t304->add_named_identifier( i_name = t306 i_identifier = t294 ).
        ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d958_c4d32cc39d4e.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
