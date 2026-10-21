* TS: src/abap/5_syntax/statements/controls.ts:8:1 Controls
CLASS zcl_lnt_sy_controls DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_controls IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t11 = t9->get_first_token( ).
    ENDIF.
    t7 = t11.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    t20 = t1->find_direct_token_by_text( i_text = |TABSTRIP| ).
    t19 = xsdbool( t20 IS BOUND ).
    t18 = t19.
    IF t19 = abap_true.
      t18 = xsdbool( t7 IS BOUND ).
    ENDIF.
    IF t18 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_structure_type.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t28.
      DATA t31 TYPE REF TO zcl_lnt_istructure_component.
      DATA t34 TYPE REF TO zcl_lnt_abstract_type.
      DATA t37 TYPE REF TO zcl_lnt_abstract_type_data.
      t34 = NEW zcl_lnt_character_type( i_length = CONV f( 132 ) i_extra = t37 ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t31 = NEW zcl_lnt_istructure_component( i_name = |ACTIVETAB| i_type_9913 = t34 i_as_include = t38 i_suffix = t40 ).
      CREATE OBJECT t31->zlnt_view_ownkeys_b0e8086400eb.
      t31->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t42 ).
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t43 ).
      ENDIF.
      CREATE OBJECT t31->zlnt_json_ownkeys_70e5fd461788.
      t31->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t45 ).
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t47 ).
      ENDIF.
      t28->load( ).
      APPEND t31 TO t28->items.
      t28->save( ).
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t26 = NEW zcl_lnt_structure_type( i_components = t28 i_qualified_name = t49 i_ddic_name = t50 i_description = t51 ).
      DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      t54 = t7.
      DATA t56 TYPE string.
      t56 = t2->filename.
      DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t53 = NEW zcl_lnt_typed_identifier( i_token = t54 i_filename = t56 i_type_9913 = t26 i_meta = t59 i_value = t60 ).
      DATA t62 TYPE REF TO zcl_lnt_current_scope.
      t62 = t2->scope.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      t64 = t53.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t64 IS INITIAL ) = abap_true.
      ELSE.
        DATA t78 TYPE REF TO zcl_lnt_fi_identifier.
        t78 = t64.
        DATA t82 TYPE string.
        t82 = t78->token->str.
        DATA(t90) = VALUE string( ).
        DATA(t91) = t82.
        DATA(t92) = 0.
        DATA(t93) = 1.
        DATA(t94) = strlen( t91 ).
        IF t92 < 0.
          t92 = t92 + t94.
          IF t92 < 0.
            t92 = 0.
          ENDIF.
        ENDIF.
        IF t92 > t94 OR t93 <= 0.
        ELSE.
          IF t93 > t94 - t92.
            t93 = t94 - t92.
          ENDIF.
          t90 = t91+t92(t93).
        ENDIF.
        IF xsdbool( t90 = |!| ) = abap_true.
          DATA t97 TYPE string.
          t97 = t82.
          DATA(t99) = VALUE string( ).
          DATA(t101) = 1.
          DATA t102 TYPE i.
          t102 = strlen( t97 ).
          DATA(t105) = strlen( t97 ).
          IF t101 < 0.
            t101 = t101 + t105.
            IF t101 < 0.
              t101 = 0.
            ENDIF.
          ENDIF.
          IF t101 > t105 OR t102 <= 0.
          ELSE.
            IF t102 > t105 - t101.
              t102 = t105 - t101.
            ENDIF.
            t99 = t97+t101(t102).
          ENDIF.
          t82 = t99.
        ENDIF.
        t62->add_named_identifier( i_name = t82 i_identifier = t64 ).
      ENDIF.
    ENDIF.
    DATA t109 TYPE abap_bool.
    DATA t110 TYPE abap_bool.
    DATA t111 TYPE REF TO zcl_lnt_abstract_token.
    t111 = t1->find_direct_token_by_text( i_text = |TABLEVIEW| ).
    t110 = xsdbool( t111 IS BOUND ).
    t109 = t110.
    IF t110 = abap_true.
      t109 = xsdbool( t7 IS BOUND ).
    ENDIF.
    IF t109 = abap_true.
      DATA t117 TYPE REF TO zcl_lnt_structure_type.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t119.
      DATA t122 TYPE REF TO zcl_lnt_istructure_component.
      DATA t125 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t130->has = abap_true.
      t130->value = |TABLEVIEW-SCREEN|.
      DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t125 = zcl_lnt_void_type=>get_db65( i_voided = t130 i_qualified_name = t132 ).
      DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t122 = NEW zcl_lnt_istructure_component( i_name = |SCREEN| i_type_9913 = t125 i_as_include = t133 i_suffix = t135 ).
      CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
      t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t137 ).
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t138 ).
      ENDIF.
      CREATE OBJECT t122->zlnt_json_ownkeys_70e5fd461788.
      t122->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t140 ).
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t142 ).
      ENDIF.
      t119->load( ).
      APPEND t122 TO t119->items.
      t119->save( ).
      DATA t144 TYPE REF TO zcl_lnt_istructure_component.
      DATA t147 TYPE REF TO zcl_lnt_abstract_type.
      DATA t149 TYPE REF TO zcl_lnt_abstract_type_data.
      t147 = zcl_lnt_integer_type=>get_db65( i_input_967e = t149 ).
      DATA t150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t144 = NEW zcl_lnt_istructure_component( i_name = |INDEX| i_type_9913 = t147 i_as_include = t150 i_suffix = t152 ).
      CREATE OBJECT t144->zlnt_view_ownkeys_b0e8086400eb.
      t144->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t154 ).
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t144->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t155 ).
      ENDIF.
      CREATE OBJECT t144->zlnt_json_ownkeys_70e5fd461788.
      t144->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t157 ).
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t144->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t144->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t159 ).
      ENDIF.
      t119->load( ).
      APPEND t144 TO t119->items.
      t119->save( ).
      DATA t161 TYPE REF TO zcl_lnt_istructure_component.
      DATA t164 TYPE REF TO zcl_lnt_abstract_type.
      DATA t167 TYPE REF TO zcl_lnt_abstract_type_data.
      t164 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t167 ).
      DATA t168 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t161 = NEW zcl_lnt_istructure_component( i_name = |SELECTED| i_type_9913 = t164 i_as_include = t168 i_suffix = t170 ).
      CREATE OBJECT t161->zlnt_view_ownkeys_b0e8086400eb.
      t161->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t172 ).
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t173 ).
      ENDIF.
      CREATE OBJECT t161->zlnt_json_ownkeys_70e5fd461788.
      t161->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t175 ).
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t161->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t177 ).
      ENDIF.
      t119->load( ).
      APPEND t161 TO t119->items.
      t119->save( ).
      DATA t179 TYPE REF TO zcl_lnt_istructure_component.
      DATA t182 TYPE REF TO zcl_lnt_abstract_type.
      DATA t184 TYPE REF TO zcl_lnt_abstract_type_data.
      t182 = zcl_lnt_integer_type=>get_db65( i_input_967e = t184 ).
      DATA t185 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t179 = NEW zcl_lnt_istructure_component( i_name = |VISLENGTH| i_type_9913 = t182 i_as_include = t185 i_suffix = t187 ).
      CREATE OBJECT t179->zlnt_view_ownkeys_b0e8086400eb.
      t179->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t189 ).
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t179->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t190 ).
      ENDIF.
      CREATE OBJECT t179->zlnt_json_ownkeys_70e5fd461788.
      t179->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t179->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t192 ).
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t179->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t179->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t194 ).
      ENDIF.
      t119->load( ).
      APPEND t179 TO t119->items.
      t119->save( ).
      DATA t196 TYPE REF TO zcl_lnt_istructure_component.
      DATA t199 TYPE REF TO zcl_lnt_abstract_type.
      DATA t202 TYPE REF TO zcl_lnt_abstract_type_data.
      t199 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t202 ).
      DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t196 = NEW zcl_lnt_istructure_component( i_name = |INVISIBLE| i_type_9913 = t199 i_as_include = t203 i_suffix = t205 ).
      CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
      t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t207 ).
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t208 ).
      ENDIF.
      CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
      t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t210 ).
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t212 ).
      ENDIF.
      t119->load( ).
      APPEND t196 TO t119->items.
      t119->save( ).
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t117 = NEW zcl_lnt_structure_type( i_components = t119 i_qualified_name = t214 i_ddic_name = t215 i_description = t216 ).
      DATA t218 TYPE REF TO zcl_lnt_structure_type.
      DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t220.
      DATA t223 TYPE REF TO zcl_lnt_istructure_component.
      DATA t226 TYPE REF TO zcl_lnt_abstract_type.
      DATA t229 TYPE REF TO zcl_lnt_abstract_type_data.
      t226 = NEW zcl_lnt_character_type( i_length = CONV f( 132 ) i_extra = t229 ).
      DATA t230 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t223 = NEW zcl_lnt_istructure_component( i_name = |FIXED_COLS| i_type_9913 = t226 i_as_include = t230 i_suffix = t232 ).
      CREATE OBJECT t223->zlnt_view_ownkeys_b0e8086400eb.
      t223->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t234 ).
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t235 ).
      ENDIF.
      CREATE OBJECT t223->zlnt_json_ownkeys_70e5fd461788.
      t223->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t237 ).
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t239 ).
      ENDIF.
      t220->load( ).
      APPEND t223 TO t220->items.
      t220->save( ).
      DATA t241 TYPE REF TO zcl_lnt_istructure_component.
      DATA t244 TYPE REF TO zcl_lnt_abstract_type.
      DATA t246 TYPE REF TO zcl_lnt_abstract_type_data.
      t244 = zcl_lnt_integer_type=>get_db65( i_input_967e = t246 ).
      DATA t247 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t241 = NEW zcl_lnt_istructure_component( i_name = |LINES| i_type_9913 = t244 i_as_include = t247 i_suffix = t249 ).
      CREATE OBJECT t241->zlnt_view_ownkeys_b0e8086400eb.
      t241->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t251 ).
      DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t241->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t241->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t252 ).
      ENDIF.
      CREATE OBJECT t241->zlnt_json_ownkeys_70e5fd461788.
      t241->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t254 ).
      DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t241->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t241->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t256 ).
      ENDIF.
      t220->load( ).
      APPEND t241 TO t220->items.
      t220->save( ).
      DATA t258 TYPE REF TO zcl_lnt_istructure_component.
      DATA t261 TYPE REF TO zcl_lnt_abstract_type.
      DATA t263 TYPE REF TO zcl_lnt_abstract_type_data.
      t261 = zcl_lnt_integer_type=>get_db65( i_input_967e = t263 ).
      DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t258 = NEW zcl_lnt_istructure_component( i_name = |TOP_LINE| i_type_9913 = t261 i_as_include = t264 i_suffix = t266 ).
      CREATE OBJECT t258->zlnt_view_ownkeys_b0e8086400eb.
      t258->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t258->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t268 ).
      DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t258->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t258->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t269 ).
      ENDIF.
      CREATE OBJECT t258->zlnt_json_ownkeys_70e5fd461788.
      t258->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t258->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t271 ).
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t258->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t258->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t273 ).
      ENDIF.
      t220->load( ).
      APPEND t258 TO t220->items.
      t220->save( ).
      DATA t275 TYPE REF TO zcl_lnt_istructure_component.
      DATA t278 TYPE REF TO zcl_lnt_abstract_type.
      DATA t280 TYPE REF TO zcl_lnt_abstract_type_data.
      t278 = zcl_lnt_integer_type=>get_db65( i_input_967e = t280 ).
      DATA t281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t275 = NEW zcl_lnt_istructure_component( i_name = |CURRENT_LINE| i_type_9913 = t278 i_as_include = t281 i_suffix = t283 ).
      CREATE OBJECT t275->zlnt_view_ownkeys_b0e8086400eb.
      t275->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t285 ).
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t275->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t286 ).
      ENDIF.
      CREATE OBJECT t275->zlnt_json_ownkeys_70e5fd461788.
      t275->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t275->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t288 ).
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t275->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t275->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t290 ).
      ENDIF.
      t220->load( ).
      APPEND t275 TO t220->items.
      t220->save( ).
      DATA t292 TYPE REF TO zcl_lnt_istructure_component.
      DATA t295 TYPE REF TO zcl_lnt_abstract_type.
      DATA t297 TYPE REF TO zcl_lnt_abstract_type_data.
      t295 = zcl_lnt_integer_type=>get_db65( i_input_967e = t297 ).
      DATA t298 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t292 = NEW zcl_lnt_istructure_component( i_name = |LEFT_COL| i_type_9913 = t295 i_as_include = t298 i_suffix = t300 ).
      CREATE OBJECT t292->zlnt_view_ownkeys_b0e8086400eb.
      t292->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t302 ).
      DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t303 ).
      ENDIF.
      CREATE OBJECT t292->zlnt_json_ownkeys_70e5fd461788.
      t292->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t305 ).
      DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t307 ).
      ENDIF.
      t220->load( ).
      APPEND t292 TO t220->items.
      t220->save( ).
      DATA t309 TYPE REF TO zcl_lnt_istructure_component.
      DATA t312 TYPE REF TO zcl_lnt_abstract_type.
      DATA t315 TYPE REF TO zcl_lnt_abstract_type_data.
      t312 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t315 ).
      DATA t316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t309 = NEW zcl_lnt_istructure_component( i_name = |LINE_SEL_MODE| i_type_9913 = t312 i_as_include = t316 i_suffix = t318 ).
      CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
      t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t320 ).
      DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t321 ).
      ENDIF.
      CREATE OBJECT t309->zlnt_json_ownkeys_70e5fd461788.
      t309->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t323 ).
      DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t325 ).
      ENDIF.
      t220->load( ).
      APPEND t309 TO t220->items.
      t220->save( ).
      DATA t327 TYPE REF TO zcl_lnt_istructure_component.
      DATA t330 TYPE REF TO zcl_lnt_abstract_type.
      DATA t333 TYPE REF TO zcl_lnt_abstract_type_data.
      t330 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t333 ).
      DATA t334 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t327 = NEW zcl_lnt_istructure_component( i_name = |COL_SEL_MODE| i_type_9913 = t330 i_as_include = t334 i_suffix = t336 ).
      CREATE OBJECT t327->zlnt_view_ownkeys_b0e8086400eb.
      t327->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t338 ).
      DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t327->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t339 ).
      ENDIF.
      CREATE OBJECT t327->zlnt_json_ownkeys_70e5fd461788.
      t327->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t341 ).
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t327->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t343 ).
      ENDIF.
      t220->load( ).
      APPEND t327 TO t220->items.
      t220->save( ).
      DATA t345 TYPE REF TO zcl_lnt_istructure_component.
      DATA t348 TYPE REF TO zcl_lnt_abstract_type.
      DATA t351 TYPE REF TO zcl_lnt_abstract_type_data.
      t348 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t351 ).
      DATA t352 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t345 = NEW zcl_lnt_istructure_component( i_name = |LINE_SELECTOR| i_type_9913 = t348 i_as_include = t352 i_suffix = t354 ).
      CREATE OBJECT t345->zlnt_view_ownkeys_b0e8086400eb.
      t345->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t356 ).
      DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t357 ).
      ENDIF.
      CREATE OBJECT t345->zlnt_json_ownkeys_70e5fd461788.
      t345->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t359 ).
      DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t361 ).
      ENDIF.
      t220->load( ).
      APPEND t345 TO t220->items.
      t220->save( ).
      DATA t363 TYPE REF TO zcl_lnt_istructure_component.
      DATA t366 TYPE REF TO zcl_lnt_abstract_type.
      DATA t369 TYPE REF TO zcl_lnt_abstract_type_data.
      t366 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t369 ).
      DATA t370 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t363 = NEW zcl_lnt_istructure_component( i_name = |H_GRID| i_type_9913 = t366 i_as_include = t370 i_suffix = t372 ).
      CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
      t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t374 ).
      DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t375 ).
      ENDIF.
      CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
      t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t377 ).
      DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t379 ).
      ENDIF.
      t220->load( ).
      APPEND t363 TO t220->items.
      t220->save( ).
      DATA t381 TYPE REF TO zcl_lnt_istructure_component.
      DATA t384 TYPE REF TO zcl_lnt_abstract_type.
      DATA t387 TYPE REF TO zcl_lnt_abstract_type_data.
      t384 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t387 ).
      DATA t388 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t381 = NEW zcl_lnt_istructure_component( i_name = |V_GRID| i_type_9913 = t384 i_as_include = t388 i_suffix = t390 ).
      CREATE OBJECT t381->zlnt_view_ownkeys_b0e8086400eb.
      t381->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t381->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t392 ).
      DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t381->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t381->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t393 ).
      ENDIF.
      CREATE OBJECT t381->zlnt_json_ownkeys_70e5fd461788.
      t381->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t381->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t395 ).
      DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t381->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t381->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t397 ).
      ENDIF.
      t220->load( ).
      APPEND t381 TO t220->items.
      t220->save( ).
      DATA t399 TYPE REF TO zcl_lnt_istructure_component.
      DATA t402 TYPE REF TO zcl_lnt_abstract_type.
      DATA t405 TYPE REF TO zcl_lnt_itable_options.
      DATA t410 TYPE REF TO zcl_lnt_itable_key.
      DATA t412 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t405 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |DEFAULT| i_primary_key = t410 i_secondary = t412 ).
      CREATE OBJECT t405->zlnt_view_ownkeys_b0e8086400eb.
      t405->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t405->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t414 ).
      DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t405->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t405->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t415 ).
      ENDIF.
      CREATE OBJECT t405->zlnt_json_ownkeys_70e5fd461788.
      t405->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t405->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t417 ).
      DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t405->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t405->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t419 ).
      ENDIF.
      DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t402 = NEW zcl_lnt_ty_table_type( i_row_type = t117 i_options = t405 i_qualified_name = t420 i_description = t421 ).
      DATA t422 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t399 = NEW zcl_lnt_istructure_component( i_name = |COLS| i_type_9913 = t402 i_as_include = t422 i_suffix = t424 ).
      CREATE OBJECT t399->zlnt_view_ownkeys_b0e8086400eb.
      t399->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t399->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t426 ).
      DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t399->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t399->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t427 ).
      ENDIF.
      CREATE OBJECT t399->zlnt_json_ownkeys_70e5fd461788.
      t399->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t399->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t429 ).
      DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t399->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t399->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t431 ).
      ENDIF.
      t220->load( ).
      APPEND t399 TO t220->items.
      t220->save( ).
      DATA t433 TYPE REF TO zcl_lnt_istructure_component.
      DATA t436 TYPE REF TO zcl_lnt_abstract_type.
      DATA t439 TYPE REF TO zcl_lnt_abstract_type_data.
      t436 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t439 ).
      DATA t440 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t433 = NEW zcl_lnt_istructure_component( i_name = |INVISIBLE| i_type_9913 = t436 i_as_include = t440 i_suffix = t442 ).
      CREATE OBJECT t433->zlnt_view_ownkeys_b0e8086400eb.
      t433->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t433->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t444 ).
      DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t433->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t433->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t445 ).
      ENDIF.
      CREATE OBJECT t433->zlnt_json_ownkeys_70e5fd461788.
      t433->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t433->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t447 ).
      DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t433->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t433->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t449 ).
      ENDIF.
      t220->load( ).
      APPEND t433 TO t220->items.
      t220->save( ).
      DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t218 = NEW zcl_lnt_structure_type( i_components = t220 i_qualified_name = t451 i_ddic_name = t452 i_description = t453 ).
      DATA t455 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t456 TYPE REF TO zcl_lnt_abstract_token.
      t456 = t7.
      DATA t458 TYPE string.
      t458 = t2->filename.
      DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t455 = NEW zcl_lnt_typed_identifier( i_token = t456 i_filename = t458 i_type_9913 = t218 i_meta = t461 i_value = t462 ).
      DATA t464 TYPE REF TO zcl_lnt_current_scope.
      t464 = t2->scope.
      DATA t466 TYPE REF TO zcl_lnt_typed_identifier.
      t466 = t455.
      DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t466 IS INITIAL ) = abap_true.
      ELSE.
        DATA t480 TYPE REF TO zcl_lnt_fi_identifier.
        t480 = t466.
        DATA t484 TYPE string.
        t484 = t480->token->str.
        DATA(t492) = VALUE string( ).
        DATA(t493) = t484.
        DATA(t494) = 0.
        DATA(t495) = 1.
        DATA(t496) = strlen( t493 ).
        IF t494 < 0.
          t494 = t494 + t496.
          IF t494 < 0.
            t494 = 0.
          ENDIF.
        ENDIF.
        IF t494 > t496 OR t495 <= 0.
        ELSE.
          IF t495 > t496 - t494.
            t495 = t496 - t494.
          ENDIF.
          t492 = t493+t494(t495).
        ENDIF.
        IF xsdbool( t492 = |!| ) = abap_true.
          DATA t499 TYPE string.
          t499 = t484.
          DATA(t501) = VALUE string( ).
          DATA(t503) = 1.
          DATA t504 TYPE i.
          t504 = strlen( t499 ).
          DATA(t507) = strlen( t499 ).
          IF t503 < 0.
            t503 = t503 + t507.
            IF t503 < 0.
              t503 = 0.
            ENDIF.
          ENDIF.
          IF t503 > t507 OR t504 <= 0.
          ELSE.
            IF t504 > t507 - t503.
              t504 = t507 - t503.
            ENDIF.
            t501 = t499+t503(t504).
          ENDIF.
          t484 = t501.
        ENDIF.
        t464->add_named_identifier( i_name = t484 i_identifier = t466 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d882_f4030c2c9427.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
