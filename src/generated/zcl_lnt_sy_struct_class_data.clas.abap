* TS: src/abap/5_syntax/structures/class_data.ts:11:1 ClassData
CLASS zcl_lnt_sy_struct_class_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_struct_class_data IMPLEMENTATION.
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
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    t4 = t5->get_first_token( ).
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |\{\}|.
    TRY.
        t12 = zlnt_runtime_json_7c6b3012af76=>parse( t13 ).
      CATCH zlnt_exception_js_ebcc2df7d5e4.
        DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t14->has = abap_true.
        t14->value = `Invalid JSON`.
        DATA(t15) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t14 ).
        DATA(t16) = NEW zlnt_exception_cl_30eec8e8805d( ).
        t16->payload = t15.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        CLEAR t17.
        IF t15 IS BOUND.
          DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t18.
          DATA t19 TYPE REF TO object.
          CLEAR t19.
          CLEAR t18.
          t19 = t15.
          TRY.
              t17 ?= t19.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t17 IS NOT BOUND.
            TRY.
                t18 ?= t15.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t18 IS BOUND.
              t17 = t18->source( ).
            ENDIF.
            IF t17 IS NOT BOUND.
              CREATE OBJECT t17.
              t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t17->oval = t15.
            ENDIF.
          ENDIF.
        ENDIF.
        t16->source_value = t17.
        RAISE EXCEPTION t16.
    ENDTRY.
    t11 = t12.
    DATA(t20) = t11.
    t10 = t20.
    t9 = t10.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    CREATE OBJECT t22.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t25.
    DATA(t26) = t1.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA(t28) = t25.
    t27 = t28->children.
    t24 = t27.
    t23 ?= t24.
    DATA t29 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t23->load( ).
      IF t31 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t23->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        CLEAR t33.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t34.
      DATA t35 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      DATA(t37) = t29.
      t36 = t37->get_db65( ).
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      t38 = t36.
      t35 ?= t38.
      t34 = t35.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t29.
      t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_statement_node ).
      t39 = t40.
      IF t40 = abap_true.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = t34.
        t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_st_class_data ).
        t39 = t42.
      ENDIF.
      IF t39 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t45.
        DATA(t46) = NEW zcl_lnt_sy_statem_class_data( ).
        DATA t47 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t47.
        DATA(t48) = t29.
        DATA t49 TYPE REF TO object.
        CLEAR t49.
        t49 = t48.
        t47 ?= t49.
        DATA(t50) = t2.
        t45 = t46->run_syntax( i_node = t47 i_input_967e = t50 ).
        t44 = t45.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = t44.
        t51 = xsdbool( t52 IS BOUND ).
        IF t51 = abap_true.
          DATA(t53) = t21.
          DATA t54 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t54.
          DATA(t55) = VALUE string( ).
          DATA(t56) = VALUE string( ).
          DATA t57 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t58.
          DATA(t59) = t44.
          t58 = t59.
          t57 = t58.
          DATA(t60) = VALUE string( ).
          DATA(t61) = VALUE string( ).
          DATA(t62) = VALUE string( ).
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t63.
          DATA t64 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t64.
          DATA(t65) = t57.
          t64 = t65->token.
          t63 = t64.
          DATA(t66) = VALUE string( ).
          DATA(t67) = t63.
          t66 = t67->str.
          t62 = t66.
          t61 = t62.
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE string( ).
          DATA(t70) = t61.
          DATA(t71) = 0.
          DATA(t72) = 1.
          DATA(t73) = strlen( t70 ).
          IF t71 < 0.
            t71 = t71 + t73.
            IF t71 < 0.
              t71 = 0.
            ENDIF.
          ENDIF.
          IF t71 > t73 OR t72 <= 0.
            CLEAR t69.
          ELSE.
            IF t72 > t73 - t71.
              t72 = t73 - t71.
            ENDIF.
            t69 = t70+t71(t72).
          ENDIF.
          DATA(t74) = |!|.
          t68 = xsdbool( t69 = t74 ).
          IF t68 = abap_true.
            DATA(t75) = VALUE string( ).
            DATA(t76) = VALUE string( ).
            DATA(t77) = t61.
            t76 = t77.
            DATA(t78) = VALUE string( ).
            DATA(t79) = t76.
            DATA(t80) = 1.
            DATA(t81) = VALUE i( ).
            DATA(t82) = t76.
            DATA(t83) = strlen( t82 ).
            t81 = t83.
            DATA(t84) = strlen( t79 ).
            IF t80 < 0.
              t80 = t80 + t84.
              IF t80 < 0.
                t80 = 0.
              ENDIF.
            ENDIF.
            IF t80 > t84 OR t81 <= 0.
              CLEAR t78.
            ELSE.
              IF t81 > t84 - t80.
                t81 = t84 - t80.
              ENDIF.
              t78 = t79+t80(t81).
            ENDIF.
            t75 = t78.
            t61 = t75.
          ENDIF.
          DATA(t85) = t61.
          t60 = t85.
          t56 = t60.
          t55 = t56.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t86.
          DATA t87 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t87.
          DATA t88 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t89.
          DATA(t90) = t44.
          t89 = t90.
          t88 = t89.
          DATA t91 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t91.
          DATA(t92) = t88.
          t91 = t92->type_cba0.
          t87 = t91.
          t86 = t87.
          DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t94.
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t95 = t96.
          t54 = NEW zcl_lnt_istructure_component( i_name = t55 i_type_9913 = t86 i_as_include = t93 i_suffix = t95 ).
          CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
          t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t97 ).
          ENDIF.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t98 ).
          ENDIF.
          CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
          t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t99) = |name|.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
          ENDIF.
          DATA(t101) = |type|.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
          ENDIF.
          t53->load( ).
          APPEND t54 TO t53->items.
          t53->save( ).
          DATA(t103) = t9.
          DATA(t104) = VALUE string( ).
          DATA t105 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t105.
          DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t106.
          DATA(t107) = t44.
          t106 = t107.
          t105 = t106.
          DATA(t108) = VALUE string( ).
          DATA(t109) = VALUE string( ).
          DATA(t110) = VALUE string( ).
          DATA t111 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t111.
          DATA t112 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t112.
          DATA(t113) = t105.
          t112 = t113->token.
          t111 = t112.
          DATA(t114) = VALUE string( ).
          DATA(t115) = t111.
          t114 = t115->str.
          t110 = t114.
          t109 = t110.
          DATA(t116) = VALUE abap_bool( ).
          DATA(t117) = VALUE string( ).
          DATA(t118) = t109.
          DATA(t119) = 0.
          DATA(t120) = 1.
          DATA(t121) = strlen( t118 ).
          IF t119 < 0.
            t119 = t119 + t121.
            IF t119 < 0.
              t119 = 0.
            ENDIF.
          ENDIF.
          IF t119 > t121 OR t120 <= 0.
            CLEAR t117.
          ELSE.
            IF t120 > t121 - t119.
              t120 = t121 - t119.
            ENDIF.
            t117 = t118+t119(t120).
          ENDIF.
          DATA(t122) = |!|.
          t116 = xsdbool( t117 = t122 ).
          IF t116 = abap_true.
            DATA(t123) = VALUE string( ).
            DATA(t124) = VALUE string( ).
            DATA(t125) = t109.
            t124 = t125.
            DATA(t126) = VALUE string( ).
            DATA(t127) = t124.
            DATA(t128) = 1.
            DATA(t129) = VALUE i( ).
            DATA(t130) = t124.
            DATA(t131) = strlen( t130 ).
            t129 = t131.
            DATA(t132) = strlen( t127 ).
            IF t128 < 0.
              t128 = t128 + t132.
              IF t128 < 0.
                t128 = 0.
              ENDIF.
            ENDIF.
            IF t128 > t132 OR t129 <= 0.
              CLEAR t126.
            ELSE.
              IF t129 > t132 - t128.
                t129 = t132 - t128.
              ENDIF.
              t126 = t127+t128(t129).
            ENDIF.
            t123 = t126.
            t109 = t123.
          ENDIF.
          DATA(t133) = t109.
          t108 = t133.
          t104 = t108.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t135.
          DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t136.
          DATA(t137) = t44.
          t136 = t137.
          t135 = t136.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          DATA(t139) = t135.
          t138 = t139->value.
          t134 = t138.
          t103->put( p0 = t104 p1 = t134 ).
        ENDIF.
      ELSE.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = t29.
        t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_structure_node ).
        t140 = t141.
        IF t141 = abap_true.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = t34.
          t143 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_sr_class_data ).
          t140 = t143.
        ENDIF.
        IF t140 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t145.
          DATA t146 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t146.
          DATA(t147) = NEW zcl_lnt_sy_struct_class_data( ).
          DATA t148 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t148.
          DATA(t149) = t29.
          DATA t150 TYPE REF TO object.
          CLEAR t150.
          t150 = t149.
          t148 ?= t150.
          DATA(t151) = t2.
          t146 = t147->run_syntax( i_node = t148 i_input_967e = t151 ).
          t145 = t146.
          DATA(t152) = VALUE abap_bool( ).
          DATA(t153) = t145.
          t152 = xsdbool( t153 IS BOUND ).
          IF t152 = abap_true.
            DATA(t154) = t21.
            DATA t155 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t155.
            DATA(t156) = VALUE string( ).
            DATA(t157) = VALUE string( ).
            DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t158.
            DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t159.
            DATA(t160) = t145.
            t159 = t160.
            t158 = t159.
            DATA(t161) = VALUE string( ).
            DATA(t162) = VALUE string( ).
            DATA(t163) = VALUE string( ).
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t164.
            DATA t165 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t165.
            DATA(t166) = t158.
            t165 = t166->token.
            t164 = t165.
            DATA(t167) = VALUE string( ).
            DATA(t168) = t164.
            t167 = t168->str.
            t163 = t167.
            t162 = t163.
            DATA(t169) = VALUE abap_bool( ).
            DATA(t170) = VALUE string( ).
            DATA(t171) = t162.
            DATA(t172) = 0.
            DATA(t173) = 1.
            DATA(t174) = strlen( t171 ).
            IF t172 < 0.
              t172 = t172 + t174.
              IF t172 < 0.
                t172 = 0.
              ENDIF.
            ENDIF.
            IF t172 > t174 OR t173 <= 0.
              CLEAR t170.
            ELSE.
              IF t173 > t174 - t172.
                t173 = t174 - t172.
              ENDIF.
              t170 = t171+t172(t173).
            ENDIF.
            DATA(t175) = |!|.
            t169 = xsdbool( t170 = t175 ).
            IF t169 = abap_true.
              DATA(t176) = VALUE string( ).
              DATA(t177) = VALUE string( ).
              DATA(t178) = t162.
              t177 = t178.
              DATA(t179) = VALUE string( ).
              DATA(t180) = t177.
              DATA(t181) = 1.
              DATA(t182) = VALUE i( ).
              DATA(t183) = t177.
              DATA(t184) = strlen( t183 ).
              t182 = t184.
              DATA(t185) = strlen( t180 ).
              IF t181 < 0.
                t181 = t181 + t185.
                IF t181 < 0.
                  t181 = 0.
                ENDIF.
              ENDIF.
              IF t181 > t185 OR t182 <= 0.
                CLEAR t179.
              ELSE.
                IF t182 > t185 - t181.
                  t182 = t185 - t181.
                ENDIF.
                t179 = t180+t181(t182).
              ENDIF.
              t176 = t179.
              t162 = t176.
            ENDIF.
            DATA(t186) = t162.
            t161 = t186.
            t157 = t161.
            t156 = t157.
            DATA t187 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t187.
            DATA t188 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t188.
            DATA t189 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t189.
            DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t190.
            DATA(t191) = t145.
            t190 = t191.
            t189 = t190.
            DATA t192 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t192.
            DATA(t193) = t189.
            t192 = t193->type_cba0.
            t188 = t192.
            t187 = t188.
            DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t194.
            DATA t195 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t195.
            t194 = t195.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t197.
            t196 = t197.
            t155 = NEW zcl_lnt_istructure_component( i_name = t156 i_type_9913 = t187 i_as_include = t194 i_suffix = t196 ).
            CREATE OBJECT t155->zlnt_view_ownkeys_b0e8086400eb.
            t155->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t198.
            IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t198 ).
            ENDIF.
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t199 ).
            ENDIF.
            CREATE OBJECT t155->zlnt_json_ownkeys_70e5fd461788.
            t155->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t200) = |name|.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = t200 p1 = t201 ).
            ENDIF.
            DATA(t202) = |type|.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
            ENDIF.
            t154->load( ).
            APPEND t155 TO t154->items.
            t154->save( ).
            DATA(t204) = t9.
            DATA(t205) = VALUE string( ).
            DATA t206 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t206.
            DATA t207 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t207.
            DATA(t208) = t145.
            t207 = t208.
            t206 = t207.
            DATA(t209) = VALUE string( ).
            DATA(t210) = VALUE string( ).
            DATA(t211) = VALUE string( ).
            DATA t212 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t212.
            DATA t213 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t213.
            DATA(t214) = t206.
            t213 = t214->token.
            t212 = t213.
            DATA(t215) = VALUE string( ).
            DATA(t216) = t212.
            t215 = t216->str.
            t211 = t215.
            t210 = t211.
            DATA(t217) = VALUE abap_bool( ).
            DATA(t218) = VALUE string( ).
            DATA(t219) = t210.
            DATA(t220) = 0.
            DATA(t221) = 1.
            DATA(t222) = strlen( t219 ).
            IF t220 < 0.
              t220 = t220 + t222.
              IF t220 < 0.
                t220 = 0.
              ENDIF.
            ENDIF.
            IF t220 > t222 OR t221 <= 0.
              CLEAR t218.
            ELSE.
              IF t221 > t222 - t220.
                t221 = t222 - t220.
              ENDIF.
              t218 = t219+t220(t221).
            ENDIF.
            DATA(t223) = |!|.
            t217 = xsdbool( t218 = t223 ).
            IF t217 = abap_true.
              DATA(t224) = VALUE string( ).
              DATA(t225) = VALUE string( ).
              DATA(t226) = t210.
              t225 = t226.
              DATA(t227) = VALUE string( ).
              DATA(t228) = t225.
              DATA(t229) = 1.
              DATA(t230) = VALUE i( ).
              DATA(t231) = t225.
              DATA(t232) = strlen( t231 ).
              t230 = t232.
              DATA(t233) = strlen( t228 ).
              IF t229 < 0.
                t229 = t229 + t233.
                IF t229 < 0.
                  t229 = 0.
                ENDIF.
              ENDIF.
              IF t229 > t233 OR t230 <= 0.
                CLEAR t227.
              ELSE.
                IF t230 > t233 - t229.
                  t230 = t233 - t229.
                ENDIF.
                t227 = t228+t229(t230).
              ENDIF.
              t224 = t227.
              t210 = t224.
            ENDIF.
            DATA(t234) = t210.
            t209 = t234.
            t205 = t209.
            DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t235.
            DATA t236 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t236.
            DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t237.
            DATA(t238) = t145.
            t237 = t238.
            t236 = t237.
            DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t239.
            DATA(t240) = t236.
            t239 = t240->value.
            t235 = t239.
            t204->put( p0 = t205 p1 = t235 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t241.
    DATA(t242) = abap_true.
    IF t242 = abap_true.
      DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t243.
      DATA(t244) = t3.
      DATA(t245) = VALUE string( ).
      DATA(t246) = t2.
      t245 = t246->filename.
      DATA t247 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t247.
      DATA(t248) = t21.
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t249.
      DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t250.
      DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t251.
      t247 = NEW zcl_lnt_structure_type( i_components = t248 i_qualified_name = t249 i_ddic_name = t250 i_description = t251 ).
      DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t252.
      DATA(t253) = abap_true.
      IF t253 = abap_true.
        DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t254.
        DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t256.
        CREATE OBJECT t256.
        t255 = t256.
        DATA(t257) = t255.
        DATA(t258) = |static|.
        t257->load( ).
        APPEND t258 TO t257->items.
        t257->save( ).
        DATA(t259) = t255.
        t254 = t259.
        t252 = t254.
      ELSE.
        DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t260.
        t252 = t260.
      ENDIF.
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t261.
      DATA(t262) = abap_true.
      IF t262 = abap_true.
        DATA(t263) = t9.
        t261 = t263.
      ELSE.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        t261 = t264.
      ENDIF.
      t243 = NEW zcl_lnt_typed_identifier( i_token = t244 i_filename = t245 i_type_9913 = t247 i_meta = t252 i_value = t261 ).
      t241 = t243.
    ELSE.
      DATA t265 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t265.
      t241 = t265.
    ENDIF.
    result = t241.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d990_b83cbe1720a1.
  ENDMETHOD.
ENDCLASS.
