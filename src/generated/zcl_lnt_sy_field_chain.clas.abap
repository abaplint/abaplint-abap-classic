* TS: src/abap/5_syntax/expressions/field_chain.ts:20:1 FieldChain
CLASS zcl_lnt_sy_field_chain DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_ref_type TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_allow_generic_deference TYPE REF TO
    zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_top IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_chain IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_dyna_a429568d5be8( i_ref_type ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( i_allow_generic_deference ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zlnt_runtime_opti_7f2541396f43( t4 ).
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
        DATA(t9) = abap_false.
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
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t19) = CAST zcl_lnt_expression_node( t1 ).
    t18 = t19.
    DATA t20 TYPE REF TO zif_lnt_node.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA t22 TYPE REF TO zif_lnt_node.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = CAST zcl_lnt_abstract_node( t18 ).
      t23 = t24->children.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      READ TABLE t23->items INDEX 1 INTO t25.
      t22 ?= t25.
      t20 = t22.
    ELSE.
      DATA t26 TYPE REF TO zif_lnt_node.
      CLEAR t26.
      t20 = t26.
    ENDIF.
    t17 = t20.
    t16 ?= t17.
    t15 = t16.
    DATA t27 TYPE REF TO zif_lnt_union_daf022d4.
    CLEAR t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = CAST zif_lnt_union_4cf1d054( t15 ).
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zif_lnt_union_daf022d4.
      CLEAR t30.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t32 TYPE REF TO object.
      DATA t33 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t34) = CAST zif_lnt_union_4cf1d054( t15 ).
      t33 = t34.
      t32 = t33->get_db65(  ).
      DATA t35 TYPE REF TO object.
      t35 = t32.
      t31 ?= t35.
      t27 = t31.
    ENDIF.
    t14 = t27.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_source_field ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA(t38) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca ).
      t37 = t38->find_direct_expression( i_type_9913 = t39 ).
      t36 = xsdbool( t37 IS BOUND ).
      t12 = t36.
    ENDIF.
    IF t12 = abap_true.
      DATA t40 TYPE string.
      DATA t41 TYPE string.
      DATA t42 TYPE string.
      DATA(t43) = CAST zcl_lnt_expression_node( t1 ).
      t42 = t43->concat_tokens(  ).
      DATA t44 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t44.
      DATA(t45) = | |.
      DATA(t46) = |g|.
      CREATE OBJECT t44 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t45 flags = t46.
      DATA(t47) = ||.
      DATA(t48) = strlen( t42 ).
      t41 = t44->replace( p0 = t42 p1 = t47 ).
      t40 = t41.
      DATA(t49) = VALUE string( ).
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d ).
      t56 = t57->find_direct_expression( i_type_9913 = t58 ).
      t55 = t56.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = CAST zcl_lnt_expression_node( t55 ).
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        t59 = t62.
      ELSE.
        DATA t63 TYPE string.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA(t65) = CAST zcl_lnt_expression_node( t55 ).
        t64 = t65.
        t63 = t64->concat_tokens(  ).
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t63.
        t59 = t66.
      ENDIF.
      t54 = t59.
      t53 = t54.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = CAST zlnt_runtime_opti_4ba3bdccd169( t53 ).
      IF t69 IS INITIAL.
        t68 = abap_true.
      ELSEIF t69->has = abap_false.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t67 = t70.
      ELSE.
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        DATA(t73) = CAST zlnt_runtime_opti_4ba3bdccd169( t53 ).
        t72 = t73->value.
        DATA t74 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t74.
        DATA(t75) = | |.
        DATA(t76) = |g|.
        CREATE OBJECT t74 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t75 flags = t76.
        DATA(t77) = ||.
        DATA(t78) = strlen( t72 ).
        t71 = t74->replace( p0 = t72 p1 = t77 ).
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t71.
        t67 = t79.
      ENDIF.
      t52 = t67.
      t51 = t52.
      DATA(t80) = VALUE string( ).
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
      IF t82 IS BOUND.
        IF t82->has = abap_true.
          t81 = xsdbool( strlen( t82->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE string.
        DATA(t84) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
        t83 = t84->value.
        t80 = t83.
      ELSE.
        DATA(t85) = ||.
        t80 = t85.
      ENDIF.
      t50 = t80.
      t49 = t50.
      DATA(t86) = VALUE string( ).
      DATA(t87) = VALUE string( ).
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      DATA t92 TYPE REF TO zcl_lnt_expression_node.
      DATA t93 TYPE REF TO zcl_lnt_expression_node.
      DATA(t94) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t95) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba ).
      t93 = t94->find_direct_expression( i_type_9913 = t95 ).
      t92 = t93.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = CAST zcl_lnt_expression_node( t92 ).
      IF t98 IS INITIAL.
        t97 = abap_true.
      ENDIF.
      IF t97 = abap_true.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        t96 = t99.
      ELSE.
        DATA t100 TYPE string.
        DATA t101 TYPE REF TO zcl_lnt_expression_node.
        DATA(t102) = CAST zcl_lnt_expression_node( t92 ).
        t101 = t102.
        t100 = t101->concat_tokens(  ).
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t100.
        t96 = t103.
      ENDIF.
      t91 = t96.
      t90 = t91.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = CAST zlnt_runtime_opti_4ba3bdccd169( t90 ).
      IF t106 IS INITIAL.
        t105 = abap_true.
      ELSEIF t106->has = abap_false.
        t105 = abap_true.
      ENDIF.
      IF t105 = abap_true.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        t104 = t107.
      ELSE.
        DATA t108 TYPE string.
        DATA t109 TYPE string.
        DATA(t110) = CAST zlnt_runtime_opti_4ba3bdccd169( t90 ).
        t109 = t110->value.
        DATA t111 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t111.
        DATA(t112) = | |.
        DATA(t113) = |g|.
        CREATE OBJECT t111 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t112 flags = t113.
        DATA(t114) = ||.
        DATA(t115) = strlen( t109 ).
        t108 = t111->replace( p0 = t109 p1 = t114 ).
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t108.
        t104 = t116.
      ENDIF.
      t89 = t104.
      t88 = t89.
      DATA(t117) = VALUE string( ).
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = CAST zlnt_runtime_opti_4ba3bdccd169( t88 ).
      IF t119 IS BOUND.
        IF t119->has = abap_true.
          t118 = xsdbool( strlen( t119->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t118 = abap_true.
        DATA t120 TYPE string.
        DATA(t121) = CAST zlnt_runtime_opti_4ba3bdccd169( t88 ).
        t120 = t121->value.
        t117 = t120.
      ELSE.
        DATA(t122) = ||.
        t117 = t122.
      ENDIF.
      t87 = t117.
      t86 = t87.
      DATA t123 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t123.
      DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t124.
      DATA t125 TYPE REF TO zcl_lnt_current_scope.
      DATA t126 TYPE REF TO zcl_lnt_current_scope.
      DATA(t127) = CAST zcl_lnt_syntax_input( t2 ).
      t126 = t127->scope.
      t125 = t126.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      DATA(t130) = abap_true.
      IF t130 = abap_true.
        DATA(t131) = VALUE string( ).
        DATA t132 TYPE string.
        DATA(t133) = t40.
        DATA(t134) = t49.
        DATA(t135) = ||.
        DATA(t136) = strlen( t133 ).
        t132 = t133.
        IF t134 = ``.
          t132 = |{ t135 }{ t133 }|.
        ELSE.
          REPLACE FIRST OCCURRENCE OF t134 IN t132 WITH t135.
        ENDIF.
        DATA(t137) = t86.
        DATA(t138) = ||.
        DATA(t139) = strlen( t132 ).
        t131 = t132.
        IF t137 = ``.
          t131 = |{ t138 }{ t132 }|.
        ELSE.
          REPLACE FIRST OCCURRENCE OF t137 IN t131 WITH t138.
        ENDIF.
        DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t140->has = abap_true.
        t140->value = t131.
        t129 = t140.
      ELSE.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        t129 = t141.
      ENDIF.
      t128 = t129.
      DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t142.
      DATA(t143) = VALUE abap_bool( ).
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t145) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
      t144 = t145.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      t146 = t147.
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = CAST zlnt_runtime_opti_4ba3bdccd169( t144 ).
      IF t149 IS INITIAL.
        t148 = abap_true.
      ELSEIF t149->has = abap_false.
        t148 = abap_true.
      ENDIF.
      t143 = t148.
      IF t143 = abap_true.
        DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t150.
        t142 = t150.
      ELSE.
        DATA t151 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t151.
        DATA t152 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t152.
        DATA t153 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t153.
        DATA t154 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t155 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t156) = CAST zcl_lnt_current_scope( t125 ).
        t155 = t156->current.
        t154 = t155.
        DATA t157 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t157.
        DATA(t158) = VALUE abap_bool( ).
        DATA(t159) = CAST zcl_lnt_spaghetti_scope_node( t154 ).
        IF t159 IS INITIAL.
          t158 = abap_true.
        ENDIF.
        IF t158 = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t160.
          t157 = t160.
        ELSE.
          DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t162 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t163) = CAST zcl_lnt_spaghetti_scope_node( t154 ).
          t162 = t163.
          DATA t164 TYPE string.
          DATA(t165) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
          t164 = t165->value.
          t161 = t162->find_variable( i_name = t164 ).
          t157 = t161.
        ENDIF.
        t153 = t157.
        t152 = t153.
        DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t166.
        DATA t167 TYPE abap_bool.
        DATA(t168) = CAST zcl_lnt_typed_identifier( t152 ).
        t167 = xsdbool( t168 IS BOUND ).
        IF t167 = abap_true.
          DATA t169 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t169.
          DATA(t170) = abap_true.
          IF t170 = abap_true.
            DATA t171 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t172) = CAST zcl_lnt_typed_identifier( t152 ).
            t171 = t172.
            t169 = t171.
          ELSE.
            DATA t173 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t173.
            t169 = t173.
          ENDIF.
          t166 = t169.
        ELSE.
          DATA t174 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t174.
          DATA(t175) = CAST zcl_lnt_current_scope( t125 ).
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          DATA(t177) = abap_true.
          IF t177 = abap_true.
            DATA t178 TYPE string.
            DATA(t179) = CAST zlnt_runtime_opti_4ba3bdccd169( t128 ).
            t178 = t179->value.
            DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t180->has = abap_true.
            t180->value = t178.
            t176 = t180.
          ELSE.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            t176 = t181.
          ENDIF.
          t174 = t175->find_type_pool_constant( i_name = t176 ).
          t166 = t174.
        ENDIF.
        t151 = t166.
        t142 = t151.
      ENDIF.
      t124 = t142.
      t123 = t124.
      DATA t182 TYPE abap_bool.
      DATA(t183) = CAST zcl_lnt_typed_identifier( t123 ).
      t182 = xsdbool( t183 IS BOUND ).
      IF t182 = abap_true.
        DATA(t184) = VALUE abap_bool( ).
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
        t185 = t186.
        IF t185 IS BOUND.
          t184 = t185->truth( ).
        ENDIF.
        IF t184 = abap_true.
          DATA t187 TYPE REF TO zcl_lnt_current_scope.
          DATA(t188) = CAST zcl_lnt_syntax_input( t2 ).
          t187 = t188->scope.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t189.
          DATA(t190) = abap_true.
          IF t190 = abap_true.
            DATA t191 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t192) = CAST zcl_lnt_expression_node( t1 ).
            t191 = t192->get_first_token(  ).
            t189 = t191.
          ELSE.
            DATA t193 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t193.
            t189 = t193.
          ENDIF.
          DATA t194 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t195) = CAST zcl_lnt_typed_identifier( t123 ).
          t194 = t195.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t197) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
          t196 = t197.
          DATA t198 TYPE string.
          DATA(t199) = CAST zcl_lnt_syntax_input( t2 ).
          t198 = t199->filename.
          DATA t200 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t200.
          t187->add_reference( i_usage = t189 i_referencing = t194 i_type_9913 = t196 i_filename = t198 i_extra = t200 ).
        ENDIF.
        DATA t201 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t201.
        DATA(t202) = abap_true.
        IF t202 = abap_true.
          DATA t203 TYPE REF TO zcl_lnt_abstract_type.
          DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t206) = CAST zcl_lnt_typed_identifier( t123 ).
          t205 = t206.
          t204 = t205.
          DATA t207 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t208) = CAST zcl_lnt_typed_identifier( t204 ).
          t207 = t208->type_cba0.
          t203 = t207.
          t201 = t203.
        ELSE.
          DATA t209 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t209.
          t201 = t209.
        ENDIF.
        result = t201.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_abstract_type.
    DATA t211 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t211.
    t210 = t211.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t215 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t216) = CAST zcl_lnt_expression_node( t1 ).
    t215 = t216.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t218) = CAST zcl_lnt_abstract_node( t215 ).
    t217 = t218->children.
    t214 = t217.
    t213 ?= t214.
    t212 = t213.
    DATA t219 TYPE REF TO zcl_lnt_abstract_type.
    DATA t220 TYPE REF TO zif_lnt_node.
    DATA t221 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t222) = CAST zlnt_runtime_arra_c22708faf2e3( t212 ).
    DATA t223 TYPE REF TO object.
    CLEAR t223.
    READ TABLE t222->items INDEX 1 INTO t223.
    t221 ?= t223.
    t220 ?= t221.
    DATA(t224) = CAST zcl_lnt_syntax_input( t2 ).
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t226) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    t225 = t226.
    t219 = zcl_lnt_sy_field_chain=>find_top( i_node = t220 i_input_967e = t224 i_type_9913 = t225 ).
    t210 = t219.
    DATA t227 TYPE string.
    DATA t228 TYPE string.
    DATA t229 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t230) = CAST zlnt_runtime_arra_c22708faf2e3( t212 ).
    DATA t231 TYPE REF TO object.
    CLEAR t231.
    READ TABLE t230->items INDEX 1 INTO t231.
    t229 ?= t231.
    t228 = t229->concat_tokens(  ).
    t227 = t228.
    DATA t232 TYPE i.
    DATA(t233) = 1.
    t232 = t233.
    DO.
      DATA t234 TYPE abap_bool.
      DATA(t235) = t232.
      DATA t236 TYPE i.
      DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t212 ).
      t236 = lines( t237->items ).
      t234 = xsdbool( t235 < t236 ).
      IF t234 = abap_false.
        EXIT.
      ENDIF.
      DATA t238 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t239 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t240) = CAST zlnt_runtime_arra_c22708faf2e3( t212 ).
      DATA(t241) = t232.
      t241 = t241 + 1.
      DATA t242 TYPE REF TO object.
      CLEAR t242.
      READ TABLE t240->items INDEX t241 INTO t242.
      t239 ?= t242.
      t238 = t239.
      DATA(t243) = VALUE abap_bool( ).
      DATA t244 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t245) = CAST zif_lnt_union_4cf1d054( t238 ).
      t244 = t245.
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t247.
      t246 = t247.
      DATA(t248) = VALUE abap_bool( ).
      DATA(t249) = CAST zif_lnt_union_4cf1d054( t244 ).
      IF t249 IS INITIAL.
        t248 = abap_true.
      ENDIF.
      t243 = t248.
      IF t243 = abap_true.
        EXIT.
      ENDIF.
      DATA t250 TYPE abap_bool.
      DATA t251 TYPE REF TO object.
      DATA(t252) = CAST zif_lnt_union_4cf1d054( t238 ).
      t251 = t252->get_db65(  ).
      t250 = xsdbool( t251 IS BOUND AND t251 IS INSTANCE OF zcl_lnt_dash_w ).
      IF t250 = abap_true.
        DATA t253 TYPE string.
        DATA(t254) = |Ending with dash|.
        t253 = t254.
        DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t256) = CAST zcl_lnt_syntax_input( t2 ).
        t255 = t256->issues.
        DATA t257 TYPE REF TO zcl_lnt_issue.
        DATA(t258) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t259 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t260) = CAST zif_lnt_union_4cf1d054( t238 ).
        t259 = t260->get_first_token(  ).
        DATA(t261) = t253.
        DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t262.
        t257 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t258 i_token = t259 i_message_26cb = t261 i_fix = t262 ).
        APPEND t257 TO t255->items.
        DATA t263 TYPE REF TO zcl_lnt_void_type.
        CLEAR t263.
        DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t264.
        DATA(t265) = abap_true.
        IF t265 = abap_true.
          DATA(t266) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t267->has = abap_true.
          t267->value = t266.
          t264 = t267.
        ELSE.
          DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t268.
          t264 = t268.
        ENDIF.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t269.
        t263 = zcl_lnt_void_type=>get_db65( i_voided = t264 i_qualified_name = t269 ).
        result = t263.
        RETURN.
      ELSE.
        DATA t270 TYPE abap_bool.
        DATA t271 TYPE REF TO object.
        DATA(t272) = CAST zif_lnt_union_4cf1d054( t238 ).
        t271 = t272->get_db65(  ).
        t270 = xsdbool( t271 IS BOUND AND t271 IS INSTANCE OF zcl_lnt_dash ).
        IF t270 = abap_true.
          DATA t273 TYPE abap_bool.
          DATA(t274) = CAST zcl_lnt_abstract_type( t210 ).
          t273 = xsdbool( t274 IS BOUND AND t274 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t273 = abap_true.
            DATA t275 TYPE REF TO zcl_lnt_void_type.
            CLEAR t275.
            DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t276.
            DATA(t277) = abap_true.
            IF t277 = abap_true.
              DATA(t278) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t279->has = abap_true.
              t279->value = t278.
              t276 = t279.
            ELSE.
              DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t280.
              t276 = t280.
            ENDIF.
            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t281.
            t275 = zcl_lnt_void_type=>get_db65( i_voided = t276 i_qualified_name = t281 ).
            result = t275.
            RETURN.
          ELSE.
            DATA(t282) = VALUE abap_bool( ).
            DATA t283 TYPE abap_bool.
            DATA t284 TYPE abap_bool.
            DATA t285 TYPE abap_bool.
            DATA(t286) = CAST zcl_lnt_abstract_type( t210 ).
            t285 = xsdbool( t286 IS BOUND AND t286 IS INSTANCE OF zcl_lnt_structure_type ).
            t284 = xsdbool( t285 = abap_false ).
            t283 = t284.
            IF t284 = abap_true.
              DATA(t287) = VALUE abap_bool( ).
              DATA t288 TYPE abap_bool.
              DATA t289 TYPE abap_bool.
              DATA(t290) = CAST zcl_lnt_abstract_type( t210 ).
              t289 = xsdbool( t290 IS BOUND AND t290 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t288 = t289.
              IF t289 = abap_true.
                DATA t291 TYPE abap_bool.
                DATA t292 TYPE REF TO zcl_lnt_ty_table_type.
                DATA t293 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t294) = CAST zcl_lnt_abstract_type( t210 ).
                t293 ?= t294.
                t292 = t293.
                DATA t295 TYPE abap_bool.
                DATA t296 TYPE REF TO zcl_lnt_itable_options.
                DATA(t297) = CAST zcl_lnt_ty_table_type( t292 ).
                t296 = t297->options.
                t295 = t296->with_header.
                t291 = t295.
                t288 = t291.
              ENDIF.
              t287 = xsdbool( t288 = abap_false ).
              t283 = t287.
            ENDIF.
            t282 = t283.
            IF t283 = abap_true.
              DATA t298 TYPE abap_bool.
              DATA t299 TYPE abap_bool.
              DATA(t300) = CAST zcl_lnt_abstract_type( t210 ).
              t299 = xsdbool( t300 IS BOUND AND t300 IS INSTANCE OF zcl_lnt_void_type ).
              t298 = xsdbool( t299 = abap_false ).
              t282 = t298.
            ENDIF.
            IF t282 = abap_true.
              DATA t301 TYPE abap_bool.
              DATA t302 TYPE abap_bool.
              DATA(t303) = CAST zcl_lnt_abstract_type( t210 ).
              t302 = xsdbool( t303 IS BOUND AND t303 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t301 = t302.
              IF t302 = abap_true.
                DATA t304 TYPE abap_bool.
                DATA t305 TYPE abap_bool.
                DATA t306 TYPE REF TO zcl_lnt_ty_table_type.
                DATA t307 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t308) = CAST zcl_lnt_abstract_type( t210 ).
                t307 ?= t308.
                t306 = t307.
                DATA t309 TYPE abap_bool.
                DATA t310 TYPE REF TO zcl_lnt_itable_options.
                DATA(t311) = CAST zcl_lnt_ty_table_type( t306 ).
                t310 = t311->options.
                t309 = t310->with_header.
                t305 = t309.
                DATA(t312) = abap_false.
                t304 = xsdbool( t305 = t312 ).
                t301 = t304.
              ENDIF.
              IF t301 = abap_true.
                DATA t313 TYPE string.
                DATA(t314) = ||.
                t313 = t314.
                DATA t315 TYPE i.
                DATA(t316) = 0.
                t315 = t316.
                DO.
                  DATA t317 TYPE abap_bool.
                  DATA(t318) = t315.
                  DATA(t319) = t232.
                  t317 = xsdbool( t318 < t319 ).
                  IF t317 = abap_false.
                    EXIT.
                  ENDIF.
                  DATA t320 TYPE string.
                  DATA(t321) = t313.
                  DATA t322 TYPE string.
                  DATA t323 TYPE REF TO zif_lnt_union_4cf1d054.
                  DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t212 ).
                  DATA(t325) = t315.
                  t325 = t325 + 1.
                  DATA t326 TYPE REF TO object.
                  CLEAR t326.
                  READ TABLE t324->items INDEX t325 INTO t326.
                  t323 ?= t326.
                  t322 = t323->concat_tokens(  ).
                  DATA(t327) = strlen( t321 ).
                  t320 = |{ t321 }{ t322 }|.
                  t313 = t320.
                  DATA t328 TYPE i.
                  DATA(t329) = t315.
                  DATA(t330) = 1.
                  t328 = t329 + t330.
                  t315 = t328.
                ENDDO.
                DATA(t331) = VALUE abap_bool( ).
                DATA t332 TYPE REF TO zcl_lnt_current_scope.
                DATA t333 TYPE REF TO zcl_lnt_current_scope.
                DATA(t334) = CAST zcl_lnt_syntax_input( t2 ).
                t333 = t334->scope.
                t332 = t333.
                DATA t335 TYPE string.
                DATA(t336) = t313.
                t335 = t336.
                DATA(t337) = VALUE abap_bool( ).
                DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t338.
                DATA(t339) = abap_true.
                IF t339 = abap_true.
                  DATA t340 TYPE string.
                  DATA(t341) = t335.
                  DATA(t342) = strlen( t341 ).
                  t340 = t341.
                  IF t340 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t340 TO UPPER CASE.
                  ELSE.
                    t340 = zlnt_runtime_uppe_91169605024d=>full( t340 ).
                  ENDIF.
                  DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t343->has = abap_true.
                  t343->value = t340.
                  t338 = t343.
                ELSE.
                  DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t344.
                  t338 = t344.
                ENDIF.
                DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t345.
                DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t348) = CAST zcl_lnt_current_scope( t332 ).
                t347 = t348->allow_header_use.
                t346 = t347.
                DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t349.
                DATA(t350) = VALUE abap_bool( ).
                DATA(t351) = CAST zlnt_runtime_opti_4ba3bdccd169( t346 ).
                IF t351 IS INITIAL.
                  t350 = abap_true.
                ELSEIF t351->has = abap_false.
                  t350 = abap_true.
                ENDIF.
                IF t350 = abap_true.
                  DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t352.
                  t349 = t352.
                ELSE.
                  DATA t353 TYPE string.
                  DATA t354 TYPE string.
                  DATA(t355) = CAST zlnt_runtime_opti_4ba3bdccd169( t346 ).
                  t354 = t355->value.
                  DATA(t356) = strlen( t354 ).
                  t353 = t354.
                  IF t353 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t353 TO UPPER CASE.
                  ELSE.
                    t353 = zlnt_runtime_uppe_91169605024d=>full( t353 ).
                  ENDIF.
                  DATA(t357) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t357->has = abap_true.
                  t357->value = t353.
                  t349 = t357.
                ENDIF.
                t345 = t349.
                DATA(t358) = VALUE abap_bool( ).
                DATA(t359) = VALUE abap_bool( ).
                IF t338 IS BOUND.
                  t358 = t338->has.
                ENDIF.
                IF t345 IS BOUND.
                  t359 = t345->has.
                ENDIF.
                IF t358 = t359.
                  IF t358 = abap_false.
                    t337 = abap_true.
                  ELSEIF t338->value = t345->value.
                    t337 = abap_true.
                  ENDIF.
                ENDIF.
                t331 = t337.
                IF t331 = abap_true.
                  DATA t360 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t360.
                  DATA(t361) = abap_true.
                  IF t361 = abap_true.
                    DATA t362 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t363 TYPE REF TO zcl_lnt_ty_table_type.
                    DATA t364 TYPE REF TO zcl_lnt_ty_table_type.
                    DATA(t365) = CAST zcl_lnt_abstract_type( t210 ).
                    t364 ?= t365.
                    t363 = t364.
                    DATA t366 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t367) = CAST zcl_lnt_ty_table_type( t363 ).
                    t366 = t367->row_type.
                    t362 = t366.
                    t360 = t362.
                  ELSE.
                    DATA t368 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t368.
                    t360 = t368.
                  ENDIF.
                  t210 = t360.
                  DATA t369 TYPE abap_bool.
                  DATA t370 TYPE abap_bool.
                  DATA t371 TYPE abap_bool.
                  DATA(t372) = CAST zcl_lnt_abstract_type( t210 ).
                  t371 = xsdbool( t372 IS BOUND AND t372 IS INSTANCE OF zcl_lnt_structure_type ).
                  t370 = xsdbool( t371 = abap_false ).
                  t369 = t370.
                  IF t370 = abap_true.
                    DATA t373 TYPE abap_bool.
                    DATA t374 TYPE abap_bool.
                    DATA(t375) = CAST zcl_lnt_abstract_type( t210 ).
                    t374 = xsdbool( t375 IS BOUND AND t375 IS INSTANCE OF zcl_lnt_void_type ).
                    t373 = xsdbool( t374 = abap_false ).
                    t369 = t373.
                  ENDIF.
                  IF t369 = abap_true.
                    DATA t376 TYPE REF TO zcl_lnt_structure_type.
                    DATA t377 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CREATE OBJECT t379.
                    t378 = t379.
                    DATA(t380) = CAST zlnt_runtime_arra_c22708faf2e3( t378 ).
                    DATA t381 TYPE REF TO zcl_lnt_istructure_component.
                    DATA(t382) = |TABLE_LINE|.
                    DATA t383 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t384) = CAST zcl_lnt_abstract_type( t210 ).
                    t383 = t384.
                    DATA t385 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t385.
                    DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t386.
                    t381 = NEW zcl_lnt_istructure_component( i_name = t382 i_type_9913 = t383 i_as_include = t385 i_suffix = t386 ).
                    APPEND t381 TO t380->items.
                    DATA(t387) = CAST zlnt_runtime_arra_c22708faf2e3( t378 ).
                    t377 = t387.
                    DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t388.
                    DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t389.
                    DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t390.
                    t376 = NEW zcl_lnt_structure_type( i_components = t377 i_qualified_name = t388 i_ddic_name = t389 i_description = t390 ).
                    t210 = t376.
                  ENDIF.
                ELSE.
                  DATA t391 TYPE string.
                  DATA t392 TYPE string.
                  DATA(t393) = |Table without header, cannot access fields, |.
                  DATA(t394) = t313.
                  DATA(t395) = strlen( t393 ).
                  t392 = |{ t393 }{ t394 }|.
                  t391 = t392.
                  DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t397) = CAST zcl_lnt_syntax_input( t2 ).
                  t396 = t397->issues.
                  DATA t398 TYPE REF TO zcl_lnt_issue.
                  DATA(t399) = CAST zcl_lnt_syntax_input( t2 ).
                  DATA t400 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t401) = CAST zif_lnt_union_4cf1d054( t238 ).
                  t400 = t401->get_first_token(  ).
                  DATA(t402) = t391.
                  DATA t403 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t403.
                  t398 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t399 i_token = t400 i_message_26cb = t402 i_fix = t403 ).
                  APPEND t398 TO t396->items.
                  DATA t404 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t404.
                  DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t405.
                  DATA(t406) = abap_true.
                  IF t406 = abap_true.
                    DATA(t407) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t408->has = abap_true.
                    t408->value = t407.
                    t405 = t408.
                  ELSE.
                    DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t409.
                    t405 = t409.
                  ENDIF.
                  DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t410.
                  t404 = zcl_lnt_void_type=>get_db65( i_voided = t405 i_qualified_name = t410 ).
                  result = t404.
                  RETURN.
                ENDIF.
              ELSE.
                DATA(t411) = VALUE string( ).
                DATA(t412) = VALUE string( ).
                DATA(t413) = VALUE string( ).
                DATA(t414) = VALUE string( ).
                DATA t415 TYPE string.
                DATA(t416) = t227.
                DATA(t417) = strlen( t416 ).
                t415 = t416.
                IF t415 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t415 TO UPPER CASE.
                ELSE.
                  t415 = zlnt_runtime_uppe_91169605024d=>full( t415 ).
                ENDIF.
                DATA(t418) = | is not structured (|.
                DATA(t419) = strlen( t415 ).
                t414 = |{ t415 }{ t418 }|.
                DATA(t420) = VALUE string( ).
                DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t421.
                DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t422.
                DATA t423 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t423.
                DATA t424 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t424.
                DATA t425 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t426) = CAST zcl_lnt_abstract_type( t210 ).
                t425 = t426.
                DATA t427 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t427.
                DATA(t428) = VALUE abap_bool( ).
                DATA(t429) = CAST zcl_lnt_abstract_type( t425 ).
                IF t429 IS INITIAL.
                  t428 = abap_true.
                ENDIF.
                IF t428 = abap_true.
                  DATA t430 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t430.
                  t427 = t430.
                ELSE.
                  DATA t431 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  DATA t432 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t433) = CAST zcl_lnt_abstract_type( t425 ).
                  t432 = t433.
                  t431 = t432->zlnt_builtin_clas_3f891b097658( ).
                  t427 = t431.
                ENDIF.
                t424 = t427.
                t423 = t424.
                DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t434.
                DATA(t435) = VALUE abap_bool( ).
                DATA(t436) = CAST zlnt_runtime_clas_a39833db3295( t423 ).
                IF t436 IS INITIAL.
                  t435 = abap_true.
                ENDIF.
                IF t435 = abap_true.
                  DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t437.
                  t434 = t437.
                ELSE.
                  DATA t438 TYPE string.
                  DATA t439 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  DATA(t440) = CAST zlnt_runtime_clas_a39833db3295( t423 ).
                  t439 = t440.
                  t438 = t439->name.
                  DATA(t441) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t441->has = abap_true.
                  t441->value = t438.
                  t434 = t441.
                ENDIF.
                t422 = t434.
                t421 = t422.
                DATA(t442) = VALUE string( ).
                DATA(t443) = VALUE abap_bool( ).
                DATA(t444) = CAST zlnt_runtime_opti_4ba3bdccd169( t421 ).
                IF t444 IS INITIAL.
                  t443 = abap_true.
                ELSEIF t444->has = abap_false.
                  t443 = abap_true.
                ENDIF.
                IF t443 = abap_true.
                  DATA(t445) = |undefined|.
                  t442 = t445.
                ELSE.
                  DATA t446 TYPE string.
                  DATA(t447) = CAST zlnt_runtime_opti_4ba3bdccd169( t421 ).
                  t446 = t447->value.
                  t442 = t446.
                ENDIF.
                t420 = t442.
                DATA(t448) = strlen( t414 ).
                t413 = |{ t414 }{ t420 }|.
                DATA(t449) = |)|.
                DATA(t450) = strlen( t413 ).
                t412 = |{ t413 }{ t449 }|.
                t411 = t412.
                DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t452) = CAST zcl_lnt_syntax_input( t2 ).
                t451 = t452->issues.
                DATA t453 TYPE REF TO zcl_lnt_issue.
                DATA(t454) = CAST zcl_lnt_syntax_input( t2 ).
                DATA t455 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t456) = CAST zif_lnt_union_4cf1d054( t238 ).
                t455 = t456->get_first_token(  ).
                DATA(t457) = t411.
                DATA t458 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t458.
                t453 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t454 i_token = t455 i_message_26cb = t457 i_fix = t458 ).
                APPEND t453 TO t451->items.
                DATA t459 TYPE REF TO zcl_lnt_void_type.
                CLEAR t459.
                DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t460.
                DATA(t461) = abap_true.
                IF t461 = abap_true.
                  DATA(t462) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t463) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t463->has = abap_true.
                  t463->value = t462.
                  t460 = t463.
                ELSE.
                  DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t464.
                  t460 = t464.
                ENDIF.
                DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t465.
                t459 = zcl_lnt_void_type=>get_db65( i_voided = t460 i_qualified_name = t465 ).
                result = t459.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          DATA t466 TYPE abap_bool.
          DATA t467 TYPE REF TO object.
          DATA(t468) = CAST zif_lnt_union_4cf1d054( t238 ).
          t467 = t468->get_db65(  ).
          t466 = xsdbool( t467 IS BOUND AND t467 IS INSTANCE OF zcl_lnt_instance_arrow ).
          IF t466 = abap_true.
            DATA(t469) = VALUE abap_bool( ).
            DATA t470 TYPE abap_bool.
            DATA t471 TYPE abap_bool.
            DATA t472 TYPE abap_bool.
            DATA(t473) = CAST zcl_lnt_abstract_type( t210 ).
            t472 = xsdbool( t473 IS BOUND AND t473 IS INSTANCE OF zcl_lnt_object_reference_type ).
            t471 = xsdbool( t472 = abap_false ).
            t470 = t471.
            IF t471 = abap_true.
              DATA t474 TYPE abap_bool.
              DATA t475 TYPE abap_bool.
              DATA(t476) = CAST zcl_lnt_abstract_type( t210 ).
              t475 = xsdbool( t476 IS BOUND AND t476 IS INSTANCE OF zcl_lnt_data_reference ).
              t474 = xsdbool( t475 = abap_false ).
              t470 = t474.
            ENDIF.
            t469 = t470.
            IF t470 = abap_true.
              DATA t477 TYPE abap_bool.
              DATA t478 TYPE abap_bool.
              DATA(t479) = CAST zcl_lnt_abstract_type( t210 ).
              t478 = xsdbool( t479 IS BOUND AND t479 IS INSTANCE OF zcl_lnt_void_type ).
              t477 = xsdbool( t478 = abap_false ).
              t469 = t477.
            ENDIF.
            IF t469 = abap_true.
              DATA t480 TYPE string.
              DATA(t481) = |Not an object reference, field chain|.
              t480 = t481.
              DATA t482 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t483) = CAST zcl_lnt_syntax_input( t2 ).
              t482 = t483->issues.
              DATA t484 TYPE REF TO zcl_lnt_issue.
              DATA(t485) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t486 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t487) = CAST zif_lnt_union_4cf1d054( t238 ).
              t486 = t487->get_first_token(  ).
              DATA(t488) = t480.
              DATA t489 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t489.
              t484 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t485 i_token = t486 i_message_26cb = t488 i_fix = t489 ).
              APPEND t484 TO t482->items.
              DATA t490 TYPE REF TO zcl_lnt_void_type.
              CLEAR t490.
              DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t491.
              DATA(t492) = abap_true.
              IF t492 = abap_true.
                DATA(t493) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t494->has = abap_true.
                t494->value = t493.
                t491 = t494.
              ELSE.
                DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t495.
                t491 = t495.
              ENDIF.
              DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t496.
              t490 = zcl_lnt_void_type=>get_db65( i_voided = t491 i_qualified_name = t496 ).
              result = t490.
              RETURN.
            ENDIF.
          ELSE.
            DATA t497 TYPE abap_bool.
            DATA t498 TYPE REF TO object.
            DATA(t499) = CAST zif_lnt_union_4cf1d054( t238 ).
            t498 = t499->get_db65(  ).
            t497 = xsdbool( t498 IS BOUND AND t498 IS INSTANCE OF zcl_lnt_st_dereference ).
            IF t497 = abap_true.
              DATA t500 TYPE REF TO zcl_lnt_abstract_type.
              DATA t501 TYPE REF TO zif_lnt_node.
              DATA(t502) = CAST zif_lnt_union_4cf1d054( t238 ).
              t501 ?= t502.
              DATA(t503) = CAST zcl_lnt_abstract_type( t210 ).
              DATA(t504) = CAST zcl_lnt_syntax_input( t2 ).
              t500 = zcl_lnt_sy_dereference=>run_syntax( i_node = t501 i_type_9913 = t503 i_input_967e = t504 ).
              t210 = t500.
              DATA(t505) = VALUE abap_bool( ).
              DATA(t506) = VALUE abap_bool( ).
              DATA(t507) = VALUE abap_bool( ).
              DATA t508 TYPE abap_bool.
              DATA t509 TYPE abap_bool.
              DATA t510 TYPE abap_bool.
              DATA(t511) = CAST zlnt_runtime_opti_7f2541396f43( t4 ).
              t510 = t511->value.
              DATA(t512) = abap_false.
              t509 = xsdbool( t510 = t512 ).
              t508 = t509.
              IF t509 = abap_true.
                DATA(t513) = VALUE abap_bool( ).
                DATA t514 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t514.
                DATA t515 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t516) = CAST zcl_lnt_abstract_type( t210 ).
                t515 = t516.
                DATA t517 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t517.
                DATA(t518) = VALUE abap_bool( ).
                DATA(t519) = CAST zcl_lnt_abstract_type( t515 ).
                IF t519 IS INITIAL.
                  t518 = abap_true.
                ENDIF.
                IF t518 = abap_true.
                  DATA t520 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t520.
                  t517 = t520.
                ELSE.
                  DATA t521 TYPE abap_bool.
                  DATA t522 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t523) = CAST zcl_lnt_abstract_type( t515 ).
                  t522 = t523.
                  t521 = t522->is_generic(  ).
                  DATA(t524) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t524->has = abap_true.
                  t524->value = t521.
                  t517 = t524.
                ENDIF.
                t514 = t517.
                DATA t525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t525.
                DATA(t526) = abap_true.
                IF t526 = abap_true.
                  DATA(t527) = abap_true.
                  DATA(t528) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t528->has = abap_true.
                  t528->value = t527.
                  t525 = t528.
                ELSE.
                  DATA t529 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t529.
                  t525 = t529.
                ENDIF.
                DATA(t530) = VALUE abap_bool( ).
                DATA(t531) = VALUE abap_bool( ).
                IF t514 IS BOUND.
                  t530 = t514->has.
                ENDIF.
                IF t525 IS BOUND.
                  t531 = t525->has.
                ENDIF.
                IF t530 = t531.
                  IF t530 = abap_false.
                    t513 = abap_true.
                  ELSEIF t514->value = t525->value.
                    t513 = abap_true.
                  ENDIF.
                ENDIF.
                t508 = t513.
              ENDIF.
              t507 = t508.
              IF t508 = abap_true.
                DATA(t532) = VALUE abap_bool( ).
                DATA(t533) = VALUE abap_bool( ).
                DATA t534 TYPE REF TO zcl_lnt_abap_release.
                DATA t535 TYPE REF TO zcl_lnt_current_scope.
                DATA t536 TYPE REF TO zcl_lnt_current_scope.
                DATA(t537) = CAST zcl_lnt_syntax_input( t2 ).
                t536 = t537->scope.
                t535 = t536.
                DATA t538 TYPE REF TO zcl_lnt_abap_release.
                DATA t539 TYPE REF TO zif_lnt_configuration.
                DATA t540 TYPE REF TO zif_lnt_registry.
                DATA(t541) = CAST zcl_lnt_current_scope( t535 ).
                t540 = t541->reg.
                t539 = t540->get_config(  ).
                t538 = t539->get_release(  ).
                t534 = t538.
                DATA t542 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t542.
                DATA t543 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t543.
                DATA t544 TYPE REF TO zlnt_runtime_map__201f3699a39e.
                CLEAR t544.
                IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
                  zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
                ENDIF.
                t544 = zcl_lnt_version_module=>release_b8cd.
                DATA(t545) = |v756|.
                t543 = t544->get( p0 = t545 ).
                t542 = t543.
                t533 = zcl_lnt_version_module=>release_at_least( i_running = t534 i_required = t542 ).
                t532 = xsdbool( t533 = abap_false ).
                t507 = t532.
              ENDIF.
              t506 = t507.
              IF t507 = abap_true.
                DATA t546 TYPE abap_bool.
                DATA t547 TYPE string.
                DATA t548 TYPE REF TO zcl_lnt_current_scope.
                DATA t549 TYPE REF TO zcl_lnt_current_scope.
                DATA(t550) = CAST zcl_lnt_syntax_input( t2 ).
                t549 = t550->scope.
                t548 = t549.
                DATA t551 TYPE string.
                DATA t552 TYPE REF TO zif_lnt_configuration.
                DATA t553 TYPE REF TO zif_lnt_registry.
                DATA(t554) = CAST zcl_lnt_current_scope( t548 ).
                t553 = t554->reg.
                t552 = t553->get_config(  ).
                t551 = t552->get_language_version(  ).
                t547 = t551.
                DATA(t555) = |Cloud|.
                t546 = xsdbool( t547 <> t555 ).
                t506 = t546.
              ENDIF.
              t505 = t506.
              IF t506 = abap_true.
                DATA t556 TYPE abap_bool.
                DATA t557 TYPE abap_bool.
                DATA t558 TYPE REF TO zcl_lnt_current_scope.
                DATA t559 TYPE REF TO zcl_lnt_current_scope.
                DATA(t560) = CAST zcl_lnt_syntax_input( t2 ).
                t559 = t560->scope.
                t558 = t559.
                DATA t561 TYPE abap_bool.
                DATA t562 TYPE REF TO zif_lnt_configuration.
                DATA t563 TYPE REF TO zif_lnt_registry.
                DATA(t564) = CAST zcl_lnt_current_scope( t558 ).
                t563 = t564->reg.
                t562 = t563->get_config(  ).
                t561 = t562->is_open_abap(  ).
                t557 = t561.
                t556 = xsdbool( t557 = abap_false ).
                t505 = t556.
              ENDIF.
              IF t505 = abap_true.
                DATA t565 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                CLEAR t565.
                DATA t566 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                CLEAR t566.
                DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t567.
                DATA(t568) = abap_true.
                IF t568 = abap_true.
                  DATA(t569) = |A generic reference cannot be dereferenced|.
                  DATA(t570) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t570->has = abap_true.
                  t570->value = t569.
                  t567 = t570.
                ELSE.
                  DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t571.
                  t567 = t571.
                ENDIF.
                t566 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t567 ).
                t565 = NEW #( ).
                t565->payload = t566.
                RAISE EXCEPTION t565.
              ENDIF.
            ELSE.
              DATA t572 TYPE abap_bool.
              DATA t573 TYPE REF TO object.
              DATA(t574) = CAST zif_lnt_union_4cf1d054( t238 ).
              t573 = t574->get_db65(  ).
              t572 = xsdbool( t573 IS BOUND AND t573 IS INSTANCE OF zcl_lnt_st_component_name ).
              IF t572 = abap_true.
                DATA t575 TYPE abap_bool.
                DATA t576 TYPE abap_bool.
                DATA(t577) = CAST zcl_lnt_abstract_type( t210 ).
                t576 = xsdbool( t577 IS BOUND AND t577 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t575 = t576.
                IF t576 = abap_true.
                  DATA t578 TYPE abap_bool.
                  DATA t579 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t580 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t581) = CAST zcl_lnt_abstract_type( t210 ).
                  t580 ?= t581.
                  t579 = t580.
                  DATA t582 TYPE abap_bool.
                  DATA t583 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t584) = CAST zcl_lnt_ty_table_type( t579 ).
                  t583 = t584->options.
                  t582 = t583->with_header.
                  t578 = t582.
                  t575 = t578.
                ENDIF.
                IF t575 = abap_true.
                  DATA t585 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t585.
                  DATA(t586) = abap_true.
                  IF t586 = abap_true.
                    DATA t587 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t588 TYPE REF TO zcl_lnt_ty_table_type.
                    DATA t589 TYPE REF TO zcl_lnt_ty_table_type.
                    DATA(t590) = CAST zcl_lnt_abstract_type( t210 ).
                    t589 ?= t590.
                    t588 = t589.
                    DATA t591 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t592) = CAST zcl_lnt_ty_table_type( t588 ).
                    t591 = t592->row_type.
                    t587 = t591.
                    t585 = t587.
                  ELSE.
                    DATA t593 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t593.
                    t585 = t593.
                  ENDIF.
                  t210 = t585.
                ENDIF.
                DATA t594 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t595) = CAST zcl_lnt_abstract_type( t210 ).
                DATA t596 TYPE REF TO zif_lnt_node.
                DATA(t597) = CAST zif_lnt_union_4cf1d054( t238 ).
                t596 ?= t597.
                DATA(t598) = CAST zcl_lnt_syntax_input( t2 ).
                t594 = zcl_lnt_sy_component_name=>run_syntax( i_context = t595 i_node = t596 i_input_967e = t598 ).
                t210 = t594.
              ELSE.
                DATA t599 TYPE abap_bool.
                DATA t600 TYPE abap_bool.
                DATA(t601) = CAST zif_lnt_union_4cf1d054( t238 ).
                t600 = xsdbool( t601 IS BOUND AND t601 IS INSTANCE OF zcl_lnt_expression_node ).
                t599 = t600.
                IF t600 = abap_true.
                  DATA t602 TYPE abap_bool.
                  DATA t603 TYPE REF TO zif_lnt_statement_runnable.
                  DATA t604 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t605) = CAST zif_lnt_union_4cf1d054( t238 ).
                  DATA t606 TYPE REF TO object.
                  t606 = t605.
                  t604 ?= t606.
                  t603 = t604->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
                  t602 = xsdbool( t603 IS BOUND AND t603 IS INSTANCE OF zcl_lnt_st_table_expression ).
                  t599 = t602.
                ENDIF.
                IF t599 = abap_true.
                  DATA(t607) = VALUE abap_bool( ).
                  DATA t608 TYPE abap_bool.
                  DATA t609 TYPE abap_bool.
                  DATA t610 TYPE abap_bool.
                  DATA(t611) = CAST zcl_lnt_abstract_type( t210 ).
                  t610 = xsdbool( t611 IS BOUND AND t611 IS INSTANCE OF zcl_lnt_ty_table_type ).
                  t609 = xsdbool( t610 = abap_false ).
                  t608 = t609.
                  IF t609 = abap_true.
                    DATA t612 TYPE abap_bool.
                    DATA t613 TYPE abap_bool.
                    DATA(t614) = CAST zcl_lnt_abstract_type( t210 ).
                    t613 = xsdbool( t614 IS BOUND AND t614 IS INSTANCE OF zcl_lnt_void_type ).
                    t612 = xsdbool( t613 = abap_false ).
                    t608 = t612.
                  ENDIF.
                  t607 = t608.
                  IF t608 = abap_true.
                    DATA t615 TYPE abap_bool.
                    DATA t616 TYPE abap_bool.
                    DATA(t617) = CAST zcl_lnt_abstract_type( t210 ).
                    t616 = xsdbool( t617 IS BOUND AND t617 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t615 = xsdbool( t616 = abap_false ).
                    t607 = t615.
                  ENDIF.
                  IF t607 = abap_true.
                    DATA t618 TYPE string.
                    DATA(t619) = |Table expression, expected table|.
                    t618 = t619.
                    DATA t620 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t621) = CAST zcl_lnt_syntax_input( t2 ).
                    t620 = t621->issues.
                    DATA t622 TYPE REF TO zcl_lnt_issue.
                    DATA(t623) = CAST zcl_lnt_syntax_input( t2 ).
                    DATA t624 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t625 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t626) = CAST zif_lnt_union_4cf1d054( t238 ).
                    DATA t627 TYPE REF TO object.
                    t627 = t626.
                    t625 ?= t627.
                    t624 = t625->get_first_token(  ).
                    DATA(t628) = t618.
                    DATA t629 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t629.
                    t622 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t623 i_token = t624 i_message_26cb = t628 i_fix = t629 ).
                    APPEND t622 TO t620->items.
                    DATA t630 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t630.
                    DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t631.
                    DATA(t632) = abap_true.
                    IF t632 = abap_true.
                      DATA(t633) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t634) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t634->has = abap_true.
                      t634->value = t633.
                      t631 = t634.
                    ELSE.
                      DATA t635 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t635.
                      t631 = t635.
                    ENDIF.
                    DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t636.
                    t630 = zcl_lnt_void_type=>get_db65( i_voided = t631 i_qualified_name = t636 ).
                    result = t630.
                    RETURN.
                  ENDIF.
                  DATA t637 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t637.
                  DATA(t638) = abap_true.
                  IF t638 = abap_true.
                    DATA t639 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t640) = CAST zif_lnt_union_4cf1d054( t238 ).
                    DATA t641 TYPE REF TO object.
                    t641 = t640.
                    t639 ?= t641.
                    t637 = t639.
                  ELSE.
                    DATA t642 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t642.
                    t637 = t642.
                  ENDIF.
                  DATA(t643) = CAST zcl_lnt_syntax_input( t2 ).
                  DATA t644 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t644.
                  DATA(t645) = abap_true.
                  IF t645 = abap_true.
                    DATA t646 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t647 TYPE REF TO zif_lnt_union_297610d4.
                    DATA t648 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t649) = CAST zcl_lnt_abstract_type( t210 ).
                    t648 = t649.
                    t647 ?= t648.
                    t646 ?= t647.
                    t644 = t646.
                  ELSE.
                    DATA t650 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t650.
                    t644 = t650.
                  ENDIF.
                  zcl_lnt_sy_table_expression=>run_syntax( i_node = t637 i_input_967e = t643 i_row_type = t644 ).
                  DATA t651 TYPE abap_bool.
                  DATA t652 TYPE abap_bool.
                  DATA t653 TYPE abap_bool.
                  DATA(t654) = CAST zcl_lnt_abstract_type( t210 ).
                  t653 = xsdbool( t654 IS BOUND AND t654 IS INSTANCE OF zcl_lnt_void_type ).
                  t652 = xsdbool( t653 = abap_false ).
                  t651 = t652.
                  IF t652 = abap_true.
                    DATA t655 TYPE abap_bool.
                    DATA t656 TYPE abap_bool.
                    DATA(t657) = CAST zcl_lnt_abstract_type( t210 ).
                    t656 = xsdbool( t657 IS BOUND AND t657 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t655 = xsdbool( t656 = abap_false ).
                    t651 = t655.
                  ENDIF.
                  IF t651 = abap_true.
                    DATA t658 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t658.
                    DATA(t659) = abap_true.
                    IF t659 = abap_true.
                      DATA t660 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t661 TYPE REF TO zcl_lnt_ty_table_type.
                      DATA t662 TYPE REF TO zcl_lnt_ty_table_type.
                      DATA(t663) = CAST zcl_lnt_abstract_type( t210 ).
                      t662 ?= t663.
                      t661 = t662.
                      DATA t664 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t665) = CAST zcl_lnt_ty_table_type( t661 ).
                      t664 = t665->row_type.
                      t660 = t664.
                      t658 = t660.
                    ELSE.
                      DATA t666 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t666.
                      t658 = t666.
                    ENDIF.
                    t210 = t658.
                  ENDIF.
                ELSE.
                  DATA t667 TYPE abap_bool.
                  DATA t668 TYPE REF TO object.
                  DATA(t669) = CAST zif_lnt_union_4cf1d054( t238 ).
                  t668 = t669->get_db65(  ).
                  t667 = xsdbool( t668 IS BOUND AND t668 IS INSTANCE OF zcl_lnt_st_attribute_name ).
                  IF t667 = abap_true.
                    DATA t670 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t670.
                    DATA(t671) = CAST zcl_lnt_abstract_type( t210 ).
                    DATA t672 TYPE REF TO zif_lnt_node.
                    DATA(t673) = CAST zif_lnt_union_4cf1d054( t238 ).
                    t672 ?= t673.
                    DATA(t674) = CAST zcl_lnt_syntax_input( t2 ).
                    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t675.
                    DATA(t676) = abap_true.
                    IF t676 = abap_true.
                      DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA(t678) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
                      t677 = t678.
                      t675 = t677.
                    ELSE.
                      DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t679.
                      t675 = t679.
                    ENDIF.
                    DATA t680 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t680.
                    t670 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t671 i_node = t672 i_input_967e = t674 i_type_9913 = t675 i_error = t680 ).
                    t210 = t670.
                  ELSE.
                    DATA t681 TYPE abap_bool.
                    DATA t682 TYPE abap_bool.
                    DATA t683 TYPE REF TO object.
                    DATA(t684) = CAST zif_lnt_union_4cf1d054( t238 ).
                    t683 = t684->get_db65(  ).
                    t682 = xsdbool( t683 IS BOUND AND t683 IS INSTANCE OF zcl_lnt_st_field_offset ).
                    t681 = t682.
                    IF t682 = abap_true.
                      DATA t685 TYPE abap_bool.
                      DATA(t686) = CAST zif_lnt_union_4cf1d054( t238 ).
                      t685 = xsdbool( t686 IS BOUND AND t686 IS INSTANCE OF zcl_lnt_expression_node ).
                      t681 = t685.
                    ENDIF.
                    IF t681 = abap_true.
                      DATA t687 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                      DATA t688 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                      DATA t689 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t690) = CAST zif_lnt_union_4cf1d054( t238 ).
                      DATA t691 TYPE REF TO object.
                      t691 = t690.
                      t689 ?= t691.
                      DATA(t692) = CAST zcl_lnt_syntax_input( t2 ).
                      t688 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t689 i_input_967e = t692 ).
                      t687 = t688.
                      DATA(t693) = VALUE abap_bool( ).
                      DATA(t694) = CAST zlnt_runtime_opti_4a236cd5714d( t687 ).
                      IF t694 IS BOUND.
                        IF t694->has = abap_true.
                          t693 = xsdbool( t694->value IS NOT INITIAL ).
                        ENDIF.
                      ENDIF.
                      IF t693 = abap_true.
                        DATA t695 TYPE abap_bool.
                        DATA(t696) = CAST zcl_lnt_abstract_type( t210 ).
                        t695 = xsdbool( t696 IS BOUND AND t696 IS INSTANCE OF zcl_lnt_character_type ).
                        IF t695 = abap_true.
                          DATA t697 TYPE REF TO zcl_lnt_character_type.
                          CLEAR t697.
                          DATA t698 TYPE int8.
                          DATA t699 TYPE int8.
                          DATA t700 TYPE REF TO zcl_lnt_character_type.
                          DATA t701 TYPE REF TO zcl_lnt_character_type.
                          DATA(t702) = CAST zcl_lnt_abstract_type( t210 ).
                          t701 ?= t702.
                          t700 = t701.
                          DATA t703 TYPE int8.
                          DATA(t704) = CAST zcl_lnt_character_type( t700 ).
                          t703 = t704->length.
                          t699 = t703.
                          DATA t705 TYPE int8.
                          DATA(t706) = CAST zlnt_runtime_opti_4a236cd5714d( t687 ).
                          t705 = t706->value.
                          t698 = t699 - t705.
                          IF t698 < range_int8_bound_min OR t698 > range_int8_bound_max.
                            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                          ENDIF.
                          DATA t707 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t707.
                          t697 = NEW zcl_lnt_character_type( i_length = t698 i_extra = t707 ).
                          t210 = t697.
                        ELSE.
                          DATA t708 TYPE abap_bool.
                          DATA(t709) = CAST zcl_lnt_abstract_type( t210 ).
                          t708 = xsdbool( t709 IS BOUND AND t709 IS INSTANCE OF zcl_lnt_hex_type ).
                          IF t708 = abap_true.
                            DATA t710 TYPE REF TO zcl_lnt_hex_type.
                            CLEAR t710.
                            DATA t711 TYPE int8.
                            DATA t712 TYPE int8.
                            DATA t713 TYPE REF TO zcl_lnt_hex_type.
                            DATA t714 TYPE REF TO zcl_lnt_hex_type.
                            DATA(t715) = CAST zcl_lnt_abstract_type( t210 ).
                            t714 ?= t715.
                            t713 = t714.
                            DATA t716 TYPE int8.
                            DATA(t717) = CAST zcl_lnt_hex_type( t713 ).
                            t716 = t717->length.
                            t712 = t716.
                            DATA t718 TYPE int8.
                            DATA(t719) = CAST zlnt_runtime_opti_4a236cd5714d( t687 ).
                            t718 = t719->value.
                            t711 = t712 - t718.
                            IF t711 < range_int8_bound_min OR t711 > range_int8_bound_max.
                              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
                            ENDIF.
                            DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t720.
                            t710 = NEW zcl_lnt_hex_type( i_length = t711 i_qualified_name = t720 ).
                            t210 = t710.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ELSE.
                      DATA t721 TYPE abap_bool.
                      DATA t722 TYPE abap_bool.
                      DATA t723 TYPE REF TO object.
                      DATA(t724) = CAST zif_lnt_union_4cf1d054( t238 ).
                      t723 = t724->get_db65(  ).
                      t722 = xsdbool( t723 IS BOUND AND t723 IS INSTANCE OF zcl_lnt_st_field_length ).
                      t721 = t722.
                      IF t722 = abap_true.
                        DATA t725 TYPE abap_bool.
                        DATA(t726) = CAST zif_lnt_union_4cf1d054( t238 ).
                        t725 = xsdbool( t726 IS BOUND AND t726 IS INSTANCE OF zcl_lnt_expression_node ).
                        t721 = t725.
                      ENDIF.
                      IF t721 = abap_true.
                        DATA t727 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                        DATA t728 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                        DATA t729 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t730) = CAST zif_lnt_union_4cf1d054( t238 ).
                        DATA t731 TYPE REF TO object.
                        t731 = t730.
                        t729 ?= t731.
                        DATA(t732) = CAST zcl_lnt_syntax_input( t2 ).
                        t728 = zcl_lnt_sy_field_length=>run_syntax( i_node = t729 i_input_967e = t732 ).
                        t727 = t728.
                        DATA(t733) = VALUE abap_bool( ).
                        DATA(t734) = CAST zlnt_runtime_opti_4a236cd5714d( t727 ).
                        IF t734 IS BOUND.
                          IF t734->has = abap_true.
                            t733 = xsdbool( t734->value IS NOT INITIAL ).
                          ENDIF.
                        ENDIF.
                        IF t733 = abap_true.
                          DATA t735 TYPE abap_bool.
                          DATA(t736) = CAST zcl_lnt_abstract_type( t210 ).
                          t735 = xsdbool( t736 IS BOUND AND t736 IS INSTANCE OF zcl_lnt_character_type ).
                          IF t735 = abap_true.
                            DATA t737 TYPE REF TO zcl_lnt_character_type.
                            DATA t738 TYPE int8.
                            DATA(t739) = CAST zlnt_runtime_opti_4a236cd5714d( t727 ).
                            t738 = t739->value.
                            DATA t740 TYPE REF TO zcl_lnt_abstract_type_data.
                            CLEAR t740.
                            t737 = NEW zcl_lnt_character_type( i_length = t738 i_extra = t740 ).
                            t210 = t737.
                          ELSE.
                            DATA t741 TYPE abap_bool.
                            DATA(t742) = CAST zcl_lnt_abstract_type( t210 ).
                            t741 = xsdbool( t742 IS BOUND AND t742 IS INSTANCE OF zcl_lnt_hex_type ).
                            IF t741 = abap_true.
                              DATA t743 TYPE REF TO zcl_lnt_hex_type.
                              DATA t744 TYPE int8.
                              DATA(t745) = CAST zlnt_runtime_opti_4a236cd5714d( t727 ).
                              t744 = t745->value.
                              DATA t746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t746.
                              t743 = NEW zcl_lnt_hex_type( i_length = t744 i_qualified_name = t746 ).
                              t210 = t743.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t747 TYPE string.
      DATA(t748) = CAST zif_lnt_union_4cf1d054( t238 ).
      t747 = t748->concat_tokens(  ).
      t227 = t747.
      DATA t749 TYPE i.
      DATA(t750) = t232.
      DATA(t751) = 1.
      t749 = t750 + t751.
      t232 = t749.
    ENDDO.
    DATA(t752) = CAST zcl_lnt_abstract_type( t210 ).
    result = t752.
    
  ENDMETHOD.
  METHOD find_top.
    DATA(t1) = CAST zif_lnt_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_dyna_a429568d5be8( i_type_9913 ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_node.
    DATA(t6) = CAST zif_lnt_node( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zif_lnt_node( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA(t14) = CAST zif_lnt_node( t1 ).
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_expression_node ).
    t12 = t13.
    IF t13 = abap_true.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zif_lnt_statement_runnable.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t18) = CAST zif_lnt_node( t1 ).
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      t16 = t17->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
      t12 = t15.
    ENDIF.
    IF t12 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = CAST zif_lnt_node( t1 ).
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        DATA(t26) = CAST zcl_lnt_syntax_input( t2 ).
        t22 = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t23 i_input_967e = t26 ).
        t20 = t22.
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t27.
        t20 = t27.
      ENDIF.
      result = t20.
      RETURN.
    ELSE.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA(t30) = CAST zif_lnt_node( t1 ).
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_expression_node ).
      t28 = t29.
      IF t29 = abap_true.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zif_lnt_statement_runnable.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        DATA(t34) = CAST zif_lnt_node( t1 ).
        DATA t35 TYPE REF TO object.
        t35 = t34.
        t33 ?= t35.
        t32 = t33->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_source_field ).
        t28 = t31.
      ENDIF.
      IF t28 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA(t38) = CAST zif_lnt_node( t1 ).
        DATA t39 TYPE REF TO object.
        t39 = t38.
        t37 ?= t39.
        DATA(t40) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
          t41 = t43.
        ELSE.
          DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t44.
          t41 = t44.
        ENDIF.
        DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t45.
        t36 = zcl_lnt_sy_source_field=>run_syntax( i_node = t37 i_input_967e = t40 i_type_9913 = t41 i_error = t45 ).
        result = t36.
        RETURN.
      ELSE.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        DATA(t48) = CAST zif_lnt_node( t1 ).
        t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_expression_node ).
        t46 = t47.
        IF t47 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE REF TO zif_lnt_statement_runnable.
          DATA t51 TYPE REF TO zcl_lnt_expression_node.
          DATA(t52) = CAST zif_lnt_node( t1 ).
          DATA t53 TYPE REF TO object.
          t53 = t52.
          t51 ?= t53.
          t50 = t51->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
          t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_st_expres_field ).
          t46 = t49.
        ENDIF.
        IF t46 = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          DATA(t56) = CAST zif_lnt_node( t1 ).
          DATA t57 TYPE REF TO object.
          t57 = t56.
          t55 ?= t57.
          DATA(t58) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t59.
          DATA(t60) = abap_true.
          IF t60 = abap_true.
            DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
            t59 = t61.
          ELSE.
            DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t62.
            t59 = t62.
          ENDIF.
          DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t63.
          t54 = zcl_lnt_sy_source_field=>run_syntax( i_node = t55 i_input_967e = t58 i_type_9913 = t59 i_error = t63 ).
          result = t54.
          RETURN.
        ELSE.
          DATA t64 TYPE abap_bool.
          DATA t65 TYPE REF TO object.
          DATA t66 TYPE REF TO zif_lnt_node.
          DATA(t67) = CAST zif_lnt_node( t1 ).
          t66 = t67.
          t65 = t66->get_db65(  ).
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_class_name ).
          IF t64 = abap_true.
            DATA t68 TYPE REF TO zcl_lnt_abstract_token.
            DATA t69 TYPE REF TO zcl_lnt_abstract_token.
            DATA t70 TYPE REF TO zif_lnt_node.
            DATA(t71) = CAST zif_lnt_node( t1 ).
            t70 = t71.
            t69 = t70->get_first_token(  ).
            t68 = t69.
            DATA t72 TYPE string.
            DATA t73 TYPE string.
            DATA t74 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t75) = CAST zcl_lnt_abstract_token( t68 ).
            t74 = t75.
            DATA t76 TYPE string.
            DATA(t77) = CAST zcl_lnt_abstract_token( t74 ).
            t76 = t77->str.
            t73 = t76.
            t72 = t73.
            DATA(t78) = VALUE abap_bool( ).
            DATA t79 TYPE string.
            DATA(t80) = t72.
            DATA(t81) = strlen( t80 ).
            t79 = t80.
            IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t79 TO UPPER CASE.
            ELSE.
              t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
            ENDIF.
            DATA(t82) = |OBJECT|.
            t78 = xsdbool( t79 = t82 ).
            IF t78 = abap_true.
              DATA t83 TYPE REF TO zcl_lnt_gnrc_objct_rfrnc_typ.
              DATA t84 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t84.
              t83 = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t84 ).
              result = t83.
              RETURN.
            ENDIF.
            DATA t85 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t85.
            DATA t86 TYPE REF TO zcl_lnt_shape_59e28496.
            CLEAR t86.
            DATA t87 TYPE REF TO zcl_lnt_current_scope.
            DATA(t88) = CAST zcl_lnt_syntax_input( t2 ).
            t87 = t88->scope.
            DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t89.
            DATA(t90) = abap_true.
            IF t90 = abap_true.
              DATA(t91) = t72.
              DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t92->has = abap_true.
              t92->value = t91.
              t89 = t92.
            ELSE.
              DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t93.
              t89 = t93.
            ENDIF.
            t86 = t87->exists_object( i_name = t89 ).
            t85 = t86.
            DATA(t94) = VALUE abap_bool( ).
            DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t95.
            DATA t96 TYPE REF TO zcl_lnt_shape_59e28496.
            DATA(t97) = CAST zcl_lnt_shape_59e28496( t85 ).
            t96 = t97.
            DATA t98 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t98.
            DATA(t99) = VALUE abap_bool( ).
            DATA(t100) = CAST zcl_lnt_shape_59e28496( t96 ).
            IF t100 IS INITIAL.
              t99 = abap_true.
            ENDIF.
            IF t99 = abap_true.
              DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t101.
              t98 = t101.
            ELSE.
              DATA t102 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t103 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t104) = CAST zcl_lnt_shape_59e28496( t96 ).
              t103 = t104.
              t102 = t103->id.
              t98 = t102.
            ENDIF.
            t95 = t98.
            t94 = xsdbool( t95 IS BOUND ).
            IF t94 = abap_true.
              DATA t105 TYPE REF TO zcl_lnt_current_scope.
              DATA(t106) = CAST zcl_lnt_syntax_input( t2 ).
              t105 = t106->scope.
              DATA t107 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t107.
              DATA(t108) = abap_true.
              IF t108 = abap_true.
                DATA(t109) = CAST zcl_lnt_abstract_token( t68 ).
                t107 = t109.
              ELSE.
                DATA t110 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t110.
                t107 = t110.
              ENDIF.
              DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t111.
              DATA(t112) = abap_true.
              IF t112 = abap_true.
                DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t114 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t115 TYPE REF TO zcl_lnt_shape_59e28496.
                DATA(t116) = CAST zcl_lnt_shape_59e28496( t85 ).
                t115 = t116.
                t114 = t115->id.
                t113 = t114.
                t111 = t113.
              ELSE.
                DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t117.
                t111 = t117.
              ENDIF.
              DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t119) = |Object|.
              CREATE OBJECT t118.
              t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t118->sval = t119.
              DATA t120 TYPE string.
              DATA(t121) = CAST zcl_lnt_syntax_input( t2 ).
              t120 = t121->filename.
              DATA t122 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t122.
              t105->add_reference( i_usage = t107 i_referencing = t111 i_type_9913 = t118 i_filename = t120 i_extra = t122 ).
              DATA t123 TYPE REF TO zcl_lnt_object_reference_type.
              DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t126 TYPE REF TO zcl_lnt_shape_59e28496.
              DATA(t127) = CAST zcl_lnt_shape_59e28496( t85 ).
              t126 = t127.
              t125 = t126->id.
              t124 = t125.
              DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t128.
              t123 = NEW zcl_lnt_object_reference_type( i_id = t124 i_extra = t128 ).
              result = t123.
              RETURN.
            ELSE.
              DATA(t129) = VALUE abap_bool( ).
              DATA(t130) = VALUE abap_bool( ).
              DATA t131 TYPE REF TO zcl_lnt_ddic.
              DATA t132 TYPE REF TO zcl_lnt_ddic.
              DATA t133 TYPE REF TO zcl_lnt_current_scope.
              DATA t134 TYPE REF TO zcl_lnt_current_scope.
              DATA(t135) = CAST zcl_lnt_syntax_input( t2 ).
              t134 = t135->scope.
              t133 = t134.
              DATA t136 TYPE REF TO zcl_lnt_ddic.
              DATA t137 TYPE REF TO zif_lnt_registry.
              DATA(t138) = CAST zcl_lnt_current_scope( t133 ).
              t137 = t138->reg.
              t136 = NEW zcl_lnt_ddic( i_reg_f149 = t137 ).
              t132 = t136.
              t131 = t132.
              DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t139.
              DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t140.
              DATA(t141) = abap_true.
              IF t141 = abap_true.
                DATA(t142) = t72.
                DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t143->has = abap_true.
                t143->value = t142.
                t140 = t143.
              ELSE.
                DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t144.
                t140 = t144.
              ENDIF.
              t139 = t140.
              DATA(t145) = VALUE abap_bool( ).
              DATA(t146) = VALUE abap_bool( ).
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t148) = CAST zlnt_runtime_opti_4ba3bdccd169( t139 ).
              t147 = t148.
              DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t150.
              t149 = t150.
              DATA(t151) = VALUE abap_bool( ).
              DATA(t152) = CAST zlnt_runtime_opti_4ba3bdccd169( t147 ).
              IF t152 IS INITIAL.
                t151 = abap_true.
              ELSEIF t152->has = abap_false.
                t151 = abap_true.
              ENDIF.
              t146 = t151.
              IF t146 = abap_true.
                DATA(t153) = abap_true.
                t145 = t153.
              ELSE.
                DATA t154 TYPE abap_bool.
                DATA t155 TYPE REF TO zif_lnt_registry.
                DATA(t156) = CAST zcl_lnt_ddic( t131 ).
                t155 = t156->reg.
                DATA t157 TYPE string.
                DATA(t158) = CAST zlnt_runtime_opti_4ba3bdccd169( t139 ).
                t157 = t158->value.
                t154 = t155->in_error_namespace( i_name = t157 ).
                t145 = t154.
              ENDIF.
              t130 = t145.
              DATA(t159) = abap_false.
              t129 = xsdbool( t130 = t159 ).
              IF t129 = abap_true.
                DATA t160 TYPE REF TO zcl_lnt_current_scope.
                DATA(t161) = CAST zcl_lnt_syntax_input( t2 ).
                t160 = t161->scope.
                DATA t162 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t162.
                DATA(t163) = abap_true.
                IF t163 = abap_true.
                  DATA(t164) = CAST zcl_lnt_abstract_token( t68 ).
                  t162 = t164.
                ELSE.
                  DATA t165 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t165.
                  t162 = t165.
                ENDIF.
                DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t166.
                DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t168) = |Object (Void)|.
                CREATE OBJECT t167.
                t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t167->sval = t168.
                DATA t169 TYPE string.
                DATA(t170) = CAST zcl_lnt_syntax_input( t2 ).
                t169 = t170->filename.
                DATA t171 TYPE REF TO zcl_lnt_ireference_extras.
                CLEAR t171.
                DATA(t172) = abap_true.
                IF t172 = abap_true.
                  DATA t173 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t173.
                  DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t174.
                  DATA(t175) = abap_true.
                  IF t175 = abap_true.
                    DATA t176 TYPE string.
                    DATA(t177) = t72.
                    DATA(t178) = strlen( t177 ).
                    t176 = t177.
                    IF t176 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t176 TO UPPER CASE.
                    ELSE.
                      t176 = zlnt_runtime_uppe_91169605024d=>full( t176 ).
                    ENDIF.
                    DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t179->has = abap_true.
                    t179->value = t176.
                    t174 = t179.
                  ELSE.
                    DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t180.
                    t174 = t180.
                  ENDIF.
                  DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t181.
                  DATA t182 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t182.
                  t173 = NEW zcl_lnt_ireference_extras( i_oo_name = t174 i_oo_type = t181 i_found_qualified = t182 ).
                  t171 = t173.
                ELSE.
                  DATA t183 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t183.
                  t171 = t183.
                ENDIF.
                t160->add_reference( i_usage = t162 i_referencing = t166 i_type_9913 = t167 i_filename = t169 i_extra = t171 ).
                DATA t184 TYPE REF TO zcl_lnt_void_type.
                CLEAR t184.
                DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t185.
                DATA(t186) = abap_true.
                IF t186 = abap_true.
                  DATA(t187) = t72.
                  DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t188->has = abap_true.
                  t188->value = t187.
                  t185 = t188.
                ELSE.
                  DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t189.
                  t185 = t189.
                ENDIF.
                DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t190.
                t184 = zcl_lnt_void_type=>get_db65( i_voided = t185 i_qualified_name = t190 ).
                result = t184.
                RETURN.
              ELSE.
                DATA t191 TYPE string.
                DATA t192 TYPE string.
                DATA(t193) = |Unknown class |.
                DATA(t194) = t72.
                DATA(t195) = strlen( t193 ).
                t192 = |{ t193 }{ t194 }|.
                t191 = t192.
                DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t197) = CAST zcl_lnt_syntax_input( t2 ).
                t196 = t197->issues.
                DATA t198 TYPE REF TO zcl_lnt_issue.
                DATA(t199) = CAST zcl_lnt_syntax_input( t2 ).
                DATA t200 TYPE REF TO zcl_lnt_abstract_token.
                DATA t201 TYPE REF TO zif_lnt_node.
                DATA(t202) = CAST zif_lnt_node( t1 ).
                t201 = t202.
                t200 = t201->get_first_token(  ).
                DATA(t203) = t191.
                DATA t204 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t204.
                t198 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t199 i_token = t200 i_message_26cb = t203 i_fix = t204 ).
                APPEND t198 TO t196->items.
                DATA t205 TYPE REF TO zcl_lnt_void_type.
                CLEAR t205.
                DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t206.
                DATA(t207) = abap_true.
                IF t207 = abap_true.
                  DATA(t208) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t209->has = abap_true.
                  t209->value = t208.
                  t206 = t209.
                ELSE.
                  DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t210.
                  t206 = t210.
                ENDIF.
                DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t211.
                t205 = zcl_lnt_void_type=>get_db65( i_voided = t206 i_qualified_name = t211 ).
                result = t205.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t212 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t212.
    result = t212.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d781_48710bb3ffae.
  ENDMETHOD.
ENDCLASS.
