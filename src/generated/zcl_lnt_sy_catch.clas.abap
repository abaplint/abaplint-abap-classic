* TS: src/abap/5_syntax/statements/catch.ts:12:1 Catch
CLASS zcl_lnt_sy_catch DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS find_common_superclass IMPORTING i_class_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_catch IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = CAST zcl_lnt_expression_node( t3 ).
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zcl_lnt_expression_node( t13 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = CAST zcl_lnt_expression_node( t13 ).
      t20 = t21.
      DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t19 = t20->find_direct_expression( i_type_9913 = t22 ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = CAST zcl_lnt_expression_node( t11 ).
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t26.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = CAST zcl_lnt_expression_node( t11 ).
      t28 = t29.
      DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d196_75035ca40b78 ).
      t27 = t28->find_first_expression( i_type_9913 = t30 ).
      t23 = t27.
    ENDIF.
    t10 = t23.
    t9 = t10.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = CAST zcl_lnt_expression_node( t9 ).
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    IF t32 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t34.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = CAST zcl_lnt_expression_node( t9 ).
      t36 = t37.
      t35 = t36->get_first_token( ).
      t31 = t35.
    ENDIF.
    t8 = t31.
    t7 = t8.
    DATA t38 TYPE abap_bool.
    DATA t39 TYPE abap_bool.
    DATA(t40) = CAST zcl_lnt_abstract_token( t7 ).
    t39 = xsdbool( t40 IS BOUND ).
    t38 = t39.
    IF t39 = abap_true.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE i.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = CAST zcl_lnt_abstract_token( t7 ).
      t45 = t46.
      t44 = t45.
      DATA t47 TYPE string.
      DATA(t48) = CAST zcl_lnt_abstract_token( t44 ).
      t47 = t48->str.
      t43 = t47.
      DATA(t49) = strlen( t43 ).
      t42 = t49.
      DATA(t50) = 30.
      t41 = xsdbool( t42 > t50 ).
      t38 = t41.
    ENDIF.
    IF t38 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = CAST zcl_lnt_syntax_input( t2 ).
      t51 = t52->issues.
      DATA t53 TYPE REF TO zcl_lnt_issue.
      DATA(t54) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = CAST zcl_lnt_abstract_token( t7 ).
      t55 = t56.
      DATA(t57) = |Inline exception name longer than 30 characters|.
      DATA t58 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t58.
      t53 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t54 i_token = t55 i_message_26cb = t57 i_fix = t58 ).
      APPEND t53 TO t51->items.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t60) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t62) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    t61 = t62->find_direct_expressions( i_type_9913 = t63 ).
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t64.
    DATA t65 TYPE REF TO object.
    CLEAR t65.
    LOOP AT t61->items INTO t65.
      t64 ?= t65.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t68) = CAST zcl_lnt_expression_node( t64 ).
      t67 = t68->get_first_token( ).
      t66 = t67.
      DATA(t69) = VALUE string( ).
      DATA t70 TYPE string.
      DATA t71 TYPE string.
      DATA t72 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t73) = CAST zcl_lnt_abstract_token( t66 ).
      t72 = t73.
      DATA t74 TYPE string.
      DATA(t75) = CAST zcl_lnt_abstract_token( t72 ).
      t74 = t75->str.
      t71 = t74.
      DATA(t76) = strlen( t71 ).
      t70 = t71.
      IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t70 TO UPPER CASE.
      ELSE.
        t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
      ENDIF.
      t69 = t70.
      DATA t77 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t78.
      DATA t79 TYPE REF TO zcl_lnt_current_scope.
      DATA(t80) = CAST zcl_lnt_syntax_input( t2 ).
      t79 = t80->scope.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      DATA(t82) = abap_true.
      IF t82 = abap_true.
        DATA(t83) = t69.
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = t83.
        t81 = t84.
      ELSE.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        t81 = t85.
      ENDIF.
      t78 = t79->exists_object( i_name = t81 ).
      t77 = t78.
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t89) = CAST zcl_lnt_shape_59e28496( t77 ).
      t88 = t89.
      DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t90.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = CAST zcl_lnt_shape_59e28496( t88 ).
      IF t92 IS INITIAL.
        t91 = abap_true.
      ENDIF.
      IF t91 = abap_true.
        DATA t93 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t93.
        t90 = t93.
      ELSE.
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t95 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t96) = CAST zcl_lnt_shape_59e28496( t88 ).
        t95 = t96.
        t94 = t95->id.
        t90 = t94.
      ENDIF.
      t87 = t90.
      t86 = xsdbool( t87 IS BOUND ).
      IF t86 = abap_true.
        DATA t97 TYPE REF TO zcl_lnt_current_scope.
        DATA(t98) = CAST zcl_lnt_syntax_input( t2 ).
        t97 = t98->scope.
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA(t101) = CAST zcl_lnt_abstract_token( t66 ).
          t99 = t101.
        ELSE.
          DATA t102 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t102.
          t99 = t102.
        ENDIF.
        DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t103.
        DATA(t104) = abap_true.
        IF t104 = abap_true.
          DATA t105 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t107 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t108) = CAST zcl_lnt_shape_59e28496( t77 ).
          t107 = t108.
          t106 = t107->id.
          t105 = t106.
          t103 = t105.
        ELSE.
          DATA t109 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t109.
          t103 = t109.
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t111) = |Object|.
        CREATE OBJECT t110.
        t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t110->sval = t111.
        DATA t112 TYPE string.
        DATA(t113) = CAST zcl_lnt_syntax_input( t2 ).
        t112 = t113->filename.
        DATA t114 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t114.
        t97->add_reference( i_usage = t99 i_referencing = t103 i_type_9913 = t110 i_filename = t112 i_extra = t114 ).
      ELSE.
        DATA(t115) = VALUE abap_bool( ).
        DATA(t116) = VALUE abap_bool( ).
        DATA t117 TYPE REF TO zcl_lnt_ddic.
        DATA t118 TYPE REF TO zcl_lnt_ddic.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        DATA t120 TYPE REF TO zcl_lnt_current_scope.
        DATA(t121) = CAST zcl_lnt_syntax_input( t2 ).
        t120 = t121->scope.
        t119 = t120.
        DATA t122 TYPE REF TO zcl_lnt_ddic.
        DATA t123 TYPE REF TO zif_lnt_registry.
        DATA(t124) = CAST zcl_lnt_current_scope( t119 ).
        t123 = t124->reg.
        t122 = NEW zcl_lnt_ddic( i_reg_f149 = t123 ).
        t118 = t122.
        t117 = t118.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA(t128) = t69.
          DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t129->has = abap_true.
          t129->value = t128.
          t126 = t129.
        ELSE.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          t126 = t130.
        ENDIF.
        t125 = t126.
        DATA(t131) = VALUE abap_bool( ).
        DATA(t132) = VALUE abap_bool( ).
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t134) = CAST zlnt_runtime_opti_4ba3bdccd169( t125 ).
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        t135 = t136.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = CAST zlnt_runtime_opti_4ba3bdccd169( t133 ).
        IF t138 IS INITIAL.
          t137 = abap_true.
        ELSEIF t138->has = abap_false.
          t137 = abap_true.
        ENDIF.
        t132 = t137.
        IF t132 = abap_true.
          DATA(t139) = abap_true.
          t131 = t139.
        ELSE.
          DATA t140 TYPE abap_bool.
          DATA t141 TYPE REF TO zif_lnt_registry.
          DATA(t142) = CAST zcl_lnt_ddic( t117 ).
          t141 = t142->reg.
          DATA t143 TYPE string.
          DATA(t144) = CAST zlnt_runtime_opti_4ba3bdccd169( t125 ).
          t143 = t144->value.
          t140 = t141->in_error_namespace( i_name = t143 ).
          t131 = t140.
        ENDIF.
        t116 = t131.
        DATA(t145) = abap_false.
        t115 = xsdbool( t116 = t145 ).
        IF t115 = abap_true.
          DATA t146 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t147.
          DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t148.
          DATA(t149) = abap_true.
          IF t149 = abap_true.
            DATA(t150) = t69.
            DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t151->has = abap_true.
            t151->value = t150.
            t148 = t151.
          ELSE.
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t152.
            t148 = t152.
          ENDIF.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t153.
          DATA(t154) = abap_true.
          IF t154 = abap_true.
            DATA(t155) = |Void|.
            DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t156->has = abap_true.
            t156->value = t155.
            t153 = t156.
          ELSE.
            DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t157.
            t153 = t157.
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t158.
          t147 = NEW zcl_lnt_ireference_extras( i_oo_name = t148 i_oo_type = t153 i_found_qualified = t158 ).
          t146 = t147.
          DATA t159 TYPE REF TO zcl_lnt_current_scope.
          DATA(t160) = CAST zcl_lnt_syntax_input( t2 ).
          t159 = t160->scope.
          DATA t161 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t161.
          DATA(t162) = abap_true.
          IF t162 = abap_true.
            DATA(t163) = CAST zcl_lnt_abstract_token( t66 ).
            t161 = t163.
          ELSE.
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t164.
            t161 = t164.
          ENDIF.
          DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t165.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t167) = |Object (Void)|.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t166->sval = t167.
          DATA t168 TYPE string.
          DATA(t169) = CAST zcl_lnt_syntax_input( t2 ).
          t168 = t169->filename.
          DATA t170 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t170.
          DATA(t171) = abap_true.
          IF t171 = abap_true.
            DATA(t172) = CAST zcl_lnt_ireference_extras( t146 ).
            t170 = t172.
          ELSE.
            DATA t173 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t173.
            t170 = t173.
          ENDIF.
          t159->add_reference( i_usage = t161 i_referencing = t165 i_type_9913 = t166 i_filename = t168 i_extra = t170 ).
        ELSE.
          DATA t174 TYPE string.
          DATA t175 TYPE string.
          DATA(t176) = |CATCH, unknown class |.
          DATA(t177) = t69.
          DATA(t178) = strlen( t176 ).
          t175 = |{ t176 }{ t177 }|.
          t174 = t175.
          DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t180) = CAST zcl_lnt_syntax_input( t2 ).
          t179 = t180->issues.
          DATA t181 TYPE REF TO zcl_lnt_issue.
          DATA(t182) = CAST zcl_lnt_syntax_input( t2 ).
          DATA(t183) = CAST zcl_lnt_abstract_token( t66 ).
          DATA(t184) = t174.
          DATA t185 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t185.
          t181 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t182 i_token = t183 i_message_26cb = t184 i_fix = t185 ).
          APPEND t181 TO t179->items.
        ENDIF.
      ENDIF.
      DATA t186 TYPE abap_bool.
      DATA(t187) = CAST zlnt_runtime_set__1827558fd4c7( t59 ).
      DATA(t188) = t69.
      t186 = t187->has( p0 = t188 ).
      IF t186 = abap_true.
        DATA t189 TYPE string.
        DATA t190 TYPE string.
        DATA(t191) = |Duplicate class name in CATCH: |.
        DATA(t192) = t69.
        DATA(t193) = strlen( t191 ).
        t190 = |{ t191 }{ t192 }|.
        t189 = t190.
        DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t195) = CAST zcl_lnt_syntax_input( t2 ).
        t194 = t195->issues.
        DATA t196 TYPE REF TO zcl_lnt_issue.
        DATA(t197) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t198 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t199) = CAST zcl_lnt_statement_node( t1 ).
        t198 = t199->get_first_token( ).
        DATA(t200) = t189.
        DATA t201 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t201.
        t196 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t197 i_token = t198 i_message_26cb = t200 i_fix = t201 ).
        APPEND t196 TO t194->items.
        RETURN.
      ENDIF.
      DATA t202 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t203) = CAST zlnt_runtime_set__1827558fd4c7( t59 ).
      DATA(t204) = t69.
      t202 = t203->add( p0 = t204 ).
    ENDLOOP.
    DATA(t205) = VALUE abap_bool( ).
    DATA t206 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t206.
    DATA t207 TYPE REF TO zcl_lnt_expression_node.
    DATA(t208) = CAST zcl_lnt_expression_node( t3 ).
    t207 = t208.
    DATA t209 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t209.
    DATA(t210) = VALUE abap_bool( ).
    DATA(t211) = CAST zcl_lnt_expression_node( t207 ).
    IF t211 IS INITIAL.
      t210 = abap_true.
    ENDIF.
    IF t210 = abap_true.
      DATA t212 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t212.
      t209 = t212.
    ELSE.
      DATA t213 TYPE REF TO zcl_lnt_expression_node.
      DATA t214 TYPE REF TO zcl_lnt_expression_node.
      DATA(t215) = CAST zcl_lnt_expression_node( t207 ).
      t214 = t215.
      DATA(t216) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t213 = t214->find_direct_expression( i_type_9913 = t216 ).
      t209 = t213.
    ENDIF.
    t206 = t209.
    t205 = xsdbool( t206 IS BOUND ).
    IF t205 = abap_true.
      DATA t217 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t217.
      DATA t218 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t218.
      DATA t219 TYPE REF TO zcl_lnt_expression_node.
      DATA t220 TYPE REF TO zcl_lnt_expression_node.
      DATA t221 TYPE REF TO zcl_lnt_expression_node.
      DATA(t222) = CAST zcl_lnt_expression_node( t3 ).
      t221 = t222.
      DATA(t223) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d196_75035ca40b78 ).
      t220 = t221->find_first_expression( i_type_9913 = t223 ).
      t219 = t220.
      DATA t224 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t224.
      DATA(t225) = VALUE abap_bool( ).
      DATA(t226) = CAST zcl_lnt_expression_node( t219 ).
      IF t226 IS INITIAL.
        t225 = abap_true.
      ENDIF.
      IF t225 = abap_true.
        DATA t227 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t227.
        t224 = t227.
      ELSE.
        DATA t228 TYPE REF TO zcl_lnt_abstract_token.
        DATA t229 TYPE REF TO zcl_lnt_expression_node.
        DATA(t230) = CAST zcl_lnt_expression_node( t219 ).
        t229 = t230.
        t228 = t229->get_first_token( ).
        t224 = t228.
      ENDIF.
      t218 = t224.
      t217 = t218.
      DATA t231 TYPE abap_bool.
      DATA(t232) = CAST zcl_lnt_abstract_token( t217 ).
      t231 = xsdbool( t232 IS BOUND ).
      IF t231 = abap_true.
        DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t235) = CAST zlnt_runtime_set__1827558fd4c7( t59 ).
        t234 = t235->values( ).
        t233 = t234.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t239) = CAST zlnt_runtime_arra_8ecd6afe19e0( t233 ).
        t238 = t239.
        DATA t240 TYPE i.
        DATA t241 TYPE i.
        DATA(t242) = CAST zlnt_runtime_arra_8ecd6afe19e0( t238 ).
        t241 = lines( t242->items ).
        t240 = t241.
        DATA t243 TYPE i.
        DATA(t244) = 0.
        t243 = t244.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        t245 = t246.
        DO.
          DATA t247 TYPE abap_bool.
          DATA(t248) = t243.
          DATA(t249) = t240.
          t247 = xsdbool( t248 < t249 ).
          IF t247 = abap_false.
            EXIT.
          ENDIF.
          DATA t250 TYPE string.
          DATA t251 TYPE string.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t253) = CAST zlnt_runtime_arra_8ecd6afe19e0( t238 ).
          DATA(t254) = t243.
          t252 = t253->get( p0 = t254 ).
          t251 = t252->value.
          t250 = t251.
          DATA(t255) = VALUE abap_bool( ).
          DATA t256 TYPE REF TO zif_lnt_class_definition.
          CLEAR t256.
          DATA t257 TYPE REF TO zif_lnt_class_definition.
          CLEAR t257.
          DATA t258 TYPE REF TO zcl_lnt_current_scope.
          DATA t259 TYPE REF TO zcl_lnt_current_scope.
          DATA(t260) = CAST zcl_lnt_syntax_input( t2 ).
          t259 = t260->scope.
          t258 = t259.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          DATA(t263) = abap_true.
          IF t263 = abap_true.
            DATA(t264) = t250.
            DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t265->has = abap_true.
            t265->value = t264.
            t262 = t265.
          ELSE.
            DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t266.
            t262 = t266.
          ENDIF.
          t261 = t262.
          DATA t267 TYPE REF TO zif_lnt_class_definition.
          CLEAR t267.
          DATA(t268) = VALUE abap_bool( ).
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t270) = CAST zlnt_runtime_opti_4ba3bdccd169( t261 ).
          t269 = t270.
          DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t272.
          t271 = t272.
          DATA(t273) = VALUE abap_bool( ).
          DATA(t274) = CAST zlnt_runtime_opti_4ba3bdccd169( t269 ).
          IF t274 IS INITIAL.
            t273 = abap_true.
          ELSEIF t274->has = abap_false.
            t273 = abap_true.
          ENDIF.
          t268 = t273.
          IF t268 = abap_true.
            DATA t275 TYPE REF TO zif_lnt_class_definition.
            CLEAR t275.
            t267 = t275.
          ELSE.
            DATA t276 TYPE REF TO zif_lnt_class_definition.
            CLEAR t276.
            DATA t277 TYPE REF TO zif_lnt_class_definition.
            CLEAR t277.
            DATA t278 TYPE REF TO zif_lnt_class_definition.
            CLEAR t278.
            DATA t279 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t280 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t281) = CAST zcl_lnt_current_scope( t258 ).
            t280 = t281->current.
            t279 = t280.
            DATA t282 TYPE REF TO zif_lnt_class_definition.
            CLEAR t282.
            DATA(t283) = VALUE abap_bool( ).
            DATA(t284) = CAST zcl_lnt_spaghetti_scope_node( t279 ).
            IF t284 IS INITIAL.
              t283 = abap_true.
            ENDIF.
            IF t283 = abap_true.
              DATA t285 TYPE REF TO zif_lnt_class_definition.
              CLEAR t285.
              t282 = t285.
            ELSE.
              DATA t286 TYPE REF TO zif_lnt_class_definition.
              DATA t287 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t288) = CAST zcl_lnt_spaghetti_scope_node( t279 ).
              t287 = t288.
              DATA t289 TYPE string.
              DATA(t290) = CAST zlnt_runtime_opti_4ba3bdccd169( t261 ).
              t289 = t290->value.
              t286 = t287->find_class_definition( i_name = t289 ).
              t282 = t286.
            ENDIF.
            t278 = t282.
            t277 = t278.
            DATA t291 TYPE REF TO zif_lnt_class_definition.
            CLEAR t291.
            DATA t292 TYPE abap_bool.
            DATA(t293) = CAST zif_lnt_class_definition( t277 ).
            t292 = xsdbool( t293 IS BOUND ).
            IF t292 = abap_true.
              DATA t294 TYPE REF TO zif_lnt_class_definition.
              CLEAR t294.
              DATA(t295) = abap_true.
              IF t295 = abap_true.
                DATA t296 TYPE REF TO zif_lnt_class_definition.
                DATA(t297) = CAST zif_lnt_class_definition( t277 ).
                t296 = t297.
                t294 = t296.
              ELSE.
                DATA t298 TYPE REF TO zif_lnt_class_definition.
                CLEAR t298.
                t294 = t298.
              ENDIF.
              t291 = t294.
            ELSE.
              DATA t299 TYPE REF TO zif_lnt_class_definition.
              CLEAR t299.
              DATA t300 TYPE REF TO zcl_lnt_class.
              CLEAR t300.
              DATA t301 TYPE REF TO zcl_lnt_class.
              CLEAR t301.
              DATA t302 TYPE REF TO zif_lnt_object.
              CLEAR t302.
              DATA t303 TYPE REF TO zif_lnt_registry.
              DATA(t304) = CAST zcl_lnt_current_scope( t258 ).
              t303 = t304->reg.
              DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t305.
              DATA(t306) = abap_true.
              IF t306 = abap_true.
                DATA(t307) = |CLAS|.
                DATA(t308) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t308->has = abap_true.
                t308->value = t307.
                t305 = t308.
              ELSE.
                DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t309.
                t305 = t309.
              ENDIF.
              DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t310.
              DATA(t311) = abap_true.
              IF t311 = abap_true.
                DATA t312 TYPE string.
                DATA(t313) = CAST zlnt_runtime_opti_4ba3bdccd169( t261 ).
                t312 = t313->value.
                DATA(t314) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t314->has = abap_true.
                t314->value = t312.
                t310 = t314.
              ELSE.
                DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t315.
                t310 = t315.
              ENDIF.
              t302 = t303->get_object( i_type_9913 = t305 i_name = t310 ).
              DATA t316 TYPE REF TO object.
              t316 = t302.
              t301 ?= t316.
              t300 = t301.
              DATA t317 TYPE REF TO zif_lnt_class_definition.
              CLEAR t317.
              DATA t318 TYPE abap_bool.
              DATA(t319) = CAST zcl_lnt_class( t300 ).
              t318 = xsdbool( t319 IS BOUND ).
              IF t318 = abap_true.
                DATA t320 TYPE REF TO zif_lnt_class_definition.
                DATA t321 TYPE REF TO zcl_lnt_class.
                DATA(t322) = CAST zcl_lnt_class( t300 ).
                t321 = t322.
                t320 = t321->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t317 = t320.
              ELSE.
                DATA t323 TYPE REF TO zif_lnt_class_definition.
                CLEAR t323.
                t317 = t323.
              ENDIF.
              t299 = t317.
              t291 = t299.
            ENDIF.
            t276 = t291.
            t267 = t276.
          ENDIF.
          t257 = t267.
          t256 = t257.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          t324 = t325.
          DATA(t326) = VALUE abap_bool( ).
          DATA(t327) = CAST zif_lnt_class_definition( t256 ).
          IF t327 IS INITIAL.
            t326 = abap_true.
          ENDIF.
          t255 = t326.
          IF t255 = abap_true.
            DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t328.
            DATA(t329) = abap_true.
            IF t329 = abap_true.
              DATA(t330) = t250.
              DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t331->has = abap_true.
              t331->value = t330.
              t328 = t331.
            ELSE.
              DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t332.
              t328 = t332.
            ENDIF.
            t245 = t328.
            EXIT.
          ENDIF.
          DATA t333 TYPE i.
          DATA(t334) = t243.
          DATA(t335) = 1.
          t333 = t334 + t335.
          t243 = t333.
        ENDDO.
        DATA(t336) = CAST zlnt_runtime_opti_4ba3bdccd169( t245 ).
        t237 = t336.
        t236 = t237.
        DATA t337 TYPE REF TO zif_lnt_class_definition.
        CLEAR t337.
        DATA t338 TYPE REF TO zif_lnt_class_definition.
        CLEAR t338.
        DATA(t339) = VALUE abap_bool( ).
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t341) = CAST zlnt_runtime_opti_4ba3bdccd169( t236 ).
        t340 = t341.
        DATA t342 TYPE REF TO zif_lnt_class_definition.
        DATA t343 TYPE REF TO zif_lnt_class_definition.
        CLEAR t343.
        t342 = t343.
        DATA(t344) = VALUE abap_bool( ).
        DATA(t345) = CAST zlnt_runtime_opti_4ba3bdccd169( t340 ).
        IF t345 IS INITIAL.
          t344 = abap_true.
        ELSEIF t345->has = abap_false.
          t344 = abap_true.
        ENDIF.
        t339 = t344.
        IF t339 = abap_true.
          DATA t346 TYPE REF TO zif_lnt_class_definition.
          DATA(t347) = CAST zlnt_runtime_arra_8ecd6afe19e0( t233 ).
          DATA(t348) = CAST zcl_lnt_syntax_input( t2 ).
          t346 = me->find_common_superclass( i_class_names = t347 i_input_967e = t348 ).
          t338 = t346.
        ELSE.
          DATA t349 TYPE REF TO zif_lnt_class_definition.
          CLEAR t349.
          t338 = t349.
        ENDIF.
        t337 = t338.
        DATA t350 TYPE REF TO zif_lnt_union_265b2b50.
        CLEAR t350.
        DATA t351 TYPE REF TO zif_lnt_union_265b2b50.
        CLEAR t351.
        DATA t352 TYPE abap_bool.
        DATA(t353) = CAST zif_lnt_class_definition( t337 ).
        t352 = xsdbool( t353 IS BOUND ).
        IF t352 = abap_true.
          DATA t354 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t355 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t356 TYPE REF TO zif_lnt_class_definition.
          DATA(t357) = CAST zif_lnt_class_definition( t337 ).
          t356 = t357.
          t355 ?= t356.
          DATA t358 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t358.
          t354 = NEW zcl_lnt_object_reference_type( i_id = t355 i_extra = t358 ).
          t351 = t354.
        ELSE.
          DATA t359 TYPE REF TO zcl_lnt_void_type.
          CLEAR t359.
          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t360.
          DATA(t361) = abap_true.
          IF t361 = abap_true.
            DATA(t362) = VALUE string( ).
            DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t364) = CAST zlnt_runtime_opti_4ba3bdccd169( t236 ).
            t363 = t364.
            DATA(t365) = VALUE string( ).
            DATA(t366) = VALUE abap_bool( ).
            DATA(t367) = CAST zlnt_runtime_opti_4ba3bdccd169( t363 ).
            IF t367 IS BOUND.
              IF t367->has = abap_true.
                t366 = xsdbool( strlen( t367->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t366 = abap_true.
              DATA t368 TYPE string.
              DATA(t369) = CAST zlnt_runtime_opti_4ba3bdccd169( t363 ).
              t368 = t369->value.
              t365 = t368.
            ELSE.
              DATA t370 TYPE string.
              DATA(t371) = CAST zlnt_runtime_arra_8ecd6afe19e0( t233 ).
              DATA(t372) = | |.
              DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t373->has = abap_true.
              t373->value = t372.
              t370 = t371->join( p0 = t373 ).
              t365 = t370.
            ENDIF.
            t362 = t365.
            DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t374->has = abap_true.
            t374->value = t362.
            t360 = t374.
          ELSE.
            DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t375.
            t360 = t375.
          ENDIF.
          DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t376.
          t359 = zcl_lnt_void_type=>get_db65( i_voided = t360 i_qualified_name = t376 ).
          t351 = t359.
        ENDIF.
        t350 = t351.
        DATA t377 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t377.
        DATA t378 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t378.
        DATA t379 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t380) = CAST zcl_lnt_abstract_token( t217 ).
        t379 = t380.
        DATA t381 TYPE string.
        DATA(t382) = CAST zcl_lnt_syntax_input( t2 ).
        t381 = t382->filename.
        DATA t383 TYPE REF TO zif_lnt_union_ea265422.
        DATA(t384) = CAST zif_lnt_union_265b2b50( t350 ).
        t383 ?= t384.
        DATA t385 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t385.
        DATA(t386) = abap_true.
        IF t386 = abap_true.
          DATA t387 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t388 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t389 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t389.
          t388 = t389.
          DATA(t390) = CAST zlnt_runtime_arra_8ecd6afe19e0( t388 ).
          DATA(t391) = |inline|.
          APPEND t391 TO t390->items.
          DATA(t392) = CAST zlnt_runtime_arra_8ecd6afe19e0( t388 ).
          t387 = t392.
          t385 = t387.
        ELSE.
          DATA t393 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t393.
          t385 = t393.
        ENDIF.
        DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t394.
        t378 = NEW zcl_lnt_typed_identifier( i_token = t379 i_filename = t381 i_type_9913 = t383 i_meta = t385 i_value = t394 ).
        t377 = t378.
        DATA t395 TYPE REF TO zcl_lnt_current_scope.
        DATA t396 TYPE REF TO zcl_lnt_current_scope.
        DATA(t397) = CAST zcl_lnt_syntax_input( t2 ).
        t396 = t397->scope.
        t395 = t396.
        DATA t398 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t398.
        DATA t399 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t399.
        DATA(t400) = abap_true.
        IF t400 = abap_true.
          DATA(t401) = CAST zcl_lnt_typed_identifier( t377 ).
          t399 = t401.
        ELSE.
          DATA t402 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t402.
          t399 = t402.
        ENDIF.
        t398 = t399.
        DATA(t403) = VALUE abap_bool( ).
        DATA t404 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t405) = CAST zcl_lnt_typed_identifier( t398 ).
        t404 = t405.
        DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t407.
        t406 = t407.
        DATA(t408) = VALUE abap_bool( ).
        DATA(t409) = CAST zcl_lnt_typed_identifier( t404 ).
        IF t409 IS INITIAL.
          t408 = abap_true.
        ENDIF.
        t403 = t408.
        IF t403 = abap_true.
        ELSE.
          DATA(t410) = CAST zcl_lnt_current_scope( t395 ).
          DATA(t411) = VALUE string( ).
          DATA t412 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t413 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t414) = CAST zcl_lnt_typed_identifier( t398 ).
          t413 = t414.
          t412 = t413.
          DATA(t415) = VALUE string( ).
          DATA t416 TYPE string.
          DATA t417 TYPE string.
          DATA t418 TYPE REF TO zcl_lnt_abstract_token.
          DATA t419 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t420) = CAST zcl_lnt_fi_identifier( t412 ).
          t419 = t420->token.
          t418 = t419.
          DATA t421 TYPE string.
          DATA(t422) = CAST zcl_lnt_abstract_token( t418 ).
          t421 = t422->str.
          t417 = t421.
          t416 = t417.
          DATA(t423) = VALUE abap_bool( ).
          DATA(t424) = VALUE string( ).
          DATA(t425) = t416.
          DATA(t426) = 0.
          DATA(t427) = 1.
          DATA(t428) = strlen( t425 ).
          IF t426 < 0.
            t426 = t426 + t428.
            IF t426 < 0.
              t426 = 0.
            ENDIF.
          ENDIF.
          IF t426 > t428 OR t427 <= 0.
            CLEAR t424.
          ELSE.
            IF t427 > t428 - t426.
              t427 = t428 - t426.
            ENDIF.
            t424 = t425+t426(t427).
          ENDIF.
          DATA(t429) = |!|.
          t423 = xsdbool( t424 = t429 ).
          IF t423 = abap_true.
            DATA(t430) = VALUE string( ).
            DATA t431 TYPE string.
            DATA(t432) = t416.
            t431 = t432.
            DATA(t433) = VALUE string( ).
            DATA(t434) = t431.
            DATA(t435) = 1.
            DATA t436 TYPE i.
            DATA(t437) = t431.
            DATA(t438) = strlen( t437 ).
            t436 = t438.
            DATA(t439) = strlen( t434 ).
            IF t435 < 0.
              t435 = t435 + t439.
              IF t435 < 0.
                t435 = 0.
              ENDIF.
            ENDIF.
            IF t435 > t439 OR t436 <= 0.
              CLEAR t433.
            ELSE.
              IF t436 > t439 - t435.
                t436 = t439 - t435.
              ENDIF.
              t433 = t434+t435(t436).
            ENDIF.
            t430 = t433.
            t416 = t430.
          ENDIF.
          DATA(t440) = t416.
          t415 = t440.
          t411 = t415.
          DATA t441 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t442) = CAST zcl_lnt_typed_identifier( t398 ).
          t441 = t442.
          t410->add_named_identifier( i_name = t411 i_identifier = t441 ).
        ENDIF.
        DATA t443 TYPE REF TO zcl_lnt_current_scope.
        DATA(t444) = CAST zcl_lnt_syntax_input( t2 ).
        t443 = t444->scope.
        DATA t445 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t445.
        DATA(t446) = abap_true.
        IF t446 = abap_true.
          DATA t447 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t448) = CAST zcl_lnt_abstract_token( t217 ).
          t447 = t448.
          t445 = t447.
        ELSE.
          DATA t449 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t449.
          t445 = t449.
        ENDIF.
        DATA(t450) = CAST zcl_lnt_typed_identifier( t377 ).
        DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t452) = |Write To|.
        CREATE OBJECT t451.
        t451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t451->sval = t452.
        DATA t453 TYPE string.
        DATA(t454) = CAST zcl_lnt_syntax_input( t2 ).
        t453 = t454->filename.
        DATA t455 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t455.
        t443->add_reference( i_usage = t445 i_referencing = t450 i_type_9913 = t451 i_filename = t453 i_extra = t455 ).
      ENDIF.
    ELSE.
      DATA t456 TYPE abap_bool.
      DATA(t457) = CAST zcl_lnt_expression_node( t3 ).
      t456 = xsdbool( t457 IS BOUND ).
      IF t456 = abap_true.
        DATA t458 TYPE REF TO zcl_lnt_abstract_type.
        DATA t459 TYPE REF TO zcl_lnt_abstract_type.
        DATA t460 TYPE REF TO zcl_lnt_expression_node.
        DATA(t461) = CAST zcl_lnt_expression_node( t3 ).
        t460 = t461.
        DATA(t462) = CAST zcl_lnt_syntax_input( t2 ).
        t459 = zcl_lnt_sy_target=>run_syntax( i_node = t460 i_input_967e = t462 ).
        t458 = t459.
        DATA t463 TYPE abap_bool.
        DATA(t464) = CAST zcl_lnt_abstract_type( t458 ).
        t463 = xsdbool( t464 IS BOUND AND t464 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t463 = abap_true.
          DATA t465 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t466) = CAST zcl_lnt_statement_node( t1 ).
          DATA(t467) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
          t465 = t466->find_direct_expressions( i_type_9913 = t467 ).
          DATA t468 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t468.
          DATA t469 TYPE REF TO object.
          CLEAR t469.
          LOOP AT t465->items INTO t469.
            t468 ?= t469.
            DATA t470 TYPE REF TO zcl_lnt_abstract_token.
            DATA t471 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t472) = CAST zcl_lnt_expression_node( t468 ).
            t471 = t472->get_first_token( ).
            t470 = t471.
            DATA(t473) = VALUE string( ).
            DATA t474 TYPE string.
            DATA t475 TYPE string.
            DATA t476 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t477) = CAST zcl_lnt_abstract_token( t470 ).
            t476 = t477.
            DATA t478 TYPE string.
            DATA(t479) = CAST zcl_lnt_abstract_token( t476 ).
            t478 = t479->str.
            t475 = t478.
            DATA(t480) = strlen( t475 ).
            t474 = t475.
            IF t474 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t474 TO UPPER CASE.
            ELSE.
              t474 = zlnt_runtime_uppe_91169605024d=>full( t474 ).
            ENDIF.
            t473 = t474.
            DATA t481 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t481.
            DATA t482 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t482.
            DATA t483 TYPE REF TO zcl_lnt_current_scope.
            DATA(t484) = CAST zcl_lnt_syntax_input( t2 ).
            t483 = t484->scope.
            DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t485.
            DATA(t486) = abap_true.
            IF t486 = abap_true.
              DATA(t487) = t473.
              DATA(t488) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t488->has = abap_true.
              t488->value = t487.
              t485 = t488.
            ELSE.
              DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t489.
              t485 = t489.
            ENDIF.
            t482 = t483->exists_object( i_name = t485 ).
            t481 = t482.
            DATA(t490) = VALUE abap_bool( ).
            DATA t491 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t491.
            DATA t492 TYPE REF TO zcl_lnt_shape_59e28496.
            DATA(t493) = CAST zcl_lnt_shape_59e28496( t481 ).
            t492 = t493.
            DATA t494 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t494.
            DATA(t495) = VALUE abap_bool( ).
            DATA(t496) = CAST zcl_lnt_shape_59e28496( t492 ).
            IF t496 IS INITIAL.
              t495 = abap_true.
            ENDIF.
            IF t495 = abap_true.
              DATA t497 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t497.
              t494 = t497.
            ELSE.
              DATA t498 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t499 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t500) = CAST zcl_lnt_shape_59e28496( t492 ).
              t499 = t500.
              t498 = t499->id.
              t494 = t498.
            ENDIF.
            t491 = t494.
            t490 = xsdbool( t491 IS BOUND ).
            IF t490 = abap_true.
              DATA t501 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t502 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t503 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t504 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t505 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t506) = CAST zcl_lnt_shape_59e28496( t481 ).
              t505 = t506.
              t504 = t505->id.
              t503 = t504.
              DATA t507 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t507.
              t502 = NEW zcl_lnt_object_reference_type( i_id = t503 i_extra = t507 ).
              t501 = t502.
              DATA t508 TYPE abap_bool.
              DATA t509 TYPE abap_bool.
              DATA t510 TYPE REF TO zcl_lnt_type_utils.
              DATA t511 TYPE REF TO zcl_lnt_current_scope.
              DATA(t512) = CAST zcl_lnt_syntax_input( t2 ).
              t511 = t512->scope.
              t510 = NEW zcl_lnt_type_utils( i_scope = t511 ).
              DATA(t513) = CAST zcl_lnt_object_reference_type( t501 ).
              DATA t514 TYPE REF TO zcl_lnt_object_reference_type.
              DATA(t515) = CAST zcl_lnt_abstract_type( t458 ).
              t514 ?= t515.
              DATA t516 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t516.
              t509 = t510->is_assignable_strict( i_source_75cf = t513 i_target_5f8a = t514 i_node = t516 ).
              DATA(t517) = abap_false.
              t508 = xsdbool( t509 = t517 ).
              IF t508 = abap_true.
                DATA t518 TYPE string.
                DATA t519 TYPE string.
                DATA(t520) = |CATCH target not compatible with |.
                DATA(t521) = t473.
                DATA(t522) = strlen( t520 ).
                t519 = |{ t520 }{ t521 }|.
                t518 = t519.
                DATA t523 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t524) = CAST zcl_lnt_syntax_input( t2 ).
                t523 = t524->issues.
                DATA t525 TYPE REF TO zcl_lnt_issue.
                DATA(t526) = CAST zcl_lnt_syntax_input( t2 ).
                DATA(t527) = CAST zcl_lnt_abstract_token( t470 ).
                DATA(t528) = t518.
                DATA t529 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t529.
                t525 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t526 i_token = t527 i_message_26cb = t528 i_fix = t529 ).
                APPEND t525 TO t523->items.
                RETURN.
              ENDIF.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_common_superclass.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_class_names ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/statements/catch.ts:80|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d846_1c13f6855d17.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
