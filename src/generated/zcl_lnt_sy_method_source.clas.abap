* TS: src/abap/5_syntax/expressions/method_source.ts:19:1 MethodSource
CLASS zcl_lnt_sy_method_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_union_8cd68e5e.
    CLASS-METHODS find_top IMPORTING i_first TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = CAST zcl_lnt_syntax_input( t2 ).
    t5 = t6->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t12) = CAST zcl_lnt_expression_node( t1 ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = CAST zcl_lnt_abstract_node( t11 ).
    t13 = t14->children.
    t10 = t13.
    t9 ?= t10.
    t8 = t9->slice0( ).
    t7 = t8.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t18 TYPE REF TO object.
    t18 = t17->shift( ).
    t16 ?= t18.
    t15 = t16.
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t21) = CAST zif_lnt_union_4cf1d054( t15 ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = CAST zif_lnt_union_4cf1d054( t20 ).
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    IF t19 = abap_true.
      DATA t26 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t26.
      DATA t27 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = |MethodSource, first child expected|.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t30.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      t27 = NEW zcx_lnt_assert_error( i_message_26cb = t28 ).
      t26 = NEW #( ).
      t26->payload = t27.
      RAISE EXCEPTION t26.
    ENDIF.
    DATA t33 TYPE REF TO zif_lnt_union_b6d4892d.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type.
    DATA t35 TYPE REF TO zif_lnt_node.
    DATA t36 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t37) = CAST zif_lnt_union_4cf1d054( t15 ).
    t36 = t37.
    t35 ?= t36.
    DATA(t38) = CAST zcl_lnt_syntax_input( t2 ).
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t34 = zcl_lnt_sy_method_source=>find_top( i_first = t35 i_input_967e = t38 i_children_9020 = t39 ).
    t33 = t34.
    DATA t40 TYPE abap_bool.
    DATA(t41) = abap_false.
    t40 = t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zif_lnt_union_b6d4892d.
    DATA(t44) = CAST zif_lnt_union_b6d4892d( t33 ).
    t43 = t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    t45 = t46.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = CAST zif_lnt_union_b6d4892d( t43 ).
    IF t48 IS INITIAL.
      t47 = abap_true.
    ENDIF.
    t42 = t47.
    IF t42 = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_current_scope.
      DATA t53 TYPE REF TO zcl_lnt_current_scope.
      DATA(t54) = CAST zcl_lnt_syntax_input( t2 ).
      t53 = t54->scope.
      t52 = t53.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA(t57) = abap_true.
      IF t57 = abap_true.
        DATA(t58) = |me|.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t58.
        t56 = t59.
      ELSE.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t56 = t60.
      ENDIF.
      t55 = t56.
      DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t55 ).
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t65 = t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = CAST zlnt_runtime_opti_4ba3bdccd169( t63 ).
      IF t68 IS INITIAL.
        t67 = abap_true.
      ELSEIF t68->has = abap_false.
        t67 = abap_true.
      ENDIF.
      t62 = t67.
      IF t62 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t69.
        t61 = t69.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t71.
        DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t74 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t75) = CAST zcl_lnt_current_scope( t52 ).
        t74 = t75->current.
        t73 = t74.
        DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t76.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = CAST zcl_lnt_spaghetti_scope_node( t73 ).
        IF t78 IS INITIAL.
          t77 = abap_true.
        ENDIF.
        IF t77 = abap_true.
          DATA t79 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t79.
          t76 = t79.
        ELSE.
          DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t82) = CAST zcl_lnt_spaghetti_scope_node( t73 ).
          t81 = t82.
          DATA t83 TYPE string.
          DATA(t84) = CAST zlnt_runtime_opti_4ba3bdccd169( t55 ).
          t83 = t84->value.
          t80 = t81->find_variable( i_name = t83 ).
          t76 = t80.
        ENDIF.
        t72 = t76.
        t71 = t72.
        DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t85.
        DATA t86 TYPE abap_bool.
        DATA(t87) = CAST zcl_lnt_typed_identifier( t71 ).
        t86 = xsdbool( t87 IS BOUND ).
        IF t86 = abap_true.
          DATA t88 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t91) = CAST zcl_lnt_typed_identifier( t71 ).
            t90 = t91.
            t88 = t90.
          ELSE.
            DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t92.
            t88 = t92.
          ENDIF.
          t85 = t88.
        ELSE.
          DATA t93 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t93.
          DATA(t94) = CAST zcl_lnt_current_scope( t52 ).
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA t97 TYPE string.
            DATA(t98) = CAST zlnt_runtime_opti_4ba3bdccd169( t55 ).
            t97 = t98->value.
            DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t99->has = abap_true.
            t99->value = t97.
            t95 = t99.
          ELSE.
            DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t100.
            t95 = t100.
          ENDIF.
          t93 = t94->find_type_pool_constant( i_name = t95 ).
          t85 = t93.
        ENDIF.
        t70 = t85.
        t61 = t70.
      ENDIF.
      t51 = t61.
      t50 = t51.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = CAST zcl_lnt_typed_identifier( t50 ).
      IF t103 IS INITIAL.
        t102 = abap_true.
      ENDIF.
      IF t102 = abap_true.
        DATA t104 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t104.
        t101 = t104.
      ELSE.
        DATA t105 TYPE REF TO zcl_lnt_abstract_type.
        DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t108) = CAST zcl_lnt_typed_identifier( t50 ).
        t107 = t108.
        t106 = t107.
        DATA t109 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t110) = CAST zcl_lnt_typed_identifier( t106 ).
        t109 = t110->type_cba0.
        t105 = t109.
        t101 = t105.
      ENDIF.
      t49 = t101.
      t33 = t49.
      DATA t111 TYPE i.
      DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      DATA t113 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t114) = CAST zif_lnt_union_4cf1d054( t15 ).
      t113 = t114.
      t111 = t112->unshift( p0 = t113 ).
      DATA(t115) = abap_true.
      t40 = t115.
    ENDIF.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE abap_bool.
    DATA t119 TYPE abap_bool.
    DATA t120 TYPE string.
    DATA t121 TYPE REF TO zcl_lnt_current_scope.
    DATA t122 TYPE REF TO zcl_lnt_current_scope.
    DATA(t123) = CAST zcl_lnt_syntax_input( t2 ).
    t122 = t123->scope.
    t121 = t122.
    DATA t124 TYPE string.
    DATA t125 TYPE REF TO zif_lnt_configuration.
    DATA t126 TYPE REF TO zif_lnt_registry.
    DATA(t127) = CAST zcl_lnt_current_scope( t121 ).
    t126 = t127->reg.
    t125 = t126->get_config( ).
    t124 = t125->get_language_version( ).
    t120 = t124.
    DATA(t128) = |Cloud|.
    t119 = xsdbool( t120 = t128 ).
    t118 = t119.
    IF t119 = abap_true.
      DATA t129 TYPE abap_bool.
      DATA t130 TYPE REF TO object.
      DATA t131 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t132) = CAST zif_lnt_union_4cf1d054( t15 ).
      t131 = t132.
      t130 = t131->get_db65( ).
      t129 = xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_st_dynamic ).
      t118 = t129.
    ENDIF.
    t117 = t118.
    IF t118 = abap_true.
      DATA t133 TYPE abap_bool.
      DATA(t134) = CAST zif_lnt_union_4cf1d054( t15 ).
      t133 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_expression_node ).
      t117 = t133.
    ENDIF.
    t116 = t117.
    IF t117 = abap_true.
      DATA(t135) = VALUE abap_bool( ).
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      DATA t137 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t138 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      DATA(t140) = 0.
      DATA t141 TYPE REF TO object.
      t141 = t139->get( p0 = t140 ).
      t138 ?= t141.
      t137 = t138.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = CAST zif_lnt_union_4cf1d054( t137 ).
      IF t144 IS INITIAL.
        t143 = abap_true.
      ENDIF.
      IF t143 = abap_true.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        t142 = t145.
      ELSE.
        DATA t146 TYPE string.
        DATA t147 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t148) = CAST zif_lnt_union_4cf1d054( t137 ).
        t147 = t148.
        t146 = t147->concat_tokens( ).
        DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t149->has = abap_true.
        t149->value = t146.
        t142 = t149.
      ENDIF.
      t136 = t142.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t150.
      DATA(t151) = abap_true.
      IF t151 = abap_true.
        DATA(t152) = |=>|.
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t152.
        t150 = t153.
      ELSE.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        t150 = t154.
      ENDIF.
      DATA(t155) = VALUE abap_bool( ).
      DATA(t156) = VALUE abap_bool( ).
      IF t136 IS BOUND.
        t155 = t136->has.
      ENDIF.
      IF t150 IS BOUND.
        t156 = t150->has.
      ENDIF.
      IF t155 = t156.
        IF t155 = abap_false.
          t135 = abap_true.
        ELSEIF t136->value = t150->value.
          t135 = abap_true.
        ENDIF.
      ENDIF.
      t116 = t135.
    ENDIF.
    IF t116 = abap_true.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t157.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t159.
      DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t160.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_expression_node.
      DATA t164 TYPE REF TO zcl_lnt_expression_node.
      DATA t165 TYPE REF TO zcl_lnt_expression_node.
      DATA(t166) = CAST zif_lnt_union_4cf1d054( t15 ).
      DATA t167 TYPE REF TO object.
      t167 = t166.
      t165 ?= t167.
      DATA(t168) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
      t164 = t165->find_direct_expression( i_type_9913 = t168 ).
      t163 = t164.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t169.
      DATA(t170) = VALUE abap_bool( ).
      DATA(t171) = CAST zcl_lnt_expression_node( t163 ).
      IF t171 IS INITIAL.
        t170 = abap_true.
      ENDIF.
      IF t170 = abap_true.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        t169 = t172.
      ELSE.
        DATA t173 TYPE string.
        DATA t174 TYPE REF TO zcl_lnt_expression_node.
        DATA(t175) = CAST zcl_lnt_expression_node( t163 ).
        t174 = t175.
        t173 = t174->concat_tokens( ).
        DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t176->has = abap_true.
        t176->value = t173.
        t169 = t176.
      ENDIF.
      t162 = t169.
      t161 = t162.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = CAST zlnt_runtime_opti_4ba3bdccd169( t161 ).
      IF t179 IS INITIAL.
        t178 = abap_true.
      ELSEIF t179->has = abap_false.
        t178 = abap_true.
      ENDIF.
      IF t178 = abap_true.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t180.
        t177 = t180.
      ELSE.
        DATA t181 TYPE string.
        DATA t182 TYPE string.
        DATA(t183) = CAST zlnt_runtime_opti_4ba3bdccd169( t161 ).
        t182 = t183->value.
        DATA t184 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t184.
        DATA(t185) = |'|.
        DATA(t186) = |g|.
        CREATE OBJECT t184 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t185 flags = t186.
        DATA(t187) = ||.
        DATA(t188) = strlen( t182 ).
        t181 = t184->replace( p0 = t182 p1 = t187 ).
        DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t189->has = abap_true.
        t189->value = t181.
        t177 = t189.
      ENDIF.
      t160 = t177.
      t159 = t160.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t190.
      DATA(t191) = VALUE abap_bool( ).
      DATA(t192) = CAST zlnt_runtime_opti_4ba3bdccd169( t159 ).
      IF t192 IS INITIAL.
        t191 = abap_true.
      ELSEIF t192->has = abap_false.
        t191 = abap_true.
      ENDIF.
      IF t191 = abap_true.
        DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t193.
        t190 = t193.
      ELSE.
        DATA t194 TYPE string.
        DATA t195 TYPE string.
        DATA(t196) = CAST zlnt_runtime_opti_4ba3bdccd169( t159 ).
        t195 = t196->value.
        DATA t197 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t197.
        DATA(t198) = |`|.
        DATA(t199) = |g|.
        CREATE OBJECT t197 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t198 flags = t199.
        DATA(t200) = ||.
        DATA(t201) = strlen( t195 ).
        t194 = t197->replace( p0 = t195 p1 = t200 ).
        DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t202->has = abap_true.
        t202->value = t194.
        t190 = t202.
      ENDIF.
      t158 = t190.
      t157 = t158.
      DATA(t203) = VALUE abap_bool( ).
      DATA(t204) = VALUE abap_bool( ).
      DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t206) = CAST zlnt_runtime_opti_4ba3bdccd169( t157 ).
      t205 = t206.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      t207 = t208.
      DATA(t209) = VALUE abap_bool( ).
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = CAST zlnt_runtime_opti_4ba3bdccd169( t205 ).
      IF t211 IS INITIAL.
        t210 = abap_true.
      ELSEIF t211->has = abap_false.
        t210 = abap_true.
      ENDIF.
      t209 = xsdbool( t210 = abap_false ).
      t204 = t209.
      t203 = t204.
      IF t204 = abap_true.
        DATA(t212) = VALUE abap_bool( ).
        DATA t213 TYPE REF TO zif_lnt_class_definition.
        CLEAR t213.
        DATA t214 TYPE REF TO zif_lnt_class_definition.
        CLEAR t214.
        DATA t215 TYPE REF TO zcl_lnt_current_scope.
        DATA t216 TYPE REF TO zcl_lnt_current_scope.
        DATA(t217) = CAST zcl_lnt_syntax_input( t2 ).
        t216 = t217->scope.
        t215 = t216.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        DATA(t220) = abap_true.
        IF t220 = abap_true.
          DATA t221 TYPE string.
          DATA(t222) = CAST zlnt_runtime_opti_4ba3bdccd169( t157 ).
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
        t218 = t219.
        DATA t225 TYPE REF TO zif_lnt_class_definition.
        CLEAR t225.
        DATA(t226) = VALUE abap_bool( ).
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t228) = CAST zlnt_runtime_opti_4ba3bdccd169( t218 ).
        t227 = t228.
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        t229 = t230.
        DATA(t231) = VALUE abap_bool( ).
        DATA(t232) = CAST zlnt_runtime_opti_4ba3bdccd169( t227 ).
        IF t232 IS INITIAL.
          t231 = abap_true.
        ELSEIF t232->has = abap_false.
          t231 = abap_true.
        ENDIF.
        t226 = t231.
        IF t226 = abap_true.
          DATA t233 TYPE REF TO zif_lnt_class_definition.
          CLEAR t233.
          t225 = t233.
        ELSE.
          DATA t234 TYPE REF TO zif_lnt_class_definition.
          CLEAR t234.
          DATA t235 TYPE REF TO zif_lnt_class_definition.
          CLEAR t235.
          DATA t236 TYPE REF TO zif_lnt_class_definition.
          CLEAR t236.
          DATA t237 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t238 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t239) = CAST zcl_lnt_current_scope( t215 ).
          t238 = t239->current.
          t237 = t238.
          DATA t240 TYPE REF TO zif_lnt_class_definition.
          CLEAR t240.
          DATA(t241) = VALUE abap_bool( ).
          DATA(t242) = CAST zcl_lnt_spaghetti_scope_node( t237 ).
          IF t242 IS INITIAL.
            t241 = abap_true.
          ENDIF.
          IF t241 = abap_true.
            DATA t243 TYPE REF TO zif_lnt_class_definition.
            CLEAR t243.
            t240 = t243.
          ELSE.
            DATA t244 TYPE REF TO zif_lnt_class_definition.
            DATA t245 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t246) = CAST zcl_lnt_spaghetti_scope_node( t237 ).
            t245 = t246.
            DATA t247 TYPE string.
            DATA(t248) = CAST zlnt_runtime_opti_4ba3bdccd169( t218 ).
            t247 = t248->value.
            t244 = t245->find_class_definition( i_name = t247 ).
            t240 = t244.
          ENDIF.
          t236 = t240.
          t235 = t236.
          DATA t249 TYPE REF TO zif_lnt_class_definition.
          CLEAR t249.
          DATA t250 TYPE abap_bool.
          DATA(t251) = CAST zif_lnt_class_definition( t235 ).
          t250 = xsdbool( t251 IS BOUND ).
          IF t250 = abap_true.
            DATA t252 TYPE REF TO zif_lnt_class_definition.
            CLEAR t252.
            DATA(t253) = abap_true.
            IF t253 = abap_true.
              DATA t254 TYPE REF TO zif_lnt_class_definition.
              DATA(t255) = CAST zif_lnt_class_definition( t235 ).
              t254 = t255.
              t252 = t254.
            ELSE.
              DATA t256 TYPE REF TO zif_lnt_class_definition.
              CLEAR t256.
              t252 = t256.
            ENDIF.
            t249 = t252.
          ELSE.
            DATA t257 TYPE REF TO zif_lnt_class_definition.
            CLEAR t257.
            DATA t258 TYPE REF TO zcl_lnt_class.
            CLEAR t258.
            DATA t259 TYPE REF TO zcl_lnt_class.
            CLEAR t259.
            DATA t260 TYPE REF TO zif_lnt_object.
            CLEAR t260.
            DATA t261 TYPE REF TO zif_lnt_registry.
            DATA(t262) = CAST zcl_lnt_current_scope( t215 ).
            t261 = t262->reg.
            DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t263.
            DATA(t264) = abap_true.
            IF t264 = abap_true.
              DATA(t265) = |CLAS|.
              DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t266->has = abap_true.
              t266->value = t265.
              t263 = t266.
            ELSE.
              DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t267.
              t263 = t267.
            ENDIF.
            DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t268.
            DATA(t269) = abap_true.
            IF t269 = abap_true.
              DATA t270 TYPE string.
              DATA(t271) = CAST zlnt_runtime_opti_4ba3bdccd169( t218 ).
              t270 = t271->value.
              DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t272->has = abap_true.
              t272->value = t270.
              t268 = t272.
            ELSE.
              DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t273.
              t268 = t273.
            ENDIF.
            t260 = t261->get_object( i_type_9913 = t263 i_name = t268 ).
            DATA t274 TYPE REF TO object.
            t274 = t260.
            t259 ?= t274.
            t258 = t259.
            DATA t275 TYPE REF TO zif_lnt_class_definition.
            CLEAR t275.
            DATA t276 TYPE abap_bool.
            DATA(t277) = CAST zcl_lnt_class( t258 ).
            t276 = xsdbool( t277 IS BOUND ).
            IF t276 = abap_true.
              DATA t278 TYPE REF TO zif_lnt_class_definition.
              DATA t279 TYPE REF TO zcl_lnt_class.
              DATA(t280) = CAST zcl_lnt_class( t258 ).
              t279 = t280.
              t278 = t279->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t275 = t278.
            ELSE.
              DATA t281 TYPE REF TO zif_lnt_class_definition.
              CLEAR t281.
              t275 = t281.
            ENDIF.
            t257 = t275.
            t249 = t257.
          ENDIF.
          t234 = t249.
          t225 = t234.
        ENDIF.
        t214 = t225.
        t213 = t214.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t283.
        t282 = t283.
        DATA(t284) = VALUE abap_bool( ).
        DATA(t285) = CAST zif_lnt_class_definition( t213 ).
        IF t285 IS INITIAL.
          t284 = abap_true.
        ENDIF.
        t212 = t284.
        t203 = t212.
      ENDIF.
      IF t203 = abap_true.
        DATA t286 TYPE string.
        DATA t287 TYPE string.
        DATA t288 TYPE string.
        DATA(t289) = |Class "|.
        DATA t290 TYPE string.
        DATA(t291) = CAST zlnt_runtime_opti_4ba3bdccd169( t157 ).
        t290 = t291->value.
        DATA(t292) = strlen( t289 ).
        t288 = |{ t289 }{ t290 }|.
        DATA(t293) = |" not found/released|.
        DATA(t294) = strlen( t288 ).
        t287 = |{ t288 }{ t293 }|.
        t286 = t287.
        DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t296) = CAST zcl_lnt_syntax_input( t2 ).
        t295 = t296->issues.
        DATA t297 TYPE REF TO zcl_lnt_issue.
        DATA(t298) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t299 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t300) = CAST zcl_lnt_expression_node( t1 ).
        t299 = t300->get_first_token( ).
        DATA(t301) = t286.
        DATA t302 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t302.
        t297 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t298 i_token = t299 i_message_26cb = t301 i_fix = t302 ).
        APPEND t297 TO t295->items.
        DATA t303 TYPE REF TO zcl_lnt_void_type.
        CLEAR t303.
        DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t304.
        DATA(t305) = abap_true.
        IF t305 = abap_true.
          DATA(t306) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t307->has = abap_true.
          t307->value = t306.
          t304 = t307.
        ELSE.
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t308.
          t304 = t308.
        ENDIF.
        DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t309.
        t303 = zcl_lnt_void_type=>get_db65( i_voided = t304 i_qualified_name = t309 ).
        result = t303.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t310 TYPE abap_bool.
    DATA(t311) = CAST zif_lnt_union_b6d4892d( t33 ).
    t310 = xsdbool( t311 IS BOUND AND t311 IS INSTANCE OF zcl_lnt_void_type ).
    IF t310 = abap_true.
      DO.
        DATA t312 TYPE abap_bool.
        DATA t313 TYPE i.
        DATA(t314) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        t313 = lines( t314->items ).
        DATA(t315) = 0.
        t312 = xsdbool( t313 > t315 ).
        IF t312 = abap_false.
          EXIT.
        ENDIF.
        DATA t316 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t317 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t318) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        DATA t319 TYPE REF TO object.
        t319 = t318->shift( ).
        t317 ?= t319.
        t316 = t317.
        DATA t320 TYPE abap_bool.
        DATA t321 TYPE abap_bool.
        DATA(t322) = CAST zif_lnt_union_4cf1d054( t316 ).
        t321 = xsdbool( t322 IS BOUND AND t322 IS INSTANCE OF zcl_lnt_expression_node ).
        t320 = t321.
        IF t321 = abap_true.
          DATA t323 TYPE abap_bool.
          DATA t324 TYPE REF TO zif_lnt_statement_runnable.
          DATA t325 TYPE REF TO zcl_lnt_expression_node.
          DATA(t326) = CAST zif_lnt_union_4cf1d054( t316 ).
          DATA t327 TYPE REF TO object.
          t327 = t326.
          t325 ?= t327.
          t324 = t325->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t323 = xsdbool( t324 IS BOUND AND t324 IS INSTANCE OF zcl_lnt_st_dynamic ).
          t320 = t323.
        ENDIF.
        IF t320 = abap_true.
          DATA t328 TYPE REF TO zcl_lnt_expression_node.
          DATA(t329) = CAST zif_lnt_union_4cf1d054( t316 ).
          DATA t330 TYPE REF TO object.
          t330 = t329.
          t328 ?= t330.
          DATA(t331) = CAST zcl_lnt_syntax_input( t2 ).
          zcl_lnt_sy_dynamic=>run_syntax( i_node = t328 i_input_967e = t331 ).
        ENDIF.
      ENDDO.
      DATA t332 TYPE REF TO zcl_lnt_void_type.
      DATA(t333) = CAST zif_lnt_union_b6d4892d( t33 ).
      DATA t334 TYPE REF TO object.
      t334 = t333.
      t332 ?= t334.
      result = t332.
      RETURN.
    ENDIF.
    DO.
      DATA t335 TYPE abap_bool.
      DATA t336 TYPE i.
      DATA(t337) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      t336 = lines( t337->items ).
      DATA(t338) = 0.
      t335 = xsdbool( t336 > t338 ).
      IF t335 = abap_false.
        EXIT.
      ENDIF.
      DATA t339 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t340 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t341) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      DATA t342 TYPE REF TO object.
      t342 = t341->shift( ).
      t340 ?= t342.
      t339 = t340.
      DATA(t343) = VALUE abap_bool( ).
      DATA t344 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t345) = CAST zif_lnt_union_4cf1d054( t339 ).
      t344 = t345.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t347.
      t346 = t347.
      DATA(t348) = VALUE abap_bool( ).
      DATA(t349) = CAST zif_lnt_union_4cf1d054( t344 ).
      IF t349 IS INITIAL.
        t348 = abap_true.
      ENDIF.
      t343 = t348.
      IF t343 = abap_true.
        EXIT.
      ENDIF.
      DATA t350 TYPE abap_bool.
      DATA t351 TYPE REF TO object.
      DATA t352 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t353) = CAST zif_lnt_union_4cf1d054( t339 ).
      t352 = t353.
      t351 = t352->get_db65( ).
      t350 = xsdbool( t351 IS BOUND AND t351 IS INSTANCE OF zcl_lnt_dash ).
      IF t350 = abap_true.
        DATA t354 TYPE abap_bool.
        DATA(t355) = CAST zif_lnt_union_b6d4892d( t33 ).
        t354 = xsdbool( t355 IS BOUND AND t355 IS INSTANCE OF zcl_lnt_unknown_type ).
        IF t354 = abap_true.
          DATA t356 TYPE string.
          DATA(t357) = |Not a structure, type unknown, MethodSource|.
          t356 = t357.
          DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t359) = CAST zcl_lnt_syntax_input( t2 ).
          t358 = t359->issues.
          DATA t360 TYPE REF TO zcl_lnt_issue.
          DATA(t361) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t362 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t363) = CAST zcl_lnt_expression_node( t1 ).
          t362 = t363->get_first_token( ).
          DATA(t364) = t356.
          DATA t365 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t365.
          t360 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t361 i_token = t362 i_message_26cb = t364 i_fix = t365 ).
          APPEND t360 TO t358->items.
          DATA t366 TYPE REF TO zcl_lnt_void_type.
          CLEAR t366.
          DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t367.
          DATA(t368) = abap_true.
          IF t368 = abap_true.
            DATA(t369) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t370->has = abap_true.
            t370->value = t369.
            t367 = t370.
          ELSE.
            DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t371.
            t367 = t371.
          ENDIF.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t372.
          t366 = zcl_lnt_void_type=>get_db65( i_voided = t367 i_qualified_name = t372 ).
          result = t366.
          RETURN.
        ELSE.
          DATA t373 TYPE abap_bool.
          DATA t374 TYPE abap_bool.
          DATA(t375) = CAST zif_lnt_union_b6d4892d( t33 ).
          t374 = xsdbool( t375 IS BOUND AND t375 IS INSTANCE OF zcl_lnt_structure_type ).
          t373 = xsdbool( t374 = abap_false ).
          IF t373 = abap_true.
            DATA t376 TYPE string.
            DATA(t377) = |Not a structure, MethodSource|.
            t376 = t377.
            DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t379) = CAST zcl_lnt_syntax_input( t2 ).
            t378 = t379->issues.
            DATA t380 TYPE REF TO zcl_lnt_issue.
            DATA(t381) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t382 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t383) = CAST zcl_lnt_expression_node( t1 ).
            t382 = t383->get_first_token( ).
            DATA(t384) = t376.
            DATA t385 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t385.
            t380 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t381 i_token = t382 i_message_26cb = t384 i_fix = t385 ).
            APPEND t380 TO t378->items.
            DATA t386 TYPE REF TO zcl_lnt_void_type.
            CLEAR t386.
            DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t387.
            DATA(t388) = abap_true.
            IF t388 = abap_true.
              DATA(t389) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t390->has = abap_true.
              t390->value = t389.
              t387 = t390.
            ELSE.
              DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t391.
              t387 = t391.
            ENDIF.
            DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t392.
            t386 = zcl_lnt_void_type=>get_db65( i_voided = t387 i_qualified_name = t392 ).
            result = t386.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t393 TYPE abap_bool.
        DATA t394 TYPE abap_bool.
        DATA t395 TYPE REF TO object.
        DATA t396 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t397) = CAST zif_lnt_union_4cf1d054( t339 ).
        t396 = t397.
        t395 = t396->get_db65( ).
        t394 = xsdbool( t395 IS BOUND AND t395 IS INSTANCE OF zcl_lnt_instance_arrow ).
        t393 = t394.
        IF t394 = abap_false.
          DATA t398 TYPE abap_bool.
          DATA t399 TYPE REF TO object.
          DATA t400 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t401) = CAST zif_lnt_union_4cf1d054( t339 ).
          t400 = t401.
          t399 = t400->get_db65( ).
          t398 = xsdbool( t399 IS BOUND AND t399 IS INSTANCE OF zcl_lnt_static_arrow ).
          t393 = t398.
        ENDIF.
        IF t393 = abap_true.
        ELSE.
          DATA t402 TYPE abap_bool.
          DATA t403 TYPE abap_bool.
          DATA t404 TYPE REF TO object.
          DATA t405 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t406) = CAST zif_lnt_union_4cf1d054( t339 ).
          t405 = t406.
          t404 = t405->get_db65( ).
          t403 = xsdbool( t404 IS BOUND AND t404 IS INSTANCE OF zcl_lnt_st_attribute_name ).
          t402 = t403.
          IF t403 = abap_false.
            DATA t407 TYPE abap_bool.
            DATA t408 TYPE REF TO object.
            DATA t409 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t410) = CAST zif_lnt_union_4cf1d054( t339 ).
            t409 = t410.
            t408 = t409->get_db65( ).
            t407 = xsdbool( t408 IS BOUND AND t408 IS INSTANCE OF zcl_lnt_st_source_field ).
            t402 = t407.
          ENDIF.
          IF t402 = abap_true.
            DATA t411 TYPE abap_bool.
            DATA(t412) = CAST zif_lnt_union_b6d4892d( t33 ).
            t411 = xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_abstract_type ).
            IF t411 = abap_true.
              DATA t413 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t413.
              DATA t414 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t414.
              DATA t415 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t415.
              DATA(t416) = abap_true.
              IF t416 = abap_true.
                DATA t417 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t418) = CAST zif_lnt_union_b6d4892d( t33 ).
                DATA t419 TYPE REF TO object.
                t419 = t418.
                t417 ?= t419.
                t415 = t417.
              ELSE.
                DATA t420 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t420.
                t415 = t420.
              ENDIF.
              DATA t421 TYPE REF TO zif_lnt_node.
              DATA t422 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t423) = CAST zif_lnt_union_4cf1d054( t339 ).
              t422 = t423.
              t421 ?= t422.
              DATA(t424) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t425.
              DATA(t426) = abap_true.
              IF t426 = abap_true.
                DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t428) = |Read From|.
                CREATE OBJECT t427.
                t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t427->sval = t428.
                t425 = t427.
              ELSE.
                DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t429.
                t425 = t429.
              ENDIF.
              DATA t430 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t430.
              DATA(t431) = abap_true.
              IF t431 = abap_true.
                DATA(t432) = abap_false.
                DATA(t433) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t433->has = abap_true.
                t433->value = t432.
                t430 = t433.
              ELSE.
                DATA t434 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t434.
                t430 = t434.
              ENDIF.
              t414 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t415 i_node = t421 i_input_967e = t424 i_type_9913 = t425 i_error = t430 ).
              t413 = t414.
              DATA(t435) = VALUE abap_bool( ).
              DATA t436 TYPE abap_bool.
              DATA t437 TYPE abap_bool.
              DATA(t438) = CAST zcl_lnt_abstract_type( t413 ).
              t437 = xsdbool( t438 IS BOUND AND t438 IS INSTANCE OF zcl_lnt_void_type ).
              t436 = t437.
              IF t437 = abap_true.
                DATA(t439) = VALUE abap_bool( ).
                DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t441 TYPE REF TO zcl_lnt_void_type.
                DATA t442 TYPE REF TO zcl_lnt_void_type.
                DATA(t443) = CAST zcl_lnt_abstract_type( t413 ).
                t442 ?= t443.
                t441 = t442.
                DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t445) = CAST zcl_lnt_void_type( t441 ).
                t444 = t445->voided.
                t440 = t444.
                DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t446.
                DATA(t447) = abap_true.
                IF t447 = abap_true.
                  DATA(t448) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t449) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t449->has = abap_true.
                  t449->value = t448.
                  t446 = t449.
                ELSE.
                  DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t450.
                  t446 = t450.
                ENDIF.
                DATA(t451) = VALUE abap_bool( ).
                DATA(t452) = VALUE abap_bool( ).
                IF t440 IS BOUND.
                  t451 = t440->has.
                ENDIF.
                IF t446 IS BOUND.
                  t452 = t446->has.
                ENDIF.
                IF t451 = t452.
                  IF t451 = abap_false.
                    t439 = abap_true.
                  ELSEIF t440->value = t446->value.
                    t439 = abap_true.
                  ENDIF.
                ENDIF.
                t436 = t439.
              ENDIF.
              t435 = t436.
              DATA t453 TYPE abap_bool.
              DATA(t454) = t435.
              DATA(t455) = abap_false.
              t453 = xsdbool( t454 = t455 ).
              IF t453 = abap_true.
                DATA(t456) = CAST zcl_lnt_abstract_type( t413 ).
                t33 = t456.
                CONTINUE.
              ENDIF.
            ENDIF.
            DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t457.
            DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t458.
            DATA t459 TYPE abap_bool.
            DATA(t460) = CAST zif_lnt_union_b6d4892d( t33 ).
            t459 = xsdbool( t460 IS BOUND AND t460 IS INSTANCE OF zcl_lnt_object_reference_type ).
            IF t459 = abap_true.
              DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t461.
              DATA(t462) = abap_true.
              IF t462 = abap_true.
                DATA(t463) = VALUE string( ).
                DATA t464 TYPE REF TO zcl_lnt_object_reference_type.
                DATA t465 TYPE REF TO zcl_lnt_object_reference_type.
                DATA(t466) = CAST zif_lnt_union_b6d4892d( t33 ).
                DATA t467 TYPE REF TO object.
                t467 = t466.
                t465 ?= t467.
                t464 = t465.
                DATA(t468) = VALUE string( ).
                DATA t469 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t470 TYPE REF TO zcl_lnt_fi_identifier.
                DATA(t471) = CAST zcl_lnt_object_reference_type( t464 ).
                t470 = t471->identifier.
                t469 = t470.
                DATA(t472) = VALUE string( ).
                DATA t473 TYPE string.
                DATA t474 TYPE string.
                DATA t475 TYPE REF TO zcl_lnt_abstract_token.
                DATA t476 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t477) = CAST zcl_lnt_fi_identifier( t469 ).
                t476 = t477->token.
                t475 = t476.
                DATA t478 TYPE string.
                DATA(t479) = CAST zcl_lnt_abstract_token( t475 ).
                t478 = t479->str.
                t474 = t478.
                t473 = t474.
                DATA(t480) = VALUE abap_bool( ).
                DATA(t481) = VALUE string( ).
                DATA(t482) = t473.
                DATA(t483) = 0.
                DATA(t484) = 1.
                DATA(t485) = strlen( t482 ).
                IF t483 < 0.
                  t483 = t483 + t485.
                  IF t483 < 0.
                    t483 = 0.
                  ENDIF.
                ENDIF.
                IF t483 > t485 OR t484 <= 0.
                  CLEAR t481.
                ELSE.
                  IF t484 > t485 - t483.
                    t484 = t485 - t483.
                  ENDIF.
                  t481 = t482+t483(t484).
                ENDIF.
                DATA(t486) = |!|.
                t480 = xsdbool( t481 = t486 ).
                IF t480 = abap_true.
                  DATA(t487) = VALUE string( ).
                  DATA t488 TYPE string.
                  DATA(t489) = t473.
                  t488 = t489.
                  DATA(t490) = VALUE string( ).
                  DATA(t491) = t488.
                  DATA(t492) = 1.
                  DATA t493 TYPE i.
                  DATA(t494) = t488.
                  DATA(t495) = strlen( t494 ).
                  t493 = t495.
                  DATA(t496) = strlen( t491 ).
                  IF t492 < 0.
                    t492 = t492 + t496.
                    IF t492 < 0.
                      t492 = 0.
                    ENDIF.
                  ENDIF.
                  IF t492 > t496 OR t493 <= 0.
                    CLEAR t490.
                  ELSE.
                    IF t493 > t496 - t492.
                      t493 = t496 - t492.
                    ENDIF.
                    t490 = t491+t492(t493).
                  ENDIF.
                  t487 = t490.
                  t473 = t487.
                ENDIF.
                DATA(t497) = t473.
                t472 = t497.
                t468 = t472.
                t463 = t468.
                DATA(t498) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t498->has = abap_true.
                t498->value = t463.
                t461 = t498.
              ELSE.
                DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t499.
                t461 = t499.
              ENDIF.
              t458 = t461.
            ELSE.
              DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t500.
              t458 = t500.
            ENDIF.
            t457 = t458.
            DATA t501 TYPE REF TO zcl_lnt_abstract_token.
            DATA t502 TYPE REF TO zcl_lnt_abstract_token.
            DATA t503 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t504) = CAST zif_lnt_union_4cf1d054( t339 ).
            t503 = t504.
            t502 = t503->get_first_token( ).
            t501 = t502.
            DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t505.
            DATA t506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t506.
            DATA t507 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t508) = CAST zcl_lnt_abstract_token( t501 ).
            t507 = t508.
            DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t509.
            DATA(t510) = VALUE abap_bool( ).
            DATA(t511) = CAST zcl_lnt_abstract_token( t507 ).
            IF t511 IS INITIAL.
              t510 = abap_true.
            ENDIF.
            IF t510 = abap_true.
              DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t512.
              t509 = t512.
            ELSE.
              DATA t513 TYPE string.
              DATA t514 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t515) = CAST zcl_lnt_abstract_token( t507 ).
              t514 = t515.
              DATA t516 TYPE string.
              DATA(t517) = CAST zcl_lnt_abstract_token( t514 ).
              t516 = t517->str.
              t513 = t516.
              DATA(t518) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t518->has = abap_true.
              t518->value = t513.
              t509 = t518.
            ENDIF.
            t506 = t509.
            t505 = t506.
            DATA t519 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t519.
            DATA t520 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t520.
            DATA t521 TYPE REF TO zcl_lnt_current_scope.
            DATA t522 TYPE REF TO zcl_lnt_current_scope.
            DATA(t523) = CAST zcl_lnt_syntax_input( t2 ).
            t522 = t523->scope.
            t521 = t522.
            DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t525) = CAST zlnt_runtime_opti_4ba3bdccd169( t457 ).
            t524 = t525.
            DATA t526 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t526.
            DATA(t527) = VALUE abap_bool( ).
            DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t529) = CAST zlnt_runtime_opti_4ba3bdccd169( t524 ).
            t528 = t529.
            DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t531.
            t530 = t531.
            DATA(t532) = VALUE abap_bool( ).
            DATA(t533) = CAST zlnt_runtime_opti_4ba3bdccd169( t528 ).
            IF t533 IS INITIAL.
              t532 = abap_true.
            ELSEIF t533->has = abap_false.
              t532 = abap_true.
            ENDIF.
            t527 = t532.
            IF t527 = abap_true.
              DATA t534 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t534.
              t526 = t534.
            ELSE.
              DATA t535 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t535.
              DATA t536 TYPE REF TO zif_lnt_class_definition.
              CLEAR t536.
              DATA t537 TYPE REF TO zif_lnt_class_definition.
              CLEAR t537.
              DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t538.
              DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t539.
              DATA(t540) = abap_true.
              IF t540 = abap_true.
                DATA t541 TYPE string.
                DATA(t542) = CAST zlnt_runtime_opti_4ba3bdccd169( t524 ).
                t541 = t542->value.
                DATA(t543) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t543->has = abap_true.
                t543->value = t541.
                t539 = t543.
              ELSE.
                DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t544.
                t539 = t544.
              ENDIF.
              t538 = t539.
              DATA t545 TYPE REF TO zif_lnt_class_definition.
              CLEAR t545.
              DATA(t546) = VALUE abap_bool( ).
              DATA t547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t548) = CAST zlnt_runtime_opti_4ba3bdccd169( t538 ).
              t547 = t548.
              DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t550.
              t549 = t550.
              DATA(t551) = VALUE abap_bool( ).
              DATA(t552) = CAST zlnt_runtime_opti_4ba3bdccd169( t547 ).
              IF t552 IS INITIAL.
                t551 = abap_true.
              ELSEIF t552->has = abap_false.
                t551 = abap_true.
              ENDIF.
              t546 = t551.
              IF t546 = abap_true.
                DATA t553 TYPE REF TO zif_lnt_class_definition.
                CLEAR t553.
                t545 = t553.
              ELSE.
                DATA t554 TYPE REF TO zif_lnt_class_definition.
                CLEAR t554.
                DATA t555 TYPE REF TO zif_lnt_class_definition.
                CLEAR t555.
                DATA t556 TYPE REF TO zif_lnt_class_definition.
                CLEAR t556.
                DATA t557 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t558 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t559) = CAST zcl_lnt_current_scope( t521 ).
                t558 = t559->current.
                t557 = t558.
                DATA t560 TYPE REF TO zif_lnt_class_definition.
                CLEAR t560.
                DATA(t561) = VALUE abap_bool( ).
                DATA(t562) = CAST zcl_lnt_spaghetti_scope_node( t557 ).
                IF t562 IS INITIAL.
                  t561 = abap_true.
                ENDIF.
                IF t561 = abap_true.
                  DATA t563 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t563.
                  t560 = t563.
                ELSE.
                  DATA t564 TYPE REF TO zif_lnt_class_definition.
                  DATA t565 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t566) = CAST zcl_lnt_spaghetti_scope_node( t557 ).
                  t565 = t566.
                  DATA t567 TYPE string.
                  DATA(t568) = CAST zlnt_runtime_opti_4ba3bdccd169( t538 ).
                  t567 = t568->value.
                  t564 = t565->find_class_definition( i_name = t567 ).
                  t560 = t564.
                ENDIF.
                t556 = t560.
                t555 = t556.
                DATA t569 TYPE REF TO zif_lnt_class_definition.
                CLEAR t569.
                DATA t570 TYPE abap_bool.
                DATA(t571) = CAST zif_lnt_class_definition( t555 ).
                t570 = xsdbool( t571 IS BOUND ).
                IF t570 = abap_true.
                  DATA t572 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t572.
                  DATA(t573) = abap_true.
                  IF t573 = abap_true.
                    DATA t574 TYPE REF TO zif_lnt_class_definition.
                    DATA(t575) = CAST zif_lnt_class_definition( t555 ).
                    t574 = t575.
                    t572 = t574.
                  ELSE.
                    DATA t576 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t576.
                    t572 = t576.
                  ENDIF.
                  t569 = t572.
                ELSE.
                  DATA t577 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t577.
                  DATA t578 TYPE REF TO zcl_lnt_class.
                  CLEAR t578.
                  DATA t579 TYPE REF TO zcl_lnt_class.
                  CLEAR t579.
                  DATA t580 TYPE REF TO zif_lnt_object.
                  CLEAR t580.
                  DATA t581 TYPE REF TO zif_lnt_registry.
                  DATA(t582) = CAST zcl_lnt_current_scope( t521 ).
                  t581 = t582->reg.
                  DATA t583 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t583.
                  DATA(t584) = abap_true.
                  IF t584 = abap_true.
                    DATA(t585) = |CLAS|.
                    DATA(t586) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t586->has = abap_true.
                    t586->value = t585.
                    t583 = t586.
                  ELSE.
                    DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t587.
                    t583 = t587.
                  ENDIF.
                  DATA t588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t588.
                  DATA(t589) = abap_true.
                  IF t589 = abap_true.
                    DATA t590 TYPE string.
                    DATA(t591) = CAST zlnt_runtime_opti_4ba3bdccd169( t538 ).
                    t590 = t591->value.
                    DATA(t592) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t592->has = abap_true.
                    t592->value = t590.
                    t588 = t592.
                  ELSE.
                    DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t593.
                    t588 = t593.
                  ENDIF.
                  t580 = t581->get_object( i_type_9913 = t583 i_name = t588 ).
                  DATA t594 TYPE REF TO object.
                  t594 = t580.
                  t579 ?= t594.
                  t578 = t579.
                  DATA t595 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t595.
                  DATA t596 TYPE abap_bool.
                  DATA(t597) = CAST zcl_lnt_class( t578 ).
                  t596 = xsdbool( t597 IS BOUND ).
                  IF t596 = abap_true.
                    DATA t598 TYPE REF TO zif_lnt_class_definition.
                    DATA t599 TYPE REF TO zcl_lnt_class.
                    DATA(t600) = CAST zcl_lnt_class( t578 ).
                    t599 = t600.
                    t598 = t599->gt_dfn_ins_src_obj_cls_ts_clss( ).
                    t595 = t598.
                  ELSE.
                    DATA t601 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t601.
                    t595 = t601.
                  ENDIF.
                  t577 = t595.
                  t569 = t577.
                ENDIF.
                t554 = t569.
                t545 = t554.
              ENDIF.
              t537 = t545.
              t536 = t537.
              DATA t602 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t602.
              DATA t603 TYPE abap_bool.
              DATA(t604) = CAST zif_lnt_class_definition( t536 ).
              t603 = xsdbool( t604 IS BOUND ).
              IF t603 = abap_true.
                DATA t605 TYPE REF TO zif_lnt_interface_definition.
                DATA t606 TYPE REF TO zif_lnt_class_definition.
                DATA(t607) = CAST zif_lnt_class_definition( t536 ).
                t606 = t607.
                t605 ?= t606.
                t602 = t605.
              ELSE.
                DATA t608 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t608.
                DATA t609 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t609.
                DATA t610 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t610.
                DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t611.
                DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t612.
                DATA(t613) = abap_true.
                IF t613 = abap_true.
                  DATA t614 TYPE string.
                  DATA(t615) = CAST zlnt_runtime_opti_4ba3bdccd169( t524 ).
                  t614 = t615->value.
                  DATA(t616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t616->has = abap_true.
                  t616->value = t614.
                  t612 = t616.
                ELSE.
                  DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t617.
                  t612 = t617.
                ENDIF.
                t611 = t612.
                DATA t618 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t618.
                DATA(t619) = VALUE abap_bool( ).
                DATA t620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t621) = CAST zlnt_runtime_opti_4ba3bdccd169( t611 ).
                t620 = t621.
                DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t623.
                t622 = t623.
                DATA(t624) = VALUE abap_bool( ).
                DATA(t625) = CAST zlnt_runtime_opti_4ba3bdccd169( t620 ).
                IF t625 IS INITIAL.
                  t624 = abap_true.
                ELSEIF t625->has = abap_false.
                  t624 = abap_true.
                ENDIF.
                t619 = t624.
                IF t619 = abap_true.
                  DATA t626 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t626.
                  t618 = t626.
                ELSE.
                  DATA t627 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t627.
                  DATA t628 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t628.
                  DATA t629 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t629.
                  DATA t630 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA t631 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t632) = CAST zcl_lnt_current_scope( t521 ).
                  t631 = t632->current.
                  t630 = t631.
                  DATA t633 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t633.
                  DATA(t634) = VALUE abap_bool( ).
                  DATA(t635) = CAST zcl_lnt_spaghetti_scope_node( t630 ).
                  IF t635 IS INITIAL.
                    t634 = abap_true.
                  ENDIF.
                  IF t634 = abap_true.
                    DATA t636 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t636.
                    t633 = t636.
                  ELSE.
                    DATA t637 TYPE REF TO zif_lnt_interface_definition.
                    DATA t638 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    DATA(t639) = CAST zcl_lnt_spaghetti_scope_node( t630 ).
                    t638 = t639.
                    DATA t640 TYPE string.
                    DATA(t641) = CAST zlnt_runtime_opti_4ba3bdccd169( t611 ).
                    t640 = t641->value.
                    t637 = t638->find_interface_definition( i_name = t640 ).
                    t633 = t637.
                  ENDIF.
                  t629 = t633.
                  t628 = t629.
                  DATA t642 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t642.
                  DATA t643 TYPE abap_bool.
                  DATA(t644) = CAST zif_lnt_interface_definition( t628 ).
                  t643 = xsdbool( t644 IS BOUND ).
                  IF t643 = abap_true.
                    DATA t645 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t645.
                    DATA(t646) = abap_true.
                    IF t646 = abap_true.
                      DATA t647 TYPE REF TO zif_lnt_interface_definition.
                      DATA(t648) = CAST zif_lnt_interface_definition( t628 ).
                      t647 = t648.
                      t645 = t647.
                    ELSE.
                      DATA t649 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t649.
                      t645 = t649.
                    ENDIF.
                    t642 = t645.
                  ELSE.
                    DATA t650 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t650.
                    DATA t651 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t651.
                    DATA t652 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t652.
                    DATA t653 TYPE REF TO zif_lnt_object.
                    CLEAR t653.
                    DATA t654 TYPE REF TO zif_lnt_registry.
                    DATA(t655) = CAST zcl_lnt_current_scope( t521 ).
                    t654 = t655->reg.
                    DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t656.
                    DATA(t657) = abap_true.
                    IF t657 = abap_true.
                      DATA(t658) = |INTF|.
                      DATA(t659) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t659->has = abap_true.
                      t659->value = t658.
                      t656 = t659.
                    ELSE.
                      DATA t660 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t660.
                      t656 = t660.
                    ENDIF.
                    DATA t661 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t661.
                    DATA(t662) = abap_true.
                    IF t662 = abap_true.
                      DATA t663 TYPE string.
                      DATA(t664) = CAST zlnt_runtime_opti_4ba3bdccd169( t611 ).
                      t663 = t664->value.
                      DATA(t665) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t665->has = abap_true.
                      t665->value = t663.
                      t661 = t665.
                    ELSE.
                      DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t666.
                      t661 = t666.
                    ENDIF.
                    t653 = t654->get_object( i_type_9913 = t656 i_name = t661 ).
                    DATA t667 TYPE REF TO object.
                    t667 = t653.
                    t652 ?= t667.
                    t651 = t652.
                    DATA t668 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t668.
                    DATA t669 TYPE abap_bool.
                    DATA(t670) = CAST zcl_lnt_ob_interface( t651 ).
                    t669 = xsdbool( t670 IS BOUND ).
                    IF t669 = abap_true.
                      DATA t671 TYPE REF TO zif_lnt_interface_definition.
                      DATA t672 TYPE REF TO zcl_lnt_ob_interface.
                      DATA t673 TYPE REF TO zcl_lnt_ob_interface.
                      DATA(t674) = CAST zcl_lnt_ob_interface( t651 ).
                      t673 = t674.
                      t672 = t673.
                      DATA t675 TYPE REF TO zif_lnt_interface_definition.
                      DATA(t676) = CAST zcl_lnt_ob_interface( t672 ).
                      t675 = t676->def.
                      t671 = t675.
                      t668 = t671.
                    ELSE.
                      DATA t677 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t677.
                      t668 = t677.
                    ENDIF.
                    t650 = t668.
                    t642 = t650.
                  ENDIF.
                  t627 = t642.
                  t618 = t627.
                ENDIF.
                t610 = t618.
                t609 = t610.
                DATA t678 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t678.
                DATA t679 TYPE abap_bool.
                DATA(t680) = CAST zif_lnt_interface_definition( t609 ).
                t679 = xsdbool( t680 IS BOUND ).
                IF t679 = abap_true.
                  DATA t681 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t681.
                  DATA(t682) = abap_true.
                  IF t682 = abap_true.
                    DATA t683 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t684) = CAST zif_lnt_interface_definition( t609 ).
                    t683 = t684.
                    t681 = t683.
                  ELSE.
                    DATA t685 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t685.
                    t681 = t685.
                  ENDIF.
                  t678 = t681.
                ELSE.
                  DATA t686 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t686.
                  t678 = t686.
                ENDIF.
                t608 = t678.
                t602 = t608.
              ENDIF.
              t535 = t602.
              t526 = t535.
            ENDIF.
            t520 = t526.
            t519 = t520.
            DATA t687 TYPE REF TO zcl_lnt_shape_a38e878f.
            DATA t688 TYPE REF TO zcl_lnt_shape_a38e878f.
            DATA(t689) = CAST zcl_lnt_object_oriented( t3 ).
            DATA(t690) = CAST zif_lnt_interface_definition( t519 ).
            DATA(t691) = CAST zlnt_runtime_opti_4ba3bdccd169( t505 ).
            t688 = t689->search_method_name( i_def = t690 i_name = t691 ).
            t687 = t688.
            DATA t692 TYPE REF TO zif_lnt_method_definition.
            DATA t693 TYPE REF TO zif_lnt_method_definition.
            DATA(t694) = CAST zcl_lnt_shape_a38e878f( t687 ).
            t693 = t694->method.
            t692 = t693.
            DATA t695 TYPE REF TO zif_lnt_interface_definition.
            DATA t696 TYPE REF TO zif_lnt_interface_definition.
            DATA(t697) = CAST zcl_lnt_shape_a38e878f( t687 ).
            t696 = t697->def.
            t695 = t696.
            DATA(t698) = VALUE abap_bool( ).
            DATA(t699) = VALUE abap_bool( ).
            DATA t700 TYPE abap_bool.
            DATA(t701) = t40.
            t700 = t701.
            IF t701 = abap_true.
              DATA t702 TYPE abap_bool.
              DATA t703 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t704) = CAST zif_lnt_union_4cf1d054( t339 ).
              t703 = t704.
              DATA t705 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t706) = CAST zif_lnt_union_4cf1d054( t15 ).
              t705 = t706.
              t702 = xsdbool( t703 = t705 ).
              t700 = t702.
            ENDIF.
            t699 = t700.
            IF t700 = abap_true.
              DATA(t707) = VALUE abap_bool( ).
              DATA t708 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t708.
              DATA t709 TYPE REF TO zif_lnt_method_definition.
              DATA(t710) = CAST zif_lnt_method_definition( t692 ).
              t709 = t710.
              DATA t711 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t711.
              DATA(t712) = VALUE abap_bool( ).
              DATA(t713) = CAST zif_lnt_method_definition( t709 ).
              IF t713 IS INITIAL.
                t712 = abap_true.
              ENDIF.
              IF t712 = abap_true.
                DATA t714 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t714.
                t711 = t714.
              ELSE.
                DATA t715 TYPE abap_bool.
                DATA t716 TYPE REF TO zif_lnt_method_definition.
                DATA(t717) = CAST zif_lnt_method_definition( t709 ).
                t716 = t717.
                t715 = t716->is_static_4685( ).
                DATA(t718) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t718->has = abap_true.
                t718->value = t715.
                t711 = t718.
              ENDIF.
              t708 = t711.
              DATA t719 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t719.
              DATA(t720) = abap_true.
              IF t720 = abap_true.
                DATA(t721) = abap_false.
                DATA(t722) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t722->has = abap_true.
                t722->value = t721.
                t719 = t722.
              ELSE.
                DATA t723 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t723.
                t719 = t723.
              ENDIF.
              DATA(t724) = VALUE abap_bool( ).
              DATA(t725) = VALUE abap_bool( ).
              IF t708 IS BOUND.
                t724 = t708->has.
              ENDIF.
              IF t719 IS BOUND.
                t725 = t719->has.
              ENDIF.
              IF t724 = t725.
                IF t724 = abap_false.
                  t707 = abap_true.
                ELSEIF t708->value = t719->value.
                  t707 = abap_true.
                ENDIF.
              ENDIF.
              t699 = t707.
            ENDIF.
            t698 = t699.
            IF t699 = abap_true.
              DATA t726 TYPE abap_bool.
              DATA t727 TYPE abap_bool.
              DATA t728 TYPE REF TO zcl_lnt_current_scope.
              DATA(t729) = CAST zcl_lnt_syntax_input( t2 ).
              t728 = t729->scope.
              t727 = t728->is_in_static_method( ).
              DATA(t730) = abap_true.
              t726 = xsdbool( t727 = t730 ).
              t698 = t726.
            ENDIF.
            IF t698 = abap_true.
              DATA(t731) = VALUE string( ).
              DATA(t732) = VALUE string( ).
              DATA(t733) = VALUE string( ).
              DATA(t734) = |Method "|.
              DATA(t735) = VALUE string( ).
              DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t737) = CAST zlnt_runtime_opti_4ba3bdccd169( t505 ).
              t736 = t737.
              DATA(t738) = VALUE string( ).
              DATA(t739) = VALUE abap_bool( ).
              DATA(t740) = CAST zlnt_runtime_opti_4ba3bdccd169( t736 ).
              IF t740 IS INITIAL.
                t739 = abap_true.
              ELSEIF t740->has = abap_false.
                t739 = abap_true.
              ENDIF.
              IF t739 = abap_true.
                DATA(t741) = |undefined|.
                t738 = t741.
              ELSE.
                DATA t742 TYPE string.
                DATA(t743) = CAST zlnt_runtime_opti_4ba3bdccd169( t736 ).
                t742 = t743->value.
                t738 = t742.
              ENDIF.
              t735 = t738.
              DATA(t744) = strlen( t734 ).
              t733 = |{ t734 }{ t735 }|.
              DATA(t745) = |" not static|.
              DATA(t746) = strlen( t733 ).
              t732 = |{ t733 }{ t745 }|.
              t731 = t732.
              DATA t747 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t748) = CAST zcl_lnt_syntax_input( t2 ).
              t747 = t748->issues.
              DATA t749 TYPE REF TO zcl_lnt_issue.
              DATA(t750) = CAST zcl_lnt_syntax_input( t2 ).
              DATA(t751) = CAST zcl_lnt_abstract_token( t501 ).
              DATA(t752) = t731.
              DATA t753 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t753.
              t749 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t750 i_token = t751 i_message_26cb = t752 i_fix = t753 ).
              APPEND t749 TO t747->items.
              DATA t754 TYPE REF TO zcl_lnt_void_type.
              CLEAR t754.
              DATA t755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t755.
              DATA(t756) = abap_true.
              IF t756 = abap_true.
                DATA(t757) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t758) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t758->has = abap_true.
                t758->value = t757.
                t755 = t758.
              ELSE.
                DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t759.
                t755 = t759.
              ENDIF.
              DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t760.
              t754 = zcl_lnt_void_type=>get_db65( i_voided = t755 i_qualified_name = t760 ).
              result = t754.
              RETURN.
            ENDIF.
            DATA(t761) = VALUE abap_bool( ).
            DATA(t762) = VALUE abap_bool( ).
            DATA t763 TYPE REF TO zif_lnt_method_definition.
            DATA(t764) = CAST zif_lnt_method_definition( t692 ).
            t763 = t764.
            DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t766.
            t765 = t766.
            DATA(t767) = VALUE abap_bool( ).
            DATA(t768) = CAST zif_lnt_method_definition( t763 ).
            IF t768 IS INITIAL.
              t767 = abap_true.
            ENDIF.
            t762 = t767.
            t761 = t762.
            IF t762 = abap_true.
              DATA(t769) = VALUE abap_bool( ).
              DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t770.
              DATA t771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t772) = CAST zlnt_runtime_opti_4ba3bdccd169( t505 ).
              t771 = t772.
              DATA t773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t773.
              DATA(t774) = VALUE abap_bool( ).
              DATA(t775) = CAST zlnt_runtime_opti_4ba3bdccd169( t771 ).
              IF t775 IS INITIAL.
                t774 = abap_true.
              ELSEIF t775->has = abap_false.
                t774 = abap_true.
              ENDIF.
              IF t774 = abap_true.
                DATA t776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t776.
                t773 = t776.
              ELSE.
                DATA t777 TYPE string.
                DATA t778 TYPE string.
                DATA(t779) = CAST zlnt_runtime_opti_4ba3bdccd169( t771 ).
                t778 = t779->value.
                DATA(t780) = strlen( t778 ).
                t777 = t778.
                IF t777 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t777 TO UPPER CASE.
                ELSE.
                  t777 = zlnt_runtime_uppe_91169605024d=>full( t777 ).
                ENDIF.
                DATA(t781) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t781->has = abap_true.
                t781->value = t777.
                t773 = t781.
              ENDIF.
              t770 = t773.
              DATA t782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t782.
              DATA(t783) = abap_true.
              IF t783 = abap_true.
                DATA(t784) = |CONSTRUCTOR|.
                DATA(t785) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t785->has = abap_true.
                t785->value = t784.
                t782 = t785.
              ELSE.
                DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t786.
                t782 = t786.
              ENDIF.
              DATA(t787) = VALUE abap_bool( ).
              DATA(t788) = VALUE abap_bool( ).
              IF t770 IS BOUND.
                t787 = t770->has.
              ENDIF.
              IF t782 IS BOUND.
                t788 = t782->has.
              ENDIF.
              IF t787 = t788.
                IF t787 = abap_false.
                  t769 = abap_true.
                ELSEIF t770->value = t782->value.
                  t769 = abap_true.
                ENDIF.
              ENDIF.
              t761 = t769.
            ENDIF.
            IF t761 = abap_true.
              DATA t789 TYPE REF TO zcl_lnt_void_type.
              CLEAR t789.
              DATA t790 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t790.
              DATA(t791) = abap_true.
              IF t791 = abap_true.
                DATA(t792) = |CONSTRUCTOR|.
                DATA(t793) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t793->has = abap_true.
                t793->value = t792.
                t790 = t793.
              ELSE.
                DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t794.
                t790 = t794.
              ENDIF.
              DATA t795 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t795.
              t789 = zcl_lnt_void_type=>get_db65( i_voided = t790 i_qualified_name = t795 ).
              t33 = t789.
            ELSE.
              DATA(t796) = VALUE abap_bool( ).
              DATA(t797) = VALUE abap_bool( ).
              DATA t798 TYPE REF TO zif_lnt_method_definition.
              DATA(t799) = CAST zif_lnt_method_definition( t692 ).
              t798 = t799.
              DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t801.
              t800 = t801.
              DATA(t802) = VALUE abap_bool( ).
              DATA(t803) = CAST zif_lnt_method_definition( t798 ).
              IF t803 IS INITIAL.
                t802 = abap_true.
              ENDIF.
              t797 = t802.
              t796 = t797.
              IF t797 = abap_true.
                DATA t804 TYPE abap_bool.
                DATA t805 TYPE abap_bool.
                DATA(t806) = CAST zif_lnt_union_b6d4892d( t33 ).
                t805 = xsdbool( t806 IS BOUND AND t806 IS INSTANCE OF zcl_lnt_void_type ).
                t804 = xsdbool( t805 = abap_false ).
                t796 = t804.
              ENDIF.
              IF t796 = abap_true.
                DATA(t807) = VALUE string( ).
                DATA(t808) = VALUE string( ).
                DATA(t809) = VALUE string( ).
                DATA(t810) = |Method or attribute "|.
                DATA(t811) = VALUE string( ).
                DATA t812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t813) = CAST zlnt_runtime_opti_4ba3bdccd169( t505 ).
                t812 = t813.
                DATA(t814) = VALUE string( ).
                DATA(t815) = VALUE abap_bool( ).
                DATA(t816) = CAST zlnt_runtime_opti_4ba3bdccd169( t812 ).
                IF t816 IS INITIAL.
                  t815 = abap_true.
                ELSEIF t816->has = abap_false.
                  t815 = abap_true.
                ENDIF.
                IF t815 = abap_true.
                  DATA(t817) = |undefined|.
                  t814 = t817.
                ELSE.
                  DATA t818 TYPE string.
                  DATA(t819) = CAST zlnt_runtime_opti_4ba3bdccd169( t812 ).
                  t818 = t819->value.
                  t814 = t818.
                ENDIF.
                t811 = t814.
                DATA(t820) = strlen( t810 ).
                t809 = |{ t810 }{ t811 }|.
                DATA(t821) = |" not found, MethodSource|.
                DATA(t822) = strlen( t809 ).
                t808 = |{ t809 }{ t821 }|.
                t807 = t808.
                DATA t823 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t824) = CAST zcl_lnt_syntax_input( t2 ).
                t823 = t824->issues.
                DATA t825 TYPE REF TO zcl_lnt_issue.
                DATA(t826) = CAST zcl_lnt_syntax_input( t2 ).
                DATA t827 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t828) = CAST zcl_lnt_expression_node( t1 ).
                t827 = t828->get_first_token( ).
                DATA(t829) = t807.
                DATA t830 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t830.
                t825 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t826 i_token = t827 i_message_26cb = t829 i_fix = t830 ).
                APPEND t825 TO t823->items.
                DATA t831 TYPE REF TO zcl_lnt_void_type.
                CLEAR t831.
                DATA t832 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t832.
                DATA(t833) = abap_true.
                IF t833 = abap_true.
                  DATA(t834) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t835) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t835->has = abap_true.
                  t835->value = t834.
                  t832 = t835.
                ELSE.
                  DATA t836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t836.
                  t832 = t836.
                ENDIF.
                DATA t837 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t837.
                t831 = zcl_lnt_void_type=>get_db65( i_voided = t832 i_qualified_name = t837 ).
                result = t831.
                RETURN.
              ELSE.
                DATA t838 TYPE abap_bool.
                DATA(t839) = CAST zif_lnt_method_definition( t692 ).
                t838 = xsdbool( t839 IS BOUND ).
                IF t838 = abap_true.
                  DATA t840 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t840.
                  DATA t841 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t841.
                  DATA t842 TYPE REF TO zcl_lnt_object_oriented.
                  DATA(t843) = CAST zcl_lnt_object_oriented( t3 ).
                  t842 = t843.
                  DATA t844 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t845) = CAST zif_lnt_interface_definition( t695 ).
                  t844 = t845.
                  DATA t846 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t847) = CAST zlnt_runtime_opti_4ba3bdccd169( t457 ).
                  t846 = t847.
                  DATA t848 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t848.
                  DATA(t849) = VALUE abap_bool( ).
                  DATA t850 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t851) = CAST zif_lnt_interface_definition( t844 ).
                  t850 = t851.
                  DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t853.
                  t852 = t853.
                  DATA(t854) = VALUE abap_bool( ).
                  DATA(t855) = CAST zif_lnt_interface_definition( t850 ).
                  IF t855 IS INITIAL.
                    t854 = abap_true.
                  ENDIF.
                  t849 = t854.
                  IF t849 = abap_true.
                    DATA t856 TYPE REF TO zcl_lnt_ireference_extras.
                    DATA(t857) = CAST zlnt_runtime_opti_4ba3bdccd169( t846 ).
                    DATA t858 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t858.
                    DATA t859 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t859.
                    t856 = NEW zcl_lnt_ireference_extras( i_oo_name = t857 i_oo_type = t858 i_found_qualified = t859 ).
                    t848 = t856.
                  ELSE.
                    DATA t860 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t860.
                    DATA t861 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t861.
                    DATA t862 TYPE REF TO zif_lnt_interface_definition.
                    DATA t863 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t864) = CAST zif_lnt_interface_definition( t844 ).
                    t863 = t864.
                    t862 = t863.
                    DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t865.
                    DATA(t866) = VALUE abap_bool( ).
                    DATA(t867) = CAST zif_lnt_interface_definition( t862 ).
                    IF t867 IS INITIAL.
                      t866 = abap_true.
                    ENDIF.
                    IF t866 = abap_true.
                      DATA t868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t868.
                      t865 = t868.
                    ELSE.
                      DATA t869 TYPE string.
                      DATA(t870) = CAST zif_lnt_interface_definition( t862 ).
                      t869 = t870->get_name( ).
                      DATA(t871) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t871->has = abap_true.
                      t871->value = t869.
                      t865 = t871.
                    ENDIF.
                    t861 = t865.
                    DATA t872 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t872.
                    DATA(t873) = abap_true.
                    IF t873 = abap_true.
                      DATA(t874) = VALUE string( ).
                      DATA t875 TYPE abap_bool.
                      DATA(t876) = CAST zif_lnt_interface_definition( t844 ).
                      t875 = xsdbool( t876 IS BOUND AND t876 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                      IF t875 = abap_true.
                        DATA(t877) = |CLAS|.
                        t874 = t877.
                      ELSE.
                        DATA(t878) = |INTF|.
                        t874 = t878.
                      ENDIF.
                      DATA(t879) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t879->has = abap_true.
                      t879->value = t874.
                      t872 = t879.
                    ELSE.
                      DATA t880 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t880.
                      t872 = t880.
                    ENDIF.
                    DATA t881 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t881.
                    t860 = NEW zcl_lnt_ireference_extras( i_oo_name = t861 i_oo_type = t872 i_found_qualified = t881 ).
                    t848 = t860.
                  ENDIF.
                  t841 = t848.
                  t840 = t841.
                  DATA t882 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t883) = CAST zcl_lnt_syntax_input( t2 ).
                  t882 = t883->scope.
                  DATA t884 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t884.
                  DATA(t885) = abap_true.
                  IF t885 = abap_true.
                    DATA(t886) = CAST zcl_lnt_abstract_token( t501 ).
                    t884 = t886.
                  ELSE.
                    DATA t887 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t887.
                    t884 = t887.
                  ENDIF.
                  DATA t888 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t888.
                  DATA(t889) = abap_true.
                  IF t889 = abap_true.
                    DATA t890 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA t891 TYPE REF TO zif_lnt_method_definition.
                    DATA(t892) = CAST zif_lnt_method_definition( t692 ).
                    t891 = t892.
                    t890 ?= t891.
                    t888 = t890.
                  ELSE.
                    DATA t893 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t893.
                    t888 = t893.
                  ENDIF.
                  DATA t894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t895) = |Method|.
                  CREATE OBJECT t894.
                  t894->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t894->sval = t895.
                  DATA t896 TYPE string.
                  DATA(t897) = CAST zcl_lnt_syntax_input( t2 ).
                  t896 = t897->filename.
                  DATA t898 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t898.
                  DATA(t899) = abap_true.
                  IF t899 = abap_true.
                    DATA(t900) = CAST zcl_lnt_ireference_extras( t840 ).
                    t898 = t900.
                  ELSE.
                    DATA t901 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t901.
                    t898 = t901.
                  ENDIF.
                  t882->add_reference( i_usage = t884 i_referencing = t888 i_type_9913 = t894 i_filename = t896 i_extra = t898 ).
                  DATA t902 TYPE REF TO zif_lnt_union_b6d4892d.
                  DATA t903 TYPE REF TO zif_lnt_method_definition.
                  DATA(t904) = CAST zif_lnt_method_definition( t692 ).
                  t903 = t904.
                  t902 ?= t903.
                  t33 = t902.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t905 TYPE abap_bool.
            DATA t906 TYPE abap_bool.
            DATA t907 TYPE REF TO object.
            DATA t908 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t909) = CAST zif_lnt_union_4cf1d054( t339 ).
            t908 = t909.
            t907 = t908->get_db65( ).
            t906 = xsdbool( t907 IS BOUND AND t907 IS INSTANCE OF zcl_lnt_st_component_name ).
            t905 = t906.
            IF t906 = abap_true.
              DATA t910 TYPE abap_bool.
              DATA(t911) = CAST zif_lnt_union_b6d4892d( t33 ).
              t910 = xsdbool( t911 IS BOUND AND t911 IS INSTANCE OF zcl_lnt_abstract_type ).
              t905 = t910.
            ENDIF.
            IF t905 = abap_true.
              DATA t912 TYPE abap_bool.
              DATA t913 TYPE abap_bool.
              DATA(t914) = CAST zif_lnt_union_b6d4892d( t33 ).
              t913 = xsdbool( t914 IS BOUND AND t914 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t912 = t913.
              IF t913 = abap_true.
                DATA t915 TYPE abap_bool.
                DATA t916 TYPE REF TO zcl_lnt_ty_table_type.
                DATA t917 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t918) = CAST zif_lnt_union_b6d4892d( t33 ).
                DATA t919 TYPE REF TO object.
                t919 = t918.
                t917 ?= t919.
                t916 = t917.
                DATA t920 TYPE abap_bool.
                DATA t921 TYPE REF TO zcl_lnt_itable_options.
                DATA(t922) = CAST zcl_lnt_ty_table_type( t916 ).
                t921 = t922->options.
                t920 = t921->with_header.
                t915 = t920.
                t912 = t915.
              ENDIF.
              IF t912 = abap_true.
                DATA t923 TYPE REF TO zcl_lnt_abstract_type.
                DATA t924 TYPE REF TO zcl_lnt_ty_table_type.
                DATA t925 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t926) = CAST zif_lnt_union_b6d4892d( t33 ).
                DATA t927 TYPE REF TO object.
                t927 = t926.
                t925 ?= t927.
                t924 = t925.
                DATA t928 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t929) = CAST zcl_lnt_ty_table_type( t924 ).
                t928 = t929->row_type.
                t923 = t928.
                t33 = t923.
              ENDIF.
              DATA t930 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t930.
              DATA t931 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t931.
              DATA(t932) = abap_true.
              IF t932 = abap_true.
                DATA t933 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t934) = CAST zif_lnt_union_b6d4892d( t33 ).
                DATA t935 TYPE REF TO object.
                t935 = t934.
                t933 ?= t935.
                t931 = t933.
              ELSE.
                DATA t936 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t936.
                t931 = t936.
              ENDIF.
              DATA t937 TYPE REF TO zif_lnt_node.
              DATA t938 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t939) = CAST zif_lnt_union_4cf1d054( t339 ).
              t938 = t939.
              t937 ?= t938.
              DATA(t940) = CAST zcl_lnt_syntax_input( t2 ).
              t930 = zcl_lnt_sy_component_name=>run_syntax( i_context = t931 i_node = t937 i_input_967e = t940 ).
              t33 = t930.
            ELSE.
              DATA t941 TYPE abap_bool.
              DATA t942 TYPE abap_bool.
              DATA(t943) = CAST zif_lnt_union_4cf1d054( t339 ).
              t942 = xsdbool( t943 IS BOUND AND t943 IS INSTANCE OF zcl_lnt_expression_node ).
              t941 = t942.
              IF t942 = abap_true.
                DATA t944 TYPE abap_bool.
                DATA t945 TYPE REF TO zif_lnt_statement_runnable.
                DATA t946 TYPE REF TO zcl_lnt_expression_node.
                DATA(t947) = CAST zif_lnt_union_4cf1d054( t339 ).
                DATA t948 TYPE REF TO object.
                t948 = t947.
                t946 ?= t948.
                t945 = t946->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                t944 = xsdbool( t945 IS BOUND AND t945 IS INSTANCE OF zcl_lnt_st_dynamic ).
                t941 = t944.
              ENDIF.
              IF t941 = abap_true.
                DATA t949 TYPE REF TO zcl_lnt_expression_node.
                DATA(t950) = CAST zif_lnt_union_4cf1d054( t339 ).
                DATA t951 TYPE REF TO object.
                t951 = t950.
                t949 ?= t951.
                DATA(t952) = CAST zcl_lnt_syntax_input( t2 ).
                zcl_lnt_sy_dynamic=>run_syntax( i_node = t949 i_input_967e = t952 ).
                DATA t953 TYPE REF TO zcl_lnt_void_type.
                CLEAR t953.
                DATA t954 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t954.
                DATA(t955) = abap_true.
                IF t955 = abap_true.
                  DATA(t956) = |Dynamic|.
                  DATA(t957) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t957->has = abap_true.
                  t957->value = t956.
                  t954 = t957.
                ELSE.
                  DATA t958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t958.
                  t954 = t958.
                ENDIF.
                DATA t959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t959.
                t953 = zcl_lnt_void_type=>get_db65( i_voided = t954 i_qualified_name = t959 ).
                t33 = t953.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t960 TYPE abap_bool.
    DATA t961 TYPE abap_bool.
    DATA(t962) = CAST zif_lnt_union_b6d4892d( t33 ).
    t961 = xsdbool( t962 IS BOUND AND t962 IS INSTANCE OF zcl_lnt_abstract_type ).
    t960 = t961.
    IF t961 = abap_true.
      DATA t963 TYPE abap_bool.
      DATA t964 TYPE abap_bool.
      DATA(t965) = CAST zif_lnt_union_b6d4892d( t33 ).
      t964 = xsdbool( t965 IS BOUND AND t965 IS INSTANCE OF zcl_lnt_void_type ).
      t963 = xsdbool( t964 = abap_false ).
      t960 = t963.
    ENDIF.
    IF t960 = abap_true.
      DATA t966 TYPE string.
      DATA(t967) = |Not a method, MethodSource|.
      t966 = t967.
      DATA t968 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t969) = CAST zcl_lnt_syntax_input( t2 ).
      t968 = t969->issues.
      DATA t970 TYPE REF TO zcl_lnt_issue.
      DATA(t971) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t972 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t973) = CAST zcl_lnt_expression_node( t1 ).
      t972 = t973->get_first_token( ).
      DATA(t974) = t966.
      DATA t975 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t975.
      t970 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t971 i_token = t972 i_message_26cb = t974 i_fix = t975 ).
      APPEND t970 TO t968->items.
      DATA t976 TYPE REF TO zcl_lnt_void_type.
      CLEAR t976.
      DATA t977 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t977.
      DATA(t978) = abap_true.
      IF t978 = abap_true.
        DATA(t979) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t980) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t980->has = abap_true.
        t980->value = t979.
        t977 = t980.
      ELSE.
        DATA t981 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t981.
        t977 = t981.
      ENDIF.
      DATA t982 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t982.
      t976 = zcl_lnt_void_type=>get_db65( i_voided = t977 i_qualified_name = t982 ).
      result = t976.
      RETURN.
    ELSE.
      DATA(t983) = VALUE abap_bool( ).
      DATA t984 TYPE REF TO zif_lnt_union_b6d4892d.
      DATA(t985) = CAST zif_lnt_union_b6d4892d( t33 ).
      t984 = t985.
      DATA t986 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t987.
      t986 = t987.
      DATA(t988) = VALUE abap_bool( ).
      DATA(t989) = CAST zif_lnt_union_b6d4892d( t984 ).
      IF t989 IS INITIAL.
        t988 = abap_true.
      ENDIF.
      t983 = t988.
      IF t983 = abap_true.
        DATA t990 TYPE string.
        DATA(t991) = |Not found, MethodSource|.
        t990 = t991.
        DATA t992 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t993) = CAST zcl_lnt_syntax_input( t2 ).
        t992 = t993->issues.
        DATA t994 TYPE REF TO zcl_lnt_issue.
        DATA(t995) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t996 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t997) = CAST zcl_lnt_expression_node( t1 ).
        t996 = t997->get_first_token( ).
        DATA(t998) = t990.
        DATA t999 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t999.
        t994 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t995 i_token = t996 i_message_26cb = t998 i_fix = t999 ).
        APPEND t994 TO t992->items.
        DATA t1000 TYPE REF TO zcl_lnt_void_type.
        CLEAR t1000.
        DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1001.
        DATA(t1002) = abap_true.
        IF t1002 = abap_true.
          DATA(t1003) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t1004) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1004->has = abap_true.
          t1004->value = t1003.
          t1001 = t1004.
        ELSE.
          DATA t1005 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1005.
          t1001 = t1005.
        ENDIF.
        DATA t1006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1006.
        t1000 = zcl_lnt_void_type=>get_db65( i_voided = t1001 i_qualified_name = t1006 ).
        result = t1000.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t1007 TYPE REF TO zif_lnt_union_8cd68e5e.
    CLEAR t1007.
    DATA(t1008) = abap_true.
    IF t1008 = abap_true.
      DATA t1009 TYPE REF TO zif_lnt_union_8cd68e5e.
      DATA(t1010) = CAST zif_lnt_union_b6d4892d( t33 ).
      t1009 ?= t1010.
      t1007 = t1009.
    ELSE.
      DATA t1011 TYPE REF TO zif_lnt_union_8cd68e5e.
      CLEAR t1011.
      t1007 = t1011.
    ENDIF.
    result = t1007.

  ENDMETHOD.
  METHOD find_top.
    DATA(t1) = CAST zif_lnt_node( i_first ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO object.
    DATA(t6) = CAST zif_lnt_node( t1 ).
    t5 = t6->get_db65( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_class_name ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t9) = CAST zif_lnt_node( t1 ).
      t8 = t9->get_first_token( ).
      t7 = t8.
      DATA t10 TYPE string.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t13) = CAST zcl_lnt_abstract_token( t7 ).
      t12 = t13.
      DATA t14 TYPE string.
      DATA(t15) = CAST zcl_lnt_abstract_token( t12 ).
      t14 = t15->str.
      t11 = t14.
      t10 = t11.
      DATA t16 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_current_scope.
      DATA t19 TYPE REF TO zcl_lnt_current_scope.
      DATA(t20) = CAST zcl_lnt_syntax_input( t2 ).
      t19 = t20->scope.
      t18 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA(t24) = t10.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = t24.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      t21 = t22.
      DATA t27 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t30) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      t31 = t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t29 ).
      IF t34 IS INITIAL.
        t33 = abap_true.
      ELSEIF t34->has = abap_false.
        t33 = abap_true.
      ENDIF.
      t28 = t33.
      IF t28 = abap_true.
        DATA t35 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t35.
        t27 = t35.
      ELSE.
        DATA t36 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t36.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_class_definition.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA t42 TYPE string.
          DATA(t43) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
          t42 = t43->value.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t42.
          t40 = t44.
        ELSE.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          t40 = t45.
        ENDIF.
        t39 = t40.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        CLEAR t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t49) = CAST zlnt_runtime_opti_4ba3bdccd169( t39 ).
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        t50 = t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
        IF t53 IS INITIAL.
          t52 = abap_true.
        ELSEIF t53->has = abap_false.
          t52 = abap_true.
        ENDIF.
        t47 = t52.
        IF t47 = abap_true.
          DATA t54 TYPE REF TO zif_lnt_class_definition.
          CLEAR t54.
          t46 = t54.
        ELSE.
          DATA t55 TYPE REF TO zif_lnt_class_definition.
          CLEAR t55.
          DATA t56 TYPE REF TO zif_lnt_class_definition.
          CLEAR t56.
          DATA t57 TYPE REF TO zif_lnt_class_definition.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t60) = CAST zcl_lnt_current_scope( t18 ).
          t59 = t60->current.
          t58 = t59.
          DATA t61 TYPE REF TO zif_lnt_class_definition.
          CLEAR t61.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = CAST zcl_lnt_spaghetti_scope_node( t58 ).
          IF t63 IS INITIAL.
            t62 = abap_true.
          ENDIF.
          IF t62 = abap_true.
            DATA t64 TYPE REF TO zif_lnt_class_definition.
            CLEAR t64.
            t61 = t64.
          ELSE.
            DATA t65 TYPE REF TO zif_lnt_class_definition.
            DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t67) = CAST zcl_lnt_spaghetti_scope_node( t58 ).
            t66 = t67.
            DATA t68 TYPE string.
            DATA(t69) = CAST zlnt_runtime_opti_4ba3bdccd169( t39 ).
            t68 = t69->value.
            t65 = t66->find_class_definition( i_name = t68 ).
            t61 = t65.
          ENDIF.
          t57 = t61.
          t56 = t57.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          CLEAR t70.
          DATA t71 TYPE abap_bool.
          DATA(t72) = CAST zif_lnt_class_definition( t56 ).
          t71 = xsdbool( t72 IS BOUND ).
          IF t71 = abap_true.
            DATA t73 TYPE REF TO zif_lnt_class_definition.
            CLEAR t73.
            DATA(t74) = abap_true.
            IF t74 = abap_true.
              DATA t75 TYPE REF TO zif_lnt_class_definition.
              DATA(t76) = CAST zif_lnt_class_definition( t56 ).
              t75 = t76.
              t73 = t75.
            ELSE.
              DATA t77 TYPE REF TO zif_lnt_class_definition.
              CLEAR t77.
              t73 = t77.
            ENDIF.
            t70 = t73.
          ELSE.
            DATA t78 TYPE REF TO zif_lnt_class_definition.
            CLEAR t78.
            DATA t79 TYPE REF TO zcl_lnt_class.
            CLEAR t79.
            DATA t80 TYPE REF TO zcl_lnt_class.
            CLEAR t80.
            DATA t81 TYPE REF TO zif_lnt_object.
            CLEAR t81.
            DATA t82 TYPE REF TO zif_lnt_registry.
            DATA(t83) = CAST zcl_lnt_current_scope( t18 ).
            t82 = t83->reg.
            DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t84.
            DATA(t85) = abap_true.
            IF t85 = abap_true.
              DATA(t86) = |CLAS|.
              DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t87->has = abap_true.
              t87->value = t86.
              t84 = t87.
            ELSE.
              DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t88.
              t84 = t88.
            ENDIF.
            DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t89.
            DATA(t90) = abap_true.
            IF t90 = abap_true.
              DATA t91 TYPE string.
              DATA(t92) = CAST zlnt_runtime_opti_4ba3bdccd169( t39 ).
              t91 = t92->value.
              DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t93->has = abap_true.
              t93->value = t91.
              t89 = t93.
            ELSE.
              DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t94.
              t89 = t94.
            ENDIF.
            t81 = t82->get_object( i_type_9913 = t84 i_name = t89 ).
            DATA t95 TYPE REF TO object.
            t95 = t81.
            t80 ?= t95.
            t79 = t80.
            DATA t96 TYPE REF TO zif_lnt_class_definition.
            CLEAR t96.
            DATA t97 TYPE abap_bool.
            DATA(t98) = CAST zcl_lnt_class( t79 ).
            t97 = xsdbool( t98 IS BOUND ).
            IF t97 = abap_true.
              DATA t99 TYPE REF TO zif_lnt_class_definition.
              DATA t100 TYPE REF TO zcl_lnt_class.
              DATA(t101) = CAST zcl_lnt_class( t79 ).
              t100 = t101.
              t99 = t100->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t96 = t99.
            ELSE.
              DATA t102 TYPE REF TO zif_lnt_class_definition.
              CLEAR t102.
              t96 = t102.
            ENDIF.
            t78 = t96.
            t70 = t78.
          ENDIF.
          t55 = t70.
          t46 = t55.
        ENDIF.
        t38 = t46.
        t37 = t38.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t103.
        DATA t104 TYPE abap_bool.
        DATA(t105) = CAST zif_lnt_class_definition( t37 ).
        t104 = xsdbool( t105 IS BOUND ).
        IF t104 = abap_true.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          DATA(t108) = CAST zif_lnt_class_definition( t37 ).
          t107 = t108.
          t106 ?= t107.
          t103 = t106.
        ELSE.
          DATA t109 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t109.
          DATA t110 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t110.
          DATA t111 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t111.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA t115 TYPE string.
            DATA(t116) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
            t115 = t116->value.
            DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t117->has = abap_true.
            t117->value = t115.
            t113 = t117.
          ELSE.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t118.
            t113 = t118.
          ENDIF.
          t112 = t113.
          DATA t119 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t119.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t122) = CAST zlnt_runtime_opti_4ba3bdccd169( t112 ).
          t121 = t122.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          t123 = t124.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = CAST zlnt_runtime_opti_4ba3bdccd169( t121 ).
          IF t126 IS INITIAL.
            t125 = abap_true.
          ELSEIF t126->has = abap_false.
            t125 = abap_true.
          ENDIF.
          t120 = t125.
          IF t120 = abap_true.
            DATA t127 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t127.
            t119 = t127.
          ELSE.
            DATA t128 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t128.
            DATA t129 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t129.
            DATA t130 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t130.
            DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t133) = CAST zcl_lnt_current_scope( t18 ).
            t132 = t133->current.
            t131 = t132.
            DATA t134 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t134.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = CAST zcl_lnt_spaghetti_scope_node( t131 ).
            IF t136 IS INITIAL.
              t135 = abap_true.
            ENDIF.
            IF t135 = abap_true.
              DATA t137 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t137.
              t134 = t137.
            ELSE.
              DATA t138 TYPE REF TO zif_lnt_interface_definition.
              DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t140) = CAST zcl_lnt_spaghetti_scope_node( t131 ).
              t139 = t140.
              DATA t141 TYPE string.
              DATA(t142) = CAST zlnt_runtime_opti_4ba3bdccd169( t112 ).
              t141 = t142->value.
              t138 = t139->find_interface_definition( i_name = t141 ).
              t134 = t138.
            ENDIF.
            t130 = t134.
            t129 = t130.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t143.
            DATA t144 TYPE abap_bool.
            DATA(t145) = CAST zif_lnt_interface_definition( t129 ).
            t144 = xsdbool( t145 IS BOUND ).
            IF t144 = abap_true.
              DATA t146 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t146.
              DATA(t147) = abap_true.
              IF t147 = abap_true.
                DATA t148 TYPE REF TO zif_lnt_interface_definition.
                DATA(t149) = CAST zif_lnt_interface_definition( t129 ).
                t148 = t149.
                t146 = t148.
              ELSE.
                DATA t150 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t150.
                t146 = t150.
              ENDIF.
              t143 = t146.
            ELSE.
              DATA t151 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t151.
              DATA t152 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t152.
              DATA t153 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t153.
              DATA t154 TYPE REF TO zif_lnt_object.
              CLEAR t154.
              DATA t155 TYPE REF TO zif_lnt_registry.
              DATA(t156) = CAST zcl_lnt_current_scope( t18 ).
              t155 = t156->reg.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              DATA(t158) = abap_true.
              IF t158 = abap_true.
                DATA(t159) = |INTF|.
                DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t160->has = abap_true.
                t160->value = t159.
                t157 = t160.
              ELSE.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                t157 = t161.
              ENDIF.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t162.
              DATA(t163) = abap_true.
              IF t163 = abap_true.
                DATA t164 TYPE string.
                DATA(t165) = CAST zlnt_runtime_opti_4ba3bdccd169( t112 ).
                t164 = t165->value.
                DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t166->has = abap_true.
                t166->value = t164.
                t162 = t166.
              ELSE.
                DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t167.
                t162 = t167.
              ENDIF.
              t154 = t155->get_object( i_type_9913 = t157 i_name = t162 ).
              DATA t168 TYPE REF TO object.
              t168 = t154.
              t153 ?= t168.
              t152 = t153.
              DATA t169 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t169.
              DATA t170 TYPE abap_bool.
              DATA(t171) = CAST zcl_lnt_ob_interface( t152 ).
              t170 = xsdbool( t171 IS BOUND ).
              IF t170 = abap_true.
                DATA t172 TYPE REF TO zif_lnt_interface_definition.
                DATA t173 TYPE REF TO zcl_lnt_ob_interface.
                DATA t174 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t175) = CAST zcl_lnt_ob_interface( t152 ).
                t174 = t175.
                t173 = t174.
                DATA t176 TYPE REF TO zif_lnt_interface_definition.
                DATA(t177) = CAST zcl_lnt_ob_interface( t173 ).
                t176 = t177->def.
                t172 = t176.
                t169 = t172.
              ELSE.
                DATA t178 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t178.
                t169 = t178.
              ENDIF.
              t151 = t169.
              t143 = t151.
            ENDIF.
            t128 = t143.
            t119 = t128.
          ENDIF.
          t111 = t119.
          t110 = t111.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t179.
          DATA t180 TYPE abap_bool.
          DATA(t181) = CAST zif_lnt_interface_definition( t110 ).
          t180 = xsdbool( t181 IS BOUND ).
          IF t180 = abap_true.
            DATA t182 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t182.
            DATA(t183) = abap_true.
            IF t183 = abap_true.
              DATA t184 TYPE REF TO zif_lnt_interface_definition.
              DATA(t185) = CAST zif_lnt_interface_definition( t110 ).
              t184 = t185.
              t182 = t184.
            ELSE.
              DATA t186 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t186.
              t182 = t186.
            ENDIF.
            t179 = t182.
          ELSE.
            DATA t187 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t187.
            t179 = t187.
          ENDIF.
          t109 = t179.
          t103 = t109.
        ENDIF.
        t36 = t103.
        t27 = t36.
      ENDIF.
      t17 = t27.
      t16 = t17.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = VALUE abap_bool( ).
      DATA t190 TYPE REF TO zif_lnt_interface_definition.
      DATA(t191) = CAST zif_lnt_interface_definition( t16 ).
      t190 = t191.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      t192 = t193.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = CAST zif_lnt_interface_definition( t190 ).
      IF t195 IS INITIAL.
        t194 = abap_true.
      ENDIF.
      t189 = t194.
      t188 = t189.
      IF t189 = abap_true.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = VALUE abap_bool( ).
        DATA t198 TYPE REF TO zcl_lnt_ddic.
        DATA t199 TYPE REF TO zcl_lnt_ddic.
        DATA t200 TYPE REF TO zcl_lnt_current_scope.
        DATA t201 TYPE REF TO zcl_lnt_current_scope.
        DATA(t202) = CAST zcl_lnt_syntax_input( t2 ).
        t201 = t202->scope.
        t200 = t201.
        DATA t203 TYPE REF TO zcl_lnt_ddic.
        DATA t204 TYPE REF TO zif_lnt_registry.
        DATA(t205) = CAST zcl_lnt_current_scope( t200 ).
        t204 = t205->reg.
        t203 = NEW zcl_lnt_ddic( i_reg_f149 = t204 ).
        t199 = t203.
        t198 = t199.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        DATA(t208) = abap_true.
        IF t208 = abap_true.
          DATA(t209) = t10.
          DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t210->has = abap_true.
          t210->value = t209.
          t207 = t210.
        ELSE.
          DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t211.
          t207 = t211.
        ENDIF.
        t206 = t207.
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = VALUE abap_bool( ).
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t215) = CAST zlnt_runtime_opti_4ba3bdccd169( t206 ).
        t214 = t215.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        t216 = t217.
        DATA(t218) = VALUE abap_bool( ).
        DATA(t219) = CAST zlnt_runtime_opti_4ba3bdccd169( t214 ).
        IF t219 IS INITIAL.
          t218 = abap_true.
        ELSEIF t219->has = abap_false.
          t218 = abap_true.
        ENDIF.
        t213 = t218.
        IF t213 = abap_true.
          DATA(t220) = abap_true.
          t212 = t220.
        ELSE.
          DATA t221 TYPE abap_bool.
          DATA t222 TYPE REF TO zif_lnt_registry.
          DATA(t223) = CAST zcl_lnt_ddic( t198 ).
          t222 = t223->reg.
          DATA t224 TYPE string.
          DATA(t225) = CAST zlnt_runtime_opti_4ba3bdccd169( t206 ).
          t224 = t225->value.
          t221 = t222->in_error_namespace( i_name = t224 ).
          t212 = t221.
        ENDIF.
        t197 = t212.
        DATA(t226) = abap_false.
        t196 = xsdbool( t197 = t226 ).
        t188 = t196.
      ENDIF.
      IF t188 = abap_true.
        DATA t227 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t227.
        DATA t228 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t228.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        DATA(t230) = abap_true.
        IF t230 = abap_true.
          DATA(t231) = t10.
          DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t232->has = abap_true.
          t232->value = t231.
          t229 = t232.
        ELSE.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          t229 = t233.
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        DATA(t235) = abap_true.
        IF t235 = abap_true.
          DATA(t236) = |Void|.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t236.
          t234 = t237.
        ELSE.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t238.
          t234 = t238.
        ENDIF.
        DATA t239 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t239.
        t228 = NEW zcl_lnt_ireference_extras( i_oo_name = t229 i_oo_type = t234 i_found_qualified = t239 ).
        t227 = t228.
        DATA t240 TYPE REF TO zcl_lnt_current_scope.
        DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
        t240 = t241->scope.
        DATA t242 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t242.
        DATA(t243) = abap_true.
        IF t243 = abap_true.
          DATA(t244) = CAST zcl_lnt_abstract_token( t7 ).
          t242 = t244.
        ELSE.
          DATA t245 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t245.
          t242 = t245.
        ENDIF.
        DATA t246 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t246.
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t248) = |Object (Void)|.
        CREATE OBJECT t247.
        t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t247->sval = t248.
        DATA t249 TYPE string.
        DATA(t250) = CAST zcl_lnt_syntax_input( t2 ).
        t249 = t250->filename.
        DATA t251 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t251.
        DATA(t252) = abap_true.
        IF t252 = abap_true.
          DATA(t253) = CAST zcl_lnt_ireference_extras( t227 ).
          t251 = t253.
        ELSE.
          DATA t254 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t254.
          t251 = t254.
        ENDIF.
        t240->add_reference( i_usage = t242 i_referencing = t246 i_type_9913 = t247 i_filename = t249 i_extra = t251 ).
        DATA t255 TYPE REF TO zcl_lnt_void_type.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA(t257) = abap_true.
        IF t257 = abap_true.
          DATA(t258) = t10.
          DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t259->has = abap_true.
          t259->value = t258.
          t256 = t259.
        ELSE.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          t256 = t260.
        ENDIF.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        t255 = zcl_lnt_void_type=>get_db65( i_voided = t256 i_qualified_name = t261 ).
        result = t255.
        RETURN.
      ELSE.
        DATA(t262) = VALUE abap_bool( ).
        DATA t263 TYPE REF TO zif_lnt_interface_definition.
        DATA(t264) = CAST zif_lnt_interface_definition( t16 ).
        t263 = t264.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        t265 = t266.
        DATA(t267) = VALUE abap_bool( ).
        DATA(t268) = CAST zif_lnt_interface_definition( t263 ).
        IF t268 IS INITIAL.
          t267 = abap_true.
        ENDIF.
        t262 = t267.
        IF t262 = abap_true.
          DATA t269 TYPE string.
          DATA t270 TYPE string.
          DATA t271 TYPE string.
          DATA(t272) = |Class |.
          DATA(t273) = t10.
          DATA(t274) = strlen( t272 ).
          t271 = |{ t272 }{ t273 }|.
          DATA(t275) = | not found|.
          DATA(t276) = strlen( t271 ).
          t270 = |{ t271 }{ t275 }|.
          t269 = t270.
          DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t278) = CAST zcl_lnt_syntax_input( t2 ).
          t277 = t278->issues.
          DATA t279 TYPE REF TO zcl_lnt_issue.
          DATA(t280) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t281 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t282) = CAST zif_lnt_node( t1 ).
          t281 = t282->get_first_token( ).
          DATA(t283) = t269.
          DATA t284 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t284.
          t279 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t280 i_token = t281 i_message_26cb = t283 i_fix = t284 ).
          APPEND t279 TO t277->items.
          DATA t285 TYPE REF TO zcl_lnt_void_type.
          CLEAR t285.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA(t287) = abap_true.
          IF t287 = abap_true.
            DATA(t288) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t289->has = abap_true.
            t289->value = t288.
            t286 = t289.
          ELSE.
            DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t290.
            t286 = t290.
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t291.
          t285 = zcl_lnt_void_type=>get_db65( i_voided = t286 i_qualified_name = t291 ).
          result = t285.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t292 TYPE REF TO zcl_lnt_current_scope.
      DATA(t293) = CAST zcl_lnt_syntax_input( t2 ).
      t292 = t293->scope.
      DATA t294 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t294.
      DATA(t295) = abap_true.
      IF t295 = abap_true.
        DATA t296 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t297) = CAST zif_lnt_node( t1 ).
        t296 = t297->get_first_token( ).
        t294 = t296.
      ELSE.
        DATA t298 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t298.
        t294 = t298.
      ENDIF.
      DATA t299 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t299.
      DATA(t300) = abap_true.
      IF t300 = abap_true.
        DATA t301 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t302 TYPE REF TO zif_lnt_interface_definition.
        DATA(t303) = CAST zif_lnt_interface_definition( t16 ).
        t302 = t303.
        t301 ?= t302.
        t299 = t301.
      ELSE.
        DATA t304 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t304.
        t299 = t304.
      ENDIF.
      DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t306) = |Object|.
      CREATE OBJECT t305.
      t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t305->sval = t306.
      DATA t307 TYPE string.
      DATA(t308) = CAST zcl_lnt_syntax_input( t2 ).
      t307 = t308->filename.
      DATA t309 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t309.
      t292->add_reference( i_usage = t294 i_referencing = t299 i_type_9913 = t305 i_filename = t307 i_extra = t309 ).
      DATA t310 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t311 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t312 TYPE REF TO zif_lnt_interface_definition.
      DATA(t313) = CAST zif_lnt_interface_definition( t16 ).
      t312 = t313.
      t311 ?= t312.
      DATA t314 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t314.
      t310 = NEW zcl_lnt_object_reference_type( i_id = t311 i_extra = t314 ).
      result = t310.
      RETURN.
    ELSE.
      DATA(t315) = VALUE abap_bool( ).
      DATA t316 TYPE abap_bool.
      DATA t317 TYPE abap_bool.
      DATA(t318) = CAST zif_lnt_node( t1 ).
      t317 = xsdbool( t318 IS BOUND AND t318 IS INSTANCE OF zcl_lnt_expression_node ).
      t316 = t317.
      IF t317 = abap_true.
        DATA t319 TYPE abap_bool.
        DATA t320 TYPE REF TO zif_lnt_statement_runnable.
        DATA t321 TYPE REF TO zcl_lnt_expression_node.
        DATA(t322) = CAST zif_lnt_node( t1 ).
        DATA t323 TYPE REF TO object.
        t323 = t322.
        t321 ?= t323.
        t320 = t321->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t319 = xsdbool( t320 IS BOUND AND t320 IS INSTANCE OF zcl_lnt_st_source_field ).
        t316 = t319.
      ENDIF.
      t315 = t316.
      IF t316 = abap_true.
        DATA t324 TYPE abap_bool.
        DATA t325 TYPE i.
        DATA(t326) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        t325 = lines( t326->items ).
        DATA(t327) = 0.
        t324 = xsdbool( t325 > t327 ).
        t315 = t324.
      ENDIF.
      IF t315 = abap_true.
        DATA t328 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t328.
        DATA t329 TYPE REF TO zcl_lnt_expression_node.
        DATA(t330) = CAST zif_lnt_node( t1 ).
        DATA t331 TYPE REF TO object.
        t331 = t330.
        t329 ?= t331.
        DATA(t332) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t333.
        DATA(t334) = abap_true.
        IF t334 = abap_true.
          DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t336) = |Read From|.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t335->sval = t336.
          t333 = t335.
        ELSE.
          DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t337.
          t333 = t337.
        ENDIF.
        DATA t338 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t338.
        t328 = zcl_lnt_sy_source_field=>run_syntax( i_node = t329 i_input_967e = t332 i_type_9913 = t333 i_error = t338 ).
        result = t328.
        RETURN.
      ELSE.
        DATA t339 TYPE abap_bool.
        DATA t340 TYPE abap_bool.
        DATA(t341) = CAST zif_lnt_node( t1 ).
        t340 = xsdbool( t341 IS BOUND AND t341 IS INSTANCE OF zcl_lnt_expression_node ).
        t339 = t340.
        IF t340 = abap_true.
          DATA t342 TYPE abap_bool.
          DATA t343 TYPE REF TO zif_lnt_statement_runnable.
          DATA t344 TYPE REF TO zcl_lnt_expression_node.
          DATA(t345) = CAST zif_lnt_node( t1 ).
          DATA t346 TYPE REF TO object.
          t346 = t345.
          t344 ?= t346.
          t343 = t344->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t342 = xsdbool( t343 IS BOUND AND t343 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
          t339 = t342.
        ENDIF.
        IF t339 = abap_true.
          DATA t347 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t347.
          DATA(t348) = abap_true.
          IF t348 = abap_true.
            DATA t349 TYPE REF TO zcl_lnt_abstract_type.
            DATA t350 TYPE REF TO zcl_lnt_expression_node.
            DATA(t351) = CAST zif_lnt_node( t1 ).
            DATA t352 TYPE REF TO object.
            t352 = t351.
            t350 ?= t352.
            DATA(t353) = CAST zcl_lnt_syntax_input( t2 ).
            t349 = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t350 i_input_967e = t353 ).
            t347 = t349.
          ELSE.
            DATA t354 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t354.
            t347 = t354.
          ENDIF.
          result = t347.
          RETURN.
        ELSE.
          DATA t355 TYPE abap_bool.
          DATA t356 TYPE abap_bool.
          DATA(t357) = CAST zif_lnt_node( t1 ).
          t356 = xsdbool( t357 IS BOUND AND t357 IS INSTANCE OF zcl_lnt_expression_node ).
          t355 = t356.
          IF t356 = abap_true.
            DATA t358 TYPE abap_bool.
            DATA t359 TYPE REF TO zif_lnt_statement_runnable.
            DATA t360 TYPE REF TO zcl_lnt_expression_node.
            DATA(t361) = CAST zif_lnt_node( t1 ).
            DATA t362 TYPE REF TO object.
            t362 = t361.
            t360 ?= t362.
            t359 = t360->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t358 = xsdbool( t359 IS BOUND AND t359 IS INSTANCE OF zcl_lnt_st_dynamic ).
            t355 = t358.
          ENDIF.
          IF t355 = abap_true.
            DATA t363 TYPE REF TO zcl_lnt_expression_node.
            DATA(t364) = CAST zif_lnt_node( t1 ).
            DATA t365 TYPE REF TO object.
            t365 = t364.
            t363 ?= t365.
            DATA(t366) = CAST zcl_lnt_syntax_input( t2 ).
            zcl_lnt_sy_dynamic=>run_syntax( i_node = t363 i_input_967e = t366 ).
            DATA t367 TYPE REF TO zcl_lnt_void_type.
            CLEAR t367.
            DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t368.
            DATA(t369) = abap_true.
            IF t369 = abap_true.
              DATA(t370) = |Dynamic|.
              DATA(t371) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t371->has = abap_true.
              t371->value = t370.
              t368 = t371.
            ELSE.
              DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t372.
              t368 = t372.
            ENDIF.
            DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t373.
            t367 = zcl_lnt_void_type=>get_db65( i_voided = t368 i_qualified_name = t373 ).
            result = t367.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t374 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t374.
    result = t374.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d804_2c0ba40f9348.
  ENDMETHOD.
ENDCLASS.
