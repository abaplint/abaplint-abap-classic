* TS: src/abap/5_syntax/statements/method_implementation.ts:10:1 MethodImplementation
CLASS zcl_lnt_sy_mthd_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_mthd_implmnttn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = t2.
    t5 = t6->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_current_scope.
    DATA(t10) = t2.
    t9 = t10->scope.
    t8 = t9->get_name( ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA(t15) = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t14 = t15->find_first_expression( i_type_9913 = t16 ).
    t13 = t14.
    t12 = t13->get_first_token( ).
    t11 = t12.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = t11.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t19.
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
      DATA(t27) = t19.
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = t26.
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
    DATA(t35) = t2.
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
    DATA(t45) = t36.
    t44 = t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    t46 = t47.
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = t44.
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
      DATA(t56) = t33.
      t55 = t56->current.
      t54 = t55.
      DATA t57 TYPE REF TO zif_lnt_class_definition.
      CLEAR t57.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = t54.
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
        DATA(t63) = t54.
        t62 = t63.
        DATA t64 TYPE string.
        DATA(t65) = t36.
        t64 = t65->value.
        t61 = t62->find_class_definition( i_name = t64 ).
        t57 = t61.
      ENDIF.
      t53 = t57.
      t52 = t53.
      DATA t66 TYPE REF TO zif_lnt_class_definition.
      CLEAR t66.
      DATA t67 TYPE abap_bool.
      DATA(t68) = t52.
      t67 = xsdbool( t68 IS BOUND ).
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zif_lnt_class_definition.
        CLEAR t69.
        DATA(t70) = abap_true.
        IF t70 = abap_true.
          DATA t71 TYPE REF TO zif_lnt_class_definition.
          DATA(t72) = t52.
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
        DATA(t79) = t33.
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
          DATA(t88) = t36.
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
        DATA(t94) = t75.
        t93 = xsdbool( t94 IS BOUND ).
        IF t93 = abap_true.
          DATA t95 TYPE REF TO zif_lnt_class_definition.
          DATA t96 TYPE REF TO zcl_lnt_class.
          DATA(t97) = t75.
          t96 = t97.
          t95 = t96->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
    DATA(t101) = t31.
    t100 = t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    t102 = t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = t100.
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
      DATA(t115) = t2.
      t114 = t115->issues.
      DATA t116 TYPE REF TO zcl_lnt_issue.
      DATA(t117) = t2.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t119) = t1.
      t118 = t119->get_first_token( ).
      DATA(t120) = t106.
      DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t121.
      t116 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t117 i_token = t118 i_message_26cb = t120 i_fix = t121 ).
      t114->load( ).
      APPEND t116 TO t114->items.
      t114->save( ).
      RETURN.
    ENDIF.
    DATA t122 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA t123 TYPE REF TO zcl_lnt_shape_a38e878f.
    DATA(t124) = t3.
    DATA t125 TYPE REF TO zif_lnt_interface_definition.
    DATA t126 TYPE REF TO zif_lnt_class_definition.
    DATA(t127) = t31.
    t126 = t127.
    t125 ?= t126.
    DATA(t128) = t17.
    t123 = t124->search_method_name( i_def = t125 i_name = t128 ).
    t122 = t123.
    DATA t129 TYPE REF TO zif_lnt_method_definition.
    DATA t130 TYPE REF TO zif_lnt_method_definition.
    DATA(t131) = t122.
    t130 = t131->method.
    t129 = t130.
    DATA(t132) = VALUE abap_bool( ).
    DATA t133 TYPE abap_bool.
    DATA t134 TYPE abap_bool.
    DATA t135 TYPE REF TO zif_lnt_class_definition.
    DATA(t136) = t31.
    t135 = t136.
    t134 = t135->is_for_testing( ).
    t133 = t134.
    IF t134 = abap_true.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t138.
      DATA t139 TYPE REF TO zif_lnt_method_definition.
      DATA(t140) = t129.
      t139 = t140.
      DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t141.
      DATA(t142) = VALUE abap_bool( ).
      DATA(t143) = t139.
      IF t143 IS INITIAL.
        t142 = abap_true.
      ENDIF.
      IF t142 = abap_true.
        DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t144.
        t141 = t144.
      ELSE.
        DATA t145 TYPE f.
        DATA t146 TYPE REF TO zif_lnt_method_definition.
        DATA(t147) = t139.
        t146 = t147.
        t145 = t146->get_visibility( ).
        DATA(t148) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t148->has = abap_true.
        t148->value = t145.
        t141 = t148.
      ENDIF.
      t138 = t141.
      DATA t149 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t149.
      DATA(t150) = abap_true.
      IF t150 = abap_true.
        DATA(t151) = CONV f( 1 ).
        DATA(t152) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t152->has = abap_true.
        t152->value = t151.
        t149 = t152.
      ELSE.
        DATA t153 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
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
        ELSE.
          IF t138->number_special <> 0 OR t149->number_special <> 0.
            t137 = xsdbool( t138->number_special = t149->number_special AND t138->number_special <> 1 ).
          ELSE.
            t137 = xsdbool( t138->value = t149->value ).
          ENDIF.
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
      DATA(t160) = t158.
      DATA(t161) = |SETUP|.
      t160->load( ).
      APPEND t161 TO t160->items.
      t160->save( ).
      DATA(t162) = t158.
      DATA(t163) = |TEARDOWN|.
      t162->load( ).
      APPEND t163 TO t162->items.
      t162->save( ).
      DATA(t164) = t158.
      DATA(t165) = |CLASS_SETUP|.
      t164->load( ).
      APPEND t165 TO t164->items.
      t164->save( ).
      DATA(t166) = t158.
      DATA(t167) = |CLASS_TEARDOWN|.
      t166->load( ).
      APPEND t167 TO t166->items.
      t166->save( ).
      DATA(t168) = t158.
      t157 = t168.
      DATA t169 TYPE string.
      DATA t170 TYPE string.
      DATA(t171) = t17.
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
      DATA(t179) = t17.
      t178 = t179.
      DATA(t180) = VALUE string( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = t178.
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
        DATA(t185) = t178.
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
      DATA(t190) = t2.
      t189 = t190->issues.
      DATA t191 TYPE REF TO zcl_lnt_issue.
      DATA(t192) = t2.
      DATA t193 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t194) = t1.
      t193 = t194->get_first_token( ).
      DATA(t195) = t173.
      DATA t196 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t196.
      t191 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t192 i_token = t193 i_message_26cb = t195 i_fix = t196 ).
      t189->load( ).
      APPEND t191 TO t189->items.
      t189->save( ).
      RETURN.
    ENDIF.
    DATA t197 TYPE REF TO zcl_lnt_position.
    DATA t198 TYPE REF TO zcl_lnt_position.
    DATA t199 TYPE REF TO zcl_lnt_abstract_token.
    DATA t200 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t201) = t1.
    t200 = t201->get_first_token( ).
    t199 = t200.
    DATA t202 TYPE REF TO zcl_lnt_position.
    DATA(t203) = t199.
    t202 = t203->start.
    t198 = t202.
    t197 = t198.
    DATA(t204) = VALUE abap_bool( ).
    DATA(t205) = VALUE abap_bool( ).
    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_method_definition.
    DATA(t208) = t129.
    t207 = t208.
    DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t209.
    DATA(t210) = VALUE abap_bool( ).
    DATA(t211) = t207.
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
      DATA(t215) = t207.
      t214 = t215.
      t213 = t214->is_static_4685( ).
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
      DATA(t226) = t129.
      t225 = t226.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      t227 = t228.
      DATA(t229) = VALUE abap_bool( ).
      DATA(t230) = t225.
      IF t230 IS INITIAL.
        t229 = abap_true.
      ENDIF.
      t224 = t229.
      t204 = t224.
    ENDIF.
    IF t204 = abap_true.
      DATA t231 TYPE REF TO zcl_lnt_current_scope.
      DATA t232 TYPE REF TO zcl_lnt_current_scope.
      DATA(t233) = t2.
      t232 = t233->scope.
      t231 = t232.
      DATA t234 TYPE string.
      DATA t235 TYPE string.
      DATA(t236) = t17.
      t235 = t236->value.
      t234 = t235.
      DATA t237 TYPE REF TO zcl_lnt_position.
      DATA(t238) = t197.
      t237 = t238.
      DATA t239 TYPE string.
      DATA t240 TYPE string.
      DATA(t241) = t2.
      t240 = t241->filename.
      t239 = t240.
      DATA t242 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t242.
      DATA t243 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t244 TYPE string.
      DATA(t245) = |method_instance|.
      t244 = t245.
      DATA t246 TYPE string.
      DATA(t247) = t234.
      t246 = t247.
      DATA t248 TYPE REF TO zcl_lnt_position.
      DATA(t249) = t237.
      t248 = t249.
      DATA t250 TYPE string.
      DATA(t251) = t239.
      t250 = t251.
      DATA t252 TYPE REF TO zcl_lnt_position.
      DATA t253 TYPE REF TO zcl_lnt_position.
      CLEAR t253.
      t252 = t253.
      t243 = NEW zcl_lnt_iscope_identifier( i_stype = t244 i_sname = t246 i_filename = t250 i_start = t248 i_end = t252 ).
      CREATE OBJECT t243->zlnt_view_ownkeys_b0e8086400eb.
      t243->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t254 ).
      ENDIF.
      DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t255.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t255 ).
      ENDIF.
      DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t256.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t256 ).
      ENDIF.
      DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t257.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t257 ).
      ENDIF.
      DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t258.
      IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t258 ).
      ENDIF.
      CREATE OBJECT t243->zlnt_json_ownkeys_70e5fd461788.
      t243->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t259) = |stype|.
      DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t260.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
      ENDIF.
      DATA(t261) = |sname|.
      DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t262.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
      ENDIF.
      DATA(t263) = |start|.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t264.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
      ENDIF.
      DATA(t265) = |filename|.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t266.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
      ENDIF.
      DATA(t267) = |end|.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t268.
      IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
      ENDIF.
      t242 = t243.
      DATA(t269) = VALUE abap_bool( ).
      DATA t270 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t271 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t272) = t231.
      t271 = t272->current.
      t270 = t271.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      t273 = t274.
      DATA(t275) = VALUE abap_bool( ).
      DATA(t276) = t270.
      IF t276 IS INITIAL.
        t275 = abap_true.
      ENDIF.
      t269 = t275.
      IF t269 = abap_true.
        DATA(t277) = t231.
        DATA t278 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t278.
        DATA(t279) = abap_true.
        IF t279 = abap_true.
          DATA t280 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t281) = t242.
          DATA t282 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t282.
          t280 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t281 i_parent = t282 ).
          t278 = t280.
        ELSE.
          DATA t283 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t283.
          t278 = t283.
        ENDIF.
        t277->current = t278.
        DELETE t277->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      ELSE.
        DATA t284 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t285 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t286 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t287) = t231.
        t286 = t287->current.
        t285 = t286.
        t284 = t285.
        DATA(t288) = t231.
        DATA t289 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t289.
        DATA(t290) = abap_true.
        IF t290 = abap_true.
          DATA t291 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t291.
          DATA(t292) = t242.
          DATA t293 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t293.
          DATA(t294) = abap_true.
          IF t294 = abap_true.
            DATA(t295) = t284.
            t293 = t295.
          ELSE.
            DATA t296 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t296.
            t293 = t296.
          ENDIF.
          t291 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t292 i_parent = t293 ).
          t289 = t291.
        ELSE.
          DATA t297 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t297.
          t289 = t297.
        ENDIF.
        t288->current = t289.
        DELETE t288->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        DATA(t298) = t284.
        DATA t299 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t300 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t301) = t231.
        t300 = t301->current.
        t299 = t300.
        t298->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t299 ).
      ENDIF.
      DATA t302 TYPE REF TO zcl_lnt_current_scope.
      DATA(t303) = t2.
      t302 = t303->scope.
      DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t305 TYPE REF TO zif_lnt_attributes.
      DATA t306 TYPE REF TO zif_lnt_class_definition.
      DATA(t307) = t31.
      t306 = t307.
      t305 = t306->get_attributes( ).
      t304 = t305->get_instance( ).
      t302->add_list( i_identifiers = t304 ).
    ENDIF.
    DATA t308 TYPE REF TO zcl_lnt_current_scope.
    DATA t309 TYPE REF TO zcl_lnt_current_scope.
    DATA(t310) = t2.
    t309 = t310->scope.
    t308 = t309.
    DATA t311 TYPE string.
    DATA t312 TYPE string.
    DATA(t313) = t17.
    t312 = t313->value.
    t311 = t312.
    DATA t314 TYPE REF TO zcl_lnt_position.
    DATA(t315) = t197.
    t314 = t315.
    DATA t316 TYPE string.
    DATA t317 TYPE string.
    DATA(t318) = t2.
    t317 = t318->filename.
    t316 = t317.
    DATA t319 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t319.
    DATA t320 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t321 TYPE string.
    DATA(t322) = |method|.
    t321 = t322.
    DATA t323 TYPE string.
    DATA(t324) = t311.
    t323 = t324.
    DATA t325 TYPE REF TO zcl_lnt_position.
    DATA(t326) = t314.
    t325 = t326.
    DATA t327 TYPE string.
    DATA(t328) = t316.
    t327 = t328.
    DATA t329 TYPE REF TO zcl_lnt_position.
    DATA t330 TYPE REF TO zcl_lnt_position.
    CLEAR t330.
    t329 = t330.
    t320 = NEW zcl_lnt_iscope_identifier( i_stype = t321 i_sname = t323 i_filename = t327 i_start = t325 i_end = t329 ).
    CREATE OBJECT t320->zlnt_view_ownkeys_b0e8086400eb.
    t320->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t331 ).
    ENDIF.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t332 ).
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t333 ).
    ENDIF.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t334 ).
    ENDIF.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t335 ).
    ENDIF.
    CREATE OBJECT t320->zlnt_json_ownkeys_70e5fd461788.
    t320->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t336) = |stype|.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
    ENDIF.
    DATA(t338) = |sname|.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t338 p1 = t339 ).
    ENDIF.
    DATA(t340) = |start|.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
    ENDIF.
    DATA(t342) = |filename|.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t342 p1 = t343 ).
    ENDIF.
    DATA(t344) = |end|.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
    ENDIF.
    t319 = t320.
    DATA(t346) = VALUE abap_bool( ).
    DATA t347 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t348 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t349) = t308.
    t348 = t349->current.
    t347 = t348.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    t350 = t351.
    DATA(t352) = VALUE abap_bool( ).
    DATA(t353) = t347.
    IF t353 IS INITIAL.
      t352 = abap_true.
    ENDIF.
    t346 = t352.
    IF t346 = abap_true.
      DATA(t354) = t308.
      DATA t355 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t355.
      DATA(t356) = abap_true.
      IF t356 = abap_true.
        DATA t357 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t358) = t319.
        DATA t359 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t359.
        t357 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t358 i_parent = t359 ).
        t355 = t357.
      ELSE.
        DATA t360 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t360.
        t355 = t360.
      ENDIF.
      t354->current = t355.
      DELETE t354->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t361 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t362 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t363 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t364) = t308.
      t363 = t364->current.
      t362 = t363.
      t361 = t362.
      DATA(t365) = t308.
      DATA t366 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t366.
      DATA(t367) = abap_true.
      IF t367 = abap_true.
        DATA t368 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t368.
        DATA(t369) = t319.
        DATA t370 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t370.
        DATA(t371) = abap_true.
        IF t371 = abap_true.
          DATA(t372) = t361.
          t370 = t372.
        ELSE.
          DATA t373 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t373.
          t370 = t373.
        ENDIF.
        t368 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t369 i_parent = t370 ).
        t366 = t368.
      ELSE.
        DATA t374 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t374.
        t366 = t374.
      ENDIF.
      t365->current = t366.
      DELETE t365->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t375) = t361.
      DATA t376 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t378) = t308.
      t377 = t378->current.
      t376 = t377.
      t375->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t376 ).
    ENDIF.
    DATA(t379) = VALUE abap_bool( ).
    DATA t380 TYPE REF TO zif_lnt_method_definition.
    DATA(t381) = t129.
    t380 = t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    t382 = t383.
    DATA(t384) = VALUE abap_bool( ).
    DATA(t385) = t380.
    IF t385 IS INITIAL.
      t384 = abap_true.
    ENDIF.
    t379 = t384.
    IF t379 = abap_true.
      DATA(t386) = VALUE string( ).
      DATA(t387) = VALUE string( ).
      DATA(t388) = VALUE string( ).
      DATA(t389) = |Method definition "|.
      DATA(t390) = VALUE string( ).
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t392) = t17.
      t391 = t392.
      DATA(t393) = VALUE string( ).
      DATA(t394) = VALUE abap_bool( ).
      DATA(t395) = t391.
      IF t395 IS INITIAL.
        t394 = abap_true.
      ELSEIF t395->has = abap_false.
        t394 = abap_true.
      ENDIF.
      IF t394 = abap_true.
        DATA(t396) = |undefined|.
        t393 = t396.
      ELSE.
        DATA t397 TYPE string.
        DATA(t398) = t391.
        t397 = t398->value.
        t393 = t397.
      ENDIF.
      t390 = t393.
      DATA(t399) = strlen( t389 ).
      t388 = |{ t389 }{ t390 }|.
      DATA(t400) = |" not found|.
      DATA(t401) = strlen( t388 ).
      t387 = |{ t388 }{ t400 }|.
      t386 = t387.
      DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t403) = t2.
      t402 = t403->issues.
      DATA t404 TYPE REF TO zcl_lnt_issue.
      DATA(t405) = t2.
      DATA t406 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t407) = t1.
      t406 = t407->get_first_token( ).
      DATA(t408) = t386.
      DATA t409 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t409.
      t404 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t405 i_token = t406 i_message_26cb = t408 i_fix = t409 ).
      t402->load( ).
      APPEND t404 TO t402->items.
      t402->save( ).
      RETURN.
    ENDIF.
    DATA t410 TYPE REF TO zcl_lnt_current_scope.
    DATA(t411) = t2.
    t410 = t411->scope.
    DATA t412 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t412.
    DATA(t413) = abap_true.
    IF t413 = abap_true.
      DATA(t414) = t11.
      t412 = t414.
    ELSE.
      DATA t415 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t415.
      t412 = t415.
    ENDIF.
    DATA t416 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t416.
    DATA(t417) = abap_true.
    IF t417 = abap_true.
      DATA t418 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t419 TYPE REF TO zif_lnt_method_definition.
      DATA(t420) = t129.
      t419 = t420.
      t418 ?= t419.
      t416 = t418.
    ELSE.
      DATA t421 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t421.
      t416 = t421.
    ENDIF.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA(t423) = |Method Implementation|.
    CLEAR t422.
    CREATE OBJECT t422.
    t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t422->sval = t423.
    DATA t424 TYPE string.
    DATA(t425) = t2.
    t424 = t425->filename.
    DATA t426 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t426.
    t410->add_reference( i_usage = t412 i_referencing = t416 i_type_9913 = t422 i_filename = t424 i_extra = t426 ).
    DATA t427 TYPE REF TO zcl_lnt_current_scope.
    DATA(t428) = t2.
    t427 = t428->scope.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t430 TYPE REF TO zif_lnt_method_parameters.
    DATA t431 TYPE REF TO zif_lnt_method_definition.
    DATA(t432) = t129.
    t431 = t432.
    t430 = t431->get_parameters( ).
    t429 = t430->get_all( ).
    t427->add_list( i_identifiers = t429 ).
    DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t434) = t3.
    DATA t435 TYPE REF TO zif_lnt_interface_definition.
    DATA t436 TYPE REF TO zif_lnt_class_definition.
    DATA(t437) = t31.
    t436 = t437.
    t435 ?= t436.
    t433 = t434->find_interfaces( i_cd = t435 ).
    DATA t438 TYPE REF TO zcl_lnt_iimplementing.
    CLEAR t438.
    DATA t439 TYPE REF TO object.
    CLEAR t439.
    DATA(t440) = VALUE i( ).
    DO.
      t433->load( ).
      IF t440 >= lines( t433->items ).
        EXIT.
      ENDIF.
      CLEAR t439.
      READ TABLE t433->items INDEX t440 + 1 INTO t439.
      t440 = t440 + 1.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      CLEAR t438.
      IF t439 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t441 ?= t439.
        DATA t442 TYPE REF TO object.
        t442 = t441->as_ref( ).
        t438 ?= t442.
      ELSE.
        t438 ?= t439.
      ENDIF.
      DATA(t443) = VALUE abap_bool( ).
      DATA(t444) = VALUE abap_bool( ).
      DATA t445 TYPE string.
      DATA t446 TYPE string.
      DATA(t447) = t17.
      t446 = t447->value.
      DATA(t448) = strlen( t446 ).
      t445 = t446.
      IF t445 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t445 TO UPPER CASE.
      ELSE.
        t445 = zlnt_runtime_uppe_91169605024d=>full( t445 ).
      ENDIF.
      DATA(t449) = VALUE string( ).
      DATA t450 TYPE string.
      DATA t451 TYPE string.
      DATA(t452) = t438.
      t451 = t452->name.
      DATA(t453) = strlen( t451 ).
      t450 = t451.
      IF t450 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t450 TO UPPER CASE.
      ELSE.
        t450 = zlnt_runtime_uppe_91169605024d=>full( t450 ).
      ENDIF.
      DATA(t454) = |~|.
      DATA(t455) = strlen( t450 ).
      t449 = |{ t450 }{ t454 }|.
      DATA(t456) = strlen( t445 ).
      DATA t457 TYPE i.
      DATA(t458) = VALUE i( ).
      DATA(t459) = VALUE string( ).
      t457 = strlen( t449 ).
      IF t457 = 0.
        t444 = abap_true.
      ELSEIF t457 <= t456.
        t458 = 0.
        t459 = t445+t458(t457).
        IF t459 = t449.
          t444 = abap_true.
        ENDIF.
      ENDIF.
      DATA(t460) = abap_false.
      t443 = xsdbool( t444 = t460 ).
      IF t443 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t461 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t461.
      DATA t462 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t462.
      DATA t463 TYPE REF TO zcl_lnt_current_scope.
      DATA t464 TYPE REF TO zcl_lnt_current_scope.
      DATA(t465) = t2.
      t464 = t465->scope.
      t463 = t464.
      DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t466.
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t467.
      DATA(t468) = abap_true.
      IF t468 = abap_true.
        DATA t469 TYPE string.
        DATA(t470) = t438.
        t469 = t470->name.
        DATA(t471) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t471->has = abap_true.
        t471->value = t469.
        t467 = t471.
      ELSE.
        DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t472.
        t467 = t472.
      ENDIF.
      t466 = t467.
      DATA t473 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t473.
      DATA(t474) = VALUE abap_bool( ).
      DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t476) = t466.
      t475 = t476.
      DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t478.
      t477 = t478.
      DATA(t479) = VALUE abap_bool( ).
      DATA(t480) = t475.
      IF t480 IS INITIAL.
        t479 = abap_true.
      ELSEIF t480->has = abap_false.
        t479 = abap_true.
      ENDIF.
      t474 = t479.
      IF t474 = abap_true.
        DATA t481 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t481.
        t473 = t481.
      ELSE.
        DATA t482 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t482.
        DATA t483 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t483.
        DATA t484 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t484.
        DATA t485 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t486 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t487) = t463.
        t486 = t487->current.
        t485 = t486.
        DATA t488 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t488.
        DATA(t489) = VALUE abap_bool( ).
        DATA(t490) = t485.
        IF t490 IS INITIAL.
          t489 = abap_true.
        ENDIF.
        IF t489 = abap_true.
          DATA t491 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t491.
          t488 = t491.
        ELSE.
          DATA t492 TYPE REF TO zif_lnt_interface_definition.
          DATA t493 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t494) = t485.
          t493 = t494.
          DATA t495 TYPE string.
          DATA(t496) = t466.
          t495 = t496->value.
          t492 = t493->find_interface_definition( i_name = t495 ).
          t488 = t492.
        ENDIF.
        t484 = t488.
        t483 = t484.
        DATA t497 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t497.
        DATA t498 TYPE abap_bool.
        DATA(t499) = t483.
        t498 = xsdbool( t499 IS BOUND ).
        IF t498 = abap_true.
          DATA t500 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t500.
          DATA(t501) = abap_true.
          IF t501 = abap_true.
            DATA t502 TYPE REF TO zif_lnt_interface_definition.
            DATA(t503) = t483.
            t502 = t503.
            t500 = t502.
          ELSE.
            DATA t504 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t504.
            t500 = t504.
          ENDIF.
          t497 = t500.
        ELSE.
          DATA t505 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t505.
          DATA t506 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t506.
          DATA t507 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t507.
          DATA t508 TYPE REF TO zif_lnt_object.
          CLEAR t508.
          DATA t509 TYPE REF TO zif_lnt_registry.
          DATA(t510) = t463.
          t509 = t510->reg.
          DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t511.
          DATA(t512) = abap_true.
          IF t512 = abap_true.
            DATA(t513) = |INTF|.
            DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t514->has = abap_true.
            t514->value = t513.
            t511 = t514.
          ELSE.
            DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t515.
            t511 = t515.
          ENDIF.
          DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t516.
          DATA(t517) = abap_true.
          IF t517 = abap_true.
            DATA t518 TYPE string.
            DATA(t519) = t466.
            t518 = t519->value.
            DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t520->has = abap_true.
            t520->value = t518.
            t516 = t520.
          ELSE.
            DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t521.
            t516 = t521.
          ENDIF.
          t508 = t509->get_object( i_type_9913 = t511 i_name = t516 ).
          DATA t522 TYPE REF TO object.
          t522 = t508.
          t507 ?= t522.
          t506 = t507.
          DATA t523 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t523.
          DATA t524 TYPE abap_bool.
          DATA(t525) = t506.
          t524 = xsdbool( t525 IS BOUND ).
          IF t524 = abap_true.
            DATA t526 TYPE REF TO zif_lnt_interface_definition.
            DATA t527 TYPE REF TO zcl_lnt_ob_interface.
            DATA t528 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t529) = t506.
            t528 = t529.
            t527 = t528.
            DATA t530 TYPE REF TO zif_lnt_interface_definition.
            DATA(t531) = t527.
            t530 = t531->def.
            t526 = t530.
            t523 = t526.
          ELSE.
            DATA t532 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t532.
            t523 = t532.
          ENDIF.
          t505 = t523.
          t497 = t505.
        ENDIF.
        t482 = t497.
        t473 = t482.
      ENDIF.
      t462 = t473.
      t461 = t462.
      DATA(t533) = VALUE abap_bool( ).
      DATA t534 TYPE REF TO zif_lnt_interface_definition.
      DATA(t535) = t461.
      t534 = t535.
      DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t537.
      t536 = t537.
      DATA(t538) = VALUE abap_bool( ).
      DATA(t539) = t534.
      IF t539 IS INITIAL.
        t538 = abap_true.
      ENDIF.
      t533 = t538.
      IF t533 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t540 TYPE REF TO zcl_lnt_current_scope.
      DATA(t541) = t2.
      t540 = t541->scope.
      DATA t542 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t542.
      DATA(t543) = abap_true.
      IF t543 = abap_true.
        DATA(t544) = t11.
        t542 = t544.
      ELSE.
        DATA t545 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t545.
        t542 = t545.
      ENDIF.
      DATA t546 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t546.
      DATA(t547) = abap_true.
      IF t547 = abap_true.
        DATA t548 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t549 TYPE REF TO zif_lnt_interface_definition.
        DATA(t550) = t461.
        t549 = t550.
        t548 ?= t549.
        t546 = t548.
      ELSE.
        DATA t551 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t551.
        t546 = t551.
      ENDIF.
      DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t552.
      DATA(t553) = |Object|.
      CLEAR t552.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t552->sval = t553.
      DATA t554 TYPE string.
      DATA(t555) = t2.
      t554 = t555->filename.
      DATA t556 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t556.
      t540->add_reference( i_usage = t542 i_referencing = t546 i_type_9913 = t552 i_filename = t554 i_extra = t556 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d929_2a07d9df23e1.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
