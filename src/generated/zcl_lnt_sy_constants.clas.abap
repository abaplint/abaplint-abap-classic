* TS: src/abap/5_syntax/structures/constants.ts:12:1 Constants
CLASS zcl_lnt_sy_constants DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_28fac025.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_constants IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t6 = t1->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = xsdbool( t5 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      t14 = t5.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t3 = t9.
    DATA(t16) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = xsdbool( t3 IS INITIAL ).
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t24 TYPE REF TO zcx_lnt_assert_error.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t27) = |Constants, structure, unexpected node|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
      t24 = NEW zcx_lnt_assert_error( i_message_26cb = t25 ).
      t23 = NEW #( ).
      t23->payload = t24.
      CLEAR t23->source_value.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t31 TYPE REF TO object.
      t31 = t24.
      TRY.
          t23->source_value ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23->source_value IS NOT BOUND.
        TRY.
            t30 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t23->source_value = t30->source( ).
        ENDIF.
        IF t23->source_value IS NOT BOUND.
          CREATE OBJECT t23->source_value.
          t23->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->source_value->oval = t24.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t23.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    t34 = NEW zlnt_runtime_map__abd6fd794ffb( ).
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    t41 = t1.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t43 = t41->children.
    t40 = t43.
    t39 ?= t40.
    DATA t45 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t46 TYPE REF TO object.
    DATA(t47) = VALUE i( ).
    DO.
      t39->load( ).
      IF t47 >= lines( t39->items ).
        EXIT.
      ENDIF.
      CLEAR t46.
      READ TABLE t39->items INDEX t47 + 1 INTO t46.
      t47 = t47 + 1.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      CLEAR t45.
      IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t48 ?= t46.
        DATA t49 TYPE REF TO object.
        CLEAR t49.
        t49 = t48->as_ref( ).
        t45 ?= t49.
      ELSE.
        t45 ?= t46.
      ENDIF.
      DATA t50 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t50.
      DATA t51 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t51.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      t52 = t45->get_db65( ).
      DATA t54 TYPE REF TO object.
      CLEAR t54.
      t54 = t52.
      t51 ?= t54.
      t50 = t51.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      t56 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_statement_node ).
      t55 = t56.
      IF t56 = abap_true.
        DATA(t58) = VALUE abap_bool( ).
        t58 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_st_statem_constant ).
        t55 = t58.
      ENDIF.
      IF t55 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t61.
        DATA(t62) = NEW zcl_lnt_sy_statem_constant( ).
        DATA t63 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t63.
        DATA t65 TYPE REF TO object.
        CLEAR t65.
        t65 = t45.
        t63 ?= t65.
        t61 = t62->run_syntax( i_node = t63 i_input_967e = t2 ).
        t60 = t61.
        DATA(t67) = VALUE abap_bool( ).
        t67 = xsdbool( t60 IS BOUND ).
        IF t67 = abap_true.
          DATA t70 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t70.
          DATA(t71) = VALUE string( ).
          DATA(t72) = VALUE string( ).
          DATA t73 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t73.
          t73 = t60.
          DATA(t75) = VALUE string( ).
          DATA(t76) = VALUE string( ).
          DATA(t77) = VALUE string( ).
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t79.
          t79 = t73->token.
          DATA(t81) = VALUE string( ).
          t81 = t79->str.
          t77 = t81.
          t76 = t77.
          DATA(t83) = VALUE abap_bool( ).
          DATA(t84) = VALUE string( ).
          DATA(t85) = t76.
          DATA(t86) = 0.
          DATA(t87) = 1.
          DATA(t88) = strlen( t85 ).
          IF t86 < 0.
            t86 = t86 + t88.
            IF t86 < 0.
              t86 = 0.
            ENDIF.
          ENDIF.
          IF t86 > t88 OR t87 <= 0.
            CLEAR t84.
          ELSE.
            IF t87 > t88 - t86.
              t87 = t88 - t86.
            ENDIF.
            t84 = t85+t86(t87).
          ENDIF.
          DATA(t89) = |!|.
          t83 = xsdbool( t84 = t89 ).
          IF t83 = abap_true.
            DATA(t90) = VALUE string( ).
            DATA(t91) = VALUE string( ).
            t91 = t76.
            DATA(t93) = VALUE string( ).
            DATA(t95) = 1.
            DATA(t96) = VALUE i( ).
            t96 = strlen( t91 ).
            DATA(t99) = strlen( t91 ).
            IF t95 < 0.
              t95 = t95 + t99.
              IF t95 < 0.
                t95 = 0.
              ENDIF.
            ENDIF.
            IF t95 > t99 OR t96 <= 0.
              CLEAR t93.
            ELSE.
              IF t96 > t99 - t95.
                t96 = t99 - t95.
              ENDIF.
              t93 = t91+t95(t96).
            ENDIF.
            t90 = t93.
            t76 = t90.
          ENDIF.
          t75 = t76.
          t72 = t75.
          t71 = t72.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t101.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t105.
          t105 = t60->type_cba0.
          t101 = t105.
          DATA t107 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t107.
          CLEAR t107.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          CLEAR t109.
          t70 = NEW zcl_lnt_istructure_component( i_name = t71 i_type_9913 = t101 i_as_include = t107 i_suffix = t109 ).
          CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
          t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t111 ).
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t112 ).
          ENDIF.
          CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
          t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t113) = |name|.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
          DATA(t115) = |type|.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
          ENDIF.
          t32->load( ).
          APPEND t70 TO t32->items.
          t32->save( ).
          DATA t117 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          CLEAR t117.
          DATA(t119) = VALUE string( ).
          DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t120.
          t120 = t60.
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE string( ).
          DATA(t124) = VALUE string( ).
          DATA t126 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t126.
          t126 = t120->token.
          DATA(t128) = VALUE string( ).
          t128 = t126->str.
          t124 = t128.
          t123 = t124.
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = VALUE string( ).
          DATA(t132) = t123.
          DATA(t133) = 0.
          DATA(t134) = 1.
          DATA(t135) = strlen( t132 ).
          IF t133 < 0.
            t133 = t133 + t135.
            IF t133 < 0.
              t133 = 0.
            ENDIF.
          ENDIF.
          IF t133 > t135 OR t134 <= 0.
            CLEAR t131.
          ELSE.
            IF t134 > t135 - t133.
              t134 = t135 - t133.
            ENDIF.
            t131 = t132+t133(t134).
          ENDIF.
          DATA(t136) = |!|.
          t130 = xsdbool( t131 = t136 ).
          IF t130 = abap_true.
            DATA(t137) = VALUE string( ).
            DATA(t138) = VALUE string( ).
            t138 = t123.
            DATA(t140) = VALUE string( ).
            DATA(t142) = 1.
            DATA(t143) = VALUE i( ).
            t143 = strlen( t138 ).
            DATA(t146) = strlen( t138 ).
            IF t142 < 0.
              t142 = t142 + t146.
              IF t142 < 0.
                t142 = 0.
              ENDIF.
            ENDIF.
            IF t142 > t146 OR t143 <= 0.
              CLEAR t140.
            ELSE.
              IF t143 > t146 - t142.
                t143 = t146 - t142.
              ENDIF.
              t140 = t138+t142(t143).
            ENDIF.
            t137 = t140.
            t123 = t137.
          ENDIF.
          t122 = t123.
          t119 = t122.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          t151 = t60->value.
          t148 = t151.
          t117 = t34->set( p0 = t119 p1 = t148 ).
        ENDIF.
      ELSE.
        DATA(t153) = VALUE abap_bool( ).
        DATA(t154) = VALUE abap_bool( ).
        t154 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_structure_node ).
        t153 = t154.
        IF t154 = abap_true.
          DATA(t156) = VALUE abap_bool( ).
          t156 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_sr_constants ).
          t153 = t156.
        ENDIF.
        IF t153 = abap_true.
          DATA t158 TYPE REF TO zcl_lnt_shape_28fac025.
          CLEAR t158.
          DATA t159 TYPE REF TO zcl_lnt_shape_28fac025.
          CLEAR t159.
          DATA(t160) = NEW zcl_lnt_sy_constants( ).
          DATA t161 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t161.
          DATA t163 TYPE REF TO object.
          CLEAR t163.
          t163 = t45.
          t161 ?= t163.
          t159 = t160->run_syntax( i_node = t161 i_input_967e = t2 ).
          t158 = t159.
          DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t165.
          DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t166.
          t166 = t158->type_cba0.
          t165 = t166.
          DATA t168 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          CLEAR t168.
          DATA t169 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          CLEAR t169.
          t169 = t158->values.
          t168 = t169.
          DATA(t171) = VALUE abap_bool( ).
          t171 = xsdbool( t165 IS BOUND ).
          IF t171 = abap_true.
            DATA t174 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t174.
            DATA(t175) = VALUE string( ).
            DATA(t176) = VALUE string( ).
            DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t177.
            t177 = t165.
            DATA(t180) = VALUE string( ).
            DATA(t181) = VALUE string( ).
            DATA(t182) = VALUE string( ).
            DATA t184 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t184.
            t184 = t177->token.
            DATA(t186) = VALUE string( ).
            t186 = t184->str.
            t182 = t186.
            t181 = t182.
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
              DATA(t196) = VALUE string( ).
              t196 = t181.
              DATA(t198) = VALUE string( ).
              DATA(t200) = 1.
              DATA(t201) = VALUE i( ).
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
            t175 = t176.
            DATA t206 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t206.
            DATA t211 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t211.
            t211 = t165->type_cba0.
            t206 = t211.
            DATA t213 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t213.
            CLEAR t213.
            DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t215.
            CLEAR t215.
            t174 = NEW zcl_lnt_istructure_component( i_name = t175 i_type_9913 = t206 i_as_include = t213 i_suffix = t215 ).
            CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
            t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t217.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t217 ).
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t218 ).
            ENDIF.
            CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
            t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t219) = |name|.
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
            DATA(t221) = |type|.
            DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t222.
            IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
            ENDIF.
            t32->load( ).
            APPEND t174 TO t32->items.
            t32->save( ).
            DATA t223 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
            CLEAR t223.
            DATA(t225) = VALUE string( ).
            DATA t226 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t226.
            t226 = t165.
            DATA(t229) = VALUE string( ).
            DATA(t230) = VALUE string( ).
            DATA(t231) = VALUE string( ).
            DATA t233 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t233.
            t233 = t226->token.
            DATA(t235) = VALUE string( ).
            t235 = t233->str.
            t231 = t235.
            t230 = t231.
            DATA(t237) = VALUE abap_bool( ).
            DATA(t238) = VALUE string( ).
            DATA(t239) = t230.
            DATA(t240) = 0.
            DATA(t241) = 1.
            DATA(t242) = strlen( t239 ).
            IF t240 < 0.
              t240 = t240 + t242.
              IF t240 < 0.
                t240 = 0.
              ENDIF.
            ENDIF.
            IF t240 > t242 OR t241 <= 0.
              CLEAR t238.
            ELSE.
              IF t241 > t242 - t240.
                t241 = t242 - t240.
              ENDIF.
              t238 = t239+t240(t241).
            ENDIF.
            DATA(t243) = |!|.
            t237 = xsdbool( t238 = t243 ).
            IF t237 = abap_true.
              DATA(t244) = VALUE string( ).
              DATA(t245) = VALUE string( ).
              t245 = t230.
              DATA(t247) = VALUE string( ).
              DATA(t249) = 1.
              DATA(t250) = VALUE i( ).
              t250 = strlen( t245 ).
              DATA(t253) = strlen( t245 ).
              IF t249 < 0.
                t249 = t249 + t253.
                IF t249 < 0.
                  t249 = 0.
                ENDIF.
              ENDIF.
              IF t249 > t253 OR t250 <= 0.
                CLEAR t247.
              ELSE.
                IF t250 > t253 - t249.
                  t250 = t253 - t249.
                ENDIF.
                t247 = t245+t249(t250).
              ENDIF.
              t244 = t247.
              t230 = t244.
            ENDIF.
            t229 = t230.
            t225 = t229.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            CLEAR t255.
            IF t168 IS BOUND.
              DATA t257 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t257.
              DATA t258 TYPE REF TO object.
              CLEAR t258.
              CLEAR t257.
              t258 = t168.
              TRY.
                  t255 ?= t258.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t255 IS NOT BOUND.
                TRY.
                    t257 ?= t168.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t257 IS BOUND.
                  t255 = t257->source( ).
                ENDIF.
                IF t255 IS NOT BOUND.
                  CREATE OBJECT t255.
                  t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t255->oval = t168.
                ENDIF.
              ENDIF.
            ENDIF.
            t223 = t34->set( p0 = t225 p1 = t255 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t259) = VALUE abap_bool( ).
    DATA(t260) = VALUE i( ).
    t32->load( ).
    t260 = lines( t32->items ).
    DATA(t262) = 0.
    t259 = xsdbool( t260 = t262 ).
    IF t259 = abap_true.
      DATA t263 TYPE REF TO zcl_lnt_shape_28fac025.
      DATA t264 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t266 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      t266 = t34.
      t263 = NEW zcl_lnt_shape_28fac025( i_type_9913 = t264 i_values = t266 ).
      CREATE OBJECT t263->zlnt_view_ownkeys_b0e8086400eb.
      t263->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t271 ).
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t272 ).
      ENDIF.
      CREATE OBJECT t263->zlnt_json_ownkeys_70e5fd461788.
      t263->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t273) = |type|.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
      DATA(t275) = |values|.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t275 p1 = t276 ).
      ENDIF.
      result = t263.
      RETURN.
    ENDIF.
    DATA t278 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t279 TYPE REF TO zcl_lnt_abstract_token.
    t279 = t3.
    DATA(t281) = VALUE string( ).
    t281 = t2->filename.
    DATA t283 TYPE REF TO zcl_lnt_structure_type.
    DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t283 = NEW zcl_lnt_structure_type( i_components = t32 i_qualified_name = t285 i_ddic_name = t286 i_description = t287 ).
    DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t292 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t292.
    t291 = t292.
    DATA(t294) = |read_only|.
    t291->load( ).
    APPEND t294 TO t291->items.
    t291->save( ).
    DATA(t296) = |static|.
    t291->load( ).
    APPEND t296 TO t291->items.
    t291->save( ).
    t288 = t291.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t278 = NEW zcl_lnt_typed_identifier( i_token = t279 i_filename = t281 i_type_9913 = t283 i_meta = t288 i_value = t299 ).
    DATA t300 TYPE REF TO zcl_lnt_shape_28fac025.
    DATA t301 TYPE REF TO zcl_lnt_typed_identifier.
    t301 = t278.
    DATA t306 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    t306 = t34.
    t300 = NEW zcl_lnt_shape_28fac025( i_type_9913 = t301 i_values = t306 ).
    CREATE OBJECT t300->zlnt_view_ownkeys_b0e8086400eb.
    t300->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t311 ).
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t300->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t312 ).
    ENDIF.
    CREATE OBJECT t300->zlnt_json_ownkeys_70e5fd461788.
    t300->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t313) = |type|.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t300->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
    DATA(t315) = |values|.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t300->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t300->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
    ENDIF.
    result = t300.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d991_2c1bbfdb8e80.
  ENDMETHOD.
ENDCLASS.
