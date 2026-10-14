* TS: src/abap/5_syntax/statements/create_data.ts:13:1 CreateData
CLASS zcl_lnt_sy_create_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_create_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t18 = t19->find_direct_expressions( i_type_9913 = t20 ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t18->items INTO t22.
      t21 ?= t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t24) = CAST zcl_lnt_expression_node( t21 ).
      DATA(t25) = CAST zcl_lnt_syntax_input( t2 ).
      t23 = zcl_lnt_sy_target=>run_syntax( i_node = t24 i_input_967e = t25 ).
    ENDLOOP.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t26 = t27->find_direct_expressions( i_type_9913 = t28 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    LOOP AT t26->items INTO t30.
      t29 ?= t30.
      DATA(t31) = CAST zcl_lnt_expression_node( t29 ).
      DATA(t32) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t31 i_input_967e = t32 ).
    ENDLOOP.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA(t35) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    t34 = t35->find_direct_expression( i_type_9913 = t36 ).
    t33 = t34.
    DATA t37 TYPE abap_bool.
    DATA(t38) = CAST zcl_lnt_expression_node( t33 ).
    t37 = xsdbool( t38 IS BOUND ).
    IF t37 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_basic_types.
      DATA(t42) = CAST zcl_lnt_syntax_input( t2 ).
      t41 = NEW zcl_lnt_basic_types( i_input_967e = t42 ).
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA(t46) = CAST zcl_lnt_expression_node( t33 ).
        t45 = t46.
        t43 = t45.
      ELSE.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t47.
        t43 = t47.
      ENDIF.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      t40 = t41->resolve_type_name( i_type_name = t43 i_length = t48 i_decimals_2eed = t49 i_qualified_name = t50 ).
      t39 = t40.
      DATA t51 TYPE abap_bool.
      DATA(t52) = CAST zcl_lnt_abstract_type( t39 ).
      t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t51 = abap_true.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE i( ).
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = CAST zcl_lnt_statement_node( t1 ).
        t56 = t57->concat_tokens( ).
        DATA(t58) = strlen( t56 ).
        t55 = t56.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        DATA(t59) = | REF TO |.
        DATA(t60) = strlen( t55 ).
        IF t59 IS INITIAL.
          t54 = 0.
        ELSE.
          FIND t59 IN t55 MATCH OFFSET t54.
          IF sy-subrc <> 0.
            t54 = -1.
          ENDIF.
        ENDIF.
        DATA(t61) = 0.
        t53 = xsdbool( t54 >= t61 ).
        IF t53 = abap_true.
          DATA t62 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t62.
          DATA t63 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t63.
          DATA t64 TYPE REF TO zcl_lnt_current_scope.
          DATA t65 TYPE REF TO zcl_lnt_current_scope.
          DATA(t66) = CAST zcl_lnt_syntax_input( t2 ).
          t65 = t66->scope.
          t64 = t65.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA t70 TYPE string.
            DATA t71 TYPE REF TO zcl_lnt_expression_node.
            DATA(t72) = CAST zcl_lnt_expression_node( t33 ).
            t71 = t72.
            t70 = t71->concat_tokens( ).
            DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t73->has = abap_true.
            t73->value = t70.
            t68 = t73.
          ELSE.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            t68 = t74.
          ENDIF.
          t67 = t68.
          DATA t75 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t75.
          DATA(t76) = VALUE abap_bool( ).
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t78) = CAST zlnt_runtime_opti_4ba3bdccd169( t67 ).
          t77 = t78.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          t79 = t80.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = CAST zlnt_runtime_opti_4ba3bdccd169( t77 ).
          IF t82 IS INITIAL.
            t81 = abap_true.
          ELSEIF t82->has = abap_false.
            t81 = abap_true.
          ENDIF.
          t76 = t81.
          IF t76 = abap_true.
            DATA t83 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t83.
            t75 = t83.
          ELSE.
            DATA t84 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t84.
            DATA t85 TYPE REF TO zif_lnt_class_definition.
            CLEAR t85.
            DATA t86 TYPE REF TO zif_lnt_class_definition.
            CLEAR t86.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            DATA(t89) = abap_true.
            IF t89 = abap_true.
              DATA t90 TYPE string.
              DATA(t91) = CAST zlnt_runtime_opti_4ba3bdccd169( t67 ).
              t90 = t91->value.
              DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t92->has = abap_true.
              t92->value = t90.
              t88 = t92.
            ELSE.
              DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t93.
              t88 = t93.
            ENDIF.
            t87 = t88.
            DATA t94 TYPE REF TO zif_lnt_class_definition.
            CLEAR t94.
            DATA(t95) = VALUE abap_bool( ).
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t97) = CAST zlnt_runtime_opti_4ba3bdccd169( t87 ).
            t96 = t97.
            DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t99.
            t98 = t99.
            DATA(t100) = VALUE abap_bool( ).
            DATA(t101) = CAST zlnt_runtime_opti_4ba3bdccd169( t96 ).
            IF t101 IS INITIAL.
              t100 = abap_true.
            ELSEIF t101->has = abap_false.
              t100 = abap_true.
            ENDIF.
            t95 = t100.
            IF t95 = abap_true.
              DATA t102 TYPE REF TO zif_lnt_class_definition.
              CLEAR t102.
              t94 = t102.
            ELSE.
              DATA t103 TYPE REF TO zif_lnt_class_definition.
              CLEAR t103.
              DATA t104 TYPE REF TO zif_lnt_class_definition.
              CLEAR t104.
              DATA t105 TYPE REF TO zif_lnt_class_definition.
              CLEAR t105.
              DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t108) = CAST zcl_lnt_current_scope( t64 ).
              t107 = t108->current.
              t106 = t107.
              DATA t109 TYPE REF TO zif_lnt_class_definition.
              CLEAR t109.
              DATA(t110) = VALUE abap_bool( ).
              DATA(t111) = CAST zcl_lnt_spaghetti_scope_node( t106 ).
              IF t111 IS INITIAL.
                t110 = abap_true.
              ENDIF.
              IF t110 = abap_true.
                DATA t112 TYPE REF TO zif_lnt_class_definition.
                CLEAR t112.
                t109 = t112.
              ELSE.
                DATA t113 TYPE REF TO zif_lnt_class_definition.
                DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t115) = CAST zcl_lnt_spaghetti_scope_node( t106 ).
                t114 = t115.
                DATA t116 TYPE string.
                DATA(t117) = CAST zlnt_runtime_opti_4ba3bdccd169( t87 ).
                t116 = t117->value.
                t113 = t114->find_class_definition( i_name = t116 ).
                t109 = t113.
              ENDIF.
              t105 = t109.
              t104 = t105.
              DATA t118 TYPE REF TO zif_lnt_class_definition.
              CLEAR t118.
              DATA t119 TYPE abap_bool.
              DATA(t120) = CAST zif_lnt_class_definition( t104 ).
              t119 = xsdbool( t120 IS BOUND ).
              IF t119 = abap_true.
                DATA t121 TYPE REF TO zif_lnt_class_definition.
                CLEAR t121.
                DATA(t122) = abap_true.
                IF t122 = abap_true.
                  DATA t123 TYPE REF TO zif_lnt_class_definition.
                  DATA(t124) = CAST zif_lnt_class_definition( t104 ).
                  t123 = t124.
                  t121 = t123.
                ELSE.
                  DATA t125 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t125.
                  t121 = t125.
                ENDIF.
                t118 = t121.
              ELSE.
                DATA t126 TYPE REF TO zif_lnt_class_definition.
                CLEAR t126.
                DATA t127 TYPE REF TO zcl_lnt_class.
                CLEAR t127.
                DATA t128 TYPE REF TO zcl_lnt_class.
                CLEAR t128.
                DATA t129 TYPE REF TO zif_lnt_object.
                CLEAR t129.
                DATA t130 TYPE REF TO zif_lnt_registry.
                DATA(t131) = CAST zcl_lnt_current_scope( t64 ).
                t130 = t131->reg.
                DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t132.
                DATA(t133) = abap_true.
                IF t133 = abap_true.
                  DATA(t134) = |CLAS|.
                  DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t135->has = abap_true.
                  t135->value = t134.
                  t132 = t135.
                ELSE.
                  DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t136.
                  t132 = t136.
                ENDIF.
                DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t137.
                DATA(t138) = abap_true.
                IF t138 = abap_true.
                  DATA t139 TYPE string.
                  DATA(t140) = CAST zlnt_runtime_opti_4ba3bdccd169( t87 ).
                  t139 = t140->value.
                  DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t141->has = abap_true.
                  t141->value = t139.
                  t137 = t141.
                ELSE.
                  DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t142.
                  t137 = t142.
                ENDIF.
                t129 = t130->get_object( i_type_9913 = t132 i_name = t137 ).
                DATA t143 TYPE REF TO object.
                t143 = t129.
                t128 ?= t143.
                t127 = t128.
                DATA t144 TYPE REF TO zif_lnt_class_definition.
                CLEAR t144.
                DATA t145 TYPE abap_bool.
                DATA(t146) = CAST zcl_lnt_class( t127 ).
                t145 = xsdbool( t146 IS BOUND ).
                IF t145 = abap_true.
                  DATA t147 TYPE REF TO zif_lnt_class_definition.
                  DATA t148 TYPE REF TO zcl_lnt_class.
                  DATA(t149) = CAST zcl_lnt_class( t127 ).
                  t148 = t149.
                  t147 = t148->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t144 = t147.
                ELSE.
                  DATA t150 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t150.
                  t144 = t150.
                ENDIF.
                t126 = t144.
                t118 = t126.
              ENDIF.
              t103 = t118.
              t94 = t103.
            ENDIF.
            t86 = t94.
            t85 = t86.
            DATA t151 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t151.
            DATA t152 TYPE abap_bool.
            DATA(t153) = CAST zif_lnt_class_definition( t85 ).
            t152 = xsdbool( t153 IS BOUND ).
            IF t152 = abap_true.
              DATA t154 TYPE REF TO zif_lnt_interface_definition.
              DATA t155 TYPE REF TO zif_lnt_class_definition.
              DATA(t156) = CAST zif_lnt_class_definition( t85 ).
              t155 = t156.
              t154 ?= t155.
              t151 = t154.
            ELSE.
              DATA t157 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t157.
              DATA t158 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t158.
              DATA t159 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t159.
              DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t160.
              DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t161.
              DATA(t162) = abap_true.
              IF t162 = abap_true.
                DATA t163 TYPE string.
                DATA(t164) = CAST zlnt_runtime_opti_4ba3bdccd169( t67 ).
                t163 = t164->value.
                DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t165->has = abap_true.
                t165->value = t163.
                t161 = t165.
              ELSE.
                DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t166.
                t161 = t166.
              ENDIF.
              t160 = t161.
              DATA t167 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t167.
              DATA(t168) = VALUE abap_bool( ).
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t170) = CAST zlnt_runtime_opti_4ba3bdccd169( t160 ).
              t169 = t170.
              DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t172.
              t171 = t172.
              DATA(t173) = VALUE abap_bool( ).
              DATA(t174) = CAST zlnt_runtime_opti_4ba3bdccd169( t169 ).
              IF t174 IS INITIAL.
                t173 = abap_true.
              ELSEIF t174->has = abap_false.
                t173 = abap_true.
              ENDIF.
              t168 = t173.
              IF t168 = abap_true.
                DATA t175 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t175.
                t167 = t175.
              ELSE.
                DATA t176 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t176.
                DATA t177 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t177.
                DATA t178 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t178.
                DATA t179 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t180 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t181) = CAST zcl_lnt_current_scope( t64 ).
                t180 = t181->current.
                t179 = t180.
                DATA t182 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t182.
                DATA(t183) = VALUE abap_bool( ).
                DATA(t184) = CAST zcl_lnt_spaghetti_scope_node( t179 ).
                IF t184 IS INITIAL.
                  t183 = abap_true.
                ENDIF.
                IF t183 = abap_true.
                  DATA t185 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t185.
                  t182 = t185.
                ELSE.
                  DATA t186 TYPE REF TO zif_lnt_interface_definition.
                  DATA t187 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t188) = CAST zcl_lnt_spaghetti_scope_node( t179 ).
                  t187 = t188.
                  DATA t189 TYPE string.
                  DATA(t190) = CAST zlnt_runtime_opti_4ba3bdccd169( t160 ).
                  t189 = t190->value.
                  t186 = t187->find_interface_definition( i_name = t189 ).
                  t182 = t186.
                ENDIF.
                t178 = t182.
                t177 = t178.
                DATA t191 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t191.
                DATA t192 TYPE abap_bool.
                DATA(t193) = CAST zif_lnt_interface_definition( t177 ).
                t192 = xsdbool( t193 IS BOUND ).
                IF t192 = abap_true.
                  DATA t194 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t194.
                  DATA(t195) = abap_true.
                  IF t195 = abap_true.
                    DATA t196 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t197) = CAST zif_lnt_interface_definition( t177 ).
                    t196 = t197.
                    t194 = t196.
                  ELSE.
                    DATA t198 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t198.
                    t194 = t198.
                  ENDIF.
                  t191 = t194.
                ELSE.
                  DATA t199 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t199.
                  DATA t200 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t200.
                  DATA t201 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t201.
                  DATA t202 TYPE REF TO zif_lnt_object.
                  CLEAR t202.
                  DATA t203 TYPE REF TO zif_lnt_registry.
                  DATA(t204) = CAST zcl_lnt_current_scope( t64 ).
                  t203 = t204->reg.
                  DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t205.
                  DATA(t206) = abap_true.
                  IF t206 = abap_true.
                    DATA(t207) = |INTF|.
                    DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t208->has = abap_true.
                    t208->value = t207.
                    t205 = t208.
                  ELSE.
                    DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t209.
                    t205 = t209.
                  ENDIF.
                  DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t210.
                  DATA(t211) = abap_true.
                  IF t211 = abap_true.
                    DATA t212 TYPE string.
                    DATA(t213) = CAST zlnt_runtime_opti_4ba3bdccd169( t160 ).
                    t212 = t213->value.
                    DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t214->has = abap_true.
                    t214->value = t212.
                    t210 = t214.
                  ELSE.
                    DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t215.
                    t210 = t215.
                  ENDIF.
                  t202 = t203->get_object( i_type_9913 = t205 i_name = t210 ).
                  DATA t216 TYPE REF TO object.
                  t216 = t202.
                  t201 ?= t216.
                  t200 = t201.
                  DATA t217 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t217.
                  DATA t218 TYPE abap_bool.
                  DATA(t219) = CAST zcl_lnt_ob_interface( t200 ).
                  t218 = xsdbool( t219 IS BOUND ).
                  IF t218 = abap_true.
                    DATA t220 TYPE REF TO zif_lnt_interface_definition.
                    DATA t221 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t222 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t223) = CAST zcl_lnt_ob_interface( t200 ).
                    t222 = t223.
                    t221 = t222.
                    DATA t224 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t225) = CAST zcl_lnt_ob_interface( t221 ).
                    t224 = t225->def.
                    t220 = t224.
                    t217 = t220.
                  ELSE.
                    DATA t226 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t226.
                    t217 = t226.
                  ENDIF.
                  t199 = t217.
                  t191 = t199.
                ENDIF.
                t176 = t191.
                t167 = t176.
              ENDIF.
              t159 = t167.
              t158 = t159.
              DATA t227 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t227.
              DATA t228 TYPE abap_bool.
              DATA(t229) = CAST zif_lnt_interface_definition( t158 ).
              t228 = xsdbool( t229 IS BOUND ).
              IF t228 = abap_true.
                DATA t230 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t230.
                DATA(t231) = abap_true.
                IF t231 = abap_true.
                  DATA t232 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t233) = CAST zif_lnt_interface_definition( t158 ).
                  t232 = t233.
                  t230 = t232.
                ELSE.
                  DATA t234 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t234.
                  t230 = t234.
                ENDIF.
                t227 = t230.
              ELSE.
                DATA t235 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t235.
                t227 = t235.
              ENDIF.
              t157 = t227.
              t151 = t157.
            ENDIF.
            t84 = t151.
            t75 = t84.
          ENDIF.
          t63 = t75.
          t62 = t63.
          DATA t236 TYPE abap_bool.
          DATA(t237) = CAST zif_lnt_interface_definition( t62 ).
          t236 = xsdbool( t237 IS BOUND ).
          IF t236 = abap_true.
            DATA t238 TYPE REF TO zcl_lnt_current_scope.
            DATA(t239) = CAST zcl_lnt_syntax_input( t2 ).
            t238 = t239->scope.
            DATA t240 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t240.
            DATA(t241) = abap_true.
            IF t241 = abap_true.
              DATA t242 TYPE REF TO zcl_lnt_abstract_token.
              DATA t243 TYPE REF TO zcl_lnt_expression_node.
              DATA(t244) = CAST zcl_lnt_expression_node( t33 ).
              t243 = t244.
              t242 = t243->get_first_token( ).
              t240 = t242.
            ELSE.
              DATA t245 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t245.
              t240 = t245.
            ENDIF.
            DATA t246 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t246.
            DATA(t247) = abap_true.
            IF t247 = abap_true.
              DATA t248 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t249 TYPE REF TO zif_lnt_interface_definition.
              DATA(t250) = CAST zif_lnt_interface_definition( t62 ).
              t249 = t250.
              t248 ?= t249.
              t246 = t248.
            ELSE.
              DATA t251 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t251.
              t246 = t251.
            ENDIF.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t253) = |Type|.
            CREATE OBJECT t252.
            t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t252->sval = t253.
            DATA t254 TYPE string.
            DATA(t255) = CAST zcl_lnt_syntax_input( t2 ).
            t254 = t255->filename.
            DATA t256 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t256.
            t238->add_reference( i_usage = t240 i_referencing = t246 i_type_9913 = t252 i_filename = t254 i_extra = t256 ).
          ELSE.
            DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t258 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t259 TYPE REF TO zcl_lnt_abstract_token.
            DATA t260 TYPE REF TO zcl_lnt_expression_node.
            DATA(t261) = CAST zcl_lnt_expression_node( t33 ).
            t260 = t261.
            t259 = t260->get_first_token( ).
            DATA t262 TYPE string.
            DATA(t263) = CAST zcl_lnt_syntax_input( t2 ).
            t262 = t263->filename.
            DATA t264 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t265) = CAST zcl_lnt_abstract_type( t39 ).
            t264 ?= t265.
            DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t266.
            DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t267.
            t258 = NEW zcl_lnt_typed_identifier( i_token = t259 i_filename = t262 i_type_9913 = t264 i_meta = t266 i_value = t267 ).
            t257 = t258.
            DATA t268 TYPE REF TO zcl_lnt_current_scope.
            DATA(t269) = CAST zcl_lnt_syntax_input( t2 ).
            t268 = t269->scope.
            DATA t270 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t270.
            DATA(t271) = abap_true.
            IF t271 = abap_true.
              DATA t272 TYPE REF TO zcl_lnt_abstract_token.
              DATA t273 TYPE REF TO zcl_lnt_expression_node.
              DATA(t274) = CAST zcl_lnt_expression_node( t33 ).
              t273 = t274.
              t272 = t273->get_first_token( ).
              t270 = t272.
            ELSE.
              DATA t275 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t275.
              t270 = t275.
            ENDIF.
            DATA(t276) = CAST zcl_lnt_typed_identifier( t257 ).
            DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t278) = |Type|.
            CREATE OBJECT t277.
            t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t277->sval = t278.
            DATA t279 TYPE string.
            DATA(t280) = CAST zcl_lnt_syntax_input( t2 ).
            t279 = t280->filename.
            DATA t281 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t281.
            t268->add_reference( i_usage = t270 i_referencing = t276 i_type_9913 = t277 i_filename = t279 i_extra = t281 ).
          ENDIF.
        ELSE.
          DATA t282 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t283 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t284 TYPE REF TO zcl_lnt_abstract_token.
          DATA t285 TYPE REF TO zcl_lnt_expression_node.
          DATA(t286) = CAST zcl_lnt_expression_node( t33 ).
          t285 = t286.
          t284 = t285->get_first_token( ).
          DATA t287 TYPE string.
          DATA(t288) = CAST zcl_lnt_syntax_input( t2 ).
          t287 = t288->filename.
          DATA t289 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t290) = CAST zcl_lnt_abstract_type( t39 ).
          t289 ?= t290.
          DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t291.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t292.
          t283 = NEW zcl_lnt_typed_identifier( i_token = t284 i_filename = t287 i_type_9913 = t289 i_meta = t291 i_value = t292 ).
          t282 = t283.
          DATA t293 TYPE REF TO zcl_lnt_current_scope.
          DATA(t294) = CAST zcl_lnt_syntax_input( t2 ).
          t293 = t294->scope.
          DATA t295 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t295.
          DATA(t296) = abap_true.
          IF t296 = abap_true.
            DATA t297 TYPE REF TO zcl_lnt_abstract_token.
            DATA t298 TYPE REF TO zcl_lnt_expression_node.
            DATA(t299) = CAST zcl_lnt_expression_node( t33 ).
            t298 = t299.
            t297 = t298->get_first_token( ).
            t295 = t297.
          ELSE.
            DATA t300 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t300.
            t295 = t300.
          ENDIF.
          DATA(t301) = CAST zcl_lnt_typed_identifier( t282 ).
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t303) = |Type|.
          CREATE OBJECT t302.
          t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t302->sval = t303.
          DATA t304 TYPE string.
          DATA(t305) = CAST zcl_lnt_syntax_input( t2 ).
          t304 = t305->filename.
          DATA t306 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t306.
          t293->add_reference( i_usage = t295 i_referencing = t301 i_type_9913 = t302 i_filename = t304 i_extra = t306 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d862_d6e64174f777.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
