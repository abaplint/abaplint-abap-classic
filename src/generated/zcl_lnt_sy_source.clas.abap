* TS: src/abap/5_syntax/expressions/source.ts:40:1 Source
CLASS zcl_lnt_sy_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type i_write_reference TYPE REF TO zlnt_runtime_opti_7f2541396f43
    i_allow_generic_deference TYPE REF TO zlnt_runtime_opti_7f2541396f43 i_read_reference TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS traverse_remaining_children IMPORTING i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS infer IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_found TYPE REF TO zcl_lnt_abstract_type i_arithmetic TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS calculation_type IMPORTING i_left TYPE REF TO zcl_lnt_abstract_type i_right TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS numeric_rank IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLASS-METHODS add_if_inferred IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_inferred_type TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS determine_type IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( i_write_reference ).
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( i_allow_generic_deference ).
    DATA(t6) = CAST zlnt_runtime_opti_7f2541396f43( i_read_reference ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_7f2541396f43( t4 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = abap_false.
        DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t4 = t9.
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = CAST zlnt_runtime_opti_7f2541396f43( t5 ).
    IF t15 IS INITIAL.
      t14 = abap_true.
    ELSEIF t15->has = abap_false.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = abap_false.
        DATA(t19) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t20.
        t16 = t20.
      ENDIF.
      t5 = t16.
    ENDIF.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = CAST zlnt_runtime_opti_7f2541396f43( t6 ).
    IF t22 IS INITIAL.
      t21 = abap_true.
    ELSEIF t22->has = abap_false.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA(t25) = abap_true.
        DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t26->has = abap_true.
        t26->value = t25.
        t23 = t26.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t27.
        t23 = t27.
      ENDIF.
      t6 = t23.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = CAST zcl_lnt_expression_node( t1 ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zcl_lnt_expression_node( t29 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zcl_lnt_abstract_node.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    DATA(t42) = CAST zcl_lnt_expression_node( t1 ).
    t41 = t42.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t44) = CAST zcl_lnt_abstract_node( t40 ).
    t43 = t44->children.
    t39 = t43.
    t38 ?= t39.
    t37 = t38->slice0( ).
    t36 = t37.
    DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    DATA t48 TYPE REF TO object.
    t48 = t47->shift( ).
    t46 ?= t48.
    t45 = t46.
    DATA t49 TYPE abap_bool.
    DATA(t50) = CAST zif_lnt_union_4cf1d054( t45 ).
    t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_token_node ).
    IF t49 = abap_true.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      DATA t53 TYPE REF TO zcl_lnt_token_node.
      DATA t54 TYPE REF TO zcl_lnt_token_node.
      DATA(t55) = CAST zif_lnt_union_4cf1d054( t45 ).
      DATA t56 TYPE REF TO object.
      t56 = t55.
      t54 ?= t56.
      t53 = t54.
      DATA t57 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t58) = CAST zcl_lnt_token_node( t53 ).
      t57 = t58->token.
      t52 = t57.
      t51 = t52.
      DATA(t59) = VALUE string( ).
      DATA t60 TYPE string.
      DATA t61 TYPE string.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t63) = CAST zcl_lnt_abstract_token( t51 ).
      t62 = t63.
      DATA t64 TYPE string.
      DATA(t65) = CAST zcl_lnt_abstract_token( t62 ).
      t64 = t65->str.
      t61 = t64.
      DATA(t66) = strlen( t61 ).
      t60 = t61.
      IF t60 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t60 TO UPPER CASE.
      ELSE.
        t60 = zlnt_runtime_uppe_91169605024d=>full( t60 ).
      ENDIF.
      t59 = t60.
      DATA t67 TYPE abap_bool.
      DATA(t68) = t59.
      DATA(t69) = |(|.
      t67 = xsdbool( t68 = t69 ).
      IF t67 = abap_true.
      ELSE.
        DATA t70 TYPE abap_bool.
        DATA(t71) = t59.
        DATA(t72) = |-|.
        t70 = xsdbool( t71 = t72 ).
        IF t70 = abap_true.
        ELSE.
          DATA t73 TYPE abap_bool.
          DATA(t74) = t59.
          DATA(t75) = |+|.
          t73 = xsdbool( t74 = t75 ).
          IF t73 = abap_true.
          ELSE.
            DATA t76 TYPE abap_bool.
            DATA(t77) = t59.
            DATA(t78) = |BIT|.
            t76 = xsdbool( t77 = t78 ).
            IF t76 = abap_true.
            ELSE.
              DATA t79 TYPE abap_bool.
              DATA(t80) = t59.
              DATA(t81) = |BOOLC|.
              t79 = xsdbool( t80 = t81 ).
              IF t79 = abap_true.
                DATA t82 TYPE REF TO zif_lnt_method_definition.
                CLEAR t82.
                DATA t83 TYPE REF TO zif_lnt_method_definition.
                CLEAR t83.
                DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t84.
                DATA(t85) = abap_true.
                IF t85 = abap_true.
                  DATA(t86) = t59.
                  DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t87->has = abap_true.
                  t87->value = t86.
                  t84 = t87.
                ELSE.
                  DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t88.
                  t84 = t88.
                ENDIF.
                t83 = zcl_lnt_built_in=>search_builtin( i_name = t84 ).
                t82 = t83.
                DATA t89 TYPE REF TO zif_lnt_method_definition.
                DATA(t90) = CAST zif_lnt_method_definition( t82 ).
                t89 = t90.
                DATA t91 TYPE REF TO zcl_lnt_current_scope.
                DATA(t92) = CAST zcl_lnt_syntax_input( t2 ).
                t91 = t92->scope.
                DATA t93 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t93.
                DATA(t94) = abap_true.
                IF t94 = abap_true.
                  DATA(t95) = CAST zcl_lnt_abstract_token( t51 ).
                  t93 = t95.
                ELSE.
                  DATA t96 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t96.
                  t93 = t96.
                ENDIF.
                DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t97.
                DATA(t98) = VALUE abap_bool( ).
                DATA(t99) = CAST zif_lnt_method_definition( t89 ).
                IF t99 IS INITIAL.
                  t98 = abap_true.
                ENDIF.
                IF t98 = abap_true.
                  DATA t100 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t100.
                  t97 = t100.
                ELSE.
                  DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA t102 TYPE REF TO zif_lnt_method_definition.
                  DATA(t103) = CAST zif_lnt_method_definition( t89 ).
                  t102 = t103.
                  t101 ?= t102.
                  t97 = t101.
                ENDIF.
                DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t105) = |Builtin Method|.
                CREATE OBJECT t104.
                t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t104->sval = t105.
                DATA t106 TYPE string.
                DATA(t107) = CAST zcl_lnt_syntax_input( t2 ).
                t106 = t107->filename.
                DATA t108 TYPE REF TO zcl_lnt_ireference_extras.
                CLEAR t108.
                t91->add_reference( i_usage = t93 i_referencing = t97 i_type_9913 = t104 i_filename = t106 i_extra = t108 ).
                DATA t109 TYPE REF TO zcl_lnt_expression_node.
                DATA t110 TYPE REF TO zcl_lnt_expression_node.
                DATA t111 TYPE REF TO zcl_lnt_expression_node.
                DATA(t112) = CAST zcl_lnt_expression_node( t1 ).
                t111 = t112.
                DATA(t113) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421 ).
                t110 = t111->find_direct_expression( i_type_9913 = t113 ).
                t109 = t110.
                DATA(t114) = CAST zcl_lnt_syntax_input( t2 ).
                zcl_lnt_sy_cond=>run_syntax( i_node = t109 i_input_967e = t114 ).
                DATA t115 TYPE REF TO zcl_lnt_string_type.
                DATA t116 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t116.
                t115 = zcl_lnt_string_type=>get_db65( i_input_967e = t116 ).
                result = t115.
                RETURN.
              ELSE.
                DATA t117 TYPE abap_bool.
                DATA(t118) = t59.
                DATA(t119) = |XSDBOOL|.
                t117 = xsdbool( t118 = t119 ).
                IF t117 = abap_true.
                  DATA t120 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t120.
                  DATA t121 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t121.
                  DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t122.
                  DATA(t123) = abap_true.
                  IF t123 = abap_true.
                    DATA(t124) = t59.
                    DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t125->has = abap_true.
                    t125->value = t124.
                    t122 = t125.
                  ELSE.
                    DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t126.
                    t122 = t126.
                  ENDIF.
                  t121 = zcl_lnt_built_in=>search_builtin( i_name = t122 ).
                  t120 = t121.
                  DATA t127 TYPE REF TO zif_lnt_method_definition.
                  DATA(t128) = CAST zif_lnt_method_definition( t120 ).
                  t127 = t128.
                  DATA t129 TYPE REF TO zcl_lnt_current_scope.
                  DATA(t130) = CAST zcl_lnt_syntax_input( t2 ).
                  t129 = t130->scope.
                  DATA t131 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t131.
                  DATA(t132) = abap_true.
                  IF t132 = abap_true.
                    DATA(t133) = CAST zcl_lnt_abstract_token( t51 ).
                    t131 = t133.
                  ELSE.
                    DATA t134 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t134.
                    t131 = t134.
                  ENDIF.
                  DATA t135 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t135.
                  DATA(t136) = VALUE abap_bool( ).
                  DATA(t137) = CAST zif_lnt_method_definition( t127 ).
                  IF t137 IS INITIAL.
                    t136 = abap_true.
                  ENDIF.
                  IF t136 = abap_true.
                    DATA t138 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t138.
                    t135 = t138.
                  ELSE.
                    DATA t139 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA t140 TYPE REF TO zif_lnt_method_definition.
                    DATA(t141) = CAST zif_lnt_method_definition( t127 ).
                    t140 = t141.
                    t139 ?= t140.
                    t135 = t139.
                  ENDIF.
                  DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t143) = |Builtin Method|.
                  CREATE OBJECT t142.
                  t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t142->sval = t143.
                  DATA t144 TYPE string.
                  DATA(t145) = CAST zcl_lnt_syntax_input( t2 ).
                  t144 = t145->filename.
                  DATA t146 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t146.
                  t129->add_reference( i_usage = t131 i_referencing = t135 i_type_9913 = t142 i_filename = t144 i_extra = t146 ).
                  DATA t147 TYPE REF TO zcl_lnt_expression_node.
                  DATA t148 TYPE REF TO zcl_lnt_expression_node.
                  DATA t149 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t150) = CAST zcl_lnt_expression_node( t1 ).
                  t149 = t150.
                  DATA(t151) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421 ).
                  t148 = t149->find_direct_expression( i_type_9913 = t151 ).
                  t147 = t148.
                  DATA(t152) = CAST zcl_lnt_syntax_input( t2 ).
                  zcl_lnt_sy_cond=>run_syntax( i_node = t147 i_input_967e = t152 ).
                  DATA t153 TYPE REF TO zcl_lnt_character_type.
                  CLEAR t153.
                  DATA(t154) = CONV int8( 1 ).
                  DATA t155 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t155.
                  DATA(t156) = abap_true.
                  IF t156 = abap_true.
                    DATA t157 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t157.
                    DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t158.
                    DATA(t159) = abap_true.
                    IF t159 = abap_true.
                      DATA(t160) = |ABAP_BOOL|.
                      DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t161->has = abap_true.
                      t161->value = t160.
                      t158 = t161.
                    ELSE.
                      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t162.
                      t158 = t162.
                    ENDIF.
                    DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t163.
                    DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t164.
                    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t165.
                    DATA(t166) = abap_true.
                    IF t166 = abap_true.
                      DATA(t167) = |ABAP_BOOL|.
                      DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t168->has = abap_true.
                      t168->value = t167.
                      t165 = t168.
                    ELSE.
                      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t169.
                      t165 = t169.
                    ENDIF.
                    DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t170.
                    DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t171.
                    t157 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t158 i_conversion_exit = t163 i_derived_from_constant = t164 i_ddic_name = t165 i_rtti_name = t170 i_description = t171 ).
                    t155 = t157.
                  ELSE.
                    DATA t172 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t172.
                    t155 = t172.
                  ENDIF.
                  t153 = NEW zcl_lnt_character_type( i_length = t154 i_extra = t155 ).
                  result = t153.
                  RETURN.
                ELSE.
                  DATA t173 TYPE abap_bool.
                  DATA(t174) = t59.
                  DATA(t175) = |REDUCE|.
                  t173 = xsdbool( t174 = t175 ).
                  IF t173 = abap_true.
                    DATA t176 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t177 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t178 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t179) = CAST zcl_lnt_expression_node( t1 ).
                    t178 = t179.
                    DATA(t180) = CAST zcl_lnt_syntax_input( t2 ).
                    DATA(t181) = CAST zcl_lnt_abstract_type( t3 ).
                    t177 = zcl_lnt_sy_source=>determine_type( i_node = t178 i_input_967e = t180 i_target_type = t181 ).
                    t176 = t177.
                    DATA t182 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t183 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t184 TYPE REF TO zcl_lnt_expression_node.
                    DATA t185 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t186) = CAST zcl_lnt_expression_node( t1 ).
                    t185 = t186.
                    DATA(t187) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d246_f8272c765b13 ).
                    t184 = t185->find_direct_expression( i_type_9913 = t187 ).
                    DATA(t188) = CAST zcl_lnt_syntax_input( t2 ).
                    DATA(t189) = CAST zcl_lnt_abstract_type( t176 ).
                    t183 = zcl_lnt_sy_reduce_body=>run_syntax( i_node = t184 i_input_967e = t188 i_target_type = t189 ).
                    t182 = t183.
                    DATA(t190) = VALUE abap_bool( ).
                    DATA(t191) = VALUE abap_bool( ).
                    DATA t192 TYPE REF TO zcl_lnt_abstract_type.
                    DATA(t193) = CAST zcl_lnt_abstract_type( t176 ).
                    t192 = t193.
                    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t195.
                    t194 = t195.
                    DATA(t196) = VALUE abap_bool( ).
                    DATA(t197) = CAST zcl_lnt_abstract_type( t192 ).
                    IF t197 IS INITIAL.
                      t196 = abap_true.
                    ENDIF.
                    t191 = t196.
                    t190 = t191.
                    IF t191 = abap_false.
                      DATA t198 TYPE abap_bool.
                      DATA t199 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t200) = CAST zcl_lnt_abstract_type( t176 ).
                      t199 = t200.
                      t198 = t199->is_generic( ).
                      t190 = t198.
                    ENDIF.
                    IF t190 = abap_true.
                      DATA t201 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t202) = CAST zcl_lnt_expression_node( t1 ).
                      t201 = t202.
                      DATA(t203) = CAST zcl_lnt_syntax_input( t2 ).
                      DATA(t204) = CAST zcl_lnt_abstract_type( t182 ).
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t201 i_input_967e = t203 i_inferred_type = t204 ).
                    ELSE.
                      DATA t205 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t206) = CAST zcl_lnt_expression_node( t1 ).
                      t205 = t206.
                      DATA(t207) = CAST zcl_lnt_syntax_input( t2 ).
                      DATA t208 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t208.
                      DATA(t209) = abap_true.
                      IF t209 = abap_true.
                        DATA t210 TYPE REF TO zcl_lnt_abstract_type.
                        DATA(t211) = CAST zcl_lnt_abstract_type( t176 ).
                        t210 = t211.
                        t208 = t210.
                      ELSE.
                        DATA t212 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t212.
                        t208 = t212.
                      ENDIF.
                      zcl_lnt_sy_source=>add_if_inferred( i_node = t205 i_input_967e = t207 i_inferred_type = t208 ).
                    ENDIF.
                    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
                    DATA(t214) = CAST zcl_lnt_syntax_input( t2 ).
                    zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t213 i_input_967e = t214 ).
                    DATA t215 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t215.
                    DATA t216 TYPE abap_bool.
                    DATA(t217) = CAST zcl_lnt_abstract_type( t176 ).
                    t216 = xsdbool( t217 IS BOUND ).
                    IF t216 = abap_true.
                      DATA t218 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t218.
                      DATA(t219) = abap_true.
                      IF t219 = abap_true.
                        DATA t220 TYPE REF TO zcl_lnt_abstract_type.
                        DATA(t221) = CAST zcl_lnt_abstract_type( t176 ).
                        t220 = t221.
                        t218 = t220.
                      ELSE.
                        DATA t222 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t222.
                        t218 = t222.
                      ENDIF.
                      t215 = t218.
                    ELSE.
                      DATA(t223) = CAST zcl_lnt_abstract_type( t182 ).
                      t215 = t223.
                    ENDIF.
                    result = t215.
                    RETURN.
                  ELSE.
                    DATA t224 TYPE abap_bool.
                    DATA(t225) = t59.
                    DATA(t226) = |SWITCH|.
                    t224 = xsdbool( t225 = t226 ).
                    IF t224 = abap_true.
                      DATA t227 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t228 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t229 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t230) = CAST zcl_lnt_expression_node( t1 ).
                      t229 = t230.
                      DATA(t231) = CAST zcl_lnt_syntax_input( t2 ).
                      DATA(t232) = CAST zcl_lnt_abstract_type( t3 ).
                      t228 = zcl_lnt_sy_source=>determine_type( i_node = t229 i_input_967e = t231 i_target_type = t232 ).
                      t227 = t228.
                      DATA t233 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t234 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t235 TYPE REF TO zcl_lnt_expression_node.
                      DATA t236 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t237) = CAST zcl_lnt_expression_node( t1 ).
                      t236 = t237.
                      DATA(t238) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a ).
                      t235 = t236->find_direct_expression( i_type_9913 = t238 ).
                      DATA(t239) = CAST zcl_lnt_syntax_input( t2 ).
                      DATA(t240) = CAST zcl_lnt_abstract_type( t227 ).
                      t234 = zcl_lnt_sy_switch_body=>run_syntax( i_node = t235 i_input_967e = t239 i_target_type = t240 ).
                      t233 = t234.
                      DATA(t241) = VALUE abap_bool( ).
                      DATA(t242) = VALUE abap_bool( ).
                      DATA t243 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t244) = CAST zcl_lnt_abstract_type( t227 ).
                      t243 = t244.
                      DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t246.
                      t245 = t246.
                      DATA(t247) = VALUE abap_bool( ).
                      DATA(t248) = CAST zcl_lnt_abstract_type( t243 ).
                      IF t248 IS INITIAL.
                        t247 = abap_true.
                      ENDIF.
                      t242 = t247.
                      t241 = t242.
                      IF t242 = abap_false.
                        DATA t249 TYPE abap_bool.
                        DATA t250 TYPE REF TO zcl_lnt_abstract_type.
                        DATA(t251) = CAST zcl_lnt_abstract_type( t227 ).
                        t250 = t251.
                        t249 = t250->is_generic( ).
                        t241 = t249.
                      ENDIF.
                      IF t241 = abap_true.
                        DATA t252 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t253) = CAST zcl_lnt_expression_node( t1 ).
                        t252 = t253.
                        DATA(t254) = CAST zcl_lnt_syntax_input( t2 ).
                        DATA(t255) = CAST zcl_lnt_abstract_type( t233 ).
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t252 i_input_967e = t254 i_inferred_type = t255 ).
                      ELSE.
                        DATA t256 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t257) = CAST zcl_lnt_expression_node( t1 ).
                        t256 = t257.
                        DATA(t258) = CAST zcl_lnt_syntax_input( t2 ).
                        DATA t259 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t259.
                        DATA(t260) = abap_true.
                        IF t260 = abap_true.
                          DATA t261 TYPE REF TO zcl_lnt_abstract_type.
                          DATA(t262) = CAST zcl_lnt_abstract_type( t227 ).
                          t261 = t262.
                          t259 = t261.
                        ELSE.
                          DATA t263 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t263.
                          t259 = t263.
                        ENDIF.
                        zcl_lnt_sy_source=>add_if_inferred( i_node = t256 i_input_967e = t258 i_inferred_type = t259 ).
                      ENDIF.
                      DATA t264 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t264.
                      DATA t265 TYPE abap_bool.
                      DATA(t266) = CAST zcl_lnt_abstract_type( t227 ).
                      t265 = xsdbool( t266 IS BOUND ).
                      IF t265 = abap_true.
                        DATA t267 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t267.
                        DATA(t268) = abap_true.
                        IF t268 = abap_true.
                          DATA t269 TYPE REF TO zcl_lnt_abstract_type.
                          DATA(t270) = CAST zcl_lnt_abstract_type( t227 ).
                          t269 = t270.
                          t267 = t269.
                        ELSE.
                          DATA t271 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t271.
                          t267 = t271.
                        ENDIF.
                        t264 = t267.
                      ELSE.
                        DATA(t272) = CAST zcl_lnt_abstract_type( t233 ).
                        t264 = t272.
                      ENDIF.
                      result = t264.
                      RETURN.
                    ELSE.
                      DATA t273 TYPE abap_bool.
                      DATA(t274) = t59.
                      DATA(t275) = |COND|.
                      t273 = xsdbool( t274 = t275 ).
                      IF t273 = abap_true.
                        DATA t276 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t277 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t278 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t279) = CAST zcl_lnt_expression_node( t1 ).
                        t278 = t279.
                        DATA(t280) = CAST zcl_lnt_syntax_input( t2 ).
                        DATA(t281) = CAST zcl_lnt_abstract_type( t3 ).
                        t277 = zcl_lnt_sy_source=>determine_type( i_node = t278 i_input_967e = t280 i_target_type = t281 ).
                        t276 = t277.
                        DATA t282 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t283 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t284 TYPE REF TO zcl_lnt_expression_node.
                        DATA t285 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t286) = CAST zcl_lnt_expression_node( t1 ).
                        t285 = t286.
                        DATA(t287) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054 ).
                        t284 = t285->find_direct_expression( i_type_9913 = t287 ).
                        DATA(t288) = CAST zcl_lnt_syntax_input( t2 ).
                        DATA(t289) = CAST zcl_lnt_abstract_type( t276 ).
                        t283 = zcl_lnt_sy_cond_body=>run_syntax( i_node = t284 i_input_967e = t288 i_target_type = t289 ).
                        t282 = t283.
                        DATA(t290) = VALUE abap_bool( ).
                        DATA(t291) = VALUE abap_bool( ).
                        DATA t292 TYPE REF TO zcl_lnt_abstract_type.
                        DATA(t293) = CAST zcl_lnt_abstract_type( t276 ).
                        t292 = t293.
                        DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t295.
                        t294 = t295.
                        DATA(t296) = VALUE abap_bool( ).
                        DATA(t297) = CAST zcl_lnt_abstract_type( t292 ).
                        IF t297 IS INITIAL.
                          t296 = abap_true.
                        ENDIF.
                        t291 = t296.
                        t290 = t291.
                        IF t291 = abap_false.
                          DATA t298 TYPE abap_bool.
                          DATA t299 TYPE REF TO zcl_lnt_abstract_type.
                          DATA(t300) = CAST zcl_lnt_abstract_type( t276 ).
                          t299 = t300.
                          t298 = t299->is_generic( ).
                          t290 = t298.
                        ENDIF.
                        IF t290 = abap_true.
                          DATA t301 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t302) = CAST zcl_lnt_expression_node( t1 ).
                          t301 = t302.
                          DATA(t303) = CAST zcl_lnt_syntax_input( t2 ).
                          DATA(t304) = CAST zcl_lnt_abstract_type( t282 ).
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t301 i_input_967e = t303 i_inferred_type = t304 ).
                        ELSE.
                          DATA t305 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t306) = CAST zcl_lnt_expression_node( t1 ).
                          t305 = t306.
                          DATA(t307) = CAST zcl_lnt_syntax_input( t2 ).
                          DATA t308 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t308.
                          DATA(t309) = abap_true.
                          IF t309 = abap_true.
                            DATA t310 TYPE REF TO zcl_lnt_abstract_type.
                            DATA(t311) = CAST zcl_lnt_abstract_type( t276 ).
                            t310 = t311.
                            t308 = t310.
                          ELSE.
                            DATA t312 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t312.
                            t308 = t312.
                          ENDIF.
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t305 i_input_967e = t307 i_inferred_type = t308 ).
                        ENDIF.
                        DATA t313 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA(t314) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
                        DATA t315 TYPE REF TO object.
                        t315 = t314->shift( ).
                        t313 ?= t315.
                        DATA t316 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA(t317) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
                        DATA t318 TYPE REF TO object.
                        t318 = t317->shift( ).
                        t316 ?= t318.
                        DATA t319 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA(t320) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
                        DATA t321 TYPE REF TO object.
                        t321 = t320->shift( ).
                        t319 ?= t321.
                        DATA t322 TYPE REF TO zif_lnt_union_4cf1d054.
                        DATA(t323) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
                        DATA t324 TYPE REF TO object.
                        t324 = t323->shift( ).
                        t322 ?= t324.
                        DATA(t325) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
                        DATA(t326) = CAST zcl_lnt_syntax_input( t2 ).
                        zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t325 i_input_967e = t326 ).
                        DATA t327 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t327.
                        DATA t328 TYPE abap_bool.
                        DATA(t329) = CAST zcl_lnt_abstract_type( t276 ).
                        t328 = xsdbool( t329 IS BOUND ).
                        IF t328 = abap_true.
                          DATA t330 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t330.
                          DATA(t331) = abap_true.
                          IF t331 = abap_true.
                            DATA t332 TYPE REF TO zcl_lnt_abstract_type.
                            DATA(t333) = CAST zcl_lnt_abstract_type( t276 ).
                            t332 = t333.
                            t330 = t332.
                          ELSE.
                            DATA t334 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t334.
                            t330 = t334.
                          ENDIF.
                          t327 = t330.
                        ELSE.
                          DATA(t335) = CAST zcl_lnt_abstract_type( t282 ).
                          t327 = t335.
                        ENDIF.
                        result = t327.
                        RETURN.
                      ELSE.
                        DATA t336 TYPE abap_bool.
                        DATA(t337) = t59.
                        DATA(t338) = |CONV|.
                        t336 = xsdbool( t337 = t338 ).
                        IF t336 = abap_true.
                          DATA t339 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t340 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t341 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t342) = CAST zcl_lnt_expression_node( t1 ).
                          t341 = t342.
                          DATA(t343) = CAST zcl_lnt_syntax_input( t2 ).
                          DATA(t344) = CAST zcl_lnt_abstract_type( t3 ).
                          t340 = zcl_lnt_sy_source=>determine_type( i_node = t341 i_input_967e = t343 i_target_type = t344 ).
                          t339 = t340.
                          DATA t345 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t346 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t347 TYPE REF TO zcl_lnt_expression_node.
                          DATA t348 TYPE REF TO zcl_lnt_expression_node.
                          DATA t349 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t350) = CAST zcl_lnt_expression_node( t1 ).
                          t349 = t350.
                          DATA(t351) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f ).
                          t348 = t349->find_direct_expression( i_type_9913 = t351 ).
                          t347 = t348.
                          DATA(t352) = CAST zcl_lnt_syntax_input( t2 ).
                          t346 = zcl_lnt_sy_conv_body=>run_syntax( i_node = t347 i_input_967e = t352 ).
                          t345 = t346.
                          DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t353.
                          DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t354.
                          DATA t355 TYPE REF TO zcl_lnt_expression_node.
                          DATA t356 TYPE REF TO zcl_lnt_expression_node.
                          DATA t357 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t358) = CAST zcl_lnt_expression_node( t1 ).
                          t357 = t358.
                          DATA(t359) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
                          t356 = t357->find_direct_expression( i_type_9913 = t359 ).
                          t355 = t356.
                          DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t360.
                          DATA(t361) = VALUE abap_bool( ).
                          DATA(t362) = CAST zcl_lnt_expression_node( t355 ).
                          IF t362 IS INITIAL.
                            t361 = abap_true.
                          ENDIF.
                          IF t361 = abap_true.
                            DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t363.
                            t360 = t363.
                          ELSE.
                            DATA t364 TYPE string.
                            DATA t365 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t366) = CAST zcl_lnt_expression_node( t355 ).
                            t365 = t366.
                            t364 = t365->concat_tokens( ).
                            DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t367->has = abap_true.
                            t367->value = t364.
                            t360 = t367.
                          ENDIF.
                          t354 = t360.
                          t353 = t354.
                          DATA t368 TYPE abap_bool.
                          DATA t369 TYPE abap_bool.
                          DATA t370 TYPE REF TO zcl_lnt_type_utils.
                          DATA t371 TYPE REF TO zcl_lnt_current_scope.
                          DATA(t372) = CAST zcl_lnt_syntax_input( t2 ).
                          t371 = t372->scope.
                          t370 = NEW zcl_lnt_type_utils( i_scope = t371 ).
                          DATA(t373) = CAST zcl_lnt_abstract_type( t339 ).
                          DATA(t374) = CAST zcl_lnt_abstract_type( t345 ).
                          t369 = t370->is_convable( i_source_75cf = t373 i_target_5f8a = t374 ).
                          DATA(t375) = abap_false.
                          t368 = xsdbool( t369 = t375 ).
                          IF t368 = abap_true.
                            DATA(t376) = VALUE string( ).
                            DATA(t377) = VALUE string( ).
                            DATA(t378) = VALUE string( ).
                            DATA(t379) = VALUE string( ).
                            DATA(t380) = VALUE string( ).
                            DATA(t381) = |CONV: Types not compatible, |.
                            DATA(t382) = VALUE string( ).
                            DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t383.
                            DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t384.
                            DATA t385 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t385.
                            DATA t386 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t386.
                            DATA t387 TYPE REF TO zcl_lnt_abstract_type.
                            DATA(t388) = CAST zcl_lnt_abstract_type( t339 ).
                            t387 = t388.
                            DATA t389 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t389.
                            DATA(t390) = VALUE abap_bool( ).
                            DATA(t391) = CAST zcl_lnt_abstract_type( t387 ).
                            IF t391 IS INITIAL.
                              t390 = abap_true.
                            ENDIF.
                            IF t390 = abap_true.
                              DATA t392 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t392.
                              t389 = t392.
                            ELSE.
                              DATA t393 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              DATA t394 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t395) = CAST zcl_lnt_abstract_type( t387 ).
                              t394 = t395.
                              t393 = t394->zlnt_builtin_clas_3f891b097658( ).
                              t389 = t393.
                            ENDIF.
                            t386 = t389.
                            t385 = t386.
                            DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t396.
                            DATA(t397) = VALUE abap_bool( ).
                            DATA(t398) = CAST zlnt_runtime_clas_a39833db3295( t385 ).
                            IF t398 IS INITIAL.
                              t397 = abap_true.
                            ENDIF.
                            IF t397 = abap_true.
                              DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t399.
                              t396 = t399.
                            ELSE.
                              DATA t400 TYPE string.
                              DATA t401 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              DATA(t402) = CAST zlnt_runtime_clas_a39833db3295( t385 ).
                              t401 = t402.
                              t400 = t401->name.
                              DATA(t403) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t403->has = abap_true.
                              t403->value = t400.
                              t396 = t403.
                            ENDIF.
                            t384 = t396.
                            t383 = t384.
                            DATA(t404) = VALUE string( ).
                            DATA(t405) = VALUE abap_bool( ).
                            DATA(t406) = CAST zlnt_runtime_opti_4ba3bdccd169( t383 ).
                            IF t406 IS INITIAL.
                              t405 = abap_true.
                            ELSEIF t406->has = abap_false.
                              t405 = abap_true.
                            ENDIF.
                            IF t405 = abap_true.
                              DATA(t407) = |undefined|.
                              t404 = t407.
                            ELSE.
                              DATA t408 TYPE string.
                              DATA(t409) = CAST zlnt_runtime_opti_4ba3bdccd169( t383 ).
                              t408 = t409->value.
                              t404 = t408.
                            ENDIF.
                            t382 = t404.
                            DATA(t410) = strlen( t381 ).
                            t380 = |{ t381 }{ t382 }|.
                            DATA(t411) = |, |.
                            DATA(t412) = strlen( t380 ).
                            t379 = |{ t380 }{ t411 }|.
                            DATA(t413) = VALUE string( ).
                            DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t414.
                            DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t415.
                            DATA t416 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t416.
                            DATA t417 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t417.
                            DATA t418 TYPE REF TO zcl_lnt_abstract_type.
                            DATA(t419) = CAST zcl_lnt_abstract_type( t345 ).
                            t418 = t419.
                            DATA t420 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                            CLEAR t420.
                            DATA(t421) = VALUE abap_bool( ).
                            DATA(t422) = CAST zcl_lnt_abstract_type( t418 ).
                            IF t422 IS INITIAL.
                              t421 = abap_true.
                            ENDIF.
                            IF t421 = abap_true.
                              DATA t423 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              CLEAR t423.
                              t420 = t423.
                            ELSE.
                              DATA t424 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              DATA t425 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t426) = CAST zcl_lnt_abstract_type( t418 ).
                              t425 = t426.
                              t424 = t425->zlnt_builtin_clas_3f891b097658( ).
                              t420 = t424.
                            ENDIF.
                            t417 = t420.
                            t416 = t417.
                            DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t427.
                            DATA(t428) = VALUE abap_bool( ).
                            DATA(t429) = CAST zlnt_runtime_clas_a39833db3295( t416 ).
                            IF t429 IS INITIAL.
                              t428 = abap_true.
                            ENDIF.
                            IF t428 = abap_true.
                              DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t430.
                              t427 = t430.
                            ELSE.
                              DATA t431 TYPE string.
                              DATA t432 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                              DATA(t433) = CAST zlnt_runtime_clas_a39833db3295( t416 ).
                              t432 = t433.
                              t431 = t432->name.
                              DATA(t434) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t434->has = abap_true.
                              t434->value = t431.
                              t427 = t434.
                            ENDIF.
                            t415 = t427.
                            t414 = t415.
                            DATA(t435) = VALUE string( ).
                            DATA(t436) = VALUE abap_bool( ).
                            DATA(t437) = CAST zlnt_runtime_opti_4ba3bdccd169( t414 ).
                            IF t437 IS INITIAL.
                              t436 = abap_true.
                            ELSEIF t437->has = abap_false.
                              t436 = abap_true.
                            ENDIF.
                            IF t436 = abap_true.
                              DATA(t438) = |undefined|.
                              t435 = t438.
                            ELSE.
                              DATA t439 TYPE string.
                              DATA(t440) = CAST zlnt_runtime_opti_4ba3bdccd169( t414 ).
                              t439 = t440->value.
                              t435 = t439.
                            ENDIF.
                            t413 = t435.
                            DATA(t441) = strlen( t379 ).
                            t378 = |{ t379 }{ t413 }|.
                            DATA(t442) = ||.
                            DATA(t443) = strlen( t378 ).
                            t377 = |{ t378 }{ t442 }|.
                            t376 = t377.
                            DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            DATA(t445) = CAST zcl_lnt_syntax_input( t2 ).
                            t444 = t445->issues.
                            DATA t446 TYPE REF TO zcl_lnt_issue.
                            DATA(t447) = CAST zcl_lnt_syntax_input( t2 ).
                            DATA t448 TYPE REF TO zcl_lnt_abstract_token.
                            DATA t449 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t450) = CAST zcl_lnt_expression_node( t1 ).
                            t449 = t450.
                            t448 = t449->get_first_token( ).
                            DATA(t451) = t376.
                            DATA t452 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            CLEAR t452.
                            t446 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t447 i_token = t448 i_message_26cb = t451 i_fix = t452 ).
                            APPEND t446 TO t444->items.
                            DATA t453 TYPE REF TO zcl_lnt_void_type.
                            CLEAR t453.
                            DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t454.
                            DATA(t455) = abap_true.
                            IF t455 = abap_true.
                              DATA(t456) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                              DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t457->has = abap_true.
                              t457->value = t456.
                              t454 = t457.
                            ELSE.
                              DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t458.
                              t454 = t458.
                            ENDIF.
                            DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t459.
                            t453 = zcl_lnt_void_type=>get_db65( i_voided = t454 i_qualified_name = t459 ).
                            result = t453.
                            RETURN.
                          ELSE.
                            DATA(t460) = VALUE abap_bool( ).
                            DATA(t461) = VALUE abap_bool( ).
                            DATA t462 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t462.
                            DATA t463 TYPE REF TO zcl_lnt_abstract_type.
                            DATA(t464) = CAST zcl_lnt_abstract_type( t339 ).
                            t463 = t464.
                            DATA t465 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t465.
                            DATA(t466) = VALUE abap_bool( ).
                            DATA(t467) = CAST zcl_lnt_abstract_type( t463 ).
                            IF t467 IS INITIAL.
                              t466 = abap_true.
                            ENDIF.
                            IF t466 = abap_true.
                              DATA t468 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              CLEAR t468.
                              t465 = t468.
                            ELSE.
                              DATA t469 TYPE abap_bool.
                              DATA t470 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t471) = CAST zcl_lnt_abstract_type( t463 ).
                              t470 = t471.
                              t469 = t470->is_generic( ).
                              DATA(t472) = NEW zlnt_runtime_opti_7f2541396f43( ).
                              t472->has = abap_true.
                              t472->value = t469.
                              t465 = t472.
                            ENDIF.
                            t462 = t465.
                            IF t462 IS BOUND.
                              IF t462->has = abap_true.
                                t461 = xsdbool( t462->value IS NOT INITIAL ).
                              ENDIF.
                            ENDIF.
                            t460 = t461.
                            IF t461 = abap_true.
                              DATA(t473) = VALUE abap_bool( ).
                              DATA(t474) = CAST zlnt_runtime_opti_4ba3bdccd169( t353 ).
                              DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t475.
                              DATA(t476) = abap_true.
                              IF t476 = abap_true.
                                DATA(t477) = |#|.
                                DATA(t478) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t478->has = abap_true.
                                t478->value = t477.
                                t475 = t478.
                              ELSE.
                                DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t479.
                                t475 = t479.
                              ENDIF.
                              DATA(t480) = VALUE abap_bool( ).
                              DATA(t481) = VALUE abap_bool( ).
                              IF t474 IS BOUND.
                                t480 = t474->has.
                              ENDIF.
                              IF t475 IS BOUND.
                                t481 = t475->has.
                              ENDIF.
                              IF t480 = t481.
                                IF t480 = abap_false.
                                  t473 = abap_true.
                                ELSEIF t474->value = t475->value.
                                  t473 = abap_true.
                                ENDIF.
                              ENDIF.
                              IF t473 = abap_true.
                                t473 = abap_false.
                              ELSE.
                                t473 = abap_true.
                              ENDIF.
                              t460 = t473.
                            ENDIF.
                            IF t460 = abap_true.
                              DATA t482 TYPE string.
                              DATA(t483) = |Cannot CONV to generic type|.
                              t482 = t483.
                              DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              DATA(t485) = CAST zcl_lnt_syntax_input( t2 ).
                              t484 = t485->issues.
                              DATA t486 TYPE REF TO zcl_lnt_issue.
                              DATA(t487) = CAST zcl_lnt_syntax_input( t2 ).
                              DATA t488 TYPE REF TO zcl_lnt_abstract_token.
                              DATA t489 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t490) = CAST zcl_lnt_expression_node( t1 ).
                              t489 = t490.
                              t488 = t489->get_first_token( ).
                              DATA(t491) = t482.
                              DATA t492 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                              CLEAR t492.
                              t486 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t487 i_token = t488 i_message_26cb = t491 i_fix = t492 ).
                              APPEND t486 TO t484->items.
                              DATA t493 TYPE REF TO zcl_lnt_void_type.
                              CLEAR t493.
                              DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t494.
                              DATA(t495) = abap_true.
                              IF t495 = abap_true.
                                DATA(t496) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                                DATA(t497) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t497->has = abap_true.
                                t497->value = t496.
                                t494 = t497.
                              ELSE.
                                DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t498.
                                t494 = t498.
                              ENDIF.
                              DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t499.
                              t493 = zcl_lnt_void_type=>get_db65( i_voided = t494 i_qualified_name = t499 ).
                              result = t493.
                              RETURN.
                            ENDIF.
                          ENDIF.
                          DATA t500 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t501) = CAST zcl_lnt_expression_node( t1 ).
                          t500 = t501.
                          DATA(t502) = CAST zcl_lnt_syntax_input( t2 ).
                          DATA(t503) = CAST zcl_lnt_abstract_type( t339 ).
                          zcl_lnt_sy_source=>add_if_inferred( i_node = t500 i_input_967e = t502 i_inferred_type = t503 ).
                          DATA(t504) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
                          DATA(t505) = CAST zcl_lnt_syntax_input( t2 ).
                          zcl_lnt_sy_source=>traverse_remaining_children( i_children_9020 = t504 i_input_967e = t505 ).
                          DATA(t506) = CAST zcl_lnt_abstract_type( t339 ).
                          result = t506.
                          RETURN.
                        ELSE.
                          DATA t507 TYPE abap_bool.
                          DATA(t508) = t59.
                          DATA(t509) = |REF|.
                          t507 = xsdbool( t508 = t509 ).
                          IF t507 = abap_true.
                            DATA t510 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t511 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t512 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t513) = CAST zcl_lnt_expression_node( t1 ).
                            t512 = t513.
                            DATA(t514) = CAST zcl_lnt_syntax_input( t2 ).
                            DATA(t515) = CAST zcl_lnt_abstract_type( t3 ).
                            t511 = zcl_lnt_sy_source=>determine_type( i_node = t512 i_input_967e = t514 i_target_type = t515 ).
                            t510 = t511.
                            DATA t516 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t517 TYPE REF TO zcl_lnt_abstract_type.
                            DATA t518 TYPE REF TO zcl_lnt_expression_node.
                            DATA t519 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t520) = CAST zcl_lnt_expression_node( t1 ).
                            t519 = t520.
                            DATA(t521) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
                            t518 = t519->find_direct_expression( i_type_9913 = t521 ).
                            DATA(t522) = CAST zcl_lnt_syntax_input( t2 ).
                            DATA t523 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t523.
                            DATA t524 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t524.
                            DATA t525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t525.
                            DATA t526 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t526.
                            t517 = zcl_lnt_sy_source=>run_syntax( i_node = t518 i_input_967e = t522 i_target_type = t523 i_write_reference = t524 i_allow_generic_deference = t525 i_read_reference = t526 ).
                            t516 = t517.
                            DATA(t527) = VALUE abap_bool( ).
                            DATA t528 TYPE abap_bool.
                            DATA t529 TYPE abap_bool.
                            DATA(t530) = CAST zcl_lnt_abstract_type( t510 ).
                            t529 = xsdbool( t530 IS BOUND ).
                            t528 = t529.
                            IF t529 = abap_true.
                              DATA t531 TYPE abap_bool.
                              DATA t532 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t533) = CAST zcl_lnt_abstract_type( t510 ).
                              t532 = t533.
                              t531 = t532->is_generic( ).
                              t528 = t531.
                            ENDIF.
                            t527 = t528.
                            IF t528 = abap_true.
                              DATA t534 TYPE abap_bool.
                              DATA(t535) = CAST zcl_lnt_abstract_type( t516 ).
                              t534 = xsdbool( t535 IS BOUND ).
                              t527 = t534.
                            ENDIF.
                            IF t527 = abap_true.
                              DATA t536 TYPE REF TO zcl_lnt_data_reference.
                              DATA t537 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t538) = CAST zcl_lnt_abstract_type( t516 ).
                              t537 = t538.
                              DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t539.
                              t536 = NEW zcl_lnt_data_reference( i_type_9913 = t537 i_qualified_name = t539 ).
                              t510 = t536.
                            ELSE.
                              DATA(t540) = VALUE abap_bool( ).
                              DATA(t541) = VALUE abap_bool( ).
                              DATA t542 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t543) = CAST zcl_lnt_abstract_type( t510 ).
                              t542 = t543.
                              DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t545.
                              t544 = t545.
                              DATA(t546) = VALUE abap_bool( ).
                              DATA(t547) = CAST zcl_lnt_abstract_type( t542 ).
                              IF t547 IS INITIAL.
                                t546 = abap_true.
                              ENDIF.
                              t541 = t546.
                              t540 = t541.
                              IF t541 = abap_true.
                                DATA t548 TYPE abap_bool.
                                DATA(t549) = CAST zcl_lnt_abstract_type( t516 ).
                                t548 = xsdbool( t549 IS BOUND ).
                                t540 = t548.
                              ENDIF.
                              IF t540 = abap_true.
                                DATA t550 TYPE abap_bool.
                                DATA(t551) = CAST zcl_lnt_abstract_type( t516 ).
                                t550 = xsdbool( t551 IS BOUND AND t551 IS INSTANCE OF zcl_lnt_any_type ).
                                IF t550 = abap_true.
                                  DATA t552 TYPE REF TO zcl_lnt_data_reference.
                                  CLEAR t552.
                                  DATA t553 TYPE REF TO zcl_lnt_void_type.
                                  CLEAR t553.
                                  DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t554.
                                  DATA(t555) = abap_true.
                                  IF t555 = abap_true.
                                    DATA(t556) = |REF-ANY|.
                                    DATA(t557) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                    t557->has = abap_true.
                                    t557->value = t556.
                                    t554 = t557.
                                  ELSE.
                                    DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t558.
                                    t554 = t558.
                                  ENDIF.
                                  DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t559.
                                  t553 = zcl_lnt_void_type=>get_db65( i_voided = t554 i_qualified_name = t559 ).
                                  DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t560.
                                  t552 = NEW zcl_lnt_data_reference( i_type_9913 = t553 i_qualified_name = t560 ).
                                  t510 = t552.
                                ELSE.
                                  DATA t561 TYPE REF TO zcl_lnt_data_reference.
                                  DATA t562 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA(t563) = CAST zcl_lnt_abstract_type( t516 ).
                                  t562 = t563.
                                  DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t564.
                                  t561 = NEW zcl_lnt_data_reference( i_type_9913 = t562 i_qualified_name = t564 ).
                                  t510 = t561.
                                ENDIF.
                              ELSE.
                                DATA t565 TYPE abap_bool.
                                DATA t566 TYPE abap_bool.
                                DATA(t567) = CAST zcl_lnt_abstract_type( t510 ).
                                t566 = xsdbool( t567 IS BOUND ).
                                t565 = t566.
                                IF t566 = abap_true.
                                  DATA(t568) = VALUE abap_bool( ).
                                  DATA t569 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA(t570) = CAST zcl_lnt_abstract_type( t3 ).
                                  t569 = t570.
                                  DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  CLEAR t572.
                                  t571 = t572.
                                  DATA(t573) = VALUE abap_bool( ).
                                  DATA(t574) = CAST zcl_lnt_abstract_type( t569 ).
                                  IF t574 IS INITIAL.
                                    t573 = abap_true.
                                  ENDIF.
                                  t568 = t573.
                                  t565 = t568.
                                ENDIF.
                                IF t565 = abap_true.
                                  DATA t575 TYPE REF TO zcl_lnt_data_reference.
                                  DATA t576 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA(t577) = CAST zcl_lnt_abstract_type( t510 ).
                                  t576 = t577.
                                  DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t578.
                                  t575 = NEW zcl_lnt_data_reference( i_type_9913 = t576 i_qualified_name = t578 ).
                                  t510 = t575.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                            DATA t579 TYPE REF TO zcl_lnt_expression_node.
                            DATA(t580) = CAST zcl_lnt_expression_node( t1 ).
                            t579 = t580.
                            DATA(t581) = CAST zcl_lnt_syntax_input( t2 ).
                            DATA(t582) = CAST zcl_lnt_abstract_type( t510 ).
                            zcl_lnt_sy_source=>add_if_inferred( i_node = t579 i_input_967e = t581 i_inferred_type = t582 ).
                            DATA(t583) = CAST zcl_lnt_abstract_type( t510 ).
                            result = t583.
                            RETURN.
                          ELSE.
                            DATA t584 TYPE abap_bool.
                            DATA(t585) = t59.
                            DATA(t586) = |FILTER|.
                            t584 = xsdbool( t585 = t586 ).
                            IF t584 = abap_true.
                              DATA t587 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t588 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t589 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t590) = CAST zcl_lnt_expression_node( t1 ).
                              t589 = t590.
                              DATA(t591) = CAST zcl_lnt_syntax_input( t2 ).
                              DATA(t592) = CAST zcl_lnt_abstract_type( t3 ).
                              t588 = zcl_lnt_sy_source=>determine_type( i_node = t589 i_input_967e = t591 i_target_type = t592 ).
                              t587 = t588.
                              DATA t593 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t594 TYPE REF TO zcl_lnt_abstract_type.
                              DATA t595 TYPE REF TO zcl_lnt_expression_node.
                              DATA t596 TYPE REF TO zcl_lnt_expression_node.
                              DATA(t597) = CAST zcl_lnt_expression_node( t1 ).
                              t596 = t597.
                              DATA(t598) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d169_f7493de77386 ).
                              t595 = t596->find_direct_expression( i_type_9913 = t598 ).
                              DATA(t599) = CAST zcl_lnt_syntax_input( t2 ).
                              DATA(t600) = CAST zcl_lnt_abstract_type( t587 ).
                              t594 = zcl_lnt_sy_filter_body=>run_syntax( i_node = t595 i_input_967e = t599 i_target_type = t600 ).
                              t593 = t594.
                              DATA(t601) = VALUE abap_bool( ).
                              DATA(t602) = VALUE abap_bool( ).
                              DATA t603 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t604) = CAST zcl_lnt_abstract_type( t587 ).
                              t603 = t604.
                              DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              DATA t606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t606.
                              t605 = t606.
                              DATA(t607) = VALUE abap_bool( ).
                              DATA(t608) = CAST zcl_lnt_abstract_type( t603 ).
                              IF t608 IS INITIAL.
                                t607 = abap_true.
                              ENDIF.
                              t602 = t607.
                              t601 = t602.
                              IF t602 = abap_false.
                                DATA t609 TYPE abap_bool.
                                DATA t610 TYPE REF TO zcl_lnt_abstract_type.
                                DATA(t611) = CAST zcl_lnt_abstract_type( t587 ).
                                t610 = t611.
                                t609 = t610->is_generic( ).
                                t601 = t609.
                              ENDIF.
                              IF t601 = abap_true.
                                DATA t612 TYPE REF TO zcl_lnt_expression_node.
                                DATA(t613) = CAST zcl_lnt_expression_node( t1 ).
                                t612 = t613.
                                DATA(t614) = CAST zcl_lnt_syntax_input( t2 ).
                                DATA(t615) = CAST zcl_lnt_abstract_type( t593 ).
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t612 i_input_967e = t614 i_inferred_type = t615 ).
                              ELSE.
                                DATA t616 TYPE REF TO zcl_lnt_expression_node.
                                DATA(t617) = CAST zcl_lnt_expression_node( t1 ).
                                t616 = t617.
                                DATA(t618) = CAST zcl_lnt_syntax_input( t2 ).
                                DATA t619 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t619.
                                DATA(t620) = abap_true.
                                IF t620 = abap_true.
                                  DATA t621 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA(t622) = CAST zcl_lnt_abstract_type( t587 ).
                                  t621 = t622.
                                  t619 = t621.
                                ELSE.
                                  DATA t623 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t623.
                                  t619 = t623.
                                ENDIF.
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t616 i_input_967e = t618 i_inferred_type = t619 ).
                              ENDIF.
                              DATA t624 TYPE abap_bool.
                              DATA t625 TYPE abap_bool.
                              DATA(t626) = CAST zcl_lnt_abstract_type( t587 ).
                              t625 = xsdbool( t626 IS BOUND ).
                              t624 = t625.
                              IF t625 = abap_true.
                                DATA t627 TYPE abap_bool.
                                DATA t628 TYPE abap_bool.
                                DATA t629 TYPE REF TO zcl_lnt_abstract_type.
                                DATA(t630) = CAST zcl_lnt_abstract_type( t587 ).
                                t629 = t630.
                                t628 = xsdbool( t629 IS BOUND AND t629 IS INSTANCE OF zcl_lnt_unknown_type ).
                                t627 = xsdbool( t628 = abap_false ).
                                t624 = t627.
                              ENDIF.
                              IF t624 = abap_true.
                                DATA t631 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t631.
                                DATA(t632) = abap_true.
                                IF t632 = abap_true.
                                  DATA t633 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA(t634) = CAST zcl_lnt_abstract_type( t587 ).
                                  t633 = t634.
                                  t631 = t633.
                                ELSE.
                                  DATA t635 TYPE REF TO zcl_lnt_abstract_type.
                                  CLEAR t635.
                                  t631 = t635.
                                ENDIF.
                                result = t631.
                                RETURN.
                              ELSE.
                                DATA(t636) = CAST zcl_lnt_abstract_type( t593 ).
                                result = t636.
                                RETURN.
                              ENDIF.
                            ELSE.
                              DATA t637 TYPE abap_bool.
                              DATA(t638) = t59.
                              DATA(t639) = |CORRESPONDING|.
                              t637 = xsdbool( t638 = t639 ).
                              IF t637 = abap_true.
                                DATA t640 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t641 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t642 TYPE REF TO zcl_lnt_expression_node.
                                DATA(t643) = CAST zcl_lnt_expression_node( t1 ).
                                t642 = t643.
                                DATA(t644) = CAST zcl_lnt_syntax_input( t2 ).
                                DATA(t645) = CAST zcl_lnt_abstract_type( t3 ).
                                t641 = zcl_lnt_sy_source=>determine_type( i_node = t642 i_input_967e = t644 i_target_type = t645 ).
                                t640 = t641.
                                DATA t646 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t647 TYPE REF TO zcl_lnt_expression_node.
                                DATA t648 TYPE REF TO zcl_lnt_expression_node.
                                DATA(t649) = CAST zcl_lnt_expression_node( t1 ).
                                t648 = t649.
                                DATA(t650) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743 ).
                                t647 = t648->find_direct_expression( i_type_9913 = t650 ).
                                DATA(t651) = CAST zcl_lnt_syntax_input( t2 ).
                                DATA(t652) = CAST zcl_lnt_abstract_type( t640 ).
                                t646 = zcl_lnt_sy_corresponding_body=>run_syntax( i_node = t647 i_input_967e = t651 i_target_type = t652 ).
                                DATA t653 TYPE REF TO zcl_lnt_expression_node.
                                DATA(t654) = CAST zcl_lnt_expression_node( t1 ).
                                t653 = t654.
                                DATA(t655) = CAST zcl_lnt_syntax_input( t2 ).
                                DATA(t656) = CAST zcl_lnt_abstract_type( t640 ).
                                zcl_lnt_sy_source=>add_if_inferred( i_node = t653 i_input_967e = t655 i_inferred_type = t656 ).
                                DATA(t657) = CAST zcl_lnt_abstract_type( t640 ).
                                result = t657.
                                RETURN.
                              ELSE.
                                DATA t658 TYPE abap_bool.
                                DATA(t659) = t59.
                                DATA(t660) = |EXACT|.
                                t658 = xsdbool( t659 = t660 ).
                                IF t658 = abap_true.
                                  DATA t661 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA t662 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA t663 TYPE REF TO zcl_lnt_expression_node.
                                  DATA(t664) = CAST zcl_lnt_expression_node( t1 ).
                                  t663 = t664.
                                  DATA(t665) = CAST zcl_lnt_syntax_input( t2 ).
                                  DATA(t666) = CAST zcl_lnt_abstract_type( t3 ).
                                  t662 = zcl_lnt_sy_source=>determine_type( i_node = t663 i_input_967e = t665 i_target_type = t666 ).
                                  t661 = t662.
                                  DATA t667 TYPE REF TO zcl_lnt_abstract_type.
                                  DATA t668 TYPE REF TO zcl_lnt_expression_node.
                                  DATA t669 TYPE REF TO zcl_lnt_expression_node.
                                  DATA(t670) = CAST zcl_lnt_expression_node( t1 ).
                                  t669 = t670.
                                  DATA(t671) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
                                  t668 = t669->find_direct_expression( i_type_9913 = t671 ).
                                  DATA(t672) = CAST zcl_lnt_syntax_input( t2 ).
                                  DATA(t673) = CAST zcl_lnt_abstract_type( t661 ).
                                  DATA t674 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t674.
                                  DATA t675 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t675.
                                  DATA t676 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t676.
                                  t667 = zcl_lnt_sy_source=>run_syntax( i_node = t668 i_input_967e = t672 i_target_type = t673 i_write_reference = t674 i_allow_generic_deference = t675 i_read_reference = t676 ).
                                  DATA t677 TYPE REF TO zcl_lnt_expression_node.
                                  DATA(t678) = CAST zcl_lnt_expression_node( t1 ).
                                  t677 = t678.
                                  DATA(t679) = CAST zcl_lnt_syntax_input( t2 ).
                                  DATA(t680) = CAST zcl_lnt_abstract_type( t661 ).
                                  zcl_lnt_sy_source=>add_if_inferred( i_node = t677 i_input_967e = t679 i_inferred_type = t680 ).
                                  DATA(t681) = CAST zcl_lnt_abstract_type( t661 ).
                                  result = t681.
                                  RETURN.
                                ELSE.
                                  DATA t682 TYPE abap_bool.
                                  DATA(t683) = t59.
                                  DATA(t684) = |VALUE|.
                                  t682 = xsdbool( t683 = t684 ).
                                  IF t682 = abap_true.
                                    DATA t685 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t686 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t687 TYPE REF TO zcl_lnt_expression_node.
                                    DATA(t688) = CAST zcl_lnt_expression_node( t1 ).
                                    t687 = t688.
                                    DATA(t689) = CAST zcl_lnt_syntax_input( t2 ).
                                    DATA(t690) = CAST zcl_lnt_abstract_type( t3 ).
                                    t686 = zcl_lnt_sy_source=>determine_type( i_node = t687 i_input_967e = t689 i_target_type = t690 ).
                                    t685 = t686.
                                    DATA t691 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t692 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t693 TYPE REF TO zcl_lnt_expression_node.
                                    DATA t694 TYPE REF TO zcl_lnt_expression_node.
                                    DATA(t695) = CAST zcl_lnt_expression_node( t1 ).
                                    t694 = t695.
                                    DATA(t696) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac ).
                                    t693 = t694->find_direct_expression( i_type_9913 = t696 ).
                                    DATA(t697) = CAST zcl_lnt_syntax_input( t2 ).
                                    DATA(t698) = CAST zcl_lnt_abstract_type( t685 ).
                                    t692 = zcl_lnt_sy_value_body=>run_syntax( i_node = t693 i_input_967e = t697 i_target_type = t698 ).
                                    t691 = t692.
                                    DATA(t699) = VALUE abap_bool( ).
                                    DATA(t700) = VALUE abap_bool( ).
                                    DATA t701 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA(t702) = CAST zcl_lnt_abstract_type( t685 ).
                                    t701 = t702.
                                    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    CLEAR t704.
                                    t703 = t704.
                                    DATA(t705) = VALUE abap_bool( ).
                                    DATA(t706) = CAST zcl_lnt_abstract_type( t701 ).
                                    IF t706 IS INITIAL.
                                      t705 = abap_true.
                                    ENDIF.
                                    t700 = t705.
                                    t699 = t700.
                                    IF t700 = abap_false.
                                      DATA t707 TYPE abap_bool.
                                      DATA t708 TYPE REF TO zcl_lnt_abstract_type.
                                      DATA(t709) = CAST zcl_lnt_abstract_type( t685 ).
                                      t708 = t709.
                                      t707 = t708->is_generic( ).
                                      t699 = t707.
                                    ENDIF.
                                    IF t699 = abap_true.
                                      DATA t710 TYPE REF TO zcl_lnt_expression_node.
                                      DATA(t711) = CAST zcl_lnt_expression_node( t1 ).
                                      t710 = t711.
                                      DATA(t712) = CAST zcl_lnt_syntax_input( t2 ).
                                      DATA(t713) = CAST zcl_lnt_abstract_type( t691 ).
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t710 i_input_967e = t712 i_inferred_type = t713 ).
                                    ELSE.
                                      DATA t714 TYPE REF TO zcl_lnt_expression_node.
                                      DATA(t715) = CAST zcl_lnt_expression_node( t1 ).
                                      t714 = t715.
                                      DATA(t716) = CAST zcl_lnt_syntax_input( t2 ).
                                      DATA t717 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t717.
                                      DATA(t718) = abap_true.
                                      IF t718 = abap_true.
                                        DATA t719 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA(t720) = CAST zcl_lnt_abstract_type( t685 ).
                                        t719 = t720.
                                        t717 = t719.
                                      ELSE.
                                        DATA t721 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t721.
                                        t717 = t721.
                                      ENDIF.
                                      zcl_lnt_sy_source=>add_if_inferred( i_node = t714 i_input_967e = t716 i_inferred_type = t717 ).
                                    ENDIF.
                                    DATA t722 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t722.
                                    DATA t723 TYPE abap_bool.
                                    DATA(t724) = CAST zcl_lnt_abstract_type( t685 ).
                                    t723 = xsdbool( t724 IS BOUND ).
                                    IF t723 = abap_true.
                                      DATA t725 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t725.
                                      DATA(t726) = abap_true.
                                      IF t726 = abap_true.
                                        DATA t727 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA(t728) = CAST zcl_lnt_abstract_type( t685 ).
                                        t727 = t728.
                                        t725 = t727.
                                      ELSE.
                                        DATA t729 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t729.
                                        t725 = t729.
                                      ENDIF.
                                      t722 = t725.
                                    ELSE.
                                      DATA(t730) = CAST zcl_lnt_abstract_type( t691 ).
                                      t722 = t730.
                                    ENDIF.
                                    result = t722.
                                    RETURN.
                                  ELSE.
                                    DATA t731 TYPE REF TO zcl_lnt_unknown_type.
                                    DATA t732 TYPE string.
                                    DATA(t733) = |todo, Source type |.
                                    DATA(t734) = t59.
                                    DATA(t735) = strlen( t733 ).
                                    t732 = |{ t733 }{ t734 }|.
                                    DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t736.
                                    t731 = NEW zcl_lnt_unknown_type( i_error = t732 i_qualified_name = t736 ).
                                    result = t731.
                                    RETURN.
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
          ENDIF.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t737) = VALUE abap_bool( ).
      DATA(t738) = VALUE abap_bool( ).
      DATA t739 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t740) = CAST zif_lnt_union_4cf1d054( t45 ).
      t739 = t740.
      DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t742.
      t741 = t742.
      DATA(t743) = VALUE abap_bool( ).
      DATA(t744) = CAST zif_lnt_union_4cf1d054( t739 ).
      IF t744 IS INITIAL.
        t743 = abap_true.
      ENDIF.
      t738 = t743.
      t737 = t738.
      IF t738 = abap_false.
        DATA t745 TYPE abap_bool.
        DATA t746 TYPE abap_bool.
        DATA(t747) = CAST zif_lnt_union_4cf1d054( t45 ).
        t746 = xsdbool( t747 IS BOUND AND t747 IS INSTANCE OF zcl_lnt_expression_node ).
        t745 = xsdbool( t746 = abap_false ).
        t737 = t745.
      ENDIF.
      IF t737 = abap_true.
        DATA t748 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t748.
        result = t748.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t749 TYPE REF TO zcl_lnt_abstract_type.
    DATA t750 TYPE REF TO zcl_lnt_unknown_type.
    DATA(t751) = |todo, Source type|.
    DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t752.
    t750 = NEW zcl_lnt_unknown_type( i_error = t751 i_qualified_name = t752 ).
    t749 = t750.
    DATA t753 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t754 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t754.
    t753 = t754.
    DATA t755 TYPE abap_bool.
    DATA(t756) = CAST zlnt_runtime_opti_7f2541396f43( t6 ).
    t755 = t756->value.
    IF t755 = abap_true.
      DATA(t757) = CAST zlnt_runtime_arra_8ecd6afe19e0( t753 ).
      DATA(t758) = |Read From|.
      APPEND t758 TO t757->items.
    ENDIF.
    DATA t759 TYPE abap_bool.
    DATA(t760) = CAST zlnt_runtime_opti_7f2541396f43( t4 ).
    t759 = t760->value.
    IF t759 = abap_true.
      DATA(t761) = CAST zlnt_runtime_arra_8ecd6afe19e0( t753 ).
      DATA(t762) = |Write To|.
      APPEND t762 TO t761->items.
    ENDIF.
    DATA t763 TYPE abap_bool.
    DATA(t764) = abap_false.
    t763 = t764.
    DATA t765 TYPE abap_bool.
    DATA(t766) = abap_false.
    t765 = t766.
    DATA t767 TYPE abap_bool.
    DATA(t768) = abap_false.
    t767 = t768.
    DO.
      DATA t769 TYPE abap_bool.
      DATA t770 TYPE i.
      DATA(t771) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
      t770 = lines( t771->items ).
      DATA(t772) = 0.
      t769 = xsdbool( t770 >= t772 ).
      IF t769 = abap_false.
        EXIT.
      ENDIF.
      DATA t773 TYPE abap_bool.
      DATA(t774) = CAST zif_lnt_union_4cf1d054( t45 ).
      t773 = xsdbool( t774 IS BOUND AND t774 IS INSTANCE OF zcl_lnt_expression_node ).
      IF t773 = abap_true.
        DATA t775 TYPE REF TO zif_lnt_statement_runnable.
        DATA t776 TYPE REF TO zif_lnt_statement_runnable.
        DATA t777 TYPE REF TO zcl_lnt_expression_node.
        DATA(t778) = CAST zif_lnt_union_4cf1d054( t45 ).
        DATA t779 TYPE REF TO object.
        t779 = t778.
        t777 ?= t779.
        t776 = t777->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t775 = t776.
        DATA t780 TYPE abap_bool.
        DATA(t781) = CAST zif_lnt_statement_runnable( t775 ).
        t780 = xsdbool( t781 IS BOUND AND t781 IS INSTANCE OF zcl_lnt_st_method_call_chain ).
        IF t780 = abap_true.
          DATA t782 TYPE REF TO zcl_lnt_abstract_type.
          DATA t783 TYPE REF TO zcl_lnt_abstract_type.
          DATA t784 TYPE REF TO zcl_lnt_expression_node.
          DATA(t785) = CAST zif_lnt_union_4cf1d054( t45 ).
          DATA t786 TYPE REF TO object.
          t786 = t785.
          t784 ?= t786.
          DATA(t787) = CAST zcl_lnt_syntax_input( t2 ).
          DATA(t788) = CAST zcl_lnt_abstract_type( t3 ).
          t783 = zcl_lnt_sy_method_call_chain=>run_syntax( i_node = t784 i_input_967e = t787 i_target_type = t788 ).
          t782 = t783.
          DATA t789 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t789.
          DATA t790 TYPE abap_bool.
          DATA(t791) = t767.
          DATA(t792) = abap_true.
          t790 = xsdbool( t791 = t792 ).
          IF t790 = abap_true.
            DATA t793 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t793.
            DATA(t794) = CAST zcl_lnt_abstract_type( t749 ).
            DATA(t795) = CAST zcl_lnt_abstract_type( t782 ).
            DATA t796 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t796.
            DATA(t797) = abap_true.
            IF t797 = abap_true.
              DATA(t798) = abap_true.
              DATA(t799) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t799->has = abap_true.
              t799->value = t798.
              t796 = t799.
            ELSE.
              DATA t800 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t800.
              t796 = t800.
            ENDIF.
            t793 = zcl_lnt_sy_source=>infer( i_context = t794 i_found = t795 i_arithmetic = t796 ).
            t789 = t793.
          ELSE.
            DATA(t801) = CAST zcl_lnt_abstract_type( t782 ).
            t789 = t801.
          ENDIF.
          t749 = t789.
          DATA(t802) = VALUE abap_bool( ).
          DATA t803 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t804) = CAST zcl_lnt_abstract_type( t749 ).
          t803 = t804.
          DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t806.
          t805 = t806.
          DATA(t807) = VALUE abap_bool( ).
          DATA(t808) = CAST zcl_lnt_abstract_type( t803 ).
          IF t808 IS INITIAL.
            t807 = abap_true.
          ENDIF.
          t802 = t807.
          IF t802 = abap_true.
            DATA t809 TYPE string.
            DATA(t810) = |Method has no RETURNING value|.
            t809 = t810.
            DATA t811 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t812) = CAST zcl_lnt_syntax_input( t2 ).
            t811 = t812->issues.
            DATA t813 TYPE REF TO zcl_lnt_issue.
            DATA(t814) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t815 TYPE REF TO zcl_lnt_abstract_token.
            DATA t816 TYPE REF TO zcl_lnt_expression_node.
            DATA(t817) = CAST zcl_lnt_expression_node( t1 ).
            t816 = t817.
            t815 = t816->get_first_token( ).
            DATA(t818) = t809.
            DATA t819 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t819.
            t813 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t814 i_token = t815 i_message_26cb = t818 i_fix = t819 ).
            APPEND t813 TO t811->items.
            DATA t820 TYPE REF TO zcl_lnt_void_type.
            CLEAR t820.
            DATA t821 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t821.
            DATA(t822) = abap_true.
            IF t822 = abap_true.
              DATA(t823) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t824) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t824->has = abap_true.
              t824->value = t823.
              t821 = t824.
            ELSE.
              DATA t825 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t825.
              t821 = t825.
            ENDIF.
            DATA t826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t826.
            t820 = zcl_lnt_void_type=>get_db65( i_voided = t821 i_qualified_name = t826 ).
            result = t820.
            RETURN.
          ENDIF.
        ELSE.
          DATA t827 TYPE abap_bool.
          DATA(t828) = CAST zif_lnt_statement_runnable( t775 ).
          t827 = xsdbool( t828 IS BOUND AND t828 IS INSTANCE OF zcl_lnt_st_field_chain ).
          IF t827 = abap_true.
            DATA t829 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t829.
            DATA t830 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t830.
            DATA t831 TYPE REF TO zcl_lnt_expression_node.
            DATA(t832) = CAST zif_lnt_union_4cf1d054( t45 ).
            DATA t833 TYPE REF TO object.
            t833 = t832.
            t831 ?= t833.
            DATA(t834) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t835.
            DATA(t836) = abap_true.
            IF t836 = abap_true.
              DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t837.
              DATA(t838) = CAST zlnt_runtime_arra_8ecd6afe19e0( t753 ).
              IF t838 IS BOUND.
                CREATE OBJECT t837.
                t837->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                DATA t839 TYPE REF TO object.
                t839 = t838.
                t837->oval = t839.
              ENDIF.
              t835 = t837.
            ELSE.
              DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t840.
              t835 = t840.
            ENDIF.
            DATA t841 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t841.
            DATA(t842) = abap_true.
            IF t842 = abap_true.
              DATA t843 TYPE abap_bool.
              DATA(t844) = CAST zlnt_runtime_opti_7f2541396f43( t5 ).
              t843 = t844->value.
              DATA(t845) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t845->has = abap_true.
              t845->value = t843.
              t841 = t845.
            ELSE.
              DATA t846 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t846.
              t841 = t846.
            ENDIF.
            t830 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t831 i_input_967e = t834 i_ref_type = t835 i_allow_generic_deference = t841 ).
            t829 = t830.
            DATA t847 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t847.
            DATA t848 TYPE abap_bool.
            DATA(t849) = t767.
            DATA(t850) = abap_true.
            t848 = xsdbool( t849 = t850 ).
            IF t848 = abap_true.
              DATA t851 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t851.
              DATA(t852) = CAST zcl_lnt_abstract_type( t749 ).
              DATA(t853) = CAST zcl_lnt_abstract_type( t829 ).
              DATA t854 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t854.
              DATA(t855) = abap_true.
              IF t855 = abap_true.
                DATA(t856) = abap_true.
                DATA(t857) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t857->has = abap_true.
                t857->value = t856.
                t854 = t857.
              ELSE.
                DATA t858 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t858.
                t854 = t858.
              ENDIF.
              t851 = zcl_lnt_sy_source=>infer( i_context = t852 i_found = t853 i_arithmetic = t854 ).
              t847 = t851.
            ELSE.
              DATA(t859) = CAST zcl_lnt_abstract_type( t829 ).
              t847 = t859.
            ENDIF.
            t749 = t847.
          ELSE.
            DATA t860 TYPE abap_bool.
            DATA(t861) = CAST zif_lnt_statement_runnable( t775 ).
            t860 = xsdbool( t861 IS BOUND AND t861 IS INSTANCE OF zcl_lnt_st_string_template ).
            IF t860 = abap_true.
              DATA t862 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t862.
              DATA(t863) = abap_true.
              IF t863 = abap_true.
                DATA t864 TYPE REF TO zcl_lnt_abstract_type.
                DATA t865 TYPE REF TO zcl_lnt_expression_node.
                DATA(t866) = CAST zif_lnt_union_4cf1d054( t45 ).
                DATA t867 TYPE REF TO object.
                t867 = t866.
                t865 ?= t867.
                DATA(t868) = CAST zcl_lnt_syntax_input( t2 ).
                t864 = zcl_lnt_sy_string_template=>run_syntax( i_node = t865 i_input_967e = t868 ).
                t862 = t864.
              ELSE.
                DATA t869 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t869.
                t862 = t869.
              ENDIF.
              t749 = t862.
            ELSE.
              DATA t870 TYPE abap_bool.
              DATA(t871) = CAST zif_lnt_statement_runnable( t775 ).
              t870 = xsdbool( t871 IS BOUND AND t871 IS INSTANCE OF zcl_lnt_st_source ).
              IF t870 = abap_true.
                DATA t872 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t872.
                DATA t873 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t873.
                DATA t874 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t874.
                DATA(t875) = abap_true.
                IF t875 = abap_true.
                  DATA t876 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t877) = CAST zif_lnt_union_4cf1d054( t45 ).
                  DATA t878 TYPE REF TO object.
                  t878 = t877.
                  t876 ?= t878.
                  t874 = t876.
                ELSE.
                  DATA t879 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t879.
                  t874 = t879.
                ENDIF.
                DATA(t880) = CAST zcl_lnt_syntax_input( t2 ).
                DATA t881 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t881.
                DATA t882 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t882.
                DATA t883 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t883.
                DATA t884 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t884.
                t873 = zcl_lnt_sy_source=>run_syntax( i_node = t874 i_input_967e = t880 i_target_type = t881 i_write_reference = t882 i_allow_generic_deference = t883 i_read_reference = t884 ).
                t872 = t873.
                DATA t885 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t885.
                DATA(t886) = CAST zcl_lnt_abstract_type( t749 ).
                DATA(t887) = CAST zcl_lnt_abstract_type( t872 ).
                DATA t888 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t888.
                DATA(t889) = abap_true.
                IF t889 = abap_true.
                  DATA(t890) = t767.
                  DATA(t891) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t891->has = abap_true.
                  t891->value = t890.
                  t888 = t891.
                ELSE.
                  DATA t892 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t892.
                  t888 = t892.
                ENDIF.
                t885 = zcl_lnt_sy_source=>infer( i_context = t886 i_found = t887 i_arithmetic = t888 ).
                t749 = t885.
              ELSE.
                DATA t893 TYPE abap_bool.
                DATA(t894) = CAST zif_lnt_statement_runnable( t775 ).
                t893 = xsdbool( t894 IS BOUND AND t894 IS INSTANCE OF zcl_lnt_st_expres_constant ).
                IF t893 = abap_true.
                  DATA t895 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t896 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t897 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t898) = CAST zif_lnt_union_4cf1d054( t45 ).
                  DATA t899 TYPE REF TO object.
                  t899 = t898.
                  t897 ?= t899.
                  t896 = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t897 ).
                  t895 = t896.
                  DATA t900 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t900.
                  DATA(t901) = CAST zcl_lnt_abstract_type( t749 ).
                  DATA t902 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t902.
                  DATA(t903) = abap_true.
                  IF t903 = abap_true.
                    DATA(t904) = CAST zcl_lnt_abstract_type( t895 ).
                    t902 = t904.
                  ELSE.
                    DATA t905 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t905.
                    t902 = t905.
                  ENDIF.
                  DATA t906 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t906.
                  DATA(t907) = abap_true.
                  IF t907 = abap_true.
                    DATA(t908) = t767.
                    DATA(t909) = NEW zlnt_runtime_opti_7f2541396f43( ).
                    t909->has = abap_true.
                    t909->value = t908.
                    t906 = t909.
                  ELSE.
                    DATA t910 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t910.
                    t906 = t910.
                  ENDIF.
                  t900 = zcl_lnt_sy_source=>infer( i_context = t901 i_found = t902 i_arithmetic = t906 ).
                  t749 = t900.
                ELSE.
                  DATA t911 TYPE abap_bool.
                  DATA(t912) = CAST zif_lnt_statement_runnable( t775 ).
                  t911 = xsdbool( t912 IS BOUND AND t912 IS INSTANCE OF zcl_lnt_st_dereference ).
                  IF t911 = abap_true.
                    DATA t913 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t914 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t915) = CAST zif_lnt_union_4cf1d054( t45 ).
                    DATA t916 TYPE REF TO object.
                    t916 = t915.
                    t914 ?= t916.
                    DATA(t917) = CAST zcl_lnt_abstract_type( t749 ).
                    DATA(t918) = CAST zcl_lnt_syntax_input( t2 ).
                    t913 = zcl_lnt_sy_dereference=>run_syntax( i_node = t914 i_type_9913 = t917 i_input_967e = t918 ).
                    t749 = t913.
                  ELSE.
                    DATA t919 TYPE abap_bool.
                    DATA(t920) = CAST zif_lnt_statement_runnable( t775 ).
                    t919 = xsdbool( t920 IS BOUND AND t920 IS INSTANCE OF zcl_lnt_st_component_chain ).
                    IF t919 = abap_true.
                      DATA t921 TYPE REF TO zcl_lnt_abstract_type.
                      DATA(t922) = CAST zcl_lnt_abstract_type( t749 ).
                      DATA t923 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t924) = CAST zif_lnt_union_4cf1d054( t45 ).
                      DATA t925 TYPE REF TO object.
                      t925 = t924.
                      t923 ?= t925.
                      DATA(t926) = CAST zcl_lnt_syntax_input( t2 ).
                      t921 = zcl_lnt_sy_component_chain=>run_syntax( i_context = t922 i_node = t923 i_input_967e = t926 ).
                      t749 = t921.
                    ELSE.
                      DATA t927 TYPE abap_bool.
                      DATA(t928) = CAST zif_lnt_statement_runnable( t775 ).
                      t927 = xsdbool( t928 IS BOUND AND t928 IS INSTANCE OF zcl_lnt_arith_operator ).
                      IF t927 = abap_true.
                        DATA(t929) = abap_true.
                        t767 = t929.
                        DATA t930 TYPE abap_bool.
                        DATA t931 TYPE string.
                        DATA t932 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t933) = CAST zif_lnt_union_4cf1d054( t45 ).
                        DATA t934 TYPE REF TO object.
                        t934 = t933.
                        t932 ?= t934.
                        t931 = t932->concat_tokens( ).
                        DATA(t935) = |**|.
                        t930 = xsdbool( t931 = t935 ).
                        IF t930 = abap_true.
                          DATA t936 TYPE REF TO zcl_lnt_float_type.
                          DATA t937 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t937.
                          t936 = NEW zcl_lnt_float_type( i_input_967e = t937 ).
                          t749 = t936.
                        ENDIF.
                        DATA(t938) = VALUE string( ).
                        DATA t939 TYPE string.
                        DATA t940 TYPE string.
                        DATA t941 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t942) = CAST zif_lnt_union_4cf1d054( t45 ).
                        DATA t943 TYPE REF TO object.
                        t943 = t942.
                        t941 ?= t943.
                        t940 = t941->concat_tokens( ).
                        DATA(t944) = strlen( t940 ).
                        t939 = t940.
                        IF t939 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                          TRANSLATE t939 TO UPPER CASE.
                        ELSE.
                          t939 = zlnt_runtime_uppe_91169605024d=>full( t939 ).
                        ENDIF.
                        t938 = t939.
                        DATA(t945) = VALUE abap_bool( ).
                        DATA t946 TYPE abap_bool.
                        DATA t947 TYPE abap_bool.
                        DATA(t948) = t938.
                        DATA(t949) = |BIT-OR|.
                        t947 = xsdbool( t948 = t949 ).
                        t946 = t947.
                        IF t947 = abap_false.
                          DATA t950 TYPE abap_bool.
                          DATA(t951) = t938.
                          DATA(t952) = |BIT-AND|.
                          t950 = xsdbool( t951 = t952 ).
                          t946 = t950.
                        ENDIF.
                        t945 = t946.
                        IF t946 = abap_false.
                          DATA t953 TYPE abap_bool.
                          DATA(t954) = t938.
                          DATA(t955) = |BIT-XOR|.
                          t953 = xsdbool( t954 = t955 ).
                          t945 = t953.
                        ENDIF.
                        IF t945 = abap_true.
                          DATA(t956) = abap_true.
                          t763 = t956.
                          DATA(t957) = abap_true.
                          t765 = t957.
                        ENDIF.
                      ELSE.
                        DATA t958 TYPE abap_bool.
                        DATA(t959) = CAST zif_lnt_statement_runnable( t775 ).
                        t958 = xsdbool( t959 IS BOUND AND t959 IS INSTANCE OF zcl_lnt_st_attribute_chain ).
                        IF t958 = abap_true.
                          DATA t960 TYPE REF TO zcl_lnt_abstract_type.
                          DATA(t961) = CAST zcl_lnt_abstract_type( t749 ).
                          DATA t962 TYPE REF TO zcl_lnt_expression_node.
                          DATA(t963) = CAST zif_lnt_union_4cf1d054( t45 ).
                          DATA t964 TYPE REF TO object.
                          t964 = t963.
                          t962 ?= t964.
                          DATA(t965) = CAST zcl_lnt_syntax_input( t2 ).
                          DATA(t966) = CAST zlnt_runtime_arra_8ecd6afe19e0( t753 ).
                          t960 = zcl_lnt_sy_attribute_chain=>run_syntax( i_input_context = t961 i_node = t962 i_input_967e = t965 i_type_9913 = t966 ).
                          t749 = t960.
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
      DATA t967 TYPE abap_bool.
      DATA(t968) = t763.
      DATA(t969) = abap_true.
      t967 = xsdbool( t968 = t969 ).
      IF t967 = abap_true.
        DATA(t970) = VALUE abap_bool( ).
        DATA(t971) = VALUE abap_bool( ).
        DATA(t972) = VALUE abap_bool( ).
        DATA(t973) = VALUE abap_bool( ).
        DATA t974 TYPE abap_bool.
        DATA t975 TYPE abap_bool.
        DATA t976 TYPE abap_bool.
        DATA(t977) = CAST zcl_lnt_abstract_type( t749 ).
        t976 = xsdbool( t977 IS BOUND AND t977 IS INSTANCE OF zcl_lnt_void_type ).
        t975 = xsdbool( t976 = abap_false ).
        t974 = t975.
        IF t975 = abap_true.
          DATA t978 TYPE abap_bool.
          DATA t979 TYPE abap_bool.
          DATA(t980) = CAST zcl_lnt_abstract_type( t749 ).
          t979 = xsdbool( t980 IS BOUND AND t980 IS INSTANCE OF zcl_lnt_x_string_type ).
          t978 = xsdbool( t979 = abap_false ).
          t974 = t978.
        ENDIF.
        t973 = t974.
        IF t974 = abap_true.
          DATA t981 TYPE abap_bool.
          DATA t982 TYPE abap_bool.
          DATA(t983) = CAST zcl_lnt_abstract_type( t749 ).
          t982 = xsdbool( t983 IS BOUND AND t983 IS INSTANCE OF zcl_lnt_hex_type ).
          t981 = xsdbool( t982 = abap_false ).
          t973 = t981.
        ENDIF.
        t972 = t973.
        IF t973 = abap_true.
          DATA t984 TYPE abap_bool.
          DATA t985 TYPE abap_bool.
          DATA(t986) = CAST zcl_lnt_abstract_type( t749 ).
          t985 = xsdbool( t986 IS BOUND AND t986 IS INSTANCE OF zcl_lnt_x_generic_type ).
          t984 = xsdbool( t985 = abap_false ).
          t972 = t984.
        ENDIF.
        t971 = t972.
        IF t972 = abap_true.
          DATA t987 TYPE abap_bool.
          DATA t988 TYPE abap_bool.
          DATA(t989) = CAST zcl_lnt_abstract_type( t749 ).
          t988 = xsdbool( t989 IS BOUND AND t989 IS INSTANCE OF zcl_lnt_x_sequence_type ).
          t987 = xsdbool( t988 = abap_false ).
          t971 = t987.
        ENDIF.
        t970 = t971.
        IF t971 = abap_true.
          DATA t990 TYPE abap_bool.
          DATA t991 TYPE abap_bool.
          DATA(t992) = CAST zcl_lnt_abstract_type( t749 ).
          t991 = xsdbool( t992 IS BOUND AND t992 IS INSTANCE OF zcl_lnt_unknown_type ).
          t990 = xsdbool( t991 = abap_false ).
          t970 = t990.
        ENDIF.
        IF t970 = abap_true.
          DATA t993 TYPE string.
          DATA(t994) = |Operator only valid for XSTRING or HEX|.
          t993 = t994.
          DATA t995 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t996) = CAST zcl_lnt_syntax_input( t2 ).
          t995 = t996->issues.
          DATA t997 TYPE REF TO zcl_lnt_issue.
          DATA(t998) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t999 TYPE REF TO zcl_lnt_abstract_token.
          DATA t1000 TYPE REF TO zcl_lnt_expression_node.
          DATA(t1001) = CAST zcl_lnt_expression_node( t1 ).
          t1000 = t1001.
          t999 = t1000->get_first_token( ).
          DATA(t1002) = t993.
          DATA t1003 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1003.
          t997 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t998 i_token = t999 i_message_26cb = t1002 i_fix = t1003 ).
          APPEND t997 TO t995->items.
          DATA t1004 TYPE REF TO zcl_lnt_void_type.
          CLEAR t1004.
          DATA t1005 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1005.
          DATA(t1006) = abap_true.
          IF t1006 = abap_true.
            DATA(t1007) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t1008) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1008->has = abap_true.
            t1008->value = t1007.
            t1005 = t1008.
          ELSE.
            DATA t1009 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1009.
            t1005 = t1009.
          ENDIF.
          DATA t1010 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1010.
          t1004 = zcl_lnt_void_type=>get_db65( i_voided = t1005 i_qualified_name = t1010 ).
          result = t1004.
          RETURN.
        ENDIF.
        DATA t1011 TYPE abap_bool.
        DATA(t1012) = t765.
        DATA(t1013) = abap_false.
        t1011 = xsdbool( t1012 = t1013 ).
        IF t1011 = abap_true.
          DATA(t1014) = abap_false.
          t763 = t1014.
        ENDIF.
        DATA(t1015) = abap_false.
        t765 = t1015.
      ENDIF.
      DATA t1016 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t1017) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
      DATA t1018 TYPE REF TO object.
      t1018 = t1017->shift( ).
      t1016 ?= t1018.
      t45 = t1016.
      DATA(t1019) = VALUE abap_bool( ).
      DATA t1020 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t1021) = CAST zif_lnt_union_4cf1d054( t45 ).
      t1020 = t1021.
      DATA t1022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t1023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1023.
      t1022 = t1023.
      DATA(t1024) = VALUE abap_bool( ).
      DATA(t1025) = CAST zif_lnt_union_4cf1d054( t1020 ).
      IF t1025 IS INITIAL.
        t1024 = abap_true.
      ENDIF.
      t1019 = t1024.
      IF t1019 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t1026 TYPE abap_bool.
    DATA t1027 TYPE REF TO zcl_lnt_abstract_token.
    DATA t1028 TYPE REF TO zcl_lnt_expression_node.
    DATA(t1029) = CAST zcl_lnt_expression_node( t1 ).
    t1028 = t1029.
    DATA(t1030) = |&&|.
    t1027 = t1028->find_direct_token_by_text( i_text = t1030 ).
    t1026 = xsdbool( t1027 IS BOUND ).
    IF t1026 = abap_true.
      DATA t1031 TYPE REF TO zcl_lnt_string_type.
      DATA t1032 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1032.
      t1031 = zcl_lnt_string_type=>get_db65( i_input_967e = t1032 ).
      result = t1031.
      RETURN.
    ENDIF.
    DATA(t1033) = CAST zcl_lnt_abstract_type( t749 ).
    result = t1033.

  ENDMETHOD.
  METHOD traverse_remaining_children.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_children_9020 ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t4 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t6 TYPE i.
    DATA t7 TYPE i.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t7 = lines( t8->items ).
    DATA(t9) = 1.
    t6 = t7 - t9.
    t6 = t6 + 1.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    READ TABLE t5->items INDEX t6 INTO t10.
    t4 ?= t10.
    t3 = t4.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    DATA(t13) = CAST zif_lnt_union_4cf1d054( t3 ).
    t12 = xsdbool( t13 IS BOUND ).
    t11 = t12.
    IF t12 = abap_true.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE REF TO object.
      DATA(t16) = CAST zif_lnt_union_4cf1d054( t3 ).
      t15 = t16->get_db65( ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_source ).
      t11 = t14.
    ENDIF.
    IF t11 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_expression_node.
        DATA(t21) = CAST zif_lnt_union_4cf1d054( t3 ).
        t20 ?= t21.
        t18 = t20.
      ELSE.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      DATA(t23) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t24 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t27.
      t17 = zcl_lnt_sy_source=>run_syntax( i_node = t18 i_input_967e = t23 i_target_type = t24 i_write_reference = t25 i_allow_generic_deference = t26 i_read_reference = t27 ).
    ENDIF.
  ENDMETHOD.
  METHOD infer.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_context ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_found ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_arithmetic ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = abap_false.
        DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    DATA(t13) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    t12 = t13->value.
    DATA(t14) = abap_true.
    t11 = xsdbool( t12 = t14 ).
    IF t11 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t17) = CAST zcl_lnt_abstract_type( t1 ).
      DATA(t18) = CAST zcl_lnt_abstract_type( t2 ).
      t16 = zcl_lnt_sy_source=>calculation_type( i_left = t17 i_right = t18 ).
      t15 = t16.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t21) = CAST zcl_lnt_abstract_type( t15 ).
      t20 = t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t22 = t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = CAST zcl_lnt_abstract_type( t20 ).
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      t24 = xsdbool( t25 = abap_false ).
      t19 = t24.
      IF t19 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t27.
        DATA(t28) = abap_true.
        IF t28 = abap_true.
          DATA t29 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t30) = CAST zcl_lnt_abstract_type( t15 ).
          t29 = t30.
          t27 = t29.
        ELSE.
          DATA t31 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t31.
          t27 = t31.
        ENDIF.
        result = t27.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE abap_bool.
    DATA(t34) = CAST zcl_lnt_abstract_type( t1 ).
    t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_float_type ).
    t32 = t33.
    IF t33 = abap_true.
      DATA t35 TYPE abap_bool.
      DATA(t36) = CAST zcl_lnt_abstract_type( t2 ).
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_integer_type ).
      t32 = t35.
    ENDIF.
    IF t32 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_float_type.
      DATA(t38) = CAST zcl_lnt_abstract_type( t1 ).
      t37 ?= t38.
      result = t37.
      RETURN.
    ELSE.
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE abap_bool.
      DATA(t41) = CAST zcl_lnt_abstract_type( t1 ).
      t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_integer_type ).
      t39 = t40.
      IF t40 = abap_true.
        DATA t42 TYPE abap_bool.
        DATA(t43) = CAST zcl_lnt_abstract_type( t2 ).
        t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_hex_type ).
        t39 = t42.
      ENDIF.
      IF t39 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_integer_type.
        DATA(t45) = CAST zcl_lnt_abstract_type( t1 ).
        t44 ?= t45.
        result = t44.
        RETURN.
      ELSE.
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        DATA(t49) = CAST zcl_lnt_abstract_type( t1 ).
        t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_integer_type ).
        t47 = t48.
        IF t48 = abap_false.
          DATA t50 TYPE abap_bool.
          DATA(t51) = CAST zcl_lnt_abstract_type( t1 ).
          t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_float_type ).
          t47 = t50.
        ENDIF.
        t46 = t47.
        IF t47 = abap_true.
          DATA(t52) = VALUE abap_bool( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t55) = CAST zcl_lnt_abstract_type( t2 ).
          t54 = t55.
          DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t56.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = CAST zcl_lnt_abstract_type( t54 ).
          IF t58 IS INITIAL.
            t57 = abap_true.
          ENDIF.
          IF t57 = abap_true.
            DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t59.
            t56 = t59.
          ELSE.
            DATA t60 TYPE abap_bool.
            DATA t61 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t62) = CAST zcl_lnt_abstract_type( t54 ).
            t61 = t62.
            t60 = t61->is_generic( ).
            DATA(t63) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t63->has = abap_true.
            t63->value = t60.
            t56 = t63.
          ENDIF.
          t53 = t56.
          IF t53 IS BOUND.
            IF t53->has = abap_true.
              t52 = xsdbool( t53->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t46 = t52.
        ENDIF.
        IF t46 = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t64.
          DATA(t65) = abap_true.
          IF t65 = abap_true.
            DATA t66 TYPE REF TO zcl_lnt_abstract_type.
            DATA t67 TYPE REF TO zif_lnt_union_e92befca.
            DATA t68 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t69) = CAST zcl_lnt_abstract_type( t1 ).
            t68 = t69.
            t67 ?= t68.
            t66 ?= t67.
            t64 = t66.
          ELSE.
            DATA t70 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t70.
            t64 = t70.
          ENDIF.
          result = t64.
          RETURN.
        ELSE.
          DATA(t71) = CAST zcl_lnt_abstract_type( t2 ).
          result = t71.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD calculation_type.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_left ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_right ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t6) = CAST zcl_lnt_abstract_type( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_abstract_type( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t13) = CAST zcl_lnt_abstract_type( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = CAST zcl_lnt_abstract_type( t12 ).
      IF t17 IS INITIAL.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t18.
      result = t18.
      RETURN.
    ELSE.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = CAST zcl_lnt_abstract_type( t1 ).
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_void_type ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t22 TYPE abap_bool.
        DATA(t23) = CAST zcl_lnt_abstract_type( t1 ).
        t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_unknown_type ).
        t19 = t22.
      ENDIF.
      IF t19 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t24.
        DATA(t25) = abap_true.
        IF t25 = abap_true.
          DATA t26 TYPE REF TO zcl_lnt_abstract_type.
          DATA t27 TYPE REF TO zif_lnt_union_adffe656.
          DATA t28 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t29) = CAST zcl_lnt_abstract_type( t1 ).
          t28 = t29.
          t27 ?= t28.
          t26 ?= t27.
          t24 = t26.
        ELSE.
          DATA t30 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t30.
          t24 = t30.
        ENDIF.
        result = t24.
        RETURN.
      ELSE.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        DATA(t33) = CAST zcl_lnt_abstract_type( t2 ).
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_void_type ).
        t31 = t32.
        IF t32 = abap_false.
          DATA t34 TYPE abap_bool.
          DATA(t35) = CAST zcl_lnt_abstract_type( t2 ).
          t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_unknown_type ).
          t31 = t34.
        ENDIF.
        IF t31 = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t36.
          DATA(t37) = abap_true.
          IF t37 = abap_true.
            DATA t38 TYPE REF TO zcl_lnt_abstract_type.
            DATA t39 TYPE REF TO zif_lnt_union_adffe656.
            DATA t40 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t41) = CAST zcl_lnt_abstract_type( t2 ).
            t40 = t41.
            t39 ?= t40.
            t38 ?= t39.
            t36 = t38.
          ELSE.
            DATA t42 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t42.
            t36 = t42.
          ENDIF.
          result = t36.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t46) = CAST zcl_lnt_abstract_type( t1 ).
    t45 = t46.
    t44 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t45 ).
    t43 = t44.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t50) = CAST zcl_lnt_abstract_type( t2 ).
    t49 = t50.
    t48 = zcl_lnt_sy_source=>numeric_rank( i_type_9913 = t49 ).
    t47 = t48.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA t53 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA(t54) = CAST zlnt_runtime_opti_4a236cd5714d( t43 ).
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    t55 = t56.
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = CAST zlnt_runtime_opti_4a236cd5714d( t53 ).
    IF t58 IS INITIAL.
      t57 = abap_true.
    ELSEIF t58->has = abap_false.
      t57 = abap_true.
    ENDIF.
    t52 = t57.
    t51 = t52.
    IF t52 = abap_true.
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      DATA(t61) = CAST zlnt_runtime_opti_4a236cd5714d( t47 ).
      t60 = t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      t62 = t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = CAST zlnt_runtime_opti_4a236cd5714d( t60 ).
      IF t65 IS INITIAL.
        t64 = abap_true.
      ELSEIF t65->has = abap_false.
        t64 = abap_true.
      ENDIF.
      t59 = t64.
      t51 = t59.
    ENDIF.
    IF t51 = abap_true.
      DATA t66 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t66.
      result = t66.
      RETURN.
    ELSE.
      DATA(t67) = VALUE abap_bool( ).
      DATA t68 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      DATA(t69) = CAST zlnt_runtime_opti_4a236cd5714d( t47 ).
      t68 = t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t70 = t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = CAST zlnt_runtime_opti_4a236cd5714d( t68 ).
      IF t73 IS INITIAL.
        t72 = abap_true.
      ELSEIF t73->has = abap_false.
        t72 = abap_true.
      ENDIF.
      t67 = t72.
      IF t67 = abap_true.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t77) = CAST zcl_lnt_abstract_type( t1 ).
          t76 = t77.
          t74 = t76.
        ELSE.
          DATA t78 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t78.
          t74 = t78.
        ENDIF.
        result = t74.
        RETURN.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA t80 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        DATA(t81) = CAST zlnt_runtime_opti_4a236cd5714d( t43 ).
        t80 = t81.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        t82 = t83.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = CAST zlnt_runtime_opti_4a236cd5714d( t80 ).
        IF t85 IS INITIAL.
          t84 = abap_true.
        ELSEIF t85->has = abap_false.
          t84 = abap_true.
        ENDIF.
        t79 = t84.
        IF t79 = abap_true.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t86.
          DATA(t87) = abap_true.
          IF t87 = abap_true.
            DATA t88 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t89) = CAST zcl_lnt_abstract_type( t2 ).
            t88 = t89.
            t86 = t88.
          ELSE.
            DATA t90 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t90.
            t86 = t90.
          ENDIF.
          result = t86.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t91.
    DATA(t92) = abap_true.
    IF t92 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t93.
      DATA t94 TYPE abap_bool.
      DATA t95 TYPE int8.
      DATA(t96) = CAST zlnt_runtime_opti_4a236cd5714d( t43 ).
      t95 = t96->value.
      DATA t97 TYPE int8.
      DATA(t98) = CAST zlnt_runtime_opti_4a236cd5714d( t47 ).
      t97 = t98->value.
      t94 = xsdbool( t95 >= t97 ).
      IF t94 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t100) = CAST zcl_lnt_abstract_type( t1 ).
        t99 = t100.
        t93 = t99.
      ELSE.
        DATA t101 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t102) = CAST zcl_lnt_abstract_type( t2 ).
        t101 = t102.
        t93 = t101.
      ENDIF.
      t91 = t93.
    ELSE.
      DATA t103 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t103.
      t91 = t103.
    ENDIF.
    result = t91.

  ENDMETHOD.
  METHOD numeric_rank.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA t2 TYPE abap_bool.
    DATA(t3) = CAST zcl_lnt_abstract_type( t1 ).
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_dec_float34_type ).
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = CONV int8( 6 ).
        DATA(t7) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t7->has = abap_true.
        t7->value = t6.
        t4 = t7.
      ELSE.
        DATA t8 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t8.
        t4 = t8.
      ENDIF.
      result = t4.
      RETURN.
    ELSE.
      DATA t9 TYPE abap_bool.
      DATA(t10) = CAST zcl_lnt_abstract_type( t1 ).
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_dec_float16_type ).
      IF t9 = abap_true.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t11.
        DATA(t12) = abap_true.
        IF t12 = abap_true.
          DATA(t13) = CONV int8( 5 ).
          DATA(t14) = NEW zlnt_runtime_opti_4a236cd5714d( ).
          t14->has = abap_true.
          t14->value = t13.
          t11 = t14.
        ELSE.
          DATA t15 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          CLEAR t15.
          t11 = t15.
        ENDIF.
        result = t11.
        RETURN.
      ELSE.
        DATA t16 TYPE abap_bool.
        DATA(t17) = CAST zcl_lnt_abstract_type( t1 ).
        t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_float_type ).
        IF t16 = abap_true.
          DATA t18 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          CLEAR t18.
          DATA(t19) = abap_true.
          IF t19 = abap_true.
            DATA(t20) = CONV int8( 4 ).
            DATA(t21) = NEW zlnt_runtime_opti_4a236cd5714d( ).
            t21->has = abap_true.
            t21->value = t20.
            t18 = t21.
          ELSE.
            DATA t22 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
            CLEAR t22.
            t18 = t22.
          ENDIF.
          result = t18.
          RETURN.
        ELSE.
          DATA t23 TYPE abap_bool.
          DATA(t24) = CAST zcl_lnt_abstract_type( t1 ).
          t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_packed_type ).
          IF t23 = abap_true.
            DATA t25 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
            CLEAR t25.
            DATA(t26) = abap_true.
            IF t26 = abap_true.
              DATA(t27) = CONV int8( 3 ).
              DATA(t28) = NEW zlnt_runtime_opti_4a236cd5714d( ).
              t28->has = abap_true.
              t28->value = t27.
              t25 = t28.
            ELSE.
              DATA t29 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
              CLEAR t29.
              t25 = t29.
            ENDIF.
            result = t25.
            RETURN.
          ELSE.
            DATA t30 TYPE abap_bool.
            DATA(t31) = CAST zcl_lnt_abstract_type( t1 ).
            t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_integer8_type ).
            IF t30 = abap_true.
              DATA t32 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
              CLEAR t32.
              DATA(t33) = abap_true.
              IF t33 = abap_true.
                DATA(t34) = CONV int8( 2 ).
                DATA(t35) = NEW zlnt_runtime_opti_4a236cd5714d( ).
                t35->has = abap_true.
                t35->value = t34.
                t32 = t35.
              ELSE.
                DATA t36 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                CLEAR t36.
                t32 = t36.
              ENDIF.
              result = t32.
              RETURN.
            ELSE.
              DATA t37 TYPE abap_bool.
              DATA(t38) = CAST zcl_lnt_abstract_type( t1 ).
              t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_integer_type ).
              IF t37 = abap_true.
                DATA t39 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                CLEAR t39.
                DATA(t40) = abap_true.
                IF t40 = abap_true.
                  DATA(t41) = CONV int8( 1 ).
                  DATA(t42) = NEW zlnt_runtime_opti_4a236cd5714d( ).
                  t42->has = abap_true.
                  t42->value = t41.
                  t39 = t42.
                ELSE.
                  DATA t43 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
                  CLEAR t43.
                  t39 = t43.
                ENDIF.
                result = t39.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    CLEAR t44.
    result = t44.

  ENDMETHOD.
  METHOD add_if_inferred.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_inferred_type ).
    DATA t4 TYPE REF TO zcl_lnt_basic_types.
    DATA t5 TYPE REF TO zcl_lnt_basic_types.
    DATA(t6) = CAST zcl_lnt_syntax_input( t2 ).
    t5 = NEW zcl_lnt_basic_types( i_input_967e = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
    t8 = t9->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = CAST zcl_lnt_expression_node( t7 ).
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zcl_lnt_expression_node( t13 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = CAST zcl_lnt_expression_node( t13 ).
      t20 = t21.
      t19 = t20->get_first_token( ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zcl_lnt_abstract_type( t3 ).
    t23 = xsdbool( t24 IS BOUND ).
    t22 = t23.
    IF t23 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA(t26) = CAST zcl_lnt_abstract_token( t11 ).
      t25 = xsdbool( t26 IS BOUND ).
      t22 = t25.
    ENDIF.
    IF t22 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t29) = CAST zcl_lnt_basic_types( t4 ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t32) = CAST zcl_lnt_abstract_type( t3 ).
      t31 = t32.
      t30 = t31->get_qualified_name( ).
      t28 = t29->lookup_qualified_name( i_name = t30 ).
      t27 = t28.
      DATA t33 TYPE abap_bool.
      DATA(t34) = CAST zcl_lnt_typed_identifier( t27 ).
      t33 = xsdbool( t34 IS BOUND ).
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t38) = CAST zcl_lnt_abstract_token( t11 ).
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = CAST zcl_lnt_syntax_input( t2 ).
        t39 = t40->filename.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t42) = CAST zcl_lnt_abstract_type( t3 ).
        t41 = t42.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        t36 = NEW zcl_lnt_typed_identifier( i_token = t37 i_filename = t39 i_type_9913 = t41 i_meta = t43 i_value = t44 ).
        t35 = t36.
        DATA t45 TYPE REF TO zcl_lnt_current_scope.
        DATA(t46) = CAST zcl_lnt_syntax_input( t2 ).
        t45 = t46->scope.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t50) = CAST zcl_lnt_abstract_token( t11 ).
          t49 = t50.
          t47 = t49.
        ELSE.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t51.
          t47 = t51.
        ENDIF.
        DATA(t52) = CAST zcl_lnt_typed_identifier( t35 ).
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t54) = |Inferred Type|.
        CREATE OBJECT t53.
        t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t53->sval = t54.
        DATA t55 TYPE string.
        DATA(t56) = CAST zcl_lnt_syntax_input( t2 ).
        t55 = t56->filename.
        DATA t57 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t57.
        DATA(t58) = abap_true.
        IF t58 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t59.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t61.
          DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t62.
          DATA(t63) = abap_true.
          IF t63 = abap_true.
            DATA(t64) = abap_true.
            DATA(t65) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t65->has = abap_true.
            t65->value = t64.
            t62 = t65.
          ELSE.
            DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t66.
            t62 = t66.
          ENDIF.
          t59 = NEW zcl_lnt_ireference_extras( i_oo_name = t60 i_oo_type = t61 i_found_qualified = t62 ).
          t57 = t59.
        ELSE.
          DATA t67 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t67.
          t57 = t67.
        ENDIF.
        t45->add_reference( i_usage = t47 i_referencing = t52 i_type_9913 = t53 i_filename = t55 i_extra = t57 ).
      ELSE.
        DATA t68 TYPE abap_bool.
        DATA(t69) = CAST zcl_lnt_abstract_type( t3 ).
        t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_object_reference_type ).
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t70.
          DATA t71 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_current_scope.
          DATA t73 TYPE REF TO zcl_lnt_current_scope.
          DATA(t74) = CAST zcl_lnt_syntax_input( t2 ).
          t73 = t74->scope.
          t72 = t73.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          DATA t77 TYPE REF TO zcl_lnt_abstract_type.
          DATA t78 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t79) = CAST zcl_lnt_abstract_type( t3 ).
          t78 ?= t79.
          t77 = t78.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t82 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA(t83) = CAST zcl_lnt_abstract_type( t77 ).
          t82 = t83->data_56cc.
          t81 = t82.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          DATA(t85) = VALUE abap_bool( ).
          DATA(t86) = CAST zcl_lnt_abstract_type_data( t81 ).
          IF t86 IS INITIAL.
            t85 = abap_true.
          ENDIF.
          IF t85 = abap_true.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            t84 = t87.
          ELSE.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t89 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t90) = CAST zcl_lnt_abstract_type_data( t81 ).
            t89 = t90.
            t88 = t89->qualified_name.
            t84 = t88.
          ENDIF.
          t80 = t84.
          t76 = t80.
          t75 = t76.
          DATA t91 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t91.
          DATA(t92) = VALUE abap_bool( ).
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t94) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          t95 = t96.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = CAST zlnt_runtime_opti_4ba3bdccd169( t93 ).
          IF t98 IS INITIAL.
            t97 = abap_true.
          ELSEIF t98->has = abap_false.
            t97 = abap_true.
          ENDIF.
          t92 = t97.
          IF t92 = abap_true.
            DATA t99 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t99.
            t91 = t99.
          ELSE.
            DATA t100 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t100.
            DATA t101 TYPE REF TO zif_lnt_class_definition.
            CLEAR t101.
            DATA t102 TYPE REF TO zif_lnt_class_definition.
            CLEAR t102.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            DATA(t105) = abap_true.
            IF t105 = abap_true.
              DATA t106 TYPE string.
              DATA(t107) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
              t106 = t107->value.
              DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t108->has = abap_true.
              t108->value = t106.
              t104 = t108.
            ELSE.
              DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t109.
              t104 = t109.
            ENDIF.
            t103 = t104.
            DATA t110 TYPE REF TO zif_lnt_class_definition.
            CLEAR t110.
            DATA(t111) = VALUE abap_bool( ).
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t113) = CAST zlnt_runtime_opti_4ba3bdccd169( t103 ).
            t112 = t113.
            DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t115.
            t114 = t115.
            DATA(t116) = VALUE abap_bool( ).
            DATA(t117) = CAST zlnt_runtime_opti_4ba3bdccd169( t112 ).
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
              DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t124) = CAST zcl_lnt_current_scope( t72 ).
              t123 = t124->current.
              t122 = t123.
              DATA t125 TYPE REF TO zif_lnt_class_definition.
              CLEAR t125.
              DATA(t126) = VALUE abap_bool( ).
              DATA(t127) = CAST zcl_lnt_spaghetti_scope_node( t122 ).
              IF t127 IS INITIAL.
                t126 = abap_true.
              ENDIF.
              IF t126 = abap_true.
                DATA t128 TYPE REF TO zif_lnt_class_definition.
                CLEAR t128.
                t125 = t128.
              ELSE.
                DATA t129 TYPE REF TO zif_lnt_class_definition.
                DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t131) = CAST zcl_lnt_spaghetti_scope_node( t122 ).
                t130 = t131.
                DATA t132 TYPE string.
                DATA(t133) = CAST zlnt_runtime_opti_4ba3bdccd169( t103 ).
                t132 = t133->value.
                t129 = t130->find_class_definition( i_name = t132 ).
                t125 = t129.
              ENDIF.
              t121 = t125.
              t120 = t121.
              DATA t134 TYPE REF TO zif_lnt_class_definition.
              CLEAR t134.
              DATA t135 TYPE abap_bool.
              DATA(t136) = CAST zif_lnt_class_definition( t120 ).
              t135 = xsdbool( t136 IS BOUND ).
              IF t135 = abap_true.
                DATA t137 TYPE REF TO zif_lnt_class_definition.
                CLEAR t137.
                DATA(t138) = abap_true.
                IF t138 = abap_true.
                  DATA t139 TYPE REF TO zif_lnt_class_definition.
                  DATA(t140) = CAST zif_lnt_class_definition( t120 ).
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
                DATA(t147) = CAST zcl_lnt_current_scope( t72 ).
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
                  DATA t155 TYPE string.
                  DATA(t156) = CAST zlnt_runtime_opti_4ba3bdccd169( t103 ).
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
                t159 = t145.
                t144 ?= t159.
                t143 = t144.
                DATA t160 TYPE REF TO zif_lnt_class_definition.
                CLEAR t160.
                DATA t161 TYPE abap_bool.
                DATA(t162) = CAST zcl_lnt_class( t143 ).
                t161 = xsdbool( t162 IS BOUND ).
                IF t161 = abap_true.
                  DATA t163 TYPE REF TO zif_lnt_class_definition.
                  DATA t164 TYPE REF TO zcl_lnt_class.
                  DATA(t165) = CAST zcl_lnt_class( t143 ).
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
            t101 = t102.
            DATA t167 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t167.
            DATA t168 TYPE abap_bool.
            DATA(t169) = CAST zif_lnt_class_definition( t101 ).
            t168 = xsdbool( t169 IS BOUND ).
            IF t168 = abap_true.
              DATA t170 TYPE REF TO zif_lnt_interface_definition.
              DATA t171 TYPE REF TO zif_lnt_class_definition.
              DATA(t172) = CAST zif_lnt_class_definition( t101 ).
              t171 = t172.
              t170 ?= t171.
              t167 = t170.
            ELSE.
              DATA t173 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t173.
              DATA t174 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t174.
              DATA t175 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t175.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t176.
              DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t177.
              DATA(t178) = abap_true.
              IF t178 = abap_true.
                DATA t179 TYPE string.
                DATA(t180) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
                t179 = t180->value.
                DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t181->has = abap_true.
                t181->value = t179.
                t177 = t181.
              ELSE.
                DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t182.
                t177 = t182.
              ENDIF.
              t176 = t177.
              DATA t183 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t183.
              DATA(t184) = VALUE abap_bool( ).
              DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t186) = CAST zlnt_runtime_opti_4ba3bdccd169( t176 ).
              t185 = t186.
              DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t188.
              t187 = t188.
              DATA(t189) = VALUE abap_bool( ).
              DATA(t190) = CAST zlnt_runtime_opti_4ba3bdccd169( t185 ).
              IF t190 IS INITIAL.
                t189 = abap_true.
              ELSEIF t190->has = abap_false.
                t189 = abap_true.
              ENDIF.
              t184 = t189.
              IF t184 = abap_true.
                DATA t191 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t191.
                t183 = t191.
              ELSE.
                DATA t192 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t192.
                DATA t193 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t193.
                DATA t194 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t194.
                DATA t195 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA t196 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                DATA(t197) = CAST zcl_lnt_current_scope( t72 ).
                t196 = t197->current.
                t195 = t196.
                DATA t198 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t198.
                DATA(t199) = VALUE abap_bool( ).
                DATA(t200) = CAST zcl_lnt_spaghetti_scope_node( t195 ).
                IF t200 IS INITIAL.
                  t199 = abap_true.
                ENDIF.
                IF t199 = abap_true.
                  DATA t201 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t201.
                  t198 = t201.
                ELSE.
                  DATA t202 TYPE REF TO zif_lnt_interface_definition.
                  DATA t203 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  DATA(t204) = CAST zcl_lnt_spaghetti_scope_node( t195 ).
                  t203 = t204.
                  DATA t205 TYPE string.
                  DATA(t206) = CAST zlnt_runtime_opti_4ba3bdccd169( t176 ).
                  t205 = t206->value.
                  t202 = t203->find_interface_definition( i_name = t205 ).
                  t198 = t202.
                ENDIF.
                t194 = t198.
                t193 = t194.
                DATA t207 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t207.
                DATA t208 TYPE abap_bool.
                DATA(t209) = CAST zif_lnt_interface_definition( t193 ).
                t208 = xsdbool( t209 IS BOUND ).
                IF t208 = abap_true.
                  DATA t210 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t210.
                  DATA(t211) = abap_true.
                  IF t211 = abap_true.
                    DATA t212 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t213) = CAST zif_lnt_interface_definition( t193 ).
                    t212 = t213.
                    t210 = t212.
                  ELSE.
                    DATA t214 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t214.
                    t210 = t214.
                  ENDIF.
                  t207 = t210.
                ELSE.
                  DATA t215 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t215.
                  DATA t216 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t216.
                  DATA t217 TYPE REF TO zcl_lnt_ob_interface.
                  CLEAR t217.
                  DATA t218 TYPE REF TO zif_lnt_object.
                  CLEAR t218.
                  DATA t219 TYPE REF TO zif_lnt_registry.
                  DATA(t220) = CAST zcl_lnt_current_scope( t72 ).
                  t219 = t220->reg.
                  DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t221.
                  DATA(t222) = abap_true.
                  IF t222 = abap_true.
                    DATA(t223) = |INTF|.
                    DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t224->has = abap_true.
                    t224->value = t223.
                    t221 = t224.
                  ELSE.
                    DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t225.
                    t221 = t225.
                  ENDIF.
                  DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t226.
                  DATA(t227) = abap_true.
                  IF t227 = abap_true.
                    DATA t228 TYPE string.
                    DATA(t229) = CAST zlnt_runtime_opti_4ba3bdccd169( t176 ).
                    t228 = t229->value.
                    DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t230->has = abap_true.
                    t230->value = t228.
                    t226 = t230.
                  ELSE.
                    DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t231.
                    t226 = t231.
                  ENDIF.
                  t218 = t219->get_object( i_type_9913 = t221 i_name = t226 ).
                  DATA t232 TYPE REF TO object.
                  t232 = t218.
                  t217 ?= t232.
                  t216 = t217.
                  DATA t233 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t233.
                  DATA t234 TYPE abap_bool.
                  DATA(t235) = CAST zcl_lnt_ob_interface( t216 ).
                  t234 = xsdbool( t235 IS BOUND ).
                  IF t234 = abap_true.
                    DATA t236 TYPE REF TO zif_lnt_interface_definition.
                    DATA t237 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t238 TYPE REF TO zcl_lnt_ob_interface.
                    DATA(t239) = CAST zcl_lnt_ob_interface( t216 ).
                    t238 = t239.
                    t237 = t238.
                    DATA t240 TYPE REF TO zif_lnt_interface_definition.
                    DATA(t241) = CAST zcl_lnt_ob_interface( t237 ).
                    t240 = t241->def.
                    t236 = t240.
                    t233 = t236.
                  ELSE.
                    DATA t242 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t242.
                    t233 = t242.
                  ENDIF.
                  t215 = t233.
                  t207 = t215.
                ENDIF.
                t192 = t207.
                t183 = t192.
              ENDIF.
              t175 = t183.
              t174 = t175.
              DATA t243 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t243.
              DATA t244 TYPE abap_bool.
              DATA(t245) = CAST zif_lnt_interface_definition( t174 ).
              t244 = xsdbool( t245 IS BOUND ).
              IF t244 = abap_true.
                DATA t246 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t246.
                DATA(t247) = abap_true.
                IF t247 = abap_true.
                  DATA t248 TYPE REF TO zif_lnt_interface_definition.
                  DATA(t249) = CAST zif_lnt_interface_definition( t174 ).
                  t248 = t249.
                  t246 = t248.
                ELSE.
                  DATA t250 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t250.
                  t246 = t250.
                ENDIF.
                t243 = t246.
              ELSE.
                DATA t251 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t251.
                t243 = t251.
              ENDIF.
              t173 = t243.
              t167 = t173.
            ENDIF.
            t100 = t167.
            t91 = t100.
          ENDIF.
          t71 = t91.
          t70 = t71.
          DATA t252 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t253 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t254 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t255) = CAST zcl_lnt_abstract_token( t11 ).
          t254 = t255.
          DATA t256 TYPE string.
          DATA(t257) = CAST zcl_lnt_syntax_input( t2 ).
          t256 = t257->filename.
          DATA t258 TYPE REF TO zcl_lnt_object_reference_type.
          DATA(t259) = CAST zcl_lnt_abstract_type( t3 ).
          t258 ?= t259.
          DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t260.
          DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t261.
          t253 = NEW zcl_lnt_typed_identifier( i_token = t254 i_filename = t256 i_type_9913 = t258 i_meta = t260 i_value = t261 ).
          t252 = t253.
          DATA t262 TYPE abap_bool.
          DATA(t263) = CAST zif_lnt_interface_definition( t70 ).
          t262 = xsdbool( t263 IS BOUND ).
          IF t262 = abap_true.
            DATA t264 TYPE REF TO zcl_lnt_current_scope.
            DATA(t265) = CAST zcl_lnt_syntax_input( t2 ).
            t264 = t265->scope.
            DATA t266 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t266.
            DATA(t267) = abap_true.
            IF t267 = abap_true.
              DATA t268 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t269) = CAST zcl_lnt_abstract_token( t11 ).
              t268 = t269.
              t266 = t268.
            ELSE.
              DATA t270 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t270.
              t266 = t270.
            ENDIF.
            DATA(t271) = CAST zcl_lnt_typed_identifier( t252 ).
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t273) = |Inferred Type|.
            CREATE OBJECT t272.
            t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t272->sval = t273.
            DATA t274 TYPE string.
            DATA(t275) = CAST zcl_lnt_syntax_input( t2 ).
            t274 = t275->filename.
            DATA t276 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t276.
            DATA(t277) = abap_true.
            IF t277 = abap_true.
              DATA t278 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t278.
              DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t279.
              DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t280.
              DATA t281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t281.
              DATA(t282) = abap_true.
              IF t282 = abap_true.
                DATA(t283) = abap_true.
                DATA(t284) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t284->has = abap_true.
                t284->value = t283.
                t281 = t284.
              ELSE.
                DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t285.
                t281 = t285.
              ENDIF.
              t278 = NEW zcl_lnt_ireference_extras( i_oo_name = t279 i_oo_type = t280 i_found_qualified = t281 ).
              t276 = t278.
            ELSE.
              DATA t286 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t286.
              t276 = t286.
            ENDIF.
            t264->add_reference( i_usage = t266 i_referencing = t271 i_type_9913 = t272 i_filename = t274 i_extra = t276 ).
          ELSE.
            DATA t287 TYPE REF TO zcl_lnt_current_scope.
            DATA(t288) = CAST zcl_lnt_syntax_input( t2 ).
            t287 = t288->scope.
            DATA t289 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t289.
            DATA(t290) = abap_true.
            IF t290 = abap_true.
              DATA t291 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t292) = CAST zcl_lnt_abstract_token( t11 ).
              t291 = t292.
              t289 = t291.
            ELSE.
              DATA t293 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t293.
              t289 = t293.
            ENDIF.
            DATA(t294) = CAST zcl_lnt_typed_identifier( t252 ).
            DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t296) = |Inferred Type|.
            CREATE OBJECT t295.
            t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t295->sval = t296.
            DATA t297 TYPE string.
            DATA(t298) = CAST zcl_lnt_syntax_input( t2 ).
            t297 = t298->filename.
            DATA t299 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t299.
            DATA(t300) = abap_true.
            IF t300 = abap_true.
              DATA t301 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t301.
              DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t302.
              DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t303.
              DATA t304 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t304.
              DATA(t305) = abap_true.
              IF t305 = abap_true.
                DATA(t306) = abap_false.
                DATA(t307) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t307->has = abap_true.
                t307->value = t306.
                t304 = t307.
              ELSE.
                DATA t308 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t308.
                t304 = t308.
              ENDIF.
              t301 = NEW zcl_lnt_ireference_extras( i_oo_name = t302 i_oo_type = t303 i_found_qualified = t304 ).
              t299 = t301.
            ELSE.
              DATA t309 TYPE REF TO zcl_lnt_ireference_extras.
              CLEAR t309.
              t299 = t309.
            ENDIF.
            t287->add_reference( i_usage = t289 i_referencing = t294 i_type_9913 = t295 i_filename = t297 i_extra = t299 ).
          ENDIF.
        ELSE.
          DATA t310 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t311 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t312 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t313) = CAST zcl_lnt_abstract_token( t11 ).
          t312 = t313.
          DATA t314 TYPE string.
          DATA(t315) = CAST zcl_lnt_syntax_input( t2 ).
          t314 = t315->filename.
          DATA t316 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t317) = CAST zcl_lnt_abstract_type( t3 ).
          t316 = t317.
          DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t318.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          t311 = NEW zcl_lnt_typed_identifier( i_token = t312 i_filename = t314 i_type_9913 = t316 i_meta = t318 i_value = t319 ).
          t310 = t311.
          DATA t320 TYPE REF TO zcl_lnt_current_scope.
          DATA(t321) = CAST zcl_lnt_syntax_input( t2 ).
          t320 = t321->scope.
          DATA t322 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t322.
          DATA(t323) = abap_true.
          IF t323 = abap_true.
            DATA t324 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t325) = CAST zcl_lnt_abstract_token( t11 ).
            t324 = t325.
            t322 = t324.
          ELSE.
            DATA t326 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t326.
            t322 = t326.
          ENDIF.
          DATA(t327) = CAST zcl_lnt_typed_identifier( t310 ).
          DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t329) = |Inferred Type|.
          CREATE OBJECT t328.
          t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t328->sval = t329.
          DATA t330 TYPE string.
          DATA(t331) = CAST zcl_lnt_syntax_input( t2 ).
          t330 = t331->filename.
          DATA t332 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t332.
          DATA(t333) = abap_true.
          IF t333 = abap_true.
            DATA t334 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t334.
            DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t335.
            DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t336.
            DATA t337 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t337.
            DATA(t338) = abap_true.
            IF t338 = abap_true.
              DATA(t339) = abap_false.
              DATA(t340) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t340->has = abap_true.
              t340->value = t339.
              t337 = t340.
            ELSE.
              DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t341.
              t337 = t341.
            ENDIF.
            t334 = NEW zcl_lnt_ireference_extras( i_oo_name = t335 i_oo_type = t336 i_found_qualified = t337 ).
            t332 = t334.
          ELSE.
            DATA t342 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t342.
            t332 = t342.
          ENDIF.
          t320->add_reference( i_usage = t322 i_referencing = t327 i_type_9913 = t328 i_filename = t330 i_extra = t332 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD determine_type.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA t4 TYPE REF TO zcl_lnt_basic_types.
    DATA t5 TYPE REF TO zcl_lnt_basic_types.
    DATA(t6) = CAST zcl_lnt_syntax_input( t2 ).
    t5 = NEW zcl_lnt_basic_types( i_input_967e = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
    t8 = t9->find_direct_expression( i_type_9913 = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = CAST zcl_lnt_expression_node( t7 ).
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zcl_lnt_expression_node( t13 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = CAST zcl_lnt_expression_node( t13 ).
      t20 = t21.
      t19 = t20->get_first_token( ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t25) = CAST zcl_lnt_abstract_token( t11 ).
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = CAST zcl_lnt_abstract_token( t24 ).
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t26 = t29.
    ELSE.
      DATA t30 TYPE string.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = CAST zcl_lnt_abstract_token( t24 ).
      t32 = t33.
      t31 = t32.
      DATA t34 TYPE string.
      DATA(t35) = CAST zcl_lnt_abstract_token( t31 ).
      t34 = t35->str.
      t30 = t34.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t30.
      t26 = t36.
    ENDIF.
    t23 = t26.
    t22 = t23.
    DATA(t37) = VALUE abap_bool( ).
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    DATA(t39) = CAST zcl_lnt_expression_node( t7 ).
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    t40 = t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = CAST zcl_lnt_expression_node( t38 ).
    IF t43 IS INITIAL.
      t42 = abap_true.
    ENDIF.
    t37 = t42.
    IF t37 = abap_true.
      DATA t44 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t44.
      DATA t45 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = |determineType, child TypeNameOrInfer not found|.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      t45 = NEW zcx_lnt_assert_error( i_message_26cb = t46 ).
      t44 = NEW #( ).
      t44->payload = t45.
      RAISE EXCEPTION t44.
    ELSE.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = CAST zlnt_runtime_opti_4ba3bdccd169( t22 ).
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = abap_true.
      IF t55 = abap_true.
        DATA(t56) = |#|.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t56.
        t54 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t54 = t58.
      ENDIF.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE abap_bool( ).
      IF t53 IS BOUND.
        t59 = t53->has.
      ENDIF.
      IF t54 IS BOUND.
        t60 = t54->has.
      ENDIF.
      IF t59 = t60.
        IF t59 = abap_false.
          t52 = abap_true.
        ELSEIF t53->value = t54->value.
          t52 = abap_true.
        ENDIF.
      ENDIF.
      t51 = t52.
      IF t52 = abap_true.
        DATA t61 TYPE abap_bool.
        DATA(t62) = CAST zcl_lnt_abstract_type( t3 ).
        t61 = xsdbool( t62 IS BOUND ).
        t51 = t61.
      ENDIF.
      IF t51 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t66) = CAST zcl_lnt_abstract_type( t3 ).
          t65 = t66.
          t63 = t65.
        ELSE.
          DATA t67 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t67.
          t63 = t67.
        ENDIF.
        result = t63.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = CAST zlnt_runtime_opti_4ba3bdccd169( t22 ).
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t71.
    DATA(t72) = abap_true.
    IF t72 = abap_true.
      DATA(t73) = |#|.
      DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t74->has = abap_true.
      t74->value = t73.
      t71 = t74.
    ELSE.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      t71 = t75.
    ENDIF.
    DATA(t76) = VALUE abap_bool( ).
    DATA(t77) = VALUE abap_bool( ).
    IF t70 IS BOUND.
      t76 = t70->has.
    ENDIF.
    IF t71 IS BOUND.
      t77 = t71->has.
    ENDIF.
    IF t76 = t77.
      IF t76 = abap_false.
        t69 = abap_true.
      ELSEIF t70->value = t71->value.
        t69 = abap_true.
      ENDIF.
    ENDIF.
    IF t69 = abap_true.
      t69 = abap_false.
    ELSE.
      t69 = abap_true.
    ENDIF.
    t68 = t69.
    IF t69 = abap_true.
      DATA t78 TYPE abap_bool.
      DATA(t79) = CAST zcl_lnt_abstract_token( t11 ).
      t78 = xsdbool( t79 IS BOUND ).
      t68 = t78.
    ENDIF.
    IF t68 = abap_true.
      DATA t80 TYPE REF TO zcl_lnt_abstract_type.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t82) = CAST zcl_lnt_basic_types( t4 ).
      DATA t83 TYPE REF TO zcl_lnt_expression_node.
      DATA(t84) = CAST zcl_lnt_expression_node( t7 ).
      t83 = t84.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      t81 = t82->parse_type( i_node = t83 i_qualified_name = t85 ).
      t80 = t81.
      DATA t86 TYPE abap_bool.
      DATA t87 TYPE abap_bool.
      DATA(t88) = CAST zcl_lnt_abstract_type( t80 ).
      t87 = xsdbool( t88 IS BOUND ).
      t86 = t87.
      IF t87 = abap_true.
        DATA t89 TYPE abap_bool.
        DATA t90 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t91) = CAST zcl_lnt_abstract_type( t80 ).
        t90 = t91.
        t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_unknown_type ).
        t86 = t89.
      ENDIF.
      IF t86 = abap_true.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = VALUE abap_bool( ).
        DATA t94 TYPE REF TO zcl_lnt_ddic.
        DATA t95 TYPE REF TO zcl_lnt_ddic.
        DATA t96 TYPE REF TO zcl_lnt_current_scope.
        DATA t97 TYPE REF TO zcl_lnt_current_scope.
        DATA(t98) = CAST zcl_lnt_syntax_input( t2 ).
        t97 = t98->scope.
        t96 = t97.
        DATA t99 TYPE REF TO zcl_lnt_ddic.
        DATA t100 TYPE REF TO zif_lnt_registry.
        DATA(t101) = CAST zcl_lnt_current_scope( t96 ).
        t100 = t101->reg.
        t99 = NEW zcl_lnt_ddic( i_reg_f149 = t100 ).
        t95 = t99.
        t94 = t95.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t103) = CAST zlnt_runtime_opti_4ba3bdccd169( t22 ).
        t102 = t103.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE abap_bool( ).
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t107) = CAST zlnt_runtime_opti_4ba3bdccd169( t102 ).
        t106 = t107.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        t108 = t109.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = CAST zlnt_runtime_opti_4ba3bdccd169( t106 ).
        IF t111 IS INITIAL.
          t110 = abap_true.
        ELSEIF t111->has = abap_false.
          t110 = abap_true.
        ENDIF.
        t105 = t110.
        IF t105 = abap_true.
          DATA(t112) = abap_true.
          t104 = t112.
        ELSE.
          DATA t113 TYPE abap_bool.
          DATA t114 TYPE REF TO zif_lnt_registry.
          DATA(t115) = CAST zcl_lnt_ddic( t94 ).
          t114 = t115->reg.
          DATA t116 TYPE string.
          DATA(t117) = CAST zlnt_runtime_opti_4ba3bdccd169( t102 ).
          t116 = t117->value.
          t113 = t114->in_error_namespace( i_name = t116 ).
          t104 = t113.
        ENDIF.
        t93 = t104.
        DATA(t118) = abap_false.
        t92 = xsdbool( t93 = t118 ).
        IF t92 = abap_true.
          DATA t119 TYPE REF TO zcl_lnt_current_scope.
          DATA(t120) = CAST zcl_lnt_syntax_input( t2 ).
          t119 = t120->scope.
          DATA t121 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t121.
          DATA(t122) = abap_true.
          IF t122 = abap_true.
            DATA t123 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t124) = CAST zcl_lnt_abstract_token( t11 ).
            t123 = t124.
            t121 = t123.
          ELSE.
            DATA t125 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t125.
            t121 = t125.
          ENDIF.
          DATA t126 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t126.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t128) = |Type (Void)|.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t127->sval = t128.
          DATA t129 TYPE string.
          DATA(t130) = CAST zcl_lnt_syntax_input( t2 ).
          t129 = t130->filename.
          DATA t131 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t131.
          t119->add_reference( i_usage = t121 i_referencing = t126 i_type_9913 = t127 i_filename = t129 i_extra = t131 ).
          DATA t132 TYPE REF TO zcl_lnt_void_type.
          DATA(t133) = CAST zlnt_runtime_opti_4ba3bdccd169( t22 ).
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t132 = zcl_lnt_void_type=>get_db65( i_voided = t133 i_qualified_name = t134 ).
          result = t132.
          RETURN.
        ELSE.
          DATA t135 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t136 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t137 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t138) = CAST zcl_lnt_abstract_token( t11 ).
          t137 = t138.
          DATA t139 TYPE string.
          DATA(t140) = CAST zcl_lnt_syntax_input( t2 ).
          t139 = t140->filename.
          DATA t141 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t142) = CAST zcl_lnt_abstract_type( t80 ).
          t141 ?= t142.
          DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t143.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          t136 = NEW zcl_lnt_typed_identifier( i_token = t137 i_filename = t139 i_type_9913 = t141 i_meta = t143 i_value = t144 ).
          t135 = t136.
          DATA t145 TYPE REF TO zcl_lnt_current_scope.
          DATA(t146) = CAST zcl_lnt_syntax_input( t2 ).
          t145 = t146->scope.
          DATA t147 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t147.
          DATA(t148) = abap_true.
          IF t148 = abap_true.
            DATA t149 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t150) = CAST zcl_lnt_abstract_token( t11 ).
            t149 = t150.
            t147 = t149.
          ELSE.
            DATA t151 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t151.
            t147 = t151.
          ENDIF.
          DATA(t152) = CAST zcl_lnt_typed_identifier( t135 ).
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t154) = |Type|.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t153->sval = t154.
          DATA t155 TYPE string.
          DATA(t156) = CAST zcl_lnt_syntax_input( t2 ).
          t155 = t156->filename.
          DATA t157 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t157.
          t145->add_reference( i_usage = t147 i_referencing = t152 i_type_9913 = t153 i_filename = t155 i_extra = t157 ).
          DATA t158 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t159) = CAST zcl_lnt_abstract_type( t80 ).
          t158 ?= t159.
          result = t158.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t160) = VALUE abap_bool( ).
        DATA t161 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t162) = CAST zcl_lnt_abstract_type( t80 ).
        t161 = t162.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        t163 = t164.
        DATA(t165) = VALUE abap_bool( ).
        DATA(t166) = CAST zcl_lnt_abstract_type( t161 ).
        IF t166 IS INITIAL.
          t165 = abap_true.
        ENDIF.
        t160 = t165.
        IF t160 = abap_true.
          DATA(t167) = VALUE string( ).
          DATA(t168) = VALUE string( ).
          DATA(t169) = VALUE string( ).
          DATA(t170) = |Type "|.
          DATA(t171) = VALUE string( ).
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t173) = CAST zlnt_runtime_opti_4ba3bdccd169( t22 ).
          t172 = t173.
          DATA(t174) = VALUE string( ).
          DATA(t175) = VALUE abap_bool( ).
          DATA(t176) = CAST zlnt_runtime_opti_4ba3bdccd169( t172 ).
          IF t176 IS INITIAL.
            t175 = abap_true.
          ELSEIF t176->has = abap_false.
            t175 = abap_true.
          ENDIF.
          IF t175 = abap_true.
            DATA(t177) = |undefined|.
            t174 = t177.
          ELSE.
            DATA t178 TYPE string.
            DATA(t179) = CAST zlnt_runtime_opti_4ba3bdccd169( t172 ).
            t178 = t179->value.
            t174 = t178.
          ENDIF.
          t171 = t174.
          DATA(t180) = strlen( t170 ).
          t169 = |{ t170 }{ t171 }|.
          DATA(t181) = |" not found in scope, VALUE|.
          DATA(t182) = strlen( t169 ).
          t168 = |{ t169 }{ t181 }|.
          t167 = t168.
          DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t184) = CAST zcl_lnt_syntax_input( t2 ).
          t183 = t184->issues.
          DATA t185 TYPE REF TO zcl_lnt_issue.
          DATA(t186) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t187 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t188) = CAST zcl_lnt_expression_node( t1 ).
          t187 = t188->get_first_token( ).
          DATA(t189) = t167.
          DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t190.
          t185 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t186 i_token = t187 i_message_26cb = t189 i_fix = t190 ).
          APPEND t185 TO t183->items.
          DATA t191 TYPE REF TO zcl_lnt_void_type.
          CLEAR t191.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t192.
          DATA(t193) = abap_true.
          IF t193 = abap_true.
            DATA(t194) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t195->has = abap_true.
            t195->value = t194.
            t192 = t195.
          ELSE.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            t192 = t196.
          ENDIF.
          DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t197.
          t191 = zcl_lnt_void_type=>get_db65( i_voided = t192 i_qualified_name = t197 ).
          result = t191.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t198 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t198.
      DATA(t199) = abap_true.
      IF t199 = abap_true.
        DATA t200 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t201) = CAST zcl_lnt_abstract_type( t80 ).
        t200 = t201.
        t198 = t200.
      ELSE.
        DATA t202 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t202.
        t198 = t202.
      ENDIF.
      result = t198.
      RETURN.
    ENDIF.
    DATA(t203) = CAST zcl_lnt_abstract_type( t3 ).
    result = t203.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d810_9015d4e965d5.
  ENDMETHOD.
ENDCLASS.
