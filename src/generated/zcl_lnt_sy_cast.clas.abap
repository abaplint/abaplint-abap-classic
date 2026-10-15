* TS: src/abap/5_syntax/expressions/cast.ts:11:1 Cast
CLASS zcl_lnt_sy_cast DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_cast IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE string.
      DATA(t16) = |Cast, source node not found|.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t2.
      t17 = t18->issues.
      DATA t19 TYPE REF TO zcl_lnt_issue.
      DATA(t20) = t2.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t22) = t1.
      t21 = t22->get_first_token( ).
      DATA(t23) = t15.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t24.
      t19 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t20 i_token = t21 i_message_26cb = t23 i_fix = t24 ).
      t17->load( ).
      APPEND t19 TO t17->items.
      t17->save( ).
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
      DATA(t37) = t4.
      t36 = t37.
      t34 = t36.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    DATA(t39) = t2.
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
    DATA(t48) = t1.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    t47 = t48->find_direct_expression( i_type_9913 = t49 ).
    t46 = t47.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    DATA(t53) = t46.
    t52 = t53.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t54.
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = t52.
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
      DATA(t60) = t52.
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
    DATA(t64) = t50.
    t63 = t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    t65 = t66.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = t63.
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
      DATA(t72) = t2.
      t71 = t72->issues.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA(t74) = t2.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t76) = t1.
      t75 = t76->get_first_token( ).
      DATA(t77) = t69.
      DATA t78 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t78.
      t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t74 i_token = t75 i_message_26cb = t77 i_fix = t78 ).
      t71->load( ).
      APPEND t73 TO t71->items.
      t71->save( ).
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
      DATA(t89) = t50.
      t88 = t89->value.
      DATA(t90) = |#|.
      t87 = xsdbool( t88 = t90 ).
      t86 = t87.
      IF t87 = abap_true.
        DATA t91 TYPE abap_bool.
        DATA(t92) = t3.
        t91 = xsdbool( t92 IS BOUND ).
        t86 = t91.
      ENDIF.
      IF t86 = abap_true.
        DATA t93 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t93.
        DATA(t94) = abap_true.
        IF t94 = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t96) = t3.
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
        DATA(t100) = t50.
        t99 = t100->value.
        DATA(t101) = |#|.
        t98 = xsdbool( t99 = t101 ).
        IF t98 = abap_true.
          DATA t102 TYPE string.
          DATA(t103) = |Cast, todo, infer type|.
          t102 = t103.
          DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t105) = t2.
          t104 = t105->issues.
          DATA t106 TYPE REF TO zcl_lnt_issue.
          DATA(t107) = t2.
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t109) = t1.
          t108 = t109->get_first_token( ).
          DATA(t110) = t102.
          DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t111.
          t106 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t107 i_token = t108 i_message_26cb = t110 i_fix = t111 ).
          t104->load( ).
          APPEND t106 TO t104->items.
          t104->save( ).
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
    DATA(t122) = t44.
    t121 = t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    t123 = t124.
    DATA(t125) = VALUE abap_bool( ).
    DATA(t126) = t121.
    IF t126 IS INITIAL.
      t125 = abap_true.
    ENDIF.
    t120 = t125.
    t119 = t120.
    IF t120 = abap_true.
      DATA t127 TYPE abap_bool.
      DATA(t128) = t46.
      t127 = xsdbool( t128 IS BOUND ).
      t119 = t127.
    ENDIF.
    IF t119 = abap_true.
      DATA t129 TYPE REF TO zcl_lnt_basic_types.
      DATA t130 TYPE REF TO zcl_lnt_basic_types.
      DATA(t131) = t2.
      t130 = NEW zcl_lnt_basic_types( i_input_967e = t131 ).
      t129 = t130.
      DATA t132 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t133) = t129.
      DATA t134 TYPE REF TO zcl_lnt_expression_node.
      DATA(t135) = t46.
      t134 = t135.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      t132 = t133->parse_type( i_node = t134 i_qualified_name = t136 ).
      t44 = t132.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA t140 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t141) = t44.
      t140 = t141.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      t142 = t143.
      DATA(t144) = VALUE abap_bool( ).
      DATA(t145) = t140.
      IF t145 IS INITIAL.
        t144 = abap_true.
      ENDIF.
      t139 = t144.
      t138 = t139.
      IF t139 = abap_false.
        DATA t146 TYPE abap_bool.
        DATA(t147) = t44.
        t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_void_type ).
        t138 = t146.
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        DATA t148 TYPE abap_bool.
        DATA(t149) = t44.
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
        DATA(t154) = t2.
        t153 = t154->scope.
        t152 = t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        DATA(t157) = abap_true.
        IF t157 = abap_true.
          DATA t158 TYPE string.
          DATA(t159) = t50.
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
        DATA(t165) = t155.
        t164 = t165.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t166 = t167.
        DATA(t168) = VALUE abap_bool( ).
        DATA(t169) = t164.
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
            DATA(t178) = t155.
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
          DATA(t184) = t174.
          t183 = t184.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          t185 = t186.
          DATA(t187) = VALUE abap_bool( ).
          DATA(t188) = t183.
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
            DATA(t195) = t152.
            t194 = t195->current.
            t193 = t194.
            DATA t196 TYPE REF TO zif_lnt_class_definition.
            CLEAR t196.
            DATA(t197) = VALUE abap_bool( ).
            DATA(t198) = t193.
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
              DATA(t202) = t193.
              t201 = t202.
              DATA t203 TYPE string.
              DATA(t204) = t174.
              t203 = t204->value.
              t200 = t201->find_class_definition( i_name = t203 ).
              t196 = t200.
            ENDIF.
            t192 = t196.
            t191 = t192.
            DATA t205 TYPE REF TO zif_lnt_class_definition.
            CLEAR t205.
            DATA t206 TYPE abap_bool.
            DATA(t207) = t191.
            t206 = xsdbool( t207 IS BOUND ).
            IF t206 = abap_true.
              DATA t208 TYPE REF TO zif_lnt_class_definition.
              CLEAR t208.
              DATA(t209) = abap_true.
              IF t209 = abap_true.
                DATA t210 TYPE REF TO zif_lnt_class_definition.
                DATA(t211) = t191.
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
              DATA(t218) = t152.
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
                DATA(t227) = t174.
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
              DATA(t233) = t214.
              t232 = xsdbool( t233 IS BOUND ).
              IF t232 = abap_true.
                DATA t234 TYPE REF TO zif_lnt_class_definition.
                DATA t235 TYPE REF TO zcl_lnt_class.
                DATA(t236) = t214.
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
          DATA(t240) = t172.
          t239 = xsdbool( t240 IS BOUND ).
          IF t239 = abap_true.
            DATA t241 TYPE REF TO zif_lnt_interface_definition.
            DATA t242 TYPE REF TO zif_lnt_class_definition.
            DATA(t243) = t172.
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
              DATA(t251) = t155.
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
            DATA(t257) = t247.
            t256 = t257.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            t258 = t259.
            DATA(t260) = VALUE abap_bool( ).
            DATA(t261) = t256.
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
              DATA(t268) = t152.
              t267 = t268->current.
              t266 = t267.
              DATA t269 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t269.
              DATA(t270) = VALUE abap_bool( ).
              DATA(t271) = t266.
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
                DATA(t275) = t266.
                t274 = t275.
                DATA t276 TYPE string.
                DATA(t277) = t247.
                t276 = t277->value.
                t273 = t274->find_interface_definition( i_name = t276 ).
                t269 = t273.
              ENDIF.
              t265 = t269.
              t264 = t265.
              DATA t278 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t278.
              DATA t279 TYPE abap_bool.
              DATA(t280) = t264.
              t279 = xsdbool( t280 IS BOUND ).
              IF t279 = abap_true.
                DATA t281 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t281.
                DATA(t282) = abap_true.
                IF t282 = abap_true.
                  DATA t283 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t284) = t264.
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
                DATA(t291) = t152.
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
                  DATA(t300) = t247.
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
                DATA(t306) = t287.
                t305 = xsdbool( t306 IS BOUND ).
                IF t305 = abap_true.
                  DATA t307 TYPE REF TO zif_lnt_interface_definition.
                  DATA t308 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t309 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t310) = t287.
                  t309 = t310.
                  t308 = t309.
                  DATA t311 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t312) = t308.
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
            DATA(t316) = t245.
            t315 = xsdbool( t316 IS BOUND ).
            IF t315 = abap_true.
              DATA t317 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t317.
              DATA(t318) = abap_true.
              IF t318 = abap_true.
                DATA t319 TYPE REF TO zif_lnt_interface_definition.
                DATA(t320) = t245.
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
        DATA(t324) = t150.
        t323 = xsdbool( t324 IS BOUND ).
        IF t323 = abap_true.
          DATA t325 TYPE REF TO zcl_lnt_object_reference_type.
          CLEAR t325.
          DATA t326 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t327 TYPE REF TO zif_lnt_interface_definition.
          DATA(t328) = t150.
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
            DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t333.
            DATA(t334) = abap_true.
            IF t334 = abap_true.
              DATA t335 TYPE string.
              DATA(t336) = t50.
              t335 = t336->value.
              DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t337->has = abap_true.
              t337->value = t335.
              t333 = t337.
            ELSE.
              DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t338.
              t333 = t338.
            ENDIF.
            t332 = t333.
            DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t340.
            t339 = t340.
            DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t342.
            t341 = t342.
            DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t344.
            t343 = t344.
            DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t346.
            t345 = t346.
            DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t348.
            t347 = t348.
            t331 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t332 i_conversion_exit = t339 i_derived_from_constant = t341 i_ddic_name = t343 i_rtti_name = t345 i_description = t347 ).
            CREATE OBJECT t331->zlnt_view_ownkeys_b0e8086400eb.
            t331->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t349.
            IF t331->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t349 ).
            ENDIF.
            CREATE OBJECT t331->zlnt_json_ownkeys_70e5fd461788.
            t331->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t350) = |qualifiedName|.
            DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t351.
            IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
            ENDIF.
            t329 = t331.
          ELSE.
            DATA t352 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t352.
            t329 = t352.
          ENDIF.
          t325 = NEW zcl_lnt_object_reference_type( i_id = t326 i_extra = t329 ).
          t44 = t325.
          DATA t353 TYPE REF TO zcl_lnt_current_scope.
          DATA(t354) = t2.
          t353 = t354->scope.
          DATA t355 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t355.
          DATA(t356) = abap_true.
          IF t356 = abap_true.
            DATA t357 TYPE REF TO zcl_lnt_abstract_token.
            DATA t358 TYPE REF TO zcl_lnt_expression_node.
            DATA(t359) = t46.
            t358 = t359.
            t357 = t358->get_first_token( ).
            t355 = t357.
          ELSE.
            DATA t360 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t360.
            t355 = t360.
          ENDIF.
          DATA t361 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t361.
          DATA(t362) = abap_true.
          IF t362 = abap_true.
            DATA t363 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t364 TYPE REF TO zif_lnt_interface_definition.
            DATA(t365) = t150.
            t364 = t365.
            t363 ?= t364.
            t361 = t363.
          ELSE.
            DATA t366 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t366.
            t361 = t366.
          ENDIF.
          DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t367.
          DATA(t368) = |Object|.
          CLEAR t367.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t367->sval = t368.
          DATA t369 TYPE string.
          DATA(t370) = t2.
          t369 = t370->filename.
          DATA t371 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t371.
          t353->add_reference( i_usage = t355 i_referencing = t361 i_type_9913 = t367 i_filename = t369 i_extra = t371 ).
        ENDIF.
      ELSE.
        DATA t372 TYPE REF TO zcl_lnt_data_reference.
        CLEAR t372.
        DATA t373 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t374) = t44.
        t373 = t374.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t375.
        DATA(t376) = abap_true.
        IF t376 = abap_true.
          DATA t377 TYPE string.
          DATA(t378) = t50.
          t377 = t378->value.
          DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t379->has = abap_true.
          t379->value = t377.
          t375 = t379.
        ELSE.
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t380.
          t375 = t380.
        ENDIF.
        t372 = NEW zcl_lnt_data_reference( i_type_9913 = t373 i_qualified_name = t375 ).
        t44 = t372.
      ENDIF.
      DATA(t381) = VALUE abap_bool( ).
      DATA(t382) = VALUE abap_bool( ).
      DATA t383 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t384) = t44.
      t383 = t384.
      DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t386.
      t385 = t386.
      DATA(t387) = VALUE abap_bool( ).
      DATA(t388) = t383.
      IF t388 IS INITIAL.
        t387 = abap_true.
      ENDIF.
      t382 = t387.
      t381 = t382.
      IF t382 = abap_true.
        DATA(t389) = VALUE abap_bool( ).
        DATA(t390) = VALUE abap_bool( ).
        DATA t391 TYPE REF TO zcl_lnt_ddic.
        DATA t392 TYPE REF TO zcl_lnt_ddic.
        DATA t393 TYPE REF TO zcl_lnt_current_scope.
        DATA t394 TYPE REF TO zcl_lnt_current_scope.
        DATA(t395) = t2.
        t394 = t395->scope.
        t393 = t394.
        DATA t396 TYPE REF TO zcl_lnt_ddic.
        DATA t397 TYPE REF TO zif_lnt_registry.
        DATA(t398) = t393.
        t397 = t398->reg.
        t396 = NEW zcl_lnt_ddic( i_reg_f149 = t397 ).
        t392 = t396.
        t391 = t392.
        DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t399.
        DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t400.
        DATA(t401) = abap_true.
        IF t401 = abap_true.
          DATA t402 TYPE string.
          DATA(t403) = t50.
          t402 = t403->value.
          DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t404->has = abap_true.
          t404->value = t402.
          t400 = t404.
        ELSE.
          DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t405.
          t400 = t405.
        ENDIF.
        t399 = t400.
        DATA(t406) = VALUE abap_bool( ).
        DATA(t407) = VALUE abap_bool( ).
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t409) = t399.
        t408 = t409.
        DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t411.
        t410 = t411.
        DATA(t412) = VALUE abap_bool( ).
        DATA(t413) = t408.
        IF t413 IS INITIAL.
          t412 = abap_true.
        ELSEIF t413->has = abap_false.
          t412 = abap_true.
        ENDIF.
        t407 = t412.
        IF t407 = abap_true.
          DATA(t414) = abap_true.
          t406 = t414.
        ELSE.
          DATA t415 TYPE abap_bool.
          DATA t416 TYPE REF TO zif_lnt_registry.
          DATA(t417) = t391.
          t416 = t417->reg.
          DATA t418 TYPE string.
          DATA(t419) = t399.
          t418 = t419->value.
          t415 = t416->in_error_namespace( i_name = t418 ).
          t406 = t415.
        ENDIF.
        t390 = t406.
        DATA(t420) = abap_false.
        t389 = xsdbool( t390 = t420 ).
        t381 = t389.
      ENDIF.
      IF t381 = abap_true.
        DATA t421 TYPE REF TO zcl_lnt_void_type.
        CLEAR t421.
        DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t422.
        DATA(t423) = abap_true.
        IF t423 = abap_true.
          DATA t424 TYPE string.
          DATA(t425) = t50.
          t424 = t425->value.
          DATA(t426) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t426->has = abap_true.
          t426->value = t424.
          t422 = t426.
        ELSE.
          DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t427.
          t422 = t427.
        ENDIF.
        DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t428.
        t421 = zcl_lnt_void_type=>get_db65( i_voided = t422 i_qualified_name = t428 ).
        t44 = t421.
      ELSE.
        DATA(t429) = VALUE abap_bool( ).
        DATA t430 TYPE string.
        DATA t431 TYPE string.
        DATA(t432) = t50.
        t431 = t432->value.
        DATA(t433) = strlen( t431 ).
        t430 = t431.
        IF t430 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t430 TO UPPER CASE.
        ELSE.
          t430 = zlnt_runtime_uppe_91169605024d=>full( t430 ).
        ENDIF.
        DATA(t434) = |OBJECT|.
        t429 = xsdbool( t430 = t434 ).
        IF t429 = abap_true.
          DATA t435 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
          DATA t436 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t436.
          t435 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t436 ).
          result = t435.
          RETURN.
        ELSE.
          DATA(t437) = VALUE abap_bool( ).
          DATA t438 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t439) = t44.
          t438 = t439.
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t441.
          t440 = t441.
          DATA(t442) = VALUE abap_bool( ).
          DATA(t443) = t438.
          IF t443 IS INITIAL.
            t442 = abap_true.
          ENDIF.
          t437 = t442.
          IF t437 = abap_true.
            DATA t444 TYPE string.
            DATA t445 TYPE string.
            DATA t446 TYPE string.
            DATA(t447) = |Type "|.
            DATA t448 TYPE string.
            DATA(t449) = t50.
            t448 = t449->value.
            DATA(t450) = strlen( t447 ).
            t446 = |{ t447 }{ t448 }|.
            DATA(t451) = |" not found in scope, Cast|.
            DATA(t452) = strlen( t446 ).
            t445 = |{ t446 }{ t451 }|.
            t444 = t445.
            DATA t453 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t454) = t2.
            t453 = t454->issues.
            DATA t455 TYPE REF TO zcl_lnt_issue.
            DATA(t456) = t2.
            DATA t457 TYPE REF TO zcl_lnt_abstract_token.
            DATA t458 TYPE REF TO zcl_lnt_expression_node.
            DATA(t459) = t46.
            t458 = t459.
            t457 = t458->get_first_token( ).
            DATA(t460) = t444.
            DATA t461 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t461.
            t455 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t456 i_token = t457 i_message_26cb = t460 i_fix = t461 ).
            t453->load( ).
            APPEND t455 TO t453->items.
            t453->save( ).
            DATA t462 TYPE REF TO zcl_lnt_void_type.
            CLEAR t462.
            DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t463.
            DATA(t464) = abap_true.
            IF t464 = abap_true.
              DATA(t465) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t466) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t466->has = abap_true.
              t466->value = t465.
              t463 = t466.
            ELSE.
              DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t467.
              t463 = t467.
            ENDIF.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t468.
            t462 = zcl_lnt_void_type=>get_db65( i_voided = t463 i_qualified_name = t468 ).
            result = t462.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t469) = t1.
    DATA(t470) = t2.
    DATA(t471) = t44.
    zcl_lnt_sy_source=>add_if_inferred( i_node = t469 i_input_967e = t470 i_inferred_type = t471 ).
    DATA t472 TYPE abap_bool.
    DATA t473 TYPE abap_bool.
    DATA t474 TYPE REF TO zcl_lnt_type_utils.
    DATA t475 TYPE REF TO zcl_lnt_type_utils.
    DATA t476 TYPE REF TO zcl_lnt_current_scope.
    DATA(t477) = t2.
    t476 = t477->scope.
    t475 = NEW zcl_lnt_type_utils( i_scope = t476 ).
    t474 = t475.
    DATA t478 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t479) = t32.
    t478 = t479.
    DATA t480 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t481) = t44.
    t480 = t481.
    DATA(t482) = abap_true.
    t473 = t482.
    DATA(t483) = abap_false.
    t472 = xsdbool( t473 = t483 ).
    IF t472 = abap_true.
      DATA t484 TYPE string.
      DATA(t485) = |Cast, incompatible types|.
      t484 = t485.
      DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t487) = t2.
      t486 = t487->issues.
      DATA t488 TYPE REF TO zcl_lnt_issue.
      DATA(t489) = t2.
      DATA t490 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t491) = t1.
      t490 = t491->get_first_token( ).
      DATA(t492) = t484.
      DATA t493 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t493.
      t488 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t489 i_token = t490 i_message_26cb = t492 i_fix = t493 ).
      t486->load( ).
      APPEND t488 TO t486->items.
      t486->save( ).
      DATA t494 TYPE REF TO zcl_lnt_void_type.
      CLEAR t494.
      DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t495.
      DATA(t496) = abap_true.
      IF t496 = abap_true.
        DATA(t497) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t498) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t498->has = abap_true.
        t498->value = t497.
        t495 = t498.
      ELSE.
        DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t499.
        t495 = t499.
      ENDIF.
      DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t500.
      t494 = zcl_lnt_void_type=>get_db65( i_voided = t495 i_qualified_name = t500 ).
      result = t494.
      RETURN.
    ENDIF.
    DATA t501 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t502) = t44.
    t501 = t502.
    result = t501.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d785_a836bd58ff2c.
  ENDMETHOD.
ENDCLASS.
