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
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA(t15) = t5.
      t14 = t15.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t4 = t9.
    t3 = t4.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA(t18) = t3.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t23.
      DATA t24 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA(t27) = |Constants, structure, unexpected node|.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t27.
        t25 = t28.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t25 = t29.
      ENDIF.
      t24 = NEW zcx_lnt_assert_error( i_message_26cb = t25 ).
      t23 = NEW #( ).
      t23->payload = t24.
      CLEAR t23->source_value.
      IF t24 IS BOUND.
        DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t30.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        CLEAR t30.
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
      ENDIF.
      RAISE EXCEPTION t23.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t36.
    DATA(t37) = NEW zlnt_runtime_map__abd6fd794ffb( ).
    t36 = t37.
    DATA(t38) = t36.
    t35 = t38.
    t34 = t35.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t41.
    DATA(t42) = t1.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA(t44) = t41.
    t43 = t44->children.
    t40 = t43.
    t39 ?= t40.
    DATA t45 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t45.
    DATA t46 TYPE REF TO object.
    CLEAR t46.
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
      DATA(t53) = t45.
      t52 = t53->get_db65( ).
      DATA t54 TYPE REF TO object.
      CLEAR t54.
      t54 = t52.
      t51 ?= t54.
      t50 = t51.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t45.
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_statement_node ).
      t55 = t56.
      IF t56 = abap_true.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t50.
        t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_st_statem_constant ).
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
        DATA(t64) = t45.
        DATA t65 TYPE REF TO object.
        CLEAR t65.
        t65 = t64.
        t63 ?= t65.
        DATA(t66) = t2.
        t61 = t62->run_syntax( i_node = t63 i_input_967e = t66 ).
        t60 = t61.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t60.
        t67 = xsdbool( t68 IS BOUND ).
        IF t67 = abap_true.
          DATA(t69) = t32.
          DATA t70 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t70.
          DATA(t71) = VALUE string( ).
          DATA(t72) = VALUE string( ).
          DATA t73 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t73.
          DATA(t74) = t60.
          t73 = t74.
          DATA(t75) = VALUE string( ).
          DATA(t76) = VALUE string( ).
          DATA(t77) = VALUE string( ).
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t78.
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t79.
          DATA(t80) = t73.
          t79 = t80->token.
          t78 = t79.
          DATA(t81) = VALUE string( ).
          DATA(t82) = t78.
          t81 = t82->str.
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
            DATA(t92) = t76.
            t91 = t92.
            DATA(t93) = VALUE string( ).
            DATA(t94) = t91.
            DATA(t95) = 1.
            DATA(t96) = VALUE i( ).
            DATA(t97) = t91.
            DATA(t98) = strlen( t97 ).
            t96 = t98.
            DATA(t99) = strlen( t94 ).
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
              t93 = t94+t95(t96).
            ENDIF.
            t90 = t93.
            t76 = t90.
          ENDIF.
          DATA(t100) = t76.
          t75 = t100.
          t72 = t75.
          t71 = t72.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t101.
          DATA t102 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t102.
          DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t103.
          DATA(t104) = t60.
          t103 = t104.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t105.
          DATA(t106) = t103.
          t105 = t106->type_cba0.
          t102 = t105.
          t101 = t102.
          DATA t107 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t107.
          DATA t108 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t108.
          t107 = t108.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          t109 = t110.
          t70 = NEW zcl_lnt_istructure_component( i_name = t71 i_type_9913 = t101 i_as_include = t107 i_suffix = t109 ).
          CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
          t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t111 ).
          ENDIF.
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
          IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
          ENDIF.
          DATA(t115) = |type|.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
          ENDIF.
          t69->load( ).
          APPEND t70 TO t69->items.
          t69->save( ).
          DATA t117 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          CLEAR t117.
          DATA(t118) = t34.
          DATA(t119) = VALUE string( ).
          DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t120.
          DATA(t121) = t60.
          t120 = t121.
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE string( ).
          DATA(t124) = VALUE string( ).
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t125.
          DATA t126 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t126.
          DATA(t127) = t120.
          t126 = t127->token.
          t125 = t126.
          DATA(t128) = VALUE string( ).
          DATA(t129) = t125.
          t128 = t129->str.
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
            DATA(t139) = t123.
            t138 = t139.
            DATA(t140) = VALUE string( ).
            DATA(t141) = t138.
            DATA(t142) = 1.
            DATA(t143) = VALUE i( ).
            DATA(t144) = t138.
            DATA(t145) = strlen( t144 ).
            t143 = t145.
            DATA(t146) = strlen( t141 ).
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
              t140 = t141+t142(t143).
            ENDIF.
            t137 = t140.
            t123 = t137.
          ENDIF.
          DATA(t147) = t123.
          t122 = t147.
          t119 = t122.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          DATA t149 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t149.
          DATA(t150) = t60.
          t149 = t150.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          DATA(t152) = t149.
          t151 = t152->value.
          t148 = t151.
          t117 = t118->set( p0 = t119 p1 = t148 ).
        ENDIF.
      ELSE.
        DATA(t153) = VALUE abap_bool( ).
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = t45.
        t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_structure_node ).
        t153 = t154.
        IF t154 = abap_true.
          DATA(t156) = VALUE abap_bool( ).
          DATA(t157) = t50.
          t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_sr_constants ).
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
          DATA(t162) = t45.
          DATA t163 TYPE REF TO object.
          CLEAR t163.
          t163 = t162.
          t161 ?= t163.
          DATA(t164) = t2.
          t159 = t160->run_syntax( i_node = t161 i_input_967e = t164 ).
          t158 = t159.
          DATA t165 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t165.
          DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t166.
          DATA(t167) = t158.
          t166 = t167->type_cba0.
          t165 = t166.
          DATA t168 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          CLEAR t168.
          DATA t169 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
          CLEAR t169.
          DATA(t170) = t158.
          t169 = t170->values.
          t168 = t169.
          DATA(t171) = VALUE abap_bool( ).
          DATA(t172) = t165.
          t171 = xsdbool( t172 IS BOUND ).
          IF t171 = abap_true.
            DATA(t173) = t32.
            DATA t174 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t174.
            DATA(t175) = VALUE string( ).
            DATA(t176) = VALUE string( ).
            DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t177.
            DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t178.
            DATA(t179) = t165.
            t178 = t179.
            t177 = t178.
            DATA(t180) = VALUE string( ).
            DATA(t181) = VALUE string( ).
            DATA(t182) = VALUE string( ).
            DATA t183 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t183.
            DATA t184 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t184.
            DATA(t185) = t177.
            t184 = t185->token.
            t183 = t184.
            DATA(t186) = VALUE string( ).
            DATA(t187) = t183.
            t186 = t187->str.
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
              DATA(t197) = t181.
              t196 = t197.
              DATA(t198) = VALUE string( ).
              DATA(t199) = t196.
              DATA(t200) = 1.
              DATA(t201) = VALUE i( ).
              DATA(t202) = t196.
              DATA(t203) = strlen( t202 ).
              t201 = t203.
              DATA(t204) = strlen( t199 ).
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
                t198 = t199+t200(t201).
              ENDIF.
              t195 = t198.
              t181 = t195.
            ENDIF.
            DATA(t205) = t181.
            t180 = t205.
            t176 = t180.
            t175 = t176.
            DATA t206 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t206.
            DATA t207 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t207.
            DATA t208 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t208.
            DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t209.
            DATA(t210) = t165.
            t209 = t210.
            t208 = t209.
            DATA t211 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t211.
            DATA(t212) = t208.
            t211 = t212->type_cba0.
            t207 = t211.
            t206 = t207.
            DATA t213 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t213.
            DATA t214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t214.
            t213 = t214.
            DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t215.
            DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t216.
            t215 = t216.
            t174 = NEW zcl_lnt_istructure_component( i_name = t175 i_type_9913 = t206 i_as_include = t213 i_suffix = t215 ).
            CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
            t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t217.
            IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t217 ).
            ENDIF.
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
            IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
            ENDIF.
            DATA(t221) = |type|.
            DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t222.
            IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
            ENDIF.
            t173->load( ).
            APPEND t174 TO t173->items.
            t173->save( ).
            DATA t223 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
            CLEAR t223.
            DATA(t224) = t34.
            DATA(t225) = VALUE string( ).
            DATA t226 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t226.
            DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t227.
            DATA(t228) = t165.
            t227 = t228.
            t226 = t227.
            DATA(t229) = VALUE string( ).
            DATA(t230) = VALUE string( ).
            DATA(t231) = VALUE string( ).
            DATA t232 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t232.
            DATA t233 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t233.
            DATA(t234) = t226.
            t233 = t234->token.
            t232 = t233.
            DATA(t235) = VALUE string( ).
            DATA(t236) = t232.
            t235 = t236->str.
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
              DATA(t246) = t230.
              t245 = t246.
              DATA(t247) = VALUE string( ).
              DATA(t248) = t245.
              DATA(t249) = 1.
              DATA(t250) = VALUE i( ).
              DATA(t251) = t245.
              DATA(t252) = strlen( t251 ).
              t250 = t252.
              DATA(t253) = strlen( t248 ).
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
                t247 = t248+t249(t250).
              ENDIF.
              t244 = t247.
              t230 = t244.
            ENDIF.
            DATA(t254) = t230.
            t229 = t254.
            t225 = t229.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            DATA(t256) = t168.
            CLEAR t255.
            IF t256 IS BOUND.
              DATA t257 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t257.
              DATA t258 TYPE REF TO object.
              CLEAR t258.
              CLEAR t257.
              t258 = t256.
              TRY.
                  t255 ?= t258.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t255 IS NOT BOUND.
                TRY.
                    t257 ?= t256.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t257 IS BOUND.
                  t255 = t257->source( ).
                ENDIF.
                IF t255 IS NOT BOUND.
                  CREATE OBJECT t255.
                  t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t255->oval = t256.
                ENDIF.
              ENDIF.
            ENDIF.
            t223 = t224->set( p0 = t225 p1 = t255 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t259) = VALUE abap_bool( ).
    DATA(t260) = VALUE i( ).
    DATA(t261) = t32.
    t261->load( ).
    t260 = lines( t261->items ).
    DATA(t262) = 0.
    t259 = xsdbool( t260 = t262 ).
    IF t259 = abap_true.
      DATA t263 TYPE REF TO zcl_lnt_shape_28fac025.
      CLEAR t263.
      DATA t264 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t264.
      DATA t265 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t265.
      t264 = t265.
      DATA t266 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t266.
      DATA t267 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t267.
      DATA(t268) = abap_true.
      IF t268 = abap_true.
        DATA(t269) = t34.
        t267 = t269.
      ELSE.
        DATA t270 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
        CLEAR t270.
        t267 = t270.
      ENDIF.
      t266 = t267.
      t263 = NEW zcl_lnt_shape_28fac025( i_type_9913 = t264 i_values = t266 ).
      CREATE OBJECT t263->zlnt_view_ownkeys_b0e8086400eb.
      t263->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t271.
      IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t271 ).
      ENDIF.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t272 ).
      ENDIF.
      CREATE OBJECT t263->zlnt_json_ownkeys_70e5fd461788.
      t263->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t273) = |type|.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
      ENDIF.
      DATA(t275) = |values|.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t275 p1 = t276 ).
      ENDIF.
      result = t263.
      RETURN.
    ENDIF.
    DATA t277 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t277.
    DATA t278 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t278.
    DATA t279 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t279.
    DATA(t280) = t3.
    t279 = t280.
    DATA(t281) = VALUE string( ).
    DATA(t282) = t2.
    t281 = t282->filename.
    DATA t283 TYPE REF TO zcl_lnt_structure_type.
    CLEAR t283.
    DATA(t284) = t32.
    DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t287.
    t283 = NEW zcl_lnt_structure_type( i_components = t284 i_qualified_name = t285 i_ddic_name = t286 i_description = t287 ).
    DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t288.
    DATA(t289) = abap_true.
    IF t289 = abap_true.
      DATA t290 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t290.
      DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t291.
      DATA t292 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t292.
      CREATE OBJECT t292.
      t291 = t292.
      DATA(t293) = t291.
      DATA(t294) = |read_only|.
      t293->load( ).
      APPEND t294 TO t293->items.
      t293->save( ).
      DATA(t295) = t291.
      DATA(t296) = |static|.
      t295->load( ).
      APPEND t296 TO t295->items.
      t295->save( ).
      DATA(t297) = t291.
      t290 = t297.
      t288 = t290.
    ELSE.
      DATA t298 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t298.
      t288 = t298.
    ENDIF.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    t278 = NEW zcl_lnt_typed_identifier( i_token = t279 i_filename = t281 i_type_9913 = t283 i_meta = t288 i_value = t299 ).
    t277 = t278.
    DATA t300 TYPE REF TO zcl_lnt_shape_28fac025.
    CLEAR t300.
    DATA t301 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t301.
    DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t302.
    DATA(t303) = abap_true.
    IF t303 = abap_true.
      DATA(t304) = t277.
      t302 = t304.
    ELSE.
      DATA t305 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t305.
      t302 = t305.
    ENDIF.
    t301 = t302.
    DATA t306 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t307.
    DATA(t308) = abap_true.
    IF t308 = abap_true.
      DATA(t309) = t34.
      t307 = t309.
    ELSE.
      DATA t310 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t310.
      t307 = t310.
    ENDIF.
    t306 = t307.
    t300 = NEW zcl_lnt_shape_28fac025( i_type_9913 = t301 i_values = t306 ).
    CREATE OBJECT t300->zlnt_view_ownkeys_b0e8086400eb.
    t300->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    IF t300->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t311 ).
    ENDIF.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    IF t300->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t312 ).
    ENDIF.
    CREATE OBJECT t300->zlnt_json_ownkeys_70e5fd461788.
    t300->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t313) = |type|.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t314.
    IF t300->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t300->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
    ENDIF.
    DATA(t315) = |values|.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
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
