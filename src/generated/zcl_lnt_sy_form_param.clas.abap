* TS: src/abap/5_syntax/expressions/form_param.ts:11:1 FormParam
CLASS zcl_lnt_sy_form_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_form_param IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d187_ac8768b55725.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t14.
      DATA t15 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = |FormParam, could not find FormParamName|.
        DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        t16 = t20.
      ENDIF.
      t15 = NEW zcx_lnt_assert_error( i_message_26cb = t16 ).
      t14 = NEW #( ).
      t14->payload = t15.
      CLEAR t14->source_value.
      IF t15 IS BOUND.
        DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t21.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        CLEAR t21.
        t22 = t15.
        TRY.
            t14->source_value ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14->source_value IS NOT BOUND.
          TRY.
              t21 ?= t15.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t21 IS BOUND.
            t14->source_value = t21->source( ).
          ENDIF.
          IF t14->source_value IS NOT BOUND.
            CREATE OBJECT t14->source_value.
            t14->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t14->source_value->oval = t15.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t14.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t25.
    DATA(t26) = t3.
    t25 = t26.
    t24 = t25->get_first_token( ).
    t23 = t24.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE i( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t32.
    DATA(t33) = t3.
    t32 = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA(t35) = t31.
    t34 = t35->children.
    t30 = t34.
    t29 ?= t30.
    t29->load( ).
    t28 = lines( t29->items ).
    DATA(t36) = 1.
    t27 = xsdbool( t28 > t36 ).
    IF t27 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_lx_identifier.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_position.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t39.
      DATA(t40) = t23.
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_position.
      CLEAR t41.
      DATA(t42) = t39.
      t41 = t42->start.
      t38 = t41.
      DATA(t43) = VALUE string( ).
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t44.
      DATA(t45) = t3.
      t44 = t45.
      t43 = t44->concat_tokens( ).
      t37 = NEW zcl_lnt_lx_identifier( i_start = t38 i_str = t43 ).
      t23 = t37.
    ENDIF.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t48.
    DATA(t49) = t1.
    DATA(t50) = |STRUCTURE|.
    t48 = t49->find_direct_token_by_text( i_text = t50 ).
    t47 = xsdbool( t48 IS BOUND ).
    t46 = t47.
    IF t47 = abap_true.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t23.
      t51 = xsdbool( t52 IS BOUND ).
      t46 = t51.
    ENDIF.
    IF t46 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t58.
      DATA(t59) = t1.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t58 = t59->find_direct_expression( i_type_9913 = t60 ).
      t57 = t58.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t57.
      IF t63 IS INITIAL.
        t62 = abap_true.
      ENDIF.
      IF t62 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t64.
        t61 = t64.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t66.
        DATA(t67) = t57.
        t66 = t67.
        t65 = t66->get_first_token( ).
        t61 = t65.
      ENDIF.
      t56 = t61.
      t55 = t56.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = t55.
      IF t70 IS INITIAL.
        t69 = abap_true.
      ENDIF.
      IF t69 = abap_true.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t68 = t71.
      ELSE.
        DATA(t72) = VALUE string( ).
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t73.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t74.
        DATA(t75) = t55.
        t74 = t75.
        t73 = t74.
        DATA(t76) = VALUE string( ).
        DATA(t77) = t73.
        t76 = t77->str.
        t72 = t76.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t72.
        t68 = t78.
      ENDIF.
      t54 = t68.
      t53 = t54.
      DATA t79 TYPE REF TO zif_lnt_union_ea265422.
      CLEAR t79.
      DATA t80 TYPE REF TO zif_lnt_union_ea265422.
      CLEAR t80.
      t79 = t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t53.
      IF t82 IS BOUND.
        IF t82->has = abap_true.
          t81 = xsdbool( strlen( t82->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t84.
        DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t86.
        DATA t87 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t87.
        DATA(t88) = t2.
        t87 = t88->scope.
        t86 = t87.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA(t92) = VALUE string( ).
          DATA(t93) = t53.
          t92 = t93->value.
          DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t94->has = abap_true.
          t94->value = t92.
          t90 = t94.
        ELSE.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t90 = t95.
        ENDIF.
        t89 = t90.
        DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t96.
        DATA(t97) = VALUE abap_bool( ).
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA(t99) = t89.
        t98 = t99.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        t100 = t101.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = t98.
        IF t103 IS INITIAL.
          t102 = abap_true.
        ELSEIF t103->has = abap_false.
          t102 = abap_true.
        ENDIF.
        t97 = t102.
        IF t97 = abap_true.
          DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t104.
          t96 = t104.
        ELSE.
          DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t105.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t106.
          DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t107.
          DATA(t108) = t86.
          t107 = t108->current.
          t106 = t107.
          DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t109.
          DATA(t110) = VALUE abap_bool( ).
          DATA(t111) = t106.
          IF t111 IS INITIAL.
            t110 = abap_true.
          ENDIF.
          IF t110 = abap_true.
            DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t112.
            t109 = t112.
          ELSE.
            DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t113.
            DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t114.
            DATA(t115) = t106.
            t114 = t115.
            DATA(t116) = VALUE string( ).
            DATA(t117) = t89.
            t116 = t117->value.
            t113 = t114->find_type( i_name = t116 ).
            t109 = t113.
          ENDIF.
          t105 = t109.
          t96 = t105.
        ENDIF.
        t85 = t96.
        t84 = t85.
        DATA t118 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t118.
        DATA(t119) = VALUE abap_bool( ).
        DATA(t120) = t84.
        IF t120 IS INITIAL.
          t119 = abap_true.
        ENDIF.
        IF t119 = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t121.
          t118 = t121.
        ELSE.
          DATA t122 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t123.
          DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t124.
          DATA(t125) = t84.
          t124 = t125.
          t123 = t124.
          DATA t126 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t126.
          DATA(t127) = t123.
          t126 = t127->type_cba0.
          t122 = t126.
          t118 = t122.
        ENDIF.
        t83 = t118.
        t79 = t83.
        DATA(t128) = VALUE abap_bool( ).
        DATA t129 TYPE REF TO zif_lnt_union_ea265422.
        CLEAR t129.
        DATA(t130) = t79.
        t129 = t130.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        t131 = t132.
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = t129.
        IF t134 IS INITIAL.
          t133 = abap_true.
        ENDIF.
        t128 = t133.
        IF t128 = abap_true.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t135.
          DATA t136 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t136.
          DATA t137 TYPE REF TO zcl_lnt_ddic.
          CLEAR t137.
          DATA t138 TYPE REF TO zcl_lnt_ddic.
          CLEAR t138.
          DATA t139 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t139.
          DATA t140 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t140.
          DATA(t141) = t2.
          t140 = t141->scope.
          t139 = t140.
          DATA t142 TYPE REF TO zcl_lnt_ddic.
          CLEAR t142.
          DATA t143 TYPE REF TO zif_lnt_registry.
          CLEAR t143.
          DATA(t144) = t139.
          t143 = t144->reg.
          t142 = NEW zcl_lnt_ddic( i_reg_f149 = t143 ).
          t138 = t142.
          t137 = t138.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          DATA(t147) = abap_true.
          IF t147 = abap_true.
            DATA(t148) = VALUE string( ).
            DATA(t149) = t53.
            t148 = t149->value.
            DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t150->has = abap_true.
            t150->value = t148.
            t146 = t150.
          ELSE.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t151.
            t146 = t151.
          ENDIF.
          t145 = t146.
          DATA t152 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t152.
          DATA(t153) = VALUE abap_bool( ).
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          DATA(t155) = t145.
          t154 = t155.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          t156 = t157.
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = t154.
          IF t159 IS INITIAL.
            t158 = abap_true.
          ELSEIF t159->has = abap_false.
            t158 = abap_true.
          ENDIF.
          t153 = t158.
          IF t153 = abap_true.
            DATA t160 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t160.
            DATA t161 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t161.
            DATA t162 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t162.
            DATA(t163) = |undefined, lookupTableOrView|.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t164.
            t162 = NEW zcl_lnt_unknown_type( i_error = t163 i_qualified_name = t164 ).
            t161 = t162.
            DATA t165 TYPE REF TO zif_lnt_object.
            CLEAR t165.
            DATA t166 TYPE REF TO zif_lnt_object.
            CLEAR t166.
            t165 = t166.
            t160 = NEW zcl_lnt_ilookup_result( i_type_9913 = t161 i_object_19cd = t165 ).
            CREATE OBJECT t160->zlnt_view_ownkeys_b0e8086400eb.
            t160->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t167.
            IF t160->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t160->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t167 ).
            ENDIF.
            CREATE OBJECT t160->zlnt_json_ownkeys_70e5fd461788.
            t160->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t168) = |type|.
            DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t169.
            IF t160->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t160->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
            ENDIF.
            t152 = t160.
          ELSE.
            DATA t170 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t170.
            DATA t171 TYPE REF TO zcl_lnt_table.
            CLEAR t171.
            DATA t172 TYPE REF TO zcl_lnt_table.
            CLEAR t172.
            DATA t173 TYPE REF TO zif_lnt_object.
            CLEAR t173.
            DATA t174 TYPE REF TO zif_lnt_registry.
            CLEAR t174.
            DATA(t175) = t137.
            t174 = t175->reg.
            DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t176.
            DATA(t177) = abap_true.
            IF t177 = abap_true.
              DATA(t178) = |TABL|.
              DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t179->has = abap_true.
              t179->value = t178.
              t176 = t179.
            ELSE.
              DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t180.
              t176 = t180.
            ENDIF.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            DATA(t182) = abap_true.
            IF t182 = abap_true.
              DATA(t183) = VALUE string( ).
              DATA(t184) = t145.
              t183 = t184->value.
              DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t185->has = abap_true.
              t185->value = t183.
              t181 = t185.
            ELSE.
              DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t186.
              t181 = t186.
            ENDIF.
            t173 = t174->get_object( i_type_9913 = t176 i_name = t181 ).
            DATA t187 TYPE REF TO object.
            CLEAR t187.
            t187 = t173.
            t172 ?= t187.
            t171 = t172.
            DATA t188 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t188.
            DATA(t189) = VALUE abap_bool( ).
            DATA(t190) = t171.
            t189 = xsdbool( t190 IS BOUND ).
            IF t189 = abap_true.
              DATA t191 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t191.
              DATA t192 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t192.
              DATA t193 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t193.
              DATA t194 TYPE REF TO zcl_lnt_table.
              CLEAR t194.
              DATA(t195) = t171.
              t194 = t195.
              DATA t196 TYPE REF TO zif_lnt_registry.
              CLEAR t196.
              DATA(t197) = t137.
              t196 = t197->reg.
              DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t198.
              DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t199.
              t193 = t194->parse_type( i_reg_f149 = t196 i_data_element = t198 i_description = t199 ).
              t192 = t193.
              DATA t200 TYPE REF TO zif_lnt_object.
              CLEAR t200.
              DATA t201 TYPE REF TO zcl_lnt_table.
              CLEAR t201.
              DATA(t202) = t171.
              t201 = t202.
              t200 = t201.
              t191 = NEW zcl_lnt_ilookup_result( i_type_9913 = t192 i_object_19cd = t200 ).
              CREATE OBJECT t191->zlnt_view_ownkeys_b0e8086400eb.
              t191->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t203.
              IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t203 ).
              ENDIF.
              DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t204.
              IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t204 ).
              ENDIF.
              CREATE OBJECT t191->zlnt_json_ownkeys_70e5fd461788.
              t191->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t205) = |type|.
              DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t206.
              IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
              ENDIF.
              DATA(t207) = |object|.
              DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t208.
              IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
              ENDIF.
              t188 = t191.
            ELSE.
              DATA t209 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t209.
              DATA t210 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t210.
              DATA t211 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t211.
              DATA(t212) = t137.
              DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t213.
              DATA(t214) = abap_true.
              IF t214 = abap_true.
                DATA(t215) = VALUE string( ).
                DATA(t216) = t145.
                t215 = t216->value.
                DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t217->has = abap_true.
                t217->value = t215.
                t213 = t217.
              ELSE.
                DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t218.
                t213 = t218.
              ENDIF.
              t211 = t212->lookup_ddls( i_name = t213 ).
              t210 = t211.
              DATA t219 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t219.
              DATA(t220) = VALUE abap_bool( ).
              DATA(t221) = t210.
              t220 = xsdbool( t221 IS BOUND ).
              IF t220 = abap_true.
                DATA t222 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t222.
                DATA(t223) = t210.
                t222 = t223.
                t219 = t222.
              ELSE.
                DATA t224 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t224.
                DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t225.
                DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t226.
                DATA(t227) = abap_true.
                IF t227 = abap_true.
                  DATA(t228) = VALUE string( ).
                  DATA(t229) = t145.
                  t228 = t229->value.
                  DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t230->has = abap_true.
                  t230->value = t228.
                  t226 = t230.
                ELSE.
                  DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t231.
                  t226 = t231.
                ENDIF.
                t225 = t226.
                DATA t232 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t232.
                DATA(t233) = VALUE abap_bool( ).
                DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t234.
                DATA(t235) = t225.
                t234 = t235.
                DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t236.
                DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t237.
                t236 = t237.
                DATA(t238) = VALUE abap_bool( ).
                DATA(t239) = t234.
                IF t239 IS INITIAL.
                  t238 = abap_true.
                ELSEIF t239->has = abap_false.
                  t238 = abap_true.
                ENDIF.
                t233 = t238.
                IF t233 = abap_true.
                  DATA t240 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t240.
                  DATA t241 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t241.
                  DATA t242 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t242.
                  DATA(t243) = |undefined, lookupView|.
                  DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t244.
                  t242 = NEW zcl_lnt_unknown_type( i_error = t243 i_qualified_name = t244 ).
                  t241 = t242.
                  DATA t245 TYPE REF TO zif_lnt_object.
                  CLEAR t245.
                  DATA t246 TYPE REF TO zif_lnt_object.
                  CLEAR t246.
                  t245 = t246.
                  t240 = NEW zcl_lnt_ilookup_result( i_type_9913 = t241 i_object_19cd = t245 ).
                  CREATE OBJECT t240->zlnt_view_ownkeys_b0e8086400eb.
                  t240->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t247.
                  IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t247 ).
                  ENDIF.
                  CREATE OBJECT t240->zlnt_json_ownkeys_70e5fd461788.
                  t240->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t248) = |type|.
                  DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t249.
                  IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
                  ENDIF.
                  t232 = t240.
                ELSE.
                  DATA t250 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t250.
                  DATA t251 TYPE REF TO zcl_lnt_table.
                  CLEAR t251.
                  DATA t252 TYPE REF TO zcl_lnt_table.
                  CLEAR t252.
                  DATA t253 TYPE REF TO zif_lnt_object.
                  CLEAR t253.
                  DATA t254 TYPE REF TO zif_lnt_registry.
                  CLEAR t254.
                  DATA(t255) = t137.
                  t254 = t255->reg.
                  DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t256.
                  DATA(t257) = abap_true.
                  IF t257 = abap_true.
                    DATA(t258) = |VIEW|.
                    DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t259->has = abap_true.
                    t259->value = t258.
                    t256 = t259.
                  ELSE.
                    DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t260.
                    t256 = t260.
                  ENDIF.
                  DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t261.
                  DATA(t262) = abap_true.
                  IF t262 = abap_true.
                    DATA(t263) = VALUE string( ).
                    DATA(t264) = t225.
                    t263 = t264->value.
                    DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t265->has = abap_true.
                    t265->value = t263.
                    t261 = t265.
                  ELSE.
                    DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t266.
                    t261 = t266.
                  ENDIF.
                  t253 = t254->get_object( i_type_9913 = t256 i_name = t261 ).
                  DATA t267 TYPE REF TO object.
                  CLEAR t267.
                  t267 = t253.
                  t252 ?= t267.
                  t251 = t252.
                  DATA t268 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t268.
                  DATA(t269) = VALUE abap_bool( ).
                  DATA(t270) = t251.
                  t269 = xsdbool( t270 IS BOUND ).
                  IF t269 = abap_true.
                    DATA t271 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t271.
                    DATA t272 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t272.
                    DATA t273 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t273.
                    DATA t274 TYPE REF TO zcl_lnt_table.
                    CLEAR t274.
                    DATA(t275) = t251.
                    t274 = t275.
                    DATA t276 TYPE REF TO zif_lnt_registry.
                    CLEAR t276.
                    DATA(t277) = t137.
                    t276 = t277->reg.
                    DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t278.
                    DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t279.
                    t273 = t274->parse_type( i_reg_f149 = t276 i_data_element = t278 i_description = t279 ).
                    t272 = t273.
                    DATA t280 TYPE REF TO zif_lnt_object.
                    CLEAR t280.
                    DATA t281 TYPE REF TO zcl_lnt_table.
                    CLEAR t281.
                    DATA(t282) = t251.
                    t281 = t282.
                    t280 = t281.
                    t271 = NEW zcl_lnt_ilookup_result( i_type_9913 = t272 i_object_19cd = t280 ).
                    CREATE OBJECT t271->zlnt_view_ownkeys_b0e8086400eb.
                    t271->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t283.
                    IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t283 ).
                    ENDIF.
                    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t284.
                    IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t284 ).
                    ENDIF.
                    CREATE OBJECT t271->zlnt_json_ownkeys_70e5fd461788.
                    t271->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t285) = |type|.
                    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t286.
                    IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
                    ENDIF.
                    DATA(t287) = |object|.
                    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t288.
                    IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
                    ENDIF.
                    t268 = t271.
                  ELSE.
                    DATA t289 TYPE REF TO zcl_lnt_ilookup_result.
                    CLEAR t289.
                    DATA(t290) = VALUE abap_bool( ).
                    DATA t291 TYPE REF TO zif_lnt_registry.
                    CLEAR t291.
                    DATA(t292) = t137.
                    t291 = t292->reg.
                    DATA(t293) = VALUE string( ).
                    DATA(t294) = t225.
                    t293 = t294->value.
                    t290 = t291->in_error_namespace( i_name = t293 ).
                    IF t290 = abap_true.
                      DATA t295 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t295.
                      DATA t296 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t296.
                      DATA t297 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t297.
                      DATA(t298) = VALUE string( ).
                      DATA(t299) = VALUE string( ).
                      DATA(t300) = t225.
                      t299 = t300->value.
                      DATA(t301) = | not found, lookupView|.
                      DATA(t302) = strlen( t299 ).
                      t298 = |{ t299 }{ t301 }|.
                      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t303.
                      t297 = NEW zcl_lnt_unknown_type( i_error = t298 i_qualified_name = t303 ).
                      t296 = t297.
                      DATA t304 TYPE REF TO zif_lnt_object.
                      CLEAR t304.
                      DATA t305 TYPE REF TO zif_lnt_object.
                      CLEAR t305.
                      t304 = t305.
                      t295 = NEW zcl_lnt_ilookup_result( i_type_9913 = t296 i_object_19cd = t304 ).
                      CREATE OBJECT t295->zlnt_view_ownkeys_b0e8086400eb.
                      t295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t306.
                      IF t295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t306 ).
                      ENDIF.
                      CREATE OBJECT t295->zlnt_json_ownkeys_70e5fd461788.
                      t295->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t307) = |type|.
                      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t308.
                      IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
                      ENDIF.
                      t289 = t295.
                    ELSE.
                      DATA t309 TYPE REF TO zcl_lnt_ilookup_result.
                      CLEAR t309.
                      DATA t310 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t310.
                      DATA t311 TYPE REF TO zcl_lnt_void_type.
                      CLEAR t311.
                      DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t312.
                      DATA(t313) = abap_true.
                      IF t313 = abap_true.
                        DATA(t314) = VALUE string( ).
                        DATA(t315) = t225.
                        t314 = t315->value.
                        DATA(t316) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t316->has = abap_true.
                        t316->value = t314.
                        t312 = t316.
                      ELSE.
                        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t317.
                        t312 = t317.
                      ENDIF.
                      DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t318.
                      t311 = zcl_lnt_void_type=>get_db65( i_voided = t312 i_qualified_name = t318 ).
                      t310 = t311.
                      DATA t319 TYPE REF TO zif_lnt_object.
                      CLEAR t319.
                      DATA t320 TYPE REF TO zif_lnt_object.
                      CLEAR t320.
                      t319 = t320.
                      t309 = NEW zcl_lnt_ilookup_result( i_type_9913 = t310 i_object_19cd = t319 ).
                      CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
                      t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t321.
                      IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t321 ).
                      ENDIF.
                      CREATE OBJECT t309->zlnt_json_ownkeys_70e5fd461788.
                      t309->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t322) = |type|.
                      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t323.
                      IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
                      ENDIF.
                      t289 = t309.
                    ENDIF.
                    t268 = t289.
                  ENDIF.
                  t250 = t268.
                  t232 = t250.
                ENDIF.
                t224 = t232.
                t219 = t224.
              ENDIF.
              t209 = t219.
              t188 = t209.
            ENDIF.
            t170 = t188.
            t152 = t170.
          ENDIF.
          t136 = t152.
          t135 = t136->zlnt_view_read_sr_9be58e2d4893( ).
          t79 = t135.
        ENDIF.
      ELSE.
        DATA t324 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t324.
        DATA(t325) = |todo, FORM STRUCTURES typing|.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        t324 = NEW zcl_lnt_unknown_type( i_error = t325 i_qualified_name = t326 ).
        t79 = t324.
      ENDIF.
      DATA t327 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t327.
      DATA(t328) = t23.
      DATA(t329) = VALUE string( ).
      DATA(t330) = t2.
      t329 = t330->filename.
      DATA t331 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t331.
      DATA(t332) = t79.
      DATA t333 TYPE REF TO object.
      CLEAR t333.
      t333 = t332.
      t331 ?= t333.
      DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t334.
      DATA(t335) = abap_true.
      IF t335 = abap_true.
        DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t336.
        DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t337.
        DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t338.
        CREATE OBJECT t338.
        t337 = t338.
        DATA(t339) = t337.
        DATA(t340) = |form_parameter|.
        t339->load( ).
        APPEND t340 TO t339->items.
        t339->save( ).
        DATA(t341) = t337.
        DATA(t342) = |form_parameter_structure|.
        t341->load( ).
        APPEND t342 TO t341->items.
        t341->save( ).
        DATA(t343) = t337.
        t336 = t343.
        t334 = t336.
      ELSE.
        DATA t344 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t344.
        t334 = t344.
      ENDIF.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t345.
      t327 = NEW zcl_lnt_typed_identifier( i_token = t328 i_filename = t329 i_type_9913 = t331 i_meta = t334 i_value = t345 ).
      result = t327.
      RETURN.
    ENDIF.
    DATA(t346) = VALUE abap_bool( ).
    DATA(t347) = VALUE abap_bool( ).
    DATA(t348) = VALUE i( ).
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t350.
    DATA t351 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t351.
    DATA(t352) = t1.
    t351 = t352.
    DATA t353 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t353.
    DATA(t354) = t351.
    t353 = t354->children.
    t350 = t353.
    t349 ?= t350.
    t349->load( ).
    t348 = lines( t349->items ).
    DATA(t355) = 1.
    t347 = xsdbool( t348 = t355 ).
    t346 = t347.
    IF t347 = abap_true.
      DATA(t356) = VALUE abap_bool( ).
      DATA(t357) = t23.
      t356 = xsdbool( t357 IS BOUND ).
      t346 = t356.
    ENDIF.
    IF t346 = abap_true.
      DATA t358 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t358.
      DATA(t359) = t23.
      DATA(t360) = VALUE string( ).
      DATA(t361) = t2.
      t360 = t361->filename.
      DATA t362 TYPE REF TO zcl_lnt_any_type.
      CLEAR t362.
      DATA t363 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t363.
      t362 = zcl_lnt_any_type=>get_db65( i_input_967e = t363 ).
      DATA t364 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t364.
      DATA(t365) = abap_true.
      IF t365 = abap_true.
        DATA t366 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t366.
        DATA t367 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t367.
        DATA t368 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t368.
        CREATE OBJECT t368.
        t367 = t368.
        DATA(t369) = t367.
        DATA(t370) = |form_parameter|.
        t369->load( ).
        APPEND t370 TO t369->items.
        t369->save( ).
        DATA(t371) = t367.
        t366 = t371.
        t364 = t366.
      ELSE.
        DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t372.
        t364 = t372.
      ENDIF.
      DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t373.
      t358 = NEW zcl_lnt_typed_identifier( i_token = t359 i_filename = t360 i_type_9913 = t362 i_meta = t364 i_value = t373 ).
      result = t358.
      RETURN.
    ENDIF.
    DATA t374 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t374.
    DATA t375 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t375.
    DATA t376 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t376.
    DATA(t377) = t2.
    t376 = NEW zcl_lnt_basic_types( i_input_967e = t377 ).
    DATA(t378) = t1.
    DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t379.
    t375 = t376->parse_type( i_node = t378 i_qualified_name = t379 ).
    t374 = t375.
    DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t383.
    DATA t384 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t384.
    DATA t385 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t385.
    DATA(t386) = t1.
    DATA(t387) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t385 = t386->find_first_expression( i_type_9913 = t387 ).
    t384 = t385.
    DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t388.
    DATA(t389) = VALUE abap_bool( ).
    DATA(t390) = t384.
    IF t390 IS INITIAL.
      t389 = abap_true.
    ENDIF.
    IF t389 = abap_true.
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t391.
      t388 = t391.
    ELSE.
      DATA(t392) = VALUE string( ).
      DATA t393 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t393.
      DATA(t394) = t384.
      t393 = t394.
      t392 = t393->concat_tokens( ).
      DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t395->has = abap_true.
      t395->value = t392.
      t388 = t395.
    ENDIF.
    t383 = t388.
    t382 = t383.
    DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t396.
    DATA(t397) = VALUE abap_bool( ).
    DATA(t398) = t382.
    IF t398 IS INITIAL.
      t397 = abap_true.
    ELSEIF t398->has = abap_false.
      t397 = abap_true.
    ENDIF.
    IF t397 = abap_true.
      DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t399.
      t396 = t399.
    ELSE.
      DATA(t400) = VALUE string( ).
      DATA(t401) = VALUE string( ).
      DATA(t402) = t382.
      t401 = t402->value.
      DATA(t403) = strlen( t401 ).
      t400 = t401.
      IF t400 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t400 TO UPPER CASE.
      ELSE.
        t400 = zlnt_runtime_uppe_91169605024d=>full( t400 ).
      ENDIF.
      DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t404->has = abap_true.
      t404->value = t400.
      t396 = t404.
    ENDIF.
    t381 = t396.
    t380 = t381.
    DATA(t405) = VALUE abap_bool( ).
    DATA(t406) = VALUE abap_bool( ).
    DATA(t407) = VALUE abap_bool( ).
    DATA t408 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t408.
    DATA t409 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t409.
    DATA(t410) = t1.
    DATA(t411) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    t409 = t410->find_first_expression( i_type_9913 = t411 ).
    t408 = t409.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    t412 = t413.
    DATA(t414) = VALUE abap_bool( ).
    DATA(t415) = VALUE abap_bool( ).
    DATA(t416) = t408.
    IF t416 IS INITIAL.
      t415 = abap_true.
    ENDIF.
    t414 = xsdbool( t415 = abap_false ).
    t407 = t414.
    t406 = t407.
    IF t407 = abap_false.
      DATA(t417) = VALUE abap_bool( ).
      DATA t418 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t418.
      DATA t419 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t419.
      DATA(t420) = t1.
      DATA(t421) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
      t419 = t420->find_first_expression( i_type_9913 = t421 ).
      t418 = t419.
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t422.
      DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t423.
      t422 = t423.
      DATA(t424) = VALUE abap_bool( ).
      DATA(t425) = VALUE abap_bool( ).
      DATA(t426) = t418.
      IF t426 IS INITIAL.
        t425 = abap_true.
      ENDIF.
      t424 = xsdbool( t425 = abap_false ).
      t417 = t424.
      t406 = t417.
    ENDIF.
    t405 = t406.
    DATA(t427) = VALUE abap_bool( ).
    DATA(t428) = t405.
    DATA(t429) = abap_false.
    t427 = xsdbool( t428 = t429 ).
    IF t427 = abap_true.
      DATA(t430) = VALUE abap_bool( ).
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = t380.
      DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t433.
      DATA(t434) = abap_true.
      IF t434 = abap_true.
        DATA(t435) = |C|.
        DATA(t436) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t436->has = abap_true.
        t436->value = t435.
        t433 = t436.
      ELSE.
        DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t437.
        t433 = t437.
      ENDIF.
      DATA(t438) = VALUE abap_bool( ).
      DATA(t439) = VALUE abap_bool( ).
      IF t432 IS BOUND.
        t438 = t432->has.
      ENDIF.
      IF t433 IS BOUND.
        t439 = t433->has.
      ENDIF.
      IF t438 = t439.
        IF t438 = abap_false.
          t431 = abap_true.
        ELSEIF t432->value = t433->value.
          t431 = abap_true.
        ENDIF.
      ENDIF.
      t430 = t431.
      IF t431 = abap_true.
        DATA(t440) = VALUE abap_bool( ).
        DATA(t441) = t374.
        t440 = xsdbool( t441 IS BOUND AND t441 IS INSTANCE OF zcl_lnt_character_type ).
        t430 = t440.
      ENDIF.
      IF t430 = abap_true.
        DATA(t442) = CAST zcl_lnt_c_generic_type( zcl_lnt_c_generic_type=>get_db65( ) ).
        t374 = t442.
      ELSE.
        DATA(t443) = VALUE abap_bool( ).
        DATA(t444) = VALUE abap_bool( ).
        DATA(t445) = t380.
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t446.
        DATA(t447) = abap_true.
        IF t447 = abap_true.
          DATA(t448) = |X|.
          DATA(t449) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t449->has = abap_true.
          t449->value = t448.
          t446 = t449.
        ELSE.
          DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t450.
          t446 = t450.
        ENDIF.
        DATA(t451) = VALUE abap_bool( ).
        DATA(t452) = VALUE abap_bool( ).
        IF t445 IS BOUND.
          t451 = t445->has.
        ENDIF.
        IF t446 IS BOUND.
          t452 = t446->has.
        ENDIF.
        IF t451 = t452.
          IF t451 = abap_false.
            t444 = abap_true.
          ELSEIF t445->value = t446->value.
            t444 = abap_true.
          ENDIF.
        ENDIF.
        t443 = t444.
        IF t444 = abap_true.
          DATA(t453) = VALUE abap_bool( ).
          DATA(t454) = t374.
          t453 = xsdbool( t454 IS BOUND AND t454 IS INSTANCE OF zcl_lnt_hex_type ).
          t443 = t453.
        ENDIF.
        IF t443 = abap_true.
          DATA(t455) = CAST zcl_lnt_x_generic_type( zcl_lnt_x_generic_type=>get_db65( ) ).
          t374 = t455.
        ELSE.
          DATA(t456) = VALUE abap_bool( ).
          DATA(t457) = VALUE abap_bool( ).
          DATA(t458) = t380.
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t459.
          DATA(t460) = abap_true.
          IF t460 = abap_true.
            DATA(t461) = |P|.
            DATA(t462) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t462->has = abap_true.
            t462->value = t461.
            t459 = t462.
          ELSE.
            DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t463.
            t459 = t463.
          ENDIF.
          DATA(t464) = VALUE abap_bool( ).
          DATA(t465) = VALUE abap_bool( ).
          IF t458 IS BOUND.
            t464 = t458->has.
          ENDIF.
          IF t459 IS BOUND.
            t465 = t459->has.
          ENDIF.
          IF t464 = t465.
            IF t464 = abap_false.
              t457 = abap_true.
            ELSEIF t458->value = t459->value.
              t457 = abap_true.
            ENDIF.
          ENDIF.
          t456 = t457.
          IF t457 = abap_true.
            DATA(t466) = VALUE abap_bool( ).
            DATA(t467) = t374.
            t466 = xsdbool( t467 IS BOUND AND t467 IS INSTANCE OF zcl_lnt_packed_type ).
            t456 = t466.
          ENDIF.
          IF t456 = abap_true.
            DATA(t468) = CAST zcl_lnt_p_generic_type( zcl_lnt_p_generic_type=>get_db65( ) ).
            t374 = t468.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t469) = VALUE abap_bool( ).
    DATA(t470) = VALUE abap_bool( ).
    DATA(t471) = t23.
    t470 = xsdbool( t471 IS BOUND ).
    t469 = t470.
    IF t470 = abap_true.
      DATA(t472) = VALUE abap_bool( ).
      DATA(t473) = t374.
      t472 = xsdbool( t473 IS BOUND ).
      t469 = t472.
    ENDIF.
    IF t469 = abap_true.
      DATA t474 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t474.
      DATA(t475) = t23.
      DATA(t476) = VALUE string( ).
      DATA(t477) = t2.
      t476 = t477->filename.
      DATA t478 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t478.
      DATA(t479) = t374.
      t478 = t479.
      DATA t480 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t480.
      DATA(t481) = abap_true.
      IF t481 = abap_true.
        DATA t482 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t482.
        DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t483.
        DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t484.
        CREATE OBJECT t484.
        t483 = t484.
        DATA(t485) = t483.
        DATA(t486) = |form_parameter|.
        t485->load( ).
        APPEND t486 TO t485->items.
        t485->save( ).
        DATA(t487) = t483.
        t482 = t487.
        t480 = t482.
      ELSE.
        DATA t488 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t488.
        t480 = t488.
      ENDIF.
      DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t489.
      t474 = NEW zcl_lnt_typed_identifier( i_token = t475 i_filename = t476 i_type_9913 = t478 i_meta = t480 i_value = t489 ).
      result = t474.
      RETURN.
    ENDIF.
    DATA(t490) = VALUE abap_bool( ).
    DATA(t491) = t23.
    t490 = xsdbool( t491 IS BOUND ).
    IF t490 = abap_true.
      DATA t492 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t492.
      DATA(t493) = t23.
      DATA(t494) = VALUE string( ).
      DATA(t495) = t2.
      t494 = t495->filename.
      DATA t496 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t496.
      DATA(t497) = |FormParam, todo|.
      DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t498.
      t496 = NEW zcl_lnt_unknown_type( i_error = t497 i_qualified_name = t498 ).
      DATA t499 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t499.
      DATA(t500) = abap_true.
      IF t500 = abap_true.
        DATA t501 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t501.
        DATA t502 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t502.
        DATA t503 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t503.
        CREATE OBJECT t503.
        t502 = t503.
        DATA(t504) = t502.
        DATA(t505) = |form_parameter|.
        t504->load( ).
        APPEND t505 TO t504->items.
        t504->save( ).
        DATA(t506) = t502.
        t501 = t506.
        t499 = t501.
      ELSE.
        DATA t507 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t507.
        t499 = t507.
      ENDIF.
      DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t508.
      t492 = NEW zcl_lnt_typed_identifier( i_token = t493 i_filename = t494 i_type_9913 = t496 i_meta = t499 i_value = t508 ).
      result = t492.
      RETURN.
    ENDIF.
    DATA t509 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
    CLEAR t509.
    DATA t510 TYPE REF TO zcx_lnt_assert_error.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t511.
    DATA(t512) = abap_true.
    IF t512 = abap_true.
      DATA(t513) = |FormParam, unexpected node|.
      DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t514->has = abap_true.
      t514->value = t513.
      t511 = t514.
    ELSE.
      DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t515.
      t511 = t515.
    ENDIF.
    t510 = NEW zcx_lnt_assert_error( i_message_26cb = t511 ).
    t509 = NEW #( ).
    t509->payload = t510.
    CLEAR t509->source_value.
    IF t510 IS BOUND.
      DATA t516 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t516.
      DATA t517 TYPE REF TO object.
      CLEAR t517.
      CLEAR t516.
      t517 = t510.
      TRY.
          t509->source_value ?= t517.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t509->source_value IS NOT BOUND.
        TRY.
            t516 ?= t510.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t516 IS BOUND.
          t509->source_value = t516->source( ).
        ENDIF.
        IF t509->source_value IS NOT BOUND.
          CREATE OBJECT t509->source_value.
          t509->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t509->source_value->oval = t510.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t509.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d808_902ac2ef73c2.
  ENDMETHOD.
ENDCLASS.
