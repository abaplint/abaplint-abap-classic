* TS: src/abap/5_syntax/expressions/source_field.ts:7:1 SourceField
CLASS zcl_lnt_sy_source_field DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_error TYPE REF TO zlnt_runtime_opti_7f2541396f43
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_source_field IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA(t4) = i_error.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = abap_true.
        DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = t1.
    t13 = t14->get_first_token( ).
    t12 = t13.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t12.
    t17 = t18.
    DATA t19 TYPE string.
    DATA(t20) = t17.
    t19 = t20->str.
    t16 = t19.
    t15 = t16.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_current_scope.
    DATA t24 TYPE REF TO zcl_lnt_current_scope.
    DATA(t25) = t2.
    t24 = t25->scope.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = t15.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = t26.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t34.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ELSEIF t39->has = abap_false.
      t38 = abap_true.
    ENDIF.
    t33 = t38.
    IF t33 = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t40.
      t32 = t40.
    ELSE.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t46) = t23.
      t45 = t46->current.
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t44.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      IF t48 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t50.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t53) = t44.
        t52 = t53.
        DATA t54 TYPE string.
        DATA(t55) = t26.
        t54 = t55->value.
        t51 = t52->find_variable( i_name = t54 ).
        t47 = t51.
      ENDIF.
      t43 = t47.
      t42 = t43.
      DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t56.
      DATA t57 TYPE abap_bool.
      DATA(t58) = t42.
      t57 = xsdbool( t58 IS BOUND ).
      IF t57 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t62) = t42.
          t61 = t62.
          t59 = t61.
        ELSE.
          DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t63.
          t59 = t63.
        ENDIF.
        t56 = t59.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t64.
        DATA(t65) = t23.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA t68 TYPE string.
          DATA(t69) = t26.
          t68 = t69->value.
          DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t70->has = abap_true.
          t70->value = t68.
          t66 = t70.
        ELSE.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t66 = t71.
        ENDIF.
        t64 = t65->find_type_pool_constant( i_name = t66 ).
        t56 = t64.
      ENDIF.
      t41 = t56.
      t32 = t41.
    ENDIF.
    t22 = t32.
    t21 = t22.
    DATA(t72) = VALUE abap_bool( ).
    DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t74) = t21.
    t73 = t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    t75 = t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = t73.
    IF t78 IS INITIAL.
      t77 = abap_true.
    ENDIF.
    t72 = t77.
    IF t72 = abap_true.
      DATA t79 TYPE string.
      DATA t80 TYPE string.
      DATA t81 TYPE string.
      DATA(t82) = |"|.
      DATA(t83) = t15.
      DATA(t84) = strlen( t82 ).
      t81 = |{ t82 }{ t83 }|.
      DATA(t85) = |" not found, findTop|.
      DATA(t86) = strlen( t81 ).
      t80 = |{ t81 }{ t85 }|.
      t79 = t80.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA(t89) = t4.
      t88 = t89->value.
      DATA(t90) = abap_true.
      t87 = xsdbool( t88 = t90 ).
      IF t87 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t92) = t2.
        t91 = t92->issues.
        DATA t93 TYPE REF TO zcl_lnt_issue.
        DATA(t94) = t2.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t96) = t1.
        t95 = t96->get_first_token( ).
        DATA(t97) = t79.
        DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t98.
        t93 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t94 i_token = t95 i_message_26cb = t97 i_fix = t98 ).
        APPEND t93 TO t91->items.
      ENDIF.
      DATA t99 TYPE REF TO zcl_lnt_void_type.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA(t101) = abap_true.
      IF t101 = abap_true.
        DATA(t102) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t102.
        t100 = t103.
      ELSE.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t100 = t104.
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      t99 = zcl_lnt_void_type=>get_db65( i_voided = t100 i_qualified_name = t105 ).
      result = t99.
      RETURN.
    ENDIF.
    DATA(t106) = VALUE abap_bool( ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = t3.
    t107 = t108.
    IF t107 IS BOUND.
      t106 = t107->truth( ).
    ENDIF.
    IF t106 = abap_true.
      DATA t109 TYPE REF TO zcl_lnt_current_scope.
      DATA(t110) = t2.
      t109 = t110->scope.
      DATA t111 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA(t113) = t12.
        t111 = t113.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t114.
        t111 = t114.
      ENDIF.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t116) = t21.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t118) = t3.
      t117 = t118.
      DATA t119 TYPE string.
      DATA(t120) = t2.
      t119 = t120->filename.
      DATA t121 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t121.
      t109->add_reference( i_usage = t111 i_referencing = t115 i_type_9913 = t117 i_filename = t119 i_extra = t121 ).
    ENDIF.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = VALUE i( ).
    DATA(t124) = t15.
    DATA(t125) = |~|.
    DATA(t126) = strlen( t124 ).
    IF t125 IS INITIAL.
      t123 = 0.
    ELSE.
      FIND t125 IN t124 MATCH OFFSET t123.
      IF sy-subrc <> 0.
        t123 = -1.
      ENDIF.
    ENDIF.
    DATA(t127) = 0.
    t122 = xsdbool( t123 >= t127 ).
    IF t122 = abap_true.
      DATA t128 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t128.
      DATA t129 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_current_scope.
      DATA t131 TYPE REF TO zcl_lnt_current_scope.
      DATA(t132) = t2.
      t131 = t132->scope.
      t130 = t131.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA(t135) = abap_true.
      IF t135 = abap_true.
        DATA(t136) = VALUE string( ).
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t138) = t15.
        DATA(t139) = |~|.
        DATA(t140) = strlen( t138 ).
        DATA t141 TYPE i.
        DATA(t142) = VALUE i( ).
        DATA(t143) = VALUE i( ).
        DATA t144 TYPE i.
        DATA(t145) = VALUE string( ).
        CREATE OBJECT t137.
        t144 = strlen( t139 ).
        t141 = 0.
        IF t144 = 0.
          WHILE t141 < t140.
            t145 = t138+t141(1).
            APPEND t145 TO t137->items.
            t141 = t141 + 1.
          ENDWHILE.
        ELSE.
          WHILE t141 <= t140.
            FIND FIRST OCCURRENCE OF t139 IN SECTION OFFSET t141 OF t138 MATCH OFFSET t142.
            IF sy-subrc = 0.
              t143 = t142 - t141.
            ELSE.
              t142 = -1.
              t143 = t140 - t141.
            ENDIF.
            CLEAR t145.
            IF t143 > 0.
              t145 = t138+t141(t143).
            ENDIF.
            APPEND t145 TO t137->items.
            IF t142 < 0.
              EXIT.
            ENDIF.
            t141 = t142 + t144.
          ENDWHILE.
        ENDIF.
        READ TABLE t137->items INDEX 1 INTO t136.
        DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t146->has = abap_true.
        t146->value = t136.
        t134 = t146.
      ELSE.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        t134 = t147.
      ENDIF.
      t133 = t134.
      DATA t148 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t148.
      DATA(t149) = VALUE abap_bool( ).
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t151) = t133.
      t150 = t151.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      t152 = t153.
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = t150.
      IF t155 IS INITIAL.
        t154 = abap_true.
      ELSEIF t155->has = abap_false.
        t154 = abap_true.
      ENDIF.
      t149 = t154.
      IF t149 = abap_true.
        DATA t156 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t156.
        t148 = t156.
      ELSE.
        DATA t157 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t157.
        DATA t158 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t158.
        DATA t159 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t159.
        DATA t160 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t161 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t162) = t130.
        t161 = t162->current.
        t160 = t161.
        DATA t163 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t163.
        DATA(t164) = VALUE abap_bool( ).
        DATA(t165) = t160.
        IF t165 IS INITIAL.
          t164 = abap_true.
        ENDIF.
        IF t164 = abap_true.
          DATA t166 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t166.
          t163 = t166.
        ELSE.
          DATA t167 TYPE REF TO zif_lnt_interface_definition.
          DATA t168 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t169) = t160.
          t168 = t169.
          DATA t170 TYPE string.
          DATA(t171) = t133.
          t170 = t171->value.
          t167 = t168->find_interface_definition( i_name = t170 ).
          t163 = t167.
        ENDIF.
        t159 = t163.
        t158 = t159.
        DATA t172 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t172.
        DATA t173 TYPE abap_bool.
        DATA(t174) = t158.
        t173 = xsdbool( t174 IS BOUND ).
        IF t173 = abap_true.
          DATA t175 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t175.
          DATA(t176) = abap_true.
          IF t176 = abap_true.
            DATA t177 TYPE REF TO zif_lnt_interface_definition.
            DATA(t178) = t158.
            t177 = t178.
            t175 = t177.
          ELSE.
            DATA t179 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t179.
            t175 = t179.
          ENDIF.
          t172 = t175.
        ELSE.
          DATA t180 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t180.
          DATA t181 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t181.
          DATA t182 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t182.
          DATA t183 TYPE REF TO zif_lnt_object.
          CLEAR t183.
          DATA t184 TYPE REF TO zif_lnt_registry.
          DATA(t185) = t130.
          t184 = t185->reg.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA(t187) = abap_true.
          IF t187 = abap_true.
            DATA(t188) = |INTF|.
            DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t189->has = abap_true.
            t189->value = t188.
            t186 = t189.
          ELSE.
            DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t190.
            t186 = t190.
          ENDIF.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          DATA(t192) = abap_true.
          IF t192 = abap_true.
            DATA t193 TYPE string.
            DATA(t194) = t133.
            t193 = t194->value.
            DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t195->has = abap_true.
            t195->value = t193.
            t191 = t195.
          ELSE.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            t191 = t196.
          ENDIF.
          t183 = t184->get_object( i_type_9913 = t186 i_name = t191 ).
          DATA t197 TYPE REF TO object.
          t197 = t183.
          t182 ?= t197.
          t181 = t182.
          DATA t198 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t198.
          DATA t199 TYPE abap_bool.
          DATA(t200) = t181.
          t199 = xsdbool( t200 IS BOUND ).
          IF t199 = abap_true.
            DATA t201 TYPE REF TO zif_lnt_interface_definition.
            DATA t202 TYPE REF TO zcl_lnt_ob_interface.
            DATA t203 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t204) = t181.
            t203 = t204.
            t202 = t203.
            DATA t205 TYPE REF TO zif_lnt_interface_definition.
            DATA(t206) = t202.
            t205 = t206->def.
            t201 = t205.
            t198 = t201.
          ELSE.
            DATA t207 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t207.
            t198 = t207.
          ENDIF.
          t180 = t198.
          t172 = t180.
        ENDIF.
        t157 = t172.
        t148 = t157.
      ENDIF.
      t129 = t148.
      t128 = t129.
      DATA t208 TYPE abap_bool.
      DATA(t209) = t128.
      t208 = xsdbool( t209 IS BOUND ).
      IF t208 = abap_true.
        DATA t210 TYPE REF TO zcl_lnt_current_scope.
        DATA(t211) = t2.
        t210 = t211->scope.
        DATA t212 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t212.
        DATA(t213) = abap_true.
        IF t213 = abap_true.
          DATA(t214) = t12.
          t212 = t214.
        ELSE.
          DATA t215 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t215.
          t212 = t215.
        ENDIF.
        DATA t216 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t216.
        DATA(t217) = abap_true.
        IF t217 = abap_true.
          DATA t218 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t219 TYPE REF TO zif_lnt_interface_definition.
          DATA(t220) = t128.
          t219 = t220.
          t218 ?= t219.
          t216 = t218.
        ELSE.
          DATA t221 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t221.
          t216 = t221.
        ENDIF.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t223) = |Object|.
        CREATE OBJECT t222.
        t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t222->sval = t223.
        DATA t224 TYPE string.
        DATA(t225) = t2.
        t224 = t225->filename.
        DATA t226 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t226.
        t210->add_reference( i_usage = t212 i_referencing = t216 i_type_9913 = t222 i_filename = t224 i_extra = t226 ).
      ENDIF.
    ENDIF.
    DATA t227 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t227.
    DATA(t228) = abap_true.
    IF t228 = abap_true.
      DATA t229 TYPE REF TO zcl_lnt_abstract_type.
      DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t231 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t232) = t21.
      t231 = t232.
      t230 = t231.
      DATA t233 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t234) = t230.
      t233 = t234->type_cba0.
      t229 = t233.
      t227 = t229.
    ELSE.
      DATA t235 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t235.
      t227 = t235.
    ENDIF.
    result = t227.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d811_4af0000f48d5.
  ENDMETHOD.
ENDCLASS.
