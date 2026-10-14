* TS: src/abap/5_syntax/expressions/target.ts:18:1 Target
CLASS zcl_lnt_sy_target DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS find_top IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_target IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    t4 = t5->concat_tokens( ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE i( ).
    DATA(t8) = t3.
    DATA(t9) = |-|.
    DATA(t10) = strlen( t8 ).
    IF t9 IS INITIAL.
      t7 = 0.
    ELSE.
      FIND t9 IN t8 MATCH OFFSET t7.
      IF sy-subrc <> 0.
        t7 = -1.
      ENDIF.
    ENDIF.
    DATA(t11) = 0.
    t6 = xsdbool( t7 >= t11 ).
    IF t6 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_current_scope.
      DATA t15 TYPE REF TO zcl_lnt_current_scope.
      DATA(t16) = CAST zcl_lnt_syntax_input( t2 ).
      t15 = t16->scope.
      t14 = t15.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = t3.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17 = t18.
      DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t26) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      t27 = t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = CAST zlnt_runtime_opti_4ba3bdccd169( t25 ).
      IF t30 IS INITIAL.
        t29 = abap_true.
      ELSEIF t30->has = abap_false.
        t29 = abap_true.
      ENDIF.
      t24 = t29.
      IF t24 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t31.
        t23 = t31.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t37) = CAST zcl_lnt_current_scope( t14 ).
        t36 = t37->current.
        t35 = t36.
        DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t38.
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = CAST zcl_lnt_spaghetti_scope_node( t35 ).
        IF t40 IS INITIAL.
          t39 = abap_true.
        ENDIF.
        IF t39 = abap_true.
          DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t41.
          t38 = t41.
        ELSE.
          DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t44) = CAST zcl_lnt_spaghetti_scope_node( t35 ).
          t43 = t44.
          DATA t45 TYPE string.
          DATA(t46) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
          t45 = t46->value.
          t42 = t43->find_variable( i_name = t45 ).
          t38 = t42.
        ENDIF.
        t34 = t38.
        t33 = t34.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t47.
        DATA t48 TYPE abap_bool.
        DATA(t49) = CAST zcl_lnt_typed_identifier( t33 ).
        t48 = xsdbool( t49 IS BOUND ).
        IF t48 = abap_true.
          DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t50.
          DATA(t51) = abap_true.
          IF t51 = abap_true.
            DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t53) = CAST zcl_lnt_typed_identifier( t33 ).
            t52 = t53.
            t50 = t52.
          ELSE.
            DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t54.
            t50 = t54.
          ENDIF.
          t47 = t50.
        ELSE.
          DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t55.
          DATA(t56) = CAST zcl_lnt_current_scope( t14 ).
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          DATA(t58) = abap_true.
          IF t58 = abap_true.
            DATA t59 TYPE string.
            DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
            t59 = t60->value.
            DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t61->has = abap_true.
            t61->value = t59.
            t57 = t61.
          ELSE.
            DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t62.
            t57 = t62.
          ENDIF.
          t55 = t56->find_type_pool_constant( i_name = t57 ).
          t47 = t55.
        ENDIF.
        t32 = t47.
        t23 = t32.
      ENDIF.
      t13 = t23.
      t12 = t13.
      DATA t63 TYPE abap_bool.
      DATA(t64) = CAST zcl_lnt_typed_identifier( t12 ).
      t63 = xsdbool( t64 IS BOUND ).
      IF t63 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_current_scope.
        DATA(t66) = CAST zcl_lnt_syntax_input( t2 ).
        t65 = t66->scope.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t70) = CAST zcl_lnt_expression_node( t1 ).
          t69 = t70->get_first_token( ).
          t67 = t69.
        ELSE.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t71.
          t67 = t71.
        ENDIF.
        DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t73) = CAST zcl_lnt_typed_identifier( t12 ).
        t72 = t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t75) = |Write To|.
        CREATE OBJECT t74.
        t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t74->sval = t75.
        DATA t76 TYPE string.
        DATA(t77) = CAST zcl_lnt_syntax_input( t2 ).
        t76 = t77->filename.
        DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t78.
        t65->add_reference( i_usage = t67 i_referencing = t72 i_type_9913 = t74 i_filename = t76 i_extra = t78 ).
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type.
          DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t84) = CAST zcl_lnt_typed_identifier( t12 ).
          t83 = t84.
          t82 = t83.
          DATA t85 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t86) = CAST zcl_lnt_typed_identifier( t82 ).
          t85 = t86->type_cba0.
          t81 = t85.
          t79 = t81.
        ELSE.
          DATA t87 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t87.
          t79 = t87.
        ENDIF.
        result = t79.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t91 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t92) = CAST zcl_lnt_expression_node( t1 ).
    t91 = t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t94) = CAST zcl_lnt_abstract_node( t91 ).
    t93 = t94->children.
    t90 = t93.
    t89 ?= t90.
    t88 = t89.
    DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t96 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
    DATA t98 TYPE REF TO object.
    CLEAR t98.
    READ TABLE t97->items INDEX 1 INTO t98.
    t96 ?= t98.
    t95 = t96.
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = VALUE abap_bool( ).
    DATA t101 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t102) = CAST zif_lnt_union_4cf1d054( t95 ).
    t101 = t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    t103 = t104.
    DATA(t105) = VALUE abap_bool( ).
    DATA(t106) = CAST zif_lnt_union_4cf1d054( t101 ).
    IF t106 IS INITIAL.
      t105 = abap_true.
    ENDIF.
    t100 = t105.
    t99 = t100.
    IF t100 = abap_false.
      DATA t107 TYPE abap_bool.
      DATA t108 TYPE abap_bool.
      DATA(t109) = CAST zif_lnt_union_4cf1d054( t95 ).
      t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_expression_node ).
      t107 = xsdbool( t108 = abap_false ).
      t99 = t107.
    ENDIF.
    IF t99 = abap_true.
      DATA t110 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t110.
      result = t110.
      RETURN.
    ENDIF.
    DATA t111 TYPE REF TO zcl_lnt_abstract_type.
    DATA t112 TYPE REF TO zcl_lnt_abstract_type.
    DATA t113 TYPE REF TO zcl_lnt_expression_node.
    DATA(t114) = CAST zif_lnt_union_4cf1d054( t95 ).
    DATA t115 TYPE REF TO object.
    t115 = t114.
    t113 ?= t115.
    DATA(t116) = CAST zcl_lnt_syntax_input( t2 ).
    t112 = zcl_lnt_sy_target=>find_top( i_node = t113 i_input_967e = t116 ).
    t111 = t112.
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t119) = CAST zcl_lnt_abstract_type( t111 ).
    t118 = t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    t120 = t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = CAST zcl_lnt_abstract_type( t118 ).
    IF t123 IS INITIAL.
      t122 = abap_true.
    ENDIF.
    t117 = t122.
    IF t117 = abap_true.
      DATA t124 TYPE string.
      DATA t125 TYPE string.
      DATA t126 TYPE string.
      DATA(t127) = |"|.
      DATA t128 TYPE string.
      DATA t129 TYPE REF TO zcl_lnt_abstract_token.
      DATA t130 TYPE REF TO zcl_lnt_abstract_token.
      DATA t131 TYPE REF TO zcl_lnt_expression_node.
      DATA(t132) = CAST zif_lnt_union_4cf1d054( t95 ).
      DATA t133 TYPE REF TO object.
      t133 = t132.
      t131 ?= t133.
      t130 = t131->get_first_token( ).
      t129 = t130.
      DATA t134 TYPE string.
      DATA(t135) = CAST zcl_lnt_abstract_token( t129 ).
      t134 = t135->str.
      t128 = t134.
      DATA(t136) = strlen( t127 ).
      t126 = |{ t127 }{ t128 }|.
      DATA(t137) = |" not found, Target|.
      DATA(t138) = strlen( t126 ).
      t125 = |{ t126 }{ t137 }|.
      t124 = t125.
      DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t140) = CAST zcl_lnt_syntax_input( t2 ).
      t139 = t140->issues.
      DATA t141 TYPE REF TO zcl_lnt_issue.
      DATA(t142) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t143 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t144) = CAST zcl_lnt_expression_node( t1 ).
      t143 = t144->get_first_token( ).
      DATA(t145) = t124.
      DATA t146 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t146.
      t141 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t142 i_token = t143 i_message_26cb = t145 i_fix = t146 ).
      APPEND t141 TO t139->items.
      DATA t147 TYPE REF TO zcl_lnt_void_type.
      CLEAR t147.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      DATA(t149) = abap_true.
      IF t149 = abap_true.
        DATA(t150) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
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
      t147 = zcl_lnt_void_type=>get_db65( i_voided = t148 i_qualified_name = t153 ).
      result = t147.
      RETURN.
    ENDIF.
    DATA t154 TYPE int8.
    DATA(t155) = CONV int8( 1 ).
    t154 = t155.
    DO.
      DATA t156 TYPE abap_bool.
      DATA(t157) = t154.
      DATA t158 TYPE int8.
      DATA t159 TYPE i.
      DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
      t159 = lines( t160->items ).
      t158 = t159.
      t156 = xsdbool( t157 <= t158 ).
      IF t156 = abap_false.
        EXIT.
      ENDIF.
      DATA t161 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t162 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
      DATA t164 TYPE i.
      DATA(t165) = t154.
      t164 = t165.
      t164 = t164 + 1.
      DATA t166 TYPE REF TO object.
      CLEAR t166.
      READ TABLE t163->items INDEX t164 INTO t166.
      t162 ?= t166.
      t161 = t162.
      DATA(t167) = VALUE abap_bool( ).
      DATA t168 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t169) = CAST zif_lnt_union_4cf1d054( t161 ).
      t168 = t169.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      t170 = t171.
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = CAST zif_lnt_union_4cf1d054( t168 ).
      IF t173 IS INITIAL.
        t172 = abap_true.
      ENDIF.
      t167 = t172.
      IF t167 = abap_true.
        EXIT.
      ENDIF.
      DATA t174 TYPE int8.
      DATA(t175) = t154.
      DATA(t176) = CONV int8( 1 ).
      t174 = t175 + t176.
      IF t174 < range_int8_bound_min OR t174 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t154 = t174.
      DATA t177 TYPE abap_bool.
      DATA t178 TYPE REF TO object.
      DATA(t179) = CAST zif_lnt_union_4cf1d054( t161 ).
      t178 = t179->get_db65( ).
      t177 = xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_dash ).
      IF t177 = abap_true.
        DATA t180 TYPE abap_bool.
        DATA(t181) = CAST zcl_lnt_abstract_type( t111 ).
        t180 = xsdbool( t181 IS BOUND AND t181 IS INSTANCE OF zcl_lnt_unknown_type ).
        IF t180 = abap_true.
          DATA t182 TYPE REF TO zcl_lnt_void_type.
          CLEAR t182.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          DATA(t184) = abap_true.
          IF t184 = abap_true.
            DATA(t185) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t186->has = abap_true.
            t186->value = t185.
            t183 = t186.
          ELSE.
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t187.
            t183 = t187.
          ENDIF.
          DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t188.
          t182 = zcl_lnt_void_type=>get_db65( i_voided = t183 i_qualified_name = t188 ).
          result = t182.
          RETURN.
        ELSE.
          DATA(t189) = VALUE abap_bool( ).
          DATA t190 TYPE abap_bool.
          DATA t191 TYPE abap_bool.
          DATA(t192) = CAST zcl_lnt_abstract_type( t111 ).
          t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t190 = t191.
          IF t191 = abap_true.
            DATA t193 TYPE abap_bool.
            DATA t194 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t195 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t196) = CAST zcl_lnt_abstract_type( t111 ).
            t195 ?= t196.
            t194 = t195.
            DATA t197 TYPE abap_bool.
            DATA t198 TYPE REF TO zcl_lnt_itable_options.
            DATA(t199) = CAST zcl_lnt_ty_table_type( t194 ).
            t198 = t199->options.
            t197 = t198->with_header.
            t193 = t197.
            t190 = t193.
          ENDIF.
          t189 = t190.
          IF t190 = abap_true.
            DATA t200 TYPE abap_bool.
            DATA t201 TYPE REF TO zcl_lnt_abstract_type.
            DATA t202 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t203 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t204) = CAST zcl_lnt_abstract_type( t111 ).
            t203 ?= t204.
            t202 = t203.
            DATA t205 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t206) = CAST zcl_lnt_ty_table_type( t202 ).
            t205 = t206->row_type.
            t201 = t205.
            t200 = xsdbool( t201 IS BOUND AND t201 IS INSTANCE OF zcl_lnt_unknown_type ).
            t189 = t200.
          ENDIF.
          IF t189 = abap_true.
            DATA t207 TYPE REF TO zcl_lnt_void_type.
            CLEAR t207.
            DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t208.
            DATA(t209) = abap_true.
            IF t209 = abap_true.
              DATA(t210) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t211->has = abap_true.
              t211->value = t210.
              t208 = t211.
            ELSE.
              DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t212.
              t208 = t212.
            ENDIF.
            DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t213.
            t207 = zcl_lnt_void_type=>get_db65( i_voided = t208 i_qualified_name = t213 ).
            result = t207.
            RETURN.
          ELSE.
            DATA(t214) = VALUE abap_bool( ).
            DATA t215 TYPE abap_bool.
            DATA t216 TYPE abap_bool.
            DATA(t217) = CAST zcl_lnt_abstract_type( t111 ).
            t216 = xsdbool( t217 IS BOUND AND t217 IS INSTANCE OF zcl_lnt_ty_table_type ).
            t215 = t216.
            IF t216 = abap_true.
              DATA t218 TYPE abap_bool.
              DATA t219 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t220 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t221) = CAST zcl_lnt_abstract_type( t111 ).
              t220 ?= t221.
              t219 = t220.
              DATA t222 TYPE abap_bool.
              DATA t223 TYPE REF TO zcl_lnt_itable_options.
              DATA(t224) = CAST zcl_lnt_ty_table_type( t219 ).
              t223 = t224->options.
              t222 = t223->with_header.
              t218 = t222.
              t215 = t218.
            ENDIF.
            t214 = t215.
            IF t215 = abap_true.
              DATA t225 TYPE abap_bool.
              DATA t226 TYPE REF TO zcl_lnt_abstract_type.
              DATA t227 TYPE REF TO zcl_lnt_ty_table_type.
              DATA t228 TYPE REF TO zcl_lnt_ty_table_type.
              DATA(t229) = CAST zcl_lnt_abstract_type( t111 ).
              t228 ?= t229.
              t227 = t228.
              DATA t230 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t231) = CAST zcl_lnt_ty_table_type( t227 ).
              t230 = t231->row_type.
              t226 = t230.
              t225 = xsdbool( t226 IS BOUND AND t226 IS INSTANCE OF zcl_lnt_void_type ).
              t214 = t225.
            ENDIF.
            IF t214 = abap_true.
              DATA t232 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t232.
              DATA(t233) = abap_true.
              IF t233 = abap_true.
                DATA t234 TYPE REF TO zcl_lnt_abstract_type.
                DATA t235 TYPE REF TO zcl_lnt_ty_table_type.
                DATA t236 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t237) = CAST zcl_lnt_abstract_type( t111 ).
                t236 ?= t237.
                t235 = t236.
                DATA t238 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t239) = CAST zcl_lnt_ty_table_type( t235 ).
                t238 = t239->row_type.
                t234 = t238.
                t232 = t234.
              ELSE.
                DATA t240 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t240.
                t232 = t240.
              ENDIF.
              result = t232.
              RETURN.
            ELSE.
              DATA(t241) = VALUE abap_bool( ).
              DATA t242 TYPE abap_bool.
              DATA t243 TYPE abap_bool.
              DATA t244 TYPE abap_bool.
              DATA(t245) = CAST zcl_lnt_abstract_type( t111 ).
              t244 = xsdbool( t245 IS BOUND AND t245 IS INSTANCE OF zcl_lnt_structure_type ).
              t243 = xsdbool( t244 = abap_false ).
              t242 = t243.
              IF t243 = abap_true.
                DATA(t246) = VALUE abap_bool( ).
                DATA(t247) = VALUE abap_bool( ).
                DATA t248 TYPE abap_bool.
                DATA t249 TYPE abap_bool.
                DATA(t250) = CAST zcl_lnt_abstract_type( t111 ).
                t249 = xsdbool( t250 IS BOUND AND t250 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t248 = t249.
                IF t249 = abap_true.
                  DATA t251 TYPE abap_bool.
                  DATA t252 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t253 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t254) = CAST zcl_lnt_abstract_type( t111 ).
                  t253 ?= t254.
                  t252 = t253.
                  DATA t255 TYPE abap_bool.
                  DATA t256 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t257) = CAST zcl_lnt_ty_table_type( t252 ).
                  t256 = t257->options.
                  t255 = t256->with_header.
                  t251 = t255.
                  t248 = t251.
                ENDIF.
                t247 = t248.
                IF t248 = abap_true.
                  DATA t258 TYPE abap_bool.
                  DATA t259 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t260 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t261 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t262) = CAST zcl_lnt_abstract_type( t111 ).
                  t261 ?= t262.
                  t260 = t261.
                  DATA t263 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t264) = CAST zcl_lnt_ty_table_type( t260 ).
                  t263 = t264->row_type.
                  t259 = t263.
                  t258 = xsdbool( t259 IS BOUND AND t259 IS INSTANCE OF zcl_lnt_structure_type ).
                  t247 = t258.
                ENDIF.
                t246 = xsdbool( t247 = abap_false ).
                t242 = t246.
              ENDIF.
              t241 = t242.
              IF t242 = abap_true.
                DATA t265 TYPE abap_bool.
                DATA t266 TYPE abap_bool.
                DATA(t267) = CAST zcl_lnt_abstract_type( t111 ).
                t266 = xsdbool( t267 IS BOUND AND t267 IS INSTANCE OF zcl_lnt_void_type ).
                t265 = xsdbool( t266 = abap_false ).
                t241 = t265.
              ENDIF.
              IF t241 = abap_true.
                DATA(t268) = VALUE string( ).
                DATA(t269) = VALUE string( ).
                DATA(t270) = VALUE string( ).
                DATA(t271) = VALUE string( ).
                DATA(t272) = |Not a structure, target, |.
                DATA(t273) = VALUE string( ).
                DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t274.
                DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t275.
                DATA t276 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t276.
                DATA t277 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t277.
                DATA t278 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t279) = CAST zcl_lnt_abstract_type( t111 ).
                t278 = t279.
                DATA t280 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t280.
                DATA(t281) = VALUE abap_bool( ).
                DATA(t282) = CAST zcl_lnt_abstract_type( t278 ).
                IF t282 IS INITIAL.
                  t281 = abap_true.
                ENDIF.
                IF t281 = abap_true.
                  DATA t283 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  CLEAR t283.
                  t280 = t283.
                ELSE.
                  DATA t284 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  DATA t285 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t286) = CAST zcl_lnt_abstract_type( t278 ).
                  t285 = t286.
                  t284 = t285->zlnt_builtin_clas_3f891b097658( ).
                  t280 = t284.
                ENDIF.
                t277 = t280.
                t276 = t277.
                DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t287.
                DATA(t288) = VALUE abap_bool( ).
                DATA(t289) = CAST zlnt_runtime_clas_a39833db3295( t276 ).
                IF t289 IS INITIAL.
                  t288 = abap_true.
                ENDIF.
                IF t288 = abap_true.
                  DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t290.
                  t287 = t290.
                ELSE.
                  DATA t291 TYPE string.
                  DATA t292 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                  DATA(t293) = CAST zlnt_runtime_clas_a39833db3295( t276 ).
                  t292 = t293.
                  t291 = t292->name.
                  DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t294->has = abap_true.
                  t294->value = t291.
                  t287 = t294.
                ENDIF.
                t275 = t287.
                t274 = t275.
                DATA(t295) = VALUE string( ).
                DATA(t296) = VALUE abap_bool( ).
                DATA(t297) = CAST zlnt_runtime_opti_4ba3bdccd169( t274 ).
                IF t297 IS INITIAL.
                  t296 = abap_true.
                ELSEIF t297->has = abap_false.
                  t296 = abap_true.
                ENDIF.
                IF t296 = abap_true.
                  DATA(t298) = |undefined|.
                  t295 = t298.
                ELSE.
                  DATA t299 TYPE string.
                  DATA(t300) = CAST zlnt_runtime_opti_4ba3bdccd169( t274 ).
                  t299 = t300->value.
                  t295 = t299.
                ENDIF.
                t273 = t295.
                DATA(t301) = strlen( t272 ).
                t271 = |{ t272 }{ t273 }|.
                DATA(t302) = |, |.
                DATA(t303) = strlen( t271 ).
                t270 = |{ t271 }{ t302 }|.
                DATA t304 TYPE string.
                DATA(t305) = CAST zif_lnt_union_4cf1d054( t161 ).
                t304 = t305->concat_tokens( ).
                DATA(t306) = strlen( t270 ).
                t269 = |{ t270 }{ t304 }|.
                t268 = t269.
                DATA t307 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t308) = CAST zcl_lnt_syntax_input( t2 ).
                t307 = t308->issues.
                DATA t309 TYPE REF TO zcl_lnt_issue.
                DATA(t310) = CAST zcl_lnt_syntax_input( t2 ).
                DATA t311 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t312) = CAST zcl_lnt_expression_node( t1 ).
                t311 = t312->get_first_token( ).
                DATA(t313) = t268.
                DATA t314 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t314.
                t309 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t310 i_token = t311 i_message_26cb = t313 i_fix = t314 ).
                APPEND t309 TO t307->items.
                DATA t315 TYPE REF TO zcl_lnt_void_type.
                CLEAR t315.
                DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t316.
                DATA(t317) = abap_true.
                IF t317 = abap_true.
                  DATA(t318) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t319->has = abap_true.
                  t319->value = t318.
                  t316 = t319.
                ELSE.
                  DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t320.
                  t316 = t320.
                ENDIF.
                DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t321.
                t315 = zcl_lnt_void_type=>get_db65( i_voided = t316 i_qualified_name = t321 ).
                result = t315.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t322 TYPE abap_bool.
        DATA t323 TYPE REF TO object.
        DATA(t324) = CAST zif_lnt_union_4cf1d054( t161 ).
        t323 = t324->get_db65( ).
        t322 = xsdbool( t323 IS BOUND AND t323 IS INSTANCE OF zcl_lnt_instance_arrow ).
        IF t322 = abap_true.
          DATA(t325) = VALUE abap_bool( ).
          DATA t326 TYPE abap_bool.
          DATA t327 TYPE abap_bool.
          DATA t328 TYPE abap_bool.
          DATA(t329) = CAST zcl_lnt_abstract_type( t111 ).
          t328 = xsdbool( t329 IS BOUND AND t329 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t327 = xsdbool( t328 = abap_false ).
          t326 = t327.
          IF t327 = abap_true.
            DATA t330 TYPE abap_bool.
            DATA t331 TYPE abap_bool.
            DATA(t332) = CAST zcl_lnt_abstract_type( t111 ).
            t331 = xsdbool( t332 IS BOUND AND t332 IS INSTANCE OF zcl_lnt_data_reference ).
            t330 = xsdbool( t331 = abap_false ).
            t326 = t330.
          ENDIF.
          t325 = t326.
          IF t326 = abap_true.
            DATA t333 TYPE abap_bool.
            DATA t334 TYPE abap_bool.
            DATA(t335) = CAST zcl_lnt_abstract_type( t111 ).
            t334 = xsdbool( t335 IS BOUND AND t335 IS INSTANCE OF zcl_lnt_void_type ).
            t333 = xsdbool( t334 = abap_false ).
            t325 = t333.
          ENDIF.
          IF t325 = abap_true.
            DATA t336 TYPE string.
            DATA(t337) = |Not an object reference, target|.
            t336 = t337.
            DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t339) = CAST zcl_lnt_syntax_input( t2 ).
            t338 = t339->issues.
            DATA t340 TYPE REF TO zcl_lnt_issue.
            DATA(t341) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t342 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t343) = CAST zcl_lnt_expression_node( t1 ).
            t342 = t343->get_first_token( ).
            DATA(t344) = t336.
            DATA t345 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t345.
            t340 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t341 i_token = t342 i_message_26cb = t344 i_fix = t345 ).
            APPEND t340 TO t338->items.
            DATA t346 TYPE REF TO zcl_lnt_void_type.
            CLEAR t346.
            DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t347.
            DATA(t348) = abap_true.
            IF t348 = abap_true.
              DATA(t349) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t350->has = abap_true.
              t350->value = t349.
              t347 = t350.
            ELSE.
              DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t351.
              t347 = t351.
            ENDIF.
            DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t352.
            t346 = zcl_lnt_void_type=>get_db65( i_voided = t347 i_qualified_name = t352 ).
            result = t346.
            RETURN.
          ENDIF.
        ELSE.
          DATA t353 TYPE abap_bool.
          DATA t354 TYPE REF TO object.
          DATA(t355) = CAST zif_lnt_union_4cf1d054( t161 ).
          t354 = t355->get_db65( ).
          t353 = xsdbool( t354 IS BOUND AND t354 IS INSTANCE OF zcl_lnt_st_dereference ).
          IF t353 = abap_true.
            DATA t356 TYPE abap_bool.
            DATA t357 TYPE abap_bool.
            DATA t358 TYPE abap_bool.
            DATA(t359) = CAST zcl_lnt_abstract_type( t111 ).
            t358 = xsdbool( t359 IS BOUND AND t359 IS INSTANCE OF zcl_lnt_data_reference ).
            t357 = xsdbool( t358 = abap_false ).
            t356 = t357.
            IF t357 = abap_true.
              DATA t360 TYPE abap_bool.
              DATA t361 TYPE abap_bool.
              DATA(t362) = CAST zcl_lnt_abstract_type( t111 ).
              t361 = xsdbool( t362 IS BOUND AND t362 IS INSTANCE OF zcl_lnt_void_type ).
              t360 = xsdbool( t361 = abap_false ).
              t356 = t360.
            ENDIF.
            IF t356 = abap_true.
              DATA t363 TYPE string.
              DATA(t364) = |Not an object reference, target|.
              t363 = t364.
              DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t366) = CAST zcl_lnt_syntax_input( t2 ).
              t365 = t366->issues.
              DATA t367 TYPE REF TO zcl_lnt_issue.
              DATA(t368) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t369 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t370) = CAST zcl_lnt_expression_node( t1 ).
              t369 = t370->get_first_token( ).
              DATA(t371) = t363.
              DATA t372 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t372.
              t367 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t368 i_token = t369 i_message_26cb = t371 i_fix = t372 ).
              APPEND t367 TO t365->items.
              DATA t373 TYPE REF TO zcl_lnt_void_type.
              CLEAR t373.
              DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t374.
              DATA(t375) = abap_true.
              IF t375 = abap_true.
                DATA(t376) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t377) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t377->has = abap_true.
                t377->value = t376.
                t374 = t377.
              ELSE.
                DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t378.
                t374 = t378.
              ENDIF.
              DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t379.
              t373 = zcl_lnt_void_type=>get_db65( i_voided = t374 i_qualified_name = t379 ).
              result = t373.
              RETURN.
            ENDIF.
            DATA t380 TYPE abap_bool.
            DATA t381 TYPE abap_bool.
            DATA(t382) = CAST zcl_lnt_abstract_type( t111 ).
            t381 = xsdbool( t382 IS BOUND AND t382 IS INSTANCE OF zcl_lnt_void_type ).
            t380 = xsdbool( t381 = abap_false ).
            IF t380 = abap_true.
              DATA t383 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t383.
              DATA(t384) = abap_true.
              IF t384 = abap_true.
                DATA t385 TYPE REF TO zcl_lnt_abstract_type.
                DATA t386 TYPE REF TO zcl_lnt_data_reference.
                DATA t387 TYPE REF TO zcl_lnt_data_reference.
                DATA(t388) = CAST zcl_lnt_abstract_type( t111 ).
                t387 ?= t388.
                t386 = t387.
                DATA t389 TYPE REF TO zcl_lnt_abstract_type.
                DATA(t390) = CAST zcl_lnt_data_reference( t386 ).
                t389 = t390->type_cba0.
                t385 = t389.
                t383 = t385.
              ELSE.
                DATA t391 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t391.
                t383 = t391.
              ENDIF.
              t111 = t383.
            ENDIF.
          ELSE.
            DATA t392 TYPE abap_bool.
            DATA t393 TYPE REF TO object.
            DATA(t394) = CAST zif_lnt_union_4cf1d054( t161 ).
            t393 = t394->get_db65( ).
            t392 = xsdbool( t393 IS BOUND AND t393 IS INSTANCE OF zcl_lnt_st_component_name ).
            IF t392 = abap_true.
              DATA t395 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t396) = CAST zcl_lnt_abstract_type( t111 ).
              DATA t397 TYPE REF TO zif_lnt_node.
              DATA(t398) = CAST zif_lnt_union_4cf1d054( t161 ).
              t397 ?= t398.
              DATA(t399) = CAST zcl_lnt_syntax_input( t2 ).
              t395 = zcl_lnt_sy_component_name=>run_syntax( i_context = t396 i_node = t397 i_input_967e = t399 ).
              t111 = t395.
            ELSE.
              DATA t400 TYPE abap_bool.
              DATA t401 TYPE REF TO object.
              DATA(t402) = CAST zif_lnt_union_4cf1d054( t161 ).
              t401 = t402->get_db65( ).
              t400 = xsdbool( t401 IS BOUND AND t401 IS INSTANCE OF zcl_lnt_table_body ).
              IF t400 = abap_true.
                DATA(t403) = VALUE abap_bool( ).
                DATA(t404) = VALUE abap_bool( ).
                DATA t405 TYPE abap_bool.
                DATA t406 TYPE abap_bool.
                DATA t407 TYPE abap_bool.
                DATA(t408) = CAST zcl_lnt_abstract_type( t111 ).
                t407 = xsdbool( t408 IS BOUND AND t408 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t406 = xsdbool( t407 = abap_false ).
                t405 = t406.
                IF t406 = abap_true.
                  DATA t409 TYPE abap_bool.
                  DATA t410 TYPE abap_bool.
                  DATA(t411) = CAST zcl_lnt_abstract_type( t111 ).
                  t410 = xsdbool( t411 IS BOUND AND t411 IS INSTANCE OF zcl_lnt_void_type ).
                  t409 = xsdbool( t410 = abap_false ).
                  t405 = t409.
                ENDIF.
                t404 = t405.
                IF t405 = abap_true.
                  DATA t412 TYPE abap_bool.
                  DATA t413 TYPE abap_bool.
                  DATA(t414) = CAST zcl_lnt_abstract_type( t111 ).
                  t413 = xsdbool( t414 IS BOUND AND t414 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t412 = xsdbool( t413 = abap_false ).
                  t404 = t412.
                ENDIF.
                t403 = t404.
                IF t404 = abap_true.
                  DATA t415 TYPE abap_bool.
                  DATA t416 TYPE abap_bool.
                  DATA(t417) = CAST zcl_lnt_abstract_type( t111 ).
                  t416 = xsdbool( t417 IS BOUND AND t417 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t415 = xsdbool( t416 = abap_false ).
                  t403 = t415.
                ENDIF.
                IF t403 = abap_true.
                  DATA t418 TYPE string.
                  DATA t419 TYPE string.
                  DATA t420 TYPE string.
                  DATA(t421) = |Not an internal table, "|.
                  DATA t422 TYPE string.
                  DATA(t423) = CAST zcl_lnt_expression_node( t1 ).
                  t422 = t423->concat_tokens( ).
                  DATA(t424) = strlen( t421 ).
                  t420 = |{ t421 }{ t422 }|.
                  DATA(t425) = |"|.
                  DATA(t426) = strlen( t420 ).
                  t419 = |{ t420 }{ t425 }|.
                  t418 = t419.
                  DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t428) = CAST zcl_lnt_syntax_input( t2 ).
                  t427 = t428->issues.
                  DATA t429 TYPE REF TO zcl_lnt_issue.
                  DATA(t430) = CAST zcl_lnt_syntax_input( t2 ).
                  DATA t431 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t432) = CAST zcl_lnt_expression_node( t1 ).
                  t431 = t432->get_first_token( ).
                  DATA(t433) = t418.
                  DATA t434 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t434.
                  t429 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t430 i_token = t431 i_message_26cb = t433 i_fix = t434 ).
                  APPEND t429 TO t427->items.
                  DATA t435 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t435.
                  DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t436.
                  DATA(t437) = abap_true.
                  IF t437 = abap_true.
                    DATA(t438) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                    DATA(t439) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t439->has = abap_true.
                    t439->value = t438.
                    t436 = t439.
                  ELSE.
                    DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t440.
                    t436 = t440.
                  ENDIF.
                  DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t441.
                  t435 = zcl_lnt_void_type=>get_db65( i_voided = t436 i_qualified_name = t441 ).
                  result = t435.
                  RETURN.
                ENDIF.
                DATA t442 TYPE abap_bool.
                DATA t443 TYPE abap_bool.
                DATA(t444) = CAST zcl_lnt_abstract_type( t111 ).
                t443 = xsdbool( t444 IS BOUND AND t444 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t442 = t443.
                IF t443 = abap_true.
                  DATA t445 TYPE abap_bool.
                  DATA t446 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t447 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t448) = CAST zcl_lnt_abstract_type( t111 ).
                  t447 ?= t448.
                  t446 = t447.
                  DATA t449 TYPE abap_bool.
                  DATA t450 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t451) = CAST zcl_lnt_ty_table_type( t446 ).
                  t450 = t451->options.
                  t449 = t450->with_header.
                  t445 = t449.
                  t442 = t445.
                ENDIF.
                IF t442 = abap_true.
                  DATA t452 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t453 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t454 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t455 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t456) = CAST zcl_lnt_abstract_type( t111 ).
                  t455 ?= t456.
                  t454 = t455.
                  DATA t457 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t458) = CAST zcl_lnt_ty_table_type( t454 ).
                  t457 = t458->row_type.
                  t453 = t457.
                  DATA t459 TYPE REF TO zcl_lnt_itable_options.
                  DATA t460 TYPE REF TO zcl_lnt_itable_options.
                  DATA t461 TYPE REF TO zcl_lnt_itable_options.
                  DATA t462 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t463 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t464) = CAST zcl_lnt_abstract_type( t111 ).
                  t463 ?= t464.
                  t462 = t463.
                  DATA t465 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t466) = CAST zcl_lnt_ty_table_type( t462 ).
                  t465 = t466->options.
                  t461 = t465.
                  t460 = t461.
                  DATA t467 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t468) = abap_false.
                  DATA t469 TYPE string.
                  DATA(t470) = CAST zcl_lnt_itable_options( t460 ).
                  t469 = t470->key_type.
                  DATA t471 TYPE REF TO zcl_lnt_itable_key.
                  DATA(t472) = CAST zcl_lnt_itable_options( t460 ).
                  t471 = t472->primary_key.
                  DATA t473 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t474) = CAST zcl_lnt_itable_options( t460 ).
                  t473 = t474->secondary.
                  t467 = NEW zcl_lnt_itable_options( i_with_header = t468 i_key_type = t469 i_primary_key = t471 i_secondary = t473 ).
                  t459 = t467.
                  DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t475.
                  DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t476.
                  t452 = NEW zcl_lnt_ty_table_type( i_row_type = t453 i_options = t459 i_qualified_name = t475 i_description = t476 ).
                  t111 = t452.
                ENDIF.
              ELSE.
                DATA t477 TYPE abap_bool.
                DATA t478 TYPE abap_bool.
                DATA(t479) = CAST zif_lnt_union_4cf1d054( t161 ).
                t478 = xsdbool( t479 IS BOUND AND t479 IS INSTANCE OF zcl_lnt_expression_node ).
                t477 = t478.
                IF t478 = abap_true.
                  DATA t480 TYPE abap_bool.
                  DATA t481 TYPE REF TO zif_lnt_statement_runnable.
                  DATA t482 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t483) = CAST zif_lnt_union_4cf1d054( t161 ).
                  DATA t484 TYPE REF TO object.
                  t484 = t483.
                  t482 ?= t484.
                  t481 = t482->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                  t480 = xsdbool( t481 IS BOUND AND t481 IS INSTANCE OF zcl_lnt_st_table_expression ).
                  t477 = t480.
                ENDIF.
                IF t477 = abap_true.
                  DATA(t485) = VALUE abap_bool( ).
                  DATA t486 TYPE abap_bool.
                  DATA t487 TYPE abap_bool.
                  DATA t488 TYPE abap_bool.
                  DATA(t489) = CAST zcl_lnt_abstract_type( t111 ).
                  t488 = xsdbool( t489 IS BOUND AND t489 IS INSTANCE OF zcl_lnt_ty_table_type ).
                  t487 = xsdbool( t488 = abap_false ).
                  t486 = t487.
                  IF t487 = abap_true.
                    DATA t490 TYPE abap_bool.
                    DATA t491 TYPE abap_bool.
                    DATA(t492) = CAST zcl_lnt_abstract_type( t111 ).
                    t491 = xsdbool( t492 IS BOUND AND t492 IS INSTANCE OF zcl_lnt_void_type ).
                    t490 = xsdbool( t491 = abap_false ).
                    t486 = t490.
                  ENDIF.
                  t485 = t486.
                  IF t486 = abap_true.
                    DATA t493 TYPE abap_bool.
                    DATA t494 TYPE abap_bool.
                    DATA(t495) = CAST zcl_lnt_abstract_type( t111 ).
                    t494 = xsdbool( t495 IS BOUND AND t495 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t493 = xsdbool( t494 = abap_false ).
                    t485 = t493.
                  ENDIF.
                  IF t485 = abap_true.
                    DATA t496 TYPE string.
                    DATA(t497) = |Table expression, expected table|.
                    t496 = t497.
                    DATA t498 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t499) = CAST zcl_lnt_syntax_input( t2 ).
                    t498 = t499->issues.
                    DATA t500 TYPE REF TO zcl_lnt_issue.
                    DATA(t501) = CAST zcl_lnt_syntax_input( t2 ).
                    DATA t502 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t503) = CAST zcl_lnt_expression_node( t1 ).
                    t502 = t503->get_first_token( ).
                    DATA(t504) = t496.
                    DATA t505 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t505.
                    t500 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t501 i_token = t502 i_message_26cb = t504 i_fix = t505 ).
                    APPEND t500 TO t498->items.
                    DATA t506 TYPE REF TO zcl_lnt_void_type.
                    CLEAR t506.
                    DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t507.
                    DATA(t508) = abap_true.
                    IF t508 = abap_true.
                      DATA(t509) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                      DATA(t510) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t510->has = abap_true.
                      t510->value = t509.
                      t507 = t510.
                    ELSE.
                      DATA t511 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t511.
                      t507 = t511.
                    ENDIF.
                    DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t512.
                    t506 = zcl_lnt_void_type=>get_db65( i_voided = t507 i_qualified_name = t512 ).
                    result = t506.
                    RETURN.
                  ENDIF.
                  DATA t513 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t513.
                  DATA(t514) = abap_true.
                  IF t514 = abap_true.
                    DATA t515 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t516) = CAST zif_lnt_union_4cf1d054( t161 ).
                    DATA t517 TYPE REF TO object.
                    t517 = t516.
                    t515 ?= t517.
                    t513 = t515.
                  ELSE.
                    DATA t518 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t518.
                    t513 = t518.
                  ENDIF.
                  DATA(t519) = CAST zcl_lnt_syntax_input( t2 ).
                  DATA t520 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t520.
                  DATA(t521) = abap_true.
                  IF t521 = abap_true.
                    DATA t522 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t523 TYPE REF TO zif_lnt_union_297610d4.
                    DATA t524 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t525) = CAST zcl_lnt_abstract_type( t111 ).
                    t524 = t525.
                    t523 ?= t524.
                    t522 ?= t523.
                    t520 = t522.
                  ELSE.
                    DATA t526 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t526.
                    t520 = t526.
                  ENDIF.
                  zcl_lnt_sy_table_expression=>run_syntax( i_node = t513 i_input_967e = t519 i_row_type = t520 ).
                  DATA t527 TYPE abap_bool.
                  DATA t528 TYPE abap_bool.
                  DATA t529 TYPE abap_bool.
                  DATA(t530) = CAST zcl_lnt_abstract_type( t111 ).
                  t529 = xsdbool( t530 IS BOUND AND t530 IS INSTANCE OF zcl_lnt_void_type ).
                  t528 = xsdbool( t529 = abap_false ).
                  t527 = t528.
                  IF t528 = abap_true.
                    DATA t531 TYPE abap_bool.
                    DATA t532 TYPE abap_bool.
                    DATA(t533) = CAST zcl_lnt_abstract_type( t111 ).
                    t532 = xsdbool( t533 IS BOUND AND t533 IS INSTANCE OF zcl_lnt_unknown_type ).
                    t531 = xsdbool( t532 = abap_false ).
                    t527 = t531.
                  ENDIF.
                  IF t527 = abap_true.
                    DATA t534 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t534.
                    DATA(t535) = abap_true.
                    IF t535 = abap_true.
                      DATA t536 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t537 TYPE REF TO zcl_lnt_ty_table_type.
                      DATA t538 TYPE REF TO zcl_lnt_ty_table_type.
                      DATA(t539) = CAST zcl_lnt_abstract_type( t111 ).
                      t538 ?= t539.
                      t537 = t538.
                      DATA t540 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t541) = CAST zcl_lnt_ty_table_type( t537 ).
                      t540 = t541->row_type.
                      t536 = t540.
                      t534 = t536.
                    ELSE.
                      DATA t542 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t542.
                      t534 = t542.
                    ENDIF.
                    t111 = t534.
                  ENDIF.
                ELSE.
                  DATA t543 TYPE abap_bool.
                  DATA t544 TYPE REF TO object.
                  DATA(t545) = CAST zif_lnt_union_4cf1d054( t161 ).
                  t544 = t545->get_db65( ).
                  t543 = xsdbool( t544 IS BOUND AND t544 IS INSTANCE OF zcl_lnt_st_attribute_name ).
                  IF t543 = abap_true.
                    DATA(t546) = VALUE string( ).
                    DATA(t547) = VALUE string( ).
                    DATA t548 TYPE abap_bool.
                    DATA t549 TYPE i.
                    DATA(t550) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
                    t549 = lines( t550->items ).
                    DATA(t551) = 0.
                    t548 = xsdbool( t549 = t551 ).
                    IF t548 = abap_true.
                      DATA(t552) = |Write To|.
                      t547 = t552.
                    ELSE.
                      DATA(t553) = |Read From|.
                      t547 = t553.
                    ENDIF.
                    t546 = t547.
                    DATA t554 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t554.
                    DATA(t555) = CAST zcl_lnt_abstract_type( t111 ).
                    DATA t556 TYPE REF TO zif_lnt_node.
                    DATA(t557) = CAST zif_lnt_union_4cf1d054( t161 ).
                    t556 ?= t557.
                    DATA(t558) = CAST zcl_lnt_syntax_input( t2 ).
                    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t559.
                    DATA(t560) = abap_true.
                    IF t560 = abap_true.
                      DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA(t562) = t546.
                      CREATE OBJECT t561.
                      t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                      t561->sval = t562.
                      t559 = t561.
                    ELSE.
                      DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t563.
                      t559 = t563.
                    ENDIF.
                    DATA t564 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t564.
                    t554 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t555 i_node = t556 i_input_967e = t558 i_type_9913 = t559 i_error = t564 ).
                    t111 = t554.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t565 TYPE REF TO zcl_lnt_expression_node.
    DATA t566 TYPE REF TO zcl_lnt_expression_node.
    DATA(t567) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t568) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d ).
    t566 = t567->find_direct_expression( i_type_9913 = t568 ).
    t565 = t566.
    DATA t569 TYPE abap_bool.
    DATA(t570) = CAST zcl_lnt_expression_node( t565 ).
    t569 = xsdbool( t570 IS BOUND ).
    IF t569 = abap_true.
      DATA t571 TYPE abap_bool.
      DATA t572 TYPE abap_bool.
      DATA(t573) = CAST zcl_lnt_abstract_type( t111 ).
      t572 = xsdbool( t573 IS BOUND AND t573 IS INSTANCE OF zcl_lnt_x_string_type ).
      t571 = t572.
      IF t572 = abap_false.
        DATA t574 TYPE abap_bool.
        DATA(t575) = CAST zcl_lnt_abstract_type( t111 ).
        t574 = xsdbool( t575 IS BOUND AND t575 IS INSTANCE OF zcl_lnt_string_type ).
        t571 = t574.
      ENDIF.
      IF t571 = abap_true.
        DATA t576 TYPE string.
        DATA(t577) = |xstring/string offset/length in writer position not possible|.
        t576 = t577.
        DATA t578 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t579) = CAST zcl_lnt_syntax_input( t2 ).
        t578 = t579->issues.
        DATA t580 TYPE REF TO zcl_lnt_issue.
        DATA(t581) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t582 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t583) = CAST zcl_lnt_expression_node( t1 ).
        t582 = t583->get_first_token( ).
        DATA(t584) = t576.
        DATA t585 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t585.
        t580 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t581 i_token = t582 i_message_26cb = t584 i_fix = t585 ).
        APPEND t580 TO t578->items.
        DATA t586 TYPE REF TO zcl_lnt_void_type.
        CLEAR t586.
        DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t587.
        DATA(t588) = abap_true.
        IF t588 = abap_true.
          DATA(t589) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t590) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t590->has = abap_true.
          t590->value = t589.
          t587 = t590.
        ELSE.
          DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t591.
          t587 = t591.
        ENDIF.
        DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t592.
        t586 = zcl_lnt_void_type=>get_db65( i_voided = t587 i_qualified_name = t592 ).
        result = t586.
        RETURN.
      ENDIF.
      DATA t593 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      DATA t594 TYPE REF TO zcl_lnt_expression_node.
      DATA(t595) = CAST zcl_lnt_expression_node( t565 ).
      t594 = t595.
      DATA(t596) = CAST zcl_lnt_syntax_input( t2 ).
      t593 = zcl_lnt_sy_field_offset=>run_syntax( i_node = t594 i_input_967e = t596 ).
    ENDIF.
    DATA t597 TYPE REF TO zcl_lnt_expression_node.
    DATA t598 TYPE REF TO zcl_lnt_expression_node.
    DATA(t599) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t600) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba ).
    t598 = t599->find_direct_expression( i_type_9913 = t600 ).
    t597 = t598.
    DATA t601 TYPE abap_bool.
    DATA(t602) = CAST zcl_lnt_expression_node( t597 ).
    t601 = xsdbool( t602 IS BOUND ).
    IF t601 = abap_true.
      DATA t603 TYPE abap_bool.
      DATA t604 TYPE abap_bool.
      DATA(t605) = CAST zcl_lnt_abstract_type( t111 ).
      t604 = xsdbool( t605 IS BOUND AND t605 IS INSTANCE OF zcl_lnt_x_string_type ).
      t603 = t604.
      IF t604 = abap_false.
        DATA t606 TYPE abap_bool.
        DATA(t607) = CAST zcl_lnt_abstract_type( t111 ).
        t606 = xsdbool( t607 IS BOUND AND t607 IS INSTANCE OF zcl_lnt_string_type ).
        t603 = t606.
      ENDIF.
      IF t603 = abap_true.
        DATA t608 TYPE string.
        DATA(t609) = |xstring/string offset/length in writer position not possible|.
        t608 = t609.
        DATA t610 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t611) = CAST zcl_lnt_syntax_input( t2 ).
        t610 = t611->issues.
        DATA t612 TYPE REF TO zcl_lnt_issue.
        DATA(t613) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t614 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t615) = CAST zcl_lnt_expression_node( t1 ).
        t614 = t615->get_first_token( ).
        DATA(t616) = t608.
        DATA t617 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t617.
        t612 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t613 i_token = t614 i_message_26cb = t616 i_fix = t617 ).
        APPEND t612 TO t610->items.
        DATA t618 TYPE REF TO zcl_lnt_void_type.
        CLEAR t618.
        DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t619.
        DATA(t620) = abap_true.
        IF t620 = abap_true.
          DATA(t621) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t622) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t622->has = abap_true.
          t622->value = t621.
          t619 = t622.
        ELSE.
          DATA t623 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t623.
          t619 = t623.
        ENDIF.
        DATA t624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t624.
        t618 = zcl_lnt_void_type=>get_db65( i_voided = t619 i_qualified_name = t624 ).
        result = t618.
        RETURN.
      ENDIF.
      DATA t625 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      DATA t626 TYPE REF TO zcl_lnt_expression_node.
      DATA(t627) = CAST zcl_lnt_expression_node( t597 ).
      t626 = t627.
      DATA(t628) = CAST zcl_lnt_syntax_input( t2 ).
      t625 = zcl_lnt_sy_field_length=>run_syntax( i_node = t626 i_input_967e = t628 ).
    ENDIF.
    DATA(t629) = CAST zcl_lnt_abstract_type( t111 ).
    result = t629.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = CAST zif_lnt_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_node.
    DATA(t5) = CAST zif_lnt_node( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zif_lnt_node( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zif_lnt_node.
    DATA(t14) = CAST zif_lnt_node( t1 ).
    t13 = t14.
    t12 = t13->get_first_token( ).
    t11 = t12.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = CAST zcl_lnt_abstract_token( t11 ).
    t17 = t18.
    DATA t19 TYPE string.
    DATA(t20) = CAST zcl_lnt_abstract_token( t17 ).
    t19 = t20->str.
    t16 = t19.
    t15 = t16.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE REF TO object.
    DATA t24 TYPE REF TO zif_lnt_node.
    DATA(t25) = CAST zif_lnt_node( t1 ).
    t24 = t25.
    t23 = t24->get_db65( ).
    t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_target_field ).
    t21 = t22.
    IF t22 = abap_false.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO object.
      DATA t28 TYPE REF TO zif_lnt_node.
      DATA(t29) = CAST zif_lnt_node( t1 ).
      t28 = t29.
      t27 = t28->get_db65( ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_target_field_symbol ).
      t21 = t26.
    ENDIF.
    IF t21 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_current_scope.
      DATA t33 TYPE REF TO zcl_lnt_current_scope.
      DATA(t34) = CAST zcl_lnt_syntax_input( t2 ).
      t33 = t34->scope.
      t32 = t33.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = t15.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t38.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t36 = t40.
      ENDIF.
      t35 = t36.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
      t43 = t44.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t45 = t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = CAST zlnt_runtime_opti_4ba3bdccd169( t43 ).
      IF t48 IS INITIAL.
        t47 = abap_true.
      ELSEIF t48->has = abap_false.
        t47 = abap_true.
      ENDIF.
      t42 = t47.
      IF t42 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t49.
        t41 = t49.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t55) = CAST zcl_lnt_current_scope( t32 ).
        t54 = t55->current.
        t53 = t54.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t56.
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = CAST zcl_lnt_spaghetti_scope_node( t53 ).
        IF t58 IS INITIAL.
          t57 = abap_true.
        ENDIF.
        IF t57 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t59.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t61 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t62) = CAST zcl_lnt_spaghetti_scope_node( t53 ).
          t61 = t62.
          DATA t63 TYPE string.
          DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
          t63 = t64->value.
          t60 = t61->find_variable( i_name = t63 ).
          t56 = t60.
        ENDIF.
        t52 = t56.
        t51 = t52.
        DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t65.
        DATA t66 TYPE abap_bool.
        DATA(t67) = CAST zcl_lnt_typed_identifier( t51 ).
        t66 = xsdbool( t67 IS BOUND ).
        IF t66 = abap_true.
          DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t71) = CAST zcl_lnt_typed_identifier( t51 ).
            t70 = t71.
            t68 = t70.
          ELSE.
            DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t72.
            t68 = t72.
          ENDIF.
          t65 = t68.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t73.
          DATA(t74) = CAST zcl_lnt_current_scope( t32 ).
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA t77 TYPE string.
            DATA(t78) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
            t77 = t78->value.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t77.
            t75 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t75 = t80.
          ENDIF.
          t73 = t74->find_type_pool_constant( i_name = t75 ).
          t65 = t73.
        ENDIF.
        t50 = t65.
        t41 = t50.
      ENDIF.
      t31 = t41.
      t30 = t31.
      DATA t81 TYPE abap_bool.
      DATA(t82) = CAST zcl_lnt_typed_identifier( t30 ).
      t81 = xsdbool( t82 IS BOUND ).
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_current_scope.
        DATA(t84) = CAST zcl_lnt_syntax_input( t2 ).
        t83 = t84->scope.
        DATA t85 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t85.
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA(t87) = CAST zcl_lnt_abstract_token( t11 ).
          t85 = t87.
        ELSE.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t88.
          t85 = t88.
        ENDIF.
        DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t90) = CAST zcl_lnt_typed_identifier( t30 ).
        t89 = t90.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t92) = |Write To|.
        CREATE OBJECT t91.
        t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t91->sval = t92.
        DATA t93 TYPE string.
        DATA(t94) = CAST zcl_lnt_syntax_input( t2 ).
        t93 = t94->filename.
        DATA t95 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t95.
        t83->add_reference( i_usage = t85 i_referencing = t89 i_type_9913 = t91 i_filename = t93 i_extra = t95 ).
      ENDIF.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = VALUE i( ).
      DATA(t98) = t15.
      DATA(t99) = |~|.
      DATA(t100) = strlen( t98 ).
      IF t99 IS INITIAL.
        t97 = 0.
      ELSE.
        FIND t99 IN t98 MATCH OFFSET t97.
        IF sy-subrc <> 0.
          t97 = -1.
        ENDIF.
      ENDIF.
      DATA(t101) = 0.
      t96 = xsdbool( t97 >= t101 ).
      IF t96 = abap_true.
        DATA t102 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t102.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t103.
        DATA t104 TYPE REF TO zcl_lnt_current_scope.
        DATA t105 TYPE REF TO zcl_lnt_current_scope.
        DATA(t106) = CAST zcl_lnt_syntax_input( t2 ).
        t105 = t106->scope.
        t104 = t105.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA(t109) = abap_true.
        IF t109 = abap_true.
          DATA(t110) = VALUE string( ).
          DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t112) = t15.
          DATA(t113) = |~|.
          DATA(t114) = strlen( t112 ).
          DATA t115 TYPE i.
          DATA(t116) = VALUE i( ).
          DATA(t117) = VALUE i( ).
          DATA t118 TYPE i.
          DATA(t119) = VALUE string( ).
          CREATE OBJECT t111.
          t118 = strlen( t113 ).
          t115 = 0.
          IF t118 = 0.
            WHILE t115 < t114.
              t119 = t112+t115(1).
              APPEND t119 TO t111->items.
              t115 = t115 + 1.
            ENDWHILE.
          ELSE.
            WHILE t115 <= t114.
              FIND FIRST OCCURRENCE OF t113 IN SECTION OFFSET t115 OF t112 MATCH OFFSET t116.
              IF sy-subrc = 0.
                t117 = t116 - t115.
              ELSE.
                t116 = -1.
                t117 = t114 - t115.
              ENDIF.
              CLEAR t119.
              IF t117 > 0.
                t119 = t112+t115(t117).
              ENDIF.
              APPEND t119 TO t111->items.
              IF t116 < 0.
                EXIT.
              ENDIF.
              t115 = t116 + t118.
            ENDWHILE.
          ENDIF.
          READ TABLE t111->items INDEX 1 INTO t110.
          DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t120->has = abap_true.
          t120->value = t110.
          t108 = t120.
        ELSE.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          t108 = t121.
        ENDIF.
        t107 = t108.
        DATA t122 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t122.
        DATA(t123) = VALUE abap_bool( ).
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t125) = CAST zlnt_runtime_opti_4ba3bdccd169( t107 ).
        t124 = t125.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        t126 = t127.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = CAST zlnt_runtime_opti_4ba3bdccd169( t124 ).
        IF t129 IS INITIAL.
          t128 = abap_true.
        ELSEIF t129->has = abap_false.
          t128 = abap_true.
        ENDIF.
        t123 = t128.
        IF t123 = abap_true.
          DATA t130 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t130.
          t122 = t130.
        ELSE.
          DATA t131 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t131.
          DATA t132 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t132.
          DATA t133 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t133.
          DATA t134 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t135 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t136) = CAST zcl_lnt_current_scope( t104 ).
          t135 = t136->current.
          t134 = t135.
          DATA t137 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t137.
          DATA(t138) = VALUE abap_bool( ).
          DATA(t139) = CAST zcl_lnt_spaghetti_scope_node( t134 ).
          IF t139 IS INITIAL.
            t138 = abap_true.
          ENDIF.
          IF t138 = abap_true.
            DATA t140 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t140.
            t137 = t140.
          ELSE.
            DATA t141 TYPE REF TO zif_lnt_interface_definition.
            DATA t142 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t143) = CAST zcl_lnt_spaghetti_scope_node( t134 ).
            t142 = t143.
            DATA t144 TYPE string.
            DATA(t145) = CAST zlnt_runtime_opti_4ba3bdccd169( t107 ).
            t144 = t145->value.
            t141 = t142->find_interface_definition( i_name = t144 ).
            t137 = t141.
          ENDIF.
          t133 = t137.
          t132 = t133.
          DATA t146 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t146.
          DATA t147 TYPE abap_bool.
          DATA(t148) = CAST zif_lnt_interface_definition( t132 ).
          t147 = xsdbool( t148 IS BOUND ).
          IF t147 = abap_true.
            DATA t149 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t149.
            DATA(t150) = abap_true.
            IF t150 = abap_true.
              DATA t151 TYPE REF TO zif_lnt_interface_definition.
              DATA(t152) = CAST zif_lnt_interface_definition( t132 ).
              t151 = t152.
              t149 = t151.
            ELSE.
              DATA t153 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t153.
              t149 = t153.
            ENDIF.
            t146 = t149.
          ELSE.
            DATA t154 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t154.
            DATA t155 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t155.
            DATA t156 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t156.
            DATA t157 TYPE REF TO zif_lnt_object.
            CLEAR t157.
            DATA t158 TYPE REF TO zif_lnt_registry.
            DATA(t159) = CAST zcl_lnt_current_scope( t104 ).
            t158 = t159->reg.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            DATA(t161) = abap_true.
            IF t161 = abap_true.
              DATA(t162) = |INTF|.
              DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t163->has = abap_true.
              t163->value = t162.
              t160 = t163.
            ELSE.
              DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t164.
              t160 = t164.
            ENDIF.
            DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t165.
            DATA(t166) = abap_true.
            IF t166 = abap_true.
              DATA t167 TYPE string.
              DATA(t168) = CAST zlnt_runtime_opti_4ba3bdccd169( t107 ).
              t167 = t168->value.
              DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t169->has = abap_true.
              t169->value = t167.
              t165 = t169.
            ELSE.
              DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t170.
              t165 = t170.
            ENDIF.
            t157 = t158->get_object( i_type_9913 = t160 i_name = t165 ).
            DATA t171 TYPE REF TO object.
            t171 = t157.
            t156 ?= t171.
            t155 = t156.
            DATA t172 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t172.
            DATA t173 TYPE abap_bool.
            DATA(t174) = CAST zcl_lnt_ob_interface( t155 ).
            t173 = xsdbool( t174 IS BOUND ).
            IF t173 = abap_true.
              DATA t175 TYPE REF TO zif_lnt_interface_definition.
              DATA t176 TYPE REF TO zcl_lnt_ob_interface.
              DATA t177 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t178) = CAST zcl_lnt_ob_interface( t155 ).
              t177 = t178.
              t176 = t177.
              DATA t179 TYPE REF TO zif_lnt_interface_definition.
              DATA(t180) = CAST zcl_lnt_ob_interface( t176 ).
              t179 = t180->def.
              t175 = t179.
              t172 = t175.
            ELSE.
              DATA t181 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t181.
              t172 = t181.
            ENDIF.
            t154 = t172.
            t146 = t154.
          ENDIF.
          t131 = t146.
          t122 = t131.
        ENDIF.
        t103 = t122.
        t102 = t103.
        DATA t182 TYPE abap_bool.
        DATA(t183) = CAST zif_lnt_interface_definition( t102 ).
        t182 = xsdbool( t183 IS BOUND ).
        IF t182 = abap_true.
          DATA t184 TYPE REF TO zcl_lnt_current_scope.
          DATA(t185) = CAST zcl_lnt_syntax_input( t2 ).
          t184 = t185->scope.
          DATA t186 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t186.
          DATA(t187) = abap_true.
          IF t187 = abap_true.
            DATA(t188) = CAST zcl_lnt_abstract_token( t11 ).
            t186 = t188.
          ELSE.
            DATA t189 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t189.
            t186 = t189.
          ENDIF.
          DATA t190 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t190.
          DATA(t191) = abap_true.
          IF t191 = abap_true.
            DATA t192 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t193 TYPE REF TO zif_lnt_interface_definition.
            DATA(t194) = CAST zif_lnt_interface_definition( t102 ).
            t193 = t194.
            t192 ?= t193.
            t190 = t192.
          ELSE.
            DATA t195 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t195.
            t190 = t195.
          ENDIF.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t197) = |Object|.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t196->sval = t197.
          DATA t198 TYPE string.
          DATA(t199) = CAST zcl_lnt_syntax_input( t2 ).
          t198 = t199->filename.
          DATA t200 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t200.
          t184->add_reference( i_usage = t186 i_referencing = t190 i_type_9913 = t196 i_filename = t198 i_extra = t200 ).
        ENDIF.
      ENDIF.
      DATA t201 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t201.
      DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t203) = CAST zcl_lnt_typed_identifier( t30 ).
      t202 = t203.
      DATA t204 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t204.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = CAST zcl_lnt_typed_identifier( t202 ).
      IF t206 IS INITIAL.
        t205 = abap_true.
      ENDIF.
      IF t205 = abap_true.
        DATA t207 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t207.
        t204 = t207.
      ELSE.
        DATA t208 TYPE REF TO zcl_lnt_abstract_type.
        DATA t209 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t210 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t211) = CAST zcl_lnt_typed_identifier( t202 ).
        t210 = t211.
        t209 = t210.
        DATA t212 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t213) = CAST zcl_lnt_typed_identifier( t209 ).
        t212 = t213->type_cba0.
        t208 = t212.
        t204 = t208.
      ENDIF.
      t201 = t204.
      result = t201.
      RETURN.
    ELSE.
      DATA t214 TYPE abap_bool.
      DATA t215 TYPE REF TO object.
      DATA t216 TYPE REF TO zif_lnt_node.
      DATA(t217) = CAST zif_lnt_node( t1 ).
      t216 = t217.
      t215 = t216->get_db65( ).
      t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_class_name ).
      IF t214 = abap_true.
        DATA t218 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t218.
        DATA t219 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t219.
        DATA t220 TYPE REF TO zcl_lnt_current_scope.
        DATA t221 TYPE REF TO zcl_lnt_current_scope.
        DATA(t222) = CAST zcl_lnt_syntax_input( t2 ).
        t221 = t222->scope.
        t220 = t221.
        DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t223.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA(t225) = abap_true.
        IF t225 = abap_true.
          DATA(t226) = t15.
          DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t227->has = abap_true.
          t227->value = t226.
          t224 = t227.
        ELSE.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          t224 = t228.
        ENDIF.
        t223 = t224.
        DATA t229 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t229.
        DATA(t230) = VALUE abap_bool( ).
        DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t232) = CAST zlnt_runtime_opti_4ba3bdccd169( t223 ).
        t231 = t232.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        t233 = t234.
        DATA(t235) = VALUE abap_bool( ).
        DATA(t236) = CAST zlnt_runtime_opti_4ba3bdccd169( t231 ).
        IF t236 IS INITIAL.
          t235 = abap_true.
        ELSEIF t236->has = abap_false.
          t235 = abap_true.
        ENDIF.
        t230 = t235.
        IF t230 = abap_true.
          DATA t237 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t237.
          t229 = t237.
        ELSE.
          DATA t238 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t238.
          DATA t239 TYPE REF TO zif_lnt_class_definition.
          CLEAR t239.
          DATA t240 TYPE REF TO zif_lnt_class_definition.
          CLEAR t240.
          DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t241.
          DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t242.
          DATA(t243) = abap_true.
          IF t243 = abap_true.
            DATA t244 TYPE string.
            DATA(t245) = CAST zlnt_runtime_opti_4ba3bdccd169( t223 ).
            t244 = t245->value.
            DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t246->has = abap_true.
            t246->value = t244.
            t242 = t246.
          ELSE.
            DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t247.
            t242 = t247.
          ENDIF.
          t241 = t242.
          DATA t248 TYPE REF TO zif_lnt_class_definition.
          CLEAR t248.
          DATA(t249) = VALUE abap_bool( ).
          DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t251) = CAST zlnt_runtime_opti_4ba3bdccd169( t241 ).
          t250 = t251.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t253.
          t252 = t253.
          DATA(t254) = VALUE abap_bool( ).
          DATA(t255) = CAST zlnt_runtime_opti_4ba3bdccd169( t250 ).
          IF t255 IS INITIAL.
            t254 = abap_true.
          ELSEIF t255->has = abap_false.
            t254 = abap_true.
          ENDIF.
          t249 = t254.
          IF t249 = abap_true.
            DATA t256 TYPE REF TO zif_lnt_class_definition.
            CLEAR t256.
            t248 = t256.
          ELSE.
            DATA t257 TYPE REF TO zif_lnt_class_definition.
            CLEAR t257.
            DATA t258 TYPE REF TO zif_lnt_class_definition.
            CLEAR t258.
            DATA t259 TYPE REF TO zif_lnt_class_definition.
            CLEAR t259.
            DATA t260 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t261 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t262) = CAST zcl_lnt_current_scope( t220 ).
            t261 = t262->current.
            t260 = t261.
            DATA t263 TYPE REF TO zif_lnt_class_definition.
            CLEAR t263.
            DATA(t264) = VALUE abap_bool( ).
            DATA(t265) = CAST zcl_lnt_spaghetti_scope_node( t260 ).
            IF t265 IS INITIAL.
              t264 = abap_true.
            ENDIF.
            IF t264 = abap_true.
              DATA t266 TYPE REF TO zif_lnt_class_definition.
              CLEAR t266.
              t263 = t266.
            ELSE.
              DATA t267 TYPE REF TO zif_lnt_class_definition.
              DATA t268 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t269) = CAST zcl_lnt_spaghetti_scope_node( t260 ).
              t268 = t269.
              DATA t270 TYPE string.
              DATA(t271) = CAST zlnt_runtime_opti_4ba3bdccd169( t241 ).
              t270 = t271->value.
              t267 = t268->find_class_definition( i_name = t270 ).
              t263 = t267.
            ENDIF.
            t259 = t263.
            t258 = t259.
            DATA t272 TYPE REF TO zif_lnt_class_definition.
            CLEAR t272.
            DATA t273 TYPE abap_bool.
            DATA(t274) = CAST zif_lnt_class_definition( t258 ).
            t273 = xsdbool( t274 IS BOUND ).
            IF t273 = abap_true.
              DATA t275 TYPE REF TO zif_lnt_class_definition.
              CLEAR t275.
              DATA(t276) = abap_true.
              IF t276 = abap_true.
                DATA t277 TYPE REF TO zif_lnt_class_definition.
                DATA(t278) = CAST zif_lnt_class_definition( t258 ).
                t277 = t278.
                t275 = t277.
              ELSE.
                DATA t279 TYPE REF TO zif_lnt_class_definition.
                CLEAR t279.
                t275 = t279.
              ENDIF.
              t272 = t275.
            ELSE.
              DATA t280 TYPE REF TO zif_lnt_class_definition.
              CLEAR t280.
              DATA t281 TYPE REF TO zcl_lnt_class.
              CLEAR t281.
              DATA t282 TYPE REF TO zcl_lnt_class.
              CLEAR t282.
              DATA t283 TYPE REF TO zif_lnt_object.
              CLEAR t283.
              DATA t284 TYPE REF TO zif_lnt_registry.
              DATA(t285) = CAST zcl_lnt_current_scope( t220 ).
              t284 = t285->reg.
              DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t286.
              DATA(t287) = abap_true.
              IF t287 = abap_true.
                DATA(t288) = |CLAS|.
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
              DATA(t292) = abap_true.
              IF t292 = abap_true.
                DATA t293 TYPE string.
                DATA(t294) = CAST zlnt_runtime_opti_4ba3bdccd169( t241 ).
                t293 = t294->value.
                DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t295->has = abap_true.
                t295->value = t293.
                t291 = t295.
              ELSE.
                DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t296.
                t291 = t296.
              ENDIF.
              t283 = t284->get_object( i_type_9913 = t286 i_name = t291 ).
              DATA t297 TYPE REF TO object.
              t297 = t283.
              t282 ?= t297.
              t281 = t282.
              DATA t298 TYPE REF TO zif_lnt_class_definition.
              CLEAR t298.
              DATA t299 TYPE abap_bool.
              DATA(t300) = CAST zcl_lnt_class( t281 ).
              t299 = xsdbool( t300 IS BOUND ).
              IF t299 = abap_true.
                DATA t301 TYPE REF TO zif_lnt_class_definition.
                DATA t302 TYPE REF TO zcl_lnt_class.
                DATA(t303) = CAST zcl_lnt_class( t281 ).
                t302 = t303.
                t301 = t302->gt_dfn_ins_src_obj_cls_ts_clss( ).
                t298 = t301.
              ELSE.
                DATA t304 TYPE REF TO zif_lnt_class_definition.
                CLEAR t304.
                t298 = t304.
              ENDIF.
              t280 = t298.
              t272 = t280.
            ENDIF.
            t257 = t272.
            t248 = t257.
          ENDIF.
          t240 = t248.
          t239 = t240.
          DATA t305 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t305.
          DATA t306 TYPE abap_bool.
          DATA(t307) = CAST zif_lnt_class_definition( t239 ).
          t306 = xsdbool( t307 IS BOUND ).
          IF t306 = abap_true.
            DATA t308 TYPE REF TO zif_lnt_interface_definition.
            DATA t309 TYPE REF TO zif_lnt_class_definition.
            DATA(t310) = CAST zif_lnt_class_definition( t239 ).
            t309 = t310.
            t308 ?= t309.
            t305 = t308.
          ELSE.
            DATA t311 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t311.
            DATA t312 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t312.
            DATA t313 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t313.
            DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t314.
            DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t315.
            DATA(t316) = abap_true.
            IF t316 = abap_true.
              DATA t317 TYPE string.
              DATA(t318) = CAST zlnt_runtime_opti_4ba3bdccd169( t223 ).
              t317 = t318->value.
              DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t319->has = abap_true.
              t319->value = t317.
              t315 = t319.
            ELSE.
              DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t320.
              t315 = t320.
            ENDIF.
            t314 = t315.
            DATA t321 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t321.
            DATA(t322) = VALUE abap_bool( ).
            DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t324) = CAST zlnt_runtime_opti_4ba3bdccd169( t314 ).
            t323 = t324.
            DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t326.
            t325 = t326.
            DATA(t327) = VALUE abap_bool( ).
            DATA(t328) = CAST zlnt_runtime_opti_4ba3bdccd169( t323 ).
            IF t328 IS INITIAL.
              t327 = abap_true.
            ELSEIF t328->has = abap_false.
              t327 = abap_true.
            ENDIF.
            t322 = t327.
            IF t322 = abap_true.
              DATA t329 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t329.
              t321 = t329.
            ELSE.
              DATA t330 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t330.
              DATA t331 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t331.
              DATA t332 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t332.
              DATA t333 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA t334 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t335) = CAST zcl_lnt_current_scope( t220 ).
              t334 = t335->current.
              t333 = t334.
              DATA t336 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t336.
              DATA(t337) = VALUE abap_bool( ).
              DATA(t338) = CAST zcl_lnt_spaghetti_scope_node( t333 ).
              IF t338 IS INITIAL.
                t337 = abap_true.
              ENDIF.
              IF t337 = abap_true.
                DATA t339 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t339.
                t336 = t339.
              ELSE.
                DATA t340 TYPE REF TO zif_lnt_interface_definition.
                DATA t341 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t342) = CAST zcl_lnt_spaghetti_scope_node( t333 ).
                t341 = t342.
                DATA t343 TYPE string.
                DATA(t344) = CAST zlnt_runtime_opti_4ba3bdccd169( t314 ).
                t343 = t344->value.
                t340 = t341->find_interface_definition( i_name = t343 ).
                t336 = t340.
              ENDIF.
              t332 = t336.
              t331 = t332.
              DATA t345 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t345.
              DATA t346 TYPE abap_bool.
              DATA(t347) = CAST zif_lnt_interface_definition( t331 ).
              t346 = xsdbool( t347 IS BOUND ).
              IF t346 = abap_true.
                DATA t348 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t348.
                DATA(t349) = abap_true.
                IF t349 = abap_true.
                  DATA t350 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t351) = CAST zif_lnt_interface_definition( t331 ).
                  t350 = t351.
                  t348 = t350.
                ELSE.
                  DATA t352 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t352.
                  t348 = t352.
                ENDIF.
                t345 = t348.
              ELSE.
                DATA t353 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t353.
                DATA t354 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t354.
                DATA t355 TYPE REF TO zcl_lnt_ob_interface.
                CLEAR t355.
                DATA t356 TYPE REF TO zif_lnt_object.
                CLEAR t356.
                DATA t357 TYPE REF TO zif_lnt_registry.
                DATA(t358) = CAST zcl_lnt_current_scope( t220 ).
                t357 = t358->reg.
                DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t359.
                DATA(t360) = abap_true.
                IF t360 = abap_true.
                  DATA(t361) = |INTF|.
                  DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t362->has = abap_true.
                  t362->value = t361.
                  t359 = t362.
                ELSE.
                  DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t363.
                  t359 = t363.
                ENDIF.
                DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t364.
                DATA(t365) = abap_true.
                IF t365 = abap_true.
                  DATA t366 TYPE string.
                  DATA(t367) = CAST zlnt_runtime_opti_4ba3bdccd169( t314 ).
                  t366 = t367->value.
                  DATA(t368) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t368->has = abap_true.
                  t368->value = t366.
                  t364 = t368.
                ELSE.
                  DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t369.
                  t364 = t369.
                ENDIF.
                t356 = t357->get_object( i_type_9913 = t359 i_name = t364 ).
                DATA t370 TYPE REF TO object.
                t370 = t356.
                t355 ?= t370.
                t354 = t355.
                DATA t371 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t371.
                DATA t372 TYPE abap_bool.
                DATA(t373) = CAST zcl_lnt_ob_interface( t354 ).
                t372 = xsdbool( t373 IS BOUND ).
                IF t372 = abap_true.
                  DATA t374 TYPE REF TO zif_lnt_interface_definition.
                  DATA t375 TYPE REF TO zcl_lnt_ob_interface.
                  DATA t376 TYPE REF TO zcl_lnt_ob_interface.
                  DATA(t377) = CAST zcl_lnt_ob_interface( t354 ).
                  t376 = t377.
                  t375 = t376.
                  DATA t378 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t379) = CAST zcl_lnt_ob_interface( t375 ).
                  t378 = t379->def.
                  t374 = t378.
                  t371 = t374.
                ELSE.
                  DATA t380 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t380.
                  t371 = t380.
                ENDIF.
                t353 = t371.
                t345 = t353.
              ENDIF.
              t330 = t345.
              t321 = t330.
            ENDIF.
            t313 = t321.
            t312 = t313.
            DATA t381 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t381.
            DATA t382 TYPE abap_bool.
            DATA(t383) = CAST zif_lnt_interface_definition( t312 ).
            t382 = xsdbool( t383 IS BOUND ).
            IF t382 = abap_true.
              DATA t384 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t384.
              DATA(t385) = abap_true.
              IF t385 = abap_true.
                DATA t386 TYPE REF TO zif_lnt_interface_definition.
                DATA(t387) = CAST zif_lnt_interface_definition( t312 ).
                t386 = t387.
                t384 = t386.
              ELSE.
                DATA t388 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t388.
                t384 = t388.
              ENDIF.
              t381 = t384.
            ELSE.
              DATA t389 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t389.
              t381 = t389.
            ENDIF.
            t311 = t381.
            t305 = t311.
          ENDIF.
          t238 = t305.
          t229 = t238.
        ENDIF.
        t219 = t229.
        t218 = t219.
        DATA t390 TYPE abap_bool.
        DATA(t391) = CAST zif_lnt_interface_definition( t218 ).
        t390 = xsdbool( t391 IS BOUND ).
        IF t390 = abap_true.
          DATA t392 TYPE REF TO zcl_lnt_current_scope.
          DATA(t393) = CAST zcl_lnt_syntax_input( t2 ).
          t392 = t393->scope.
          DATA t394 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t394.
          DATA(t395) = abap_true.
          IF t395 = abap_true.
            DATA(t396) = CAST zcl_lnt_abstract_token( t11 ).
            t394 = t396.
          ELSE.
            DATA t397 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t397.
            t394 = t397.
          ENDIF.
          DATA t398 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t398.
          DATA(t399) = abap_true.
          IF t399 = abap_true.
            DATA t400 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t401 TYPE REF TO zif_lnt_interface_definition.
            DATA(t402) = CAST zif_lnt_interface_definition( t218 ).
            t401 = t402.
            t400 ?= t401.
            t398 = t400.
          ELSE.
            DATA t403 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t403.
            t398 = t403.
          ENDIF.
          DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t405) = |Object|.
          CREATE OBJECT t404.
          t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t404->sval = t405.
          DATA t406 TYPE string.
          DATA(t407) = CAST zcl_lnt_syntax_input( t2 ).
          t406 = t407->filename.
          DATA t408 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t408.
          t392->add_reference( i_usage = t394 i_referencing = t398 i_type_9913 = t404 i_filename = t406 i_extra = t408 ).
          DATA t409 TYPE REF TO zcl_lnt_object_reference_type.
          DATA t410 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t411 TYPE REF TO zif_lnt_interface_definition.
          DATA(t412) = CAST zif_lnt_interface_definition( t218 ).
          t411 = t412.
          t410 ?= t411.
          DATA t413 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t413.
          t409 = NEW zcl_lnt_object_reference_type( i_id = t410 i_extra = t413 ).
          result = t409.
          RETURN.
        ELSE.
          DATA(t414) = VALUE abap_bool( ).
          DATA(t415) = VALUE abap_bool( ).
          DATA t416 TYPE REF TO zcl_lnt_ddic.
          DATA t417 TYPE REF TO zcl_lnt_ddic.
          DATA t418 TYPE REF TO zcl_lnt_current_scope.
          DATA t419 TYPE REF TO zcl_lnt_current_scope.
          DATA(t420) = CAST zcl_lnt_syntax_input( t2 ).
          t419 = t420->scope.
          t418 = t419.
          DATA t421 TYPE REF TO zcl_lnt_ddic.
          DATA t422 TYPE REF TO zif_lnt_registry.
          DATA(t423) = CAST zcl_lnt_current_scope( t418 ).
          t422 = t423->reg.
          t421 = NEW zcl_lnt_ddic( i_reg_f149 = t422 ).
          t417 = t421.
          t416 = t417.
          DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t424.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t425.
          DATA(t426) = abap_true.
          IF t426 = abap_true.
            DATA(t427) = t15.
            DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t428->has = abap_true.
            t428->value = t427.
            t425 = t428.
          ELSE.
            DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t429.
            t425 = t429.
          ENDIF.
          t424 = t425.
          DATA(t430) = VALUE abap_bool( ).
          DATA(t431) = VALUE abap_bool( ).
          DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t433) = CAST zlnt_runtime_opti_4ba3bdccd169( t424 ).
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
            DATA(t438) = abap_true.
            t430 = t438.
          ELSE.
            DATA t439 TYPE abap_bool.
            DATA t440 TYPE REF TO zif_lnt_registry.
            DATA(t441) = CAST zcl_lnt_ddic( t416 ).
            t440 = t441->reg.
            DATA t442 TYPE string.
            DATA(t443) = CAST zlnt_runtime_opti_4ba3bdccd169( t424 ).
            t442 = t443->value.
            t439 = t440->in_error_namespace( i_name = t442 ).
            t430 = t439.
          ENDIF.
          t415 = t430.
          DATA(t444) = abap_false.
          t414 = xsdbool( t415 = t444 ).
          IF t414 = abap_true.
            DATA t445 TYPE REF TO zcl_lnt_current_scope.
            DATA(t446) = CAST zcl_lnt_syntax_input( t2 ).
            t445 = t446->scope.
            DATA t447 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t447.
            DATA(t448) = abap_true.
            IF t448 = abap_true.
              DATA(t449) = CAST zcl_lnt_abstract_token( t11 ).
              t447 = t449.
            ELSE.
              DATA t450 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t450.
              t447 = t450.
            ENDIF.
            DATA t451 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t451.
            DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t453) = |Object (Void)|.
            CREATE OBJECT t452.
            t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t452->sval = t453.
            DATA t454 TYPE string.
            DATA(t455) = CAST zcl_lnt_syntax_input( t2 ).
            t454 = t455->filename.
            DATA t456 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t456.
            DATA(t457) = abap_true.
            IF t457 = abap_true.
              DATA t458 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t458.
              DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t459.
              DATA(t460) = abap_true.
              IF t460 = abap_true.
                DATA(t461) = t15.
                DATA(t462) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t462->has = abap_true.
                t462->value = t461.
                t459 = t462.
              ELSE.
                DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t463.
                t459 = t463.
              ENDIF.
              DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t464.
              DATA(t465) = abap_true.
              IF t465 = abap_true.
                DATA(t466) = |CLAS|.
                DATA(t467) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t467->has = abap_true.
                t467->value = t466.
                t464 = t467.
              ELSE.
                DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t468.
                t464 = t468.
              ENDIF.
              DATA t469 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t469.
              t458 = NEW zcl_lnt_ireference_extras( i_oo_name = t459 i_oo_type = t464 i_found_qualified = t469 ).
              t456 = t458.
            ELSE.
              DATA t470 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t470.
              t456 = t470.
            ENDIF.
            t445->add_reference( i_usage = t447 i_referencing = t451 i_type_9913 = t452 i_filename = t454 i_extra = t456 ).
            DATA t471 TYPE REF TO zcl_lnt_void_type.
            CLEAR t471.
            DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t472.
            DATA(t473) = abap_true.
            IF t473 = abap_true.
              DATA(t474) = t15.
              DATA(t475) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t475->has = abap_true.
              t475->value = t474.
              t472 = t475.
            ELSE.
              DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t476.
              t472 = t476.
            ENDIF.
            DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t477.
            t471 = zcl_lnt_void_type=>get_db65( i_voided = t472 i_qualified_name = t477 ).
            result = t471.
            RETURN.
          ELSE.
            DATA t478 TYPE REF TO zcl_lnt_unknown_type.
            DATA t479 TYPE string.
            DATA(t480) = t15.
            DATA(t481) = | unknown, Target|.
            DATA(t482) = strlen( t480 ).
            t479 = |{ t480 }{ t481 }|.
            DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t483.
            t478 = NEW zcl_lnt_unknown_type( i_error = t479 i_qualified_name = t483 ).
            result = t478.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t484 TYPE abap_bool.
        DATA t485 TYPE abap_bool.
        DATA t486 TYPE REF TO object.
        DATA t487 TYPE REF TO zif_lnt_node.
        DATA(t488) = CAST zif_lnt_node( t1 ).
        t487 = t488.
        t486 = t487->get_db65( ).
        t485 = xsdbool( t486 IS BOUND AND t486 IS INSTANCE OF zcl_lnt_st_cast ).
        t484 = t485.
        IF t485 = abap_true.
          DATA t489 TYPE abap_bool.
          DATA(t490) = CAST zif_lnt_node( t1 ).
          t489 = xsdbool( t490 IS BOUND AND t490 IS INSTANCE OF zcl_lnt_expression_node ).
          t484 = t489.
        ENDIF.
        IF t484 = abap_true.
          DATA t491 TYPE REF TO zcl_lnt_abstract_type.
          DATA t492 TYPE REF TO zcl_lnt_abstract_type.
          DATA t493 TYPE REF TO zcl_lnt_expression_node.
          DATA(t494) = CAST zif_lnt_node( t1 ).
          DATA t495 TYPE REF TO object.
          t495 = t494.
          t493 ?= t495.
          DATA(t496) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t497 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t497.
          t492 = zcl_lnt_sy_cast=>run_syntax( i_node = t493 i_input_967e = t496 i_target_type = t497 ).
          t491 = t492.
          DATA t498 TYPE abap_bool.
          DATA(t499) = CAST zcl_lnt_abstract_type( t491 ).
          t498 = xsdbool( t499 IS BOUND AND t499 IS INSTANCE OF zcl_lnt_unknown_type ).
          IF t498 = abap_true.
            DATA t500 TYPE string.
            DATA(t501) = |CAST, uknown type|.
            t500 = t501.
            DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t503) = CAST zcl_lnt_syntax_input( t2 ).
            t502 = t503->issues.
            DATA t504 TYPE REF TO zcl_lnt_issue.
            DATA(t505) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t506 TYPE REF TO zcl_lnt_abstract_token.
            DATA t507 TYPE REF TO zcl_lnt_expression_node.
            DATA(t508) = CAST zif_lnt_node( t1 ).
            DATA t509 TYPE REF TO object.
            t509 = t508.
            t507 ?= t509.
            t506 = t507->get_first_token( ).
            DATA(t510) = t500.
            DATA t511 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t511.
            t504 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t505 i_token = t506 i_message_26cb = t510 i_fix = t511 ).
            APPEND t504 TO t502->items.
            DATA t512 TYPE REF TO zcl_lnt_void_type.
            CLEAR t512.
            DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t513.
            DATA(t514) = abap_true.
            IF t514 = abap_true.
              DATA(t515) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t516) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t516->has = abap_true.
              t516->value = t515.
              t513 = t516.
            ELSE.
              DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t517.
              t513 = t517.
            ENDIF.
            DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t518.
            t512 = zcl_lnt_void_type=>get_db65( i_voided = t513 i_qualified_name = t518 ).
            result = t512.
            RETURN.
          ENDIF.
          DATA t519 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t519.
          DATA(t520) = abap_true.
          IF t520 = abap_true.
            DATA(t521) = CAST zcl_lnt_abstract_type( t491 ).
            t519 = t521.
          ELSE.
            DATA t522 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t522.
            t519 = t522.
          ENDIF.
          result = t519.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t523 TYPE REF TO zcl_lnt_unknown_type.
    DATA(t524) = |unknown target type|.
    DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t525.
    t523 = NEW zcl_lnt_unknown_type( i_error = t524 i_qualified_name = t525 ).
    result = t523.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d823_e8b1f095f74b.
  ENDMETHOD.
ENDCLASS.
