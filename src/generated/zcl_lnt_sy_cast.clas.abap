* TS: src/abap/5_syntax/expressions/cast.ts:11:1 Cast
CLASS zcl_lnt_sy_cast DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cast IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t4 ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zcl_lnt_expression_node( t9 ).
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE string.
      DATA(t16) = |Cast, source node not found|.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = CAST zcl_lnt_syntax_input( t2 ).
      t17 = t18->issues.
      DATA t19 TYPE REF TO zcl_lnt_issue.
      DATA(t20) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t22) = CAST zcl_lnt_expression_node( t1 ).
      t21 = t22->get_first_token( ).
      DATA(t23) = t15.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t24.
      t19 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t20 i_token = t21 i_message_26cb = t23 i_fix = t24 ).
      APPEND t19 TO t17->items.
      DATA t25 TYPE REF TO zcl_lnt_void_type.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA(t27) = abap_true.
      IF t27 = abap_true.
        DATA(t28) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t29->has = abap_true.
        t29->value = t28.
        t26 = t29.
      ELSE.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        t26 = t30.
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t25 = zcl_lnt_void_type=>get_db65( i_voided = t26 i_qualified_name = t31 ).
      result = t25.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = CAST zcl_lnt_expression_node( t4 ).
      t36 = t37.
      t34 = t36.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    DATA(t39) = CAST zcl_lnt_syntax_input( t2 ).
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t43.
    t33 = zcl_lnt_sy_source=>run_syntax( i_node = t34 i_input_967e = t39 i_target_type = t40 i_write_reference = t41 i_allow_generic_deference = t42 i_read_reference = t43 ).
    t32 = t33.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t45.
    t44 = t45.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    DATA(t48) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
    t47 = t48->find_direct_expression( i_type_9913 = t49 ).
    t46 = t47.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    DATA(t53) = CAST zcl_lnt_expression_node( t46 ).
    t52 = t53.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t54.
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = CAST zcl_lnt_expression_node( t52 ).
    IF t56 IS INITIAL.
      t55 = abap_true.
    ENDIF.
    IF t55 = abap_true.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      t54 = t57.
    ELSE.
      DATA t58 TYPE string.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      DATA(t60) = CAST zcl_lnt_expression_node( t52 ).
      t59 = t60.
      t58 = t59->concat_tokens( ).
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t58.
      t54 = t61.
    ENDIF.
    t51 = t54.
    t50 = t51.
    DATA(t62) = VALUE abap_bool( ).
    DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
    t63 = t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    t65 = t66.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = CAST zlnt_runtime_opti_4ba3bdccd169( t63 ).
    IF t68 IS INITIAL.
      t67 = abap_true.
    ELSEIF t68->has = abap_false.
      t67 = abap_true.
    ENDIF.
    t62 = t67.
    IF t62 = abap_true.
      DATA t69 TYPE string.
      DATA(t70) = |Cast, child TypeNameOrInfer not found|.
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t72) = CAST zcl_lnt_syntax_input( t2 ).
      t71 = t72->issues.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA(t74) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t76) = CAST zcl_lnt_expression_node( t1 ).
      t75 = t76->get_first_token( ).
      DATA(t77) = t69.
      DATA t78 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t78.
      t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t74 i_token = t75 i_message_26cb = t77 i_fix = t78 ).
      APPEND t73 TO t71->items.
      DATA t79 TYPE REF TO zcl_lnt_void_type.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = abap_true.
      IF t81 = abap_true.
        DATA(t82) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t82.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t80 = t84.
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      t79 = zcl_lnt_void_type=>get_db65( i_voided = t80 i_qualified_name = t85 ).
      result = t79.
      RETURN.
    ELSE.
      DATA t86 TYPE abap_bool.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE string.
      DATA(t89) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
      t88 = t89->value.
      DATA(t90) = |#|.
      t87 = xsdbool( t88 = t90 ).
      t86 = t87.
      IF t87 = abap_true.
        DATA t91 TYPE abap_bool.
        DATA(t92) = CAST zcl_lnt_abstract_type( t3 ).
        t91 = xsdbool( t92 IS BOUND ).
        t86 = t91.
      ENDIF.
      IF t86 = abap_true.
        DATA t93 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t93.
        DATA(t94) = abap_true.
        IF t94 = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t96) = CAST zcl_lnt_abstract_type( t3 ).
          t95 = t96.
          t93 = t95.
        ELSE.
          DATA t97 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t97.
          t93 = t97.
        ENDIF.
        t44 = t93.
      ELSE.
        DATA t98 TYPE abap_bool.
        DATA t99 TYPE string.
        DATA(t100) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
        t99 = t100->value.
        DATA(t101) = |#|.
        t98 = xsdbool( t99 = t101 ).
        IF t98 = abap_true.
          DATA t102 TYPE string.
          DATA(t103) = |Cast, todo, infer type|.
          t102 = t103.
          DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t105) = CAST zcl_lnt_syntax_input( t2 ).
          t104 = t105->issues.
          DATA t106 TYPE REF TO zcl_lnt_issue.
          DATA(t107) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t109) = CAST zcl_lnt_expression_node( t1 ).
          t108 = t109->get_first_token( ).
          DATA(t110) = t102.
          DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t111.
          t106 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t107 i_token = t108 i_message_26cb = t110 i_fix = t111 ).
          APPEND t106 TO t104->items.
          DATA t112 TYPE REF TO zcl_lnt_void_type.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA(t115) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t116->has = abap_true.
            t116->value = t115.
            t113 = t116.
          ELSE.
            DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t117.
            t113 = t117.
          ENDIF.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t112 = zcl_lnt_void_type=>get_db65( i_voided = t113 i_qualified_name = t118 ).
          result = t112.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t119) = VALUE abap_bool( ).
    DATA(t120) = VALUE abap_bool( ).
    DATA t121 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t122) = CAST zcl_lnt_abstract_type( t44 ).
    t121 = t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    t123 = t124.
    DATA(t125) = VALUE abap_bool( ).
    DATA(t126) = CAST zcl_lnt_abstract_type( t121 ).
    IF t126 IS INITIAL.
      t125 = abap_true.
    ENDIF.
    t120 = t125.
    t119 = t120.
    IF t120 = abap_true.
      DATA t127 TYPE abap_bool.
      DATA(t128) = CAST zcl_lnt_expression_node( t46 ).
      t127 = xsdbool( t128 IS BOUND ).
      t119 = t127.
    ENDIF.
    IF t119 = abap_true.
      DATA t129 TYPE REF TO zcl_lnt_basic_types.
      DATA t130 TYPE REF TO zcl_lnt_basic_types.
      DATA(t131) = CAST zcl_lnt_syntax_input( t2 ).
      t130 = NEW zcl_lnt_basic_types( i_input_967e = t131 ).
      t129 = t130.
      DATA t132 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t133) = CAST zcl_lnt_basic_types( t129 ).
      DATA t134 TYPE REF TO zcl_lnt_expression_node.
      DATA(t135) = CAST zcl_lnt_expression_node( t46 ).
      t134 = t135.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      t132 = t133->parse_type( i_node = t134 i_qualified_name = t136 ).
      t44 = t132.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA t140 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t141) = CAST zcl_lnt_abstract_type( t44 ).
      t140 = t141.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      t142 = t143.
      DATA(t144) = VALUE abap_bool( ).
      DATA(t145) = CAST zcl_lnt_abstract_type( t140 ).
      IF t145 IS INITIAL.
        t144 = abap_true.
      ENDIF.
      t139 = t144.
      t138 = t139.
      IF t139 = abap_false.
        DATA t146 TYPE abap_bool.
        DATA(t147) = CAST zcl_lnt_abstract_type( t44 ).
        t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_void_type ).
        t138 = t146.
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        DATA t148 TYPE abap_bool.
        DATA(t149) = CAST zcl_lnt_abstract_type( t44 ).
        t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_unknown_type ).
        t137 = t148.
      ENDIF.
      IF t137 = abap_true.
        DATA t150 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t150.
        DATA t151 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t151.
        DATA t152 TYPE REF TO zcl_lnt_current_scope.
        DATA t153 TYPE REF TO zcl_lnt_current_scope.
        DATA(t154) = CAST zcl_lnt_syntax_input( t2 ).
        t153 = t154->scope.
        t152 = t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        DATA(t157) = abap_true.
        IF t157 = abap_true.
          DATA t158 TYPE string.
          DATA(t159) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
          t158 = t159->value.
          DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t160->has = abap_true.
          t160->value = t158.
          t156 = t160.
        ELSE.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          t156 = t161.
        ENDIF.
        t155 = t156.
        DATA t162 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t162.
        DATA(t163) = VALUE abap_bool( ).
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t165) = CAST zlnt_runtime_opti_4ba3bdccd169( t155 ).
        t164 = t165.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t166 = t167.
        DATA(t168) = VALUE abap_bool( ).
        DATA(t169) = CAST zlnt_runtime_opti_4ba3bdccd169( t164 ).
        IF t169 IS INITIAL.
          t168 = abap_true.
        ELSEIF t169->has = abap_false.
          t168 = abap_true.
        ENDIF.
        t163 = t168.
        IF t163 = abap_true.
          DATA t170 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t170.
          t162 = t170.
        ELSE.
          DATA t171 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t171.
          DATA t172 TYPE REF TO zif_lnt_class_definition.
          CLEAR t172.
          DATA t173 TYPE REF TO zif_lnt_class_definition.
          CLEAR t173.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          DATA(t176) = abap_true.
          IF t176 = abap_true.
            DATA t177 TYPE string.
            DATA(t178) = CAST zlnt_runtime_opti_4ba3bdccd169( t155 ).
            t177 = t178->value.
            DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t179->has = abap_true.
            t179->value = t177.
            t175 = t179.
          ELSE.
            DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t180.
            t175 = t180.
          ENDIF.
          t174 = t175.
          DATA t181 TYPE REF TO zif_lnt_class_definition.
          CLEAR t181.
          DATA(t182) = VALUE abap_bool( ).
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t184) = CAST zlnt_runtime_opti_4ba3bdccd169( t174 ).
          t183 = t184.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          t185 = t186.
          DATA(t187) = VALUE abap_bool( ).
          DATA(t188) = CAST zlnt_runtime_opti_4ba3bdccd169( t183 ).
          IF t188 IS INITIAL.
            t187 = abap_true.
          ELSEIF t188->has = abap_false.
            t187 = abap_true.
          ENDIF.
          t182 = t187.
          IF t182 = abap_true.
            DATA t189 TYPE REF TO zif_lnt_class_definition.
            CLEAR t189.
            t181 = t189.
          ELSE.
            DATA t190 TYPE REF TO zif_lnt_class_definition.
            CLEAR t190.
            DATA t191 TYPE REF TO zif_lnt_class_definition.
            CLEAR t191.
            DATA t192 TYPE REF TO zif_lnt_class_definition.
            CLEAR t192.
            DATA t193 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t195) = CAST zcl_lnt_current_scope( t152 ).
            t194 = t195->current.
            t193 = t194.
            DATA t196 TYPE REF TO zif_lnt_class_definition.
            CLEAR t196.
            DATA(t197) = VALUE abap_bool( ).
            DATA(t198) = CAST zcl_lnt_spaghetti_scope_node( t193 ).
            IF t198 IS INITIAL.
              t197 = abap_true.
            ENDIF.
            IF t197 = abap_true.
              DATA t199 TYPE REF TO zif_lnt_class_definition.
              CLEAR t199.
              t196 = t199.
            ELSE.
              DATA t200 TYPE REF TO zif_lnt_class_definition.
              DATA t201 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t202) = CAST zcl_lnt_spaghetti_scope_node( t193 ).
              t201 = t202.
              DATA t203 TYPE string.
              DATA(t204) = CAST zlnt_runtime_opti_4ba3bdccd169( t174 ).
              t203 = t204->value.
              t200 = t201->find_class_definition( i_name = t203 ).
              t196 = t200.
            ENDIF.
            t192 = t196.
            t191 = t192.
            DATA t205 TYPE REF TO zif_lnt_class_definition.
            CLEAR t205.
            DATA t206 TYPE abap_bool.
            DATA(t207) = CAST zif_lnt_class_definition( t191 ).
            t206 = xsdbool( t207 IS BOUND ).
            IF t206 = abap_true.
              DATA t208 TYPE REF TO zif_lnt_class_definition.
              CLEAR t208.
              DATA(t209) = abap_true.
              IF t209 = abap_true.
                DATA t210 TYPE REF TO zif_lnt_class_definition.
                DATA(t211) = CAST zif_lnt_class_definition( t191 ).
                t210 = t211.
                t208 = t210.
              ELSE.
                DATA t212 TYPE REF TO zif_lnt_class_definition.
                CLEAR t212.
                t208 = t212.
              ENDIF.
              t205 = t208.
            ELSE.
              DATA t213 TYPE REF TO zif_lnt_class_definition.
              CLEAR t213.
              DATA t214 TYPE REF TO zcl_lnt_class.
              CLEAR t214.
              DATA t215 TYPE REF TO zcl_lnt_class.
              CLEAR t215.
              DATA t216 TYPE REF TO zif_lnt_object.
              CLEAR t216.
              DATA t217 TYPE REF TO zif_lnt_registry.
              DATA(t218) = CAST zcl_lnt_current_scope( t152 ).
              t217 = t218->reg.
              DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t219.
              DATA(t220) = abap_true.
              IF t220 = abap_true.
                DATA(t221) = |CLAS|.
                DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t222->has = abap_true.
                t222->value = t221.
                t219 = t222.
              ELSE.
                DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t223.
                t219 = t223.
              ENDIF.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t224.
              DATA(t225) = abap_true.
              IF t225 = abap_true.
                DATA t226 TYPE string.
                DATA(t227) = CAST zlnt_runtime_opti_4ba3bdccd169( t174 ).
                t226 = t227->value.
                DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t228->has = abap_true.
                t228->value = t226.
                t224 = t228.
              ELSE.
                DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t229.
                t224 = t229.
              ENDIF.
              t216 = t217->get_object( i_type_9913 = t219 i_name = t224 ).
              DATA t230 TYPE REF TO object.
              t230 = t216.
              t215 ?= t230.
              t214 = t215.
              DATA t231 TYPE REF TO zif_lnt_class_definition.
              CLEAR t231.
              DATA t232 TYPE abap_bool.
              DATA(t233) = CAST zcl_lnt_class( t214 ).
              t232 = xsdbool( t233 IS BOUND ).
              IF t232 = abap_true.
                DATA t234 TYPE REF TO zif_lnt_class_definition.
                DATA t235 TYPE REF TO zcl_lnt_class.
                DATA(t236) = CAST zcl_lnt_class( t214 ).
                t235 = t236.
                t234 = t235->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t231 = t234.
              ELSE.
                DATA t237 TYPE REF TO zif_lnt_class_definition.
                CLEAR t237.
                t231 = t237.
              ENDIF.
              t213 = t231.
              t205 = t213.
            ENDIF.
            t190 = t205.
            t181 = t190.
          ENDIF.
          t173 = t181.
          t172 = t173.
          DATA t238 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t238.
          DATA t239 TYPE abap_bool.
          DATA(t240) = CAST zif_lnt_class_definition( t172 ).
          t239 = xsdbool( t240 IS BOUND ).
          IF t239 = abap_true.
            DATA t241 TYPE REF TO zif_lnt_interface_definition.
            DATA t242 TYPE REF TO zif_lnt_class_definition.
            DATA(t243) = CAST zif_lnt_class_definition( t172 ).
            t242 = t243.
            t241 ?= t242.
            t238 = t241.
          ELSE.
            DATA t244 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t244.
            DATA t245 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t245.
            DATA t246 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t246.
            DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t247.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t248.
            DATA(t249) = abap_true.
            IF t249 = abap_true.
              DATA t250 TYPE string.
              DATA(t251) = CAST zlnt_runtime_opti_4ba3bdccd169( t155 ).
              t250 = t251->value.
              DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t252->has = abap_true.
              t252->value = t250.
              t248 = t252.
            ELSE.
              DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t253.
              t248 = t253.
            ENDIF.
            t247 = t248.
            DATA t254 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t254.
            DATA(t255) = VALUE abap_bool( ).
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t257) = CAST zlnt_runtime_opti_4ba3bdccd169( t247 ).
            t256 = t257.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            t258 = t259.
            DATA(t260) = VALUE abap_bool( ).
            DATA(t261) = CAST zlnt_runtime_opti_4ba3bdccd169( t256 ).
            IF t261 IS INITIAL.
              t260 = abap_true.
            ELSEIF t261->has = abap_false.
              t260 = abap_true.
            ENDIF.
            t255 = t260.
            IF t255 = abap_true.
              DATA t262 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t262.
              t254 = t262.
            ELSE.
              DATA t263 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t263.
              DATA t264 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t264.
              DATA t265 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t265.
              DATA t266 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t267 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t268) = CAST zcl_lnt_current_scope( t152 ).
              t267 = t268->current.
              t266 = t267.
              DATA t269 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t269.
              DATA(t270) = VALUE abap_bool( ).
              DATA(t271) = CAST zcl_lnt_spaghetti_scope_node( t266 ).
              IF t271 IS INITIAL.
                t270 = abap_true.
              ENDIF.
              IF t270 = abap_true.
                DATA t272 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t272.
                t269 = t272.
              ELSE.
                DATA t273 TYPE REF TO zif_lnt_interface_definition.
                DATA t274 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t275) = CAST zcl_lnt_spaghetti_scope_node( t266 ).
                t274 = t275.
                DATA t276 TYPE string.
                DATA(t277) = CAST zlnt_runtime_opti_4ba3bdccd169( t247 ).
                t276 = t277->value.
                t273 = t274->find_interface_definition( i_name = t276 ).
                t269 = t273.
              ENDIF.
              t265 = t269.
              t264 = t265.
              DATA t278 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t278.
              DATA t279 TYPE abap_bool.
              DATA(t280) = CAST zif_lnt_interface_definition( t264 ).
              t279 = xsdbool( t280 IS BOUND ).
              IF t279 = abap_true.
                DATA t281 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t281.
                DATA(t282) = abap_true.
                IF t282 = abap_true.
                  DATA t283 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t284) = CAST zif_lnt_interface_definition( t264 ).
                  t283 = t284.
                  t281 = t283.
                ELSE.
                  DATA t285 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t285.
                  t281 = t285.
                ENDIF.
                t278 = t281.
              ELSE.
                DATA t286 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t286.
                DATA t287 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t287.
                DATA t288 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t288.
                DATA t289 TYPE REF TO zif_lnt_object.
                CLEAR t289.
                DATA t290 TYPE REF TO zif_lnt_registry.
                DATA(t291) = CAST zcl_lnt_current_scope( t152 ).
                t290 = t291->reg.
                DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t292.
                DATA(t293) = abap_true.
                IF t293 = abap_true.
                  DATA(t294) = |INTF|.
                  DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t295->has = abap_true.
                  t295->value = t294.
                  t292 = t295.
                ELSE.
                  DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t296.
                  t292 = t296.
                ENDIF.
                DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t297.
                DATA(t298) = abap_true.
                IF t298 = abap_true.
                  DATA t299 TYPE string.
                  DATA(t300) = CAST zlnt_runtime_opti_4ba3bdccd169( t247 ).
                  t299 = t300->value.
                  DATA(t301) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t301->has = abap_true.
                  t301->value = t299.
                  t297 = t301.
                ELSE.
                  DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t302.
                  t297 = t302.
                ENDIF.
                t289 = t290->get_object( i_type_9913 = t292 i_name = t297 ).
                DATA t303 TYPE REF TO object.
                t303 = t289.
                t288 ?= t303.
                t287 = t288.
                DATA t304 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t304.
                DATA t305 TYPE abap_bool.
                DATA(t306) = CAST zcl_lnt_ob_interface( t287 ).
                t305 = xsdbool( t306 IS BOUND ).
                IF t305 = abap_true.
                  DATA t307 TYPE REF TO zif_lnt_interface_definition.
                  DATA t308 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t309 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t310) = CAST zcl_lnt_ob_interface( t287 ).
                  t309 = t310.
                  t308 = t309.
                  DATA t311 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t312) = CAST zcl_lnt_ob_interface( t308 ).
                  t311 = t312->def.
                  t307 = t311.
                  t304 = t307.
                ELSE.
                  DATA t313 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t313.
                  t304 = t313.
                ENDIF.
                t286 = t304.
                t278 = t286.
              ENDIF.
              t263 = t278.
              t254 = t263.
            ENDIF.
            t246 = t254.
            t245 = t246.
            DATA t314 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t314.
            DATA t315 TYPE abap_bool.
            DATA(t316) = CAST zif_lnt_interface_definition( t245 ).
            t315 = xsdbool( t316 IS BOUND ).
            IF t315 = abap_true.
              DATA t317 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t317.
              DATA(t318) = abap_true.
              IF t318 = abap_true.
                DATA t319 TYPE REF TO zif_lnt_interface_definition.
                DATA(t320) = CAST zif_lnt_interface_definition( t245 ).
                t319 = t320.
                t317 = t319.
              ELSE.
                DATA t321 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t321.
                t317 = t321.
              ENDIF.
              t314 = t317.
            ELSE.
              DATA t322 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t322.
              t314 = t322.
            ENDIF.
            t244 = t314.
            t238 = t244.
          ENDIF.
          t171 = t238.
          t162 = t171.
        ENDIF.
        t151 = t162.
        t150 = t151.
        DATA t323 TYPE abap_bool.
        DATA(t324) = CAST zif_lnt_interface_definition( t150 ).
        t323 = xsdbool( t324 IS BOUND ).
        IF t323 = abap_true.
          DATA t325 TYPE REF TO zcl_lnt_object_reference_type.
          CLEAR t325.
          DATA t326 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t327 TYPE REF TO zif_lnt_interface_definition.
          DATA(t328) = CAST zif_lnt_interface_definition( t150 ).
          t327 = t328.
          t326 ?= t327.
          DATA t329 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t329.
          DATA(t330) = abap_true.
          IF t330 = abap_true.
            DATA t331 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t331.
            DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t332.
            DATA(t333) = abap_true.
            IF t333 = abap_true.
              DATA t334 TYPE string.
              DATA(t335) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
              t334 = t335->value.
              DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t336->has = abap_true.
              t336->value = t334.
              t332 = t336.
            ELSE.
              DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t337.
              t332 = t337.
            ENDIF.
            DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t338.
            DATA t339 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t339.
            DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t340.
            DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t341.
            DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t342.
            t331 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t332 i_conversion_exit = t338 i_derived_from_constant = t339 i_ddic_name = t340 i_rtti_name = t341 i_description = t342 ).
            t329 = t331.
          ELSE.
            DATA t343 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t343.
            t329 = t343.
          ENDIF.
          t325 = NEW zcl_lnt_object_reference_type( i_id = t326 i_extra = t329 ).
          t44 = t325.
          DATA t344 TYPE REF TO zcl_lnt_current_scope.
          DATA(t345) = CAST zcl_lnt_syntax_input( t2 ).
          t344 = t345->scope.
          DATA t346 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t346.
          DATA(t347) = abap_true.
          IF t347 = abap_true.
            DATA t348 TYPE REF TO zcl_lnt_abstract_token.
            DATA t349 TYPE REF TO zcl_lnt_expression_node.
            DATA(t350) = CAST zcl_lnt_expression_node( t46 ).
            t349 = t350.
            t348 = t349->get_first_token( ).
            t346 = t348.
          ELSE.
            DATA t351 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t351.
            t346 = t351.
          ENDIF.
          DATA t352 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t352.
          DATA(t353) = abap_true.
          IF t353 = abap_true.
            DATA t354 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t355 TYPE REF TO zif_lnt_interface_definition.
            DATA(t356) = CAST zif_lnt_interface_definition( t150 ).
            t355 = t356.
            t354 ?= t355.
            t352 = t354.
          ELSE.
            DATA t357 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t357.
            t352 = t357.
          ENDIF.
          DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t359) = |Object|.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t358->sval = t359.
          DATA t360 TYPE string.
          DATA(t361) = CAST zcl_lnt_syntax_input( t2 ).
          t360 = t361->filename.
          DATA t362 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t362.
          t344->add_reference( i_usage = t346 i_referencing = t352 i_type_9913 = t358 i_filename = t360 i_extra = t362 ).
        ENDIF.
      ELSE.
        DATA t363 TYPE REF TO zcl_lnt_data_reference.
        CLEAR t363.
        DATA t364 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t365) = CAST zcl_lnt_abstract_type( t44 ).
        t364 = t365.
        DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t366.
        DATA(t367) = abap_true.
        IF t367 = abap_true.
          DATA t368 TYPE string.
          DATA(t369) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
          t368 = t369->value.
          DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t370->has = abap_true.
          t370->value = t368.
          t366 = t370.
        ELSE.
          DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t371.
          t366 = t371.
        ENDIF.
        t363 = NEW zcl_lnt_data_reference( i_type_9913 = t364 i_qualified_name = t366 ).
        t44 = t363.
      ENDIF.
      DATA(t372) = VALUE abap_bool( ).
      DATA(t373) = VALUE abap_bool( ).
      DATA t374 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t375) = CAST zcl_lnt_abstract_type( t44 ).
      t374 = t375.
      DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t377.
      t376 = t377.
      DATA(t378) = VALUE abap_bool( ).
      DATA(t379) = CAST zcl_lnt_abstract_type( t374 ).
      IF t379 IS INITIAL.
        t378 = abap_true.
      ENDIF.
      t373 = t378.
      t372 = t373.
      IF t373 = abap_true.
        DATA(t380) = VALUE abap_bool( ).
        DATA(t381) = VALUE abap_bool( ).
        DATA t382 TYPE REF TO zcl_lnt_ddic.
        DATA t383 TYPE REF TO zcl_lnt_ddic.
        DATA t384 TYPE REF TO zcl_lnt_current_scope.
        DATA t385 TYPE REF TO zcl_lnt_current_scope.
        DATA(t386) = CAST zcl_lnt_syntax_input( t2 ).
        t385 = t386->scope.
        t384 = t385.
        DATA t387 TYPE REF TO zcl_lnt_ddic.
        DATA t388 TYPE REF TO zif_lnt_registry.
        DATA(t389) = CAST zcl_lnt_current_scope( t384 ).
        t388 = t389->reg.
        t387 = NEW zcl_lnt_ddic( i_reg_f149 = t388 ).
        t383 = t387.
        t382 = t383.
        DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t390.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
        DATA(t392) = abap_true.
        IF t392 = abap_true.
          DATA t393 TYPE string.
          DATA(t394) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
          t393 = t394->value.
          DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t395->has = abap_true.
          t395->value = t393.
          t391 = t395.
        ELSE.
          DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t396.
          t391 = t396.
        ENDIF.
        t390 = t391.
        DATA(t397) = VALUE abap_bool( ).
        DATA(t398) = VALUE abap_bool( ).
        DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t400) = CAST zlnt_runtime_opti_4ba3bdccd169( t390 ).
        t399 = t400.
        DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t402.
        t401 = t402.
        DATA(t403) = VALUE abap_bool( ).
        DATA(t404) = CAST zlnt_runtime_opti_4ba3bdccd169( t399 ).
        IF t404 IS INITIAL.
          t403 = abap_true.
        ELSEIF t404->has = abap_false.
          t403 = abap_true.
        ENDIF.
        t398 = t403.
        IF t398 = abap_true.
          DATA(t405) = abap_true.
          t397 = t405.
        ELSE.
          DATA t406 TYPE abap_bool.
          DATA t407 TYPE REF TO zif_lnt_registry.
          DATA(t408) = CAST zcl_lnt_ddic( t382 ).
          t407 = t408->reg.
          DATA t409 TYPE string.
          DATA(t410) = CAST zlnt_runtime_opti_4ba3bdccd169( t390 ).
          t409 = t410->value.
          t406 = t407->in_error_namespace( i_name = t409 ).
          t397 = t406.
        ENDIF.
        t381 = t397.
        DATA(t411) = abap_false.
        t380 = xsdbool( t381 = t411 ).
        t372 = t380.
      ENDIF.
      IF t372 = abap_true.
        DATA t412 TYPE REF TO zcl_lnt_void_type.
        CLEAR t412.
        DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t413.
        DATA(t414) = abap_true.
        IF t414 = abap_true.
          DATA t415 TYPE string.
          DATA(t416) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
          t415 = t416->value.
          DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t417->has = abap_true.
          t417->value = t415.
          t413 = t417.
        ELSE.
          DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t418.
          t413 = t418.
        ENDIF.
        DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t419.
        t412 = zcl_lnt_void_type=>get_db65( i_voided = t413 i_qualified_name = t419 ).
        t44 = t412.
      ELSE.
        DATA(t420) = VALUE abap_bool( ).
        DATA t421 TYPE string.
        DATA t422 TYPE string.
        DATA(t423) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
        t422 = t423->value.
        DATA(t424) = strlen( t422 ).
        t421 = t422.
        IF t421 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t421 TO UPPER CASE.
        ELSE.
          t421 = zlnt_runtime_uppe_91169605024d=>full( t421 ).
        ENDIF.
        DATA(t425) = |OBJECT|.
        t420 = xsdbool( t421 = t425 ).
        IF t420 = abap_true.
          DATA t426 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
          DATA t427 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t427.
          t426 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t427 ).
          result = t426.
          RETURN.
        ELSE.
          DATA(t428) = VALUE abap_bool( ).
          DATA t429 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t430) = CAST zcl_lnt_abstract_type( t44 ).
          t429 = t430.
          DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t432.
          t431 = t432.
          DATA(t433) = VALUE abap_bool( ).
          DATA(t434) = CAST zcl_lnt_abstract_type( t429 ).
          IF t434 IS INITIAL.
            t433 = abap_true.
          ENDIF.
          t428 = t433.
          IF t428 = abap_true.
            DATA t435 TYPE string.
            DATA t436 TYPE string.
            DATA t437 TYPE string.
            DATA(t438) = |Type "|.
            DATA t439 TYPE string.
            DATA(t440) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
            t439 = t440->value.
            DATA(t441) = strlen( t438 ).
            t437 = |{ t438 }{ t439 }|.
            DATA(t442) = |" not found in scope, Cast|.
            DATA(t443) = strlen( t437 ).
            t436 = |{ t437 }{ t442 }|.
            t435 = t436.
            DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t445) = CAST zcl_lnt_syntax_input( t2 ).
            t444 = t445->issues.
            DATA t446 TYPE REF TO zcl_lnt_issue.
            DATA(t447) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t448 TYPE REF TO zcl_lnt_abstract_token.
            DATA t449 TYPE REF TO zcl_lnt_expression_node.
            DATA(t450) = CAST zcl_lnt_expression_node( t46 ).
            t449 = t450.
            t448 = t449->get_first_token( ).
            DATA(t451) = t435.
            DATA t452 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t452.
            t446 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t447 i_token = t448 i_message_26cb = t451 i_fix = t452 ).
            APPEND t446 TO t444->items.
            DATA t453 TYPE REF TO zcl_lnt_void_type.
            CLEAR t453.
            DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t454.
            DATA(t455) = abap_true.
            IF t455 = abap_true.
              DATA(t456) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t457->has = abap_true.
              t457->value = t456.
              t454 = t457.
            ELSE.
              DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t458.
              t454 = t458.
            ENDIF.
            DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t459.
            t453 = zcl_lnt_void_type=>get_db65( i_voided = t454 i_qualified_name = t459 ).
            result = t453.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t460) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t461) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t462) = CAST zcl_lnt_abstract_type( t44 ).
    zcl_lnt_sy_source=>add_if_inferred( i_node = t460 i_input_967e = t461 i_inferred_type = t462 ).
    DATA t463 TYPE abap_bool.
    DATA t464 TYPE abap_bool.
    DATA t465 TYPE REF TO zcl_lnt_type_utils.
    DATA t466 TYPE REF TO zcl_lnt_type_utils.
    DATA t467 TYPE REF TO zcl_lnt_current_scope.
    DATA(t468) = CAST zcl_lnt_syntax_input( t2 ).
    t467 = t468->scope.
    t466 = NEW zcl_lnt_type_utils( i_scope = t467 ).
    t465 = t466.
    DATA t469 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t470) = CAST zcl_lnt_abstract_type( t32 ).
    t469 = t470.
    DATA t471 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t472) = CAST zcl_lnt_abstract_type( t44 ).
    t471 = t472.
    DATA(t473) = abap_true.
    t464 = t473.
    DATA(t474) = abap_false.
    t463 = xsdbool( t464 = t474 ).
    IF t463 = abap_true.
      DATA t475 TYPE string.
      DATA(t476) = |Cast, incompatible types|.
      t475 = t476.
      DATA t477 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t478) = CAST zcl_lnt_syntax_input( t2 ).
      t477 = t478->issues.
      DATA t479 TYPE REF TO zcl_lnt_issue.
      DATA(t480) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t481 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t482) = CAST zcl_lnt_expression_node( t1 ).
      t481 = t482->get_first_token( ).
      DATA(t483) = t475.
      DATA t484 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t484.
      t479 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t480 i_token = t481 i_message_26cb = t483 i_fix = t484 ).
      APPEND t479 TO t477->items.
      DATA t485 TYPE REF TO zcl_lnt_void_type.
      CLEAR t485.
      DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t486.
      DATA(t487) = abap_true.
      IF t487 = abap_true.
        DATA(t488) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t489->has = abap_true.
        t489->value = t488.
        t486 = t489.
      ELSE.
        DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t490.
        t486 = t490.
      ENDIF.
      DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t491.
      t485 = zcl_lnt_void_type=>get_db65( i_voided = t486 i_qualified_name = t491 ).
      result = t485.
      RETURN.
    ENDIF.
    DATA t492 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t493) = CAST zcl_lnt_abstract_type( t44 ).
    t492 = t493.
    result = t492.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d763_566b2c006865.
  ENDMETHOD.
ENDCLASS.
