* TS: src/abap/5_syntax/statements/method_implementation.ts:10:1 MethodImplementation
CLASS zcl_lnt_sy_mthd_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_mthd_implmnttn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = CAST zcl_lnt_syntax_input( t2 ).
    t5 = t6->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_current_scope.
    DATA(t10) = CAST zcl_lnt_syntax_input( t2 ).
    t9 = t10->scope.
    t8 = t9->get_name(  ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
    t14 = t15->find_first_expression( i_type_9913 = t16 ).
    t13 = t14.
    t12 = t13->get_first_token(  ).
    t11 = t12.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = CAST zcl_lnt_abstract_token( t11 ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = CAST zcl_lnt_abstract_token( t19 ).
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = CAST zcl_lnt_abstract_token( t19 ).
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = CAST zcl_lnt_abstract_token( t26 ).
      t28 = t29->str.
      t25 = t28.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t25.
      t21 = t30.
    ENDIF.
    t18 = t21.
    t17 = t18.
    DATA t31 TYPE REF TO zif_lnt_class_definition.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_class_definition.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_current_scope.
    DATA t34 TYPE REF TO zcl_lnt_current_scope.
    DATA(t35) = CAST zcl_lnt_syntax_input( t2 ).
    t34 = t35->scope.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = t7.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zif_lnt_class_definition.
    CLEAR t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t45) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
    t44 = t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    t46 = t47.
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = CAST zlnt_runtime_opti_4ba3bdccd169( t44 ).
    IF t49 IS INITIAL.
      t48 = abap_true.
    ELSEIF t49->has = abap_false.
      t48 = abap_true.
    ENDIF.
    t43 = t48.
    IF t43 = abap_true.
      DATA t50 TYPE REF TO zif_lnt_class_definition.
      CLEAR t50.
      t42 = t50.
    ELSE.
      DATA t51 TYPE REF TO zif_lnt_class_definition.
      CLEAR t51.
      DATA t52 TYPE REF TO zif_lnt_class_definition.
      CLEAR t52.
      DATA t53 TYPE REF TO zif_lnt_class_definition.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t56) = CAST zcl_lnt_current_scope( t33 ).
      t55 = t56->current.
      t54 = t55.
      DATA t57 TYPE REF TO zif_lnt_class_definition.
      CLEAR t57.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = CAST zcl_lnt_spaghetti_scope_node( t54 ).
      IF t59 IS INITIAL.
        t58 = abap_true.
      ENDIF.
      IF t58 = abap_true.
        DATA t60 TYPE REF TO zif_lnt_class_definition.
        CLEAR t60.
        t57 = t60.
      ELSE.
        DATA t61 TYPE REF TO zif_lnt_class_definition.
        DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t63) = CAST zcl_lnt_spaghetti_scope_node( t54 ).
        t62 = t63.
        DATA t64 TYPE string.
        DATA(t65) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
        t64 = t65->value.
        t61 = t62->find_class_definition( i_name = t64 ).
        t57 = t61.
      ENDIF.
      t53 = t57.
      t52 = t53.
      DATA t66 TYPE REF TO zif_lnt_class_definition.
      CLEAR t66.
      DATA t67 TYPE abap_bool.
      DATA(t68) = CAST zif_lnt_class_definition( t52 ).
      t67 = xsdbool( t68 IS BOUND ).
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zif_lnt_class_definition.
        CLEAR t69.
        DATA(t70) = abap_true.
        IF t70 = abap_true.
          DATA t71 TYPE REF TO zif_lnt_class_definition.
          DATA(t72) = CAST zif_lnt_class_definition( t52 ).
          t71 = t72.
          t69 = t71.
        ELSE.
          DATA t73 TYPE REF TO zif_lnt_class_definition.
          CLEAR t73.
          t69 = t73.
        ENDIF.
        t66 = t69.
      ELSE.
        DATA t74 TYPE REF TO zif_lnt_class_definition.
        CLEAR t74.
        DATA t75 TYPE REF TO zcl_lnt_class.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_class.
        CLEAR t76.
        DATA t77 TYPE REF TO zif_lnt_object.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_registry.
        DATA(t79) = CAST zcl_lnt_current_scope( t33 ).
        t78 = t79->reg.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA(t82) = |CLAS|.
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
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA t87 TYPE string.
          DATA(t88) = CAST zlnt_runtime_opti_4ba3bdccd169( t36 ).
          t87 = t88->value.
          DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t89->has = abap_true.
          t89->value = t87.
          t85 = t89.
        ELSE.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t85 = t90.
        ENDIF.
        t77 = t78->get_object( i_type_9913 = t80 i_name = t85 ).
        DATA t91 TYPE REF TO object.
        t91 = t77.
        t76 ?= t91.
        t75 = t76.
        DATA t92 TYPE REF TO zif_lnt_class_definition.
        CLEAR t92.
        DATA t93 TYPE abap_bool.
        DATA(t94) = CAST zcl_lnt_class( t75 ).
        t93 = xsdbool( t94 IS BOUND ).
        IF t93 = abap_true.
          DATA t95 TYPE REF TO zif_lnt_class_definition.
          DATA t96 TYPE REF TO zcl_lnt_class.
          DATA(t97) = CAST zcl_lnt_class( t75 ).
          t96 = t97.
          t95 = t96->gt_dfn_ins_src_obj_cls_ts_clss(  ).
          t92 = t95.
        ELSE.
          DATA t98 TYPE REF TO zif_lnt_class_definition.
          CLEAR t98.
          t92 = t98.
        ENDIF.
        t74 = t92.
        t66 = t74.
      ENDIF.
      t51 = t66.
      t42 = t51.
    ENDIF.
    t32 = t42.
    t31 = t32.
    DATA(t99) = VALUE abap_bool( ).
    DATA t100 TYPE REF TO zif_lnt_class_definition.
    DATA(t101) = CAST zif_lnt_class_definition( t31 ).
    t100 = t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    t102 = t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = CAST zif_lnt_class_definition( t100 ).
    IF t105 IS INITIAL.
      t104 = abap_true.
    ENDIF.
    t99 = t104.
    IF t99 = abap_true.
      DATA t106 TYPE string.
      DATA t107 TYPE string.
      DATA t108 TYPE string.
      DATA(t109) = |Class definition for "|.
      DATA(t110) = t7.
      DATA(t111) = strlen( t109 ).
      t108 = |{ t109 }{ t110 }|.
      DATA(t112) = |" not found|.
      DATA(t113) = strlen( t108 ).
      t107 = |{ t108 }{ t112 }|.
      t106 = t107.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t115) = CAST zcl_lnt_syntax_input( t2 ).
      t114 = t115->issues.
      DATA t116 TYPE REF TO zcl_lnt_issue.
      DATA(t117) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t119) = CAST zcl_lnt_statement_node( t1 ).
      t118 = t119->get_first_token(  ).
      DATA(t120) = t106.
      DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t121.
      t116 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t117 i_token = t118 i_message_26cb = t120 i_fix = t121 ).
      APPEND t116 TO t114->items.
      RETURN.
    ENDIF.
    DATA t122 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA t123 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA(t124) = CAST zcl_lnt_object_oriented( t3 ).
    DATA t125 TYPE REF TO zif_lnt_interface_definition.
    DATA t126 TYPE REF TO zif_lnt_class_definition.
    DATA(t127) = CAST zif_lnt_class_definition( t31 ).
    t126 = t127.
    t125 ?= t126.
    DATA(t128) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
    t123 = t124->search_method_name( i_def = t125 i_name = t128 ).
    t122 = t123.
    DATA t129 TYPE REF TO zif_lnt_method_definition.
    DATA t130 TYPE REF TO zif_lnt_method_definition.
    DATA(t131) = CAST zcl_lnt_shape_a38e878f( t122 ).
    t130 = t131->method.
    t129 = t130.
    DATA(t132) = VALUE abap_bool( ).
    DATA t133 TYPE abap_bool.
    DATA t134 TYPE abap_bool.
    DATA t135 TYPE REF TO zif_lnt_class_definition.
    DATA(t136) = CAST zif_lnt_class_definition( t31 ).
    t135 = t136.
    t134 = t135->is_for_testing(  ).
    t133 = t134.
    IF t134 = abap_true.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t138.
      DATA t139 TYPE REF TO zif_lnt_method_definition.
      DATA(t140) = CAST zif_lnt_method_definition( t129 ).
      t139 = t140.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t141.
      DATA(t142) = VALUE abap_bool( ).
      DATA(t143) = CAST zif_lnt_method_definition( t139 ).
      IF t143 IS INITIAL.
        t142 = abap_true.
      ENDIF.
      IF t142 = abap_true.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t144.
        t141 = t144.
      ELSE.
        DATA t145 TYPE int8.
        DATA t146 TYPE REF TO zif_lnt_method_definition.
        DATA(t147) = CAST zif_lnt_method_definition( t139 ).
        t146 = t147.
        t145 = t146->get_visibility(  ).
        DATA(t148) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t148->has = abap_true.
        t148->value = t145.
        t141 = t148.
      ENDIF.
      t138 = t141.
      DATA t149 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t149.
      DATA(t150) = abap_true.
      IF t150 = abap_true.
        DATA(t151) = CONV int8( 1 ).
        DATA(t152) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t152->has = abap_true.
        t152->value = t151.
        t149 = t152.
      ELSE.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t153.
        t149 = t153.
      ENDIF.
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = VALUE abap_bool( ).
      IF t138 IS BOUND.
        t154 = t138->has.
      ENDIF.
      IF t149 IS BOUND.
        t155 = t149->has.
      ENDIF.
      IF t154 = t155.
        IF t154 = abap_false.
          t137 = abap_true.
        ELSEIF t138->value = t149->value.
          t137 = abap_true.
        ENDIF.
      ENDIF.
      IF t137 = abap_true.
        t137 = abap_false.
      ELSE.
        t137 = abap_true.
      ENDIF.
      t133 = t137.
    ENDIF.
    t132 = t133.
    IF t133 = abap_true.
      DATA(t156) = VALUE abap_bool( ).
      DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t159.
      t158 = t159.
      DATA(t160) = CAST zlnt_runtime_arra_8ecd6afe19e0( t158 ).
      DATA(t161) = |SETUP|.
      APPEND t161 TO t160->items.
      DATA(t162) = CAST zlnt_runtime_arra_8ecd6afe19e0( t158 ).
      DATA(t163) = |TEARDOWN|.
      APPEND t163 TO t162->items.
      DATA(t164) = CAST zlnt_runtime_arra_8ecd6afe19e0( t158 ).
      DATA(t165) = |CLASS_SETUP|.
      APPEND t165 TO t164->items.
      DATA(t166) = CAST zlnt_runtime_arra_8ecd6afe19e0( t158 ).
      DATA(t167) = |CLASS_TEARDOWN|.
      APPEND t167 TO t166->items.
      DATA(t168) = CAST zlnt_runtime_arra_8ecd6afe19e0( t158 ).
      t157 = t168.
      DATA t169 TYPE string.
      DATA t170 TYPE string.
      DATA(t171) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
      t170 = t171->value.
      DATA(t172) = strlen( t170 ).
      t169 = t170.
      IF t169 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t169 TO UPPER CASE.
      ELSE.
        t169 = zlnt_runtime_uppe_91169605024d=>full( t169 ).
      ENDIF.
      t156 = t157->includes( p0 = t169 ).
      t132 = t156.
    ENDIF.
    IF t132 = abap_true.
      DATA(t173) = VALUE string( ).
      DATA(t174) = VALUE string( ).
      DATA(t175) = VALUE string( ).
      DATA(t176) = |Special test method "|.
      DATA(t177) = VALUE string( ).
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t179) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
      t178 = t179.
      DATA(t180) = VALUE string( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = CAST zlnt_runtime_opti_4ba3bdccd169( t178 ).
      IF t182 IS INITIAL.
        t181 = abap_true.
      ELSEIF t182->has = abap_false.
        t181 = abap_true.
      ENDIF.
      IF t181 = abap_true.
        DATA(t183) = |undefined|.
        t180 = t183.
      ELSE.
        DATA t184 TYPE string.
        DATA(t185) = CAST zlnt_runtime_opti_4ba3bdccd169( t178 ).
        t184 = t185->value.
        t180 = t184.
      ENDIF.
      t177 = t180.
      DATA(t186) = strlen( t176 ).
      t175 = |{ t176 }{ t177 }|.
      DATA(t187) = |" must be private|.
      DATA(t188) = strlen( t175 ).
      t174 = |{ t175 }{ t187 }|.
      t173 = t174.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t190) = CAST zcl_lnt_syntax_input( t2 ).
      t189 = t190->issues.
      DATA t191 TYPE REF TO zcl_lnt_issue.
      DATA(t192) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t193 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t194) = CAST zcl_lnt_statement_node( t1 ).
      t193 = t194->get_first_token(  ).
      DATA(t195) = t173.
      DATA t196 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t196.
      t191 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t192 i_token = t193 i_message_26cb = t195 i_fix = t196 ).
      APPEND t191 TO t189->items.
      RETURN.
    ENDIF.
    DATA t197 TYPE REF TO zcl_lnt_position.
    DATA t198 TYPE REF TO zcl_lnt_position.
    DATA t199 TYPE REF TO zcl_lnt_abstract_token.
    DATA t200 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t201) = CAST zcl_lnt_statement_node( t1 ).
    t200 = t201->get_first_token(  ).
    t199 = t200.
    DATA t202 TYPE REF TO zcl_lnt_position.
    DATA(t203) = CAST zcl_lnt_abstract_token( t199 ).
    t202 = t203->start.
    t198 = t202.
    t197 = t198.
    DATA(t204) = VALUE abap_bool( ).
    DATA(t205) = VALUE abap_bool( ).
    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_method_definition.
    DATA(t208) = CAST zif_lnt_method_definition( t129 ).
    t207 = t208.
    DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t209.
    DATA(t210) = VALUE abap_bool( ).
    DATA(t211) = CAST zif_lnt_method_definition( t207 ).
    IF t211 IS INITIAL.
      t210 = abap_true.
    ENDIF.
    IF t210 = abap_true.
      DATA t212 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t212.
      t209 = t212.
    ELSE.
      DATA t213 TYPE abap_bool.
      DATA t214 TYPE REF TO zif_lnt_method_definition.
      DATA(t215) = CAST zif_lnt_method_definition( t207 ).
      t214 = t215.
      t213 = t214->is_static_4685(  ).
      DATA(t216) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t216->has = abap_true.
      t216->value = t213.
      t209 = t216.
    ENDIF.
    t206 = t209.
    DATA t217 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t217.
    DATA(t218) = abap_true.
    IF t218 = abap_true.
      DATA(t219) = abap_false.
      DATA(t220) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t220->has = abap_true.
      t220->value = t219.
      t217 = t220.
    ELSE.
      DATA t221 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t221.
      t217 = t221.
    ENDIF.
    DATA(t222) = VALUE abap_bool( ).
    DATA(t223) = VALUE abap_bool( ).
    IF t206 IS BOUND.
      t222 = t206->has.
    ENDIF.
    IF t217 IS BOUND.
      t223 = t217->has.
    ENDIF.
    IF t222 = t223.
      IF t222 = abap_false.
        t205 = abap_true.
      ELSEIF t206->value = t217->value.
        t205 = abap_true.
      ENDIF.
    ENDIF.
    t204 = t205.
    IF t205 = abap_false.
      DATA(t224) = VALUE abap_bool( ).
      DATA t225 TYPE REF TO zif_lnt_method_definition.
      DATA(t226) = CAST zif_lnt_method_definition( t129 ).
      t225 = t226.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      t227 = t228.
      DATA(t229) = VALUE abap_bool( ).
      DATA(t230) = CAST zif_lnt_method_definition( t225 ).
      IF t230 IS INITIAL.
        t229 = abap_true.
      ENDIF.
      t224 = t229.
      t204 = t224.
    ENDIF.
    IF t204 = abap_true.
      DATA t231 TYPE REF TO zcl_lnt_current_scope.
      DATA t232 TYPE REF TO zcl_lnt_current_scope.
      DATA(t233) = CAST zcl_lnt_syntax_input( t2 ).
      t232 = t233->scope.
      t231 = t232.
      DATA t234 TYPE string.
      DATA t235 TYPE string.
      DATA(t236) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
      t235 = t236->value.
      t234 = t235.
      DATA t237 TYPE REF TO zcl_lnt_position.
      DATA(t238) = CAST zcl_lnt_position( t197 ).
      t237 = t238.
      DATA t239 TYPE string.
      DATA t240 TYPE string.
      DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
      t240 = t241->filename.
      t239 = t240.
      DATA t242 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t243 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t244) = |method_instance|.
      DATA(t245) = t234.
      DATA(t246) = t239.
      DATA(t247) = CAST zcl_lnt_position( t237 ).
      DATA t248 TYPE REF TO zcl_lnt_position.
      CLEAR t248.
      t243 = NEW zcl_lnt_iscope_identifier( i_stype = t244 i_sname = t245 i_filename = t246 i_start = t247 i_end = t248 ).
      t242 = t243.
      DATA(t249) = VALUE abap_bool( ).
      DATA t250 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t252) = CAST zcl_lnt_current_scope( t231 ).
      t251 = t252->current.
      t250 = t251.
      DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      t253 = t254.
      DATA(t255) = VALUE abap_bool( ).
      DATA(t256) = CAST zcl_lnt_spaghetti_scope_node( t250 ).
      IF t256 IS INITIAL.
        t255 = abap_true.
      ENDIF.
      t249 = t255.
      IF t249 = abap_true.
        DATA(t257) = CAST zcl_lnt_current_scope( t231 ).
        DATA t258 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t258.
        DATA(t259) = abap_true.
        IF t259 = abap_true.
          DATA t260 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t261) = CAST zcl_lnt_iscope_identifier( t242 ).
          DATA t262 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t262.
          t260 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t261 i_parent = t262 ).
          t258 = t260.
        ELSE.
          DATA t263 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t263.
          t258 = t263.
        ENDIF.
        t257->current = t258.
      ELSE.
        DATA t264 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t265 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t266 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t267) = CAST zcl_lnt_current_scope( t231 ).
        t266 = t267->current.
        t265 = t266.
        t264 = t265.
        DATA(t268) = CAST zcl_lnt_current_scope( t231 ).
        DATA t269 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t269.
        DATA(t270) = abap_true.
        IF t270 = abap_true.
          DATA t271 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t271.
          DATA(t272) = CAST zcl_lnt_iscope_identifier( t242 ).
          DATA t273 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t273.
          DATA(t274) = abap_true.
          IF t274 = abap_true.
            DATA(t275) = CAST zcl_lnt_spaghetti_scope_node( t264 ).
            t273 = t275.
          ELSE.
            DATA t276 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t276.
            t273 = t276.
          ENDIF.
          t271 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t272 i_parent = t273 ).
          t269 = t271.
        ELSE.
          DATA t277 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t277.
          t269 = t277.
        ENDIF.
        t268->current = t269.
        DATA(t278) = CAST zcl_lnt_spaghetti_scope_node( t264 ).
        DATA t279 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t280 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t281) = CAST zcl_lnt_current_scope( t231 ).
        t280 = t281->current.
        t279 = t280.
        t278->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t279 ).
      ENDIF.
      DATA t282 TYPE REF TO zcl_lnt_current_scope.
      DATA(t283) = CAST zcl_lnt_syntax_input( t2 ).
      t282 = t283->scope.
      DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t285 TYPE REF TO zif_lnt_attributes.
      DATA t286 TYPE REF TO zif_lnt_class_definition.
      DATA(t287) = CAST zif_lnt_class_definition( t31 ).
      t286 = t287.
      t285 = t286->get_attributes(  ).
      t284 = t285->get_instance(  ).
      t282->add_list( i_identifiers = t284 ).
    ENDIF.
    DATA t288 TYPE REF TO zcl_lnt_current_scope.
    DATA t289 TYPE REF TO zcl_lnt_current_scope.
    DATA(t290) = CAST zcl_lnt_syntax_input( t2 ).
    t289 = t290->scope.
    t288 = t289.
    DATA t291 TYPE string.
    DATA t292 TYPE string.
    DATA(t293) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
    t292 = t293->value.
    t291 = t292.
    DATA t294 TYPE REF TO zcl_lnt_position.
    DATA(t295) = CAST zcl_lnt_position( t197 ).
    t294 = t295.
    DATA t296 TYPE string.
    DATA t297 TYPE string.
    DATA(t298) = CAST zcl_lnt_syntax_input( t2 ).
    t297 = t298->filename.
    t296 = t297.
    DATA t299 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t300 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t301) = |method|.
    DATA(t302) = t291.
    DATA(t303) = t296.
    DATA(t304) = CAST zcl_lnt_position( t294 ).
    DATA t305 TYPE REF TO zcl_lnt_position.
    CLEAR t305.
    t300 = NEW zcl_lnt_iscope_identifier( i_stype = t301 i_sname = t302 i_filename = t303 i_start = t304 i_end = t305 ).
    t299 = t300.
    DATA(t306) = VALUE abap_bool( ).
    DATA t307 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t308 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t309) = CAST zcl_lnt_current_scope( t288 ).
    t308 = t309->current.
    t307 = t308.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    t310 = t311.
    DATA(t312) = VALUE abap_bool( ).
    DATA(t313) = CAST zcl_lnt_spaghetti_scope_node( t307 ).
    IF t313 IS INITIAL.
      t312 = abap_true.
    ENDIF.
    t306 = t312.
    IF t306 = abap_true.
      DATA(t314) = CAST zcl_lnt_current_scope( t288 ).
      DATA t315 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t315.
      DATA(t316) = abap_true.
      IF t316 = abap_true.
        DATA t317 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t318) = CAST zcl_lnt_iscope_identifier( t299 ).
        DATA t319 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t319.
        t317 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t318 i_parent = t319 ).
        t315 = t317.
      ELSE.
        DATA t320 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t320.
        t315 = t320.
      ENDIF.
      t314->current = t315.
    ELSE.
      DATA t321 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t322 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t323 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t324) = CAST zcl_lnt_current_scope( t288 ).
      t323 = t324->current.
      t322 = t323.
      t321 = t322.
      DATA(t325) = CAST zcl_lnt_current_scope( t288 ).
      DATA t326 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t326.
      DATA(t327) = abap_true.
      IF t327 = abap_true.
        DATA t328 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t328.
        DATA(t329) = CAST zcl_lnt_iscope_identifier( t299 ).
        DATA t330 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t330.
        DATA(t331) = abap_true.
        IF t331 = abap_true.
          DATA(t332) = CAST zcl_lnt_spaghetti_scope_node( t321 ).
          t330 = t332.
        ELSE.
          DATA t333 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t333.
          t330 = t333.
        ENDIF.
        t328 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t329 i_parent = t330 ).
        t326 = t328.
      ELSE.
        DATA t334 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t334.
        t326 = t334.
      ENDIF.
      t325->current = t326.
      DATA(t335) = CAST zcl_lnt_spaghetti_scope_node( t321 ).
      DATA t336 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t337 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t338) = CAST zcl_lnt_current_scope( t288 ).
      t337 = t338->current.
      t336 = t337.
      t335->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t336 ).
    ENDIF.
    DATA(t339) = VALUE abap_bool( ).
    DATA t340 TYPE REF TO zif_lnt_method_definition.
    DATA(t341) = CAST zif_lnt_method_definition( t129 ).
    t340 = t341.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    t342 = t343.
    DATA(t344) = VALUE abap_bool( ).
    DATA(t345) = CAST zif_lnt_method_definition( t340 ).
    IF t345 IS INITIAL.
      t344 = abap_true.
    ENDIF.
    t339 = t344.
    IF t339 = abap_true.
      DATA(t346) = VALUE string( ).
      DATA(t347) = VALUE string( ).
      DATA(t348) = VALUE string( ).
      DATA(t349) = |Method definition "|.
      DATA(t350) = VALUE string( ).
      DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t352) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
      t351 = t352.
      DATA(t353) = VALUE string( ).
      DATA(t354) = VALUE abap_bool( ).
      DATA(t355) = CAST zlnt_runtime_opti_4ba3bdccd169( t351 ).
      IF t355 IS INITIAL.
        t354 = abap_true.
      ELSEIF t355->has = abap_false.
        t354 = abap_true.
      ENDIF.
      IF t354 = abap_true.
        DATA(t356) = |undefined|.
        t353 = t356.
      ELSE.
        DATA t357 TYPE string.
        DATA(t358) = CAST zlnt_runtime_opti_4ba3bdccd169( t351 ).
        t357 = t358->value.
        t353 = t357.
      ENDIF.
      t350 = t353.
      DATA(t359) = strlen( t349 ).
      t348 = |{ t349 }{ t350 }|.
      DATA(t360) = |" not found|.
      DATA(t361) = strlen( t348 ).
      t347 = |{ t348 }{ t360 }|.
      t346 = t347.
      DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t363) = CAST zcl_lnt_syntax_input( t2 ).
      t362 = t363->issues.
      DATA t364 TYPE REF TO zcl_lnt_issue.
      DATA(t365) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t366 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t367) = CAST zcl_lnt_statement_node( t1 ).
      t366 = t367->get_first_token(  ).
      DATA(t368) = t346.
      DATA t369 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t369.
      t364 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t365 i_token = t366 i_message_26cb = t368 i_fix = t369 ).
      APPEND t364 TO t362->items.
      RETURN.
    ENDIF.
    DATA t370 TYPE REF TO zcl_lnt_current_scope.
    DATA(t371) = CAST zcl_lnt_syntax_input( t2 ).
    t370 = t371->scope.
    DATA t372 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t372.
    DATA(t373) = abap_true.
    IF t373 = abap_true.
      DATA(t374) = CAST zcl_lnt_abstract_token( t11 ).
      t372 = t374.
    ELSE.
      DATA t375 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t375.
      t372 = t375.
    ENDIF.
    DATA t376 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t376.
    DATA(t377) = abap_true.
    IF t377 = abap_true.
      DATA t378 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t379 TYPE REF TO zif_lnt_method_definition.
      DATA(t380) = CAST zif_lnt_method_definition( t129 ).
      t379 = t380.
      t378 ?= t379.
      t376 = t378.
    ELSE.
      DATA t381 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t381.
      t376 = t381.
    ENDIF.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t383) = |Method Implementation|.
    CREATE OBJECT t382.
    t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t382->sval = t383.
    DATA t384 TYPE string.
    DATA(t385) = CAST zcl_lnt_syntax_input( t2 ).
    t384 = t385->filename.
    DATA t386 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t386.
    t370->add_reference( i_usage = t372 i_referencing = t376 i_type_9913 = t382 i_filename = t384 i_extra = t386 ).
    DATA t387 TYPE REF TO zcl_lnt_current_scope.
    DATA(t388) = CAST zcl_lnt_syntax_input( t2 ).
    t387 = t388->scope.
    DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t390 TYPE REF TO zif_lnt_method_parameters.
    DATA t391 TYPE REF TO zif_lnt_method_definition.
    DATA(t392) = CAST zif_lnt_method_definition( t129 ).
    t391 = t392.
    t390 = t391->get_parameters(  ).
    t389 = t390->get_all(  ).
    t387->add_list( i_identifiers = t389 ).
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t394) = CAST zcl_lnt_object_oriented( t3 ).
    DATA t395 TYPE REF TO zif_lnt_interface_definition.
    DATA t396 TYPE REF TO zif_lnt_class_definition.
    DATA(t397) = CAST zif_lnt_class_definition( t31 ).
    t396 = t397.
    t395 ?= t396.
    t393 = t394->find_interfaces( i_cd = t395 ).
    DATA t398 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t398.
    DATA t399 TYPE REF TO object.
    CLEAR t399.
    LOOP AT t393->items INTO t399.
      t398 ?= t399.
      DATA(t400) = VALUE abap_bool( ).
      DATA(t401) = VALUE abap_bool( ).
      DATA t402 TYPE string.
      DATA t403 TYPE string.
      DATA(t404) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
      t403 = t404->value.
      DATA(t405) = strlen( t403 ).
      t402 = t403.
      IF t402 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t402 TO UPPER CASE.
      ELSE.
        t402 = zlnt_runtime_uppe_91169605024d=>full( t402 ).
      ENDIF.
      DATA(t406) = VALUE string( ).
      DATA t407 TYPE string.
      DATA t408 TYPE string.
      DATA(t409) = CAST zcl_lnt_iimplementing( t398 ).
      t408 = t409->name.
      DATA(t410) = strlen( t408 ).
      t407 = t408.
      IF t407 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t407 TO UPPER CASE.
      ELSE.
        t407 = zlnt_runtime_uppe_91169605024d=>full( t407 ).
      ENDIF.
      DATA(t411) = |~|.
      DATA(t412) = strlen( t407 ).
      t406 = |{ t407 }{ t411 }|.
      DATA(t413) = strlen( t402 ).
      DATA t414 TYPE i.
      DATA(t415) = VALUE i( ).
      DATA(t416) = VALUE string( ).
      t414 = strlen( t406 ).
      IF t414 = 0.
        t401 = abap_true.
      ELSEIF t414 <= t413.
        t415 = 0.
        t416 = t402+t415(t414).
        IF t416 = t406.
          t401 = abap_true.
        ENDIF.
      ENDIF.
      DATA(t417) = abap_false.
      t400 = xsdbool( t401 = t417 ).
      IF t400 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t418 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t418.
      DATA t419 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t419.
      DATA t420 TYPE REF TO zcl_lnt_current_scope.
      DATA t421 TYPE REF TO zcl_lnt_current_scope.
      DATA(t422) = CAST zcl_lnt_syntax_input( t2 ).
      t421 = t422->scope.
      t420 = t421.
      DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t423.
      DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t424.
      DATA(t425) = abap_true.
      IF t425 = abap_true.
        DATA t426 TYPE string.
        DATA(t427) = CAST zcl_lnt_iimplementing( t398 ).
        t426 = t427->name.
        DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t428->has = abap_true.
        t428->value = t426.
        t424 = t428.
      ELSE.
        DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t429.
        t424 = t429.
      ENDIF.
      t423 = t424.
      DATA t430 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t430.
      DATA(t431) = VALUE abap_bool( ).
      DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t433) = CAST zlnt_runtime_opti_4ba3bdccd169( t423 ).
      t432 = t433.
      DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t435.
      t434 = t435.
      DATA(t436) = VALUE abap_bool( ).
      DATA(t437) = CAST zlnt_runtime_opti_4ba3bdccd169( t432 ).
      IF t437 IS INITIAL.
        t436 = abap_true.
      ELSEIF t437->has = abap_false.
        t436 = abap_true.
      ENDIF.
      t431 = t436.
      IF t431 = abap_true.
        DATA t438 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t438.
        t430 = t438.
      ELSE.
        DATA t439 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t439.
        DATA t440 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t440.
        DATA t441 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t441.
        DATA t442 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t443 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t444) = CAST zcl_lnt_current_scope( t420 ).
        t443 = t444->current.
        t442 = t443.
        DATA t445 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t445.
        DATA(t446) = VALUE abap_bool( ).
        DATA(t447) = CAST zcl_lnt_spaghetti_scope_node( t442 ).
        IF t447 IS INITIAL.
          t446 = abap_true.
        ENDIF.
        IF t446 = abap_true.
          DATA t448 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t448.
          t445 = t448.
        ELSE.
          DATA t449 TYPE REF TO zif_lnt_interface_definition.
          DATA t450 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t451) = CAST zcl_lnt_spaghetti_scope_node( t442 ).
          t450 = t451.
          DATA t452 TYPE string.
          DATA(t453) = CAST zlnt_runtime_opti_4ba3bdccd169( t423 ).
          t452 = t453->value.
          t449 = t450->find_interface_definition( i_name = t452 ).
          t445 = t449.
        ENDIF.
        t441 = t445.
        t440 = t441.
        DATA t454 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t454.
        DATA t455 TYPE abap_bool.
        DATA(t456) = CAST zif_lnt_interface_definition( t440 ).
        t455 = xsdbool( t456 IS BOUND ).
        IF t455 = abap_true.
          DATA t457 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t457.
          DATA(t458) = abap_true.
          IF t458 = abap_true.
            DATA t459 TYPE REF TO zif_lnt_interface_definition.
            DATA(t460) = CAST zif_lnt_interface_definition( t440 ).
            t459 = t460.
            t457 = t459.
          ELSE.
            DATA t461 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t461.
            t457 = t461.
          ENDIF.
          t454 = t457.
        ELSE.
          DATA t462 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t462.
          DATA t463 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t463.
          DATA t464 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t464.
          DATA t465 TYPE REF TO zif_lnt_object.
          CLEAR t465.
          DATA t466 TYPE REF TO zif_lnt_registry.
          DATA(t467) = CAST zcl_lnt_current_scope( t420 ).
          t466 = t467->reg.
          DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t468.
          DATA(t469) = abap_true.
          IF t469 = abap_true.
            DATA(t470) = |INTF|.
            DATA(t471) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t471->has = abap_true.
            t471->value = t470.
            t468 = t471.
          ELSE.
            DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t472.
            t468 = t472.
          ENDIF.
          DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t473.
          DATA(t474) = abap_true.
          IF t474 = abap_true.
            DATA t475 TYPE string.
            DATA(t476) = CAST zlnt_runtime_opti_4ba3bdccd169( t423 ).
            t475 = t476->value.
            DATA(t477) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t477->has = abap_true.
            t477->value = t475.
            t473 = t477.
          ELSE.
            DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t478.
            t473 = t478.
          ENDIF.
          t465 = t466->get_object( i_type_9913 = t468 i_name = t473 ).
          DATA t479 TYPE REF TO object.
          t479 = t465.
          t464 ?= t479.
          t463 = t464.
          DATA t480 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t480.
          DATA t481 TYPE abap_bool.
          DATA(t482) = CAST zcl_lnt_ob_interface( t463 ).
          t481 = xsdbool( t482 IS BOUND ).
          IF t481 = abap_true.
            DATA t483 TYPE REF TO zif_lnt_interface_definition.
            DATA t484 TYPE REF TO zcl_lnt_ob_interface.
            DATA t485 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t486) = CAST zcl_lnt_ob_interface( t463 ).
            t485 = t486.
            t484 = t485.
            DATA t487 TYPE REF TO zif_lnt_interface_definition.
            DATA(t488) = CAST zcl_lnt_ob_interface( t484 ).
            t487 = t488->def.
            t483 = t487.
            t480 = t483.
          ELSE.
            DATA t489 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t489.
            t480 = t489.
          ENDIF.
          t462 = t480.
          t454 = t462.
        ENDIF.
        t439 = t454.
        t430 = t439.
      ENDIF.
      t419 = t430.
      t418 = t419.
      DATA(t490) = VALUE abap_bool( ).
      DATA t491 TYPE REF TO zif_lnt_interface_definition.
      DATA(t492) = CAST zif_lnt_interface_definition( t418 ).
      t491 = t492.
      DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t494.
      t493 = t494.
      DATA(t495) = VALUE abap_bool( ).
      DATA(t496) = CAST zif_lnt_interface_definition( t491 ).
      IF t496 IS INITIAL.
        t495 = abap_true.
      ENDIF.
      t490 = t495.
      IF t490 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t497 TYPE REF TO zcl_lnt_current_scope.
      DATA(t498) = CAST zcl_lnt_syntax_input( t2 ).
      t497 = t498->scope.
      DATA t499 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t499.
      DATA(t500) = abap_true.
      IF t500 = abap_true.
        DATA(t501) = CAST zcl_lnt_abstract_token( t11 ).
        t499 = t501.
      ELSE.
        DATA t502 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t502.
        t499 = t502.
      ENDIF.
      DATA t503 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t503.
      DATA(t504) = abap_true.
      IF t504 = abap_true.
        DATA t505 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t506 TYPE REF TO zif_lnt_interface_definition.
        DATA(t507) = CAST zif_lnt_interface_definition( t418 ).
        t506 = t507.
        t505 ?= t506.
        t503 = t505.
      ELSE.
        DATA t508 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t508.
        t503 = t508.
      ENDIF.
      DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t510) = |Object|.
      CREATE OBJECT t509.
      t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t509->sval = t510.
      DATA t511 TYPE string.
      DATA(t512) = CAST zcl_lnt_syntax_input( t2 ).
      t511 = t512->filename.
      DATA t513 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t513.
      t497->add_reference( i_usage = t499 i_referencing = t503 i_type_9913 = t509 i_filename = t511 i_extra = t513 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d907_4d9e0f7de691.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
