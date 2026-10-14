* TS: src/abap/5_syntax/expressions/method_parameters.ts:29:1 MethodParameters
CLASS zcl_lnt_sy_method_parameters DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA required_parameters TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    METHODS constructor.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_receiving IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_importing IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_changing IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    METHODS check_exporting IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e i_errors TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS report_errors IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS parameter_list_s IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parameter_list_t IMPORTING i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_parameters IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t1.
    me->required_parameters = t1.
  ENDMETHOD.

  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO object.
    DATA(t7) = t1.
    t6 = t7->get_db65( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_st_method_parameters ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t8.
      DATA t9 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |MethodParameters, unexpected input|.
        DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t13->has = abap_true.
        t13->value = t12.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      t9 = NEW zcx_lnt_assert_error( i_message_26cb = t10 ).
      t8 = NEW #( ).
      t8->payload = t9.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = t1.
    t17 = t18->get_children( ).
    t16 = t17->slice0( ).
    t15 = t16.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t3.
    t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_void_type ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA(t23) = NEW zlnt_runtime_set__1827558fd4c7( ).
        t21 = t23.
      ELSE.
        DATA t24 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t24.
        t21 = t24.
      ENDIF.
      me->required_parameters = t21.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t27.
        DATA(t28) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t29.
        DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t31.
        t30 = t31.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zif_lnt_method_parameters.
        DATA t34 TYPE REF TO zif_lnt_method_definition.
        DATA(t35) = t3.
        t34 ?= t35.
        t33 = t34->get_parameters( ).
        t32 = t33->get_required_parameters( ).
        DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t36.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        LOOP AT t32->items INTO t37.
          t36 ?= t37.
          DATA(t38) = t30.
          DATA(t39) = VALUE string( ).
          DATA(t40) = VALUE string( ).
          DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t42) = t36.
          t41 = t42.
          DATA(t43) = VALUE string( ).
          DATA t44 TYPE string.
          DATA t45 TYPE string.
          DATA t46 TYPE REF TO zcl_lnt_abstract_token.
          DATA t47 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t48) = t41.
          t47 = t48->token.
          t46 = t47.
          DATA t49 TYPE string.
          DATA(t50) = t46.
          t49 = t50->str.
          t45 = t49.
          t44 = t45.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE string( ).
          DATA(t53) = t44.
          DATA(t54) = 0.
          DATA(t55) = 1.
          DATA(t56) = strlen( t53 ).
          IF t54 < 0.
            t54 = t54 + t56.
            IF t54 < 0.
              t54 = 0.
            ENDIF.
          ENDIF.
          IF t54 > t56 OR t55 <= 0.
            CLEAR t52.
          ELSE.
            IF t55 > t56 - t54.
              t55 = t56 - t54.
            ENDIF.
            t52 = t53+t54(t55).
          ENDIF.
          DATA(t57) = |!|.
          t51 = xsdbool( t52 = t57 ).
          IF t51 = abap_true.
            DATA(t58) = VALUE string( ).
            DATA t59 TYPE string.
            DATA(t60) = t44.
            t59 = t60.
            DATA(t61) = VALUE string( ).
            DATA(t62) = t59.
            DATA(t63) = 1.
            DATA t64 TYPE i.
            DATA(t65) = t59.
            DATA(t66) = strlen( t65 ).
            t64 = t66.
            DATA(t67) = strlen( t62 ).
            IF t63 < 0.
              t63 = t63 + t67.
              IF t63 < 0.
                t63 = 0.
              ENDIF.
            ENDIF.
            IF t63 > t67 OR t64 <= 0.
              CLEAR t61.
            ELSE.
              IF t64 > t67 - t63.
                t64 = t67 - t63.
              ENDIF.
              t61 = t62+t63(t64).
            ENDIF.
            t58 = t61.
            t44 = t58.
          ENDIF.
          DATA(t68) = t44.
          t43 = t68.
          t40 = t43.
          DATA(t69) = strlen( t40 ).
          t39 = t40.
          IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t39 TO UPPER CASE.
          ELSE.
            t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
          ENDIF.
          APPEND t39 TO t38->items.
        ENDLOOP.
        DATA(t70) = t30.
        t29 = t70.
        t27 = t28->fromarray( p0 = t29 ).
        t25 = t27.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t71.
        t25 = t71.
      ENDIF.
      me->required_parameters = t25.
    ENDIF.
    DO.
      DATA t72 TYPE abap_bool.
      DATA t73 TYPE i.
      DATA(t74) = t15.
      t73 = lines( t74->items ).
      DATA(t75) = 0.
      t72 = xsdbool( t73 > t75 ).
      IF t72 = abap_false.
        EXIT.
      ENDIF.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t81.
      DATA t82 TYPE REF TO zif_lnt_node.
      DATA t83 TYPE REF TO zif_lnt_node.
      DATA(t84) = t15.
      DATA t85 TYPE REF TO object.
      t85 = t84->shift( ).
      t83 ?= t85.
      t82 = t83.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t82.
      IF t88 IS INITIAL.
        t87 = abap_true.
      ENDIF.
      IF t87 = abap_true.
        DATA t89 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t89.
        t86 = t89.
      ELSE.
        DATA t90 TYPE REF TO zcl_lnt_abstract_token.
        DATA t91 TYPE REF TO zif_lnt_node.
        DATA(t92) = t82.
        t91 = t92.
        t90 = t91->get_first_token( ).
        t86 = t90.
      ENDIF.
      t81 = t86.
      t80 = t81.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t80.
      IF t95 IS INITIAL.
        t94 = abap_true.
      ENDIF.
      IF t94 = abap_true.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t93 = t96.
      ELSE.
        DATA t97 TYPE string.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t100) = t80.
        t99 = t100.
        t98 = t99.
        DATA t101 TYPE string.
        DATA(t102) = t98.
        t101 = t102->str.
        t97 = t101.
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t97.
        t93 = t103.
      ENDIF.
      t79 = t93.
      t78 = t79.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = t78.
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
        DATA(t110) = t78.
        t109 = t110->value.
        DATA(t111) = strlen( t109 ).
        t108 = t109.
        IF t108 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t108 TO UPPER CASE.
        ELSE.
          t108 = zlnt_runtime_uppe_91169605024d=>full( t108 ).
        ENDIF.
        DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t112->has = abap_true.
        t112->value = t108.
        t104 = t112.
      ENDIF.
      t77 = t104.
      t76 = t77.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = t76.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      DATA(t116) = abap_true.
      IF t116 = abap_true.
        DATA(t117) = |EXPORTING|.
        DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t118->has = abap_true.
        t118->value = t117.
        t115 = t118.
      ELSE.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t115 = t119.
      ENDIF.
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = VALUE abap_bool( ).
      IF t114 IS BOUND.
        t120 = t114->has.
      ENDIF.
      IF t115 IS BOUND.
        t121 = t115->has.
      ENDIF.
      IF t120 = t121.
        IF t120 = abap_false.
          t113 = abap_true.
        ELSEIF t114->value = t115->value.
          t113 = abap_true.
        ENDIF.
      ENDIF.
      IF t113 = abap_true.
        DATA t122 TYPE REF TO zif_lnt_node.
        DATA t123 TYPE REF TO zif_lnt_node.
        DATA(t124) = t15.
        DATA t125 TYPE REF TO object.
        t125 = t124->shift( ).
        t123 ?= t125.
        t122 = t123.
        DATA(t126) = t2.
        DATA(t127) = t3.
        DATA t128 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = abap_false.
          DATA(t131) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t131->has = abap_true.
          t131->value = t130.
          t128 = t131.
        ELSE.
          DATA t132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t132.
          t128 = t132.
        ENDIF.
        me->check_exporting( i_node = t122 i_input_967e = t126 i_method = t127 i_errors = t128 ).
      ELSE.
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = t76.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA(t137) = |IMPORTING|.
          DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t138->has = abap_true.
          t138->value = t137.
          t135 = t138.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          t135 = t139.
        ENDIF.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE abap_bool( ).
        IF t134 IS BOUND.
          t140 = t134->has.
        ENDIF.
        IF t135 IS BOUND.
          t141 = t135->has.
        ENDIF.
        IF t140 = t141.
          IF t140 = abap_false.
            t133 = abap_true.
          ELSEIF t134->value = t135->value.
            t133 = abap_true.
          ENDIF.
        ENDIF.
        IF t133 = abap_true.
          DATA t142 TYPE REF TO zif_lnt_node.
          DATA t143 TYPE REF TO zif_lnt_node.
          DATA(t144) = t15.
          DATA t145 TYPE REF TO object.
          t145 = t144->shift( ).
          t143 ?= t145.
          t142 = t143.
          DATA(t146) = t2.
          DATA(t147) = t3.
          me->check_importing( i_node = t142 i_input_967e = t146 i_method = t147 ).
        ELSE.
          DATA(t148) = VALUE abap_bool( ).
          DATA(t149) = t76.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          DATA(t151) = abap_true.
          IF t151 = abap_true.
            DATA(t152) = |CHANGING|.
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
          IF t149 IS BOUND.
            t155 = t149->has.
          ENDIF.
          IF t150 IS BOUND.
            t156 = t150->has.
          ENDIF.
          IF t155 = t156.
            IF t155 = abap_false.
              t148 = abap_true.
            ELSEIF t149->value = t150->value.
              t148 = abap_true.
            ENDIF.
          ENDIF.
          IF t148 = abap_true.
            DATA t157 TYPE REF TO zif_lnt_node.
            DATA t158 TYPE REF TO zif_lnt_node.
            DATA(t159) = t15.
            DATA t160 TYPE REF TO object.
            t160 = t159->shift( ).
            t158 ?= t160.
            t157 = t158.
            DATA(t161) = t2.
            DATA(t162) = t3.
            me->check_changing( i_node = t157 i_input_967e = t161 i_method = t162 ).
          ELSE.
            DATA(t163) = VALUE abap_bool( ).
            DATA(t164) = t76.
            DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t165.
            DATA(t166) = abap_true.
            IF t166 = abap_true.
              DATA(t167) = |RECEIVING|.
              DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t168->has = abap_true.
              t168->value = t167.
              t165 = t168.
            ELSE.
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t169.
              t165 = t169.
            ENDIF.
            DATA(t170) = VALUE abap_bool( ).
            DATA(t171) = VALUE abap_bool( ).
            IF t164 IS BOUND.
              t170 = t164->has.
            ENDIF.
            IF t165 IS BOUND.
              t171 = t165->has.
            ENDIF.
            IF t170 = t171.
              IF t170 = abap_false.
                t163 = abap_true.
              ELSEIF t164->value = t165->value.
                t163 = abap_true.
              ENDIF.
            ENDIF.
            IF t163 = abap_true.
              DATA t172 TYPE REF TO zif_lnt_node.
              DATA t173 TYPE REF TO zif_lnt_node.
              DATA(t174) = t15.
              DATA t175 TYPE REF TO object.
              t175 = t174->shift( ).
              t173 ?= t175.
              t172 = t173.
              DATA(t176) = t2.
              DATA(t177) = t3.
              me->check_receiving( i_node = t172 i_input_967e = t176 i_method = t177 ).
            ELSE.
              DATA(t178) = VALUE abap_bool( ).
              DATA(t179) = t76.
              DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t180.
              DATA(t181) = abap_true.
              IF t181 = abap_true.
                DATA(t182) = |EXCEPTIONS|.
                DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t183->has = abap_true.
                t183->value = t182.
                t180 = t183.
              ELSE.
                DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t184.
                t180 = t184.
              ENDIF.
              DATA(t185) = VALUE abap_bool( ).
              DATA(t186) = VALUE abap_bool( ).
              IF t179 IS BOUND.
                t185 = t179->has.
              ENDIF.
              IF t180 IS BOUND.
                t186 = t180->has.
              ENDIF.
              IF t185 = t186.
                IF t185 = abap_false.
                  t178 = abap_true.
                ELSEIF t179->value = t180->value.
                  t178 = abap_true.
                ENDIF.
              ENDIF.
              IF t178 = abap_true.
                DATA t187 TYPE REF TO zcl_lnt_expression_node.
                DATA t188 TYPE REF TO zcl_lnt_expression_node.
                DATA t189 TYPE REF TO zif_lnt_node.
                DATA t190 TYPE REF TO zif_lnt_node.
                DATA(t191) = t15.
                DATA t192 TYPE REF TO object.
                t192 = t191->shift( ).
                t190 ?= t192.
                t189 = t190.
                t188 ?= t189.
                t187 = t188.
                DATA t193 TYPE REF TO zcl_lnt_expression_node.
                DATA t194 TYPE REF TO zcl_lnt_expression_node.
                DATA(t195) = t187.
                DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
                t194 = t195->find_first_expression( i_type_9913 = t196 ).
                t193 = t194.
                DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t197.
                DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t198.
                DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t199.
                DATA t200 TYPE REF TO zcl_lnt_expression_node.
                DATA(t201) = t193.
                t200 = t201.
                DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t202.
                DATA(t203) = VALUE abap_bool( ).
                DATA(t204) = t200.
                IF t204 IS INITIAL.
                  t203 = abap_true.
                ENDIF.
                IF t203 = abap_true.
                  DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t205.
                  t202 = t205.
                ELSE.
                  DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t207 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t208) = t200.
                  t207 = t208.
                  DATA(t209) = zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4.
                  t206 = t207->find_all_expressions( i_type_9913 = t209 ).
                  t202 = t206.
                ENDIF.
                t199 = t202.
                t198 = t199.
                DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t210.
                DATA t211 TYPE abap_bool.
                DATA(t212) = t198.
                t211 = xsdbool( t212 IS BOUND ).
                IF t211 = abap_true.
                  DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t214) = t198.
                  t213 = t214.
                  t210 = t213.
                ELSE.
                  DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CREATE OBJECT t215.
                  t210 = t215.
                ENDIF.
                t197 = t210.
                DATA t216 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t216.
                DATA t217 TYPE REF TO object.
                CLEAR t217.
                LOOP AT t197->items INTO t217.
                  t216 ?= t217.
                  DATA t218 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t218.
                  DATA(t219) = t216.
                  DATA(t220) = t2.
                  DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t221.
                  DATA(t222) = abap_true.
                  IF t222 = abap_true.
                    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t224) = |Read From|.
                    CREATE OBJECT t223.
                    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                    t223->sval = t224.
                    t221 = t223.
                  ELSE.
                    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t225.
                    t221 = t225.
                  ENDIF.
                  DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t226.
                  t218 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t219 i_input_967e = t220 i_ref_type = t221 i_allow_generic_deference = t226 ).
                ENDLOOP.
              ELSE.
                DATA t227 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
                CLEAR t227.
                DATA t228 TYPE REF TO zcx_lnt_assert_error.
                CLEAR t228.
                DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t229.
                DATA(t230) = abap_true.
                IF t230 = abap_true.
                  DATA(t231) = VALUE string( ).
                  DATA(t232) = |MethodParameters, unexpected token, |.
                  DATA(t233) = VALUE string( ).
                  DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t235) = t76.
                  t234 = t235.
                  DATA(t236) = VALUE string( ).
                  DATA(t237) = VALUE abap_bool( ).
                  DATA(t238) = t234.
                  IF t238 IS INITIAL.
                    t237 = abap_true.
                  ELSEIF t238->has = abap_false.
                    t237 = abap_true.
                  ENDIF.
                  IF t237 = abap_true.
                    DATA(t239) = |undefined|.
                    t236 = t239.
                  ELSE.
                    DATA t240 TYPE string.
                    DATA(t241) = t234.
                    t240 = t241->value.
                    t236 = t240.
                  ENDIF.
                  t233 = t236.
                  DATA(t242) = strlen( t232 ).
                  t231 = |{ t232 }{ t233 }|.
                  DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t243->has = abap_true.
                  t243->value = t231.
                  t229 = t243.
                ELSE.
                  DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t244.
                  t229 = t244.
                ENDIF.
                t228 = NEW zcx_lnt_assert_error( i_message_26cb = t229 ).
                t227 = NEW #( ).
                t227->payload = t228.
                RAISE EXCEPTION t227.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t245) = t1.
    DATA(t246) = t2.
    me->report_errors( i_node = t245 i_input_967e = t246 ).
  ENDMETHOD.

  METHOD check_receiving.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t3.
    t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_void_type ).
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_void_type.
      DATA(t9) = t3.
      DATA t10 TYPE REF TO object.
      t10 = t9.
      t8 ?= t10.
      t5 = t8.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t14 TYPE REF TO zif_lnt_method_parameters.
      DATA t15 TYPE REF TO zif_lnt_method_definition.
      DATA(t16) = t3.
      t15 ?= t16.
      t14 = t15->get_parameters( ).
      t13 = t14->get_returning( ).
      t12 = t13.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t12.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t20.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t24) = t12.
        t23 = t24.
        t22 = t23.
        DATA t25 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t26) = t22.
        t25 = t26->type_cba0.
        t21 = t25.
        t17 = t21.
      ENDIF.
      t11 = t17.
      t5 = t11.
    ENDIF.
    t4 = t5.
    DATA(t27) = VALUE abap_bool( ).
    DATA t28 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t29) = t4.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t28.
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    t27 = t32.
    IF t27 = abap_true.
      DATA t34 TYPE string.
      DATA(t35) = |Method does not have a returning parameter|.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = t2.
      t36 = t37->issues.
      DATA t38 TYPE REF TO zcl_lnt_issue.
      DATA(t39) = t2.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t41) = t1.
      t40 = t41->get_first_token( ).
      DATA(t42) = t34.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t43.
      t38 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t39 i_token = t40 i_message_26cb = t42 i_fix = t43 ).
      APPEND t38 TO t36->items.
      RETURN.
    ELSE.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t46) = t1.
      t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_expression_node ).
      t44 = xsdbool( t45 = abap_false ).
      IF t44 = abap_true.
        DATA t47 TYPE string.
        DATA(t48) = |checkReceiving, not an expression node|.
        t47 = t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t50) = t2.
        t49 = t50->issues.
        DATA t51 TYPE REF TO zcl_lnt_issue.
        DATA(t52) = t2.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = t1.
        t53 = t54->get_first_token( ).
        DATA(t55) = t47.
        DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t56.
        t51 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t52 i_token = t53 i_message_26cb = t55 i_fix = t56 ).
        APPEND t51 TO t49->items.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    DATA t59 TYPE REF TO zcl_lnt_expression_node.
    DATA(t60) = t1.
    DATA t61 TYPE REF TO object.
    t61 = t60.
    t59 ?= t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
    t58 = t59->find_direct_expression( i_type_9913 = t62 ).
    t57 = t58.
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    DATA(t66) = t57.
    t65 = t66.
    DATA t67 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = t65.
    IF t69 IS INITIAL.
      t68 = abap_true.
    ENDIF.
    IF t68 = abap_true.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t70.
      t67 = t70.
    ELSE.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      DATA(t73) = t65.
      t72 = t73.
      DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t71 = t72->find_direct_expression( i_type_9913 = t74 ).
      t67 = t71.
    ENDIF.
    t64 = t67.
    t63 = t64.
    DATA t75 TYPE abap_bool.
    DATA(t76) = t63.
    t75 = xsdbool( t76 IS BOUND ).
    IF t75 = abap_true.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      DATA(t78) = t63.
      t77 = t78.
      DATA(t79) = t2.
      DATA t80 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t80.
      DATA(t81) = abap_true.
      IF t81 = abap_true.
        DATA t82 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t83) = t4.
        t82 = t83.
        t80 = t82.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t84.
        t80 = t84.
      ENDIF.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t77 i_input_967e = t79 i_type_9913 = t80 ).
    ELSE.
      DATA t85 TYPE abap_bool.
      DATA(t86) = t57.
      t85 = xsdbool( t86 IS BOUND ).
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        DATA t88 TYPE REF TO zcl_lnt_abstract_type.
        DATA t89 TYPE REF TO zcl_lnt_expression_node.
        DATA(t90) = t57.
        t89 = t90.
        DATA(t91) = t2.
        t88 = zcl_lnt_sy_target=>run_syntax( i_node = t89 i_input_967e = t91 ).
        t87 = t88.
        DATA t92 TYPE abap_bool.
        DATA t93 TYPE abap_bool.
        DATA(t94) = t87.
        t93 = xsdbool( t94 IS BOUND ).
        t92 = t93.
        IF t93 = abap_true.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE abap_bool( ).
          DATA t97 TYPE REF TO zcl_lnt_type_utils.
          DATA t98 TYPE REF TO zcl_lnt_current_scope.
          DATA(t99) = t2.
          t98 = t99->scope.
          t97 = NEW zcl_lnt_type_utils( i_scope = t98 ).
          DATA t100 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t103) = t4.
            t102 = t103.
            t100 = t102.
          ELSE.
            DATA t104 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t104.
            t100 = t104.
          ENDIF.
          DATA t105 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t105.
          DATA(t106) = abap_true.
          IF t106 = abap_true.
            DATA t107 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t108) = t87.
            t107 = t108.
            t105 = t107.
          ELSE.
            DATA t109 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t109.
            t105 = t109.
          ENDIF.
          t96 = t97->is_assignable( i_source_75cf = t100 i_target_5f8a = t105 ).
          DATA(t110) = abap_false.
          t95 = xsdbool( t96 = t110 ).
          t92 = t95.
        ENDIF.
        IF t92 = abap_true.
          DATA t111 TYPE string.
          DATA(t112) = |Method returning value not type compatible|.
          t111 = t112.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t114) = t2.
          t113 = t114->issues.
          DATA t115 TYPE REF TO zcl_lnt_issue.
          DATA(t116) = t2.
          DATA t117 TYPE REF TO zcl_lnt_abstract_token.
          DATA t118 TYPE REF TO zcl_lnt_expression_node.
          DATA(t119) = t1.
          DATA t120 TYPE REF TO object.
          t120 = t119.
          t118 ?= t120.
          t117 = t118->get_first_token( ).
          DATA(t121) = t111.
          DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t122.
          t115 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t116 i_token = t117 i_message_26cb = t121 i_fix = t122 ).
          APPEND t115 TO t113->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD check_importing.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_node.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = t1.
      t5 = t7.
    ELSE.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    DATA(t9) = t2.
    t4 = me->parameter_list_t( i_node = t5 i_input_967e = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_ilist_item_t.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t13.
      t12 = t13.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t3.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_void_type ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_void_type.
        DATA(t17) = t3.
        DATA t18 TYPE REF TO object.
        t18 = t17.
        t16 ?= t18.
        t12 = t16.
      ELSE.
        DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t19.
        DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t20.
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t23 TYPE REF TO zif_lnt_method_parameters.
        DATA t24 TYPE REF TO zif_lnt_method_definition.
        DATA(t25) = t3.
        t24 ?= t25.
        t23 = t24->get_parameters( ).
        t22 = t23->get_exporting( ).
        t21 = t22.
        DATA t26 TYPE i.
        DATA t27 TYPE i.
        DATA(t28) = t21.
        t27 = lines( t28->items ).
        t26 = t27.
        DATA t29 TYPE i.
        DATA(t30) = 0.
        t29 = t30.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t32.
        t31 = t32.
        DO.
          DATA t33 TYPE abap_bool.
          DATA(t34) = t29.
          DATA(t35) = t26.
          t33 = xsdbool( t34 < t35 ).
          IF t33 = abap_false.
            EXIT.
          ENDIF.
          DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t37 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t39) = t21.
          DATA(t40) = t29.
          DATA t41 TYPE REF TO object.
          t41 = t39->get( p0 = t40 ).
          t38 ?= t41.
          t37 = t38.
          t36 = t37.
          DATA(t42) = VALUE abap_bool( ).
          DATA(t43) = VALUE string( ).
          DATA(t44) = VALUE string( ).
          DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t46) = t36.
          t45 = t46.
          DATA(t47) = VALUE string( ).
          DATA t48 TYPE string.
          DATA t49 TYPE string.
          DATA t50 TYPE REF TO zcl_lnt_abstract_token.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t52) = t45.
          t51 = t52->token.
          t50 = t51.
          DATA t53 TYPE string.
          DATA(t54) = t50.
          t53 = t54->str.
          t49 = t53.
          t48 = t49.
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = VALUE string( ).
          DATA(t57) = t48.
          DATA(t58) = 0.
          DATA(t59) = 1.
          DATA(t60) = strlen( t57 ).
          IF t58 < 0.
            t58 = t58 + t60.
            IF t58 < 0.
              t58 = 0.
            ENDIF.
          ENDIF.
          IF t58 > t60 OR t59 <= 0.
            CLEAR t56.
          ELSE.
            IF t59 > t60 - t58.
              t59 = t60 - t58.
            ENDIF.
            t56 = t57+t58(t59).
          ENDIF.
          DATA(t61) = |!|.
          t55 = xsdbool( t56 = t61 ).
          IF t55 = abap_true.
            DATA(t62) = VALUE string( ).
            DATA t63 TYPE string.
            DATA(t64) = t48.
            t63 = t64.
            DATA(t65) = VALUE string( ).
            DATA(t66) = t63.
            DATA(t67) = 1.
            DATA t68 TYPE i.
            DATA(t69) = t63.
            DATA(t70) = strlen( t69 ).
            t68 = t70.
            DATA(t71) = strlen( t66 ).
            IF t67 < 0.
              t67 = t67 + t71.
              IF t67 < 0.
                t67 = 0.
              ENDIF.
            ENDIF.
            IF t67 > t71 OR t68 <= 0.
              CLEAR t65.
            ELSE.
              IF t68 > t71 - t67.
                t68 = t71 - t67.
              ENDIF.
              t65 = t66+t67(t68).
            ENDIF.
            t62 = t65.
            t48 = t62.
          ENDIF.
          DATA(t72) = t48.
          t47 = t72.
          t44 = t47.
          DATA(t73) = strlen( t44 ).
          t43 = t44.
          IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t43 TO UPPER CASE.
          ELSE.
            t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
          ENDIF.
          DATA t74 TYPE string.
          DATA(t75) = t10.
          t74 = t75->name.
          t42 = xsdbool( t43 = t74 ).
          IF t42 = abap_true.
            DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t76.
            DATA(t77) = abap_true.
            IF t77 = abap_true.
              DATA(t78) = t36.
              t76 = t78.
            ELSE.
              DATA t79 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t79.
              t76 = t79.
            ENDIF.
            t31 = t76.
            EXIT.
          ENDIF.
          DATA t80 TYPE i.
          DATA(t81) = t29.
          DATA(t82) = 1.
          t80 = t81 + t82.
          t29 = t80.
        ENDDO.
        DATA(t83) = t31.
        t20 = t83.
        t19 = t20.
        DATA(t84) = VALUE abap_bool( ).
        DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t86) = t19.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        t87 = t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = t85.
        IF t90 IS INITIAL.
          t89 = abap_true.
        ENDIF.
        t84 = t89.
        IF t84 = abap_true.
          DATA t91 TYPE string.
          DATA t92 TYPE string.
          DATA t93 TYPE string.
          DATA(t94) = |Method exporting parameter "|.
          DATA t95 TYPE string.
          DATA(t96) = t10.
          t95 = t96->name.
          DATA(t97) = strlen( t94 ).
          t93 = |{ t94 }{ t95 }|.
          DATA(t98) = |" does not exist|.
          DATA(t99) = strlen( t93 ).
          t92 = |{ t93 }{ t98 }|.
          t91 = t92.
          DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t101) = t2.
          t100 = t101->issues.
          DATA t102 TYPE REF TO zcl_lnt_issue.
          DATA(t103) = t2.
          DATA t104 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t105) = t1.
          t104 = t105->get_first_token( ).
          DATA(t106) = t91.
          DATA t107 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t107.
          t102 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t103 i_token = t104 i_message_26cb = t106 i_fix = t107 ).
          APPEND t102 TO t100->items.
          RETURN.
        ENDIF.
        DATA t108 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t108.
        DATA(t109) = abap_true.
        IF t109 = abap_true.
          DATA t110 TYPE REF TO zcl_lnt_abstract_type.
          DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t113) = t19.
          t112 = t113.
          t111 = t112.
          DATA t114 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t115) = t111.
          t114 = t115->type_cba0.
          t110 = t114.
          t108 = t110.
        ELSE.
          DATA t116 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t116.
          t108 = t116.
        ENDIF.
        t12 = t108.
      ENDIF.
      DATA t117 TYPE REF TO zcl_lnt_expression_node.
      DATA t118 TYPE REF TO zcl_lnt_expression_node.
      DATA t119 TYPE REF TO zcl_lnt_expression_node.
      DATA(t120) = t10.
      t119 = t120->target.
      DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t118 = t119->find_direct_expression( i_type_9913 = t121 ).
      t117 = t118.
      DATA t122 TYPE abap_bool.
      DATA(t123) = t117.
      t122 = xsdbool( t123 IS BOUND ).
      IF t122 = abap_true.
        DATA t124 TYPE REF TO zcl_lnt_expression_node.
        DATA(t125) = t117.
        t124 = t125.
        DATA(t126) = t2.
        DATA t127 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t127.
        DATA(t128) = abap_true.
        IF t128 = abap_true.
          DATA t129 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t130) = t12.
          t129 = t130.
          t127 = t129.
        ELSE.
          DATA t131 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t131.
          t127 = t131.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t124 i_input_967e = t126 i_type_9913 = t127 ).
      ELSE.
        DATA(t132) = VALUE abap_bool( ).
        DATA t133 TYPE REF TO zcl_lnt_abstract_type.
        DATA t134 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t135) = t10.
        t134 = t135->target_type.
        t133 = t134.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        t136 = t137.
        DATA(t138) = VALUE abap_bool( ).
        DATA(t139) = t133.
        IF t139 IS INITIAL.
          t138 = abap_true.
        ENDIF.
        t132 = t138.
        IF t132 = abap_true.
          DATA t140 TYPE string.
          DATA(t141) = |Could not determine target type|.
          t140 = t141.
          DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t143) = t2.
          t142 = t143->issues.
          DATA t144 TYPE REF TO zcl_lnt_issue.
          DATA(t145) = t2.
          DATA t146 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t147) = t1.
          t146 = t147->get_first_token( ).
          DATA(t148) = t140.
          DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t149.
          t144 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t145 i_token = t146 i_message_26cb = t148 i_fix = t149 ).
          APPEND t144 TO t142->items.
          RETURN.
        ELSE.
          DATA t150 TYPE abap_bool.
          DATA t151 TYPE abap_bool.
          DATA t152 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t153) = t10.
          t152 = t153->target_type.
          t151 = xsdbool( t152 IS BOUND ).
          t150 = t151.
          IF t151 = abap_true.
            DATA(t154) = VALUE abap_bool( ).
            DATA(t155) = VALUE abap_bool( ).
            DATA t156 TYPE REF TO zcl_lnt_type_utils.
            DATA t157 TYPE REF TO zcl_lnt_current_scope.
            DATA(t158) = t2.
            t157 = t158->scope.
            t156 = NEW zcl_lnt_type_utils( i_scope = t157 ).
            DATA t159 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t159.
            DATA(t160) = abap_true.
            IF t160 = abap_true.
              DATA t161 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t162) = t12.
              t161 = t162.
              t159 = t161.
            ELSE.
              DATA t163 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t163.
              t159 = t163.
            ENDIF.
            DATA t164 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t164.
            DATA(t165) = abap_true.
            IF t165 = abap_true.
              DATA t166 TYPE REF TO zcl_lnt_abstract_type.
              DATA t167 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t168) = t10.
              t167 = t168->target_type.
              t166 = t167.
              t164 = t166.
            ELSE.
              DATA t169 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t169.
              t164 = t169.
            ENDIF.
            DATA t170 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t170.
            t155 = t156->is_assignable_strict( i_source_75cf = t159 i_target_5f8a = t164 i_node = t170 ).
            DATA(t171) = abap_false.
            t154 = xsdbool( t155 = t171 ).
            t150 = t154.
          ENDIF.
          IF t150 = abap_true.
            DATA t172 TYPE string.
            DATA t173 TYPE string.
            DATA(t174) = |Method parameter type not compatible, |.
            DATA t175 TYPE string.
            DATA(t176) = t10.
            t175 = t176->name.
            DATA(t177) = strlen( t174 ).
            t173 = |{ t174 }{ t175 }|.
            t172 = t173.
            DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t179) = t2.
            t178 = t179->issues.
            DATA t180 TYPE REF TO zcl_lnt_issue.
            DATA(t181) = t2.
            DATA t182 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t183) = t1.
            t182 = t183->get_first_token( ).
            DATA(t184) = t172.
            DATA t185 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t185.
            t180 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t181 i_token = t182 i_message_26cb = t184 i_fix = t185 ).
            APPEND t180 TO t178->items.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD check_changing.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_node.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = t1.
      t5 = t7.
    ELSE.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    DATA(t9) = t2.
    t4 = me->parameter_list_t( i_node = t5 i_input_967e = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_ilist_item_t.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t10.
      t15 = t16->target.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t14 = t15->find_first_expression( i_type_9913 = t17 ).
      t13 = t14.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      t18 = t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = t13.
      IF t22 IS INITIAL.
        t21 = abap_true.
      ENDIF.
      t20 = xsdbool( t21 = abap_false ).
      t12 = t20.
      IF t12 = abap_true.
        DATA t23 TYPE string.
        DATA(t24) = |CHANGING cannot be inlined|.
        t23 = t24.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t26) = t2.
        t25 = t26->issues.
        DATA t27 TYPE REF TO zcl_lnt_issue.
        DATA(t28) = t2.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t30) = t1.
        t29 = t30->get_first_token( ).
        DATA(t31) = t23.
        DATA t32 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t32.
        t27 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t28 i_token = t29 i_message_26cb = t31 i_fix = t32 ).
        APPEND t27 TO t25->items.
        RETURN.
      ENDIF.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      DATA t34 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t34.
      t33 = t34.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t3.
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_void_type ).
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_void_type.
        DATA(t38) = t3.
        DATA t39 TYPE REF TO object.
        t39 = t38.
        t37 ?= t39.
        t33 = t37.
      ELSE.
        DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t44 TYPE REF TO zif_lnt_method_parameters.
        DATA t45 TYPE REF TO zif_lnt_method_definition.
        DATA(t46) = t3.
        t45 ?= t46.
        t44 = t45->get_parameters( ).
        t43 = t44->get_changing( ).
        t42 = t43.
        DATA t47 TYPE i.
        DATA t48 TYPE i.
        DATA(t49) = t42.
        t48 = lines( t49->items ).
        t47 = t48.
        DATA t50 TYPE i.
        DATA(t51) = 0.
        t50 = t51.
        DATA t52 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t53.
        t52 = t53.
        DO.
          DATA t54 TYPE abap_bool.
          DATA(t55) = t50.
          DATA(t56) = t47.
          t54 = xsdbool( t55 < t56 ).
          IF t54 = abap_false.
            EXIT.
          ENDIF.
          DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t60) = t42.
          DATA(t61) = t50.
          DATA t62 TYPE REF TO object.
          t62 = t60->get( p0 = t61 ).
          t59 ?= t62.
          t58 = t59.
          t57 = t58.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE string( ).
          DATA(t65) = VALUE string( ).
          DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t67) = t57.
          t66 = t67.
          DATA(t68) = VALUE string( ).
          DATA t69 TYPE string.
          DATA t70 TYPE string.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t73) = t66.
          t72 = t73->token.
          t71 = t72.
          DATA t74 TYPE string.
          DATA(t75) = t71.
          t74 = t75->str.
          t70 = t74.
          t69 = t70.
          DATA(t76) = VALUE abap_bool( ).
          DATA(t77) = VALUE string( ).
          DATA(t78) = t69.
          DATA(t79) = 0.
          DATA(t80) = 1.
          DATA(t81) = strlen( t78 ).
          IF t79 < 0.
            t79 = t79 + t81.
            IF t79 < 0.
              t79 = 0.
            ENDIF.
          ENDIF.
          IF t79 > t81 OR t80 <= 0.
            CLEAR t77.
          ELSE.
            IF t80 > t81 - t79.
              t80 = t81 - t79.
            ENDIF.
            t77 = t78+t79(t80).
          ENDIF.
          DATA(t82) = |!|.
          t76 = xsdbool( t77 = t82 ).
          IF t76 = abap_true.
            DATA(t83) = VALUE string( ).
            DATA t84 TYPE string.
            DATA(t85) = t69.
            t84 = t85.
            DATA(t86) = VALUE string( ).
            DATA(t87) = t84.
            DATA(t88) = 1.
            DATA t89 TYPE i.
            DATA(t90) = t84.
            DATA(t91) = strlen( t90 ).
            t89 = t91.
            DATA(t92) = strlen( t87 ).
            IF t88 < 0.
              t88 = t88 + t92.
              IF t88 < 0.
                t88 = 0.
              ENDIF.
            ENDIF.
            IF t88 > t92 OR t89 <= 0.
              CLEAR t86.
            ELSE.
              IF t89 > t92 - t88.
                t89 = t92 - t88.
              ENDIF.
              t86 = t87+t88(t89).
            ENDIF.
            t83 = t86.
            t69 = t83.
          ENDIF.
          DATA(t93) = t69.
          t68 = t93.
          t65 = t68.
          DATA(t94) = strlen( t65 ).
          t64 = t65.
          IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t64 TO UPPER CASE.
          ELSE.
            t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
          ENDIF.
          DATA t95 TYPE string.
          DATA(t96) = t10.
          t95 = t96->name.
          t63 = xsdbool( t64 = t95 ).
          IF t63 = abap_true.
            DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t97.
            DATA(t98) = abap_true.
            IF t98 = abap_true.
              DATA(t99) = t57.
              t97 = t99.
            ELSE.
              DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t100.
              t97 = t100.
            ENDIF.
            t52 = t97.
            EXIT.
          ENDIF.
          DATA t101 TYPE i.
          DATA(t102) = t50.
          DATA(t103) = 1.
          t101 = t102 + t103.
          t50 = t101.
        ENDDO.
        DATA(t104) = t52.
        t41 = t104.
        t40 = t41.
        DATA(t105) = VALUE abap_bool( ).
        DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t107) = t40.
        t106 = t107.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        t108 = t109.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = t106.
        IF t111 IS INITIAL.
          t110 = abap_true.
        ENDIF.
        t105 = t110.
        IF t105 = abap_true.
          DATA t112 TYPE string.
          DATA t113 TYPE string.
          DATA t114 TYPE string.
          DATA(t115) = |Method changing parameter "|.
          DATA t116 TYPE string.
          DATA(t117) = t10.
          t116 = t117->name.
          DATA(t118) = strlen( t115 ).
          t114 = |{ t115 }{ t116 }|.
          DATA(t119) = |" does not exist|.
          DATA(t120) = strlen( t114 ).
          t113 = |{ t114 }{ t119 }|.
          t112 = t113.
          DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t122) = t2.
          t121 = t122->issues.
          DATA t123 TYPE REF TO zcl_lnt_issue.
          DATA(t124) = t2.
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t126) = t1.
          t125 = t126->get_first_token( ).
          DATA(t127) = t112.
          DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t128.
          t123 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t124 i_token = t125 i_message_26cb = t127 i_fix = t128 ).
          APPEND t123 TO t121->items.
          RETURN.
        ENDIF.
        DATA t129 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA t131 TYPE REF TO zcl_lnt_abstract_type.
          DATA t132 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t134) = t40.
          t133 = t134.
          t132 = t133.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t136) = t132.
          t135 = t136->type_cba0.
          t131 = t135.
          t129 = t131.
        ELSE.
          DATA t137 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t137.
          t129 = t137.
        ENDIF.
        t33 = t129.
      ENDIF.
      DATA t138 TYPE abap_bool.
      DATA t139 TYPE abap_bool.
      DATA t140 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t141) = t10.
      t140 = t141->target_type.
      t139 = xsdbool( t140 IS BOUND ).
      t138 = t139.
      IF t139 = abap_true.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = VALUE abap_bool( ).
        DATA t144 TYPE REF TO zcl_lnt_type_utils.
        DATA t145 TYPE REF TO zcl_lnt_current_scope.
        DATA(t146) = t2.
        t145 = t146->scope.
        t144 = NEW zcl_lnt_type_utils( i_scope = t145 ).
        DATA t147 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t147.
        DATA(t148) = abap_true.
        IF t148 = abap_true.
          DATA t149 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t150) = t33.
          t149 = t150.
          t147 = t149.
        ELSE.
          DATA t151 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t151.
          t147 = t151.
        ENDIF.
        DATA t152 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t152.
        DATA(t153) = abap_true.
        IF t153 = abap_true.
          DATA t154 TYPE REF TO zcl_lnt_abstract_type.
          DATA t155 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t156) = t10.
          t155 = t156->target_type.
          t154 = t155.
          t152 = t154.
        ELSE.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t157.
          t152 = t157.
        ENDIF.
        DATA t158 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t158.
        t143 = t144->is_assignable_strict( i_source_75cf = t147 i_target_5f8a = t152 i_node = t158 ).
        DATA(t159) = abap_false.
        t142 = xsdbool( t143 = t159 ).
        t138 = t142.
      ENDIF.
      IF t138 = abap_true.
        DATA t160 TYPE string.
        DATA t161 TYPE string.
        DATA(t162) = |Method parameter type not compatible, |.
        DATA t163 TYPE string.
        DATA(t164) = t10.
        t163 = t164->name.
        DATA(t165) = strlen( t162 ).
        t161 = |{ t162 }{ t163 }|.
        t160 = t161.
        DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t167) = t2.
        t166 = t167->issues.
        DATA t168 TYPE REF TO zcl_lnt_issue.
        DATA(t169) = t2.
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t171) = t1.
        t170 = t171->get_first_token( ).
        DATA(t172) = t160.
        DATA t173 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t173.
        t168 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t169 i_token = t170 i_message_26cb = t172 i_fix = t173 ).
        APPEND t168 TO t166->items.
        RETURN.
      ENDIF.
      DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t174.
      DATA t175 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t176) = me->required_parameters.
      t175 = t176.
      DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t177.
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = t175.
      IF t179 IS INITIAL.
        t178 = abap_true.
      ENDIF.
      IF t178 = abap_true.
        DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t180.
        t177 = t180.
      ELSE.
        DATA t181 TYPE abap_bool.
        DATA t182 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t183) = t175.
        t182 = t183.
        DATA t184 TYPE string.
        DATA(t185) = t10.
        t184 = t185->name.
        t181 = t182->delete( p0 = t184 ).
        DATA(t186) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t186->has = abap_true.
        t186->value = t181.
        t177 = t186.
      ENDIF.
      t174 = t177.
    ENDLOOP.
  ENDMETHOD.

  METHOD check_exporting.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA(t4) = i_errors.
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
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_node.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = t1.
      t14 = t16.
    ELSE.
      DATA t17 TYPE REF TO zif_lnt_node.
      CLEAR t17.
      t14 = t17.
    ENDIF.
    DATA(t18) = t2.
    DATA(t19) = t3.
    t13 = me->parameter_list_s( i_node = t14 i_input_967e = t18 i_method = t19 ).
    t12 = t13.
    DATA t20 TYPE abap_bool.
    DATA(t21) = t3.
    t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_void_type ).
    IF t20 = abap_true.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zif_lnt_method_parameters.
    DATA t25 TYPE REF TO zif_lnt_method_definition.
    DATA(t26) = t3.
    t25 ?= t26.
    t24 = t25->get_parameters( ).
    t23 = t24->get_importing( ).
    t22 = t23.
    DATA(t27) = VALUE abap_bool( ).
    DATA t28 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t29) = me->required_parameters.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t28.
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    t27 = t32.
    IF t27 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t34.
      DATA(t35) = abap_true.
      IF t35 = abap_true.
        DATA t36 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t36.
        DATA(t37) = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t40.
        t39 = t40.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t42 TYPE REF TO zif_lnt_method_parameters.
        DATA t43 TYPE REF TO zif_lnt_method_definition.
        DATA(t44) = t3.
        t43 ?= t44.
        t42 = t43->get_parameters( ).
        t41 = t42->get_required_parameters( ).
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t45.
        DATA t46 TYPE REF TO object.
        CLEAR t46.
        LOOP AT t41->items INTO t46.
          t45 ?= t46.
          DATA(t47) = t39.
          DATA(t48) = VALUE string( ).
          DATA(t49) = VALUE string( ).
          DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t51) = t45.
          t50 = t51.
          DATA(t52) = VALUE string( ).
          DATA t53 TYPE string.
          DATA t54 TYPE string.
          DATA t55 TYPE REF TO zcl_lnt_abstract_token.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t57) = t50.
          t56 = t57->token.
          t55 = t56.
          DATA t58 TYPE string.
          DATA(t59) = t55.
          t58 = t59->str.
          t54 = t58.
          t53 = t54.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE string( ).
          DATA(t62) = t53.
          DATA(t63) = 0.
          DATA(t64) = 1.
          DATA(t65) = strlen( t62 ).
          IF t63 < 0.
            t63 = t63 + t65.
            IF t63 < 0.
              t63 = 0.
            ENDIF.
          ENDIF.
          IF t63 > t65 OR t64 <= 0.
            CLEAR t61.
          ELSE.
            IF t64 > t65 - t63.
              t64 = t65 - t63.
            ENDIF.
            t61 = t62+t63(t64).
          ENDIF.
          DATA(t66) = |!|.
          t60 = xsdbool( t61 = t66 ).
          IF t60 = abap_true.
            DATA(t67) = VALUE string( ).
            DATA t68 TYPE string.
            DATA(t69) = t53.
            t68 = t69.
            DATA(t70) = VALUE string( ).
            DATA(t71) = t68.
            DATA(t72) = 1.
            DATA t73 TYPE i.
            DATA(t74) = t68.
            DATA(t75) = strlen( t74 ).
            t73 = t75.
            DATA(t76) = strlen( t71 ).
            IF t72 < 0.
              t72 = t72 + t76.
              IF t72 < 0.
                t72 = 0.
              ENDIF.
            ENDIF.
            IF t72 > t76 OR t73 <= 0.
              CLEAR t70.
            ELSE.
              IF t73 > t76 - t72.
                t73 = t76 - t72.
              ENDIF.
              t70 = t71+t72(t73).
            ENDIF.
            t67 = t70.
            t53 = t67.
          ENDIF.
          DATA(t77) = t53.
          t52 = t77.
          t49 = t52.
          DATA(t78) = strlen( t49 ).
          t48 = t49.
          IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t48 TO UPPER CASE.
          ELSE.
            t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
          ENDIF.
          APPEND t48 TO t47->items.
        ENDLOOP.
        DATA(t79) = t39.
        t38 = t79.
        t36 = t37->fromarray( p0 = t38 ).
        t34 = t36.
      ELSE.
        DATA t80 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t80.
        t34 = t80.
      ENDIF.
      me->required_parameters = t34.
    ENDIF.
    DATA(t81) = t12.
    DATA t82 TYPE REF TO zcl_lnt_ilist_item_s.
    CLEAR t82.
    DATA t83 TYPE REF TO object.
    CLEAR t83.
    LOOP AT t81->items INTO t83.
      t82 ?= t83.
      DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t85.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t87) = t22.
      t86 = t87.
      DATA t88 TYPE i.
      DATA t89 TYPE i.
      DATA(t90) = t86.
      t89 = lines( t90->items ).
      t88 = t89.
      DATA t91 TYPE i.
      DATA(t92) = 0.
      t91 = t92.
      DATA t93 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t94.
      t93 = t94.
      DO.
        DATA t95 TYPE abap_bool.
        DATA(t96) = t91.
        DATA(t97) = t88.
        t95 = xsdbool( t96 < t97 ).
        IF t95 = abap_false.
          EXIT.
        ENDIF.
        DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t101) = t86.
        DATA(t102) = t91.
        DATA t103 TYPE REF TO object.
        t103 = t101->get( p0 = t102 ).
        t100 ?= t103.
        t99 = t100.
        t98 = t99.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA t107 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t108) = t98.
        t107 = t108.
        DATA(t109) = VALUE string( ).
        DATA t110 TYPE string.
        DATA t111 TYPE string.
        DATA t112 TYPE REF TO zcl_lnt_abstract_token.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t114) = t107.
        t113 = t114->token.
        t112 = t113.
        DATA t115 TYPE string.
        DATA(t116) = t112.
        t115 = t116->str.
        t111 = t115.
        t110 = t111.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = VALUE string( ).
        DATA(t119) = t110.
        DATA(t120) = 0.
        DATA(t121) = 1.
        DATA(t122) = strlen( t119 ).
        IF t120 < 0.
          t120 = t120 + t122.
          IF t120 < 0.
            t120 = 0.
          ENDIF.
        ENDIF.
        IF t120 > t122 OR t121 <= 0.
          CLEAR t118.
        ELSE.
          IF t121 > t122 - t120.
            t121 = t122 - t120.
          ENDIF.
          t118 = t119+t120(t121).
        ENDIF.
        DATA(t123) = |!|.
        t117 = xsdbool( t118 = t123 ).
        IF t117 = abap_true.
          DATA(t124) = VALUE string( ).
          DATA t125 TYPE string.
          DATA(t126) = t110.
          t125 = t126.
          DATA(t127) = VALUE string( ).
          DATA(t128) = t125.
          DATA(t129) = 1.
          DATA t130 TYPE i.
          DATA(t131) = t125.
          DATA(t132) = strlen( t131 ).
          t130 = t132.
          DATA(t133) = strlen( t128 ).
          IF t129 < 0.
            t129 = t129 + t133.
            IF t129 < 0.
              t129 = 0.
            ENDIF.
          ENDIF.
          IF t129 > t133 OR t130 <= 0.
            CLEAR t127.
          ELSE.
            IF t130 > t133 - t129.
              t130 = t133 - t129.
            ENDIF.
            t127 = t128+t129(t130).
          ENDIF.
          t124 = t127.
          t110 = t124.
        ENDIF.
        DATA(t134) = t110.
        t109 = t134.
        t106 = t109.
        DATA(t135) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        DATA t136 TYPE string.
        DATA(t137) = t82.
        t136 = t137->name.
        t104 = xsdbool( t105 = t136 ).
        IF t104 = abap_true.
          DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t138.
          DATA(t139) = abap_true.
          IF t139 = abap_true.
            DATA(t140) = t98.
            t138 = t140.
          ELSE.
            DATA t141 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t141.
            t138 = t141.
          ENDIF.
          t93 = t138.
          EXIT.
        ENDIF.
        DATA t142 TYPE i.
        DATA(t143) = t91.
        DATA(t144) = 1.
        t142 = t143 + t144.
        t91 = t142.
      ENDDO.
      DATA(t145) = t93.
      t85 = t145.
      t84 = t85.
      DATA(t146) = VALUE abap_bool( ).
      DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t148) = t84.
      t147 = t148.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      t149 = t150.
      DATA(t151) = VALUE abap_bool( ).
      DATA(t152) = t147.
      IF t152 IS INITIAL.
        t151 = abap_true.
      ENDIF.
      t146 = t151.
      IF t146 = abap_true.
        DATA t153 TYPE string.
        DATA t154 TYPE string.
        DATA t155 TYPE string.
        DATA(t156) = |Method importing parameter "|.
        DATA t157 TYPE string.
        DATA(t158) = t82.
        t157 = t158->name.
        DATA(t159) = strlen( t156 ).
        t155 = |{ t156 }{ t157 }|.
        DATA(t160) = |" does not exist|.
        DATA(t161) = strlen( t155 ).
        t154 = |{ t155 }{ t160 }|.
        t153 = t154.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t163) = t2.
        t162 = t163->issues.
        DATA t164 TYPE REF TO zcl_lnt_issue.
        DATA(t165) = t2.
        DATA t166 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t167) = t1.
        t166 = t167->get_first_token( ).
        DATA(t168) = t153.
        DATA t169 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t169.
        t164 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t165 i_token = t166 i_message_26cb = t168 i_fix = t169 ).
        APPEND t164 TO t162->items.
        CONTINUE.
      ELSE.
        DATA(t170) = VALUE abap_bool( ).
        DATA(t171) = VALUE abap_bool( ).
        DATA t172 TYPE REF TO zcl_lnt_type_utils.
        DATA t173 TYPE REF TO zcl_lnt_current_scope.
        DATA(t174) = t2.
        t173 = t174->scope.
        t172 = NEW zcl_lnt_type_utils( i_scope = t173 ).
        DATA t175 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t176) = t82.
        t175 = t176->source_type.
        DATA t177 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t177.
        DATA(t178) = abap_true.
        IF t178 = abap_true.
          DATA t179 TYPE REF TO zcl_lnt_abstract_type.
          DATA t180 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t181 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t182) = t84.
          t181 = t182.
          t180 = t181.
          DATA t183 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t184) = t180.
          t183 = t184->type_cba0.
          t179 = t183.
          t177 = t179.
        ELSE.
          DATA t185 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t185.
          t177 = t185.
        ENDIF.
        DATA t186 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t186.
        DATA(t187) = abap_true.
        IF t187 = abap_true.
          DATA t188 TYPE REF TO zcl_lnt_expression_node.
          DATA(t189) = t82.
          t188 = t189->source.
          t186 = t188.
        ELSE.
          DATA t190 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t190.
          t186 = t190.
        ENDIF.
        t171 = t172->is_assignable_strict( i_source_75cf = t175 i_target_5f8a = t177 i_node = t186 ).
        DATA(t191) = abap_false.
        t170 = xsdbool( t171 = t191 ).
        IF t170 = abap_true.
          DATA t192 TYPE string.
          DATA t193 TYPE string.
          DATA(t194) = |Method parameter type not compatible, |.
          DATA t195 TYPE string.
          DATA(t196) = t82.
          t195 = t196->name.
          DATA(t197) = strlen( t194 ).
          t193 = |{ t194 }{ t195 }|.
          t192 = t193.
          DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t199) = t2.
          t198 = t199->issues.
          DATA t200 TYPE REF TO zcl_lnt_issue.
          DATA(t201) = t2.
          DATA t202 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t203) = t1.
          t202 = t203->get_first_token( ).
          DATA(t204) = t192.
          DATA t205 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t205.
          t200 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t201 i_token = t202 i_message_26cb = t204 i_fix = t205 ).
          APPEND t200 TO t198->items.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t206 TYPE abap_bool.
      DATA t207 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t208) = me->required_parameters.
      t207 = t208.
      DATA t209 TYPE string.
      DATA(t210) = t82.
      t209 = t210->name.
      t206 = t207->delete( p0 = t209 ).
    ENDLOOP.
    DATA t211 TYPE abap_bool.
    DATA t212 TYPE abap_bool.
    DATA(t213) = t4.
    t212 = t213->value.
    DATA(t214) = abap_true.
    t211 = xsdbool( t212 = t214 ).
    IF t211 = abap_true.
      DATA(t215) = t1.
      DATA(t216) = t2.
      me->report_errors( i_node = t215 i_input_967e = t216 ).
    ENDIF.
  ENDMETHOD.

  METHOD report_errors.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t7) = me->required_parameters.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t14) = t6.
      t13 = t14.
      t12 = t13->values( ).
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA t16 TYPE abap_bool.
    DATA(t17) = t4.
    t16 = xsdbool( t17 IS BOUND ).
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t19) = t4.
      t18 = t19.
      t15 = t18.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t20.
      t15 = t20.
    ENDIF.
    t3 = t15.
    DATA(t21) = VALUE string( ).
    LOOP AT t3->items INTO t21.
      DATA t22 TYPE string.
      DATA t23 TYPE string.
      DATA t24 TYPE string.
      DATA(t25) = |method parameter "|.
      DATA(t26) = t21.
      DATA(t27) = strlen( t25 ).
      t24 = |{ t25 }{ t26 }|.
      DATA(t28) = |" must be supplied|.
      DATA(t29) = strlen( t24 ).
      t23 = |{ t24 }{ t28 }|.
      t22 = t23.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t2.
      t30 = t31->issues.
      DATA t32 TYPE REF TO zcl_lnt_issue.
      DATA(t33) = t2.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t35) = t1.
      t34 = t35->get_first_token( ).
      DATA(t36) = t22.
      DATA t37 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t37.
      t32 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t33 i_token = t34 i_message_26cb = t36 i_fix = t37 ).
      APPEND t32 TO t30->items.
    ENDLOOP.
  ENDMETHOD.

  METHOD parameter_list_s.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ELSE.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE REF TO object.
      DATA t15 TYPE REF TO zif_lnt_node.
      DATA(t16) = t1.
      t15 = t16.
      t14 = t15->get_db65( ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_parameter_list_s ).
      t12 = xsdbool( t13 = abap_false ).
      IF t12 = abap_true.
        DATA t17 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t17.
        DATA t18 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t18.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        DATA(t20) = abap_true.
        IF t20 = abap_true.
          DATA(t21) = |parameterListS, unexpected node|.
          DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t22->has = abap_true.
          t22->value = t21.
          t19 = t22.
        ELSE.
          DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t23.
          t19 = t23.
        ENDIF.
        t18 = NEW zcx_lnt_assert_error( i_message_26cb = t19 ).
        t17 = NEW #( ).
        t17->payload = t18.
        RAISE EXCEPTION t17.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t27) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zif_lnt_node.
    DATA(t30) = t1.
    t29 = t30.
    t28 = t29->get_children( ).
    DATA t31 TYPE REF TO zif_lnt_node.
    CLEAR t31.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
    LOOP AT t28->items INTO t32.
      t31 ?= t32.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE REF TO object.
      DATA(t37) = t31.
      t36 = t37->get_db65( ).
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_parameter_s ).
      t34 = xsdbool( t35 = abap_false ).
      t33 = t34.
      IF t34 = abap_false.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE abap_bool.
        DATA(t40) = t31.
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_expression_node ).
        t38 = xsdbool( t39 = abap_false ).
        t33 = t38.
      ENDIF.
      IF t33 = abap_true.
        DATA t41 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t41.
        DATA t42 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
          DATA(t45) = |parameterListS, unexpected node, child|.
          DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t46->has = abap_true.
          t46->value = t45.
          t43 = t46.
        ELSE.
          DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t47.
          t43 = t47.
        ENDIF.
        t42 = NEW zcx_lnt_assert_error( i_message_26cb = t43 ).
        t41 = NEW #( ).
        t41->payload = t42.
        RAISE EXCEPTION t41.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_expression_node.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      DATA t50 TYPE REF TO zcl_lnt_expression_node.
      DATA(t51) = t31.
      DATA t52 TYPE REF TO object.
      t52 = t51.
      t50 ?= t52.
      DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
      t49 = t50->find_direct_expression( i_type_9913 = t53 ).
      t48 = t49.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA(t61) = t48.
      t60 = t61.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t60.
      IF t64 IS INITIAL.
        t63 = abap_true.
      ENDIF.
      IF t63 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t65.
        t62 = t65.
      ELSE.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        DATA(t68) = t60.
        t67 = t68.
        t66 = t67->get_first_token( ).
        t62 = t66.
      ENDIF.
      t59 = t62.
      t58 = t59.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t58.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ENDIF.
      IF t70 = abap_true.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t69 = t72.
      ELSE.
        DATA t73 TYPE string.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t76) = t58.
        t75 = t76.
        t74 = t75.
        DATA t77 TYPE string.
        DATA(t78) = t74.
        t77 = t78->str.
        t73 = t77.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t73.
        t69 = t79.
      ENDIF.
      t57 = t69.
      t56 = t57.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t56.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ELSEIF t82->has = abap_false.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t80 = t83.
      ELSE.
        DATA t84 TYPE string.
        DATA t85 TYPE string.
        DATA(t86) = t56.
        t85 = t86->value.
        DATA(t87) = strlen( t85 ).
        t84 = t85.
        IF t84 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t84 TO UPPER CASE.
        ELSE.
          t84 = zlnt_runtime_uppe_91169605024d=>full( t84 ).
        ENDIF.
        DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t88->has = abap_true.
        t88->value = t84.
        t80 = t88.
      ENDIF.
      t55 = t80.
      t54 = t55.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = VALUE abap_bool( ).
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t92) = t54.
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      t93 = t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = t91.
      IF t96 IS INITIAL.
        t95 = abap_true.
      ELSEIF t96->has = abap_false.
        t95 = abap_true.
      ENDIF.
      t90 = t95.
      t89 = t90.
      IF t90 = abap_false.
        DATA(t97) = VALUE abap_bool( ).
        DATA t98 TYPE REF TO zcl_lnt_expression_node.
        DATA(t99) = t48.
        t98 = t99.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        t100 = t101.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = t98.
        IF t103 IS INITIAL.
          t102 = abap_true.
        ENDIF.
        t97 = t102.
        t89 = t97.
      ENDIF.
      IF t89 = abap_true.
        DATA t104 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t104.
        DATA t105 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA(t108) = |parameterListS, no name determined|.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t108.
          t106 = t109.
        ELSE.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          t106 = t110.
        ENDIF.
        t105 = NEW zcx_lnt_assert_error( i_message_26cb = t106 ).
        t104 = NEW #( ).
        t104->payload = t105.
        RAISE EXCEPTION t104.
      ENDIF.
      DATA t111 TYPE abap_bool.
      DATA(t112) = t26.
      DATA t113 TYPE string.
      DATA(t114) = t54.
      t113 = t114->value.
      t111 = t112->has( p0 = t113 ).
      IF t111 = abap_true.
        DATA t115 TYPE string.
        DATA t116 TYPE string.
        DATA t117 TYPE string.
        DATA(t118) = |Method parameter "|.
        DATA t119 TYPE string.
        DATA(t120) = t54.
        t119 = t120->value.
        DATA(t121) = strlen( t118 ).
        t117 = |{ t118 }{ t119 }|.
        DATA(t122) = |" is supplied more than once|.
        DATA(t123) = strlen( t117 ).
        t116 = |{ t117 }{ t122 }|.
        t115 = t116.
        DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t125) = t2.
        t124 = t125->issues.
        DATA t126 TYPE REF TO zcl_lnt_issue.
        DATA(t127) = t2.
        DATA t128 TYPE REF TO zcl_lnt_abstract_token.
        DATA t129 TYPE REF TO zcl_lnt_expression_node.
        DATA(t130) = t48.
        t129 = t130.
        t128 = t129->get_first_token( ).
        DATA(t131) = t115.
        DATA t132 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t132.
        t126 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t127 i_token = t128 i_message_26cb = t131 i_fix = t132 ).
        APPEND t126 TO t124->items.
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t134) = t26.
      DATA t135 TYPE string.
      DATA(t136) = t54.
      t135 = t136->value.
      t133 = t134->add( p0 = t135 ).
      DATA t137 TYPE REF TO zcl_lnt_expression_node.
      DATA t138 TYPE REF TO zcl_lnt_expression_node.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      DATA(t140) = t31.
      DATA t141 TYPE REF TO object.
      t141 = t140.
      t139 ?= t141.
      DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
      t138 = t139->find_direct_expression( i_type_9913 = t142 ).
      t137 = t138.
      DATA(t143) = VALUE abap_bool( ).
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      DATA(t145) = t137.
      t144 = t145.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      t146 = t147.
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = t144.
      IF t149 IS INITIAL.
        t148 = abap_true.
      ENDIF.
      t143 = t148.
      IF t143 = abap_true.
        DATA t150 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t150.
        DATA t151 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t151.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA(t153) = abap_true.
        IF t153 = abap_true.
          DATA(t154) = |parameterListS, no source found|.
          DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t155->has = abap_true.
          t155->value = t154.
          t152 = t155.
        ELSE.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          t152 = t156.
        ENDIF.
        t151 = NEW zcx_lnt_assert_error( i_message_26cb = t152 ).
        t150 = NEW #( ).
        t150->payload = t151.
        RAISE EXCEPTION t150.
      ENDIF.
      DATA t157 TYPE REF TO zcl_lnt_abstract_type.
      DATA t158 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t158.
      t157 = t158.
      DATA t159 TYPE abap_bool.
      DATA t160 TYPE abap_bool.
      DATA(t161) = t3.
      t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_void_type ).
      t159 = xsdbool( t160 = abap_false ).
      IF t159 = abap_true.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t163 TYPE REF TO zif_lnt_method_parameters.
        DATA t164 TYPE REF TO zif_lnt_method_definition.
        DATA(t165) = t3.
        t164 ?= t165.
        t163 = t164->get_parameters( ).
        t162 = t163->get_importing( ).
        DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t166.
        DATA t167 TYPE REF TO object.
        CLEAR t167.
        LOOP AT t162->items INTO t167.
          t166 ?= t167.
          DATA(t168) = VALUE abap_bool( ).
          DATA(t169) = VALUE string( ).
          DATA(t170) = VALUE string( ).
          DATA t171 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t172) = t166.
          t171 = t172.
          DATA(t173) = VALUE string( ).
          DATA t174 TYPE string.
          DATA t175 TYPE string.
          DATA t176 TYPE REF TO zcl_lnt_abstract_token.
          DATA t177 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t178) = t171.
          t177 = t178->token.
          t176 = t177.
          DATA t179 TYPE string.
          DATA(t180) = t176.
          t179 = t180->str.
          t175 = t179.
          t174 = t175.
          DATA(t181) = VALUE abap_bool( ).
          DATA(t182) = VALUE string( ).
          DATA(t183) = t174.
          DATA(t184) = 0.
          DATA(t185) = 1.
          DATA(t186) = strlen( t183 ).
          IF t184 < 0.
            t184 = t184 + t186.
            IF t184 < 0.
              t184 = 0.
            ENDIF.
          ENDIF.
          IF t184 > t186 OR t185 <= 0.
            CLEAR t182.
          ELSE.
            IF t185 > t186 - t184.
              t185 = t186 - t184.
            ENDIF.
            t182 = t183+t184(t185).
          ENDIF.
          DATA(t187) = |!|.
          t181 = xsdbool( t182 = t187 ).
          IF t181 = abap_true.
            DATA(t188) = VALUE string( ).
            DATA t189 TYPE string.
            DATA(t190) = t174.
            t189 = t190.
            DATA(t191) = VALUE string( ).
            DATA(t192) = t189.
            DATA(t193) = 1.
            DATA t194 TYPE i.
            DATA(t195) = t189.
            DATA(t196) = strlen( t195 ).
            t194 = t196.
            DATA(t197) = strlen( t192 ).
            IF t193 < 0.
              t193 = t193 + t197.
              IF t193 < 0.
                t193 = 0.
              ENDIF.
            ENDIF.
            IF t193 > t197 OR t194 <= 0.
              CLEAR t191.
            ELSE.
              IF t194 > t197 - t193.
                t194 = t197 - t193.
              ENDIF.
              t191 = t192+t193(t194).
            ENDIF.
            t188 = t191.
            t174 = t188.
          ENDIF.
          DATA(t198) = t174.
          t173 = t198.
          t170 = t173.
          DATA(t199) = strlen( t170 ).
          t169 = t170.
          IF t169 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t169 TO UPPER CASE.
          ELSE.
            t169 = zlnt_runtime_uppe_91169605024d=>full( t169 ).
          ENDIF.
          DATA t200 TYPE string.
          DATA(t201) = t54.
          t200 = t201->value.
          t168 = xsdbool( t169 = t200 ).
          IF t168 = abap_true.
            DATA t202 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t202.
            DATA(t203) = abap_true.
            IF t203 = abap_true.
              DATA t204 TYPE REF TO zcl_lnt_abstract_type.
              DATA t205 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t206) = t166.
              t205 = t206.
              DATA t207 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t208) = t205.
              t207 = t208->type_cba0.
              t204 = t207.
              t202 = t204.
            ELSE.
              DATA t209 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t209.
              t202 = t209.
            ENDIF.
            t157 = t202.
            EXIT.
          ENDIF.
        ENDLOOP.
      ELSE.
        DATA t210 TYPE REF TO zcl_lnt_void_type.
        DATA(t211) = t3.
        DATA t212 TYPE REF TO object.
        t212 = t211.
        t210 ?= t212.
        t157 = t210.
      ENDIF.
      DATA t213 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t213.
      DATA t214 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t214.
      DATA t215 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t215.
      DATA(t216) = abap_true.
      IF t216 = abap_true.
        DATA t217 TYPE REF TO zcl_lnt_expression_node.
        DATA(t218) = t137.
        t217 = t218.
        t215 = t217.
      ELSE.
        DATA t219 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t219.
        t215 = t219.
      ENDIF.
      DATA(t220) = t2.
      DATA(t221) = t157.
      DATA t222 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t224.
      t214 = zcl_lnt_sy_source=>run_syntax( i_node = t215 i_input_967e = t220 i_target_type = t221 i_write_reference = t222 i_allow_generic_deference = t223 i_read_reference = t224 ).
      t213 = t214.
      DATA t225 TYPE abap_bool.
      DATA t226 TYPE REF TO zcl_lnt_expression_node.
      DATA(t227) = t137.
      t226 = t227.
      DATA(t228) = t213.
      DATA(t229) = t3.
      DATA(t230) = t2.
      t225 = zcl_lnt_chck_offst_lngth_mdl=>check_offset_length( i_source_75cf = t226 i_source_type = t228 i_method = t229 i_input_967e = t230 ).
      DATA(t231) = VALUE abap_bool( ).
      DATA t232 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t233) = t213.
      t232 = t233.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t235.
      t234 = t235.
      DATA(t236) = VALUE abap_bool( ).
      DATA(t237) = t232.
      IF t237 IS INITIAL.
        t236 = abap_true.
      ENDIF.
      t231 = t236.
      IF t231 = abap_true.
        DATA t238 TYPE abap_bool.
        DATA(t239) = t3.
        t238 = xsdbool( t239 IS BOUND AND t239 IS INSTANCE OF zcl_lnt_void_type ).
        IF t238 = abap_true.
          DATA t240 TYPE REF TO zcl_lnt_void_type.
          DATA(t241) = t3.
          DATA t242 TYPE REF TO object.
          t242 = t241.
          t240 ?= t242.
          t213 = t240.
        ELSE.
          DATA t243 TYPE string.
          DATA t244 TYPE string.
          DATA t245 TYPE string.
          DATA(t246) = |No source type determined for parameter |.
          DATA t247 TYPE string.
          DATA(t248) = t54.
          t247 = t248->value.
          DATA(t249) = strlen( t246 ).
          t245 = |{ t246 }{ t247 }|.
          DATA(t250) = | input|.
          DATA(t251) = strlen( t245 ).
          t244 = |{ t245 }{ t250 }|.
          t243 = t244.
          DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t253) = t2.
          t252 = t253->issues.
          DATA t254 TYPE REF TO zcl_lnt_issue.
          DATA(t255) = t2.
          DATA t256 TYPE REF TO zcl_lnt_abstract_token.
          DATA t257 TYPE REF TO zif_lnt_node.
          DATA(t258) = t1.
          t257 = t258.
          t256 = t257->get_first_token( ).
          DATA(t259) = t243.
          DATA t260 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t260.
          t254 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t255 i_token = t256 i_message_26cb = t259 i_fix = t260 ).
          APPEND t254 TO t252->items.
          DATA t261 TYPE REF TO zcl_lnt_void_type.
          CLEAR t261.
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          DATA(t263) = abap_true.
          IF t263 = abap_true.
            DATA(t264) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t265->has = abap_true.
            t265->value = t264.
            t262 = t265.
          ELSE.
            DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t266.
            t262 = t266.
          ENDIF.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          t261 = zcl_lnt_void_type=>get_db65( i_voided = t262 i_qualified_name = t267 ).
          t213 = t261.
        ENDIF.
      ENDIF.
      DATA(t268) = t24.
      DATA t269 TYPE REF TO zcl_lnt_ilist_item_s.
      CLEAR t269.
      DATA t270 TYPE string.
      DATA(t271) = t54.
      t270 = t271->value.
      DATA t272 TYPE REF TO zcl_lnt_expression_node.
      DATA(t273) = t137.
      t272 = t273.
      DATA t274 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t274.
      DATA(t275) = abap_true.
      IF t275 = abap_true.
        DATA t276 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t277) = t213.
        t276 = t277.
        t274 = t276.
      ELSE.
        DATA t278 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t278.
        t274 = t278.
      ENDIF.
      t269 = NEW zcl_lnt_ilist_item_s( i_name = t270 i_source_75cf = t272 i_source_type = t274 ).
      APPEND t269 TO t268->items.
    ENDLOOP.
    DATA(t279) = t24.
    result = t279.

  ENDMETHOD.

  METHOD parameter_list_t.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_node.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ELSE.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO object.
      DATA t14 TYPE REF TO zif_lnt_node.
      DATA(t15) = t1.
      t14 = t15.
      t13 = t14->get_db65( ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_parameter_list_t ).
      t11 = xsdbool( t12 = abap_false ).
      IF t11 = abap_true.
        DATA t16 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t16.
        DATA t17 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA(t20) = |parameterListT, unexpected node|.
          DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t21->has = abap_true.
          t21->value = t20.
          t18 = t21.
        ELSE.
          DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t22.
          t18 = t22.
        ENDIF.
        t17 = NEW zcx_lnt_assert_error( i_message_26cb = t18 ).
        t16 = NEW #( ).
        t16->payload = t17.
        RAISE EXCEPTION t16.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t26) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zif_lnt_node.
    DATA(t29) = t1.
    t28 = t29.
    t27 = t28->get_children( ).
    DATA t30 TYPE REF TO zif_lnt_node.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    LOOP AT t27->items INTO t31.
      t30 ?= t31.
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE REF TO object.
      DATA(t36) = t30.
      t35 = t36->get_db65( ).
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_parameter_t ).
      t33 = xsdbool( t34 = abap_false ).
      t32 = t33.
      IF t33 = abap_false.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE abap_bool.
        DATA(t39) = t30.
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_expression_node ).
        t37 = xsdbool( t38 = abap_false ).
        t32 = t37.
      ENDIF.
      IF t32 = abap_true.
        DATA t40 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t40.
        DATA t41 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA(t43) = abap_true.
        IF t43 = abap_true.
          DATA(t44) = |parameterListT, unexpected node, child|.
          DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t45->has = abap_true.
          t45->value = t44.
          t42 = t45.
        ELSE.
          DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t46.
          t42 = t46.
        ENDIF.
        t41 = NEW zcx_lnt_assert_error( i_message_26cb = t42 ).
        t40 = NEW #( ).
        t40->payload = t41.
        RAISE EXCEPTION t40.
      ENDIF.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      DATA t48 TYPE REF TO zcl_lnt_expression_node.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      DATA(t50) = t30.
      DATA t51 TYPE REF TO object.
      t51 = t50.
      t49 ?= t51.
      DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
      t48 = t49->find_direct_expression( i_type_9913 = t52 ).
      t47 = t48.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      DATA(t60) = t47.
      t59 = t60.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t59.
      IF t63 IS INITIAL.
        t62 = abap_true.
      ENDIF.
      IF t62 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t64.
        t61 = t64.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        DATA(t67) = t59.
        t66 = t67.
        t65 = t66->get_first_token( ).
        t61 = t65.
      ENDIF.
      t58 = t61.
      t57 = t58.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = t57.
      IF t70 IS INITIAL.
        t69 = abap_true.
      ENDIF.
      IF t69 = abap_true.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t68 = t71.
      ELSE.
        DATA t72 TYPE string.
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t75) = t57.
        t74 = t75.
        t73 = t74.
        DATA t76 TYPE string.
        DATA(t77) = t73.
        t76 = t77->str.
        t72 = t76.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t72.
        t68 = t78.
      ENDIF.
      t56 = t68.
      t55 = t56.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = t55.
      IF t81 IS INITIAL.
        t80 = abap_true.
      ELSEIF t81->has = abap_false.
        t80 = abap_true.
      ENDIF.
      IF t80 = abap_true.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t79 = t82.
      ELSE.
        DATA t83 TYPE string.
        DATA t84 TYPE string.
        DATA(t85) = t55.
        t84 = t85->value.
        DATA(t86) = strlen( t84 ).
        t83 = t84.
        IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t83 TO UPPER CASE.
        ELSE.
          t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
        ENDIF.
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t83.
        t79 = t87.
      ENDIF.
      t54 = t79.
      t53 = t54.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t91) = t53.
      t90 = t91.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      t92 = t93.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t90.
      IF t95 IS INITIAL.
        t94 = abap_true.
      ELSEIF t95->has = abap_false.
        t94 = abap_true.
      ENDIF.
      t89 = t94.
      t88 = t89.
      IF t89 = abap_false.
        DATA(t96) = VALUE abap_bool( ).
        DATA t97 TYPE REF TO zcl_lnt_expression_node.
        DATA(t98) = t47.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        t99 = t100.
        DATA(t101) = VALUE abap_bool( ).
        DATA(t102) = t97.
        IF t102 IS INITIAL.
          t101 = abap_true.
        ENDIF.
        t96 = t101.
        t88 = t96.
      ENDIF.
      IF t88 = abap_true.
        DATA t103 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t103.
        DATA t104 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t106) = abap_true.
        IF t106 = abap_true.
          DATA(t107) = |parameterListT, no name determined|.
          DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t108->has = abap_true.
          t108->value = t107.
          t105 = t108.
        ELSE.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          t105 = t109.
        ENDIF.
        t104 = NEW zcx_lnt_assert_error( i_message_26cb = t105 ).
        t103 = NEW #( ).
        t103->payload = t104.
        RAISE EXCEPTION t103.
      ENDIF.
      DATA t110 TYPE abap_bool.
      DATA(t111) = t25.
      DATA t112 TYPE string.
      DATA(t113) = t53.
      t112 = t113->value.
      t110 = t111->has( p0 = t112 ).
      IF t110 = abap_true.
        DATA t114 TYPE string.
        DATA t115 TYPE string.
        DATA t116 TYPE string.
        DATA(t117) = |Method parameter "|.
        DATA t118 TYPE string.
        DATA(t119) = t53.
        t118 = t119->value.
        DATA(t120) = strlen( t117 ).
        t116 = |{ t117 }{ t118 }|.
        DATA(t121) = |" is supplied more than once|.
        DATA(t122) = strlen( t116 ).
        t115 = |{ t116 }{ t121 }|.
        t114 = t115.
        DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t124) = t2.
        t123 = t124->issues.
        DATA t125 TYPE REF TO zcl_lnt_issue.
        DATA(t126) = t2.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        DATA t128 TYPE REF TO zcl_lnt_expression_node.
        DATA(t129) = t47.
        t128 = t129.
        t127 = t128->get_first_token( ).
        DATA(t130) = t114.
        DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t131.
        t125 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t126 i_token = t127 i_message_26cb = t130 i_fix = t131 ).
        APPEND t125 TO t123->items.
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t133) = t25.
      DATA t134 TYPE string.
      DATA(t135) = t53.
      t134 = t135->value.
      t132 = t133->add( p0 = t134 ).
      DATA t136 TYPE REF TO zcl_lnt_expression_node.
      DATA t137 TYPE REF TO zcl_lnt_expression_node.
      DATA t138 TYPE REF TO zcl_lnt_expression_node.
      DATA(t139) = t30.
      DATA t140 TYPE REF TO object.
      t140 = t139.
      t138 ?= t140.
      DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
      t137 = t138->find_direct_expression( i_type_9913 = t141 ).
      t136 = t137.
      DATA(t142) = VALUE abap_bool( ).
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      DATA(t144) = t136.
      t143 = t144.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      t145 = t146.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = t143.
      IF t148 IS INITIAL.
        t147 = abap_true.
      ENDIF.
      t142 = t147.
      IF t142 = abap_true.
        DATA t149 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
        CLEAR t149.
        DATA t150 TYPE REF TO zcx_lnt_assert_error.
        CLEAR t150.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA(t152) = abap_true.
        IF t152 = abap_true.
          DATA(t153) = |parameterListT, no target found|.
          DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t154->has = abap_true.
          t154->value = t153.
          t151 = t154.
        ELSE.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t151 = t155.
        ENDIF.
        t150 = NEW zcx_lnt_assert_error( i_message_26cb = t151 ).
        t149 = NEW #( ).
        t149->payload = t150.
        RAISE EXCEPTION t149.
      ENDIF.
      DATA t156 TYPE REF TO zcl_lnt_abstract_type.
      DATA t157 TYPE REF TO zcl_lnt_abstract_type.
      DATA t158 TYPE REF TO zcl_lnt_expression_node.
      DATA(t159) = t136.
      t158 = t159.
      DATA(t160) = t2.
      t157 = zcl_lnt_sy_target=>run_syntax( i_node = t158 i_input_967e = t160 ).
      t156 = t157.
      DATA(t161) = t23.
      DATA t162 TYPE REF TO zcl_lnt_ilist_item_t.
      DATA t163 TYPE string.
      DATA(t164) = t53.
      t163 = t164->value.
      DATA t165 TYPE REF TO zcl_lnt_expression_node.
      DATA(t166) = t136.
      t165 = t166.
      DATA(t167) = t156.
      t162 = NEW zcl_lnt_ilist_item_t( i_name = t163 i_target_5f8a = t165 i_target_type = t167 ).
      APPEND t162 TO t161->items.
    ENDLOOP.
    DATA(t168) = t23.
    result = t168.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d803_3fbd8bf96170.
  ENDMETHOD.
ENDCLASS.
