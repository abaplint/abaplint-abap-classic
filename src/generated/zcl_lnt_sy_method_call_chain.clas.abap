* TS: src/abap/5_syntax/expressions/method_call_chain.ts:22:1 MethodCallChain
CLASS zcl_lnt_sy_method_call_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS check_visibility IMPORTING i_method TYPE REF TO zif_lnt_method_definition i_def TYPE REF TO zif_lnt_interface_definition i_found_def TYPE REF TO zif_lnt_interface_definition i_input_967e TYPE REF TO zcl_lnt_syntax_input
    RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLASS-METHODS find_top IMPORTING i_first TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_chain IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_object_oriented.
    DATA t6 TYPE REF TO zcl_lnt_current_scope.
    t6 = t2->scope.
    t5 = NEW zcl_lnt_object_oriented( i_scope = t6 ).
    t4 = t5.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    t11 = t1.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = t11->children.
    t10 = t13.
    t9 ?= t10.
    t8 = t9.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t18 TYPE REF TO object.
    t8->load( ).
    READ TABLE t8->items INDEX 1 INTO t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t19 ?= t18.
      DATA t20 TYPE REF TO object.
      t20 = t19->as_ref( ).
      t16 ?= t20.
    ELSE.
      t16 ?= t18.
    ENDIF.
    t15 = t16.
    DATA(t21) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21 = xsdbool( t15 IS INITIAL ).
    IF t21 = abap_true.
      DATA(t28) = VALUE string( ).
      t28 = |MethodCallChain, first child expected|.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t30 = t2->issues.
      DATA t32 TYPE REF TO zcl_lnt_issue.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      t34 = t1->get_first_token( ).
      DATA t37 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t32 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t34 i_message_26cb = t28 i_fix = t37 ).
      t30->load( ).
      APPEND t32 TO t30->items.
      t30->save( ).
      DATA t38 TYPE REF TO zcl_lnt_void_type.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t42->has = abap_true.
      t42->value = t41.
      t39 = t42.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t38 = zcl_lnt_void_type=>get_db65( i_voided = t39 i_qualified_name = t44 ).
      result = t38.
      RETURN.
    ENDIF.
    DATA(t45) = VALUE int8( ).
    DATA(t46) = CONV int8( 1 ).
    t45 = t46.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    DATA t49 TYPE REF TO zif_lnt_node.
    t49 ?= t15.
    t48 = zcl_lnt_sy_method_call_chain=>find_top( i_first = t49 i_input_967e = t2 i_target_type = t3 ).
    t47 = t48.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO object.
    t54 = t15->get_db65( ).
    t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_method_call ).
    IF t53 = abap_true.
      DATA(t56) = VALUE int8( ).
      DATA(t57) = VALUE i( ).
      DATA(t58) = VALUE int8( ).
      DATA(t60) = CONV int8( 1 ).
      t58 = t45 - t60.
      t57 = t58.
      t56 = t57.
      t45 = t56.
    ENDIF.
    DATA t61 TYPE REF TO zif_lnt_union_4cf1d054.
    DO.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t65) = VALUE int8( ).
      DATA(t66) = VALUE i( ).
      t8->load( ).
      t66 = lines( t8->items ).
      t65 = t66.
      t63 = xsdbool( t45 <= t65 ).
      IF t63 = abap_false.
        EXIT.
      ENDIF.
      DATA t68 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t68.
      DATA t69 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t69.
      DATA(t71) = VALUE i( ).
      t71 = t45.
      t71 = t71 + 1.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      t8->load( ).
      CLEAR t73.
      READ TABLE t8->items INDEX t71 INTO t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      CLEAR t69.
      IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t74 ?= t73.
        DATA t75 TYPE REF TO object.
        CLEAR t75.
        t75 = t74->as_ref( ).
        t69 ?= t75.
      ELSE.
        t69 ?= t73.
      ENDIF.
      t68 = t69.
      DATA(t76) = VALUE abap_bool( ).
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      CLEAR t79.
      t76 = xsdbool( t68 IS INITIAL ).
      IF t76 = abap_true.
        EXIT.
      ENDIF.
      DATA(t83) = VALUE int8( ).
      DATA(t85) = CONV int8( 1 ).
      t83 = t45 + t85.
      t45 = t83.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      t87 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_expression_node ).
      t86 = t87.
      IF t87 = abap_true.
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t90.
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t91.
        DATA t93 TYPE REF TO object.
        CLEAR t93.
        t93 = t68.
        t91 ?= t93.
        t90 = t91->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_method_call ).
        t86 = t89.
      ENDIF.
      IF t86 = abap_true.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = t47.
        t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t96 = abap_true.
          DATA(t100) = VALUE string( ).
          DATA t102 TYPE REF TO zcl_lnt_object_reference_type.
          CLEAR t102.
          t102 ?= t47.
          DATA(t104) = VALUE string( ).
          DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t106.
          t106 = t102->identifier.
          DATA(t108) = VALUE string( ).
          DATA(t109) = VALUE string( ).
          DATA(t110) = VALUE string( ).
          DATA t112 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t112.
          t112 = t106->token.
          DATA(t114) = VALUE string( ).
          t114 = t112->str.
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
            t124 = t109.
            DATA(t126) = VALUE string( ).
            DATA(t128) = 1.
            DATA(t129) = VALUE i( ).
            t129 = strlen( t124 ).
            DATA(t132) = strlen( t124 ).
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
              t126 = t124+t128(t129).
            ENDIF.
            t123 = t126.
            t109 = t123.
          ENDIF.
          t108 = t109.
          t104 = t108.
          t100 = t104.
          DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t134->has = abap_true.
          t134->value = t100.
          t95 = t134.
        ELSE.
          CLEAR t95.
        ENDIF.
        t94 = t95.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t140.
        DATA t141 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t141.
        DATA t143 TYPE REF TO object.
        CLEAR t143.
        t143 = t68.
        t141 ?= t143.
        DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t140 = t141->find_direct_expression( i_type_9913 = t144 ).
        t139 = t140.
        DATA t145 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t145.
        DATA(t146) = xsdbool( t139 IS INITIAL ).
        IF t146 = abap_true.
          CLEAR t145.
        ELSE.
          DATA t149 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t149.
          DATA t150 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t150.
          t150 = t139.
          t149 = t150->get_first_token( ).
          t145 = t149.
        ENDIF.
        t137 = t145.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA t154 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t154.
        t154 = t137.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        DATA(t157) = xsdbool( t154 IS INITIAL ).
        IF t157 = abap_true.
          CLEAR t156.
        ELSE.
          DATA(t160) = VALUE string( ).
          DATA(t164) = VALUE string( ).
          t164 = t154->str.
          t160 = t164.
          DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t166->has = abap_true.
          t166->value = t160.
          t156 = t166.
        ENDIF.
        t152 = t156.
        DATA t167 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t167.
        DATA t169 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t170.
        t170 = t2->scope.
        t169 = t170.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        t172 = t94.
        DATA t174 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t174.
        DATA(t175) = VALUE abap_bool( ).
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        t176 = t172.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        CLEAR t178.
        DATA(t180) = VALUE abap_bool( ).
        IF t176 IS INITIAL.
          t180 = abap_true.
        ELSEIF t176->has = abap_false.
          t180 = abap_true.
        ENDIF.
        t175 = t180.
        IF t175 = abap_true.
          CLEAR t174.
        ELSE.
          DATA t184 TYPE REF TO zif_lnt_class_definition.
          CLEAR t184.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA(t189) = VALUE string( ).
          t189 = t172->value.
          DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t191->has = abap_true.
          t191->value = t189.
          t186 = t191.
          DATA t193 TYPE REF TO zif_lnt_class_definition.
          CLEAR t193.
          DATA(t194) = VALUE abap_bool( ).
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t195.
          t195 = t186.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          CLEAR t197.
          DATA(t199) = VALUE abap_bool( ).
          IF t195 IS INITIAL.
            t199 = abap_true.
          ELSEIF t195->has = abap_false.
            t199 = abap_true.
          ENDIF.
          t194 = t199.
          IF t194 = abap_true.
            CLEAR t193.
          ELSE.
            DATA t203 TYPE REF TO zif_lnt_class_definition.
            CLEAR t203.
            DATA t205 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t205.
            DATA t206 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t206.
            t206 = t169->current.
            t205 = t206.
            DATA t208 TYPE REF TO zif_lnt_class_definition.
            CLEAR t208.
            DATA(t209) = xsdbool( t205 IS INITIAL ).
            IF t209 = abap_true.
              CLEAR t208.
            ELSE.
              DATA t212 TYPE REF TO zif_lnt_class_definition.
              CLEAR t212.
              DATA t213 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t213.
              t213 = t205.
              DATA(t215) = VALUE string( ).
              t215 = t186->value.
              t212 = t213->find_class_definition( i_name = t215 ).
              t208 = t212.
            ENDIF.
            t203 = t208.
            DATA t217 TYPE REF TO zif_lnt_class_definition.
            CLEAR t217.
            DATA(t218) = VALUE abap_bool( ).
            t218 = xsdbool( t203 IS BOUND ).
            IF t218 = abap_true.
              t217 = t203.
            ELSE.
              DATA t226 TYPE REF TO zcl_lnt_class.
              CLEAR t226.
              DATA t227 TYPE REF TO zcl_lnt_class.
              CLEAR t227.
              DATA t228 TYPE REF TO zif_lnt_object.
              CLEAR t228.
              DATA t229 TYPE REF TO zif_lnt_registry.
              CLEAR t229.
              t229 = t169->reg.
              DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t231.
              DATA(t233) = |CLAS|.
              DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t234->has = abap_true.
              t234->value = t233.
              t231 = t234.
              DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t236.
              DATA(t238) = VALUE string( ).
              t238 = t186->value.
              DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t240->has = abap_true.
              t240->value = t238.
              t236 = t240.
              t228 = t229->get_object( i_type_9913 = t231 i_name = t236 ).
              DATA t242 TYPE REF TO object.
              CLEAR t242.
              t242 = t228.
              t227 ?= t242.
              t226 = t227.
              DATA t243 TYPE REF TO zif_lnt_class_definition.
              CLEAR t243.
              DATA(t244) = VALUE abap_bool( ).
              t244 = xsdbool( t226 IS BOUND ).
              IF t244 = abap_true.
                DATA t246 TYPE REF TO zif_lnt_class_definition.
                CLEAR t246.
                DATA t247 TYPE REF TO zcl_lnt_class.
                CLEAR t247.
                t247 = t226.
                t246 = t247->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t243 = t246.
              ELSE.
                CLEAR t243.
              ENDIF.
              t217 = t243.
            ENDIF.
            t193 = t217.
          ENDIF.
          t184 = t193.
          DATA t250 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t250.
          DATA(t251) = VALUE abap_bool( ).
          t251 = xsdbool( t184 IS BOUND ).
          IF t251 = abap_true.
            DATA t253 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t253.
            DATA t254 TYPE REF TO zif_lnt_class_definition.
            CLEAR t254.
            t254 = t184.
            t253 ?= t254.
            t250 = t253.
          ELSE.
            DATA t257 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t257.
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t259.
            DATA(t262) = VALUE string( ).
            t262 = t172->value.
            DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t264->has = abap_true.
            t264->value = t262.
            t259 = t264.
            DATA t266 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t266.
            DATA(t267) = VALUE abap_bool( ).
            DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t268.
            t268 = t259.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            CLEAR t270.
            DATA(t272) = VALUE abap_bool( ).
            IF t268 IS INITIAL.
              t272 = abap_true.
            ELSEIF t268->has = abap_false.
              t272 = abap_true.
            ENDIF.
            t267 = t272.
            IF t267 = abap_true.
              CLEAR t266.
            ELSE.
              DATA t276 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t276.
              DATA t278 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t278.
              DATA t279 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t279.
              t279 = t169->current.
              t278 = t279.
              DATA t281 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t281.
              DATA(t282) = xsdbool( t278 IS INITIAL ).
              IF t282 = abap_true.
                CLEAR t281.
              ELSE.
                DATA t285 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t285.
                DATA t286 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t286.
                t286 = t278.
                DATA(t288) = VALUE string( ).
                t288 = t259->value.
                t285 = t286->find_interface_definition( i_name = t288 ).
                t281 = t285.
              ENDIF.
              t276 = t281.
              DATA t290 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t290.
              DATA(t291) = VALUE abap_bool( ).
              t291 = xsdbool( t276 IS BOUND ).
              IF t291 = abap_true.
                t290 = t276.
              ELSE.
                DATA t299 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t299.
                DATA t300 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t300.
                DATA t301 TYPE REF TO zif_lnt_object.
                CLEAR t301.
                DATA t302 TYPE REF TO zif_lnt_registry.
                CLEAR t302.
                t302 = t169->reg.
                DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t304.
                DATA(t306) = |INTF|.
                DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t307->has = abap_true.
                t307->value = t306.
                t304 = t307.
                DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t309.
                DATA(t311) = VALUE string( ).
                t311 = t259->value.
                DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t313->has = abap_true.
                t313->value = t311.
                t309 = t313.
                t301 = t302->get_object( i_type_9913 = t304 i_name = t309 ).
                DATA t315 TYPE REF TO object.
                CLEAR t315.
                t315 = t301.
                t300 ?= t315.
                t299 = t300.
                DATA t316 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t316.
                DATA(t317) = VALUE abap_bool( ).
                t317 = xsdbool( t299 IS BOUND ).
                IF t317 = abap_true.
                  DATA t323 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t323.
                  t323 = t299->def.
                  t316 = t323.
                ELSE.
                  CLEAR t316.
                ENDIF.
                t290 = t316.
              ENDIF.
              t266 = t290.
            ENDIF.
            t257 = t266.
            DATA t326 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t326.
            DATA(t327) = VALUE abap_bool( ).
            t327 = xsdbool( t257 IS BOUND ).
            IF t327 = abap_true.
              t326 = t257.
            ELSE.
              CLEAR t326.
            ENDIF.
            t250 = t326.
          ENDIF.
          t174 = t250.
        ENDIF.
        t167 = t174.
        DATA t335 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t335.
        DATA t336 TYPE REF TO zcl_lnt_shape_a38e878f.
        CLEAR t336.
        t336 = t4->search_method_name( i_def = t167 i_name = t152 ).
        t335 = t336.
        DATA t340 TYPE REF TO zif_lnt_method_definition.
        CLEAR t340.
        DATA t341 TYPE REF TO zif_lnt_method_definition.
        CLEAR t341.
        t341 = t335->method.
        t340 = t341.
        DATA t343 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t343.
        DATA t344 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t344.
        t344 = t335->def.
        t343 = t344.
        DATA(t346) = VALUE abap_bool( ).
        DATA(t347) = VALUE abap_bool( ).
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        CLEAR t350.
        t347 = xsdbool( t340 IS INITIAL ).
        t346 = t347.
        IF t347 = abap_true.
          DATA(t354) = VALUE abap_bool( ).
          DATA t355 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t355.
          DATA t356 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t356.
          DATA t358 TYPE REF TO object.
          CLEAR t358.
          t358 = t68.
          t356 ?= t358.
          t355 ?= t356.
          DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t360.
          DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t361.
          CLEAR t360.
          IF t355 IS BOUND.
            DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t362.
            DATA t363 TYPE REF TO object.
            CLEAR t363.
            CLEAR t362.
            t363 = t355.
            TRY.
                t360 ?= t363.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t360 IS NOT BOUND.
              TRY.
                  t362 ?= t355.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t362 IS BOUND.
                t360 = t362->source( ).
              ENDIF.
              IF t360 IS NOT BOUND.
                CREATE OBJECT t360.
                t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t360->oval = t355.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t361.
          IF t15 IS BOUND.
            DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t364.
            DATA t365 TYPE REF TO object.
            CLEAR t365.
            CLEAR t364.
            t365 = t15.
            TRY.
                t361 ?= t365.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t361 IS NOT BOUND.
              TRY.
                  t364 ?= t15.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t364 IS BOUND.
                t361 = t364->source( ).
              ENDIF.
              IF t361 IS NOT BOUND.
                CREATE OBJECT t361.
                t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t361->oval = t15.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t360 IS BOUND.
            t354 = t360->strict_equals( t361 ).
          ELSE.
            t354 = xsdbool( t361 IS NOT BOUND ).
          ENDIF.
          t346 = t354.
        ENDIF.
        IF t346 = abap_true.
          DATA t366 TYPE REF TO zif_lnt_method_definition.
          CLEAR t366.
          DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t367.
          DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t368.
          t368 = t152.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA(t371) = VALUE abap_bool( ).
          IF t368 IS INITIAL.
            t371 = abap_true.
          ELSEIF t368->has = abap_false.
            t371 = abap_true.
          ENDIF.
          IF t371 = abap_true.
            CLEAR t370.
          ELSE.
            DATA(t374) = VALUE string( ).
            DATA(t375) = VALUE string( ).
            t375 = t368->value.
            DATA(t377) = strlen( t375 ).
            t374 = t375.
            IF t374 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t374 TO UPPER CASE.
            ELSE.
              t374 = zlnt_runtime_uppe_91169605024d=>full( t374 ).
            ENDIF.
            DATA(t378) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t378->has = abap_true.
            t378->value = t374.
            t370 = t378.
          ENDIF.
          t367 = t370.
          t366 = zcl_lnt_built_in=>search_builtin( i_name = t367 ).
          t340 = t366.
          DATA(t379) = VALUE abap_bool( ).
          t379 = xsdbool( t340 IS BOUND ).
          IF t379 = abap_true.
            DATA t381 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t381.
            t381 = t2->scope.
            DATA t384 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t384.
            DATA t386 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t386.
            DATA t387 TYPE REF TO zif_lnt_method_definition.
            CLEAR t387.
            t387 = t340.
            t386 ?= t387.
            t384 = t386.
            DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t390.
            DATA(t391) = |Builtin Method|.
            CLEAR t390.
            CREATE OBJECT t390.
            t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t390->sval = t391.
            DATA(t392) = VALUE string( ).
            t392 = t2->filename.
            DATA t394 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t394.
            t381->add_reference( i_usage = t137 i_referencing = t384 i_type_9913 = t390 i_filename = t392 i_extra = t394 ).
          ENDIF.
        ELSE.
          DATA(t395) = VALUE abap_bool( ).
          DATA(t396) = VALUE abap_bool( ).
          DATA(t397) = VALUE abap_bool( ).
          t397 = xsdbool( t61 IS BOUND ).
          t396 = t397.
          IF t397 = abap_true.
            DATA(t399) = VALUE abap_bool( ).
            DATA(t400) = VALUE string( ).
            DATA t402 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t402.
            DATA t403 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t403.
            t403 = t61.
            t402 = t403->get_first_token( ).
            DATA(t405) = VALUE string( ).
            t405 = t402->str.
            t400 = t405.
            DATA(t407) = |=>|.
            t399 = xsdbool( t400 = t407 ).
            t396 = t399.
          ENDIF.
          t395 = t396.
          IF t396 = abap_true.
            DATA(t408) = VALUE abap_bool( ).
            DATA t409 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t409.
            DATA t410 TYPE REF TO zif_lnt_method_definition.
            CLEAR t410.
            t410 = t340.
            DATA t412 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t412.
            DATA(t413) = xsdbool( t410 IS INITIAL ).
            IF t413 = abap_true.
              CLEAR t412.
            ELSE.
              DATA(t416) = VALUE abap_bool( ).
              DATA t417 TYPE REF TO zif_lnt_method_definition.
              CLEAR t417.
              t417 = t410.
              t416 = t417->is_static_4685( ).
              DATA(t419) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t419->has = abap_true.
              t419->value = t416.
              t412 = t419.
            ENDIF.
            t409 = t412.
            DATA t420 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t420.
            DATA(t423) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t423->has = abap_true.
            t423->value = abap_false.
            t420 = t423.
            DATA(t425) = VALUE abap_bool( ).
            DATA(t426) = VALUE abap_bool( ).
            IF t409 IS BOUND.
              t425 = t409->has.
            ENDIF.
            IF t420 IS BOUND.
              t426 = t420->has.
            ENDIF.
            IF t425 = t426.
              IF t425 = abap_false.
                t408 = abap_true.
              ELSEIF t409->value = t420->value.
                t408 = abap_true.
              ENDIF.
            ENDIF.
            t395 = t408.
          ENDIF.
          IF t395 = abap_true.
            DATA(t427) = VALUE string( ).
            DATA(t428) = VALUE string( ).
            DATA(t429) = VALUE string( ).
            DATA(t430) = |Method "|.
            DATA(t431) = VALUE string( ).
            DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t432.
            t432 = t152.
            DATA(t434) = VALUE string( ).
            DATA(t435) = VALUE abap_bool( ).
            IF t432 IS INITIAL.
              t435 = abap_true.
            ELSEIF t432->has = abap_false.
              t435 = abap_true.
            ENDIF.
            IF t435 = abap_true.
              t434 = |undefined|.
            ELSE.
              DATA(t438) = VALUE string( ).
              t438 = t432->value.
              t434 = t438.
            ENDIF.
            t431 = t434.
            DATA(t440) = strlen( t430 ).
            t429 = |{ t430 }{ t431 }|.
            DATA(t441) = |" not static|.
            DATA(t442) = strlen( t429 ).
            t428 = |{ t429 }{ t441 }|.
            t427 = t428.
            DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t443.
            t443 = t2->issues.
            DATA t445 TYPE REF TO zcl_lnt_issue.
            CLEAR t445.
            DATA t447 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t447.
            t447 = t137.
            DATA t450 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t450.
            t445 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t447 i_message_26cb = t427 i_fix = t450 ).
            t443->load( ).
            APPEND t445 TO t443->items.
            t443->save( ).
            DATA t451 TYPE REF TO zcl_lnt_void_type.
            CLEAR t451.
            DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t452.
            DATA(t454) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t455->has = abap_true.
            t455->value = t454.
            t452 = t455.
            DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t457.
            t451 = zcl_lnt_void_type=>get_db65( i_voided = t452 i_qualified_name = t457 ).
            result = t451.
            RETURN.
          ENDIF.
          DATA(t458) = VALUE abap_bool( ).
          DATA(t459) = VALUE abap_bool( ).
          DATA(t460) = VALUE abap_bool( ).
          DATA t461 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t461.
          DATA t462 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t462.
          DATA t464 TYPE REF TO object.
          CLEAR t464.
          t464 = t68.
          t462 ?= t464.
          t461 ?= t462.
          DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t466.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t467.
          CLEAR t466.
          IF t461 IS BOUND.
            DATA t468 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t468.
            DATA t469 TYPE REF TO object.
            CLEAR t469.
            CLEAR t468.
            t469 = t461.
            TRY.
                t466 ?= t469.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t466 IS NOT BOUND.
              TRY.
                  t468 ?= t461.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t468 IS BOUND.
                t466 = t468->source( ).
              ENDIF.
              IF t466 IS NOT BOUND.
                CREATE OBJECT t466.
                t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t466->oval = t461.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t467.
          IF t15 IS BOUND.
            DATA t470 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t470.
            DATA t471 TYPE REF TO object.
            CLEAR t471.
            CLEAR t470.
            t471 = t15.
            TRY.
                t467 ?= t471.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t467 IS NOT BOUND.
              TRY.
                  t470 ?= t15.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t470 IS BOUND.
                t467 = t470->source( ).
              ENDIF.
              IF t467 IS NOT BOUND.
                CREATE OBJECT t467.
                t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t467->oval = t15.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t466 IS BOUND.
            t460 = t466->strict_equals( t467 ).
          ELSE.
            t460 = xsdbool( t467 IS NOT BOUND ).
          ENDIF.
          t459 = t460.
          IF t460 = abap_true.
            DATA(t472) = VALUE abap_bool( ).
            DATA t473 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t473.
            DATA t474 TYPE REF TO zif_lnt_method_definition.
            CLEAR t474.
            t474 = t340.
            DATA t476 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t476.
            DATA(t477) = xsdbool( t474 IS INITIAL ).
            IF t477 = abap_true.
              CLEAR t476.
            ELSE.
              DATA(t480) = VALUE abap_bool( ).
              DATA t481 TYPE REF TO zif_lnt_method_definition.
              CLEAR t481.
              t481 = t474.
              t480 = t481->is_static_4685( ).
              DATA(t483) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t483->has = abap_true.
              t483->value = t480.
              t476 = t483.
            ENDIF.
            t473 = t476.
            DATA t484 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t484.
            DATA(t487) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t487->has = abap_true.
            t487->value = abap_false.
            t484 = t487.
            DATA(t489) = VALUE abap_bool( ).
            DATA(t490) = VALUE abap_bool( ).
            IF t473 IS BOUND.
              t489 = t473->has.
            ENDIF.
            IF t484 IS BOUND.
              t490 = t484->has.
            ENDIF.
            IF t489 = t490.
              IF t489 = abap_false.
                t472 = abap_true.
              ELSEIF t473->value = t484->value.
                t472 = abap_true.
              ENDIF.
            ENDIF.
            t459 = t472.
          ENDIF.
          t458 = t459.
          IF t459 = abap_true.
            DATA(t491) = VALUE abap_bool( ).
            DATA(t492) = VALUE abap_bool( ).
            DATA t493 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t493.
            t493 = t2->scope.
            t492 = t493->is_in_static_method( ).
            t491 = xsdbool( t492 = abap_true ).
            t458 = t491.
          ENDIF.
          IF t458 = abap_true.
            DATA(t496) = VALUE string( ).
            DATA(t497) = VALUE string( ).
            DATA(t498) = VALUE string( ).
            DATA(t499) = |Method "|.
            DATA(t500) = VALUE string( ).
            DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t501.
            t501 = t152.
            DATA(t503) = VALUE string( ).
            DATA(t504) = VALUE abap_bool( ).
            IF t501 IS INITIAL.
              t504 = abap_true.
            ELSEIF t501->has = abap_false.
              t504 = abap_true.
            ENDIF.
            IF t504 = abap_true.
              t503 = |undefined|.
            ELSE.
              DATA(t507) = VALUE string( ).
              t507 = t501->value.
              t503 = t507.
            ENDIF.
            t500 = t503.
            DATA(t509) = strlen( t499 ).
            t498 = |{ t499 }{ t500 }|.
            DATA(t510) = |" not static|.
            DATA(t511) = strlen( t498 ).
            t497 = |{ t498 }{ t510 }|.
            t496 = t497.
            DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t512.
            t512 = t2->issues.
            DATA t514 TYPE REF TO zcl_lnt_issue.
            CLEAR t514.
            DATA t516 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t516.
            t516 = t137.
            DATA t519 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t519.
            t514 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t516 i_message_26cb = t496 i_fix = t519 ).
            t512->load( ).
            APPEND t514 TO t512->items.
            t512->save( ).
            DATA t520 TYPE REF TO zcl_lnt_void_type.
            CLEAR t520.
            DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t521.
            DATA(t523) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t524) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t524->has = abap_true.
            t524->value = t523.
            t521 = t524.
            DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t526.
            t520 = zcl_lnt_void_type=>get_db65( i_voided = t521 i_qualified_name = t526 ).
            result = t520.
            RETURN.
          ENDIF.
          DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t527.
          DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t528.
          DATA(t529) = VALUE abap_bool( ).
          t529 = xsdbool( t340 IS BOUND ).
          IF t529 = abap_true.
            DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t531.
            DATA t532 TYPE REF TO zif_lnt_method_definition.
            CLEAR t532.
            t532 = t340.
            t531 = zcl_lnt_sy_method_call_chain=>check_visibility( i_method = t532 i_def = t167 i_found_def = t343 i_input_967e = t2 ).
            t528 = t531.
          ELSE.
            CLEAR t528.
          ENDIF.
          t527 = t528.
          DATA(t538) = VALUE abap_bool( ).
          DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t539.
          t539 = t527.
          DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t541.
          CLEAR t541.
          DATA(t543) = VALUE abap_bool( ).
          DATA(t544) = VALUE abap_bool( ).
          IF t539 IS INITIAL.
            t544 = abap_true.
          ELSEIF t539->has = abap_false.
            t544 = abap_true.
          ENDIF.
          t543 = xsdbool( t544 = abap_false ).
          t538 = t543.
          IF t538 = abap_true.
            DATA(t546) = VALUE string( ).
            DATA(t547) = VALUE string( ).
            DATA(t548) = VALUE string( ).
            DATA(t549) = VALUE string( ).
            DATA(t550) = VALUE string( ).
            DATA(t551) = |Method "|.
            DATA(t552) = VALUE string( ).
            DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t553.
            t553 = t152.
            DATA(t555) = VALUE string( ).
            DATA(t556) = VALUE abap_bool( ).
            IF t553 IS INITIAL.
              t556 = abap_true.
            ELSEIF t553->has = abap_false.
              t556 = abap_true.
            ENDIF.
            IF t556 = abap_true.
              t555 = |undefined|.
            ELSE.
              DATA(t559) = VALUE string( ).
              t559 = t553->value.
              t555 = t559.
            ENDIF.
            t552 = t555.
            DATA(t561) = strlen( t551 ).
            t550 = |{ t551 }{ t552 }|.
            DATA(t562) = |" is |.
            DATA(t563) = strlen( t550 ).
            t549 = |{ t550 }{ t562 }|.
            DATA(t564) = VALUE string( ).
            t564 = t527->value.
            DATA(t566) = strlen( t549 ).
            t548 = |{ t549 }{ t564 }|.
            DATA(t567) = | and cannot be accessed|.
            DATA(t568) = strlen( t548 ).
            t547 = |{ t548 }{ t567 }|.
            t546 = t547.
            DATA t569 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t569.
            t569 = t2->issues.
            DATA t571 TYPE REF TO zcl_lnt_issue.
            CLEAR t571.
            DATA t573 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t573.
            t573 = t137.
            DATA t576 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t576.
            t571 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t573 i_message_26cb = t546 i_fix = t576 ).
            t569->load( ).
            APPEND t571 TO t569->items.
            t569->save( ).
            DATA t577 TYPE REF TO zcl_lnt_void_type.
            CLEAR t577.
            DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t578.
            DATA(t580) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t581) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t581->has = abap_true.
            t581->value = t580.
            t578 = t581.
            DATA t583 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t583.
            t577 = zcl_lnt_void_type=>get_db65( i_voided = t578 i_qualified_name = t583 ).
            result = t577.
            RETURN.
          ENDIF.
          DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t585.
          DATA(t586) = VALUE abap_bool( ).
          DATA(t587) = t47.
          t586 = xsdbool( t587 IS BOUND AND t587 IS INSTANCE OF zcl_lnt_void_type ).
          IF t586 = abap_true.
            DATA t590 TYPE REF TO zcl_lnt_void_type.
            CLEAR t590.
            t590 ?= t47.
            DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t592.
            t592 = t590->voided.
            t585 = t592.
          ELSE.
            CLEAR t585.
          ENDIF.
          DATA t597 TYPE REF TO zcl_lnt_object_oriented.
          CLEAR t597.
          t597 = t4.
          DATA t599 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t599.
          t599 = t343.
          DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t603.
          t603 = t94.
          DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t605.
          DATA(t606) = VALUE abap_bool( ).
          IF t603 IS BOUND.
            IF t603->has = abap_true.
              t606 = xsdbool( strlen( t603->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t606 = abap_true.
            t605 = t603.
          ELSE.
            t605 = t585.
          ENDIF.
          DATA t610 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t610.
          DATA(t611) = VALUE abap_bool( ).
          DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t614.
          CLEAR t614.
          t611 = xsdbool( t599 IS INITIAL ).
          IF t611 = abap_true.
            DATA t618 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t618.
            DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t619.
            t619 = t605.
            DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t621.
            CLEAR t621.
            DATA t623 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t623.
            CLEAR t623.
            t618 = NEW zcl_lnt_ireference_extras( i_oo_name = t619 i_oo_type = t621 i_found_qualified = t623 ).
            CREATE OBJECT t618->zlnt_view_ownkeys_b0e8086400eb.
            t618->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t625.
            t618->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t625 ).
            DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t626.
            IF t618->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t618->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t626 ).
            ENDIF.
            CREATE OBJECT t618->zlnt_json_ownkeys_70e5fd461788.
            t618->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t627) = |ooName|.
            DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t628.
            t618->zlnt_json_ownkeys_70e5fd461788->put( p0 = t627 p1 = t628 ).
            DATA(t629) = |ooType|.
            DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t630.
            IF t618->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t618->zlnt_json_ownkeys_70e5fd461788->put( p0 = t629 p1 = t630 ).
            ENDIF.
            t610 = t618.
          ELSE.
            DATA t631 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t631.
            DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t632.
            DATA t634 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t634.
            t634 = t599.
            DATA t637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t637.
            DATA(t638) = xsdbool( t634 IS INITIAL ).
            IF t638 = abap_true.
              CLEAR t637.
            ELSE.
              DATA(t641) = VALUE string( ).
              t641 = t634->get_name( ).
              DATA(t643) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t643->has = abap_true.
              t643->value = t641.
              t637 = t643.
            ENDIF.
            t632 = t637.
            DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t644.
            DATA(t647) = VALUE string( ).
            DATA(t648) = VALUE abap_bool( ).
            t648 = xsdbool( t599 IS BOUND AND t599 IS INSTANCE OF zcl_lnt_ty_class_definition ).
            IF t648 = abap_true.
              t647 = |CLAS|.
            ELSE.
              t647 = |INTF|.
            ENDIF.
            DATA(t652) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t652->has = abap_true.
            t652->value = t647.
            t644 = t652.
            DATA t654 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t654.
            CLEAR t654.
            t631 = NEW zcl_lnt_ireference_extras( i_oo_name = t632 i_oo_type = t644 i_found_qualified = t654 ).
            CREATE OBJECT t631->zlnt_view_ownkeys_b0e8086400eb.
            t631->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t656.
            t631->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t656 ).
            DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t657.
            IF t631->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t631->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t657 ).
            ENDIF.
            CREATE OBJECT t631->zlnt_json_ownkeys_70e5fd461788.
            t631->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t658) = |ooName|.
            DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t659.
            t631->zlnt_json_ownkeys_70e5fd461788->put( p0 = t658 p1 = t659 ).
            DATA(t660) = |ooType|.
            DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t661.
            IF t631->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t631->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
            ENDIF.
            t610 = t631.
          ENDIF.
          DATA t662 TYPE REF TO zif_lnt_method_definition.
          CLEAR t662.
          t662 = t340.
          DATA t664 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t664.
          t664 = t2->scope.
          DATA t667 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t667.
          DATA(t668) = xsdbool( t662 IS INITIAL ).
          IF t668 = abap_true.
            CLEAR t667.
          ELSE.
            DATA t671 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t671.
            DATA t672 TYPE REF TO zif_lnt_method_definition.
            CLEAR t672.
            t672 = t662.
            t671 ?= t672.
            t667 = t671.
          ENDIF.
          DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t674.
          DATA(t675) = |Method|.
          CLEAR t674.
          CREATE OBJECT t674.
          t674->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t674->sval = t675.
          DATA(t676) = VALUE string( ).
          t676 = t2->filename.
          DATA t678 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t678.
          t678 = t610.
          t664->add_reference( i_usage = t137 i_referencing = t667 i_type_9913 = t674 i_filename = t676 i_extra = t678 ).
        ENDIF.
        DATA(t682) = VALUE abap_bool( ).
        DATA t683 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t683.
        DATA t684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t684.
        t684 = t152.
        DATA t686 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t686.
        DATA(t687) = VALUE abap_bool( ).
        IF t684 IS INITIAL.
          t687 = abap_true.
        ELSEIF t684->has = abap_false.
          t687 = abap_true.
        ENDIF.
        IF t687 = abap_true.
          CLEAR t686.
        ELSE.
          DATA(t690) = VALUE abap_bool( ).
          DATA(t691) = VALUE i( ).
          DATA(t692) = VALUE string( ).
          t692 = t684->value.
          DATA(t694) = |~|.
          DATA(t695) = strlen( t692 ).
          IF t694 IS INITIAL.
            t691 = 0.
          ELSE.
            FIND t694 IN t692 MATCH OFFSET t691.
            IF sy-subrc <> 0.
              t691 = -1.
            ENDIF.
          ENDIF.
          DATA(t696) = 0.
          t690 = xsdbool( t691 >= t696 ).
          DATA(t697) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t697->has = abap_true.
          t697->value = t690.
          t686 = t697.
        ENDIF.
        t683 = t686.
        IF t683 IS BOUND.
          IF t683->has = abap_true.
            t682 = xsdbool( t683->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t682 = abap_true.
          DATA(t698) = VALUE string( ).
          DATA(t699) = VALUE string( ).
          DATA t700 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t700.
          DATA(t701) = VALUE string( ).
          t701 = t152->value.
          DATA(t703) = |~|.
          DATA(t704) = strlen( t701 ).
          DATA(t705) = VALUE i( ).
          DATA(t706) = VALUE i( ).
          DATA(t707) = VALUE i( ).
          DATA(t708) = VALUE i( ).
          DATA(t709) = VALUE string( ).
          CREATE OBJECT t700.
          t708 = strlen( t703 ).
          t705 = 0.
          IF t708 = 0.
            WHILE t705 < t704.
              t709 = t701+t705(1).
              APPEND t709 TO t700->items.
              t705 = t705 + 1.
            ENDWHILE.
          ELSE.
            WHILE t705 <= t704.
              FIND FIRST OCCURRENCE OF t703 IN SECTION OFFSET t705 OF t701 MATCH OFFSET t706.
              IF sy-subrc = 0.
                t707 = t706 - t705.
              ELSE.
                t706 = -1.
                t707 = t704 - t705.
              ENDIF.
              CLEAR t709.
              IF t707 > 0.
                t709 = t701+t705(t707).
              ENDIF.
              APPEND t709 TO t700->items.
              IF t706 < 0.
                EXIT.
              ENDIF.
              t705 = t706 + t708.
            ENDWHILE.
          ENDIF.
          IF t700->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t700->load( ).
          CLEAR t699.
          READ TABLE t700->items INDEX 1 INTO t699.
          t698 = t699.
          DATA t710 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t710.
          DATA t712 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t712.
          DATA t713 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t713.
          t713 = t2->scope.
          t712 = t713.
          DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t715.
          DATA(t719) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t719->has = abap_true.
          t719->value = t698.
          t715 = t719.
          DATA t721 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t721.
          DATA(t722) = VALUE abap_bool( ).
          DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t723.
          t723 = t715.
          DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t725.
          CLEAR t725.
          DATA(t727) = VALUE abap_bool( ).
          IF t723 IS INITIAL.
            t727 = abap_true.
          ELSEIF t723->has = abap_false.
            t727 = abap_true.
          ENDIF.
          t722 = t727.
          IF t722 = abap_true.
            CLEAR t721.
          ELSE.
            DATA t731 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t731.
            DATA t733 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t733.
            DATA t734 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t734.
            t734 = t712->current.
            t733 = t734.
            DATA t736 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t736.
            DATA(t737) = xsdbool( t733 IS INITIAL ).
            IF t737 = abap_true.
              CLEAR t736.
            ELSE.
              DATA t740 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t740.
              DATA t741 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t741.
              t741 = t733.
              DATA(t743) = VALUE string( ).
              t743 = t715->value.
              t740 = t741->find_interface_definition( i_name = t743 ).
              t736 = t740.
            ENDIF.
            t731 = t736.
            DATA t745 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t745.
            DATA(t746) = VALUE abap_bool( ).
            t746 = xsdbool( t731 IS BOUND ).
            IF t746 = abap_true.
              t745 = t731.
            ELSE.
              DATA t754 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t754.
              DATA t755 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t755.
              DATA t756 TYPE REF TO zif_lnt_object.
              CLEAR t756.
              DATA t757 TYPE REF TO zif_lnt_registry.
              CLEAR t757.
              t757 = t712->reg.
              DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t759.
              DATA(t761) = |INTF|.
              DATA(t762) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t762->has = abap_true.
              t762->value = t761.
              t759 = t762.
              DATA t764 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t764.
              DATA(t766) = VALUE string( ).
              t766 = t715->value.
              DATA(t768) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t768->has = abap_true.
              t768->value = t766.
              t764 = t768.
              t756 = t757->get_object( i_type_9913 = t759 i_name = t764 ).
              DATA t770 TYPE REF TO object.
              CLEAR t770.
              t770 = t756.
              t755 ?= t770.
              t754 = t755.
              DATA t771 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t771.
              DATA(t772) = VALUE abap_bool( ).
              t772 = xsdbool( t754 IS BOUND ).
              IF t772 = abap_true.
                DATA t778 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t778.
                t778 = t754->def.
                t771 = t778.
              ELSE.
                CLEAR t771.
              ENDIF.
              t745 = t771.
            ENDIF.
            t721 = t745.
          ENDIF.
          t710 = t721.
          DATA(t781) = VALUE abap_bool( ).
          t781 = xsdbool( t710 IS BOUND ).
          IF t781 = abap_true.
            DATA t783 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t783.
            t783 = t2->scope.
            DATA t786 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t786.
            DATA t788 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t788.
            DATA t789 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t789.
            t789 = t710.
            t788 ?= t789.
            t786 = t788.
            DATA t792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t792.
            DATA(t793) = |Object|.
            CLEAR t792.
            CREATE OBJECT t792.
            t792->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t792->sval = t793.
            DATA(t794) = VALUE string( ).
            t794 = t2->filename.
            DATA t796 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t796.
            t783->add_reference( i_usage = t137 i_referencing = t786 i_type_9913 = t792 i_filename = t794 i_extra = t796 ).
          ENDIF.
        ENDIF.
        DATA(t797) = VALUE abap_bool( ).
        DATA(t798) = VALUE abap_bool( ).
        DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t801.
        CLEAR t801.
        t798 = xsdbool( t340 IS INITIAL ).
        t797 = t798.
        IF t798 = abap_true.
          DATA(t805) = VALUE abap_bool( ).
          DATA t806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t806.
          DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t807.
          t807 = t152.
          DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t809.
          DATA(t810) = VALUE abap_bool( ).
          IF t807 IS INITIAL.
            t810 = abap_true.
          ELSEIF t807->has = abap_false.
            t810 = abap_true.
          ENDIF.
          IF t810 = abap_true.
            CLEAR t809.
          ELSE.
            DATA(t813) = VALUE string( ).
            DATA(t814) = VALUE string( ).
            t814 = t807->value.
            DATA(t816) = strlen( t814 ).
            t813 = t814.
            IF t813 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t813 TO UPPER CASE.
            ELSE.
              t813 = zlnt_runtime_uppe_91169605024d=>full( t813 ).
            ENDIF.
            DATA(t817) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t817->has = abap_true.
            t817->value = t813.
            t809 = t817.
          ENDIF.
          t806 = t809.
          DATA t818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t818.
          DATA(t820) = |CONSTRUCTOR|.
          DATA(t821) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t821->has = abap_true.
          t821->value = t820.
          t818 = t821.
          DATA(t823) = VALUE abap_bool( ).
          DATA(t824) = VALUE abap_bool( ).
          IF t806 IS BOUND.
            t823 = t806->has.
          ENDIF.
          IF t818 IS BOUND.
            t824 = t818->has.
          ENDIF.
          IF t823 = t824.
            IF t823 = abap_false.
              t805 = abap_true.
            ELSEIF t806->value = t818->value.
              t805 = abap_true.
            ENDIF.
          ENDIF.
          t797 = t805.
        ENDIF.
        IF t797 = abap_true.
          CLEAR t47.
        ELSE.
          DATA(t826) = VALUE abap_bool( ).
          DATA(t827) = VALUE abap_bool( ).
          DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t830.
          CLEAR t830.
          t827 = xsdbool( t340 IS INITIAL ).
          t826 = t827.
          IF t827 = abap_true.
            DATA(t834) = VALUE abap_bool( ).
            DATA(t835) = VALUE abap_bool( ).
            DATA(t836) = t47.
            t835 = xsdbool( t836 IS BOUND AND t836 IS INSTANCE OF zcl_lnt_void_type ).
            t834 = xsdbool( t835 = abap_false ).
            t826 = t834.
          ENDIF.
          IF t826 = abap_true.
            DATA(t837) = VALUE string( ).
            DATA(t838) = VALUE string( ).
            DATA(t839) = VALUE string( ).
            DATA(t840) = |Method "|.
            DATA(t841) = VALUE string( ).
            DATA t842 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t842.
            t842 = t152.
            DATA(t844) = VALUE string( ).
            DATA(t845) = VALUE abap_bool( ).
            IF t842 IS INITIAL.
              t845 = abap_true.
            ELSEIF t842->has = abap_false.
              t845 = abap_true.
            ENDIF.
            IF t845 = abap_true.
              t844 = |undefined|.
            ELSE.
              DATA(t848) = VALUE string( ).
              t848 = t842->value.
              t844 = t848.
            ENDIF.
            t841 = t844.
            DATA(t850) = strlen( t840 ).
            t839 = |{ t840 }{ t841 }|.
            DATA(t851) = |" not found, methodCallChain|.
            DATA(t852) = strlen( t839 ).
            t838 = |{ t839 }{ t851 }|.
            t837 = t838.
            DATA t853 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t853.
            t853 = t2->issues.
            DATA t855 TYPE REF TO zcl_lnt_issue.
            CLEAR t855.
            DATA t857 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t857.
            t857 = t137.
            DATA t860 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t860.
            t855 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t857 i_message_26cb = t837 i_fix = t860 ).
            t853->load( ).
            APPEND t855 TO t853->items.
            t853->save( ).
            DATA t861 TYPE REF TO zcl_lnt_void_type.
            CLEAR t861.
            DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t862.
            DATA(t864) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t865) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t865->has = abap_true.
            t865->value = t864.
            t862 = t865.
            DATA t867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t867.
            t861 = zcl_lnt_void_type=>get_db65( i_voided = t862 i_qualified_name = t867 ).
            result = t861.
            RETURN.
          ELSE.
            DATA(t868) = VALUE abap_bool( ).
            t868 = xsdbool( t340 IS BOUND ).
            IF t868 = abap_true.
              DATA t872 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t872.
              DATA t873 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t873.
              DATA t874 TYPE REF TO zif_lnt_method_parameters.
              CLEAR t874.
              DATA t875 TYPE REF TO zif_lnt_method_definition.
              CLEAR t875.
              t875 = t340.
              t874 = t875->get_parameters( ).
              t873 = t874->get_returning( ).
              t872 = t873.
              DATA t877 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t877.
              DATA(t878) = xsdbool( t872 IS INITIAL ).
              IF t878 = abap_true.
                CLEAR t877.
              ELSE.
                DATA t885 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t885.
                t885 = t872->type_cba0.
                t877 = t885.
              ENDIF.
              t47 = t877.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t888 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t888.
        DATA t889 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t889.
        DATA t890 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t890.
        DATA t892 TYPE REF TO object.
        CLEAR t892.
        t892 = t68.
        t890 ?= t892.
        DATA(t893) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
        t889 = t890->find_direct_expression( i_type_9913 = t893 ).
        t888 = t889.
        DATA(t894) = VALUE abap_bool( ).
        DATA(t895) = VALUE abap_bool( ).
        t895 = xsdbool( t888 IS BOUND ).
        t894 = t895.
        IF t895 = abap_true.
          DATA(t897) = VALUE abap_bool( ).
          t897 = xsdbool( t340 IS BOUND ).
          t894 = t897.
        ENDIF.
        IF t894 = abap_true.
          DATA t899 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t899.
          t899 = t888.
          DATA t902 TYPE REF TO zif_lnt_union_8cd68e5e.
          CLEAR t902.
          DATA t903 TYPE REF TO zif_lnt_method_definition.
          CLEAR t903.
          t903 = t340.
          t902 ?= t903.
          zcl_lnt_sy_method_call_param=>run_syntax( i_node = t899 i_input_967e = t2 i_method = t902 ).
        ELSE.
          DATA(t905) = VALUE abap_bool( ).
          DATA(t906) = VALUE abap_bool( ).
          t906 = xsdbool( t888 IS BOUND ).
          t905 = t906.
          IF t906 = abap_true.
            DATA(t908) = VALUE abap_bool( ).
            DATA(t909) = t47.
            t908 = xsdbool( t909 IS BOUND AND t909 IS INSTANCE OF zcl_lnt_void_type ).
            t905 = t908.
          ENDIF.
          IF t905 = abap_true.
            DATA t910 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t910.
            t910 = t888.
            DATA t913 TYPE REF TO zcl_lnt_void_type.
            CLEAR t913.
            t913 ?= t47.
            zcl_lnt_sy_method_call_param=>run_syntax( i_node = t910 i_input_967e = t2 i_method = t913 ).
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t915) = VALUE abap_bool( ).
        DATA(t916) = VALUE abap_bool( ).
        t916 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_expression_node ).
        t915 = t916.
        IF t916 = abap_true.
          DATA(t918) = VALUE abap_bool( ).
          DATA t919 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t919.
          DATA t920 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t920.
          DATA t922 TYPE REF TO object.
          CLEAR t922.
          t922 = t68.
          t920 ?= t922.
          t919 = t920->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t918 = xsdbool( t919 IS BOUND AND t919 IS INSTANCE OF zcl_lnt_st_component_name ).
          t915 = t918.
        ENDIF.
        IF t915 = abap_true.
          DATA t923 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t923.
          DATA t925 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t925.
          DATA t927 TYPE REF TO object.
          CLEAR t927.
          t927 = t68.
          t925 ?= t927.
          t923 = zcl_lnt_sy_component_name=>run_syntax( i_context = t47 i_node = t925 i_input_967e = t2 ).
          t47 = t923.
        ELSE.
          DATA(t929) = VALUE abap_bool( ).
          DATA(t930) = VALUE abap_bool( ).
          t930 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_expression_node ).
          t929 = t930.
          IF t930 = abap_true.
            DATA(t932) = VALUE abap_bool( ).
            DATA t933 TYPE REF TO zif_lnt_statement_runnable.
            CLEAR t933.
            DATA t934 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t934.
            DATA t936 TYPE REF TO object.
            CLEAR t936.
            t936 = t68.
            t934 ?= t936.
            t933 = t934->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t932 = xsdbool( t933 IS BOUND AND t933 IS INSTANCE OF zcl_lnt_st_attribute_name ).
            t929 = t932.
          ENDIF.
          IF t929 = abap_true.
            DATA t937 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t937.
            DATA t939 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t939.
            DATA t941 TYPE REF TO object.
            CLEAR t941.
            t941 = t68.
            t939 ?= t941.
            DATA t943 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t943.
            DATA t944 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t944.
            t937 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t47 i_node = t939 i_input_967e = t2 i_type_9913 = t943 i_error = t944 ).
            t47 = t937.
          ENDIF.
        ENDIF.
      ENDIF.
      t61 = t68.
    ENDDO.
    result = t47.

  ENDMETHOD.

  METHOD check_visibility.
    DATA(t2) = i_def.
    DATA(t3) = i_found_def.
    DATA(t4) = i_input_967e.
    DATA t5 TYPE f.
    DATA t6 TYPE f.
    t6 = i_method->get_visibility( ).
    t5 = t6.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    DATA(t11) = CONV f( 3 ).
    t9 = xsdbool( t5 = t11 ).
    t8 = t9.
    IF t9 = abap_false.
      DATA(t12) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t12 = xsdbool( t3 IS INITIAL ).
      t8 = t12.
    ENDIF.
    IF t8 = abap_true.
      CLEAR result.
      RETURN.
    ELSE.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE abap_bool.
      t21 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      t20 = xsdbool( t21 = abap_false ).
      IF t20 = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t24) = VALUE string( ).
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE string( ).
    DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t28 TYPE REF TO zcl_lnt_ty_class_definition.
    DATA t30 TYPE REF TO object.
    t30 = t3.
    t28 ?= t30.
    t27 = t28.
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE string.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    t35 = t27->token.
    DATA t37 TYPE string.
    t37 = t35->str.
    t32 = t37.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE string( ).
    DATA(t41) = t32.
    DATA(t42) = 0.
    DATA(t43) = 1.
    DATA(t44) = strlen( t41 ).
    IF t42 < 0.
      t42 = t42 + t44.
      IF t42 < 0.
        t42 = 0.
      ENDIF.
    ENDIF.
    IF t42 > t44 OR t43 <= 0.
      CLEAR t40.
    ELSE.
      IF t43 > t44 - t42.
        t43 = t44 - t42.
      ENDIF.
      t40 = t41+t42(t43).
    ENDIF.
    DATA(t45) = |!|.
    t39 = xsdbool( t40 = t45 ).
    IF t39 = abap_true.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE string.
      t47 = t32.
      DATA(t49) = VALUE string( ).
      DATA(t51) = 1.
      DATA t52 TYPE i.
      t52 = strlen( t47 ).
      DATA(t55) = strlen( t47 ).
      IF t51 < 0.
        t51 = t51 + t55.
        IF t51 < 0.
          t51 = 0.
        ENDIF.
      ENDIF.
      IF t51 > t55 OR t52 <= 0.
        CLEAR t49.
      ELSE.
        IF t52 > t55 - t51.
          t52 = t55 - t51.
        ENDIF.
        t49 = t47+t51(t52).
      ENDIF.
      t46 = t49.
      t32 = t46.
    ENDIF.
    t31 = t32.
    t26 = t31.
    DATA(t57) = strlen( t26 ).
    t25 = t26.
    IF t25 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t25 TO UPPER CASE.
    ELSE.
      t25 = zlnt_runtime_uppe_91169605024d=>full( t25 ).
    ENDIF.
    t24 = t25.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t62 TYPE REF TO zcl_lnt_current_scope.
    t62 = t4->scope.
    t61 = t62->get_enclosing_class_name( ).
    t60 = t61.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t65) = VALUE abap_bool( ).
    IF t60 IS INITIAL.
      t65 = abap_true.
    ELSEIF t60->has = abap_false.
      t65 = abap_true.
    ENDIF.
    IF t65 = abap_true.
    ELSE.
      DATA t68 TYPE string.
      DATA t69 TYPE string.
      t69 = t60->value.
      DATA(t71) = strlen( t69 ).
      t68 = t69.
      IF t68 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t68 TO UPPER CASE.
      ELSE.
        t68 = zlnt_runtime_uppe_91169605024d=>full( t68 ).
      ENDIF.
      DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t72->has = abap_true.
      t72->value = t68.
      t64 = t72.
    ENDIF.
    t58 = t64.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = VALUE abap_bool( ).
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t75 = t58.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = VALUE abap_bool( ).
    IF t75 IS INITIAL.
      t79 = abap_true.
    ELSEIF t75->has = abap_false.
      t79 = abap_true.
    ENDIF.
    t74 = t79.
    t73 = t74.
    IF t74 = abap_false.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE string.
      t82 = t58->value.
      t81 = xsdbool( t82 = t24 ).
      t73 = t81.
    ENDIF.
    IF t73 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_object_oriented.
    DATA t87 TYPE REF TO zcl_lnt_object_oriented.
    DATA t88 TYPE REF TO zcl_lnt_current_scope.
    t88 = t4->scope.
    t87 = NEW zcl_lnt_object_oriented( i_scope = t88 ).
    t86 = t87.
    DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t91.
    t90 = t91.
    DATA t92 TYPE REF TO zif_lnt_class_definition.
    DATA t93 TYPE REF TO zcl_lnt_ty_class_definition.
    DATA t94 TYPE abap_bool.
    t94 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    IF t94 = abap_true.
      DATA t96 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA t98 TYPE REF TO object.
      t98 = t2.
      t96 ?= t98.
      t93 = t96.
    ELSE.
      DATA t99 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA t101 TYPE REF TO object.
      t101 = t3.
      t99 ?= t101.
      t93 = t99.
    ENDIF.
    t92 = t93.
    DO.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = VALUE abap_bool( ).
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      DATA(t108) = VALUE abap_bool( ).
      DATA(t109) = xsdbool( t92 IS INITIAL ).
      t108 = xsdbool( t109 = abap_false ).
      t103 = t108.
      t102 = t103.
      IF t103 = abap_true.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = VALUE abap_bool( ).
        DATA t114 TYPE string.
        DATA t115 TYPE string.
        DATA t116 TYPE REF TO zif_lnt_class_definition.
        t116 = t92.
        t115 = t116->get_name( ).
        DATA(t118) = strlen( t115 ).
        t114 = t115.
        IF t114 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t114 TO UPPER CASE.
        ELSE.
          t114 = zlnt_runtime_uppe_91169605024d=>full( t114 ).
        ENDIF.
        t112 = t90->includes( p0 = t114 ).
        t111 = xsdbool( t112 = abap_false ).
        t102 = t111.
      ENDIF.
      IF t102 = abap_false.
        EXIT.
      ENDIF.
      DATA t121 TYPE string.
      DATA t122 TYPE string.
      DATA t123 TYPE REF TO zif_lnt_class_definition.
      t123 = t92.
      t122 = t123->get_name( ).
      DATA(t125) = strlen( t122 ).
      t121 = t122.
      IF t121 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t121 TO UPPER CASE.
      ELSE.
        t121 = zlnt_runtime_uppe_91169605024d=>full( t121 ).
      ENDIF.
      t90->load( ).
      APPEND t121 TO t90->items.
      t90->save( ).
      DATA t126 TYPE abap_bool.
      DATA t128 TYPE REF TO zif_lnt_class_definition.
      t128 = t92.
      DATA t130 TYPE string.
      t130 = t58->value.
      t126 = t86->has_friendship( i_cd = t128 i_friend_name = t130 ).
      IF t126 = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t135 TYPE REF TO zif_lnt_class_definition.
      t135 = t92.
      t134 = t135->get_super_class( ).
      t133 = t134.
      DATA t137 TYPE REF TO zif_lnt_class_definition.
      CLEAR t137.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t139 = t133.
      DATA t141 TYPE REF TO zif_lnt_class_definition.
      CLEAR t141.
      DATA(t143) = VALUE abap_bool( ).
      IF t139 IS INITIAL.
        t143 = abap_true.
      ELSEIF t139->has = abap_false.
        t143 = abap_true.
      ENDIF.
      t138 = t143.
      IF t138 = abap_true.
        CLEAR t137.
      ELSE.
        DATA t147 TYPE REF TO zcl_lnt_current_scope.
        DATA t148 TYPE REF TO zcl_lnt_current_scope.
        t148 = t4->scope.
        t147 = t148.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA t153 TYPE string.
        t153 = t133->value.
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t153.
        t150 = t155.
        DATA t157 TYPE REF TO zif_lnt_class_definition.
        CLEAR t157.
        DATA(t158) = VALUE abap_bool( ).
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t159 = t150.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        DATA(t163) = VALUE abap_bool( ).
        IF t159 IS INITIAL.
          t163 = abap_true.
        ELSEIF t159->has = abap_false.
          t163 = abap_true.
        ENDIF.
        t158 = t163.
        IF t158 = abap_true.
          CLEAR t157.
        ELSE.
          DATA t167 TYPE REF TO zif_lnt_class_definition.
          CLEAR t167.
          DATA t169 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t170 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t170 = t147->current.
          t169 = t170.
          DATA t172 TYPE REF TO zif_lnt_class_definition.
          CLEAR t172.
          DATA(t173) = xsdbool( t169 IS INITIAL ).
          IF t173 = abap_true.
            CLEAR t172.
          ELSE.
            DATA t176 TYPE REF TO zif_lnt_class_definition.
            DATA t177 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t177 = t169.
            DATA t179 TYPE string.
            t179 = t150->value.
            t176 = t177->find_class_definition( i_name = t179 ).
            t172 = t176.
          ENDIF.
          t167 = t172.
          DATA t181 TYPE REF TO zif_lnt_class_definition.
          CLEAR t181.
          DATA t182 TYPE abap_bool.
          t182 = xsdbool( t167 IS BOUND ).
          IF t182 = abap_true.
            t181 = t167.
          ELSE.
            DATA t190 TYPE REF TO zcl_lnt_class.
            CLEAR t190.
            DATA t191 TYPE REF TO zcl_lnt_class.
            CLEAR t191.
            DATA t192 TYPE REF TO zif_lnt_object.
            CLEAR t192.
            DATA t193 TYPE REF TO zif_lnt_registry.
            t193 = t147->reg.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            DATA(t197) = |CLAS|.
            DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t198->has = abap_true.
            t198->value = t197.
            t195 = t198.
            DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t200.
            DATA t202 TYPE string.
            t202 = t150->value.
            DATA(t204) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t204->has = abap_true.
            t204->value = t202.
            t200 = t204.
            t192 = t193->get_object( i_type_9913 = t195 i_name = t200 ).
            DATA t206 TYPE REF TO object.
            t206 = t192.
            t191 ?= t206.
            t190 = t191.
            DATA t207 TYPE REF TO zif_lnt_class_definition.
            CLEAR t207.
            DATA t208 TYPE abap_bool.
            t208 = xsdbool( t190 IS BOUND ).
            IF t208 = abap_true.
              DATA t210 TYPE REF TO zif_lnt_class_definition.
              DATA t211 TYPE REF TO zcl_lnt_class.
              t211 = t190.
              t210 = t211->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t207 = t210.
            ELSE.
              CLEAR t207.
            ENDIF.
            t181 = t207.
          ENDIF.
          t157 = t181.
        ENDIF.
        t137 = t157.
      ENDIF.
      t92 = t137.
    ENDDO.
    DATA t214 TYPE abap_bool.
    DATA(t216) = CONV f( 2 ).
    t214 = xsdbool( t5 = t216 ).
    IF t214 = abap_true.
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t219 TYPE REF TO zif_lnt_class_definition.
      DATA t221 TYPE REF TO zcl_lnt_current_scope.
      DATA t222 TYPE REF TO zcl_lnt_current_scope.
      t222 = t4->scope.
      t221 = t222.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t227 TYPE string.
      t227 = t58->value.
      DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t229->has = abap_true.
      t229->value = t227.
      t224 = t229.
      DATA t231 TYPE REF TO zif_lnt_class_definition.
      DATA(t232) = VALUE abap_bool( ).
      DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t233 = t224.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t237) = VALUE abap_bool( ).
      IF t233 IS INITIAL.
        t237 = abap_true.
      ELSEIF t233->has = abap_false.
        t237 = abap_true.
      ENDIF.
      t232 = t237.
      IF t232 = abap_true.
      ELSE.
        DATA t241 TYPE REF TO zif_lnt_class_definition.
        DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t244 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t244 = t221->current.
        t243 = t244.
        DATA t246 TYPE REF TO zif_lnt_class_definition.
        DATA(t247) = xsdbool( t243 IS INITIAL ).
        IF t247 = abap_true.
        ELSE.
          DATA t250 TYPE REF TO zif_lnt_class_definition.
          DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t251 = t243.
          DATA t253 TYPE string.
          t253 = t224->value.
          t250 = t251->find_class_definition( i_name = t253 ).
          t246 = t250.
        ENDIF.
        t241 = t246.
        DATA t255 TYPE REF TO zif_lnt_class_definition.
        DATA t256 TYPE abap_bool.
        t256 = xsdbool( t241 IS BOUND ).
        IF t256 = abap_true.
          t255 = t241.
        ELSE.
          DATA t264 TYPE REF TO zcl_lnt_class.
          DATA t265 TYPE REF TO zcl_lnt_class.
          DATA t266 TYPE REF TO zif_lnt_object.
          DATA t267 TYPE REF TO zif_lnt_registry.
          t267 = t221->reg.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t271) = |CLAS|.
          DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t272->has = abap_true.
          t272->value = t271.
          t269 = t272.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t276 TYPE string.
          t276 = t224->value.
          DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t278->has = abap_true.
          t278->value = t276.
          t274 = t278.
          t266 = t267->get_object( i_type_9913 = t269 i_name = t274 ).
          DATA t280 TYPE REF TO object.
          t280 = t266.
          t265 ?= t280.
          t264 = t265.
          DATA t281 TYPE REF TO zif_lnt_class_definition.
          DATA t282 TYPE abap_bool.
          t282 = xsdbool( t264 IS BOUND ).
          IF t282 = abap_true.
            DATA t284 TYPE REF TO zif_lnt_class_definition.
            DATA t285 TYPE REF TO zcl_lnt_class.
            t285 = t264.
            t284 = t285->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t281 = t284.
          ELSE.
            CLEAR t281.
          ENDIF.
          t255 = t281.
        ENDIF.
        t231 = t255.
      ENDIF.
      t219 = t231.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t289) = xsdbool( t219 IS INITIAL ).
      IF t289 = abap_true.
      ELSE.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t293 TYPE REF TO zif_lnt_class_definition.
        t293 = t219.
        t292 = t293->get_super_class( ).
        t288 = t292.
      ENDIF.
      t217 = t288.
      DO.
        DATA(t295) = VALUE abap_bool( ).
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t296 = t217.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t298.
        DATA(t300) = VALUE abap_bool( ).
        DATA(t301) = VALUE abap_bool( ).
        IF t296 IS INITIAL.
          t301 = abap_true.
        ELSEIF t296->has = abap_false.
          t301 = abap_true.
        ENDIF.
        t300 = xsdbool( t301 = abap_false ).
        t295 = t300.
        IF t295 = abap_false.
          EXIT.
        ENDIF.
        DATA(t303) = VALUE abap_bool( ).
        DATA t304 TYPE string.
        DATA t305 TYPE string.
        t305 = t217->value.
        DATA(t307) = strlen( t305 ).
        t304 = t305.
        IF t304 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t304 TO UPPER CASE.
        ELSE.
          t304 = zlnt_runtime_uppe_91169605024d=>full( t304 ).
        ENDIF.
        t303 = xsdbool( t304 = t24 ).
        IF t303 = abap_true.
          CLEAR result.
          RETURN.
        ENDIF.
        DATA t311 TYPE REF TO zif_lnt_class_definition.
        CLEAR t311.
        DATA t313 TYPE REF TO zcl_lnt_current_scope.
        DATA t314 TYPE REF TO zcl_lnt_current_scope.
        t314 = t4->scope.
        t313 = t314.
        DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t316.
        DATA t319 TYPE string.
        t319 = t217->value.
        DATA(t321) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t321->has = abap_true.
        t321->value = t319.
        t316 = t321.
        DATA t323 TYPE REF TO zif_lnt_class_definition.
        CLEAR t323.
        DATA(t324) = VALUE abap_bool( ).
        DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t325 = t316.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t327.
        DATA(t329) = VALUE abap_bool( ).
        IF t325 IS INITIAL.
          t329 = abap_true.
        ELSEIF t325->has = abap_false.
          t329 = abap_true.
        ENDIF.
        t324 = t329.
        IF t324 = abap_true.
          CLEAR t323.
        ELSE.
          DATA t333 TYPE REF TO zif_lnt_class_definition.
          CLEAR t333.
          DATA t335 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t336 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t336 = t313->current.
          t335 = t336.
          DATA t338 TYPE REF TO zif_lnt_class_definition.
          CLEAR t338.
          DATA(t339) = xsdbool( t335 IS INITIAL ).
          IF t339 = abap_true.
            CLEAR t338.
          ELSE.
            DATA t342 TYPE REF TO zif_lnt_class_definition.
            DATA t343 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t343 = t335.
            DATA t345 TYPE string.
            t345 = t316->value.
            t342 = t343->find_class_definition( i_name = t345 ).
            t338 = t342.
          ENDIF.
          t333 = t338.
          DATA t347 TYPE REF TO zif_lnt_class_definition.
          CLEAR t347.
          DATA t348 TYPE abap_bool.
          t348 = xsdbool( t333 IS BOUND ).
          IF t348 = abap_true.
            t347 = t333.
          ELSE.
            DATA t356 TYPE REF TO zcl_lnt_class.
            CLEAR t356.
            DATA t357 TYPE REF TO zcl_lnt_class.
            CLEAR t357.
            DATA t358 TYPE REF TO zif_lnt_object.
            CLEAR t358.
            DATA t359 TYPE REF TO zif_lnt_registry.
            t359 = t313->reg.
            DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t361.
            DATA(t363) = |CLAS|.
            DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t364->has = abap_true.
            t364->value = t363.
            t361 = t364.
            DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t366.
            DATA t368 TYPE string.
            t368 = t316->value.
            DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t370->has = abap_true.
            t370->value = t368.
            t366 = t370.
            t358 = t359->get_object( i_type_9913 = t361 i_name = t366 ).
            DATA t372 TYPE REF TO object.
            t372 = t358.
            t357 ?= t372.
            t356 = t357.
            DATA t373 TYPE REF TO zif_lnt_class_definition.
            CLEAR t373.
            DATA t374 TYPE abap_bool.
            t374 = xsdbool( t356 IS BOUND ).
            IF t374 = abap_true.
              DATA t376 TYPE REF TO zif_lnt_class_definition.
              DATA t377 TYPE REF TO zcl_lnt_class.
              t377 = t356.
              t376 = t377->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t373 = t376.
            ELSE.
              CLEAR t373.
            ENDIF.
            t347 = t373.
          ENDIF.
          t323 = t347.
        ENDIF.
        t311 = t323.
        DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t380.
        DATA(t381) = xsdbool( t311 IS INITIAL ).
        IF t381 = abap_true.
          CLEAR t380.
        ELSE.
          DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t385 TYPE REF TO zif_lnt_class_definition.
          t385 = t311.
          t384 = t385->get_super_class( ).
          t380 = t384.
        ENDIF.
        t217 = t380.
      ENDDO.
      DATA(t389) = |protected|.
      DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t390->has = abap_true.
      t390->value = t389.
      result = t390.
      RETURN.
    ENDIF.
    DATA(t394) = |private|.
    DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t395->has = abap_true.
    t395->value = t394.
    result = t395.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_first.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO object.
    t5 = t1->get_db65( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_class_name ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      t8 = t1->get_first_token( ).
      t7 = t8.
      DATA t10 TYPE string.
      DATA t14 TYPE string.
      t14 = t7->str.
      t10 = t14.
      DATA t16 TYPE REF TO zif_lnt_interface_definition.
      DATA t18 TYPE REF TO zcl_lnt_current_scope.
      DATA t19 TYPE REF TO zcl_lnt_current_scope.
      t19 = t2->scope.
      t18 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t10.
      t21 = t25.
      DATA t27 TYPE REF TO zif_lnt_interface_definition.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t29 = t21.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t33) = VALUE abap_bool( ).
      IF t29 IS INITIAL.
        t33 = abap_true.
      ELSEIF t29->has = abap_false.
        t33 = abap_true.
      ENDIF.
      t28 = t33.
      IF t28 = abap_true.
      ELSE.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t42 TYPE string.
        t42 = t21->value.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t42.
        t39 = t44.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        DATA(t47) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t48 = t39.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t52) = VALUE abap_bool( ).
        IF t48 IS INITIAL.
          t52 = abap_true.
        ELSEIF t48->has = abap_false.
          t52 = abap_true.
        ENDIF.
        t47 = t52.
        IF t47 = abap_true.
        ELSE.
          DATA t56 TYPE REF TO zif_lnt_class_definition.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t59 = t18->current.
          t58 = t59.
          DATA t61 TYPE REF TO zif_lnt_class_definition.
          DATA(t62) = xsdbool( t58 IS INITIAL ).
          IF t62 = abap_true.
          ELSE.
            DATA t65 TYPE REF TO zif_lnt_class_definition.
            DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t66 = t58.
            DATA t68 TYPE string.
            t68 = t39->value.
            t65 = t66->find_class_definition( i_name = t68 ).
            t61 = t65.
          ENDIF.
          t56 = t61.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          DATA t71 TYPE abap_bool.
          t71 = xsdbool( t56 IS BOUND ).
          IF t71 = abap_true.
            t70 = t56.
          ELSE.
            DATA t79 TYPE REF TO zcl_lnt_class.
            DATA t80 TYPE REF TO zcl_lnt_class.
            DATA t81 TYPE REF TO zif_lnt_object.
            DATA t82 TYPE REF TO zif_lnt_registry.
            t82 = t18->reg.
            DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t86) = |CLAS|.
            DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t87->has = abap_true.
            t87->value = t86.
            t84 = t87.
            DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t91 TYPE string.
            t91 = t39->value.
            DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t93->has = abap_true.
            t93->value = t91.
            t89 = t93.
            t81 = t82->get_object( i_type_9913 = t84 i_name = t89 ).
            DATA t95 TYPE REF TO object.
            t95 = t81.
            t80 ?= t95.
            t79 = t80.
            DATA t96 TYPE REF TO zif_lnt_class_definition.
            DATA t97 TYPE abap_bool.
            t97 = xsdbool( t79 IS BOUND ).
            IF t97 = abap_true.
              DATA t99 TYPE REF TO zif_lnt_class_definition.
              DATA t100 TYPE REF TO zcl_lnt_class.
              t100 = t79.
              t99 = t100->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t96 = t99.
            ELSE.
              CLEAR t96.
            ENDIF.
            t70 = t96.
          ENDIF.
          t46 = t70.
        ENDIF.
        t37 = t46.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        DATA t104 TYPE abap_bool.
        t104 = xsdbool( t37 IS BOUND ).
        IF t104 = abap_true.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          t107 = t37.
          t106 ?= t107.
          t103 = t106.
        ELSE.
          DATA t110 TYPE REF TO zif_lnt_interface_definition.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t115 TYPE string.
          t115 = t21->value.
          DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t117->has = abap_true.
          t117->value = t115.
          t112 = t117.
          DATA t119 TYPE REF TO zif_lnt_interface_definition.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t121 = t112.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t125) = VALUE abap_bool( ).
          IF t121 IS INITIAL.
            t125 = abap_true.
          ELSEIF t121->has = abap_false.
            t125 = abap_true.
          ENDIF.
          t120 = t125.
          IF t120 = abap_true.
          ELSE.
            DATA t129 TYPE REF TO zif_lnt_interface_definition.
            DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t132 = t18->current.
            t131 = t132.
            DATA t134 TYPE REF TO zif_lnt_interface_definition.
            DATA(t135) = xsdbool( t131 IS INITIAL ).
            IF t135 = abap_true.
            ELSE.
              DATA t138 TYPE REF TO zif_lnt_interface_definition.
              DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t139 = t131.
              DATA t141 TYPE string.
              t141 = t112->value.
              t138 = t139->find_interface_definition( i_name = t141 ).
              t134 = t138.
            ENDIF.
            t129 = t134.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            DATA t144 TYPE abap_bool.
            t144 = xsdbool( t129 IS BOUND ).
            IF t144 = abap_true.
              t143 = t129.
            ELSE.
              DATA t152 TYPE REF TO zcl_lnt_ob_interface.
              DATA t153 TYPE REF TO zcl_lnt_ob_interface.
              DATA t154 TYPE REF TO zif_lnt_object.
              DATA t155 TYPE REF TO zif_lnt_registry.
              t155 = t18->reg.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t159) = |INTF|.
              DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t160->has = abap_true.
              t160->value = t159.
              t157 = t160.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t164 TYPE string.
              t164 = t112->value.
              DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t166->has = abap_true.
              t166->value = t164.
              t162 = t166.
              t154 = t155->get_object( i_type_9913 = t157 i_name = t162 ).
              DATA t168 TYPE REF TO object.
              t168 = t154.
              t153 ?= t168.
              t152 = t153.
              DATA t169 TYPE REF TO zif_lnt_interface_definition.
              DATA t170 TYPE abap_bool.
              t170 = xsdbool( t152 IS BOUND ).
              IF t170 = abap_true.
                DATA t176 TYPE REF TO zif_lnt_interface_definition.
                t176 = t152->def.
                t169 = t176.
              ELSE.
                CLEAR t169.
              ENDIF.
              t143 = t169.
            ENDIF.
            t119 = t143.
          ENDIF.
          t110 = t119.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          DATA t180 TYPE abap_bool.
          t180 = xsdbool( t110 IS BOUND ).
          IF t180 = abap_true.
            t179 = t110.
          ELSE.
            CLEAR t179.
          ENDIF.
          t103 = t179.
        ENDIF.
        t27 = t103.
      ENDIF.
      t16 = t27.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t189 = xsdbool( t16 IS INITIAL ).
      t188 = t189.
      IF t189 = abap_true.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = VALUE abap_bool( ).
        DATA t201 TYPE REF TO zcl_lnt_current_scope.
        t201 = t2->scope.
        DATA t203 TYPE REF TO zcl_lnt_ddic.
        DATA t204 TYPE REF TO zif_lnt_registry.
        t204 = t201->reg.
        t203 = NEW zcl_lnt_ddic( i_reg_f149 = t204 ).
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t210->has = abap_true.
        t210->value = t10.
        t206 = t210.
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = VALUE abap_bool( ).
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t214 = t206.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t218) = VALUE abap_bool( ).
        IF t214 IS INITIAL.
          t218 = abap_true.
        ELSEIF t214->has = abap_false.
          t218 = abap_true.
        ENDIF.
        t213 = t218.
        IF t213 = abap_true.
          t212 = abap_true.
        ELSE.
          DATA t221 TYPE abap_bool.
          DATA t222 TYPE REF TO zif_lnt_registry.
          t222 = t203->reg.
          DATA t224 TYPE string.
          t224 = t206->value.
          t221 = t222->in_error_namespace( i_name = t224 ).
          t212 = t221.
        ENDIF.
        t197 = t212.
        t196 = xsdbool( t197 = abap_false ).
        t188 = t196.
      ENDIF.
      IF t188 = abap_true.
        DATA t228 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t233->has = abap_true.
        t233->value = t10.
        t229 = t233.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t238) = |Void|.
        DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t239->has = abap_true.
        t239->value = t238.
        t235 = t239.
        DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t228 = NEW zcl_lnt_ireference_extras( i_oo_name = t229 i_oo_type = t235 i_found_qualified = t241 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t243 ).
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t244 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t245) = |ooName|.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
        DATA(t247) = |ooType|.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
        ENDIF.
        DATA t249 TYPE REF TO zcl_lnt_current_scope.
        t249 = t2->scope.
        DATA t251 TYPE REF TO zcl_lnt_abstract_token.
        t251 = t7.
        DATA t255 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t257) = |Object (Void)|.
        CREATE OBJECT t256.
        t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t256->sval = t257.
        DATA t258 TYPE string.
        t258 = t2->filename.
        DATA t260 TYPE REF TO zcl_lnt_ireference_extras.
        t260 = t228.
        t249->add_reference( i_usage = t251 i_referencing = t255 i_type_9913 = t256 i_filename = t258 i_extra = t260 ).
        DATA t264 TYPE REF TO zcl_lnt_void_type.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t268->has = abap_true.
        t268->value = t10.
        t265 = t268.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t264 = zcl_lnt_void_type=>get_db65( i_voided = t265 i_qualified_name = t270 ).
        result = t264.
        RETURN.
      ELSE.
        DATA(t271) = VALUE abap_bool( ).
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t271 = xsdbool( t16 IS INITIAL ).
        IF t271 = abap_true.
          DATA t279 TYPE string.
          DATA t280 TYPE string.
          DATA(t281) = |Class |.
          DATA(t283) = strlen( t281 ).
          t280 = |{ t281 }{ t10 }|.
          DATA(t284) = | not found|.
          DATA(t285) = strlen( t280 ).
          t279 = |{ t280 }{ t284 }|.
          DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t286 = t2->issues.
          DATA t288 TYPE REF TO zcl_lnt_issue.
          DATA t290 TYPE REF TO zcl_lnt_abstract_token.
          t290 = t1->get_first_token( ).
          DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t288 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t290 i_message_26cb = t279 i_fix = t293 ).
          t286->load( ).
          APPEND t288 TO t286->items.
          t286->save( ).
          DATA t294 TYPE REF TO zcl_lnt_void_type.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t297) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t298->has = abap_true.
          t298->value = t297.
          t295 = t298.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t294 = zcl_lnt_void_type=>get_db65( i_voided = t295 i_qualified_name = t300 ).
          result = t294.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t301 TYPE REF TO zcl_lnt_current_scope.
      t301 = t2->scope.
      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
      DATA t305 TYPE REF TO zcl_lnt_abstract_token.
      t305 = t1->get_first_token( ).
      t303 = t305.
      DATA t308 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t310 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t311 TYPE REF TO zif_lnt_interface_definition.
      t311 = t16.
      t310 ?= t311.
      t308 = t310.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t315) = |Object|.
      CREATE OBJECT t314.
      t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t314->sval = t315.
      DATA t316 TYPE string.
      t316 = t2->filename.
      DATA t318 TYPE REF TO zcl_lnt_ireference_extras.
      t301->add_reference( i_usage = t303 i_referencing = t308 i_type_9913 = t314 i_filename = t316 i_extra = t318 ).
      DATA t319 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t320 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t321 TYPE REF TO zif_lnt_interface_definition.
      t321 = t16.
      t320 ?= t321.
      DATA t323 TYPE REF TO zcl_lnt_abstract_type_data.
      t319 = NEW zcl_lnt_object_reference_type( i_id = t320 i_extra = t323 ).
      result = t319.
      RETURN.
    ELSE.
      DATA t324 TYPE abap_bool.
      DATA t325 TYPE abap_bool.
      t325 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
      t324 = t325.
      IF t325 = abap_true.
        DATA t327 TYPE abap_bool.
        DATA t328 TYPE REF TO zif_lnt_statement_runnable.
        DATA t329 TYPE REF TO zcl_lnt_expression_node.
        DATA t331 TYPE REF TO object.
        t331 = t1.
        t329 ?= t331.
        t328 = t329->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t327 = xsdbool( t328 IS BOUND AND t328 IS INSTANCE OF zcl_lnt_st_field_chain ).
        t324 = t327.
      ENDIF.
      IF t324 = abap_true.
        DATA t332 TYPE REF TO zcl_lnt_abstract_type.
        DATA t333 TYPE REF TO zcl_lnt_expression_node.
        DATA t335 TYPE REF TO object.
        t335 = t1.
        t333 ?= t335.
        DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t340) = |Read From|.
        CREATE OBJECT t339.
        t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t339->sval = t340.
        t337 = t339.
        DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t332 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t333 i_input_967e = t2 i_ref_type = t337 i_allow_generic_deference = t342 ).
        result = t332.
        RETURN.
      ELSE.
        DATA t343 TYPE abap_bool.
        DATA t344 TYPE abap_bool.
        t344 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
        t343 = t344.
        IF t344 = abap_true.
          DATA t346 TYPE abap_bool.
          DATA t347 TYPE REF TO zif_lnt_statement_runnable.
          DATA t348 TYPE REF TO zcl_lnt_expression_node.
          DATA t350 TYPE REF TO object.
          t350 = t1.
          t348 ?= t350.
          t347 = t348->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t346 = xsdbool( t347 IS BOUND AND t347 IS INSTANCE OF zcl_lnt_st_new_object ).
          t343 = t346.
        ENDIF.
        IF t343 = abap_true.
          DATA t353 TYPE REF TO zcl_lnt_abstract_type.
          DATA t354 TYPE REF TO zcl_lnt_expression_node.
          DATA t356 TYPE REF TO object.
          t356 = t1.
          t354 ?= t356.
          t353 = zcl_lnt_sy_new_object=>run_syntax( i_node = t354 i_input_967e = t2 i_target_type = t3 ).
          result = t353.
          RETURN.
        ELSE.
          DATA t360 TYPE abap_bool.
          DATA t361 TYPE abap_bool.
          t361 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_expression_node ).
          t360 = t361.
          IF t361 = abap_true.
            DATA t363 TYPE abap_bool.
            DATA t364 TYPE REF TO zif_lnt_statement_runnable.
            DATA t365 TYPE REF TO zcl_lnt_expression_node.
            DATA t367 TYPE REF TO object.
            t367 = t1.
            t365 ?= t367.
            t364 = t365->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t363 = xsdbool( t364 IS BOUND AND t364 IS INSTANCE OF zcl_lnt_st_cast ).
            t360 = t363.
          ENDIF.
          IF t360 = abap_true.
            DATA t370 TYPE REF TO zcl_lnt_abstract_type.
            DATA t371 TYPE REF TO zcl_lnt_expression_node.
            DATA t373 TYPE REF TO object.
            t373 = t1.
            t371 ?= t373.
            t370 = zcl_lnt_sy_cast=>run_syntax( i_node = t371 i_input_967e = t2 i_target_type = t3 ).
            result = t370.
            RETURN.
          ELSE.
            DATA t377 TYPE REF TO zcl_lnt_abstract_type.
            DATA t379 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t381 TYPE REF TO zcl_lnt_current_scope.
            DATA t382 TYPE REF TO zcl_lnt_current_scope.
            t382 = t2->scope.
            t381 = t382.
            DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t387) = |me|.
            DATA(t388) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t388->has = abap_true.
            t388->value = t387.
            t384 = t388.
            DATA t390 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t391) = VALUE abap_bool( ).
            DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t392 = t384.
            DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t396) = VALUE abap_bool( ).
            IF t392 IS INITIAL.
              t396 = abap_true.
            ELSEIF t392->has = abap_false.
              t396 = abap_true.
            ENDIF.
            t391 = t396.
            IF t391 = abap_true.
            ELSE.
              DATA t400 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t402 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t403 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t403 = t381->current.
              t402 = t403.
              DATA t405 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t406) = xsdbool( t402 IS INITIAL ).
              IF t406 = abap_true.
              ELSE.
                DATA t409 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t410 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t410 = t402.
                DATA t412 TYPE string.
                t412 = t384->value.
                t409 = t410->find_variable( i_name = t412 ).
                t405 = t409.
              ENDIF.
              t400 = t405.
              DATA t414 TYPE REF TO zcl_lnt_typed_identifier.
              DATA t415 TYPE abap_bool.
              t415 = xsdbool( t400 IS BOUND ).
              IF t415 = abap_true.
                t414 = t400.
              ELSE.
                DATA t422 TYPE REF TO zcl_lnt_typed_identifier.
                DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t426 TYPE string.
                t426 = t384->value.
                DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t428->has = abap_true.
                t428->value = t426.
                t424 = t428.
                t422 = t381->find_type_pool_constant( i_name = t424 ).
                t414 = t422.
              ENDIF.
              t390 = t414.
            ENDIF.
            t379 = t390.
            DATA t430 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t431) = xsdbool( t379 IS INITIAL ).
            IF t431 = abap_true.
            ELSE.
              DATA t438 TYPE REF TO zcl_lnt_abstract_type.
              t438 = t379->type_cba0.
              t430 = t438.
            ENDIF.
            t377 = t430.
            DATA t440 TYPE abap_bool.
            t440 = xsdbool( t377 IS BOUND ).
            IF t440 = abap_true.
              result = t377.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d819_d6d6df99a2b9.
  ENDMETHOD.
ENDCLASS.
