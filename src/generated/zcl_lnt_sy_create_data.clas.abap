* TS: src/abap/5_syntax/statements/create_data.ts:13:1 CreateData
CLASS zcl_lnt_sy_create_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_create_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t21 = t22->find_direct_expressions( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t30) = t24.
      DATA(t31) = t2.
      t29 = zcl_lnt_sy_target=>run_syntax( i_node = t30 i_input_967e = t31 ).
    ENDDO.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t33) = t1.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t32 = t33->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = VALUE i( ).
    DO.
      t32->load( ).
      IF t37 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t32->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA(t40) = t35.
      DATA(t41) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t40 i_input_967e = t41 ).
    ENDDO.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    DATA(t44) = t1.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t43 = t44->find_direct_expression( i_type_9913 = t45 ).
    t42 = t43.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t42.
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_basic_types.
      DATA(t51) = t2.
      t50 = NEW zcl_lnt_basic_types( i_input_967e = t51 ).
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        DATA(t55) = t42.
        t54 = t55.
        t52 = t54.
      ELSE.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t56.
        t52 = t56.
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      t49 = t50->resolve_type_name( i_type_name = t52 i_length = t57 i_decimals_2eed = t58 i_qualified_name = t59 ).
      t48 = t49.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t48.
      t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t60 = abap_true.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = VALUE i( ).
        DATA t64 TYPE string.
        DATA t65 TYPE string.
        DATA(t66) = t1.
        t65 = t66->concat_tokens( ).
        DATA(t67) = strlen( t65 ).
        t64 = t65.
        IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t64 TO UPPER CASE.
        ELSE.
          t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
        ENDIF.
        DATA(t68) = | REF TO |.
        DATA(t69) = strlen( t64 ).
        IF t68 IS INITIAL.
          t63 = 0.
        ELSE.
          FIND t68 IN t64 MATCH OFFSET t63.
          IF sy-subrc <> 0.
            t63 = -1.
          ENDIF.
        ENDIF.
        DATA(t70) = 0.
        t62 = xsdbool( t63 >= t70 ).
        IF t62 = abap_true.
          DATA t71 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t71.
          DATA t72 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t72.
          DATA t73 TYPE REF TO zcl_lnt_current_scope.
          DATA t74 TYPE REF TO zcl_lnt_current_scope.
          DATA(t75) = t2.
          t74 = t75->scope.
          t73 = t74.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          DATA(t78) = abap_true.
          IF t78 = abap_true.
            DATA t79 TYPE string.
            DATA t80 TYPE REF TO zcl_lnt_expression_node.
            DATA(t81) = t42.
            t80 = t81.
            t79 = t80->concat_tokens( ).
            DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t82->has = abap_true.
            t82->value = t79.
            t77 = t82.
          ELSE.
            DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t83.
            t77 = t83.
          ENDIF.
          t76 = t77.
          DATA t84 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t84.
          DATA(t85) = VALUE abap_bool( ).
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t87) = t76.
          t86 = t87.
          DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          t88 = t89.
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = t86.
          IF t91 IS INITIAL.
            t90 = abap_true.
          ELSEIF t91->has = abap_false.
            t90 = abap_true.
          ENDIF.
          t85 = t90.
          IF t85 = abap_true.
            DATA t92 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t92.
            t84 = t92.
          ELSE.
            DATA t93 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t93.
            DATA t94 TYPE REF TO zif_lnt_class_definition.
            CLEAR t94.
            DATA t95 TYPE REF TO zif_lnt_class_definition.
            CLEAR t95.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t96.
            DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t97.
            DATA(t98) = abap_true.
            IF t98 = abap_true.
              DATA t99 TYPE string.
              DATA(t100) = t76.
              t99 = t100->value.
              DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t101->has = abap_true.
              t101->value = t99.
              t97 = t101.
            ELSE.
              DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t102.
              t97 = t102.
            ENDIF.
            t96 = t97.
            DATA t103 TYPE REF TO zif_lnt_class_definition.
            CLEAR t103.
            DATA(t104) = VALUE abap_bool( ).
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t106) = t96.
            t105 = t106.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            t107 = t108.
            DATA(t109) = VALUE abap_bool( ).
            DATA(t110) = t105.
            IF t110 IS INITIAL.
              t109 = abap_true.
            ELSEIF t110->has = abap_false.
              t109 = abap_true.
            ENDIF.
            t104 = t109.
            IF t104 = abap_true.
              DATA t111 TYPE REF TO zif_lnt_class_definition.
              CLEAR t111.
              t103 = t111.
            ELSE.
              DATA t112 TYPE REF TO zif_lnt_class_definition.
              CLEAR t112.
              DATA t113 TYPE REF TO zif_lnt_class_definition.
              CLEAR t113.
              DATA t114 TYPE REF TO zif_lnt_class_definition.
              CLEAR t114.
              DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t116 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t117) = t73.
              t116 = t117->current.
              t115 = t116.
              DATA t118 TYPE REF TO zif_lnt_class_definition.
              CLEAR t118.
              DATA(t119) = VALUE abap_bool( ).
              DATA(t120) = t115.
              IF t120 IS INITIAL.
                t119 = abap_true.
              ENDIF.
              IF t119 = abap_true.
                DATA t121 TYPE REF TO zif_lnt_class_definition.
                CLEAR t121.
                t118 = t121.
              ELSE.
                DATA t122 TYPE REF TO zif_lnt_class_definition.
                DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t124) = t115.
                t123 = t124.
                DATA t125 TYPE string.
                DATA(t126) = t96.
                t125 = t126->value.
                t122 = t123->find_class_definition( i_name = t125 ).
                t118 = t122.
              ENDIF.
              t114 = t118.
              t113 = t114.
              DATA t127 TYPE REF TO zif_lnt_class_definition.
              CLEAR t127.
              DATA t128 TYPE abap_bool.
              DATA(t129) = t113.
              t128 = xsdbool( t129 IS BOUND ).
              IF t128 = abap_true.
                DATA t130 TYPE REF TO zif_lnt_class_definition.
                CLEAR t130.
                DATA(t131) = abap_true.
                IF t131 = abap_true.
                  DATA t132 TYPE REF TO zif_lnt_class_definition.
                  DATA(t133) = t113.
                  t132 = t133.
                  t130 = t132.
                ELSE.
                  DATA t134 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t134.
                  t130 = t134.
                ENDIF.
                t127 = t130.
              ELSE.
                DATA t135 TYPE REF TO zif_lnt_class_definition.
                CLEAR t135.
                DATA t136 TYPE REF TO zcl_lnt_class.
                CLEAR t136.
                DATA t137 TYPE REF TO zcl_lnt_class.
                CLEAR t137.
                DATA t138 TYPE REF TO zif_lnt_object.
                CLEAR t138.
                DATA t139 TYPE REF TO zif_lnt_registry.
                DATA(t140) = t73.
                t139 = t140->reg.
                DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t141.
                DATA(t142) = abap_true.
                IF t142 = abap_true.
                  DATA(t143) = |CLAS|.
                  DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t144->has = abap_true.
                  t144->value = t143.
                  t141 = t144.
                ELSE.
                  DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t145.
                  t141 = t145.
                ENDIF.
                DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t146.
                DATA(t147) = abap_true.
                IF t147 = abap_true.
                  DATA t148 TYPE string.
                  DATA(t149) = t96.
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
                t138 = t139->get_object( i_type_9913 = t141 i_name = t146 ).
                DATA t152 TYPE REF TO object.
                t152 = t138.
                t137 ?= t152.
                t136 = t137.
                DATA t153 TYPE REF TO zif_lnt_class_definition.
                CLEAR t153.
                DATA t154 TYPE abap_bool.
                DATA(t155) = t136.
                t154 = xsdbool( t155 IS BOUND ).
                IF t154 = abap_true.
                  DATA t156 TYPE REF TO zif_lnt_class_definition.
                  DATA t157 TYPE REF TO zcl_lnt_class.
                  DATA(t158) = t136.
                  t157 = t158.
                  t156 = t157->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  t153 = t156.
                ELSE.
                  DATA t159 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t159.
                  t153 = t159.
                ENDIF.
                t135 = t153.
                t127 = t135.
              ENDIF.
              t112 = t127.
              t103 = t112.
            ENDIF.
            t95 = t103.
            t94 = t95.
            DATA t160 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t160.
            DATA t161 TYPE abap_bool.
            DATA(t162) = t94.
            t161 = xsdbool( t162 IS BOUND ).
            IF t161 = abap_true.
              DATA t163 TYPE REF TO zif_lnt_interface_definition.
              DATA t164 TYPE REF TO zif_lnt_class_definition.
              DATA(t165) = t94.
              t164 = t165.
              t163 ?= t164.
              t160 = t163.
            ELSE.
              DATA t166 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t166.
              DATA t167 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t167.
              DATA t168 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t168.
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t169.
              DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t170.
              DATA(t171) = abap_true.
              IF t171 = abap_true.
                DATA t172 TYPE string.
                DATA(t173) = t76.
                t172 = t173->value.
                DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t174->has = abap_true.
                t174->value = t172.
                t170 = t174.
              ELSE.
                DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t175.
                t170 = t175.
              ENDIF.
              t169 = t170.
              DATA t176 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t176.
              DATA(t177) = VALUE abap_bool( ).
              DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t179) = t169.
              t178 = t179.
              DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t181.
              t180 = t181.
              DATA(t182) = VALUE abap_bool( ).
              DATA(t183) = t178.
              IF t183 IS INITIAL.
                t182 = abap_true.
              ELSEIF t183->has = abap_false.
                t182 = abap_true.
              ENDIF.
              t177 = t182.
              IF t177 = abap_true.
                DATA t184 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t184.
                t176 = t184.
              ELSE.
                DATA t185 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t185.
                DATA t186 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t186.
                DATA t187 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t187.
                DATA t188 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t189 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t190) = t73.
                t189 = t190->current.
                t188 = t189.
                DATA t191 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t191.
                DATA(t192) = VALUE abap_bool( ).
                DATA(t193) = t188.
                IF t193 IS INITIAL.
                  t192 = abap_true.
                ENDIF.
                IF t192 = abap_true.
                  DATA t194 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t194.
                  t191 = t194.
                ELSE.
                  DATA t195 TYPE REF TO zif_lnt_interface_definition.
                  DATA t196 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t197) = t188.
                  t196 = t197.
                  DATA t198 TYPE string.
                  DATA(t199) = t169.
                  t198 = t199->value.
                  t195 = t196->find_interface_definition( i_name = t198 ).
                  t191 = t195.
                ENDIF.
                t187 = t191.
                t186 = t187.
                DATA t200 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t200.
                DATA t201 TYPE abap_bool.
                DATA(t202) = t186.
                t201 = xsdbool( t202 IS BOUND ).
                IF t201 = abap_true.
                  DATA t203 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t203.
                  DATA(t204) = abap_true.
                  IF t204 = abap_true.
                    DATA t205 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t206) = t186.
                    t205 = t206.
                    t203 = t205.
                  ELSE.
                    DATA t207 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t207.
                    t203 = t207.
                  ENDIF.
                  t200 = t203.
                ELSE.
                  DATA t208 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t208.
                  DATA t209 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t209.
                  DATA t210 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t210.
                  DATA t211 TYPE REF TO zif_lnt_object.
                  CLEAR t211.
                  DATA t212 TYPE REF TO zif_lnt_registry.
                  DATA(t213) = t73.
                  t212 = t213->reg.
                  DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t214.
                  DATA(t215) = abap_true.
                  IF t215 = abap_true.
                    DATA(t216) = |INTF|.
                    DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t217->has = abap_true.
                    t217->value = t216.
                    t214 = t217.
                  ELSE.
                    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t218.
                    t214 = t218.
                  ENDIF.
                  DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t219.
                  DATA(t220) = abap_true.
                  IF t220 = abap_true.
                    DATA t221 TYPE string.
                    DATA(t222) = t169.
                    t221 = t222->value.
                    DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t223->has = abap_true.
                    t223->value = t221.
                    t219 = t223.
                  ELSE.
                    DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t224.
                    t219 = t224.
                  ENDIF.
                  t211 = t212->get_object( i_type_9913 = t214 i_name = t219 ).
                  DATA t225 TYPE REF TO object.
                  t225 = t211.
                  t210 ?= t225.
                  t209 = t210.
                  DATA t226 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t226.
                  DATA t227 TYPE abap_bool.
                  DATA(t228) = t209.
                  t227 = xsdbool( t228 IS BOUND ).
                  IF t227 = abap_true.
                    DATA t229 TYPE REF TO zif_lnt_interface_definition.
                    DATA t230 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t231 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t232) = t209.
                    t231 = t232.
                    t230 = t231.
                    DATA t233 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t234) = t230.
                    t233 = t234->def.
                    t229 = t233.
                    t226 = t229.
                  ELSE.
                    DATA t235 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t235.
                    t226 = t235.
                  ENDIF.
                  t208 = t226.
                  t200 = t208.
                ENDIF.
                t185 = t200.
                t176 = t185.
              ENDIF.
              t168 = t176.
              t167 = t168.
              DATA t236 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t236.
              DATA t237 TYPE abap_bool.
              DATA(t238) = t167.
              t237 = xsdbool( t238 IS BOUND ).
              IF t237 = abap_true.
                DATA t239 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t239.
                DATA(t240) = abap_true.
                IF t240 = abap_true.
                  DATA t241 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t242) = t167.
                  t241 = t242.
                  t239 = t241.
                ELSE.
                  DATA t243 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t243.
                  t239 = t243.
                ENDIF.
                t236 = t239.
              ELSE.
                DATA t244 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t244.
                t236 = t244.
              ENDIF.
              t166 = t236.
              t160 = t166.
            ENDIF.
            t93 = t160.
            t84 = t93.
          ENDIF.
          t72 = t84.
          t71 = t72.
          DATA t245 TYPE abap_bool.
          DATA(t246) = t71.
          t245 = xsdbool( t246 IS BOUND ).
          IF t245 = abap_true.
            DATA t247 TYPE REF TO zcl_lnt_current_scope.
            DATA(t248) = t2.
            t247 = t248->scope.
            DATA t249 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t249.
            DATA(t250) = abap_true.
            IF t250 = abap_true.
              DATA t251 TYPE REF TO zcl_lnt_abstract_token.
              DATA t252 TYPE REF TO zcl_lnt_expression_node.
              DATA(t253) = t42.
              t252 = t253.
              t251 = t252->get_first_token( ).
              t249 = t251.
            ELSE.
              DATA t254 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t254.
              t249 = t254.
            ENDIF.
            DATA t255 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t255.
            DATA(t256) = abap_true.
            IF t256 = abap_true.
              DATA t257 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t258 TYPE REF TO zif_lnt_interface_definition.
              DATA(t259) = t71.
              t258 = t259.
              t257 ?= t258.
              t255 = t257.
            ELSE.
              DATA t260 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t260.
              t255 = t260.
            ENDIF.
            DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t261.
            DATA(t262) = |Type|.
            CLEAR t261.
            CREATE OBJECT t261.
            t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t261->sval = t262.
            DATA t263 TYPE string.
            DATA(t264) = t2.
            t263 = t264->filename.
            DATA t265 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t265.
            t247->add_reference( i_usage = t249 i_referencing = t255 i_type_9913 = t261 i_filename = t263 i_extra = t265 ).
          ELSE.
            DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t268 TYPE REF TO zcl_lnt_abstract_token.
            DATA t269 TYPE REF TO zcl_lnt_expression_node.
            DATA(t270) = t42.
            t269 = t270.
            t268 = t269->get_first_token( ).
            DATA t271 TYPE string.
            DATA(t272) = t2.
            t271 = t272->filename.
            DATA t273 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t274) = t48.
            t273 ?= t274.
            DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t275.
            DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t276.
            t267 = NEW zcl_lnt_typed_identifier( i_token = t268 i_filename = t271 i_type_9913 = t273 i_meta = t275 i_value = t276 ).
            t266 = t267.
            DATA t277 TYPE REF TO zcl_lnt_current_scope.
            DATA(t278) = t2.
            t277 = t278->scope.
            DATA t279 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t279.
            DATA(t280) = abap_true.
            IF t280 = abap_true.
              DATA t281 TYPE REF TO zcl_lnt_abstract_token.
              DATA t282 TYPE REF TO zcl_lnt_expression_node.
              DATA(t283) = t42.
              t282 = t283.
              t281 = t282->get_first_token( ).
              t279 = t281.
            ELSE.
              DATA t284 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t284.
              t279 = t284.
            ENDIF.
            DATA(t285) = t266.
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            DATA(t287) = |Type|.
            CLEAR t286.
            CREATE OBJECT t286.
            t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t286->sval = t287.
            DATA t288 TYPE string.
            DATA(t289) = t2.
            t288 = t289->filename.
            DATA t290 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t290.
            t277->add_reference( i_usage = t279 i_referencing = t285 i_type_9913 = t286 i_filename = t288 i_extra = t290 ).
          ENDIF.
        ELSE.
          DATA t291 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t292 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t293 TYPE REF TO zcl_lnt_abstract_token.
          DATA t294 TYPE REF TO zcl_lnt_expression_node.
          DATA(t295) = t42.
          t294 = t295.
          t293 = t294->get_first_token( ).
          DATA t296 TYPE string.
          DATA(t297) = t2.
          t296 = t297->filename.
          DATA t298 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t299) = t48.
          t298 ?= t299.
          DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t300.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          t292 = NEW zcl_lnt_typed_identifier( i_token = t293 i_filename = t296 i_type_9913 = t298 i_meta = t300 i_value = t301 ).
          t291 = t292.
          DATA t302 TYPE REF TO zcl_lnt_current_scope.
          DATA(t303) = t2.
          t302 = t303->scope.
          DATA t304 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t304.
          DATA(t305) = abap_true.
          IF t305 = abap_true.
            DATA t306 TYPE REF TO zcl_lnt_abstract_token.
            DATA t307 TYPE REF TO zcl_lnt_expression_node.
            DATA(t308) = t42.
            t307 = t308.
            t306 = t307->get_first_token( ).
            t304 = t306.
          ELSE.
            DATA t309 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t309.
            t304 = t309.
          ENDIF.
          DATA(t310) = t291.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          DATA(t312) = |Type|.
          CLEAR t311.
          CREATE OBJECT t311.
          t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t311->sval = t312.
          DATA t313 TYPE string.
          DATA(t314) = t2.
          t313 = t314->filename.
          DATA t315 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t315.
          t302->add_reference( i_usage = t304 i_referencing = t310 i_type_9913 = t311 i_filename = t313 i_extra = t315 ).
        ENDIF.
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d884_00ae71c368d2.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
