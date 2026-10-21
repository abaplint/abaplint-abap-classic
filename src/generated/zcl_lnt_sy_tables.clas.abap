* TS: src/abap/5_syntax/statements/tables.ts:9:1 Tables
CLASS zcl_lnt_sy_tables DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_tables IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t5 = i_node->find_first_expression( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t9 = t5->get_first_token( ).
    ENDIF.
    t3 = t9.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t23 TYPE string.
    t23 = t3->str.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t23.
    DATA(t32) = |*|.
    DATA(t33) = strlen( t31 ).
    DATA t34 TYPE i.
    DATA(t35) = VALUE i( ).
    DATA(t36) = VALUE string( ).
    t34 = strlen( t32 ).
    IF t34 = 0.
      t30 = abap_true.
    ELSEIF t34 <= t33.
      t35 = 0.
      t36 = t31+t35(t34).
      IF t36 = t32.
        t30 = abap_true.
      ENDIF.
    ENDIF.
    IF t30 = abap_true.
      DATA t38 TYPE string.
      t38 = t23.
      DATA(t40) = VALUE string( ).
      DATA(t42) = 1.
      DATA t43 TYPE i.
      t43 = strlen( t38 ).
      DATA(t46) = strlen( t38 ).
      t42 = COND i( WHEN t42 < 0 THEN 0 WHEN t42 > t46 THEN t46 ELSE t42 ).
      t43 = COND i( WHEN t43 < 0 THEN 0 WHEN t43 > t46 THEN t46 ELSE t43 ).
      IF t42 > t43.
        t46 = t42.
        t42 = t43.
        t43 = t46.
      ENDIF.
      t46 = t43 - t42.
      t40 = t38+t42(t46).
      t23 = t40.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t49 TYPE REF TO zcl_lnt_ddic.
    DATA t55 TYPE REF TO zif_lnt_registry.
    t55 = t2->scope->reg.
    t49 = NEW zcl_lnt_ddic( i_reg_f149 = t55 ).
    DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
    IF xsdbool( t49 IS INITIAL ) = abap_true.
    ELSE.
      DATA t62 TYPE REF TO zcl_lnt_ddic.
      t62 = t49.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t68->has = abap_true.
      t68->value = t23.
      t64 = t68.
      DATA t70 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t72 = t64.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t76) = VALUE abap_bool( ).
      IF t72 IS INITIAL.
        t76 = abap_true.
      ELSEIF t72->has = abap_false.
        t76 = abap_true.
      ENDIF.
      IF t76 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t79 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t82 ).
        DATA t83 TYPE REF TO zif_lnt_object.
        t78 = NEW zcl_lnt_ilookup_result( i_type_9913 = t79 i_object_19cd = t83 ).
        CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
        t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t85 ).
        CREATE OBJECT t78->zlnt_json_ownkeys_70e5fd461788.
        t78->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t87 ).
        t70 = t78.
      ELSE.
        DATA t89 TYPE REF TO zcl_lnt_table.
        DATA t90 TYPE REF TO zcl_lnt_table.
        DATA t92 TYPE REF TO zif_lnt_registry.
        t92 = t62->reg.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t97->has = abap_true.
        t97->value = |TABL|.
        t94 = t97.
        DATA t101 TYPE string.
        t101 = t64->value.
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t101.
        DATA t105 TYPE REF TO object.
        t105 = t92->get_object( i_type_9913 = t94 i_name = t103 ).
        t90 ?= t105.
        t89 = t90.
        DATA t106 TYPE REF TO zcl_lnt_ilookup_result.
        IF xsdbool( t89 IS BOUND ) = abap_true.
          DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t110 TYPE REF TO zcl_lnt_abstract_type.
          DATA t112 TYPE REF TO zcl_lnt_table.
          t112 = t89.
          DATA t114 TYPE REF TO zif_lnt_registry.
          t114 = t62->reg.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t110 = t112->parse_type( i_reg_f149 = t114 i_data_element = t116 i_description = t117 ).
          DATA t118 TYPE REF TO zif_lnt_object.
          t118 = t89.
          t109 = NEW zcl_lnt_ilookup_result( i_type_9913 = t110 i_object_19cd = t118 ).
          CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
          t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t121 ).
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t122 ).
          ENDIF.
          CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
          t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t124 ).
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t126 ).
          ENDIF.
          t106 = t109.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t133 TYPE string.
          t133 = t64->value.
          DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t135->has = abap_true.
          t135->value = t133.
          t128 = t62->lookup_ddls( i_name = t135 ).
          DATA t137 TYPE REF TO zcl_lnt_ilookup_result.
          IF xsdbool( t128 IS BOUND ) = abap_true.
            t137 = t128.
          ELSE.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t146 TYPE string.
            t146 = t64->value.
            DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t148->has = abap_true.
            t148->value = t146.
            t143 = t148.
            DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t152 = t143.
            DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t156) = VALUE abap_bool( ).
            IF t152 IS INITIAL.
              t156 = abap_true.
            ELSEIF t152->has = abap_false.
              t156 = abap_true.
            ENDIF.
            IF t156 = abap_true.
              DATA t158 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t159 TYPE REF TO zcl_lnt_abstract_type.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t159 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t162 ).
              DATA t163 TYPE REF TO zif_lnt_object.
              t158 = NEW zcl_lnt_ilookup_result( i_type_9913 = t159 i_object_19cd = t163 ).
              CREATE OBJECT t158->zlnt_view_ownkeys_b0e8086400eb.
              t158->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t165 ).
              CREATE OBJECT t158->zlnt_json_ownkeys_70e5fd461788.
              t158->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t167 ).
              t150 = t158.
            ELSE.
              DATA t169 TYPE REF TO zcl_lnt_table.
              DATA t170 TYPE REF TO zcl_lnt_table.
              DATA t172 TYPE REF TO zif_lnt_registry.
              t172 = t62->reg.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t177->has = abap_true.
              t177->value = |VIEW|.
              t174 = t177.
              DATA t181 TYPE string.
              t181 = t143->value.
              DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t183->has = abap_true.
              t183->value = t181.
              DATA t185 TYPE REF TO object.
              t185 = t172->get_object( i_type_9913 = t174 i_name = t183 ).
              t170 ?= t185.
              t169 = t170.
              DATA t186 TYPE REF TO zcl_lnt_ilookup_result.
              IF xsdbool( t169 IS BOUND ) = abap_true.
                DATA t189 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t190 TYPE REF TO zcl_lnt_abstract_type.
                DATA t192 TYPE REF TO zcl_lnt_table.
                t192 = t169.
                DATA t194 TYPE REF TO zif_lnt_registry.
                t194 = t62->reg.
                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t190 = t192->parse_type( i_reg_f149 = t194 i_data_element = t196 i_description = t197 ).
                DATA t198 TYPE REF TO zif_lnt_object.
                t198 = t169.
                t189 = NEW zcl_lnt_ilookup_result( i_type_9913 = t190 i_object_19cd = t198 ).
                CREATE OBJECT t189->zlnt_view_ownkeys_b0e8086400eb.
                t189->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t201 ).
                DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t202 ).
                ENDIF.
                CREATE OBJECT t189->zlnt_json_ownkeys_70e5fd461788.
                t189->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t204 ).
                DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t206 ).
                ENDIF.
                t186 = t189.
              ELSE.
                DATA t207 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t209 TYPE REF TO zif_lnt_registry.
                t209 = t62->reg.
                DATA t211 TYPE string.
                t211 = t143->value.
                IF t209->in_error_namespace( i_name = t211 ) = abap_true.
                  DATA t213 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t214 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t217 TYPE string.
                  t217 = t143->value.
                  DATA(t220) = strlen( t217 ).
                  DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t214 = NEW zcl_lnt_unknown_type( i_error = |{ t217 }{ | not found, lookupView| }| i_qualified_name = t221 ).
                  DATA t222 TYPE REF TO zif_lnt_object.
                  t213 = NEW zcl_lnt_ilookup_result( i_type_9913 = t214 i_object_19cd = t222 ).
                  CREATE OBJECT t213->zlnt_view_ownkeys_b0e8086400eb.
                  t213->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t224 ).
                  CREATE OBJECT t213->zlnt_json_ownkeys_70e5fd461788.
                  t213->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t226 ).
                  t207 = t213.
                ELSE.
                  DATA t227 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t228 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t232 TYPE string.
                  t232 = t143->value.
                  DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t234->has = abap_true.
                  t234->value = t232.
                  DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t228 = zcl_lnt_void_type=>get_db65( i_voided = t234 i_qualified_name = t236 ).
                  DATA t237 TYPE REF TO zif_lnt_object.
                  t227 = NEW zcl_lnt_ilookup_result( i_type_9913 = t228 i_object_19cd = t237 ).
                  CREATE OBJECT t227->zlnt_view_ownkeys_b0e8086400eb.
                  t227->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t239 ).
                  CREATE OBJECT t227->zlnt_json_ownkeys_70e5fd461788.
                  t227->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t241 ).
                  t207 = t227.
                ENDIF.
                t186 = t207.
              ENDIF.
              t150 = t186.
            ENDIF.
            t137 = t150.
          ENDIF.
          t106 = t137.
        ENDIF.
        t70 = t106.
      ENDIF.
      t57 = t70.
    ENDIF.
    t47 = t57.
    DATA t243 TYPE REF TO zcl_lnt_ilookup_result.
    t243 = t47.
    IF xsdbool( t243 IS BOUND ) = abap_true.
      DATA t245 TYPE REF TO zif_lnt_ddic_references.
      t245 = t2->scope->reg->get_ddic_references( ).
      DATA t252 TYPE REF TO zif_lnt_object.
      t252 = t2->scope->parent_obj.
      DATA t260 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA t261 TYPE REF TO zif_lnt_object.
      t261 = t47->zlnt_view_read_sr_2de0200e6505( ).
      DATA t268 TYPE string.
      t268 = t2->filename.
      DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t270->has = abap_true.
      t270->value = t268.
      t260 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t261 i_token = t3 i_filename = t270 ).
      CREATE OBJECT t260->zlnt_view_ownkeys_b0e8086400eb.
      t260->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t278 ).
      DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t279 ).
      ENDIF.
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t280 ).
      ENDIF.
      CREATE OBJECT t260->zlnt_json_ownkeys_70e5fd461788.
      t260->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t282 ).
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t284 ).
      ENDIF.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t286 ).
      ENDIF.
      t245->add_using( i_obj_1ed0 = t252 i_using = t260 ).
      DATA t288 TYPE abap_bool.
      DATA t289 TYPE abap_bool.
      t289 = xsdbool( t2->scope->get_type( ) = |form| ).
      t288 = t289.
      IF t289 = abap_false.
        t288 = xsdbool( t2->scope->get_type( ) = |function| ).
      ENDIF.
      IF t288 = abap_true.
        DATA t299 TYPE REF TO zcl_lnt_current_scope.
        t299 = t2->scope.
        DATA t301 TYPE string.
        t301 = t3->str.
        DATA t308 TYPE REF TO zcl_lnt_abstract_token.
        t308 = t3.
        DATA t310 TYPE string.
        t310 = t2->filename.
        DATA t312 TYPE REF TO zcl_lnt_abstract_type.
        t312 = t47->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t318.
        t318->load( ).
        APPEND |tables| TO t318->items.
        t318->save( ).
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t299->add_named_identifier_to_parent( i_name = t301 i_identifier = NEW zcl_lnt_typed_identifier( i_token = t308 i_filename = t310 i_type_9913 = t312 i_meta = t318 i_value = t324 ) ).
      ELSE.
        DATA t326 TYPE REF TO zcl_lnt_current_scope.
        t326 = t2->scope.
        DATA t328 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t332 TYPE REF TO zcl_lnt_abstract_token.
        t332 = t3.
        DATA t334 TYPE string.
        t334 = t2->filename.
        DATA t336 TYPE REF TO zcl_lnt_abstract_type.
        t336 = t47->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t342.
        t342->load( ).
        APPEND |tables| TO t342->items.
        t342->save( ).
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t328 = NEW zcl_lnt_typed_identifier( i_token = t332 i_filename = t334 i_type_9913 = t336 i_meta = t342 i_value = t348 ).
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t328 IS INITIAL ) = abap_true.
        ELSE.
          DATA t359 TYPE REF TO zcl_lnt_fi_identifier.
          t359 = t328.
          DATA t363 TYPE string.
          t363 = t359->token->str.
          DATA(t371) = VALUE string( ).
          DATA(t372) = t363.
          DATA(t373) = 0.
          DATA(t374) = 1.
          DATA(t375) = strlen( t372 ).
          IF t373 < 0.
            t373 = t373 + t375.
            IF t373 < 0.
              t373 = 0.
            ENDIF.
          ENDIF.
          IF t373 > t375 OR t374 <= 0.
          ELSE.
            IF t374 > t375 - t373.
              t374 = t375 - t373.
            ENDIF.
            t371 = t372+t373(t374).
          ENDIF.
          IF xsdbool( t371 = |!| ) = abap_true.
            DATA t378 TYPE string.
            t378 = t363.
            DATA(t380) = VALUE string( ).
            DATA(t382) = 1.
            DATA t383 TYPE i.
            t383 = strlen( t378 ).
            DATA(t386) = strlen( t378 ).
            IF t382 < 0.
              t382 = t382 + t386.
              IF t382 < 0.
                t382 = 0.
              ENDIF.
            ENDIF.
            IF t382 > t386 OR t383 <= 0.
            ELSE.
              IF t383 > t386 - t382.
                t383 = t386 - t382.
              ENDIF.
              t380 = t378+t382(t383).
            ENDIF.
            t363 = t380.
          ENDIF.
          t326->add_named_identifier( i_name = t363 i_identifier = t328 ).
        ENDIF.
      ENDIF.
      RETURN.
    ENDIF.
    DATA t391 TYPE REF TO zcl_lnt_current_scope.
    t391 = t2->scope.
    DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t397 TYPE REF TO zcl_lnt_abstract_token.
    t397 = t3.
    DATA t399 TYPE string.
    t399 = t2->filename.
    DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t393 = NEW zcl_lnt_typed_identifier( i_token = t397 i_filename = t399 i_type_9913 = NEW zcl_lnt_unknown_type( i_error = |Tables, fallback| i_qualified_name = t403 ) i_meta = t404 i_value = t405 ).
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t393 IS INITIAL ) = abap_true.
    ELSE.
      DATA t416 TYPE REF TO zcl_lnt_fi_identifier.
      t416 = t393.
      DATA t420 TYPE string.
      t420 = t416->token->str.
      DATA(t428) = VALUE string( ).
      DATA(t429) = t420.
      DATA(t430) = 0.
      DATA(t431) = 1.
      DATA(t432) = strlen( t429 ).
      IF t430 < 0.
        t430 = t430 + t432.
        IF t430 < 0.
          t430 = 0.
        ENDIF.
      ENDIF.
      IF t430 > t432 OR t431 <= 0.
      ELSE.
        IF t431 > t432 - t430.
          t431 = t432 - t430.
        ENDIF.
        t428 = t429+t430(t431).
      ENDIF.
      IF xsdbool( t428 = |!| ) = abap_true.
        DATA t435 TYPE string.
        t435 = t420.
        DATA(t437) = VALUE string( ).
        DATA(t439) = 1.
        DATA t440 TYPE i.
        t440 = strlen( t435 ).
        DATA(t443) = strlen( t435 ).
        IF t439 < 0.
          t439 = t439 + t443.
          IF t439 < 0.
            t439 = 0.
          ENDIF.
        ENDIF.
        IF t439 > t443 OR t440 <= 0.
        ELSE.
          IF t440 > t443 - t439.
            t440 = t443 - t439.
          ENDIF.
          t437 = t435+t439(t440).
        ENDIF.
        t420 = t437.
      ENDIF.
      t391->add_named_identifier( i_name = t420 i_identifier = t393 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d975_b3b62c0f7275.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
