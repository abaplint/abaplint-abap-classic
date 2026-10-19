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
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t6 = t1->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    t4 = t5->get_first_token( ).
    t3 = t4.
    DATA(t9) = VALUE abap_bool( ).
    t9 = abap_false.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abstract_node.
    t15 = t1.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = t15->children.
    t14 = t17.
    t13 ?= t14.
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
        CLEAR t23.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t20.
      ENDIF.
      DATA t24 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t24.
      DATA t25 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      t26 = t19->get_db65( ).
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      t28 = t26.
      t25 ?= t28.
      t24 = t25.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      t30 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_statement_node ).
      t29 = t30.
      IF t30 = abap_true.
        DATA(t32) = VALUE abap_bool( ).
        t32 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_static ).
        t29 = t32.
      ENDIF.
      IF t29 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t35.
        DATA(t36) = NEW zcl_lnt_sy_static( ).
        DATA t37 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t37.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        t39 = t19.
        t37 ?= t39.
        t35 = t36->run_syntax( i_node = t37 i_input_967e = t2 ).
        t34 = t35.
        DATA(t41) = VALUE abap_bool( ).
        t41 = xsdbool( t34 IS BOUND ).
        IF t41 = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t44.
          DATA(t45) = VALUE string( ).
          DATA(t46) = VALUE string( ).
          DATA t47 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t47.
          t47 = t34.
          DATA(t50) = VALUE string( ).
          DATA(t51) = VALUE string( ).
          DATA(t52) = VALUE string( ).
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t54.
          t54 = t47->token.
          DATA(t56) = VALUE string( ).
          t56 = t54->str.
          t52 = t56.
          t51 = t52.
          DATA(t58) = VALUE abap_bool( ).
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
            CLEAR t59.
          ELSE.
            IF t62 > t63 - t61.
              t62 = t63 - t61.
            ENDIF.
            t59 = t60+t61(t62).
          ENDIF.
          DATA(t64) = |!|.
          t58 = xsdbool( t59 = t64 ).
          IF t58 = abap_true.
            DATA(t65) = VALUE string( ).
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
              CLEAR t68.
            ELSE.
              IF t71 > t74 - t70.
                t71 = t74 - t70.
              ENDIF.
              t68 = t66+t70(t71).
            ENDIF.
            t65 = t68.
            t51 = t65.
          ENDIF.
          t50 = t51.
          t46 = t50.
          t45 = t46.
          DATA t76 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t76.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t81.
          t81 = t34->type_cba0.
          t76 = t81.
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
          DATA(t89) = |name|.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
          DATA(t91) = |type|.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
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
          DATA(t96) = VALUE abap_bool( ).
          t96 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_sr_statics ).
          t93 = t96.
        ENDIF.
        IF t93 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t98.
          DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t99.
          DATA(t100) = NEW zcl_lnt_sy_statics( ).
          DATA t101 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t101.
          DATA t103 TYPE REF TO object.
          CLEAR t103.
          t103 = t19.
          t101 ?= t103.
          t99 = t100->run_syntax( i_node = t101 i_input_967e = t2 ).
          t98 = t99.
          DATA(t105) = VALUE abap_bool( ).
          t105 = xsdbool( t98 IS BOUND ).
          IF t105 = abap_true.
            DATA t108 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t108.
            DATA(t109) = VALUE string( ).
            DATA(t110) = VALUE string( ).
            DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t111.
            t111 = t98.
            DATA(t114) = VALUE string( ).
            DATA(t115) = VALUE string( ).
            DATA(t116) = VALUE string( ).
            DATA t118 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t118.
            t118 = t111->token.
            DATA(t120) = VALUE string( ).
            t120 = t118->str.
            t116 = t120.
            t115 = t116.
            DATA(t122) = VALUE abap_bool( ).
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
              CLEAR t123.
            ELSE.
              IF t126 > t127 - t125.
                t126 = t127 - t125.
              ENDIF.
              t123 = t124+t125(t126).
            ENDIF.
            DATA(t128) = |!|.
            t122 = xsdbool( t123 = t128 ).
            IF t122 = abap_true.
              DATA(t129) = VALUE string( ).
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
                CLEAR t132.
              ELSE.
                IF t135 > t138 - t134.
                  t135 = t138 - t134.
                ENDIF.
                t132 = t130+t134(t135).
              ENDIF.
              t129 = t132.
              t115 = t129.
            ENDIF.
            t114 = t115.
            t110 = t114.
            t109 = t110.
            DATA t140 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t140.
            DATA t145 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t145.
            t145 = t98->type_cba0.
            t140 = t145.
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
            DATA(t153) = |name|.
            DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t154.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
            DATA(t155) = |type|.
            DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t156.
            IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
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
            DATA(t160) = VALUE abap_bool( ).
            t160 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_static_begin ).
            t157 = t160.
          ENDIF.
          IF t157 = abap_true.
            DATA(t162) = VALUE abap_bool( ).
            DATA t163 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t163.
            DATA t164 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t164.
            DATA t166 TYPE REF TO object.
            CLEAR t166.
            t166 = t19.
            t164 ?= t166.
            DATA(t167) = |OCCURS|.
            t163 = t164->find_direct_token_by_text( i_text = t167 ).
            t162 = xsdbool( t163 IS BOUND ).
            IF t162 = abap_true.
              t9 = abap_true.
            ENDIF.
          ELSE.
            DATA(t169) = VALUE abap_bool( ).
            DATA(t170) = VALUE abap_bool( ).
            t170 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_statement_node ).
            t169 = t170.
            IF t170 = abap_true.
              DATA(t172) = VALUE abap_bool( ).
              t172 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_include_type ).
              t169 = t172.
            ENDIF.
            IF t169 = abap_true.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t174.
              DATA t176 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t176.
              DATA t178 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t178.
              DATA t179 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t179.
              DATA t180 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t180.
              DATA t182 TYPE REF TO object.
              CLEAR t182.
              t182 = t19.
              t180 ?= t182.
              DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
              t179 = t180->find_first_expression( i_type_9913 = t183 ).
              t178 = t179.
              DATA t184 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t184.
              DATA(t185) = xsdbool( t178 IS INITIAL ).
              IF t185 = abap_true.
                CLEAR t184.
              ELSE.
                DATA t188 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t188.
                DATA t189 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t189.
                t189 = t178.
                t188 = t189->get_first_token( ).
                t184 = t188.
              ENDIF.
              t176 = t184.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              DATA(t192) = xsdbool( t176 IS INITIAL ).
              IF t192 = abap_true.
                CLEAR t191.
              ELSE.
                DATA(t195) = VALUE string( ).
                DATA(t199) = VALUE string( ).
                t199 = t176->str.
                t195 = t199.
                DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t201->has = abap_true.
                t201->value = t195.
                t191 = t201.
              ENDIF.
              t174 = t191.
              DATA t202 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t202.
              DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t204.
              DATA t207 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t207.
              t207 = t2->scope.
              DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t209.
              t209 = t174.
              DATA t211 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t211.
              DATA(t212) = VALUE abap_bool( ).
              DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t213.
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
              t212 = t217.
              IF t212 = abap_true.
                CLEAR t211.
              ELSE.
                DATA t221 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t221.
                DATA t222 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t222.
                t222 = t207->current.
                t221 = t222.
                DATA t224 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t224.
                DATA(t225) = xsdbool( t221 IS INITIAL ).
                IF t225 = abap_true.
                  CLEAR t224.
                ELSE.
                  DATA t228 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t228.
                  DATA t229 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t229.
                  t229 = t221.
                  DATA(t231) = VALUE string( ).
                  t231 = t209->value.
                  t228 = t229->find_type( i_name = t231 ).
                  t224 = t228.
                ENDIF.
                t211 = t224.
              ENDIF.
              t204 = t211.
              DATA t233 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t233.
              DATA(t234) = xsdbool( t204 IS INITIAL ).
              IF t234 = abap_true.
                CLEAR t233.
              ELSE.
                DATA t241 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t241.
                t241 = t204->type_cba0.
                t233 = t241.
              ENDIF.
              t202 = t233.
              DATA(t243) = VALUE abap_bool( ).
              DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t246.
              CLEAR t246.
              t243 = xsdbool( t202 IS INITIAL ).
              IF t243 = abap_true.
                DATA t250 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t250.
                DATA t251 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t251.
                DATA t252 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t252.
                DATA t253 TYPE REF TO zcl_lnt_ddic.
                CLEAR t253.
                DATA t256 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t256.
                t256 = t2->scope.
                DATA t258 TYPE REF TO zcl_lnt_ddic.
                CLEAR t258.
                DATA t259 TYPE REF TO zif_lnt_registry.
                CLEAR t259.
                t259 = t256->reg.
                t258 = NEW zcl_lnt_ddic( i_reg_f149 = t259 ).
                t253 = t258.
                DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t261.
                t261 = t174.
                DATA t263 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t263.
                DATA(t264) = VALUE abap_bool( ).
                DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t265.
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
                t264 = t269.
                IF t264 = abap_true.
                  DATA t271 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t271.
                  DATA t272 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t272.
                  DATA t273 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t273.
                  DATA(t274) = |undefined, lookupTableOrView|.
                  DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t275.
                  t273 = NEW zcl_lnt_unknown_type( i_error = t274 i_qualified_name = t275 ).
                  t272 = t273.
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
                  DATA(t279) = |type|.
                  DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t280.
                  t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
                  t263 = t271.
                ELSE.
                  DATA t282 TYPE REF TO zcl_lnt_table.
                  CLEAR t282.
                  DATA t283 TYPE REF TO zcl_lnt_table.
                  CLEAR t283.
                  DATA t284 TYPE REF TO zif_lnt_object.
                  CLEAR t284.
                  DATA t285 TYPE REF TO zif_lnt_registry.
                  CLEAR t285.
                  t285 = t253->reg.
                  DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t287.
                  DATA(t289) = |TABL|.
                  DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t290->has = abap_true.
                  t290->value = t289.
                  t287 = t290.
                  DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t292.
                  DATA(t294) = VALUE string( ).
                  t294 = t261->value.
                  DATA(t296) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t296->has = abap_true.
                  t296->value = t294.
                  t292 = t296.
                  t284 = t285->get_object( i_type_9913 = t287 i_name = t292 ).
                  DATA t298 TYPE REF TO object.
                  CLEAR t298.
                  t298 = t284.
                  t283 ?= t298.
                  t282 = t283.
                  DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t299.
                  DATA(t300) = VALUE abap_bool( ).
                  t300 = xsdbool( t282 IS BOUND ).
                  IF t300 = abap_true.
                    DATA t302 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t302.
                    DATA t303 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t303.
                    DATA t304 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t304.
                    DATA t305 TYPE REF TO zcl_lnt_table.
                    CLEAR t305.
                    t305 = t282.
                    DATA t307 TYPE REF TO zif_lnt_registry.
                    CLEAR t307.
                    t307 = t253->reg.
                    DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t309.
                    DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t310.
                    t304 = t305->parse_type( i_reg_f149 = t307 i_data_element = t309 i_description = t310 ).
                    t303 = t304.
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
                    DATA(t316) = |type|.
                    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t317.
                    t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t316 p1 = t317 ).
                    DATA(t318) = |object|.
                    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t319.
                    IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t318 p1 = t319 ).
                    ENDIF.
                    t299 = t302.
                  ELSE.
                    DATA t321 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t321.
                    DATA t322 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t322.
                    DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t324.
                    DATA(t326) = VALUE string( ).
                    t326 = t261->value.
                    DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t328->has = abap_true.
                    t328->value = t326.
                    t324 = t328.
                    t322 = t253->lookup_ddls( i_name = t324 ).
                    t321 = t322.
                    DATA t330 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t330.
                    DATA(t331) = VALUE abap_bool( ).
                    t331 = xsdbool( t321 IS BOUND ).
                    IF t331 = abap_true.
                      t330 = t321.
                    ELSE.
                      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t336.
                      DATA(t339) = VALUE string( ).
                      t339 = t261->value.
                      DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t341->has = abap_true.
                      t341->value = t339.
                      t336 = t341.
                      DATA t343 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t343.
                      DATA(t344) = VALUE abap_bool( ).
                      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t345.
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
                      t344 = t349.
                      IF t344 = abap_true.
                        DATA t351 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t351.
                        DATA t352 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t352.
                        DATA t353 TYPE REF TO zcl_lnt_unknown_type.
                        CLEAR t353.
                        DATA(t354) = |undefined, lookupView|.
                        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t355.
                        t353 = NEW zcl_lnt_unknown_type( i_error = t354 i_qualified_name = t355 ).
                        t352 = t353.
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
                        DATA(t359) = |type|.
                        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t360.
                        t351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
                        t343 = t351.
                      ELSE.
                        DATA t362 TYPE REF TO zcl_lnt_table.
                        CLEAR t362.
                        DATA t363 TYPE REF TO zcl_lnt_table.
                        CLEAR t363.
                        DATA t364 TYPE REF TO zif_lnt_object.
                        CLEAR t364.
                        DATA t365 TYPE REF TO zif_lnt_registry.
                        CLEAR t365.
                        t365 = t253->reg.
                        DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t367.
                        DATA(t369) = |VIEW|.
                        DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t370->has = abap_true.
                        t370->value = t369.
                        t367 = t370.
                        DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t372.
                        DATA(t374) = VALUE string( ).
                        t374 = t336->value.
                        DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t376->has = abap_true.
                        t376->value = t374.
                        t372 = t376.
                        t364 = t365->get_object( i_type_9913 = t367 i_name = t372 ).
                        DATA t378 TYPE REF TO object.
                        CLEAR t378.
                        t378 = t364.
                        t363 ?= t378.
                        t362 = t363.
                        DATA t379 TYPE REF TO zcl_lnt_ilookup_result.
                        CLEAR t379.
                        DATA(t380) = VALUE abap_bool( ).
                        t380 = xsdbool( t362 IS BOUND ).
                        IF t380 = abap_true.
                          DATA t382 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t382.
                          DATA t383 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t383.
                          DATA t384 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t384.
                          DATA t385 TYPE REF TO zcl_lnt_table.
                          CLEAR t385.
                          t385 = t362.
                          DATA t387 TYPE REF TO zif_lnt_registry.
                          CLEAR t387.
                          t387 = t253->reg.
                          DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t389.
                          DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t390.
                          t384 = t385->parse_type( i_reg_f149 = t387 i_data_element = t389 i_description = t390 ).
                          t383 = t384.
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
                          DATA(t396) = |type|.
                          DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t397.
                          t382->zlnt_json_ownkeys_70e5fd461788->put( p0 = t396 p1 = t397 ).
                          DATA(t398) = |object|.
                          DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t399.
                          IF t382->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t382->zlnt_json_ownkeys_70e5fd461788->put( p0 = t398 p1 = t399 ).
                          ENDIF.
                          t379 = t382.
                        ELSE.
                          DATA t400 TYPE REF TO zcl_lnt_ilookup_result.
                          CLEAR t400.
                          DATA(t401) = VALUE abap_bool( ).
                          DATA t402 TYPE REF TO zif_lnt_registry.
                          CLEAR t402.
                          t402 = t253->reg.
                          DATA(t404) = VALUE string( ).
                          t404 = t336->value.
                          t401 = t402->in_error_namespace( i_name = t404 ).
                          IF t401 = abap_true.
                            DATA t406 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t406.
                            DATA t407 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t407.
                            DATA t408 TYPE REF TO zcl_lnt_unknown_type.
                            CLEAR t408.
                            DATA(t409) = VALUE string( ).
                            DATA(t410) = VALUE string( ).
                            t410 = t336->value.
                            DATA(t412) = | not found, lookupView|.
                            DATA(t413) = strlen( t410 ).
                            t409 = |{ t410 }{ t412 }|.
                            DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t414.
                            t408 = NEW zcl_lnt_unknown_type( i_error = t409 i_qualified_name = t414 ).
                            t407 = t408.
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
                            DATA(t418) = |type|.
                            DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t419.
                            t406->zlnt_json_ownkeys_70e5fd461788->put( p0 = t418 p1 = t419 ).
                            t400 = t406.
                          ELSE.
                            DATA t420 TYPE REF TO zcl_lnt_ilookup_result.
                            CLEAR t420.
                            DATA t421 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t421.
                            DATA t422 TYPE REF TO zcl_lnt_void_type.
                            CLEAR t422.
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
                            t422 = zcl_lnt_void_type=>get_db65( i_voided = t423 i_qualified_name = t429 ).
                            t421 = t422.
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
                            DATA(t433) = |type|.
                            DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t434.
                            t420->zlnt_json_ownkeys_70e5fd461788->put( p0 = t433 p1 = t434 ).
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
                t252 = t263.
                t251 = t252->zlnt_view_read_sr_9be58e2d4893( ).
                t250 = t251.
                DATA(t435) = t250.
                t202 = t250.
              ENDIF.
              DATA(t440) = VALUE abap_bool( ).
              t440 = xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_void_type ).
              IF t440 = abap_true.
                DATA(t442) = VALUE abap_bool( ).
                t442 = xsdbool( t9 = abap_true ).
                IF t442 = abap_true.
                  DATA t446 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t446.
                  DATA t447 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t447.
                  t447 ?= t202.
                  DATA t449 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t449.
                  DATA(t450) = VALUE abap_bool( ).
                  t450 = abap_true.
                  DATA(t452) = VALUE string( ).
                  t452 = |DEFAULT|.
                  DATA t454 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t454.
                  CLEAR t454.
                  DATA t456 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t456.
                  CLEAR t456.
                  t449 = NEW zcl_lnt_itable_options( i_with_header = t450 i_key_type = t452 i_primary_key = t454 i_secondary = t456 ).
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
                  DATA(t460) = |withHeader|.
                  DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t461.
                  t449->zlnt_json_ownkeys_70e5fd461788->put( p0 = t460 p1 = t461 ).
                  DATA(t462) = |keyType|.
                  DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t463.
                  IF t449->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t449->zlnt_json_ownkeys_70e5fd461788->put( p0 = t462 p1 = t463 ).
                  ENDIF.
                  DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t464.
                  DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t465.
                  t446 = NEW zcl_lnt_ty_table_type( i_row_type = t447 i_options = t449 i_qualified_name = t464 i_description = t465 ).
                  DATA t468 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t468.
                  DATA(t470) = VALUE string( ).
                  t470 = t2->filename.
                  DATA t473 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t473.
                  DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t474.
                  t468 = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t470 i_type_9913 = t446 i_meta = t473 i_value = t474 ).
                  result = t468.
                  RETURN.
                ELSE.
                  DATA t478 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t478.
                  DATA(t480) = VALUE string( ).
                  t480 = t2->filename.
                  DATA t482 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t482.
                  t482 ?= t202.
                  DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t484.
                  DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t485.
                  t478 = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t480 i_type_9913 = t482 i_meta = t484 i_value = t485 ).
                  result = t478.
                  RETURN.
                ENDIF.
              ENDIF.
              DATA(t487) = VALUE abap_bool( ).
              t487 = xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_unknown_type ).
              IF t487 = abap_true.
                DATA t491 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t491.
                DATA(t493) = VALUE string( ).
                t493 = t2->filename.
                DATA t495 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t495.
                DATA(t496) = VALUE string( ).
                DATA(t497) = |unknown type, |.
                DATA(t498) = VALUE string( ).
                DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t499.
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
                  DATA(t505) = VALUE string( ).
                  t505 = t499->value.
                  t501 = t505.
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
                t491 = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t493 i_type_9913 = t495 i_meta = t509 i_value = t510 ).
                result = t491.
                RETURN.
              ENDIF.
              DATA(t512) = VALUE abap_bool( ).
              DATA(t513) = VALUE abap_bool( ).
              t513 = xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_structure_type ).
              t512 = xsdbool( t513 = abap_false ).
              IF t512 = abap_true.
                DATA(t515) = VALUE string( ).
                DATA(t516) = VALUE string( ).
                DATA(t517) = |not structured, |.
                DATA(t518) = VALUE string( ).
                DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t519.
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
                  DATA(t525) = VALUE string( ).
                  t525 = t519->value.
                  t521 = t525.
                ENDIF.
                t518 = t521.
                DATA(t527) = strlen( t517 ).
                t516 = |{ t517 }{ t518 }|.
                t515 = t516.
                DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t528.
                t528 = t2->issues.
                DATA t530 TYPE REF TO zcl_lnt_issue.
                CLEAR t530.
                DATA t532 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t532.
                t532 = t1->get_first_token( ).
                DATA t535 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t535.
                t530 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t532 i_message_26cb = t515 i_fix = t535 ).
                t528->load( ).
                APPEND t530 TO t528->items.
                t528->save( ).
                DATA t538 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t538.
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
                t538 = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t540 i_type_9913 = t542 i_meta = t549 i_value = t550 ).
                result = t538.
                RETURN.
              ENDIF.
              DATA t552 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t552.
              DATA t554 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t554.
              t554 ?= t202.
              DATA t556 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t556.
              t556 = t554->components.
              t552 = t556.
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
    DATA(t569) = VALUE abap_bool( ).
    t569 = xsdbool( t9 = abap_true ).
    IF t569 = abap_true.
      DATA t573 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t574 TYPE REF TO zcl_lnt_structure_type.
      DATA t576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t574 = NEW zcl_lnt_structure_type( i_components = t11 i_qualified_name = t576 i_ddic_name = t577 i_description = t578 ).
      DATA t579 TYPE REF TO zcl_lnt_itable_options.
      DATA(t580) = VALUE abap_bool( ).
      t580 = abap_true.
      DATA(t582) = VALUE string( ).
      t582 = |DEFAULT|.
      DATA t584 TYPE REF TO zcl_lnt_itable_key.
      DATA t586 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t579 = NEW zcl_lnt_itable_options( i_with_header = t580 i_key_type = t582 i_primary_key = t584 i_secondary = t586 ).
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
      DATA(t590) = |withHeader|.
      DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t590 p1 = t591 ).
      DATA(t592) = |keyType|.
      DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t592 p1 = t593 ).
      ENDIF.
      DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t573 = NEW zcl_lnt_ty_table_type( i_row_type = t574 i_options = t579 i_qualified_name = t594 i_description = t595 ).
      DATA t598 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t600) = VALUE string( ).
      t600 = t2->filename.
      DATA t603 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t598 = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t600 i_type_9913 = t573 i_meta = t603 i_value = t604 ).
      result = t598.
      RETURN.
    ELSE.
      DATA t608 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t610) = VALUE string( ).
      t610 = t2->filename.
      DATA t612 TYPE REF TO zcl_lnt_structure_type.
      DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t612 = NEW zcl_lnt_structure_type( i_components = t11 i_qualified_name = t614 i_ddic_name = t615 i_description = t616 ).
      DATA t617 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t608 = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t610 i_type_9913 = t612 i_meta = t617 i_value = t618 ).
      result = t608.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d993_9fc769739916.
  ENDMETHOD.
ENDCLASS.
