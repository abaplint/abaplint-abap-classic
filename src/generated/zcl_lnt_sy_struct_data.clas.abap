* TS: src/abap/5_syntax/structures/data.ts:20:1 Data
CLASS zcl_lnt_sy_struct_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    CLASS-METHODS run_common_part_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_struct_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zif_lnt_union_1e9858bf.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t9 TYPE REF TO zif_lnt_node.
    DATA t10 TYPE REF TO zcl_lnt_abstract_node.
    t10 = t1.
    DATA t14 TYPE REF TO zif_lnt_node.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t10->children.
    DATA t17 TYPE REF TO object.
    t15->load( ).
    READ TABLE t15->items INDEX 1 INTO t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t18 ?= t17.
      DATA t19 TYPE REF TO object.
      t19 = t18->as_ref( ).
      t14 ?= t19.
    ELSE.
      t14 ?= t17.
    ENDIF.
    t9 = t14.
    t8 ?= t9.
    t7 = t8.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = xsdbool( t7 IS INITIAL ).
    IF t22 = abap_true.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zif_lnt_union_8249fcb1.
      t26 = t7.
      t25 = t26->get_children( ).
      t21 = t25.
    ENDIF.
    t5 = t21.
    DATA t28 TYPE REF TO zif_lnt_union_1e9858bf.
    DATA(t29) = xsdbool( t5 IS INITIAL ).
    IF t29 = abap_true.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_union_1e9858bf.
      DATA t33 TYPE REF TO zif_lnt_node.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t34 = t5.
      DATA t36 TYPE REF TO object.
      t34->load( ).
      READ TABLE t34->items INDEX 4 INTO t36.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t37 ?= t36.
        DATA t38 TYPE REF TO object.
        t38 = t37->as_ref( ).
        t33 ?= t38.
      ELSE.
        t33 ?= t36.
      ENDIF.
      t32 ?= t33.
      t28 = t32.
    ENDIF.
    t3 = t28.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = VALUE abap_bool( ).
    t41 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_token_node ).
    t40 = t41.
    IF t41 = abap_true.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = VALUE string( ).
      DATA t47 TYPE REF TO zcl_lnt_token_node.
      DATA t49 TYPE REF TO object.
      t49 = t3.
      t47 ?= t49.
      DATA(t50) = VALUE string( ).
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      t52 = t47->token.
      DATA(t54) = VALUE string( ).
      t54 = t52->str.
      t50 = t54.
      t45 = t50.
      DATA(t56) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      DATA(t57) = |COMMON|.
      t43 = xsdbool( t44 = t57 ).
      t40 = t43.
    ENDIF.
    t39 = t40.
    IF t39 = abap_true.
      zcl_lnt_sy_struct_data=>run_common_part_syntax( i_node = t1 i_input_967e = t2 ).
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t64 = t1->find_first_expression( i_type_9913 = t66 ).
    t62 = t64.
    DATA t67 TYPE REF TO zcl_lnt_abstract_token.
    DATA t68 TYPE REF TO zcl_lnt_abstract_token.
    t68 = t62->get_first_token( ).
    t67 = t68.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = VALUE f( ).
    DATA(t74) = VALUE f( ).
    t74 = t62->token_count.
    t71 = t74.
    DATA(t76) = CONV f( 1 ).
    t70 = xsdbool( t71 > t76 ).
    IF t70 = abap_true.
      DATA t77 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t78 TYPE REF TO zcl_lnt_position.
      DATA t81 TYPE REF TO zcl_lnt_position.
      t81 = t67->start.
      t78 = t81.
      DATA(t83) = VALUE string( ).
      t83 = t62->concat_tokens( ).
      t77 = NEW zcl_lnt_lx_identifier( i_start = t78 i_str = t83 ).
      t67 = t77.
    ENDIF.
    DATA(t85) = VALUE abap_bool( ).
    t85 = abap_false.
    DATA t87 TYPE REF TO zlnt_runtime_map__a1006b231250.
    t87 = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t92 = t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zcl_lnt_abstract_node.
    t96 = t1.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t98 = t96->children.
    t95 = t98.
    t94 ?= t95.
    DATA t100 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t101 TYPE REF TO object.
    DATA(t102) = VALUE i( ).
    DO.
      t94->load( ).
      IF t102 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t101.
      READ TABLE t94->items INDEX t102 + 1 INTO t101.
      t102 = t102 + 1.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      CLEAR t100.
      IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t103 ?= t101.
        DATA t104 TYPE REF TO object.
        CLEAR t104.
        t104 = t103->as_ref( ).
        t100 ?= t104.
      ELSE.
        t100 ?= t101.
      ENDIF.
      DATA t105 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t105.
      DATA t106 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t106.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      t107 = t100->get_db65( ).
      DATA t109 TYPE REF TO object.
      CLEAR t109.
      t109 = t107.
      t106 ?= t109.
      t105 = t106.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = VALUE abap_bool( ).
      t111 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_statement_node ).
      t110 = t111.
      IF t111 = abap_true.
        DATA(t113) = VALUE abap_bool( ).
        t113 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_st_data ).
        t110 = t113.
      ENDIF.
      IF t110 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t116.
        DATA(t117) = NEW zcl_lnt_sy_statem_data( ).
        DATA t118 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t118.
        DATA t120 TYPE REF TO object.
        CLEAR t120.
        t120 = t100.
        t118 ?= t120.
        t116 = t117->run_syntax( i_node = t118 i_input_967e = t2 ).
        t115 = t116.
        DATA(t122) = VALUE abap_bool( ).
        t122 = xsdbool( t115 IS BOUND ).
        IF t122 = abap_true.
          DATA t125 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t125.
          DATA(t126) = VALUE string( ).
          DATA(t127) = VALUE string( ).
          DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t128.
          t128 = t115.
          DATA(t131) = VALUE string( ).
          DATA(t132) = VALUE string( ).
          DATA(t133) = VALUE string( ).
          DATA t135 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t135.
          t135 = t128->token.
          DATA(t137) = VALUE string( ).
          t137 = t135->str.
          t133 = t137.
          t132 = t133.
          DATA(t139) = VALUE abap_bool( ).
          DATA(t140) = VALUE string( ).
          DATA(t141) = t132.
          DATA(t142) = 0.
          DATA(t143) = 1.
          DATA(t144) = strlen( t141 ).
          IF t142 < 0.
            t142 = t142 + t144.
            IF t142 < 0.
              t142 = 0.
            ENDIF.
          ENDIF.
          IF t142 > t144 OR t143 <= 0.
            CLEAR t140.
          ELSE.
            IF t143 > t144 - t142.
              t143 = t144 - t142.
            ENDIF.
            t140 = t141+t142(t143).
          ENDIF.
          DATA(t145) = |!|.
          t139 = xsdbool( t140 = t145 ).
          IF t139 = abap_true.
            DATA(t146) = VALUE string( ).
            DATA(t147) = VALUE string( ).
            t147 = t132.
            DATA(t149) = VALUE string( ).
            DATA(t151) = 1.
            DATA(t152) = VALUE i( ).
            t152 = strlen( t147 ).
            DATA(t155) = strlen( t147 ).
            IF t151 < 0.
              t151 = t151 + t155.
              IF t151 < 0.
                t151 = 0.
              ENDIF.
            ENDIF.
            IF t151 > t155 OR t152 <= 0.
              CLEAR t149.
            ELSE.
              IF t152 > t155 - t151.
                t152 = t155 - t151.
              ENDIF.
              t149 = t147+t151(t152).
            ENDIF.
            t146 = t149.
            t132 = t146.
          ENDIF.
          t131 = t132.
          t127 = t131.
          t126 = t127.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t157.
          DATA t162 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t162.
          t162 = t115->type_cba0.
          t157 = t162.
          DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t164.
          CLEAR t164.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          CLEAR t166.
          t125 = NEW zcl_lnt_istructure_component( i_name = t126 i_type_9913 = t157 i_as_include = t164 i_suffix = t166 ).
          CREATE OBJECT t125->zlnt_view_ownkeys_b0e8086400eb.
          t125->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t168 ).
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t125->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t169 ).
          ENDIF.
          CREATE OBJECT t125->zlnt_json_ownkeys_70e5fd461788.
          t125->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t170) = |name|.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          t125->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
          DATA(t172) = |type|.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t125->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t125->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
          ENDIF.
          t92->load( ).
          APPEND t125 TO t92->items.
          t92->save( ).
          DATA(t174) = VALUE abap_bool( ).
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          t180 = t115->value.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          CLEAR t182.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = xsdbool( t180 IS INITIAL ).
          t184 = xsdbool( t185 = abap_false ).
          t174 = t184.
          IF t174 = abap_true.
            DATA t187 TYPE REF TO zlnt_runtime_map__a1006b231250.
            CLEAR t187.
            DATA(t189) = VALUE string( ).
            DATA t190 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t190.
            t190 = t115.
            DATA(t193) = VALUE string( ).
            DATA(t194) = VALUE string( ).
            DATA(t195) = VALUE string( ).
            DATA t197 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t197.
            t197 = t190->token.
            DATA(t199) = VALUE string( ).
            t199 = t197->str.
            t195 = t199.
            t194 = t195.
            DATA(t201) = VALUE abap_bool( ).
            DATA(t202) = VALUE string( ).
            DATA(t203) = t194.
            DATA(t204) = 0.
            DATA(t205) = 1.
            DATA(t206) = strlen( t203 ).
            IF t204 < 0.
              t204 = t204 + t206.
              IF t204 < 0.
                t204 = 0.
              ENDIF.
            ENDIF.
            IF t204 > t206 OR t205 <= 0.
              CLEAR t202.
            ELSE.
              IF t205 > t206 - t204.
                t205 = t206 - t204.
              ENDIF.
              t202 = t203+t204(t205).
            ENDIF.
            DATA(t207) = |!|.
            t201 = xsdbool( t202 = t207 ).
            IF t201 = abap_true.
              DATA(t208) = VALUE string( ).
              DATA(t209) = VALUE string( ).
              t209 = t194.
              DATA(t211) = VALUE string( ).
              DATA(t213) = 1.
              DATA(t214) = VALUE i( ).
              t214 = strlen( t209 ).
              DATA(t217) = strlen( t209 ).
              IF t213 < 0.
                t213 = t213 + t217.
                IF t213 < 0.
                  t213 = 0.
                ENDIF.
              ENDIF.
              IF t213 > t217 OR t214 <= 0.
                CLEAR t211.
              ELSE.
                IF t214 > t217 - t213.
                  t214 = t217 - t213.
                ENDIF.
                t211 = t209+t213(t214).
              ENDIF.
              t208 = t211.
              t194 = t208.
            ENDIF.
            t193 = t194.
            t189 = t193.
            DATA(t219) = VALUE string( ).
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t224.
            t224 = t115->value.
            t220 = t224.
            t219 = t220->as_string( ).
            t187 = t87->set( p0 = t189 p1 = t219 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t226) = VALUE abap_bool( ).
        DATA(t227) = VALUE abap_bool( ).
        t227 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_structure_node ).
        t226 = t227.
        IF t227 = abap_true.
          DATA(t229) = VALUE abap_bool( ).
          t229 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_sr_data ).
          t226 = t229.
        ENDIF.
        IF t226 = abap_true.
          DATA t231 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t231.
          DATA t232 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t232.
          DATA t233 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t233.
          DATA t235 TYPE REF TO object.
          CLEAR t235.
          t235 = t100.
          t233 ?= t235.
          t232 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t233 i_input_967e = t2 ).
          t231 = t232.
          DATA(t237) = VALUE abap_bool( ).
          t237 = xsdbool( t231 IS BOUND ).
          IF t237 = abap_true.
            DATA t240 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t240.
            DATA(t241) = VALUE string( ).
            DATA(t242) = VALUE string( ).
            DATA t243 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t243.
            t243 = t231.
            DATA(t246) = VALUE string( ).
            DATA(t247) = VALUE string( ).
            DATA(t248) = VALUE string( ).
            DATA t250 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t250.
            t250 = t243->token.
            DATA(t252) = VALUE string( ).
            t252 = t250->str.
            t248 = t252.
            t247 = t248.
            DATA(t254) = VALUE abap_bool( ).
            DATA(t255) = VALUE string( ).
            DATA(t256) = t247.
            DATA(t257) = 0.
            DATA(t258) = 1.
            DATA(t259) = strlen( t256 ).
            IF t257 < 0.
              t257 = t257 + t259.
              IF t257 < 0.
                t257 = 0.
              ENDIF.
            ENDIF.
            IF t257 > t259 OR t258 <= 0.
              CLEAR t255.
            ELSE.
              IF t258 > t259 - t257.
                t258 = t259 - t257.
              ENDIF.
              t255 = t256+t257(t258).
            ENDIF.
            DATA(t260) = |!|.
            t254 = xsdbool( t255 = t260 ).
            IF t254 = abap_true.
              DATA(t261) = VALUE string( ).
              DATA(t262) = VALUE string( ).
              t262 = t247.
              DATA(t264) = VALUE string( ).
              DATA(t266) = 1.
              DATA(t267) = VALUE i( ).
              t267 = strlen( t262 ).
              DATA(t270) = strlen( t262 ).
              IF t266 < 0.
                t266 = t266 + t270.
                IF t266 < 0.
                  t266 = 0.
                ENDIF.
              ENDIF.
              IF t266 > t270 OR t267 <= 0.
                CLEAR t264.
              ELSE.
                IF t267 > t270 - t266.
                  t267 = t270 - t266.
                ENDIF.
                t264 = t262+t266(t267).
              ENDIF.
              t261 = t264.
              t247 = t261.
            ENDIF.
            t246 = t247.
            t242 = t246.
            t241 = t242.
            DATA t272 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t272.
            DATA t277 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t277.
            t277 = t231->type_cba0.
            t272 = t277.
            DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t279.
            CLEAR t279.
            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t281.
            CLEAR t281.
            t240 = NEW zcl_lnt_istructure_component( i_name = t241 i_type_9913 = t272 i_as_include = t279 i_suffix = t281 ).
            CREATE OBJECT t240->zlnt_view_ownkeys_b0e8086400eb.
            t240->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t283.
            t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t283 ).
            DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t284.
            IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t284 ).
            ENDIF.
            CREATE OBJECT t240->zlnt_json_ownkeys_70e5fd461788.
            t240->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t285) = |name|.
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
            DATA(t287) = |type|.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
            ENDIF.
            t92->load( ).
            APPEND t240 TO t92->items.
            t92->save( ).
          ENDIF.
        ELSE.
          DATA(t289) = VALUE abap_bool( ).
          DATA(t290) = VALUE abap_bool( ).
          t290 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_statement_node ).
          t289 = t290.
          IF t290 = abap_true.
            DATA(t292) = VALUE abap_bool( ).
            t292 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_data_begin ).
            t289 = t292.
          ENDIF.
          IF t289 = abap_true.
            DATA(t294) = VALUE abap_bool( ).
            DATA t295 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t295.
            DATA t296 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t296.
            DATA t298 TYPE REF TO object.
            CLEAR t298.
            t298 = t100.
            t296 ?= t298.
            DATA(t299) = |OCCURS|.
            t295 = t296->find_direct_token_by_text( i_text = t299 ).
            t294 = xsdbool( t295 IS BOUND ).
            IF t294 = abap_true.
              t85 = abap_true.
            ENDIF.
          ELSE.
            DATA(t301) = VALUE abap_bool( ).
            DATA(t302) = VALUE abap_bool( ).
            t302 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_statement_node ).
            t301 = t302.
            IF t302 = abap_true.
              DATA(t304) = VALUE abap_bool( ).
              t304 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_st_include_type ).
              t301 = t304.
            ENDIF.
            IF t301 = abap_true.
              DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t306.
              DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t307.
              DATA(t308) = NEW zcl_lnt_sy_include_type( ).
              DATA t309 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t309.
              DATA t311 TYPE REF TO object.
              CLEAR t311.
              t311 = t100.
              t309 ?= t311.
              t307 = t308->run_syntax( i_node = t309 i_input_967e = t2 ).
              t306 = t307.
              DATA(t313) = VALUE abap_bool( ).
              IF t306 IS BOUND AND t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t313 = xsdbool( t306->oval IS INSTANCE OF zcl_lnt_void_type ).
              ENDIF.
              IF t313 = abap_true.
                DATA(t315) = VALUE abap_bool( ).
                t315 = xsdbool( t85 = abap_true ).
                IF t315 = abap_true.
                  DATA t319 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t319.
                  DATA t320 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t320.
                  CLEAR t320.
                  IF t306 IS BOUND.
                    IF t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t320 ?= t306->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t320 IS NOT BOUND.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                    ENDIF.
                  ENDIF.
                  DATA t322 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t322.
                  DATA(t323) = VALUE abap_bool( ).
                  t323 = abap_true.
                  DATA(t325) = VALUE string( ).
                  t325 = |DEFAULT|.
                  DATA t327 TYPE REF TO zcl_lnt_itable_key.
                  CLEAR t327.
                  CLEAR t327.
                  DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t329.
                  CLEAR t329.
                  t322 = NEW zcl_lnt_itable_options( i_with_header = t323 i_key_type = t325 i_primary_key = t327 i_secondary = t329 ).
                  CREATE OBJECT t322->zlnt_view_ownkeys_b0e8086400eb.
                  t322->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t331.
                  t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t331 ).
                  DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t332.
                  IF t322->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t322->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t332 ).
                  ENDIF.
                  CREATE OBJECT t322->zlnt_json_ownkeys_70e5fd461788.
                  t322->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t333) = |withHeader|.
                  DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t334.
                  t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t333 p1 = t334 ).
                  DATA(t335) = |keyType|.
                  DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t336.
                  IF t322->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t322->zlnt_json_ownkeys_70e5fd461788->put( p0 = t335 p1 = t336 ).
                  ENDIF.
                  DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t337.
                  DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t338.
                  t319 = NEW zcl_lnt_ty_table_type( i_row_type = t320 i_options = t322 i_qualified_name = t337 i_description = t338 ).
                  DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t341.
                  DATA(t343) = VALUE string( ).
                  t343 = t2->filename.
                  DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t346.
                  DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t347.
                  t341 = NEW zcl_lnt_typed_identifier( i_token = t67 i_filename = t343 i_type_9913 = t319 i_meta = t346 i_value = t347 ).
                  result = t341.
                  RETURN.
                ELSE.
                  DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t351.
                  DATA(t353) = VALUE string( ).
                  t353 = t2->filename.
                  DATA t355 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t355.
                  CLEAR t355.
                  IF t306 IS BOUND.
                    IF t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t355 ?= t306->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t355 IS NOT BOUND.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                    ENDIF.
                  ENDIF.
                  DATA t357 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t357.
                  DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t358.
                  t351 = NEW zcl_lnt_typed_identifier( i_token = t67 i_filename = t353 i_type_9913 = t355 i_meta = t357 i_value = t358 ).
                  result = t351.
                  RETURN.
                ENDIF.
              ELSE.
                DATA(t360) = VALUE abap_bool( ).
                IF t306 IS BOUND AND t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t360 = xsdbool( t306->oval IS INSTANCE OF zcl_lnt_unknown_type ).
                ENDIF.
                IF t360 = abap_true.
                  DATA t364 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t364.
                  DATA(t366) = VALUE string( ).
                  t366 = t2->filename.
                  DATA t368 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t368.
                  CLEAR t368.
                  IF t306 IS BOUND.
                    IF t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t368 ?= t306->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t368 IS NOT BOUND.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                    ENDIF.
                  ENDIF.
                  DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t370.
                  DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t371.
                  t364 = NEW zcl_lnt_typed_identifier( i_token = t67 i_filename = t366 i_type_9913 = t368 i_meta = t370 i_value = t371 ).
                  result = t364.
                  RETURN.
                ENDIF.
              ENDIF.
              DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t373.
              CLEAR t373.
              IF t306 IS BOUND.
                IF t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t373 ?= t306->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
                  ENDTRY.
                ELSEIF t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
                  CREATE OBJECT t373.
                  t373->source = t306.
                ELSE.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
                ENDIF.
                t373->load( ).
                DATA t375 TYPE REF TO object.
                CLEAR t375.
                DATA t376 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t376.
                LOOP AT t373->items INTO t375.
                  DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t377.
                  CLEAR t376.
                  IF t375 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t377 ?= t375.
                    CLEAR t376.
                    IF t377 IS BOUND.
                      IF t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t376 ?= t377->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t376 IS NOT BOUND.
                        IF t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t377->tag <>
                        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                          DATA t378 TYPE REF TO zlnt_view_storage_74017ca272ac.
                          CLEAR t378.
                          IF t377->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                          ENDIF.
                          TRY.
                              t378 ?= t377->oval.
                            CATCH cx_sy_move_cast_error.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                          ENDTRY.
                          IF t378->structural( ) <> abap_true.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                          ENDIF.
                        ENDIF.
                        DATA(t379) = VALUE string( ).
                        DATA t380 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t380.
                        DATA t381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t381.
                        DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t382.
                        t376 = NEW zcl_lnt_istructure_component( view_source = t377 i_name = t379 i_type_9913 = t380 i_as_include = t381 i_suffix = t382 ).
                      ENDIF.
                    ENDIF.
                  ELSE.
                    t376 ?= t375.
                  ENDIF.
                ENDLOOP.
              ENDIF.
              DATA t383 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t383.
              DATA t384 TYPE REF TO object.
              CLEAR t384.
              DATA(t385) = VALUE i( ).
              DO.
                t373->load( ).
                IF t385 >= lines( t373->items ).
                  EXIT.
                ENDIF.
                CLEAR t384.
                READ TABLE t373->items INDEX t385 + 1 INTO t384.
                t385 = t385 + 1.
                DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t386.
                CLEAR t383.
                IF t384 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t386 ?= t384.
                  CLEAR t383.
                  IF t386 IS BOUND.
                    IF t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t383 ?= t386->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t383 IS NOT BOUND.
                      IF t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t386->tag <>
                      zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                        DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t387.
                        IF t386->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t387 ?= t386->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t387->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t388) = VALUE string( ).
                      DATA t389 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t389.
                      DATA t390 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t390.
                      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t391.
                      t383 = NEW zcl_lnt_istructure_component( view_source = t386 i_name = t388 i_type_9913 = t389 i_as_include = t390 i_suffix = t391 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  t383 ?= t384.
                ENDIF.
                t92->load( ).
                APPEND t383 TO t92->items.
                t92->save( ).
              ENDDO.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t394) = VALUE abap_bool( ).
    t394 = xsdbool( t85 = abap_true ).
    IF t394 = abap_true.
      DATA t399 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t401) = VALUE string( ).
      t401 = t2->filename.
      DATA t403 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t404 TYPE REF TO zcl_lnt_structure_type.
      DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t404 = NEW zcl_lnt_structure_type( i_components = t92 i_qualified_name = t406 i_ddic_name = t407 i_description = t408 ).
      DATA t409 TYPE REF TO zcl_lnt_itable_options.
      DATA(t410) = VALUE abap_bool( ).
      t410 = abap_true.
      DATA(t412) = VALUE string( ).
      t412 = |DEFAULT|.
      DATA t414 TYPE REF TO zcl_lnt_itable_key.
      DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t409 = NEW zcl_lnt_itable_options( i_with_header = t410 i_key_type = t412 i_primary_key = t414 i_secondary = t416 ).
      CREATE OBJECT t409->zlnt_view_ownkeys_b0e8086400eb.
      t409->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t409->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t418 ).
      DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t409->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t409->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t419 ).
      ENDIF.
      CREATE OBJECT t409->zlnt_json_ownkeys_70e5fd461788.
      t409->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t420) = |withHeader|.
      DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t409->zlnt_json_ownkeys_70e5fd461788->put( p0 = t420 p1 = t421 ).
      DATA(t422) = |keyType|.
      DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t409->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t409->zlnt_json_ownkeys_70e5fd461788->put( p0 = t422 p1 = t423 ).
      ENDIF.
      DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t403 = NEW zcl_lnt_ty_table_type( i_row_type = t404 i_options = t409 i_qualified_name = t424 i_description = t425 ).
      DATA t426 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t399 = NEW zcl_lnt_typed_identifier( i_token = t67 i_filename = t401 i_type_9913 = t403 i_meta = t426 i_value = t427 ).
      result = t399.
      RETURN.
    ELSE.
      DATA t429 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA t430 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = VALUE i( ).
      DATA t433 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t433 = t87->keys( ).
      t433->load( ).
      t432 = lines( t433->items ).
      DATA(t435) = 0.
      t431 = xsdbool( t432 > t435 ).
      IF t431 = abap_true.
        t430 = t87.
      ELSE.
        CLEAR t430.
      ENDIF.
      t429 = t430.
      DATA t443 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t445) = VALUE string( ).
      t445 = t2->filename.
      DATA t447 TYPE REF TO zcl_lnt_structure_type.
      DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t447 = NEW zcl_lnt_structure_type( i_components = t92 i_qualified_name = t449 i_ddic_name = t450 i_description = t451 ).
      DATA t452 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t429 IS BOUND.
        IF t429 IS BOUND.
          DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t458 TYPE REF TO object.
          t458 = t429.
          TRY.
              t455 ?= t458.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t455 IS NOT BOUND.
            TRY.
                t457 ?= t429.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t457 IS BOUND.
              t455 = t457->source( ).
            ENDIF.
            IF t455 IS NOT BOUND.
              CREATE OBJECT t455.
              t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t455->oval = t429.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      t453 = t455.
      t443 = NEW zcl_lnt_typed_identifier( i_token = t67 i_filename = t445 i_type_9913 = t447 i_meta = t452 i_value = t453 ).
      result = t443.

    ENDIF.
  ENDMETHOD.

  METHOD run_common_part_syntax.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_node.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t15 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t16 TYPE REF TO object.
      t16 = t9->get_db65( ).
      DATA t18 TYPE REF TO object.
      t18 = t16.
      t15 ?= t18.
      t14 = t15.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_statement_node ).
      t19 = t20.
      IF t20 = abap_true.
        DATA t22 TYPE abap_bool.
        t22 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_data ).
        t19 = t22.
      ENDIF.
      IF t19 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t26) = NEW zcl_lnt_sy_statem_data( ).
        DATA t27 TYPE REF TO zcl_lnt_statement_node.
        DATA t29 TYPE REF TO object.
        t29 = t9.
        t27 ?= t29.
        t25 = t26->run_syntax( i_node = t27 i_input_967e = t2 ).
        t24 = t25.
        DATA t31 TYPE abap_bool.
        t31 = xsdbool( t24 IS BOUND ).
        IF t31 = abap_true.
          DATA t34 TYPE REF TO zcl_lnt_current_scope.
          t34 = t2->scope.
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t36.
          t36 = t24.
          DATA(t42) = VALUE abap_bool( ).
          DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t45.
          t42 = xsdbool( t36 IS INITIAL ).
          IF t42 = abap_true.
          ELSE.
            DATA(t50) = VALUE string( ).
            DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
            t51 = t36.
            DATA(t54) = VALUE string( ).
            DATA t55 TYPE string.
            DATA t58 TYPE REF TO zcl_lnt_abstract_token.
            t58 = t51->token.
            DATA t60 TYPE string.
            t60 = t58->str.
            t55 = t60.
            DATA(t62) = VALUE abap_bool( ).
            DATA(t63) = VALUE string( ).
            DATA(t64) = t55.
            DATA(t65) = 0.
            DATA(t66) = 1.
            DATA(t67) = strlen( t64 ).
            IF t65 < 0.
              t65 = t65 + t67.
              IF t65 < 0.
                t65 = 0.
              ENDIF.
            ENDIF.
            IF t65 > t67 OR t66 <= 0.
              CLEAR t63.
            ELSE.
              IF t66 > t67 - t65.
                t66 = t67 - t65.
              ENDIF.
              t63 = t64+t65(t66).
            ENDIF.
            DATA(t68) = |!|.
            t62 = xsdbool( t63 = t68 ).
            IF t62 = abap_true.
              DATA(t69) = VALUE string( ).
              DATA t70 TYPE string.
              t70 = t55.
              DATA(t72) = VALUE string( ).
              DATA(t74) = 1.
              DATA t75 TYPE i.
              t75 = strlen( t70 ).
              DATA(t78) = strlen( t70 ).
              IF t74 < 0.
                t74 = t74 + t78.
                IF t74 < 0.
                  t74 = 0.
                ENDIF.
              ENDIF.
              IF t74 > t78 OR t75 <= 0.
                CLEAR t72.
              ELSE.
                IF t75 > t78 - t74.
                  t75 = t78 - t74.
                ENDIF.
                t72 = t70+t74(t75).
              ENDIF.
              t69 = t72.
              t55 = t69.
            ENDIF.
            t54 = t55.
            t50 = t54.
            DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
            t80 = t36.
            t34->add_named_identifier( i_name = t50 i_identifier = t80 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA t82 TYPE abap_bool.
        DATA t83 TYPE abap_bool.
        t83 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_structure_node ).
        t82 = t83.
        IF t83 = abap_true.
          DATA t85 TYPE abap_bool.
          t85 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_sr_data ).
          t82 = t85.
        ENDIF.
        IF t82 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t88 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t89 TYPE REF TO zcl_lnt_structure_node.
          DATA t91 TYPE REF TO object.
          t91 = t9.
          t89 ?= t91.
          t88 = zcl_lnt_sy_struct_data=>run_syntax( i_node = t89 i_input_967e = t2 ).
          t87 = t88.
          DATA t93 TYPE abap_bool.
          t93 = xsdbool( t87 IS BOUND ).
          IF t93 = abap_true.
            DATA t96 TYPE REF TO zcl_lnt_current_scope.
            t96 = t2->scope.
            DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t98.
            t98 = t87.
            DATA(t104) = VALUE abap_bool( ).
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            t104 = xsdbool( t98 IS INITIAL ).
            IF t104 = abap_true.
            ELSE.
              DATA(t112) = VALUE string( ).
              DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
              t113 = t98.
              DATA(t116) = VALUE string( ).
              DATA t117 TYPE string.
              DATA t120 TYPE REF TO zcl_lnt_abstract_token.
              t120 = t113->token.
              DATA t122 TYPE string.
              t122 = t120->str.
              t117 = t122.
              DATA(t124) = VALUE abap_bool( ).
              DATA(t125) = VALUE string( ).
              DATA(t126) = t117.
              DATA(t127) = 0.
              DATA(t128) = 1.
              DATA(t129) = strlen( t126 ).
              IF t127 < 0.
                t127 = t127 + t129.
                IF t127 < 0.
                  t127 = 0.
                ENDIF.
              ENDIF.
              IF t127 > t129 OR t128 <= 0.
                CLEAR t125.
              ELSE.
                IF t128 > t129 - t127.
                  t128 = t129 - t127.
                ENDIF.
                t125 = t126+t127(t128).
              ENDIF.
              DATA(t130) = |!|.
              t124 = xsdbool( t125 = t130 ).
              IF t124 = abap_true.
                DATA(t131) = VALUE string( ).
                DATA t132 TYPE string.
                t132 = t117.
                DATA(t134) = VALUE string( ).
                DATA(t136) = 1.
                DATA t137 TYPE i.
                t137 = strlen( t132 ).
                DATA(t140) = strlen( t132 ).
                IF t136 < 0.
                  t136 = t136 + t140.
                  IF t136 < 0.
                    t136 = 0.
                  ENDIF.
                ENDIF.
                IF t136 > t140 OR t137 <= 0.
                  CLEAR t134.
                ELSE.
                  IF t137 > t140 - t136.
                    t137 = t140 - t136.
                  ENDIF.
                  t134 = t132+t136(t137).
                ENDIF.
                t131 = t134.
                t117 = t131.
              ENDIF.
              t116 = t117.
              t112 = t116.
              DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
              t142 = t98.
              t96->add_named_identifier( i_name = t112 i_identifier = t142 ).
            ENDIF.
          ENDIF.
        ELSE.
          DATA t144 TYPE abap_bool.
          DATA t145 TYPE abap_bool.
          t145 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_statement_node ).
          t144 = t145.
          IF t145 = abap_true.
            DATA t147 TYPE abap_bool.
            t147 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_statem_type ).
            t144 = t147.
          ENDIF.
          IF t144 = abap_true.
            DATA t149 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t151) = NEW zcl_lnt_sy_type( ).
            DATA t152 TYPE REF TO zcl_lnt_statement_node.
            DATA t154 TYPE REF TO object.
            t154 = t9.
            t152 ?= t154.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            t150 = t151->run_syntax( i_node = t152 i_input_967e = t2 i_qualified_name_prefix = t156 ).
            t149 = t150.
            DATA t157 TYPE abap_bool.
            t157 = xsdbool( t149 IS BOUND ).
            IF t157 = abap_true.
              DATA t160 TYPE REF TO zcl_lnt_current_scope.
              t160 = t2->scope.
              DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t162.
              t162 = t149.
              DATA(t168) = VALUE abap_bool( ).
              DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t171.
              t168 = xsdbool( t162 IS INITIAL ).
              IF t168 = abap_true.
              ELSE.
                DATA(t176) = VALUE string( ).
                DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
                t177 = t162.
                DATA(t180) = VALUE string( ).
                DATA t181 TYPE string.
                DATA t184 TYPE REF TO zcl_lnt_abstract_token.
                t184 = t177->token.
                DATA t186 TYPE string.
                t186 = t184->str.
                t181 = t186.
                DATA(t188) = VALUE abap_bool( ).
                DATA(t189) = VALUE string( ).
                DATA(t190) = t181.
                DATA(t191) = 0.
                DATA(t192) = 1.
                DATA(t193) = strlen( t190 ).
                IF t191 < 0.
                  t191 = t191 + t193.
                  IF t191 < 0.
                    t191 = 0.
                  ENDIF.
                ENDIF.
                IF t191 > t193 OR t192 <= 0.
                  CLEAR t189.
                ELSE.
                  IF t192 > t193 - t191.
                    t192 = t193 - t191.
                  ENDIF.
                  t189 = t190+t191(t192).
                ENDIF.
                DATA(t194) = |!|.
                t188 = xsdbool( t189 = t194 ).
                IF t188 = abap_true.
                  DATA(t195) = VALUE string( ).
                  DATA t196 TYPE string.
                  t196 = t181.
                  DATA(t198) = VALUE string( ).
                  DATA(t200) = 1.
                  DATA t201 TYPE i.
                  t201 = strlen( t196 ).
                  DATA(t204) = strlen( t196 ).
                  IF t200 < 0.
                    t200 = t200 + t204.
                    IF t200 < 0.
                      t200 = 0.
                    ENDIF.
                  ENDIF.
                  IF t200 > t204 OR t201 <= 0.
                    CLEAR t198.
                  ELSE.
                    IF t201 > t204 - t200.
                      t201 = t204 - t200.
                    ENDIF.
                    t198 = t196+t200(t201).
                  ENDIF.
                  t195 = t198.
                  t181 = t195.
                ENDIF.
                t180 = t181.
                t176 = t180.
                DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t206.
                t206 = t162.
                t160->add_type_named( i_name = t176 i_type_9913 = t206 ).
              ENDIF.
            ENDIF.
          ELSE.
            DATA t211 TYPE abap_bool.
            DATA t212 TYPE abap_bool.
            t212 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_structure_node ).
            t211 = t212.
            IF t212 = abap_true.
              DATA t214 TYPE abap_bool.
              t214 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_sr_types ).
              t211 = t214.
            ENDIF.
            IF t211 = abap_true.
              DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t218) = NEW zcl_lnt_sy_types( ).
              DATA t219 TYPE REF TO zcl_lnt_structure_node.
              DATA t221 TYPE REF TO object.
              t221 = t9.
              t219 ?= t221.
              DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t223.
              t217 = t218->run_syntax( i_node = t219 i_input_967e = t2 i_qualified_name_prefix = t223 ).
              t216 = t217.
              DATA t224 TYPE abap_bool.
              t224 = xsdbool( t216 IS BOUND ).
              IF t224 = abap_true.
                DATA t227 TYPE REF TO zcl_lnt_current_scope.
                t227 = t2->scope.
                DATA t229 TYPE REF TO zcl_lnt_typed_identifier.
                CLEAR t229.
                t229 = t216.
                DATA(t235) = VALUE abap_bool( ).
                DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t238.
                t235 = xsdbool( t229 IS INITIAL ).
                IF t235 = abap_true.
                ELSE.
                  DATA(t243) = VALUE string( ).
                  DATA t244 TYPE REF TO zcl_lnt_fi_identifier.
                  t244 = t229.
                  DATA(t247) = VALUE string( ).
                  DATA t248 TYPE string.
                  DATA t251 TYPE REF TO zcl_lnt_abstract_token.
                  t251 = t244->token.
                  DATA t253 TYPE string.
                  t253 = t251->str.
                  t248 = t253.
                  DATA(t255) = VALUE abap_bool( ).
                  DATA(t256) = VALUE string( ).
                  DATA(t257) = t248.
                  DATA(t258) = 0.
                  DATA(t259) = 1.
                  DATA(t260) = strlen( t257 ).
                  IF t258 < 0.
                    t258 = t258 + t260.
                    IF t258 < 0.
                      t258 = 0.
                    ENDIF.
                  ENDIF.
                  IF t258 > t260 OR t259 <= 0.
                    CLEAR t256.
                  ELSE.
                    IF t259 > t260 - t258.
                      t259 = t260 - t258.
                    ENDIF.
                    t256 = t257+t258(t259).
                  ENDIF.
                  DATA(t261) = |!|.
                  t255 = xsdbool( t256 = t261 ).
                  IF t255 = abap_true.
                    DATA(t262) = VALUE string( ).
                    DATA t263 TYPE string.
                    t263 = t248.
                    DATA(t265) = VALUE string( ).
                    DATA(t267) = 1.
                    DATA t268 TYPE i.
                    t268 = strlen( t263 ).
                    DATA(t271) = strlen( t263 ).
                    IF t267 < 0.
                      t267 = t267 + t271.
                      IF t267 < 0.
                        t267 = 0.
                      ENDIF.
                    ENDIF.
                    IF t267 > t271 OR t268 <= 0.
                      CLEAR t265.
                    ELSE.
                      IF t268 > t271 - t267.
                        t268 = t271 - t267.
                      ENDIF.
                      t265 = t263+t267(t268).
                    ENDIF.
                    t262 = t265.
                    t248 = t262.
                  ENDIF.
                  t247 = t248.
                  t243 = t247.
                  DATA t273 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t273.
                  t273 = t229.
                  t227->add_type_named( i_name = t243 i_type_9913 = t273 ).
                ENDIF.
              ENDIF.
            ELSE.
              DATA t278 TYPE abap_bool.
              DATA t279 TYPE abap_bool.
              t279 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_statement_node ).
              t278 = t279.
              IF t279 = abap_true.
                DATA t281 TYPE abap_bool.
                t281 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_statem_constant ).
                t278 = t281.
              ENDIF.
              IF t278 = abap_true.
                DATA t283 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t284 TYPE REF TO zcl_lnt_typed_identifier.
                DATA(t285) = NEW zcl_lnt_sy_statem_constant( ).
                DATA t286 TYPE REF TO zcl_lnt_statement_node.
                DATA t288 TYPE REF TO object.
                t288 = t9.
                t286 ?= t288.
                t284 = t285->run_syntax( i_node = t286 i_input_967e = t2 ).
                t283 = t284.
                DATA t290 TYPE abap_bool.
                t290 = xsdbool( t283 IS BOUND ).
                IF t290 = abap_true.
                  DATA t293 TYPE REF TO zcl_lnt_current_scope.
                  t293 = t2->scope.
                  DATA t295 TYPE REF TO zcl_lnt_typed_identifier.
                  CLEAR t295.
                  t295 = t283.
                  DATA(t300) = VALUE abap_bool( ).
                  DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t303.
                  t300 = xsdbool( t295 IS INITIAL ).
                  IF t300 = abap_true.
                  ELSE.
                    DATA(t308) = VALUE string( ).
                    DATA t309 TYPE REF TO zcl_lnt_fi_identifier.
                    t309 = t295.
                    DATA(t312) = VALUE string( ).
                    DATA t313 TYPE string.
                    DATA t316 TYPE REF TO zcl_lnt_abstract_token.
                    t316 = t309->token.
                    DATA t318 TYPE string.
                    t318 = t316->str.
                    t313 = t318.
                    DATA(t320) = VALUE abap_bool( ).
                    DATA(t321) = VALUE string( ).
                    DATA(t322) = t313.
                    DATA(t323) = 0.
                    DATA(t324) = 1.
                    DATA(t325) = strlen( t322 ).
                    IF t323 < 0.
                      t323 = t323 + t325.
                      IF t323 < 0.
                        t323 = 0.
                      ENDIF.
                    ENDIF.
                    IF t323 > t325 OR t324 <= 0.
                      CLEAR t321.
                    ELSE.
                      IF t324 > t325 - t323.
                        t324 = t325 - t323.
                      ENDIF.
                      t321 = t322+t323(t324).
                    ENDIF.
                    DATA(t326) = |!|.
                    t320 = xsdbool( t321 = t326 ).
                    IF t320 = abap_true.
                      DATA(t327) = VALUE string( ).
                      DATA t328 TYPE string.
                      t328 = t313.
                      DATA(t330) = VALUE string( ).
                      DATA(t332) = 1.
                      DATA t333 TYPE i.
                      t333 = strlen( t328 ).
                      DATA(t336) = strlen( t328 ).
                      IF t332 < 0.
                        t332 = t332 + t336.
                        IF t332 < 0.
                          t332 = 0.
                        ENDIF.
                      ENDIF.
                      IF t332 > t336 OR t333 <= 0.
                        CLEAR t330.
                      ELSE.
                        IF t333 > t336 - t332.
                          t333 = t336 - t332.
                        ENDIF.
                        t330 = t328+t332(t333).
                      ENDIF.
                      t327 = t330.
                      t313 = t327.
                    ENDIF.
                    t312 = t313.
                    t308 = t312.
                    DATA t338 TYPE REF TO zcl_lnt_typed_identifier.
                    t338 = t295.
                    t293->add_named_identifier( i_name = t308 i_identifier = t338 ).
                  ENDIF.
                ENDIF.
              ELSE.
                DATA t340 TYPE abap_bool.
                DATA t341 TYPE abap_bool.
                t341 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_statement_node ).
                t340 = t341.
                IF t341 = abap_true.
                  DATA t343 TYPE abap_bool.
                  t343 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_ranges ).
                  t340 = t343.
                ENDIF.
                IF t340 = abap_true.
                  DATA(t345) = NEW zcl_lnt_sy_ranges( ).
                  DATA t346 TYPE REF TO zcl_lnt_statement_node.
                  DATA t348 TYPE REF TO object.
                  t348 = t9.
                  t346 ?= t348.
                  t345->run_syntax( i_node = t346 i_input_967e = t2 ).
                ELSE.
                  DATA t350 TYPE abap_bool.
                  DATA t351 TYPE abap_bool.
                  t351 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_statement_node ).
                  t350 = t351.
                  IF t351 = abap_true.
                    DATA t353 TYPE abap_bool.
                    t353 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_select_option ).
                    t350 = t353.
                  ENDIF.
                  IF t350 = abap_true.
                    DATA(t355) = NEW zcl_lnt_sy_select_option( ).
                    DATA t356 TYPE REF TO zcl_lnt_statement_node.
                    DATA t358 TYPE REF TO object.
                    t358 = t9.
                    t356 ?= t358.
                    t355->run_syntax( i_node = t356 i_input_967e = t2 ).
                  ELSE.
                    DATA t360 TYPE abap_bool.
                    DATA t361 TYPE abap_bool.
                    t361 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_statement_node ).
                    t360 = t361.
                    IF t361 = abap_true.
                      DATA t363 TYPE abap_bool.
                      t363 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_parameter ).
                      t360 = t363.
                    ENDIF.
                    IF t360 = abap_true.
                      DATA(t365) = NEW zcl_lnt_sy_parameter_parameter( ).
                      DATA t366 TYPE REF TO zcl_lnt_statement_node.
                      DATA t368 TYPE REF TO object.
                      t368 = t9.
                      t366 ?= t368.
                      t365->run_syntax( i_node = t366 i_input_967e = t2 ).
                    ELSE.
                      DATA t370 TYPE abap_bool.
                      DATA t371 TYPE abap_bool.
                      t371 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_structure_node ).
                      t370 = t371.
                      IF t371 = abap_true.
                        DATA t373 TYPE abap_bool.
                        t373 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_sr_constants ).
                        t370 = t373.
                      ENDIF.
                      IF t370 = abap_true.
                        DATA t375 TYPE REF TO zcl_lnt_shape_28fac025.
                        DATA t376 TYPE REF TO zcl_lnt_shape_28fac025.
                        DATA(t377) = NEW zcl_lnt_sy_constants( ).
                        DATA t378 TYPE REF TO zcl_lnt_structure_node.
                        DATA t380 TYPE REF TO object.
                        t380 = t9.
                        t378 ?= t380.
                        t376 = t377->run_syntax( i_node = t378 i_input_967e = t2 ).
                        t375 = t376.
                        DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
                        DATA t383 TYPE REF TO zcl_lnt_typed_identifier.
                        t383 = t375->type_cba0.
                        t382 = t383.
                        DATA t385 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                        DATA t386 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                        t386 = t375->values.
                        t385 = t386.
                        DATA t388 TYPE abap_bool.
                        t388 = xsdbool( t382 IS BOUND ).
                        IF t388 = abap_true.
                          DATA t391 TYPE REF TO zcl_lnt_current_scope.
                          t391 = t2->scope.
                          DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
                          CLEAR t393.
                          t393 = t382.
                          DATA(t399) = VALUE abap_bool( ).
                          DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t402.
                          t399 = xsdbool( t393 IS INITIAL ).
                          IF t399 = abap_true.
                          ELSE.
                            DATA(t407) = VALUE string( ).
                            DATA t408 TYPE REF TO zcl_lnt_fi_identifier.
                            t408 = t393.
                            DATA(t411) = VALUE string( ).
                            DATA t412 TYPE string.
                            DATA t415 TYPE REF TO zcl_lnt_abstract_token.
                            t415 = t408->token.
                            DATA t417 TYPE string.
                            t417 = t415->str.
                            t412 = t417.
                            DATA(t419) = VALUE abap_bool( ).
                            DATA(t420) = VALUE string( ).
                            DATA(t421) = t412.
                            DATA(t422) = 0.
                            DATA(t423) = 1.
                            DATA(t424) = strlen( t421 ).
                            IF t422 < 0.
                              t422 = t422 + t424.
                              IF t422 < 0.
                                t422 = 0.
                              ENDIF.
                            ENDIF.
                            IF t422 > t424 OR t423 <= 0.
                              CLEAR t420.
                            ELSE.
                              IF t423 > t424 - t422.
                                t423 = t424 - t422.
                              ENDIF.
                              t420 = t421+t422(t423).
                            ENDIF.
                            DATA(t425) = |!|.
                            t419 = xsdbool( t420 = t425 ).
                            IF t419 = abap_true.
                              DATA(t426) = VALUE string( ).
                              DATA t427 TYPE string.
                              t427 = t412.
                              DATA(t429) = VALUE string( ).
                              DATA(t431) = 1.
                              DATA t432 TYPE i.
                              t432 = strlen( t427 ).
                              DATA(t435) = strlen( t427 ).
                              IF t431 < 0.
                                t431 = t431 + t435.
                                IF t431 < 0.
                                  t431 = 0.
                                ENDIF.
                              ENDIF.
                              IF t431 > t435 OR t432 <= 0.
                                CLEAR t429.
                              ELSE.
                                IF t432 > t435 - t431.
                                  t432 = t435 - t431.
                                ENDIF.
                                t429 = t427+t431(t432).
                              ENDIF.
                              t426 = t429.
                              t412 = t426.
                            ENDIF.
                            t411 = t412.
                            t407 = t411.
                            DATA t437 TYPE REF TO zcl_lnt_typed_identifier.
                            t437 = t393.
                            t391->add_named_identifier( i_name = t407 i_identifier = t437 ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d992_23ce209550cb.
  ENDMETHOD.
ENDCLASS.
