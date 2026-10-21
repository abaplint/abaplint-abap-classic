* TS: src/abap/5_syntax/structures/statics.ts:12:1 Statics
CLASS zcl_lnt_sy_statics DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_statics IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t3 = t1->find_first_expression( i_type_9913 = t8 )->get_first_token( ).
    DATA(t9) = VALUE abap_bool( ).
    t9 = abap_false.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abstract_node.
    t15 = t1.
    t13 ?= t15->children.
    DATA t19 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t20 TYPE REF TO object.
    DATA(t21) = VALUE i( ).
    DO.
      t13->load( ).
      IF t21 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t20.
      READ TABLE t13->items INDEX t21 + 1 INTO t20.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t19.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t20.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t20.
      ENDIF.
      DATA t24 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t25 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t25.
      DATA t28 TYPE REF TO object.
      t28 = t19->get_db65( ).
      t25 ?= t28.
      t24 = t25.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      t30 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_statement_node ).
      t29 = t30.
      IF t30 = abap_true.
        t29 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_static ).
      ENDIF.
      IF t29 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t36) = NEW zcl_lnt_sy_static( ).
        DATA t37 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t37.
        t37 ?= t19.
        t34 = t36->run_syntax( i_node = t37 i_input_967e = t2 ).
        IF xsdbool( t34 IS BOUND ) = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t44.
          DATA(t45) = VALUE string( ).
          DATA t47 TYPE REF TO zcl_lnt_fi_identifier.
          t47 = t34.
          DATA(t51) = VALUE string( ).
          t51 = t47->token->str.
          DATA(t59) = VALUE string( ).
          DATA(t60) = t51.
          DATA(t61) = 0.
          DATA(t62) = 1.
          DATA(t63) = strlen( t60 ).
          IF t61 < 0.
            t61 = t61 + t63.
            IF t61 < 0.
              t61 = 0.
            ENDIF.
          ENDIF.
          IF t61 > t63 OR t62 <= 0.
          ELSE.
            IF t62 > t63 - t61.
              t62 = t63 - t61.
            ENDIF.
            t59 = t60+t61(t62).
          ENDIF.
          IF xsdbool( t59 = |!| ) = abap_true.
            DATA(t66) = VALUE string( ).
            t66 = t51.
            DATA(t68) = VALUE string( ).
            DATA(t70) = 1.
            DATA(t71) = VALUE i( ).
            t71 = strlen( t66 ).
            DATA(t74) = strlen( t66 ).
            IF t70 < 0.
              t70 = t70 + t74.
              IF t70 < 0.
                t70 = 0.
              ENDIF.
            ENDIF.
            IF t70 > t74 OR t71 <= 0.
            ELSE.
              IF t71 > t74 - t70.
                t71 = t74 - t70.
              ENDIF.
              t68 = t66+t70(t71).
            ENDIF.
            t51 = t68.
          ENDIF.
          t45 = t51.
          DATA t76 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t76.
          t76 = t34->type_cba0.
          DATA t83 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t83.
          CLEAR t83.
          DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t85.
          CLEAR t85.
          t44 = NEW zcl_lnt_istructure_component( i_name = t45 i_type_9913 = t76 i_as_include = t83 i_suffix = t85 ).
          CREATE OBJECT t44->zlnt_view_ownkeys_b0e8086400eb.
          t44->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t87 ).
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t88.
          IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t88 ).
          ENDIF.
          CREATE OBJECT t44->zlnt_json_ownkeys_70e5fd461788.
          t44->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t90 ).
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t92 ).
          ENDIF.
          t11->load( ).
          APPEND t44 TO t11->items.
          t11->save( ).
        ENDIF.
      ELSE.
        DATA(t93) = VALUE abap_bool( ).
        DATA(t94) = VALUE abap_bool( ).
        t94 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_structure_node ).
        t93 = t94.
        IF t94 = abap_true.
          t93 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_sr_statics ).
        ENDIF.
        IF t93 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t100) = NEW zcl_lnt_sy_statics( ).
          DATA t101 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t101.
          t101 ?= t19.
          t98 = t100->run_syntax( i_node = t101 i_input_967e = t2 ).
          IF xsdbool( t98 IS BOUND ) = abap_true.
            DATA t108 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t108.
            DATA(t109) = VALUE string( ).
            DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
            t111 = t98.
            DATA(t115) = VALUE string( ).
            t115 = t111->token->str.
            DATA(t123) = VALUE string( ).
            DATA(t124) = t115.
            DATA(t125) = 0.
            DATA(t126) = 1.
            DATA(t127) = strlen( t124 ).
            IF t125 < 0.
              t125 = t125 + t127.
              IF t125 < 0.
                t125 = 0.
              ENDIF.
            ENDIF.
            IF t125 > t127 OR t126 <= 0.
            ELSE.
              IF t126 > t127 - t125.
                t126 = t127 - t125.
              ENDIF.
              t123 = t124+t125(t126).
            ENDIF.
            IF xsdbool( t123 = |!| ) = abap_true.
              DATA(t130) = VALUE string( ).
              t130 = t115.
              DATA(t132) = VALUE string( ).
              DATA(t134) = 1.
              DATA(t135) = VALUE i( ).
              t135 = strlen( t130 ).
              DATA(t138) = strlen( t130 ).
              IF t134 < 0.
                t134 = t134 + t138.
                IF t134 < 0.
                  t134 = 0.
                ENDIF.
              ENDIF.
              IF t134 > t138 OR t135 <= 0.
              ELSE.
                IF t135 > t138 - t134.
                  t135 = t138 - t134.
                ENDIF.
                t132 = t130+t134(t135).
              ENDIF.
              t115 = t132.
            ENDIF.
            t109 = t115.
            DATA t140 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t140.
            t140 = t98->type_cba0.
            DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t147.
            CLEAR t147.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            CLEAR t149.
            t108 = NEW zcl_lnt_istructure_component( i_name = t109 i_type_9913 = t140 i_as_include = t147 i_suffix = t149 ).
            CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
            t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t151.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t151 ).
            DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t152.
            IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t152 ).
            ENDIF.
            CREATE OBJECT t108->zlnt_json_ownkeys_70e5fd461788.
            t108->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t154.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t154 ).
            DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t156.
            IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t156 ).
            ENDIF.
            t11->load( ).
            APPEND t108 TO t11->items.
            t11->save( ).
          ENDIF.
        ELSE.
          DATA(t157) = VALUE abap_bool( ).
          DATA(t158) = VALUE abap_bool( ).
          t158 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_statement_node ).
          t157 = t158.
          IF t158 = abap_true.
            t157 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_static_begin ).
          ENDIF.
          IF t157 = abap_true.
            DATA t163 TYPE REF TO zcl_lnt_abstract_token.
            DATA t164 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t164.
            t164 ?= t19.
            t163 = t164->find_direct_token_by_text( i_text = |OCCURS| ).
            IF xsdbool( t163 IS BOUND ) = abap_true.
              t9 = abap_true.
            ENDIF.
          ELSE.
            DATA(t169) = VALUE abap_bool( ).
            DATA(t170) = VALUE abap_bool( ).
            t170 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_statement_node ).
            t169 = t170.
            IF t170 = abap_true.
              t169 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_include_type ).
            ENDIF.
            IF t169 = abap_true.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t174.
              DATA t176 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t176.
              DATA t178 TYPE REF TO zcl_lnt_expression_node.
              DATA t180 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t180.
              t180 ?= t19.
              DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
              t178 = t180->find_first_expression( i_type_9913 = t183 ).
              DATA t184 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t184.
              IF xsdbool( t178 IS INITIAL ) = abap_true.
                CLEAR t184.
              ELSE.
                t184 = t178->get_first_token( ).
              ENDIF.
              t176 = t184.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              IF xsdbool( t176 IS INITIAL ) = abap_true.
                CLEAR t191.
              ELSE.
                DATA(t199) = VALUE string( ).
                t199 = t176->str.
                DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t201->has = abap_true.
                t201->value = t199.
                t191 = t201.
              ENDIF.
              t174 = t191.
              DATA t202 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t202.
              DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t204.
              DATA t207 TYPE REF TO zcl_lnt_current_scope.
              t207 = t2->scope.
              DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t209 = t174.
              DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t211.
              DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t213 = t209.
              DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t215.
              CLEAR t215.
              DATA(t217) = VALUE abap_bool( ).
              IF t213 IS INITIAL.
                t217 = abap_true.
              ELSEIF t213->has = abap_false.
                t217 = abap_true.
              ENDIF.
              IF t217 = abap_true.
                CLEAR t211.
              ELSE.
                DATA t221 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t221 = t207->current.
                DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t224.
                IF xsdbool( t221 IS INITIAL ) = abap_true.
                  CLEAR t224.
                ELSE.
                  DATA t229 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t229 = t221.
                  DATA(t231) = VALUE string( ).
                  t231 = t209->value.
                  t224 = t229->find_type( i_name = t231 ).
                ENDIF.
                t211 = t224.
              ENDIF.
              t204 = t211.
              DATA t233 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t233.
              IF xsdbool( t204 IS INITIAL ) = abap_true.
                CLEAR t233.
              ELSE.
                t233 = t204->type_cba0.
              ENDIF.
              t202 = t233.
              DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t246.
              CLEAR t246.
              IF xsdbool( t202 IS INITIAL ) = abap_true.
                DATA t250 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t250.
                DATA t253 TYPE REF TO zcl_lnt_ddic.
                DATA t256 TYPE REF TO zcl_lnt_current_scope.
                t256 = t2->scope.
                DATA t259 TYPE REF TO zif_lnt_registry.
                CLEAR t259.
                t259 = t256->reg.
                t253 = NEW zcl_lnt_ddic( i_reg_f149 = t259 ).
                DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t261 = t174.
                DATA t263 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t263.
                DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t265 = t261.
                DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t267.
                CLEAR t267.
                DATA(t269) = VALUE abap_bool( ).
                IF t265 IS INITIAL.
                  t269 = abap_true.
                ELSEIF t265->has = abap_false.
                  t269 = abap_true.
                ENDIF.
                IF t269 = abap_true.
                  DATA t271 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t272 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t272.
                  DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t275.
                  t272 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t275 ).
                  DATA t276 TYPE REF TO zif_lnt_object.
                  CLEAR t276.
                  CLEAR t276.
                  t271 = NEW zcl_lnt_ilookup_result( i_type_9913 = t272 i_object_19cd = t276 ).
                  CREATE OBJECT t271->zlnt_view_ownkeys_b0e8086400eb.
                  t271->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t278.
                  t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t278 ).
                  CREATE OBJECT t271->zlnt_json_ownkeys_70e5fd461788.
                  t271->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t280.
                  t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t280 ).
                  t263 = t271.
                ELSE.
                  DATA t282 TYPE REF TO zcl_lnt_table.
                  DATA t283 TYPE REF TO zcl_lnt_table.
                  CLEAR t283.
                  DATA t285 TYPE REF TO zif_lnt_registry.
                  t285 = t253->reg.
                  DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t287.
                  DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t290->has = abap_true.
                  t290->value = |TABL|.
                  t287 = t290.
                  DATA(t294) = VALUE string( ).
                  t294 = t261->value.
                  DATA(t296) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t296->has = abap_true.
                  t296->value = t294.
                  DATA t298 TYPE REF TO object.
                  t298 = t285->get_object( i_type_9913 = t287 i_name = t296 ).
                  t283 ?= t298.
                  t282 = t283.
                  DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t299.
                  IF xsdbool( t282 IS BOUND ) = abap_true.
                    DATA t302 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t303 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t303.
                    DATA t305 TYPE REF TO zcl_lnt_table.
                    t305 = t282.
                    DATA t307 TYPE REF TO zif_lnt_registry.
                    CLEAR t307.
                    t307 = t253->reg.
                    DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t309.
                    DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t310.
                    t303 = t305->parse_type( i_reg_f149 = t307 i_data_element = t309 i_description = t310 ).
                    DATA t311 TYPE REF TO zif_lnt_object.
                    CLEAR t311.
                    t311 = t282.
                    t302 = NEW zcl_lnt_ilookup_result( i_type_9913 = t303 i_object_19cd = t311 ).
                    CREATE OBJECT t302->zlnt_view_ownkeys_b0e8086400eb.
                    t302->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t314.
                    t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t314 ).
                    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t315.
                    IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t315 ).
                    ENDIF.
                    CREATE OBJECT t302->zlnt_json_ownkeys_70e5fd461788.
                    t302->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t317.
                    t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t317 ).
                    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t319.
                    IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t319 ).
                    ENDIF.
                    t299 = t302.
                  ELSE.
                    DATA t321 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA(t326) = VALUE string( ).
                    t326 = t261->value.
                    DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t328->has = abap_true.
                    t328->value = t326.
                    t321 = t253->lookup_ddls( i_name = t328 ).
                    DATA t330 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t330.
                    IF xsdbool( t321 IS BOUND ) = abap_true.
                      t330 = t321.
                    ELSE.
                      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t339) = VALUE string( ).
                      t339 = t261->value.
                      DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t341->has = abap_true.
                      t341->value = t339.
                      t336 = t341.
                      DATA t343 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t343.
                      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t345 = t336.
                      DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t347.
                      CLEAR t347.
                      DATA(t349) = VALUE abap_bool( ).
                      IF t345 IS INITIAL.
                        t349 = abap_true.
                      ELSEIF t345->has = abap_false.
                        t349 = abap_true.
                      ENDIF.
                      IF t349 = abap_true.
                        DATA t351 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t352 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t352.
                        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t355.
                        t352 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t355 ).
                        DATA t356 TYPE REF TO zif_lnt_object.
                        CLEAR t356.
                        CLEAR t356.
                        t351 = NEW zcl_lnt_ilookup_result( i_type_9913 = t352 i_object_19cd = t356 ).
                        CREATE OBJECT t351->zlnt_view_ownkeys_b0e8086400eb.
                        t351->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t358.
                        t351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t358 ).
                        CREATE OBJECT t351->zlnt_json_ownkeys_70e5fd461788.
                        t351->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t360.
                        t351->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t360 ).
                        t343 = t351.
                      ELSE.
                        DATA t362 TYPE REF TO zcl_lnt_table.
                        DATA t363 TYPE REF TO zcl_lnt_table.
                        CLEAR t363.
                        DATA t365 TYPE REF TO zif_lnt_registry.
                        t365 = t253->reg.
                        DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t367.
                        DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t370->has = abap_true.
                        t370->value = |VIEW|.
                        t367 = t370.
                        DATA(t374) = VALUE string( ).
                        t374 = t336->value.
                        DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t376->has = abap_true.
                        t376->value = t374.
                        DATA t378 TYPE REF TO object.
                        t378 = t365->get_object( i_type_9913 = t367 i_name = t376 ).
                        t363 ?= t378.
                        t362 = t363.
                        DATA t379 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t379.
                        IF xsdbool( t362 IS BOUND ) = abap_true.
                          DATA t382 TYPE REF TO zcl_lnt_ilookup_result.
                          DATA t383 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t383.
                          DATA t385 TYPE REF TO zcl_lnt_table.
                          t385 = t362.
                          DATA t387 TYPE REF TO zif_lnt_registry.
                          CLEAR t387.
                          t387 = t253->reg.
                          DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t389.
                          DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t390.
                          t383 = t385->parse_type( i_reg_f149 = t387 i_data_element = t389 i_description = t390 ).
                          DATA t391 TYPE REF TO zif_lnt_object.
                          CLEAR t391.
                          t391 = t362.
                          t382 = NEW zcl_lnt_ilookup_result( i_type_9913 = t383 i_object_19cd = t391 ).
                          CREATE OBJECT t382->zlnt_view_ownkeys_b0e8086400eb.
                          t382->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t394.
                          t382->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t394 ).
                          DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t395.
                          IF t382->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t382->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t395 ).
                          ENDIF.
                          CREATE OBJECT t382->zlnt_json_ownkeys_70e5fd461788.
                          t382->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t397.
                          t382->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t397 ).
                          DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t399.
                          IF t382->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t382->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t399 ).
                          ENDIF.
                          t379 = t382.
                        ELSE.
                          DATA t400 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t400.
                          DATA t402 TYPE REF TO zif_lnt_registry.
                          t402 = t253->reg.
                          DATA(t404) = VALUE string( ).
                          t404 = t336->value.
                          IF t402->in_error_namespace( i_name = t404 ) = abap_true.
                            DATA t406 TYPE REF TO zcl_lnt_ilookup_result.
                            DATA t407 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t407.
                            DATA(t409) = VALUE string( ).
                            DATA(t410) = VALUE string( ).
                            t410 = t336->value.
                            DATA(t413) = strlen( t410 ).
                            t409 = |{ t410 }{ | not found, lookupView| }|.
                            DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t414.
                            t407 = NEW zcl_lnt_unknown_type( i_error = t409 i_qualified_name = t414 ).
                            DATA t415 TYPE REF TO zif_lnt_object.
                            CLEAR t415.
                            CLEAR t415.
                            t406 = NEW zcl_lnt_ilookup_result( i_type_9913 = t407 i_object_19cd = t415 ).
                            CREATE OBJECT t406->zlnt_view_ownkeys_b0e8086400eb.
                            t406->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t417.
                            t406->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t417 ).
                            CREATE OBJECT t406->zlnt_json_ownkeys_70e5fd461788.
                            t406->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t419.
                            t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t419 ).
                            t400 = t406.
                          ELSE.
                            DATA t420 TYPE REF TO zcl_lnt_ilookup_result.
                            DATA t421 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t421.
                            DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t423.
                            DATA(t425) = VALUE string( ).
                            t425 = t336->value.
                            DATA(t427) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t427->has = abap_true.
                            t427->value = t425.
                            t423 = t427.
                            DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t429.
                            t421 = zcl_lnt_void_type=>get_db65( i_voided = t423 i_qualified_name = t429 ).
                            DATA t430 TYPE REF TO zif_lnt_object.
                            CLEAR t430.
                            CLEAR t430.
                            t420 = NEW zcl_lnt_ilookup_result( i_type_9913 = t421 i_object_19cd = t430 ).
                            CREATE OBJECT t420->zlnt_view_ownkeys_b0e8086400eb.
                            t420->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t432.
                            t420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t432 ).
                            CREATE OBJECT t420->zlnt_json_ownkeys_70e5fd461788.
                            t420->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t434.
                            t420->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t434 ).
                            t400 = t420.
                          ENDIF.
                          t379 = t400.
                        ENDIF.
                        t343 = t379.
                      ENDIF.
                      t330 = t343.
                    ENDIF.
                    t299 = t330.
                  ENDIF.
                  t263 = t299.
                ENDIF.
                t250 = t263->zlnt_view_read_sr_9be58e2d4893( ).
                DATA(t435) = t250.
                t202 = t250.
              ENDIF.
              IF xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
                IF xsdbool( t9 = abap_true ) = abap_true.
                  DATA t446 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t446.
                  DATA t447 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t447.
                  t447 ?= t202.
                  DATA t449 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t449.
                  DATA t454 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t454.
                  CLEAR t454.
                  DATA t456 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t456.
                  CLEAR t456.
                  t449 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t454 i_secondary = t456 ).
                  CREATE OBJECT t449->zlnt_view_ownkeys_b0e8086400eb.
                  t449->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t458.
                  t449->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t458 ).
                  DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t459.
                  IF t449->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t449->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t459 ).
                  ENDIF.
                  CREATE OBJECT t449->zlnt_json_ownkeys_70e5fd461788.
                  t449->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t461.
                  t449->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t461 ).
                  DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t463.
                  IF t449->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t449->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t463 ).
                  ENDIF.
                  DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t464.
                  DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t465.
                  t446 = NEW zcl_lnt_ty_table_type( i_row_type = t447 i_options = t449 i_qualified_name = t464 i_description = t465 ).
                  DATA(t470) = VALUE string( ).
                  t470 = t2->filename.
                  DATA t473 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t473.
                  DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t474.
                  result = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t470 i_type_9913 = t446 i_meta = t473 i_value = t474 ).
                  RETURN.
                ELSE.
                  DATA(t480) = VALUE string( ).
                  t480 = t2->filename.
                  DATA t482 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t482.
                  t482 ?= t202.
                  DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t484.
                  DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t485.
                  result = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t480 i_type_9913 = t482 i_meta = t484 i_value = t485 ).
                  RETURN.
                ENDIF.
              ENDIF.
              IF xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
                DATA(t493) = VALUE string( ).
                t493 = t2->filename.
                DATA t495 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t495.
                DATA(t496) = VALUE string( ).
                DATA(t497) = |unknown type, |.
                DATA(t498) = VALUE string( ).
                DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t499 = t174.
                DATA(t501) = VALUE string( ).
                DATA(t502) = VALUE abap_bool( ).
                IF t499 IS INITIAL.
                  t502 = abap_true.
                ELSEIF t499->has = abap_false.
                  t502 = abap_true.
                ENDIF.
                IF t502 = abap_true.
                  t501 = |undefined|.
                ELSE.
                  t501 = t499->value.
                ENDIF.
                t498 = t501.
                DATA(t507) = strlen( t497 ).
                t496 = |{ t497 }{ t498 }|.
                DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t508.
                t495 = NEW zcl_lnt_unknown_type( i_error = t496 i_qualified_name = t508 ).
                DATA t509 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t509.
                DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t510.
                result = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t493 i_type_9913 = t495 i_meta = t509 i_value = t510 ).
                RETURN.
              ENDIF.
              IF xsdbool( xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
                DATA(t515) = VALUE string( ).
                DATA(t517) = |not structured, |.
                DATA(t518) = VALUE string( ).
                DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t519 = t174.
                DATA(t521) = VALUE string( ).
                DATA(t522) = VALUE abap_bool( ).
                IF t519 IS INITIAL.
                  t522 = abap_true.
                ELSEIF t519->has = abap_false.
                  t522 = abap_true.
                ENDIF.
                IF t522 = abap_true.
                  t521 = |undefined|.
                ELSE.
                  t521 = t519->value.
                ENDIF.
                t518 = t521.
                DATA(t527) = strlen( t517 ).
                t515 = |{ t517 }{ t518 }|.
                DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t528 = t2->issues.
                DATA t530 TYPE REF TO zcl_lnt_issue.
                DATA t532 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t532.
                t532 = t1->get_first_token( ).
                DATA t535 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t535.
                t530 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t532 i_message_26cb = t515 i_fix = t535 ).
                t528->load( ).
                APPEND t530 TO t528->items.
                t528->save( ).
                DATA(t540) = VALUE string( ).
                t540 = t2->filename.
                DATA t542 TYPE REF TO zcl_lnt_void_type.
                CLEAR t542.
                DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t543.
                DATA(t545) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t546) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t546->has = abap_true.
                t546->value = t545.
                t543 = t546.
                DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t548.
                t542 = zcl_lnt_void_type=>get_db65( i_voided = t543 i_qualified_name = t548 ).
                DATA t549 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t549.
                DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t550.
                result = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t540 i_type_9913 = t542 i_meta = t549 i_value = t550 ).
                RETURN.
              ENDIF.
              DATA t552 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t552.
              DATA t554 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t554.
              t554 ?= t202.
              t552 = t554->components.
              DATA t558 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t558.
              DATA t559 TYPE REF TO object.
              CLEAR t559.
              DATA(t560) = VALUE i( ).
              DO.
                t552->load( ).
                IF t560 >= lines( t552->items ).
                  EXIT.
                ENDIF.
                CLEAR t559.
                READ TABLE t552->items INDEX t560 + 1 INTO t559.
                t560 = t560 + 1.
                DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t561.
                CLEAR t558.
                IF t559 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t561 ?= t559.
                  CLEAR t558.
                  IF t561 IS BOUND.
                    IF t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t558 ?= t561->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t558 IS NOT BOUND.
                      IF t561->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t561->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t561->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t561->tag <>
                      zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                        DATA t562 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t562.
                        IF t561->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t562 ?= t561->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t562->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t563) = VALUE string( ).
                      DATA t564 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t564.
                      DATA t565 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t565.
                      DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t566.
                      t558 = NEW zcl_lnt_istructure_component( view_source = t561 i_name = t563 i_type_9913 = t564 i_as_include = t565 i_suffix = t566 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  t558 ?= t559.
                ENDIF.
                t11->load( ).
                APPEND t558 TO t11->items.
                t11->save( ).
              ENDDO.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    IF xsdbool( t9 = abap_true ) = abap_true.
      DATA t573 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t574 TYPE REF TO zcl_lnt_structure_type.
      DATA t576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t574 = NEW zcl_lnt_structure_type( i_components = t11 i_qualified_name = t576 i_ddic_name = t577 i_description = t578 ).
      DATA t579 TYPE REF TO zcl_lnt_itable_options.
      DATA t584 TYPE REF TO zcl_lnt_itable_key.
      DATA t586 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t579 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t584 i_secondary = t586 ).
      CREATE OBJECT t579->zlnt_view_ownkeys_b0e8086400eb.
      t579->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t588 ).
      DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t589 ).
      ENDIF.
      CREATE OBJECT t579->zlnt_json_ownkeys_70e5fd461788.
      t579->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t591 ).
      DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t593 ).
      ENDIF.
      DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t573 = NEW zcl_lnt_ty_table_type( i_row_type = t574 i_options = t579 i_qualified_name = t594 i_description = t595 ).
      DATA(t600) = VALUE string( ).
      t600 = t2->filename.
      DATA t603 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t600 i_type_9913 = t573 i_meta = t603 i_value = t604 ).
      RETURN.
    ENDIF.
    DATA(t610) = VALUE string( ).
    t610 = t2->filename.
    DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t617 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t610 i_type_9913 = NEW zcl_lnt_structure_type( i_components = t11 i_qualified_name = t614 i_ddic_name = t615 i_description = t616 ) i_meta = t617 i_value = t618 ).


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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d993_9fc769739916.
  ENDMETHOD.
ENDCLASS.
