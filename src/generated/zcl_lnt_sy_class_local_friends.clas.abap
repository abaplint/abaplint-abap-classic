* TS: src/abap/5_syntax/statements/class_local_friends.ts:7:1 ClassLocalFriends
CLASS zcl_lnt_sy_class_local_friends DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_class_local_friends IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t4 = t5->find_all_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA(t9) = t3.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    t9->load( ).
    CLEAR t10.
    READ TABLE t9->items INDEX 1 INTO t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    CLEAR t8.
    IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t11 ?= t10.
      DATA t12 TYPE REF TO object.
      t12 = t11->as_ref( ).
      t8 ?= t12.
    ELSE.
      t8 ?= t10.
    ENDIF.
    t7 = t8.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t7.
    t13 = xsdbool( t14 IS BOUND ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t17) = t7.
      t16 = t17->get_first_token( ).
      t15 = t16.
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = t15.
      t20 = t21.
      DATA t22 TYPE string.
      DATA(t23) = t20.
      t22 = t23->str.
      t19 = t22.
      t18 = t19.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE string.
      DATA t27 TYPE REF TO zif_lnt_object.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      DATA t29 TYPE REF TO zcl_lnt_current_scope.
      DATA(t30) = t2.
      t29 = t30->scope.
      t28 = t29.
      DATA t31 TYPE REF TO zif_lnt_object.
      DATA(t32) = t28.
      t31 = t32->parent_obj.
      t27 = t31.
      t26 = t27->get_type( ).
      DATA(t33) = |CLAS|.
      t25 = xsdbool( t26 = t33 ).
      t24 = t25.
      IF t25 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA t35 TYPE string.
        DATA(t36) = t18.
        DATA(t37) = strlen( t36 ).
        t35 = t36.
        IF t35 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t35 TO UPPER CASE.
        ELSE.
          t35 = zlnt_runtime_uppe_91169605024d=>full( t35 ).
        ENDIF.
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zif_lnt_object.
        DATA t41 TYPE REF TO zcl_lnt_current_scope.
        DATA t42 TYPE REF TO zcl_lnt_current_scope.
        DATA(t43) = t2.
        t42 = t43->scope.
        t41 = t42.
        DATA t44 TYPE REF TO zif_lnt_object.
        DATA(t45) = t41.
        t44 = t45->parent_obj.
        t40 = t44.
        t39 = t40->get_name( ).
        DATA(t46) = strlen( t39 ).
        t38 = t39.
        IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t38 TO UPPER CASE.
        ELSE.
          t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
        ENDIF.
        t34 = xsdbool( t35 <> t38 ).
        t24 = t34.
      ENDIF.
      IF t24 = abap_true.
        DATA(t47) = VALUE string( ).
        DATA(t48) = VALUE string( ).
        DATA(t49) = |Befriending must be |.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        DATA t52 TYPE REF TO zif_lnt_object.
        DATA t53 TYPE REF TO zcl_lnt_current_scope.
        DATA t54 TYPE REF TO zcl_lnt_current_scope.
        DATA(t55) = t2.
        t54 = t55->scope.
        t53 = t54.
        DATA t56 TYPE REF TO zif_lnt_object.
        DATA(t57) = t53.
        t56 = t57->parent_obj.
        t52 = t56.
        t51 = t52->get_name( ).
        DATA(t58) = strlen( t51 ).
        t50 = t51.
        IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t50 TO UPPER CASE.
        ELSE.
          t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
        ENDIF.
        DATA(t59) = strlen( t49 ).
        t48 = |{ t49 }{ t50 }|.
        t47 = t48.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t61) = t2.
        t60 = t61->issues.
        DATA t62 TYPE REF TO zcl_lnt_issue.
        DATA(t63) = t2.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t65) = t1.
        t64 = t65->get_first_token( ).
        DATA(t66) = t47.
        DATA t67 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t67.
        t62 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t63 i_token = t64 i_message_26cb = t66 i_fix = t67 ).
        t60->load( ).
        APPEND t62 TO t60->items.
        t60->save( ).
        RETURN.
      ENDIF.
      DATA t68 TYPE REF TO zif_lnt_class_definition.
      CLEAR t68.
      DATA t69 TYPE REF TO zif_lnt_class_definition.
      CLEAR t69.
      DATA t70 TYPE REF TO zcl_lnt_current_scope.
      DATA t71 TYPE REF TO zcl_lnt_current_scope.
      DATA(t72) = t2.
      t71 = t72->scope.
      t70 = t71.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA(t75) = abap_true.
      IF t75 = abap_true.
        DATA(t76) = t18.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = t76.
        t74 = t77.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        t74 = t78.
      ENDIF.
      t73 = t74.
      DATA t79 TYPE REF TO zif_lnt_class_definition.
      CLEAR t79.
      DATA(t80) = VALUE abap_bool( ).
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t82) = t73.
      t81 = t82.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      t83 = t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t81.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ELSEIF t86->has = abap_false.
        t85 = abap_true.
      ENDIF.
      t80 = t85.
      IF t80 = abap_true.
        DATA t87 TYPE REF TO zif_lnt_class_definition.
        CLEAR t87.
        t79 = t87.
      ELSE.
        DATA t88 TYPE REF TO zif_lnt_class_definition.
        CLEAR t88.
        DATA t89 TYPE REF TO zif_lnt_class_definition.
        CLEAR t89.
        DATA t90 TYPE REF TO zif_lnt_class_definition.
        CLEAR t90.
        DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t93) = t70.
        t92 = t93->current.
        t91 = t92.
        DATA t94 TYPE REF TO zif_lnt_class_definition.
        CLEAR t94.
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = t91.
        IF t96 IS INITIAL.
          t95 = abap_true.
        ENDIF.
        IF t95 = abap_true.
          DATA t97 TYPE REF TO zif_lnt_class_definition.
          CLEAR t97.
          t94 = t97.
        ELSE.
          DATA t98 TYPE REF TO zif_lnt_class_definition.
          DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t100) = t91.
          t99 = t100.
          DATA t101 TYPE string.
          DATA(t102) = t73.
          t101 = t102->value.
          t98 = t99->find_class_definition( i_name = t101 ).
          t94 = t98.
        ENDIF.
        t90 = t94.
        t89 = t90.
        DATA t103 TYPE REF TO zif_lnt_class_definition.
        CLEAR t103.
        DATA t104 TYPE abap_bool.
        DATA(t105) = t89.
        t104 = xsdbool( t105 IS BOUND ).
        IF t104 = abap_true.
          DATA t106 TYPE REF TO zif_lnt_class_definition.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA t108 TYPE REF TO zif_lnt_class_definition.
            DATA(t109) = t89.
            t108 = t109.
            t106 = t108.
          ELSE.
            DATA t110 TYPE REF TO zif_lnt_class_definition.
            CLEAR t110.
            t106 = t110.
          ENDIF.
          t103 = t106.
        ELSE.
          DATA t111 TYPE REF TO zif_lnt_class_definition.
          CLEAR t111.
          DATA t112 TYPE REF TO zcl_lnt_class.
          CLEAR t112.
          DATA t113 TYPE REF TO zcl_lnt_class.
          CLEAR t113.
          DATA t114 TYPE REF TO zif_lnt_object.
          CLEAR t114.
          DATA t115 TYPE REF TO zif_lnt_registry.
          DATA(t116) = t70.
          t115 = t116->reg.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          DATA(t118) = abap_true.
          IF t118 = abap_true.
            DATA(t119) = |CLAS|.
            DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t120->has = abap_true.
            t120->value = t119.
            t117 = t120.
          ELSE.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t121.
            t117 = t121.
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t123) = abap_true.
          IF t123 = abap_true.
            DATA t124 TYPE string.
            DATA(t125) = t73.
            t124 = t125->value.
            DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t126->has = abap_true.
            t126->value = t124.
            t122 = t126.
          ELSE.
            DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t127.
            t122 = t127.
          ENDIF.
          t114 = t115->get_object( i_type_9913 = t117 i_name = t122 ).
          DATA t128 TYPE REF TO object.
          t128 = t114.
          t113 ?= t128.
          t112 = t113.
          DATA t129 TYPE REF TO zif_lnt_class_definition.
          CLEAR t129.
          DATA t130 TYPE abap_bool.
          DATA(t131) = t112.
          t130 = xsdbool( t131 IS BOUND ).
          IF t130 = abap_true.
            DATA t132 TYPE REF TO zif_lnt_class_definition.
            DATA t133 TYPE REF TO zcl_lnt_class.
            DATA(t134) = t112.
            t133 = t134.
            t132 = t133->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t129 = t132.
          ELSE.
            DATA t135 TYPE REF TO zif_lnt_class_definition.
            CLEAR t135.
            t129 = t135.
          ENDIF.
          t111 = t129.
          t103 = t111.
        ENDIF.
        t88 = t103.
        t79 = t88.
      ENDIF.
      t69 = t79.
      t68 = t69.
      DATA t136 TYPE abap_bool.
      DATA(t137) = t68.
      t136 = xsdbool( t137 IS BOUND ).
      IF t136 = abap_true.
        DATA t138 TYPE REF TO zcl_lnt_current_scope.
        DATA(t139) = t2.
        t138 = t139->scope.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t140.
        DATA(t141) = abap_true.
        IF t141 = abap_true.
          DATA(t142) = t15.
          t140 = t142.
        ELSE.
          DATA t143 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t143.
          t140 = t143.
        ENDIF.
        DATA t144 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA t146 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t147 TYPE REF TO zif_lnt_class_definition.
          DATA(t148) = t68.
          t147 = t148.
          t146 ?= t147.
          t144 = t146.
        ELSE.
          DATA t149 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t149.
          t144 = t149.
        ENDIF.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        DATA(t151) = |Object|.
        CLEAR t150.
        CREATE OBJECT t150.
        t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t150->sval = t151.
        DATA t152 TYPE string.
        DATA(t153) = t2.
        t152 = t153->filename.
        DATA t154 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t154.
        t138->add_reference( i_usage = t140 i_referencing = t144 i_type_9913 = t150 i_filename = t152 i_extra = t154 ).
      ELSE.
        DATA(t155) = VALUE string( ).
        DATA(t156) = VALUE string( ).
        DATA(t157) = VALUE string( ).
        DATA(t158) = |Class |.
        DATA t159 TYPE string.
        DATA(t160) = t18.
        DATA(t161) = strlen( t160 ).
        t159 = t160.
        IF t159 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t159 TO UPPER CASE.
        ELSE.
          t159 = zlnt_runtime_uppe_91169605024d=>full( t159 ).
        ENDIF.
        DATA(t162) = strlen( t158 ).
        t157 = |{ t158 }{ t159 }|.
        DATA(t163) = | not found|.
        DATA(t164) = strlen( t157 ).
        t156 = |{ t157 }{ t163 }|.
        t155 = t156.
        DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t166) = t2.
        t165 = t166->issues.
        DATA t167 TYPE REF TO zcl_lnt_issue.
        DATA(t168) = t2.
        DATA t169 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t170) = t1.
        t169 = t170->get_first_token( ).
        DATA(t171) = t155.
        DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t172.
        t167 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t168 i_token = t169 i_message_26cb = t171 i_fix = t172 ).
        t165->load( ).
        APPEND t167 TO t165->items.
        t165->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t173 TYPE i.
    DATA(t174) = 1.
    t173 = t174.
    DO.
      DATA t175 TYPE abap_bool.
      DATA(t176) = t173.
      DATA t177 TYPE i.
      DATA(t178) = t3.
      t178->load( ).
      t177 = lines( t178->items ).
      t175 = xsdbool( t176 < t177 ).
      IF t175 = abap_false.
        EXIT.
      ENDIF.
      DATA(t179) = VALUE string( ).
      DATA(t180) = VALUE string( ).
      DATA t181 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t181.
      DATA(t182) = t3.
      DATA(t183) = t173.
      t183 = t183 + 1.
      DATA t184 TYPE REF TO object.
      CLEAR t184.
      t182->load( ).
      CLEAR t184.
      READ TABLE t182->items INDEX t183 INTO t184.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      CLEAR t181.
      IF t184 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t185 ?= t184.
        DATA t186 TYPE REF TO object.
        t186 = t185->as_ref( ).
        t181 ?= t186.
      ELSE.
        t181 ?= t184.
      ENDIF.
      t180 = t181->concat_tokens( ).
      t179 = t180.
      DATA t187 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t187.
      DATA t188 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t188.
      DATA t189 TYPE REF TO zcl_lnt_current_scope.
      DATA(t190) = t2.
      t189 = t190->scope.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA(t192) = abap_true.
      IF t192 = abap_true.
        DATA(t193) = t179.
        DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t194->has = abap_true.
        t194->value = t193.
        t191 = t194.
      ELSE.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        t191 = t195.
      ENDIF.
      t188 = t189->exists_object( i_name = t191 ).
      t187 = t188.
      DATA(t196) = VALUE abap_bool( ).
      DATA t197 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t198) = t187.
      t197 = t198.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      t199 = t200.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = t197.
      IF t202 IS INITIAL.
        t201 = abap_true.
      ENDIF.
      t196 = t201.
      IF t196 = abap_true.
        DATA(t203) = VALUE string( ).
        DATA(t204) = VALUE string( ).
        DATA(t205) = VALUE string( ).
        DATA(t206) = |Class |.
        DATA t207 TYPE string.
        DATA(t208) = t179.
        DATA(t209) = strlen( t208 ).
        t207 = t208.
        IF t207 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t207 TO UPPER CASE.
        ELSE.
          t207 = zlnt_runtime_uppe_91169605024d=>full( t207 ).
        ENDIF.
        DATA(t210) = strlen( t206 ).
        t205 = |{ t206 }{ t207 }|.
        DATA(t211) = | not found|.
        DATA(t212) = strlen( t205 ).
        t204 = |{ t205 }{ t211 }|.
        t203 = t204.
        DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t214) = t2.
        t213 = t214->issues.
        DATA t215 TYPE REF TO zcl_lnt_issue.
        DATA(t216) = t2.
        DATA t217 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t218) = t1.
        t217 = t218->get_first_token( ).
        DATA(t219) = t203.
        DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t220.
        t215 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t216 i_token = t217 i_message_26cb = t219 i_fix = t220 ).
        t213->load( ).
        APPEND t215 TO t213->items.
        t213->save( ).
        RETURN.
      ELSE.
        DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t221.
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t222.
        DATA t223 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t223.
        DATA t224 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t224.
        DATA t225 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t225.
        DATA t226 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t226.
        DATA(t227) = t3.
        DATA(t228) = 0.
        DATA t229 TYPE REF TO object.
        t229 = t227->get( p0 = t228 ).
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        CLEAR t226.
        IF t229 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t230 ?= t229.
          DATA t231 TYPE REF TO object.
          t231 = t230->as_ref( ).
          t226 ?= t231.
        ELSE.
          t226 ?= t229.
        ENDIF.
        t225 = t226.
        DATA t232 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t232.
        DATA(t233) = VALUE abap_bool( ).
        DATA(t234) = t225.
        IF t234 IS INITIAL.
          t233 = abap_true.
        ENDIF.
        IF t233 = abap_true.
          DATA t235 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t235.
          t232 = t235.
        ELSE.
          DATA t236 TYPE REF TO zcl_lnt_abstract_token.
          DATA t237 TYPE REF TO zcl_lnt_expression_node.
          DATA(t238) = t225.
          t237 = t238.
          t236 = t237->get_first_token( ).
          t232 = t236.
        ENDIF.
        t224 = t232.
        t223 = t224.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        DATA(t240) = VALUE abap_bool( ).
        DATA(t241) = t223.
        IF t241 IS INITIAL.
          t240 = abap_true.
        ENDIF.
        IF t240 = abap_true.
          DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t242.
          t239 = t242.
        ELSE.
          DATA t243 TYPE string.
          DATA t244 TYPE REF TO zcl_lnt_abstract_token.
          DATA t245 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t246) = t223.
          t245 = t246.
          t244 = t245.
          DATA t247 TYPE string.
          DATA(t248) = t244.
          t247 = t248->str.
          t243 = t247.
          DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t249->has = abap_true.
          t249->value = t243.
          t239 = t249.
        ENDIF.
        t222 = t239.
        t221 = t222.
        DATA(t250) = VALUE abap_bool( ).
        DATA(t251) = t221.
        IF t251 IS BOUND.
          IF t251->has = abap_true.
            t250 = xsdbool( strlen( t251->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t250 = abap_true.
          DATA t252 TYPE REF TO zcl_lnt_current_scope.
          DATA t253 TYPE REF TO zcl_lnt_current_scope.
          DATA(t254) = t2.
          t253 = t254->scope.
          t252 = t253.
          DATA t255 TYPE string.
          DATA t256 TYPE string.
          DATA(t257) = t221.
          t256 = t257->value.
          t255 = t256.
          DATA t258 TYPE string.
          DATA(t259) = t179.
          t258 = t259.
          DATA(t260) = VALUE string( ).
          DATA t261 TYPE string.
          DATA(t262) = t255.
          DATA(t263) = strlen( t262 ).
          t261 = t262.
          IF t261 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t261 TO UPPER CASE.
          ELSE.
            t261 = zlnt_runtime_uppe_91169605024d=>full( t261 ).
          ENDIF.
          t260 = t261.
          DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t264.
          DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t265.
          DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t268 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          DATA(t269) = t252.
          t268 = t269->local_friends.
          DATA(t270) = t260.
          t267 = t268->get( p0 = t270 ).
          t266 = t267.
          DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t271.
          DATA(t272) = VALUE abap_bool( ).
          DATA(t273) = t266.
          IF t273 IS INITIAL.
            t272 = abap_true.
          ENDIF.
          IF t272 = abap_true.
            DATA t274 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t274.
            t271 = t274.
          ELSE.
            DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t276) = t266.
            t275 = t276.
            t271 = t275.
          ENDIF.
          t265 = t271.
          t264 = t265.
          DATA(t277) = t264.
          DATA t278 TYPE string.
          DATA(t279) = t258.
          DATA(t280) = strlen( t279 ).
          t278 = t279.
          IF t278 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t278 TO UPPER CASE.
          ELSE.
            t278 = zlnt_runtime_uppe_91169605024d=>full( t278 ).
          ENDIF.
          t277->load( ).
          APPEND t278 TO t277->items.
          t277->save( ).
          DATA t281 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          DATA t282 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          DATA(t283) = t252.
          t282 = t283->local_friends.
          DATA(t284) = t260.
          DATA(t285) = t264.
          t281 = t282->set( p0 = t284 p1 = t285 ).
        ENDIF.
      ENDIF.
      DATA t286 TYPE i.
      DATA(t287) = t173.
      DATA(t288) = 1.
      t286 = t287 + t288.
      t173 = t286.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d873_97df92b862d8.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
