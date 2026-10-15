* TS: src/abap/5_syntax/statements/catch.ts:12:1 Catch
CLASS zcl_lnt_sy_catch DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS find_common_superclass IMPORTING i_class_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_catch IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA(t14) = t3.
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t13.
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
      DATA(t21) = t13.
      t20 = t21.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t19 = t20->find_direct_expression( i_type_9913 = t22 ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t11.
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
      DATA(t29) = t11.
      t28 = t29.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t27 = t28->find_first_expression( i_type_9913 = t30 ).
      t23 = t27.
    ENDIF.
    t10 = t23.
    t9 = t10.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t9.
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
      DATA(t37) = t9.
      t36 = t37.
      t35 = t36->get_first_token( ).
      t31 = t35.
    ENDIF.
    t8 = t31.
    t7 = t8.
    DATA t38 TYPE abap_bool.
    DATA t39 TYPE abap_bool.
    DATA(t40) = t7.
    t39 = xsdbool( t40 IS BOUND ).
    t38 = t39.
    IF t39 = abap_true.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE i.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t7.
      t45 = t46.
      t44 = t45.
      DATA t47 TYPE string.
      DATA(t48) = t44.
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
      DATA(t52) = t2.
      t51 = t52->issues.
      DATA t53 TYPE REF TO zcl_lnt_issue.
      DATA(t54) = t2.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = t7.
      t55 = t56.
      DATA(t57) = |Inline exception name longer than 30 characters|.
      DATA t58 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t58.
      t53 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t54 i_token = t55 i_message_26cb = t57 i_fix = t58 ).
      t51->load( ).
      APPEND t53 TO t51->items.
      t51->save( ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t60) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t62) = t1.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t61 = t62->find_direct_expressions( i_type_9913 = t63 ).
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t64.
    DATA t65 TYPE REF TO object.
    CLEAR t65.
    DATA(t66) = VALUE i( ).
    DO.
      t61->load( ).
      IF t66 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t65.
      READ TABLE t61->items INDEX t66 + 1 INTO t65.
      t66 = t66 + 1.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      CLEAR t64.
      IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t67 ?= t65.
        DATA t68 TYPE REF TO object.
        t68 = t67->as_ref( ).
        t64 ?= t68.
      ELSE.
        t64 ?= t65.
      ENDIF.
      DATA t69 TYPE REF TO zcl_lnt_abstract_token.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t71) = t64.
      t70 = t71->get_first_token( ).
      t69 = t70.
      DATA(t72) = VALUE string( ).
      DATA t73 TYPE string.
      DATA t74 TYPE string.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t76) = t69.
      t75 = t76.
      DATA t77 TYPE string.
      DATA(t78) = t75.
      t77 = t78->str.
      t74 = t77.
      DATA(t79) = strlen( t74 ).
      t73 = t74.
      IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t73 TO UPPER CASE.
      ELSE.
        t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
      ENDIF.
      t72 = t73.
      DATA t80 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_current_scope.
      DATA(t83) = t2.
      t82 = t83->scope.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      DATA(t85) = abap_true.
      IF t85 = abap_true.
        DATA(t86) = t72.
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t86.
        t84 = t87.
      ELSE.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t84 = t88.
      ENDIF.
      t81 = t82->exists_object( i_name = t84 ).
      t80 = t81.
      DATA(t89) = VALUE abap_bool( ).
      DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t92) = t80.
      t91 = t92.
      DATA t93 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t93.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t91.
      IF t95 IS INITIAL.
        t94 = abap_true.
      ENDIF.
      IF t94 = abap_true.
        DATA t96 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t96.
        t93 = t96.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t98 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t99) = t91.
        t98 = t99.
        t97 = t98->id.
        t93 = t97.
      ENDIF.
      t90 = t93.
      t89 = xsdbool( t90 IS BOUND ).
      IF t89 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_current_scope.
        DATA(t101) = t2.
        t100 = t101->scope.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA(t104) = t69.
          t102 = t104.
        ELSE.
          DATA t105 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t105.
          t102 = t105.
        ENDIF.
        DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA t108 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t109 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t110 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t111) = t80.
          t110 = t111.
          t109 = t110->id.
          t108 = t109.
          t106 = t108.
        ELSE.
          DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t112.
          t106 = t112.
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        DATA(t114) = |Object|.
        CLEAR t113.
        CREATE OBJECT t113.
        t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t113->sval = t114.
        DATA t115 TYPE string.
        DATA(t116) = t2.
        t115 = t116->filename.
        DATA t117 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t117.
        t100->add_reference( i_usage = t102 i_referencing = t106 i_type_9913 = t113 i_filename = t115 i_extra = t117 ).
      ELSE.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = VALUE abap_bool( ).
        DATA t120 TYPE REF TO zcl_lnt_ddic.
        DATA t121 TYPE REF TO zcl_lnt_ddic.
        DATA t122 TYPE REF TO zcl_lnt_current_scope.
        DATA t123 TYPE REF TO zcl_lnt_current_scope.
        DATA(t124) = t2.
        t123 = t124->scope.
        t122 = t123.
        DATA t125 TYPE REF TO zcl_lnt_ddic.
        DATA t126 TYPE REF TO zif_lnt_registry.
        DATA(t127) = t122.
        t126 = t127->reg.
        t125 = NEW zcl_lnt_ddic( i_reg_f149 = t126 ).
        t121 = t125.
        t120 = t121.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA(t131) = t72.
          DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t132->has = abap_true.
          t132->value = t131.
          t129 = t132.
        ELSE.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          t129 = t133.
        ENDIF.
        t128 = t129.
        DATA(t134) = VALUE abap_bool( ).
        DATA(t135) = VALUE abap_bool( ).
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t137) = t128.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        t138 = t139.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = t136.
        IF t141 IS INITIAL.
          t140 = abap_true.
        ELSEIF t141->has = abap_false.
          t140 = abap_true.
        ENDIF.
        t135 = t140.
        IF t135 = abap_true.
          DATA(t142) = abap_true.
          t134 = t142.
        ELSE.
          DATA t143 TYPE abap_bool.
          DATA t144 TYPE REF TO zif_lnt_registry.
          DATA(t145) = t120.
          t144 = t145->reg.
          DATA t146 TYPE string.
          DATA(t147) = t128.
          t146 = t147->value.
          t143 = t144->in_error_namespace( i_name = t146 ).
          t134 = t143.
        ENDIF.
        t119 = t134.
        DATA(t148) = abap_false.
        t118 = xsdbool( t119 = t148 ).
        IF t118 = abap_true.
          DATA t149 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t149.
          DATA t150 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA(t153) = abap_true.
          IF t153 = abap_true.
            DATA(t154) = t72.
            DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t155->has = abap_true.
            t155->value = t154.
            t152 = t155.
          ELSE.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            t152 = t156.
          ENDIF.
          t151 = t152.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t158.
          DATA(t159) = abap_true.
          IF t159 = abap_true.
            DATA(t160) = |Void|.
            DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t161->has = abap_true.
            t161->value = t160.
            t158 = t161.
          ELSE.
            DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t162.
            t158 = t162.
          ENDIF.
          t157 = t158.
          DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t164.
          t163 = t164.
          t150 = NEW zcl_lnt_ireference_extras( i_oo_name = t151 i_oo_type = t157 i_found_qualified = t163 ).
          CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
          t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t165 ).
          ENDIF.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t166 ).
          ENDIF.
          CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
          t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t167) = |ooName|.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
          ENDIF.
          DATA(t169) = |ooType|.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
          ENDIF.
          t149 = t150.
          DATA t171 TYPE REF TO zcl_lnt_current_scope.
          DATA(t172) = t2.
          t171 = t172->scope.
          DATA t173 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t173.
          DATA(t174) = abap_true.
          IF t174 = abap_true.
            DATA(t175) = t69.
            t173 = t175.
          ELSE.
            DATA t176 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t176.
            t173 = t176.
          ENDIF.
          DATA t177 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t177.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          DATA(t179) = |Object (Void)|.
          CLEAR t178.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t178->sval = t179.
          DATA t180 TYPE string.
          DATA(t181) = t2.
          t180 = t181->filename.
          DATA t182 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t182.
          DATA(t183) = abap_true.
          IF t183 = abap_true.
            DATA(t184) = t149.
            t182 = t184.
          ELSE.
            DATA t185 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t185.
            t182 = t185.
          ENDIF.
          t171->add_reference( i_usage = t173 i_referencing = t177 i_type_9913 = t178 i_filename = t180 i_extra = t182 ).
        ELSE.
          DATA t186 TYPE string.
          DATA t187 TYPE string.
          DATA(t188) = |CATCH, unknown class |.
          DATA(t189) = t72.
          DATA(t190) = strlen( t188 ).
          t187 = |{ t188 }{ t189 }|.
          t186 = t187.
          DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t192) = t2.
          t191 = t192->issues.
          DATA t193 TYPE REF TO zcl_lnt_issue.
          DATA(t194) = t2.
          DATA(t195) = t69.
          DATA(t196) = t186.
          DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t197.
          t193 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t194 i_token = t195 i_message_26cb = t196 i_fix = t197 ).
          t191->load( ).
          APPEND t193 TO t191->items.
          t191->save( ).
        ENDIF.
      ENDIF.
      DATA t198 TYPE abap_bool.
      DATA(t199) = t59.
      DATA(t200) = t72.
      t198 = t199->has( p0 = t200 ).
      IF t198 = abap_true.
        DATA t201 TYPE string.
        DATA t202 TYPE string.
        DATA(t203) = |Duplicate class name in CATCH: |.
        DATA(t204) = t72.
        DATA(t205) = strlen( t203 ).
        t202 = |{ t203 }{ t204 }|.
        t201 = t202.
        DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t207) = t2.
        t206 = t207->issues.
        DATA t208 TYPE REF TO zcl_lnt_issue.
        DATA(t209) = t2.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t211) = t1.
        t210 = t211->get_first_token( ).
        DATA(t212) = t201.
        DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t213.
        t208 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t209 i_token = t210 i_message_26cb = t212 i_fix = t213 ).
        t206->load( ).
        APPEND t208 TO t206->items.
        t206->save( ).
        RETURN.
      ENDIF.
      DATA t214 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t215) = t59.
      DATA(t216) = t72.
      t214 = t215->add( p0 = t216 ).
    ENDDO.
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t218.
    DATA t219 TYPE REF TO zcl_lnt_expression_node.
    DATA(t220) = t3.
    t219 = t220.
    DATA t221 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t221.
    DATA(t222) = VALUE abap_bool( ).
    DATA(t223) = t219.
    IF t223 IS INITIAL.
      t222 = abap_true.
    ENDIF.
    IF t222 = abap_true.
      DATA t224 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t224.
      t221 = t224.
    ELSE.
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      DATA t226 TYPE REF TO zcl_lnt_expression_node.
      DATA(t227) = t219.
      t226 = t227.
      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t225 = t226->find_direct_expression( i_type_9913 = t228 ).
      t221 = t225.
    ENDIF.
    t218 = t221.
    t217 = xsdbool( t218 IS BOUND ).
    IF t217 = abap_true.
      DATA t229 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t229.
      DATA t230 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t230.
      DATA t231 TYPE REF TO zcl_lnt_expression_node.
      DATA t232 TYPE REF TO zcl_lnt_expression_node.
      DATA t233 TYPE REF TO zcl_lnt_expression_node.
      DATA(t234) = t3.
      t233 = t234.
      DATA(t235) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t232 = t233->find_first_expression( i_type_9913 = t235 ).
      t231 = t232.
      DATA t236 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t236.
      DATA(t237) = VALUE abap_bool( ).
      DATA(t238) = t231.
      IF t238 IS INITIAL.
        t237 = abap_true.
      ENDIF.
      IF t237 = abap_true.
        DATA t239 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t239.
        t236 = t239.
      ELSE.
        DATA t240 TYPE REF TO zcl_lnt_abstract_token.
        DATA t241 TYPE REF TO zcl_lnt_expression_node.
        DATA(t242) = t231.
        t241 = t242.
        t240 = t241->get_first_token( ).
        t236 = t240.
      ENDIF.
      t230 = t236.
      t229 = t230.
      DATA t243 TYPE abap_bool.
      DATA(t244) = t229.
      t243 = xsdbool( t244 IS BOUND ).
      IF t243 = abap_true.
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t247) = t59.
        t246 = t247->values( ).
        t245 = t246.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t251) = t245.
        t250 = t251.
        DATA t252 TYPE i.
        DATA t253 TYPE i.
        DATA(t254) = t250.
        t254->load( ).
        t253 = lines( t254->items ).
        t252 = t253.
        DATA t255 TYPE i.
        DATA(t256) = 0.
        t255 = t256.
        DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        t257 = t258.
        DO.
          DATA t259 TYPE abap_bool.
          DATA(t260) = t255.
          DATA(t261) = t252.
          t259 = xsdbool( t260 < t261 ).
          IF t259 = abap_false.
            EXIT.
          ENDIF.
          DATA t262 TYPE string.
          DATA t263 TYPE string.
          DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t265) = t250.
          DATA(t266) = t255.
          t264 = t265->get( p0 = t266 ).
          t263 = t264->value.
          t262 = t263.
          DATA(t267) = VALUE abap_bool( ).
          DATA t268 TYPE REF TO zif_lnt_class_definition.
          CLEAR t268.
          DATA t269 TYPE REF TO zif_lnt_class_definition.
          CLEAR t269.
          DATA t270 TYPE REF TO zcl_lnt_current_scope.
          DATA t271 TYPE REF TO zcl_lnt_current_scope.
          DATA(t272) = t2.
          t271 = t272->scope.
          t270 = t271.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t273.
          DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t274.
          DATA(t275) = abap_true.
          IF t275 = abap_true.
            DATA(t276) = t262.
            DATA(t277) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t277->has = abap_true.
            t277->value = t276.
            t274 = t277.
          ELSE.
            DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t278.
            t274 = t278.
          ENDIF.
          t273 = t274.
          DATA t279 TYPE REF TO zif_lnt_class_definition.
          CLEAR t279.
          DATA(t280) = VALUE abap_bool( ).
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t282) = t273.
          t281 = t282.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t284.
          t283 = t284.
          DATA(t285) = VALUE abap_bool( ).
          DATA(t286) = t281.
          IF t286 IS INITIAL.
            t285 = abap_true.
          ELSEIF t286->has = abap_false.
            t285 = abap_true.
          ENDIF.
          t280 = t285.
          IF t280 = abap_true.
            DATA t287 TYPE REF TO zif_lnt_class_definition.
            CLEAR t287.
            t279 = t287.
          ELSE.
            DATA t288 TYPE REF TO zif_lnt_class_definition.
            CLEAR t288.
            DATA t289 TYPE REF TO zif_lnt_class_definition.
            CLEAR t289.
            DATA t290 TYPE REF TO zif_lnt_class_definition.
            CLEAR t290.
            DATA t291 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t292 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t293) = t270.
            t292 = t293->current.
            t291 = t292.
            DATA t294 TYPE REF TO zif_lnt_class_definition.
            CLEAR t294.
            DATA(t295) = VALUE abap_bool( ).
            DATA(t296) = t291.
            IF t296 IS INITIAL.
              t295 = abap_true.
            ENDIF.
            IF t295 = abap_true.
              DATA t297 TYPE REF TO zif_lnt_class_definition.
              CLEAR t297.
              t294 = t297.
            ELSE.
              DATA t298 TYPE REF TO zif_lnt_class_definition.
              DATA t299 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t300) = t291.
              t299 = t300.
              DATA t301 TYPE string.
              DATA(t302) = t273.
              t301 = t302->value.
              t298 = t299->find_class_definition( i_name = t301 ).
              t294 = t298.
            ENDIF.
            t290 = t294.
            t289 = t290.
            DATA t303 TYPE REF TO zif_lnt_class_definition.
            CLEAR t303.
            DATA t304 TYPE abap_bool.
            DATA(t305) = t289.
            t304 = xsdbool( t305 IS BOUND ).
            IF t304 = abap_true.
              DATA t306 TYPE REF TO zif_lnt_class_definition.
              CLEAR t306.
              DATA(t307) = abap_true.
              IF t307 = abap_true.
                DATA t308 TYPE REF TO zif_lnt_class_definition.
                DATA(t309) = t289.
                t308 = t309.
                t306 = t308.
              ELSE.
                DATA t310 TYPE REF TO zif_lnt_class_definition.
                CLEAR t310.
                t306 = t310.
              ENDIF.
              t303 = t306.
            ELSE.
              DATA t311 TYPE REF TO zif_lnt_class_definition.
              CLEAR t311.
              DATA t312 TYPE REF TO zcl_lnt_class.
              CLEAR t312.
              DATA t313 TYPE REF TO zcl_lnt_class.
              CLEAR t313.
              DATA t314 TYPE REF TO zif_lnt_object.
              CLEAR t314.
              DATA t315 TYPE REF TO zif_lnt_registry.
              DATA(t316) = t270.
              t315 = t316->reg.
              DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t317.
              DATA(t318) = abap_true.
              IF t318 = abap_true.
                DATA(t319) = |CLAS|.
                DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t320->has = abap_true.
                t320->value = t319.
                t317 = t320.
              ELSE.
                DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t321.
                t317 = t321.
              ENDIF.
              DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t322.
              DATA(t323) = abap_true.
              IF t323 = abap_true.
                DATA t324 TYPE string.
                DATA(t325) = t273.
                t324 = t325->value.
                DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t326->has = abap_true.
                t326->value = t324.
                t322 = t326.
              ELSE.
                DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t327.
                t322 = t327.
              ENDIF.
              t314 = t315->get_object( i_type_9913 = t317 i_name = t322 ).
              DATA t328 TYPE REF TO object.
              t328 = t314.
              t313 ?= t328.
              t312 = t313.
              DATA t329 TYPE REF TO zif_lnt_class_definition.
              CLEAR t329.
              DATA t330 TYPE abap_bool.
              DATA(t331) = t312.
              t330 = xsdbool( t331 IS BOUND ).
              IF t330 = abap_true.
                DATA t332 TYPE REF TO zif_lnt_class_definition.
                DATA t333 TYPE REF TO zcl_lnt_class.
                DATA(t334) = t312.
                t333 = t334.
                t332 = t333->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t329 = t332.
              ELSE.
                DATA t335 TYPE REF TO zif_lnt_class_definition.
                CLEAR t335.
                t329 = t335.
              ENDIF.
              t311 = t329.
              t303 = t311.
            ENDIF.
            t288 = t303.
            t279 = t288.
          ENDIF.
          t269 = t279.
          t268 = t269.
          DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t337.
          t336 = t337.
          DATA(t338) = VALUE abap_bool( ).
          DATA(t339) = t268.
          IF t339 IS INITIAL.
            t338 = abap_true.
          ENDIF.
          t267 = t338.
          IF t267 = abap_true.
            DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t340.
            DATA(t341) = abap_true.
            IF t341 = abap_true.
              DATA(t342) = t262.
              DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t343->has = abap_true.
              t343->value = t342.
              t340 = t343.
            ELSE.
              DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t344.
              t340 = t344.
            ENDIF.
            t257 = t340.
            EXIT.
          ENDIF.
          DATA t345 TYPE i.
          DATA(t346) = t255.
          DATA(t347) = 1.
          t345 = t346 + t347.
          t255 = t345.
        ENDDO.
        DATA(t348) = t257.
        t249 = t348.
        t248 = t249.
        DATA t349 TYPE REF TO zif_lnt_class_definition.
        CLEAR t349.
        DATA t350 TYPE REF TO zif_lnt_class_definition.
        CLEAR t350.
        DATA(t351) = VALUE abap_bool( ).
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t353) = t248.
        t352 = t353.
        DATA t354 TYPE REF TO zif_lnt_class_definition.
        DATA t355 TYPE REF TO zif_lnt_class_definition.
        CLEAR t355.
        t354 = t355.
        DATA(t356) = VALUE abap_bool( ).
        DATA(t357) = t352.
        IF t357 IS INITIAL.
          t356 = abap_true.
        ELSEIF t357->has = abap_false.
          t356 = abap_true.
        ENDIF.
        t351 = t356.
        IF t351 = abap_true.
          DATA t358 TYPE REF TO zif_lnt_class_definition.
          DATA(t359) = t245.
          DATA(t360) = t2.
          t358 = me->find_common_superclass( i_class_names = t359 i_input_967e = t360 ).
          t350 = t358.
        ELSE.
          DATA t361 TYPE REF TO zif_lnt_class_definition.
          CLEAR t361.
          t350 = t361.
        ENDIF.
        t349 = t350.
        DATA t362 TYPE REF TO zif_lnt_union_265b2b50.
        CLEAR t362.
        DATA t363 TYPE REF TO zif_lnt_union_265b2b50.
        CLEAR t363.
        DATA t364 TYPE abap_bool.
        DATA(t365) = t349.
        t364 = xsdbool( t365 IS BOUND ).
        IF t364 = abap_true.
          DATA t366 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t367 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t368 TYPE REF TO zif_lnt_class_definition.
          DATA(t369) = t349.
          t368 = t369.
          t367 ?= t368.
          DATA t370 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t370.
          t366 = NEW zcl_lnt_object_reference_type( i_id = t367 i_extra = t370 ).
          t363 = t366.
        ELSE.
          DATA t371 TYPE REF TO zcl_lnt_void_type.
          CLEAR t371.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t372.
          DATA(t373) = abap_true.
          IF t373 = abap_true.
            DATA(t374) = VALUE string( ).
            DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t376) = t248.
            t375 = t376.
            DATA(t377) = VALUE string( ).
            DATA(t378) = VALUE abap_bool( ).
            DATA(t379) = t375.
            IF t379 IS BOUND.
              IF t379->has = abap_true.
                t378 = xsdbool( strlen( t379->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t378 = abap_true.
              DATA t380 TYPE string.
              DATA(t381) = t375.
              t380 = t381->value.
              t377 = t380.
            ELSE.
              DATA t382 TYPE string.
              DATA(t383) = t245.
              DATA(t384) = | |.
              DATA(t385) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t385->has = abap_true.
              t385->value = t384.
              t382 = t383->join( p0 = t385 ).
              t377 = t382.
            ENDIF.
            t374 = t377.
            DATA(t386) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t386->has = abap_true.
            t386->value = t374.
            t372 = t386.
          ELSE.
            DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t387.
            t372 = t387.
          ENDIF.
          DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t388.
          t371 = zcl_lnt_void_type=>get_db65( i_voided = t372 i_qualified_name = t388 ).
          t363 = t371.
        ENDIF.
        t362 = t363.
        DATA t389 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t389.
        DATA t390 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t390.
        DATA t391 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t392) = t229.
        t391 = t392.
        DATA t393 TYPE string.
        DATA(t394) = t2.
        t393 = t394->filename.
        DATA t395 TYPE REF TO zif_lnt_union_ea265422.
        DATA(t396) = t362.
        t395 ?= t396.
        DATA t397 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t397.
        DATA(t398) = abap_true.
        IF t398 = abap_true.
          DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t400 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t401.
          t400 = t401.
          DATA(t402) = t400.
          DATA(t403) = |inline|.
          t402->load( ).
          APPEND t403 TO t402->items.
          t402->save( ).
          DATA(t404) = t400.
          t399 = t404.
          t397 = t399.
        ELSE.
          DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t405.
          t397 = t405.
        ENDIF.
        DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t406.
        t390 = NEW zcl_lnt_typed_identifier( i_token = t391 i_filename = t393 i_type_9913 = t395 i_meta = t397 i_value = t406 ).
        t389 = t390.
        DATA t407 TYPE REF TO zcl_lnt_current_scope.
        DATA t408 TYPE REF TO zcl_lnt_current_scope.
        DATA(t409) = t2.
        t408 = t409->scope.
        t407 = t408.
        DATA t410 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t410.
        DATA t411 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t411.
        DATA(t412) = abap_true.
        IF t412 = abap_true.
          DATA(t413) = t389.
          t411 = t413.
        ELSE.
          DATA t414 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t414.
          t411 = t414.
        ENDIF.
        t410 = t411.
        DATA(t415) = VALUE abap_bool( ).
        DATA t416 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t417) = t410.
        t416 = t417.
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t419.
        t418 = t419.
        DATA(t420) = VALUE abap_bool( ).
        DATA(t421) = t416.
        IF t421 IS INITIAL.
          t420 = abap_true.
        ENDIF.
        t415 = t420.
        IF t415 = abap_true.
        ELSE.
          DATA(t422) = t407.
          DATA(t423) = VALUE string( ).
          DATA t424 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t425 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t426) = t410.
          t425 = t426.
          t424 = t425.
          DATA(t427) = VALUE string( ).
          DATA t428 TYPE string.
          DATA t429 TYPE string.
          DATA t430 TYPE REF TO zcl_lnt_abstract_token.
          DATA t431 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t432) = t424.
          t431 = t432->token.
          t430 = t431.
          DATA t433 TYPE string.
          DATA(t434) = t430.
          t433 = t434->str.
          t429 = t433.
          t428 = t429.
          DATA(t435) = VALUE abap_bool( ).
          DATA(t436) = VALUE string( ).
          DATA(t437) = t428.
          DATA(t438) = 0.
          DATA(t439) = 1.
          DATA(t440) = strlen( t437 ).
          IF t438 < 0.
            t438 = t438 + t440.
            IF t438 < 0.
              t438 = 0.
            ENDIF.
          ENDIF.
          IF t438 > t440 OR t439 <= 0.
            CLEAR t436.
          ELSE.
            IF t439 > t440 - t438.
              t439 = t440 - t438.
            ENDIF.
            t436 = t437+t438(t439).
          ENDIF.
          DATA(t441) = |!|.
          t435 = xsdbool( t436 = t441 ).
          IF t435 = abap_true.
            DATA(t442) = VALUE string( ).
            DATA t443 TYPE string.
            DATA(t444) = t428.
            t443 = t444.
            DATA(t445) = VALUE string( ).
            DATA(t446) = t443.
            DATA(t447) = 1.
            DATA t448 TYPE i.
            DATA(t449) = t443.
            DATA(t450) = strlen( t449 ).
            t448 = t450.
            DATA(t451) = strlen( t446 ).
            IF t447 < 0.
              t447 = t447 + t451.
              IF t447 < 0.
                t447 = 0.
              ENDIF.
            ENDIF.
            IF t447 > t451 OR t448 <= 0.
              CLEAR t445.
            ELSE.
              IF t448 > t451 - t447.
                t448 = t451 - t447.
              ENDIF.
              t445 = t446+t447(t448).
            ENDIF.
            t442 = t445.
            t428 = t442.
          ENDIF.
          DATA(t452) = t428.
          t427 = t452.
          t423 = t427.
          DATA t453 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t454) = t410.
          t453 = t454.
          t422->add_named_identifier( i_name = t423 i_identifier = t453 ).
        ENDIF.
        DATA t455 TYPE REF TO zcl_lnt_current_scope.
        DATA(t456) = t2.
        t455 = t456->scope.
        DATA t457 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t457.
        DATA(t458) = abap_true.
        IF t458 = abap_true.
          DATA t459 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t460) = t229.
          t459 = t460.
          t457 = t459.
        ELSE.
          DATA t461 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t461.
          t457 = t461.
        ENDIF.
        DATA(t462) = t389.
        DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t463.
        DATA(t464) = |Write To|.
        CLEAR t463.
        CREATE OBJECT t463.
        t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t463->sval = t464.
        DATA t465 TYPE string.
        DATA(t466) = t2.
        t465 = t466->filename.
        DATA t467 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t467.
        t455->add_reference( i_usage = t457 i_referencing = t462 i_type_9913 = t463 i_filename = t465 i_extra = t467 ).
      ENDIF.
    ELSE.
      DATA t468 TYPE abap_bool.
      DATA(t469) = t3.
      t468 = xsdbool( t469 IS BOUND ).
      IF t468 = abap_true.
        DATA t470 TYPE REF TO zcl_lnt_abstract_type.
        DATA t471 TYPE REF TO zcl_lnt_abstract_type.
        DATA t472 TYPE REF TO zcl_lnt_expression_node.
        DATA(t473) = t3.
        t472 = t473.
        DATA(t474) = t2.
        t471 = zcl_lnt_sy_target=>run_syntax( i_node = t472 i_input_967e = t474 ).
        t470 = t471.
        DATA t475 TYPE abap_bool.
        DATA(t476) = t470.
        t475 = xsdbool( t476 IS BOUND AND t476 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t475 = abap_true.
          DATA t477 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t478) = t1.
          DATA(t479) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
          t477 = t478->find_direct_expressions( i_type_9913 = t479 ).
          DATA t480 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t480.
          DATA t481 TYPE REF TO object.
          CLEAR t481.
          DATA(t482) = VALUE i( ).
          DO.
            t477->load( ).
            IF t482 >= lines( t477->items ).
              EXIT.
            ENDIF.
            CLEAR t481.
            READ TABLE t477->items INDEX t482 + 1 INTO t481.
            t482 = t482 + 1.
            DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t483.
            CLEAR t480.
            IF t481 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t483 ?= t481.
              DATA t484 TYPE REF TO object.
              t484 = t483->as_ref( ).
              t480 ?= t484.
            ELSE.
              t480 ?= t481.
            ENDIF.
            DATA t485 TYPE REF TO zcl_lnt_abstract_token.
            DATA t486 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t487) = t480.
            t486 = t487->get_first_token( ).
            t485 = t486.
            DATA(t488) = VALUE string( ).
            DATA t489 TYPE string.
            DATA t490 TYPE string.
            DATA t491 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t492) = t485.
            t491 = t492.
            DATA t493 TYPE string.
            DATA(t494) = t491.
            t493 = t494->str.
            t490 = t493.
            DATA(t495) = strlen( t490 ).
            t489 = t490.
            IF t489 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t489 TO UPPER CASE.
            ELSE.
              t489 = zlnt_runtime_uppe_91169605024d=>full( t489 ).
            ENDIF.
            t488 = t489.
            DATA t496 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t496.
            DATA t497 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t497.
            DATA t498 TYPE REF TO zcl_lnt_current_scope.
            DATA(t499) = t2.
            t498 = t499->scope.
            DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t500.
            DATA(t501) = abap_true.
            IF t501 = abap_true.
              DATA(t502) = t488.
              DATA(t503) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t503->has = abap_true.
              t503->value = t502.
              t500 = t503.
            ELSE.
              DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t504.
              t500 = t504.
            ENDIF.
            t497 = t498->exists_object( i_name = t500 ).
            t496 = t497.
            DATA(t505) = VALUE abap_bool( ).
            DATA t506 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t506.
            DATA t507 TYPE REF TO zcl_lnt_shape_59e28496.
            DATA(t508) = t496.
            t507 = t508.
            DATA t509 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t509.
            DATA(t510) = VALUE abap_bool( ).
            DATA(t511) = t507.
            IF t511 IS INITIAL.
              t510 = abap_true.
            ENDIF.
            IF t510 = abap_true.
              DATA t512 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t512.
              t509 = t512.
            ELSE.
              DATA t513 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t514 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t515) = t507.
              t514 = t515.
              t513 = t514->id.
              t509 = t513.
            ENDIF.
            t506 = t509.
            t505 = xsdbool( t506 IS BOUND ).
            IF t505 = abap_true.
              DATA t516 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t517 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t518 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t519 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t520 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t521) = t496.
              t520 = t521.
              t519 = t520->id.
              t518 = t519.
              DATA t522 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t522.
              t517 = NEW zcl_lnt_object_reference_type( i_id = t518 i_extra = t522 ).
              t516 = t517.
              DATA t523 TYPE abap_bool.
              DATA t524 TYPE abap_bool.
              DATA t525 TYPE REF TO zcl_lnt_type_utils.
              DATA t526 TYPE REF TO zcl_lnt_current_scope.
              DATA(t527) = t2.
              t526 = t527->scope.
              t525 = NEW zcl_lnt_type_utils( i_scope = t526 ).
              DATA(t528) = t516.
              DATA t529 TYPE REF TO zcl_lnt_object_reference_type.
              DATA(t530) = t470.
              t529 ?= t530.
              DATA t531 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t531.
              t524 = t525->is_assignable_strict( i_source_75cf = t528 i_target_5f8a = t529 i_node = t531 ).
              DATA(t532) = abap_false.
              t523 = xsdbool( t524 = t532 ).
              IF t523 = abap_true.
                DATA t533 TYPE string.
                DATA t534 TYPE string.
                DATA(t535) = |CATCH target not compatible with |.
                DATA(t536) = t488.
                DATA(t537) = strlen( t535 ).
                t534 = |{ t535 }{ t536 }|.
                t533 = t534.
                DATA t538 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t539) = t2.
                t538 = t539->issues.
                DATA t540 TYPE REF TO zcl_lnt_issue.
                DATA(t541) = t2.
                DATA(t542) = t485.
                DATA(t543) = t533.
                DATA t544 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t544.
                t540 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t541 i_token = t542 i_message_26cb = t543 i_fix = t544 ).
                t538->load( ).
                APPEND t540 TO t538->items.
                t538->save( ).
                RETURN.
              ENDIF.
            ENDIF.
          ENDDO.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_common_superclass.
    DATA(t1) = i_class_names.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = t1.
    DATA(t6) = VALUE string( ).
    t5->dense( ).
    DATA(t7) = VALUE i( ).
    DO.
      t5->load( ).
      IF t7 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t5->items INDEX t7 + 1 INTO t6.
      IF t5->has( t7 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      CREATE OBJECT t9.
      t8 = t9.
      DATA t10 TYPE REF TO zif_lnt_class_definition.
      CLEAR t10.
      DATA t11 TYPE REF TO zif_lnt_class_definition.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t13.
      DATA(t14) = t2.
      t13 = t14->scope.
      t12 = t13.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = t6.
        DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        t16 = t20.
      ENDIF.
      t15 = t16.
      DATA t21 TYPE REF TO zif_lnt_class_definition.
      CLEAR t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA(t24) = t15.
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      t25 = t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t23.
      IF t28 IS INITIAL.
        t27 = abap_true.
      ELSEIF t28->has = abap_false.
        t27 = abap_true.
      ENDIF.
      t22 = t27.
      IF t22 = abap_true.
        DATA t29 TYPE REF TO zif_lnt_class_definition.
        CLEAR t29.
        t21 = t29.
      ELSE.
        DATA t30 TYPE REF TO zif_lnt_class_definition.
        CLEAR t30.
        DATA t31 TYPE REF TO zif_lnt_class_definition.
        CLEAR t31.
        DATA t32 TYPE REF TO zif_lnt_class_definition.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t34.
        DATA(t35) = t12.
        t34 = t35->current.
        t33 = t34.
        DATA t36 TYPE REF TO zif_lnt_class_definition.
        CLEAR t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = t33.
        IF t38 IS INITIAL.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_true.
          DATA t39 TYPE REF TO zif_lnt_class_definition.
          CLEAR t39.
          t36 = t39.
        ELSE.
          DATA t40 TYPE REF TO zif_lnt_class_definition.
          CLEAR t40.
          DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t41.
          DATA(t42) = t33.
          t41 = t42.
          DATA(t43) = VALUE string( ).
          DATA(t44) = t15.
          t43 = t44->value.
          t40 = t41->find_class_definition( i_name = t43 ).
          t36 = t40.
        ENDIF.
        t32 = t36.
        t31 = t32.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t31.
        t46 = xsdbool( t47 IS BOUND ).
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zif_lnt_class_definition.
          CLEAR t48.
          DATA(t49) = abap_true.
          IF t49 = abap_true.
            DATA t50 TYPE REF TO zif_lnt_class_definition.
            CLEAR t50.
            DATA(t51) = t31.
            t50 = t51.
            t48 = t50.
          ELSE.
            DATA t52 TYPE REF TO zif_lnt_class_definition.
            CLEAR t52.
            t48 = t52.
          ENDIF.
          t45 = t48.
        ELSE.
          DATA t53 TYPE REF TO zif_lnt_class_definition.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_class.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_class.
          CLEAR t55.
          DATA t56 TYPE REF TO zif_lnt_object.
          CLEAR t56.
          DATA t57 TYPE REF TO zif_lnt_registry.
          CLEAR t57.
          DATA(t58) = t12.
          t57 = t58->reg.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          DATA(t60) = abap_true.
          IF t60 = abap_true.
            DATA(t61) = |CLAS|.
            DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t62->has = abap_true.
            t62->value = t61.
            t59 = t62.
          ELSE.
            DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t63.
            t59 = t63.
          ENDIF.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          DATA(t65) = abap_true.
          IF t65 = abap_true.
            DATA(t66) = VALUE string( ).
            DATA(t67) = t15.
            t66 = t67->value.
            DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t68->has = abap_true.
            t68->value = t66.
            t64 = t68.
          ELSE.
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t69.
            t64 = t69.
          ENDIF.
          t56 = t57->get_object( i_type_9913 = t59 i_name = t64 ).
          DATA t70 TYPE REF TO object.
          CLEAR t70.
          t70 = t56.
          t55 ?= t70.
          t54 = t55.
          DATA t71 TYPE REF TO zif_lnt_class_definition.
          CLEAR t71.
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = t54.
          t72 = xsdbool( t73 IS BOUND ).
          IF t72 = abap_true.
            DATA t74 TYPE REF TO zif_lnt_class_definition.
            CLEAR t74.
            DATA t75 TYPE REF TO zcl_lnt_class.
            CLEAR t75.
            DATA(t76) = t54.
            t75 = t76.
            t74 = t75->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t71 = t74.
          ELSE.
            DATA t77 TYPE REF TO zif_lnt_class_definition.
            CLEAR t77.
            t71 = t77.
          ENDIF.
          t53 = t71.
          t45 = t53.
        ENDIF.
        t30 = t45.
        t21 = t30.
      ENDIF.
      t11 = t21.
      t10 = t11.
      DATA t78 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t78.
      DATA(t79) = NEW zlnt_runtime_set__1827558fd4c7( ).
      t78 = t79.
      DO.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = t10.
        t81 = xsdbool( t82 IS BOUND ).
        t80 = t81.
        IF t81 = abap_true.
          DATA(t83) = VALUE abap_bool( ).
          DATA(t84) = VALUE abap_bool( ).
          DATA(t85) = t78.
          DATA(t86) = VALUE string( ).
          DATA(t87) = VALUE string( ).
          DATA t88 TYPE REF TO zif_lnt_class_definition.
          CLEAR t88.
          DATA(t89) = t10.
          t88 = t89.
          t87 = t88->get_name( ).
          DATA(t90) = strlen( t87 ).
          t86 = t87.
          IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t86 TO UPPER CASE.
          ELSE.
            t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
          ENDIF.
          t84 = t85->has( p0 = t86 ).
          DATA(t91) = abap_false.
          t83 = xsdbool( t84 = t91 ).
          t80 = t83.
        ENDIF.
        IF t80 = abap_false.
          EXIT.
        ENDIF.
        DATA(t92) = t8.
        DATA t93 TYPE REF TO zif_lnt_class_definition.
        CLEAR t93.
        DATA(t94) = t10.
        t93 = t94.
        t92->load( ).
        APPEND t93 TO t92->items.
        t92->save( ).
        DATA t95 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t95.
        DATA(t96) = t78.
        DATA(t97) = VALUE string( ).
        DATA(t98) = VALUE string( ).
        DATA t99 TYPE REF TO zif_lnt_class_definition.
        CLEAR t99.
        DATA(t100) = t10.
        t99 = t100.
        t98 = t99->get_name( ).
        DATA(t101) = strlen( t98 ).
        t97 = t98.
        IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t97 TO UPPER CASE.
        ELSE.
          t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
        ENDIF.
        t95 = t96->add( p0 = t97 ).
        DATA t102 TYPE REF TO zif_lnt_class_definition.
        CLEAR t102.
        DATA t103 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t103.
        DATA t104 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t104.
        DATA(t105) = t2.
        t104 = t105->scope.
        t103 = t104.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA t108 TYPE REF TO zif_lnt_class_definition.
        CLEAR t108.
        DATA(t109) = t10.
        t108 = t109.
        t107 = t108->get_super_class( ).
        t106 = t107.
        DATA t110 TYPE REF TO zif_lnt_class_definition.
        CLEAR t110.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = t106.
        t112 = t113.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        t114 = t115.
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = t112.
        IF t117 IS INITIAL.
          t116 = abap_true.
        ELSEIF t117->has = abap_false.
          t116 = abap_true.
        ENDIF.
        t111 = t116.
        IF t111 = abap_true.
          DATA t118 TYPE REF TO zif_lnt_class_definition.
          CLEAR t118.
          t110 = t118.
        ELSE.
          DATA t119 TYPE REF TO zif_lnt_class_definition.
          CLEAR t119.
          DATA t120 TYPE REF TO zif_lnt_class_definition.
          CLEAR t120.
          DATA t121 TYPE REF TO zif_lnt_class_definition.
          CLEAR t121.
          DATA t122 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t123.
          DATA(t124) = t103.
          t123 = t124->current.
          t122 = t123.
          DATA t125 TYPE REF TO zif_lnt_class_definition.
          CLEAR t125.
          DATA(t126) = VALUE abap_bool( ).
          DATA(t127) = t122.
          IF t127 IS INITIAL.
            t126 = abap_true.
          ENDIF.
          IF t126 = abap_true.
            DATA t128 TYPE REF TO zif_lnt_class_definition.
            CLEAR t128.
            t125 = t128.
          ELSE.
            DATA t129 TYPE REF TO zif_lnt_class_definition.
            CLEAR t129.
            DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t130.
            DATA(t131) = t122.
            t130 = t131.
            DATA(t132) = VALUE string( ).
            DATA(t133) = t106.
            t132 = t133->value.
            t129 = t130->find_class_definition( i_name = t132 ).
            t125 = t129.
          ENDIF.
          t121 = t125.
          t120 = t121.
          DATA t134 TYPE REF TO zif_lnt_class_definition.
          CLEAR t134.
          DATA(t135) = VALUE abap_bool( ).
          DATA(t136) = t120.
          t135 = xsdbool( t136 IS BOUND ).
          IF t135 = abap_true.
            DATA t137 TYPE REF TO zif_lnt_class_definition.
            CLEAR t137.
            DATA(t138) = abap_true.
            IF t138 = abap_true.
              DATA t139 TYPE REF TO zif_lnt_class_definition.
              CLEAR t139.
              DATA(t140) = t120.
              t139 = t140.
              t137 = t139.
            ELSE.
              DATA t141 TYPE REF TO zif_lnt_class_definition.
              CLEAR t141.
              t137 = t141.
            ENDIF.
            t134 = t137.
          ELSE.
            DATA t142 TYPE REF TO zif_lnt_class_definition.
            CLEAR t142.
            DATA t143 TYPE REF TO zcl_lnt_class.
            CLEAR t143.
            DATA t144 TYPE REF TO zcl_lnt_class.
            CLEAR t144.
            DATA t145 TYPE REF TO zif_lnt_object.
            CLEAR t145.
            DATA t146 TYPE REF TO zif_lnt_registry.
            CLEAR t146.
            DATA(t147) = t103.
            t146 = t147->reg.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            DATA(t149) = abap_true.
            IF t149 = abap_true.
              DATA(t150) = |CLAS|.
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
              DATA(t155) = VALUE string( ).
              DATA(t156) = t106.
              t155 = t156->value.
              DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t157->has = abap_true.
              t157->value = t155.
              t153 = t157.
            ELSE.
              DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t158.
              t153 = t158.
            ENDIF.
            t145 = t146->get_object( i_type_9913 = t148 i_name = t153 ).
            DATA t159 TYPE REF TO object.
            CLEAR t159.
            t159 = t145.
            t144 ?= t159.
            t143 = t144.
            DATA t160 TYPE REF TO zif_lnt_class_definition.
            CLEAR t160.
            DATA(t161) = VALUE abap_bool( ).
            DATA(t162) = t143.
            t161 = xsdbool( t162 IS BOUND ).
            IF t161 = abap_true.
              DATA t163 TYPE REF TO zif_lnt_class_definition.
              CLEAR t163.
              DATA t164 TYPE REF TO zcl_lnt_class.
              CLEAR t164.
              DATA(t165) = t143.
              t164 = t165.
              t163 = t164->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t160 = t163.
            ELSE.
              DATA t166 TYPE REF TO zif_lnt_class_definition.
              CLEAR t166.
              t160 = t166.
            ENDIF.
            t142 = t160.
            t134 = t142.
          ENDIF.
          t119 = t134.
          t110 = t119.
        ENDIF.
        t102 = t110.
        t10 = t102.
      ENDDO.
      DATA(t167) = t3.
      DATA(t168) = t8.
      t167->load( ).
      APPEND t168 TO t167->items.
      t167->save( ).
    ENDDO.
    DATA t169 TYPE REF TO zif_lnt_class_definition.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t171.
    DATA(t172) = t3.
    DATA(t173) = 0.
    DATA t174 TYPE REF TO object.
    CLEAR t174.
    t174 = t172->get( p0 = t173 ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    CLEAR t171.
    IF t174 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t175 ?= t174.
      CLEAR t171.
      IF t175 IS BOUND.
        IF t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t171 ?= t175->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
          ENDTRY.
        ELSEIF t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          CREATE OBJECT t171.
          t171->source = t175.
        ELSE.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
        ENDIF.
        t171->load( ).
        DATA t176 TYPE REF TO object.
        CLEAR t176.
        DATA t177 TYPE REF TO zif_lnt_class_definition.
        CLEAR t177.
        LOOP AT t171->items INTO t176.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          CLEAR t177.
          IF t176 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t178 ?= t176.
            DATA t179 TYPE REF TO object.
            CLEAR t179.
            t179 = t178->as_ref( ).
            t177 ?= t179.
          ELSE.
            t177 ?= t176.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ELSE.
      t171 ?= t174.
    ENDIF.
    t170 = t171.
    DATA t180 TYPE REF TO zif_lnt_class_definition.
    CLEAR t180.
    DATA(t181) = VALUE abap_bool( ).
    DATA(t182) = t170.
    IF t182 IS INITIAL.
      t181 = abap_true.
    ENDIF.
    IF t181 = abap_true.
      DATA t183 TYPE REF TO zif_lnt_class_definition.
      CLEAR t183.
      t180 = t183.
    ELSE.
      DATA t184 TYPE REF TO zif_lnt_class_definition.
      CLEAR t184.
      DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t185.
      DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t186.
      DATA(t187) = t170.
      t186 = t187.
      t185 = t186.
      DATA(t188) = VALUE i( ).
      DATA(t189) = VALUE i( ).
      DATA(t190) = t185.
      t190->load( ).
      t189 = lines( t190->items ).
      t188 = t189.
      DATA(t191) = VALUE i( ).
      DATA(t192) = 0.
      t191 = t192.
      DATA t193 TYPE REF TO zif_lnt_class_definition.
      CLEAR t193.
      DATA t194 TYPE REF TO zif_lnt_class_definition.
      CLEAR t194.
      t193 = t194.
      DO.
        DATA(t195) = VALUE abap_bool( ).
        DATA(t196) = t191.
        DATA(t197) = t188.
        t195 = xsdbool( t196 < t197 ).
        IF t195 = abap_false.
          EXIT.
        ENDIF.
        DATA t198 TYPE REF TO zif_lnt_class_definition.
        CLEAR t198.
        DATA t199 TYPE REF TO zif_lnt_class_definition.
        CLEAR t199.
        DATA t200 TYPE REF TO zif_lnt_class_definition.
        CLEAR t200.
        DATA(t201) = t185.
        DATA(t202) = t191.
        DATA t203 TYPE REF TO object.
        CLEAR t203.
        t203 = t201->get( p0 = t202 ).
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        CLEAR t200.
        IF t203 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t204 ?= t203.
          DATA t205 TYPE REF TO object.
          CLEAR t205.
          t205 = t204->as_ref( ).
          t200 ?= t205.
        ELSE.
          t200 ?= t203.
        ENDIF.
        t199 = t200.
        t198 = t199.
        DATA(t206) = VALUE abap_bool( ).
        DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t207.
        DATA(t208) = t3.
        t207 = t208.
        DATA(t209) = VALUE i( ).
        DATA(t210) = VALUE i( ).
        DATA(t211) = t207.
        t211->load( ).
        t210 = lines( t211->items ).
        t209 = t210.
        DATA(t212) = VALUE i( ).
        DATA(t213) = 0.
        t212 = t213.
        DATA(t214) = VALUE abap_bool( ).
        DATA(t215) = abap_true.
        t214 = t215.
        DO.
          DATA(t216) = VALUE abap_bool( ).
          DATA(t217) = t212.
          DATA(t218) = t209.
          t216 = xsdbool( t217 < t218 ).
          IF t216 = abap_false.
            EXIT.
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t219.
          DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t220.
          DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t221.
          DATA(t222) = t207.
          DATA(t223) = t212.
          DATA t224 TYPE REF TO object.
          CLEAR t224.
          t224 = t222->get( p0 = t223 ).
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          CLEAR t221.
          IF t224 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t225 ?= t224.
            CLEAR t221.
            IF t225 IS BOUND.
              IF t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t221 ?= t225->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
                ENDTRY.
              ELSEIF t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
                CREATE OBJECT t221.
                t221->source = t225.
              ELSE.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
              ENDIF.
              t221->load( ).
              DATA t226 TYPE REF TO object.
              CLEAR t226.
              DATA t227 TYPE REF TO zif_lnt_class_definition.
              CLEAR t227.
              LOOP AT t221->items INTO t226.
                DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t228.
                CLEAR t227.
                IF t226 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t228 ?= t226.
                  DATA t229 TYPE REF TO object.
                  CLEAR t229.
                  t229 = t228->as_ref( ).
                  t227 ?= t229.
                ELSE.
                  t227 ?= t226.
                ENDIF.
              ENDLOOP.
            ENDIF.
          ELSE.
            t221 ?= t224.
          ENDIF.
          t220 = t221.
          t219 = t220.
          DATA(t230) = VALUE abap_bool( ).
          DATA(t231) = VALUE abap_bool( ).
          DATA(t232) = VALUE abap_bool( ).
          DATA(t233) = abap_false.
          t232 = t233.
          DATA(t234) = t219.
          DATA t235 TYPE REF TO zif_lnt_class_definition.
          CLEAR t235.
          DATA t236 TYPE REF TO object.
          CLEAR t236.
          DATA(t237) = VALUE i( ).
          DO.
            t234->load( ).
            IF t237 >= lines( t234->items ).
              EXIT.
            ENDIF.
            CLEAR t236.
            READ TABLE t234->items INDEX t237 + 1 INTO t236.
            t237 = t237 + 1.
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t238.
            CLEAR t235.
            IF t236 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t238 ?= t236.
              DATA t239 TYPE REF TO object.
              CLEAR t239.
              t239 = t238->as_ref( ).
              t235 ?= t239.
            ELSE.
              t235 ?= t236.
            ENDIF.
            DATA(t240) = VALUE abap_bool( ).
            DATA(t241) = VALUE string( ).
            DATA(t242) = VALUE string( ).
            DATA(t243) = t235.
            t242 = t243->get_name( ).
            DATA(t244) = strlen( t242 ).
            t241 = t242.
            IF t241 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t241 TO UPPER CASE.
            ELSE.
              t241 = zlnt_runtime_uppe_91169605024d=>full( t241 ).
            ENDIF.
            DATA(t245) = VALUE string( ).
            DATA(t246) = VALUE string( ).
            DATA(t247) = t198.
            t246 = t247->get_name( ).
            DATA(t248) = strlen( t246 ).
            t245 = t246.
            IF t245 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t245 TO UPPER CASE.
            ELSE.
              t245 = zlnt_runtime_uppe_91169605024d=>full( t245 ).
            ENDIF.
            t240 = xsdbool( t241 = t245 ).
            IF t240 = abap_true.
              DATA(t249) = abap_true.
              t232 = t249.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t250) = t232.
          t231 = t250.
          t230 = xsdbool( t231 = abap_false ).
          IF t230 = abap_true.
            DATA(t251) = abap_false.
            t214 = t251.
            EXIT.
          ENDIF.
          DATA(t252) = VALUE i( ).
          DATA(t253) = t212.
          DATA(t254) = 1.
          t252 = t253 + t254.
          t212 = t252.
        ENDDO.
        DATA(t255) = t214.
        t206 = t255.
        IF t206 = abap_true.
          DATA t256 TYPE REF TO zif_lnt_class_definition.
          CLEAR t256.
          DATA(t257) = abap_true.
          IF t257 = abap_true.
            DATA(t258) = t198.
            t256 = t258.
          ELSE.
            DATA t259 TYPE REF TO zif_lnt_class_definition.
            CLEAR t259.
            t256 = t259.
          ENDIF.
          t193 = t256.
          EXIT.
        ENDIF.
        DATA(t260) = VALUE i( ).
        DATA(t261) = t191.
        DATA(t262) = 1.
        t260 = t261 + t262.
        t191 = t260.
      ENDDO.
      DATA(t263) = t193.
      t184 = t263.
      t180 = t184.
    ENDIF.
    t169 = t180.
    result = t169.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d868_06226f4d12ae.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
