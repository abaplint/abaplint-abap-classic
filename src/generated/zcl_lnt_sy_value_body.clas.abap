* TS: src/abap/5_syntax/expressions/value_body.ts:11:1 ValueBody
CLASS zcl_lnt_sy_value_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS inserts_using_table_key IMPORTING i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS character_or_hex_length IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_164098b6.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_value_body IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_expression_node( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA(t11) = CAST zcl_lnt_abstract_type( t3 ).
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA(t13) = abap_false.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = CAST zcl_lnt_expression_node( t1 ).
    t16 = t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9 ).
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_expression_node( t14 ).
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t25) = CAST zcl_lnt_expression_node( t14 ).
        t24 = t25.
        t22 = t24.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      DATA(t27) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      t21 = zcl_lnt_sy_let=>run_syntax( i_node = t22 i_input_967e = t27 i_skip_scope = t28 ).
      t12 = t21.
    ENDIF.
    DATA t29 TYPE int8.
    DATA(t30) = CONV int8( 0 ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA(t35) = CAST zcl_lnt_expression_node( t1 ).
    t34 = t35.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d ).
    t33 = t34->find_direct_expressions( i_type_9913 = t36 ).
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE abap_bool.
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t41.
      t37 = t41.
    ENDIF.
    t31 = t37.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t42.
    DATA t43 TYPE REF TO object.
    CLEAR t43.
    LOOP AT t31->items INTO t43.
      t42 ?= t43.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t46) = CAST zcl_lnt_expression_node( t42 ).
      DATA(t47) = CAST zcl_lnt_syntax_input( t2 ).
      t45 = zcl_lnt_sy_for=>run_syntax( i_node = t46 i_input_967e = t47 ).
      t44 = t45.
      DATA t48 TYPE abap_bool.
      DATA(t49) = t44.
      DATA(t50) = abap_true.
      t48 = xsdbool( t49 = t50 ).
      IF t48 = abap_true.
        DATA t51 TYPE int8.
        DATA(t52) = t29.
        DATA(t53) = CONV int8( 1 ).
        t51 = t52 + t53.
        IF t51 < range_int8_bound_min OR t51 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t29 = t51.
      ENDIF.
    ENDLOOP.
    DATA t54 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t55) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t54 = t55.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    DATA t59 TYPE REF TO zcl_lnt_expression_node.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    DATA(t61) = CAST zcl_lnt_expression_node( t1 ).
    t60 = t61.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d338_8158a9a51d17 ).
    t59 = t60->find_direct_expression( i_type_9913 = t62 ).
    t58 = t59.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    t63 = t64.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = CAST zcl_lnt_expression_node( t58 ).
    IF t67 IS INITIAL.
      t66 = abap_true.
    ENDIF.
    t65 = xsdbool( t66 = abap_false ).
    t57 = t65.
    t56 = t57.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zcl_lnt_abstract_node.
    DATA t71 TYPE REF TO zcl_lnt_expression_node.
    DATA(t72) = CAST zcl_lnt_expression_node( t1 ).
    t71 = t72.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t74) = CAST zcl_lnt_abstract_node( t70 ).
    t73 = t74->children.
    t69 = t73.
    t68 ?= t69.
    DATA t75 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t75.
    DATA t76 TYPE REF TO object.
    CLEAR t76.
    LOOP AT t68->items INTO t76.
      t75 ?= t76.
      DATA t77 TYPE abap_bool.
      DATA t78 TYPE abap_bool.
      DATA(t79) = CAST zif_lnt_union_4cf1d054( t75 ).
      t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_expression_node ).
      t77 = xsdbool( t78 = abap_false ).
      IF t77 = abap_true.
        CONTINUE.
      ELSE.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE REF TO zif_lnt_statement_runnable.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA(t83) = CAST zif_lnt_union_4cf1d054( t75 ).
        DATA t84 TYPE REF TO object.
        t84 = t83.
        t82 ?= t84.
        t81 = t82->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_st_field_assignment ).
        IF t80 = abap_true.
          DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t85.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t86.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_expression_node.
          DATA t90 TYPE REF TO zcl_lnt_expression_node.
          DATA t91 TYPE REF TO zcl_lnt_expression_node.
          DATA(t92) = CAST zif_lnt_union_4cf1d054( t75 ).
          DATA t93 TYPE REF TO object.
          t93 = t92.
          t91 ?= t93.
          DATA(t94) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
          t90 = t91->find_direct_expression( i_type_9913 = t94 ).
          t89 = t90.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = VALUE abap_bool( ).
          DATA(t97) = CAST zcl_lnt_expression_node( t89 ).
          IF t97 IS INITIAL.
            t96 = abap_true.
          ENDIF.
          IF t96 = abap_true.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            t95 = t98.
          ELSE.
            DATA t99 TYPE string.
            DATA t100 TYPE REF TO zcl_lnt_expression_node.
            DATA(t101) = CAST zcl_lnt_expression_node( t89 ).
            t100 = t101.
            t99 = t100->concat_tokens( ).
            DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t102->has = abap_true.
            t102->value = t99.
            t95 = t102.
          ENDIF.
          t88 = t95.
          t87 = t88.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          DATA(t104) = VALUE abap_bool( ).
          DATA(t105) = CAST zlnt_runtime_opti_4ba3bdccd169( t87 ).
          IF t105 IS INITIAL.
            t104 = abap_true.
          ELSEIF t105->has = abap_false.
            t104 = abap_true.
          ENDIF.
          IF t104 = abap_true.
            DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t106.
            t103 = t106.
          ELSE.
            DATA t107 TYPE string.
            DATA t108 TYPE string.
            DATA(t109) = CAST zlnt_runtime_opti_4ba3bdccd169( t87 ).
            t108 = t109->value.
            DATA(t110) = strlen( t108 ).
            t107 = t108.
            IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t107 TO UPPER CASE.
            ELSE.
              t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
            ENDIF.
            DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t111->has = abap_true.
            t111->value = t107.
            t103 = t111.
          ENDIF.
          t86 = t103.
          t85 = t86.
          DATA(t112) = VALUE abap_bool( ).
          DATA(t113) = VALUE abap_bool( ).
          DATA(t114) = VALUE abap_bool( ).
          DATA(t115) = CAST zlnt_runtime_opti_4ba3bdccd169( t85 ).
          IF t115 IS BOUND.
            IF t115->has = abap_true.
              t114 = xsdbool( strlen( t115->value ) > 0 ).
            ENDIF.
          ENDIF.
          t113 = t114.
          IF t114 = abap_true.
            DATA t116 TYPE abap_bool.
            DATA(t117) = t56.
            DATA(t118) = abap_false.
            t116 = xsdbool( t117 = t118 ).
            t113 = t116.
          ENDIF.
          t112 = t113.
          IF t113 = abap_true.
            DATA t119 TYPE abap_bool.
            DATA(t120) = CAST zlnt_runtime_set__1827558fd4c7( t54 ).
            DATA t121 TYPE string.
            DATA(t122) = CAST zlnt_runtime_opti_4ba3bdccd169( t85 ).
            t121 = t122->value.
            t119 = t120->has( p0 = t121 ).
            t112 = t119.
          ENDIF.
          IF t112 = abap_true.
            DATA t123 TYPE string.
            DATA(t124) = |Duplicate field assignment|.
            t123 = t124.
            DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t126) = CAST zcl_lnt_syntax_input( t2 ).
            t125 = t126->issues.
            DATA t127 TYPE REF TO zcl_lnt_issue.
            DATA(t128) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t129 TYPE REF TO zcl_lnt_abstract_token.
            DATA t130 TYPE REF TO zcl_lnt_expression_node.
            DATA(t131) = CAST zif_lnt_union_4cf1d054( t75 ).
            DATA t132 TYPE REF TO object.
            t132 = t131.
            t130 ?= t132.
            t129 = t130->get_first_token( ).
            DATA(t133) = t123.
            DATA t134 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t134.
            t127 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t128 i_token = t129 i_message_26cb = t133 i_fix = t134 ).
            APPEND t127 TO t125->items.
            DATA t135 TYPE REF TO zcl_lnt_void_type.
            CLEAR t135.
            DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t136.
            DATA(t137) = abap_true.
            IF t137 = abap_true.
              DATA(t138) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t139->has = abap_true.
              t139->value = t138.
              t136 = t139.
            ELSE.
              DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t140.
              t136 = t140.
            ENDIF.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            t135 = zcl_lnt_void_type=>get_db65( i_voided = t136 i_qualified_name = t141 ).
            result = t135.
            RETURN.
          ENDIF.
          DATA(t142) = VALUE abap_bool( ).
          DATA(t143) = CAST zlnt_runtime_opti_4ba3bdccd169( t85 ).
          IF t143 IS BOUND.
            IF t143->has = abap_true.
              t142 = xsdbool( strlen( t143->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t142 = abap_true.
            DATA t144 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t145) = CAST zlnt_runtime_set__1827558fd4c7( t54 ).
            DATA t146 TYPE string.
            DATA(t147) = CAST zlnt_runtime_opti_4ba3bdccd169( t85 ).
            t146 = t147->value.
            t144 = t145->add( p0 = t146 ).
          ENDIF.
        ELSE.
          DATA t148 TYPE abap_bool.
          DATA t149 TYPE REF TO zif_lnt_statement_runnable.
          DATA t150 TYPE REF TO zcl_lnt_expression_node.
          DATA(t151) = CAST zif_lnt_union_4cf1d054( t75 ).
          DATA t152 TYPE REF TO object.
          t152 = t151.
          t150 ?= t152.
          t149 = t150->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_value_body_line ).
          IF t148 = abap_true.
            DATA t153 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA t154 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t155) = CAST zlnt_runtime_set__1827558fd4c7( t54 ).
            DATA(t156) = CAST zlnt_runtime_set__1827558fd4c7( t54 ).
            t154 = t155->copy( p0 = t156 ).
            t153 = t154.
            DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t158 TYPE REF TO zcl_lnt_expression_node.
            DATA(t159) = CAST zif_lnt_union_4cf1d054( t75 ).
            DATA t160 TYPE REF TO object.
            t160 = t159.
            t158 ?= t160.
            DATA(t161) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1 ).
            t157 = t158->find_direct_expressions( i_type_9913 = t161 ).
            DATA t162 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t162.
            DATA t163 TYPE REF TO object.
            CLEAR t163.
            LOOP AT t157->items INTO t163.
              t162 ?= t163.
              DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t164.
              DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t165.
              DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t166.
              DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t167.
              DATA t168 TYPE REF TO zcl_lnt_expression_node.
              DATA t169 TYPE REF TO zcl_lnt_expression_node.
              DATA(t170) = CAST zcl_lnt_expression_node( t162 ).
              DATA(t171) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
              t169 = t170->find_direct_expression( i_type_9913 = t171 ).
              t168 = t169.
              DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t172.
              DATA(t173) = VALUE abap_bool( ).
              DATA(t174) = CAST zcl_lnt_expression_node( t168 ).
              IF t174 IS INITIAL.
                t173 = abap_true.
              ENDIF.
              IF t173 = abap_true.
                DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t175.
                t172 = t175.
              ELSE.
                DATA t176 TYPE string.
                DATA t177 TYPE REF TO zcl_lnt_expression_node.
                DATA(t178) = CAST zcl_lnt_expression_node( t168 ).
                t177 = t178.
                t176 = t177->concat_tokens( ).
                DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t179->has = abap_true.
                t179->value = t176.
                t172 = t179.
              ENDIF.
              t167 = t172.
              t166 = t167.
              DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t180.
              DATA(t181) = VALUE abap_bool( ).
              DATA(t182) = CAST zlnt_runtime_opti_4ba3bdccd169( t166 ).
              IF t182 IS INITIAL.
                t181 = abap_true.
              ELSEIF t182->has = abap_false.
                t181 = abap_true.
              ENDIF.
              IF t181 = abap_true.
                DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t183.
                t180 = t183.
              ELSE.
                DATA t184 TYPE string.
                DATA t185 TYPE string.
                DATA(t186) = CAST zlnt_runtime_opti_4ba3bdccd169( t166 ).
                t185 = t186->value.
                DATA(t187) = strlen( t185 ).
                t184 = t185.
                IF t184 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t184 TO UPPER CASE.
                ELSE.
                  t184 = zlnt_runtime_uppe_91169605024d=>full( t184 ).
                ENDIF.
                DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t188->has = abap_true.
                t188->value = t184.
                t180 = t188.
              ENDIF.
              t165 = t180.
              t164 = t165.
              DATA(t189) = VALUE abap_bool( ).
              DATA(t190) = VALUE abap_bool( ).
              DATA(t191) = CAST zlnt_runtime_opti_4ba3bdccd169( t164 ).
              IF t191 IS BOUND.
                IF t191->has = abap_true.
                  t190 = xsdbool( strlen( t191->value ) > 0 ).
                ENDIF.
              ENDIF.
              t189 = t190.
              IF t190 = abap_true.
                DATA t192 TYPE abap_bool.
                DATA(t193) = CAST zlnt_runtime_set__1827558fd4c7( t153 ).
                DATA t194 TYPE string.
                DATA(t195) = CAST zlnt_runtime_opti_4ba3bdccd169( t164 ).
                t194 = t195->value.
                t192 = t193->has( p0 = t194 ).
                t189 = t192.
              ENDIF.
              IF t189 = abap_true.
                DATA t196 TYPE string.
                DATA(t197) = |Duplicate field assignment|.
                t196 = t197.
                DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t199) = CAST zcl_lnt_syntax_input( t2 ).
                t198 = t199->issues.
                DATA t200 TYPE REF TO zcl_lnt_issue.
                DATA(t201) = CAST zcl_lnt_syntax_input( t2 ).
                DATA t202 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t203) = CAST zcl_lnt_expression_node( t162 ).
                t202 = t203->get_first_token( ).
                DATA(t204) = t196.
                DATA t205 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t205.
                t200 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t201 i_token = t202 i_message_26cb = t204 i_fix = t205 ).
                APPEND t200 TO t198->items.
                DATA t206 TYPE REF TO zcl_lnt_void_type.
                CLEAR t206.
                DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t207.
                DATA(t208) = abap_true.
                IF t208 = abap_true.
                  DATA(t209) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t210->has = abap_true.
                  t210->value = t209.
                  t207 = t210.
                ELSE.
                  DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t211.
                  t207 = t211.
                ENDIF.
                DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t212.
                t206 = zcl_lnt_void_type=>get_db65( i_voided = t207 i_qualified_name = t212 ).
                result = t206.
                RETURN.
              ENDIF.
              DATA(t213) = VALUE abap_bool( ).
              DATA(t214) = CAST zlnt_runtime_opti_4ba3bdccd169( t164 ).
              IF t214 IS BOUND.
                IF t214->has = abap_true.
                  t213 = xsdbool( strlen( t214->value ) > 0 ).
                ENDIF.
              ENDIF.
              IF t213 = abap_true.
                DATA t215 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
                DATA(t216) = CAST zlnt_runtime_set__1827558fd4c7( t153 ).
                DATA t217 TYPE string.
                DATA(t218) = CAST zlnt_runtime_opti_4ba3bdccd169( t164 ).
                t217 = t218->value.
                t215 = t216->add( p0 = t217 ).
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t220 TYPE REF TO zcl_lnt_expression_node.
    DATA(t221) = CAST zcl_lnt_expression_node( t1 ).
    t220 = t221.
    DATA(t222) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1 ).
    t219 = t220->find_direct_expressions( i_type_9913 = t222 ).
    DATA t223 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t223.
    DATA t224 TYPE REF TO object.
    CLEAR t224.
    LOOP AT t219->items INTO t224.
      t223 ?= t224.
      DATA(t225) = CAST zcl_lnt_expression_node( t223 ).
      DATA(t226) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t227) = CAST zcl_lnt_abstract_type( t3 ).
      zcl_lnt_sy_field_assignment=>run_syntax( i_node = t225 i_input_967e = t226 i_target_type = t227 ).
    ENDLOOP.
    DATA t228 TYPE REF TO zcl_lnt_abstract_type.
    DATA t229 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t229.
    t228 = t229.
    DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t231 TYPE REF TO zcl_lnt_expression_node.
    DATA(t232) = CAST zcl_lnt_expression_node( t1 ).
    t231 = t232.
    DATA(t233) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t230 = t231->find_direct_expressions( i_type_9913 = t233 ).
    DATA t234 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t234.
    DATA t235 TYPE REF TO object.
    CLEAR t235.
    LOOP AT t230->items INTO t235.
      t234 ?= t235.
      DATA t236 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t236.
      DATA t237 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t237.
      DATA(t238) = abap_true.
      IF t238 = abap_true.
        DATA(t239) = CAST zcl_lnt_expression_node( t234 ).
        t237 = t239.
      ELSE.
        DATA t240 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t240.
        t237 = t240.
      ENDIF.
      DATA(t241) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t242) = CAST zcl_lnt_abstract_type( t228 ).
      DATA t243 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t243.
      DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t244.
      DATA t245 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t245.
      t236 = zcl_lnt_sy_source=>run_syntax( i_node = t237 i_input_967e = t241 i_target_type = t242 i_write_reference = t243 i_allow_generic_deference = t244 i_read_reference = t245 ).
      t228 = t236.
    ENDLOOP.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t248.
    DATA t249 TYPE REF TO zcl_lnt_expression_node.
    DATA t250 TYPE REF TO zcl_lnt_expression_node.
    DATA t251 TYPE REF TO zcl_lnt_expression_node.
    DATA(t252) = CAST zcl_lnt_expression_node( t1 ).
    t251 = t252.
    DATA(t253) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d337_a8481289bbef ).
    t250 = t251->find_direct_expression( i_type_9913 = t253 ).
    t249 = t250.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t254.
    DATA(t255) = VALUE abap_bool( ).
    DATA(t256) = CAST zcl_lnt_expression_node( t249 ).
    IF t256 IS INITIAL.
      t255 = abap_true.
    ENDIF.
    IF t255 = abap_true.
      DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t257.
      t254 = t257.
    ELSE.
      DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t259 TYPE REF TO zcl_lnt_expression_node.
      DATA(t260) = CAST zcl_lnt_expression_node( t249 ).
      t259 = t260.
      DATA(t261) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t258 = t259->find_direct_expressions( i_type_9913 = t261 ).
      t254 = t258.
    ENDIF.
    t248 = t254.
    t247 = t248.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t262.
    DATA t263 TYPE abap_bool.
    DATA(t264) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    t263 = xsdbool( t264 IS BOUND ).
    IF t263 = abap_true.
      DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t266) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
      t265 = t266.
      t262 = t265.
    ELSE.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t267.
      t262 = t267.
    ENDIF.
    t246 = t262.
    DATA t268 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t268.
    DATA t269 TYPE REF TO object.
    CLEAR t269.
    LOOP AT t246->items INTO t269.
      t268 ?= t269.
      DATA t270 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t270.
      DATA t271 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t271.
      DATA(t272) = abap_true.
      IF t272 = abap_true.
        DATA(t273) = CAST zcl_lnt_expression_node( t268 ).
        t271 = t273.
      ELSE.
        DATA t274 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t274.
        t271 = t274.
      ENDIF.
      DATA(t275) = CAST zcl_lnt_syntax_input( t2 ).
      DATA(t276) = CAST zcl_lnt_abstract_type( t228 ).
      DATA t277 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t277.
      DATA t278 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t278.
      DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t279.
      t270 = zcl_lnt_sy_source=>run_syntax( i_node = t271 i_input_967e = t275 i_target_type = t276 i_write_reference = t277 i_allow_generic_deference = t278 i_read_reference = t279 ).
      t228 = t270.
    ENDLOOP.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t281 TYPE REF TO zcl_lnt_expression_node.
    DATA(t282) = CAST zcl_lnt_expression_node( t1 ).
    t281 = t282.
    DATA(t283) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d338_8158a9a51d17 ).
    t280 = t281->find_direct_expressions( i_type_9913 = t283 ).
    DATA t284 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t284.
    DATA t285 TYPE REF TO object.
    CLEAR t285.
    LOOP AT t280->items INTO t285.
      t284 ?= t285.
      DATA(t286) = VALUE abap_bool( ).
      DATA(t287) = VALUE abap_bool( ).
      DATA(t288) = VALUE abap_bool( ).
      DATA t289 TYPE abap_bool.
      DATA t290 TYPE abap_bool.
      DATA t291 TYPE abap_bool.
      DATA(t292) = CAST zcl_lnt_abstract_type( t3 ).
      t291 = xsdbool( t292 IS BOUND AND t292 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t290 = xsdbool( t291 = abap_false ).
      t289 = t290.
      IF t290 = abap_true.
        DATA t293 TYPE abap_bool.
        DATA t294 TYPE abap_bool.
        DATA(t295) = CAST zcl_lnt_abstract_type( t3 ).
        t294 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_unknown_type ).
        t293 = xsdbool( t294 = abap_false ).
        t289 = t293.
      ENDIF.
      t288 = t289.
      IF t289 = abap_true.
        DATA t296 TYPE abap_bool.
        DATA t297 TYPE abap_bool.
        DATA(t298) = CAST zcl_lnt_abstract_type( t3 ).
        t297 = xsdbool( t298 IS BOUND AND t298 IS INSTANCE OF zcl_lnt_any_type ).
        t296 = xsdbool( t297 = abap_false ).
        t288 = t296.
      ENDIF.
      t287 = t288.
      IF t288 = abap_true.
        DATA(t299) = VALUE abap_bool( ).
        DATA t300 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t301) = CAST zcl_lnt_abstract_type( t3 ).
        t300 = t301.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t303.
        t302 = t303.
        DATA(t304) = VALUE abap_bool( ).
        DATA(t305) = VALUE abap_bool( ).
        DATA(t306) = CAST zcl_lnt_abstract_type( t300 ).
        IF t306 IS INITIAL.
          t305 = abap_true.
        ENDIF.
        t304 = xsdbool( t305 = abap_false ).
        t299 = t304.
        t287 = t299.
      ENDIF.
      t286 = t287.
      IF t287 = abap_true.
        DATA t307 TYPE abap_bool.
        DATA t308 TYPE abap_bool.
        DATA(t309) = CAST zcl_lnt_abstract_type( t3 ).
        t308 = xsdbool( t309 IS BOUND AND t309 IS INSTANCE OF zcl_lnt_void_type ).
        t307 = xsdbool( t308 = abap_false ).
        t286 = t307.
      ENDIF.
      IF t286 = abap_true.
        DATA t310 TYPE string.
        DATA(t311) = |Value, not a table type|.
        t310 = t311.
        DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t313) = CAST zcl_lnt_syntax_input( t2 ).
        t312 = t313->issues.
        DATA t314 TYPE REF TO zcl_lnt_issue.
        DATA(t315) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t316 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t317) = CAST zcl_lnt_expression_node( t284 ).
        t316 = t317->get_first_token( ).
        DATA(t318) = t310.
        DATA t319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t319.
        t314 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t315 i_token = t316 i_message_26cb = t318 i_fix = t319 ).
        APPEND t314 TO t312->items.
        DATA t320 TYPE REF TO zcl_lnt_void_type.
        CLEAR t320.
        DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t321.
        DATA(t322) = abap_true.
        IF t322 = abap_true.
          DATA(t323) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t324) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t324->has = abap_true.
          t324->value = t323.
          t321 = t324.
        ELSE.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          t321 = t325.
        ENDIF.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        t320 = zcl_lnt_void_type=>get_db65( i_voided = t321 i_qualified_name = t326 ).
        result = t320.
        RETURN.
      ENDIF.
      DATA t327 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t328) = CAST zcl_lnt_abstract_type( t3 ).
      t327 = t328.
      DATA t329 TYPE abap_bool.
      DATA(t330) = CAST zcl_lnt_abstract_type( t3 ).
      t329 = xsdbool( t330 IS BOUND AND t330 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t329 = abap_true.
        DATA t331 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t331.
        DATA(t332) = abap_true.
        IF t332 = abap_true.
          DATA t333 TYPE REF TO zcl_lnt_abstract_type.
          DATA t334 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t335 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t336) = CAST zcl_lnt_abstract_type( t3 ).
          t335 ?= t336.
          t334 = t335.
          DATA t337 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t338) = CAST zcl_lnt_ty_table_type( t334 ).
          t337 = t338->row_type.
          t333 = t337.
          t331 = t333.
        ELSE.
          DATA t339 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t339.
          t331 = t339.
        ENDIF.
        t327 = t331.
      ENDIF.
      DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t341) = CAST zcl_lnt_expression_node( t284 ).
      DATA(t342) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d339_ea6d392265d6 ).
      t340 = t341->find_direct_expressions( i_type_9913 = t342 ).
      DATA t343 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t343.
      DATA t344 TYPE REF TO object.
      CLEAR t344.
      LOOP AT t340->items INTO t344.
        t343 ?= t344.
        DATA t345 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t346) = CAST zcl_lnt_expression_node( t343 ).
        DATA(t347) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
        t345 = t346->find_direct_expressions( i_type_9913 = t347 ).
        DATA t348 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t348.
        DATA t349 TYPE REF TO object.
        CLEAR t349.
        LOOP AT t345->items INTO t349.
          t348 ?= t349.
          DATA t350 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t350.
          DATA t351 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t351.
          DATA(t352) = abap_true.
          IF t352 = abap_true.
            DATA(t353) = CAST zcl_lnt_expression_node( t348 ).
            t351 = t353.
          ELSE.
            DATA t354 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t354.
            t351 = t354.
          ENDIF.
          DATA(t355) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t356 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t356.
          DATA t357 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t357.
          DATA t358 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t358.
          DATA t359 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t359.
          t350 = zcl_lnt_sy_source=>run_syntax( i_node = t351 i_input_967e = t355 i_target_type = t356 i_write_reference = t357 i_allow_generic_deference = t358 i_read_reference = t359 ).
        ENDLOOP.
      ENDLOOP.
      DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t361) = CAST zcl_lnt_expression_node( t284 ).
      DATA(t362) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1 ).
      t360 = t361->find_direct_expressions( i_type_9913 = t362 ).
      DATA t363 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t363.
      DATA t364 TYPE REF TO object.
      CLEAR t364.
      LOOP AT t360->items INTO t364.
        t363 ?= t364.
        DATA(t365) = CAST zcl_lnt_expression_node( t363 ).
        DATA(t366) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t367) = CAST zcl_lnt_abstract_type( t327 ).
        zcl_lnt_sy_field_assignment=>run_syntax( i_node = t365 i_input_967e = t366 i_target_type = t367 ).
      ENDLOOP.
      DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t369) = CAST zcl_lnt_expression_node( t284 ).
      DATA(t370) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t368 = t369->find_direct_expressions( i_type_9913 = t370 ).
      DATA t371 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t371.
      DATA t372 TYPE REF TO object.
      CLEAR t372.
      LOOP AT t368->items INTO t372.
        t371 ?= t372.
        DATA t373 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t373.
        DATA t374 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t374.
        DATA t375 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t375.
        DATA(t376) = abap_true.
        IF t376 = abap_true.
          DATA(t377) = CAST zcl_lnt_expression_node( t371 ).
          t375 = t377.
        ELSE.
          DATA t378 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t378.
          t375 = t378.
        ENDIF.
        DATA(t379) = CAST zcl_lnt_syntax_input( t2 ).
        DATA(t380) = CAST zcl_lnt_abstract_type( t327 ).
        DATA t381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t381.
        DATA t382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t382.
        DATA t383 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t383.
        t374 = zcl_lnt_sy_source=>run_syntax( i_node = t375 i_input_967e = t379 i_target_type = t380 i_write_reference = t381 i_allow_generic_deference = t382 i_read_reference = t383 ).
        t373 = t374.
        DATA t384 TYPE abap_bool.
        DATA t385 TYPE abap_bool.
        DATA(t386) = CAST zcl_lnt_abstract_type( t327 ).
        t385 = xsdbool( t386 IS BOUND AND t386 IS INSTANCE OF zcl_lnt_string_type ).
        t384 = t385.
        IF t385 = abap_true.
          DATA t387 TYPE abap_bool.
          DATA(t388) = CAST zcl_lnt_abstract_type( t373 ).
          t387 = xsdbool( t388 IS BOUND AND t388 IS INSTANCE OF zcl_lnt_character_type ).
          t384 = t387.
        ENDIF.
        IF t384 = abap_true.
          DATA t389 TYPE string.
          DATA(t390) = |VALUE, source type CharacterType not compatible with StringT|.
          t390 = t390 && |ype|.
          t389 = t390.
          DATA t391 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t392) = CAST zcl_lnt_syntax_input( t2 ).
          t391 = t392->issues.
          DATA t393 TYPE REF TO zcl_lnt_issue.
          DATA(t394) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t395 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t396) = CAST zcl_lnt_expression_node( t371 ).
          t395 = t396->get_first_token( ).
          DATA(t397) = t389.
          DATA t398 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t398.
          t393 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t394 i_token = t395 i_message_26cb = t397 i_fix = t398 ).
          APPEND t393 TO t391->items.
        ELSE.
          DATA t399 TYPE abap_bool.
          DATA(t400) = CAST zcl_lnt_abstract_type( t3 ).
          t399 = zcl_lnt_sy_value_body=>inserts_using_table_key( i_target_type = t400 ).
          IF t399 = abap_true.
            DATA t401 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA t402 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA(t403) = CAST zcl_lnt_abstract_type( t327 ).
            t402 = zcl_lnt_sy_value_body=>character_or_hex_length( i_type_9913 = t403 ).
            t401 = t402.
            DATA t404 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA t405 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA(t406) = CAST zcl_lnt_abstract_type( t373 ).
            t405 = zcl_lnt_sy_value_body=>character_or_hex_length( i_type_9913 = t406 ).
            t404 = t405.
            DATA(t407) = VALUE abap_bool( ).
            DATA(t408) = VALUE abap_bool( ).
            DATA(t409) = VALUE abap_bool( ).
            DATA(t410) = VALUE abap_bool( ).
            DATA t411 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA(t412) = CAST zcl_lnt_shape_164098b6( t401 ).
            t411 = t412.
            DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t414.
            t413 = t414.
            DATA(t415) = VALUE abap_bool( ).
            DATA(t416) = VALUE abap_bool( ).
            DATA(t417) = CAST zcl_lnt_shape_164098b6( t411 ).
            IF t417 IS INITIAL.
              t416 = abap_true.
            ENDIF.
            t415 = xsdbool( t416 = abap_false ).
            t410 = t415.
            t409 = t410.
            IF t410 = abap_true.
              DATA(t418) = VALUE abap_bool( ).
              DATA t419 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t420) = CAST zcl_lnt_shape_164098b6( t404 ).
              t419 = t420.
              DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t422.
              t421 = t422.
              DATA(t423) = VALUE abap_bool( ).
              DATA(t424) = VALUE abap_bool( ).
              DATA(t425) = CAST zcl_lnt_shape_164098b6( t419 ).
              IF t425 IS INITIAL.
                t424 = abap_true.
              ENDIF.
              t423 = xsdbool( t424 = abap_false ).
              t418 = t423.
              t409 = t418.
            ENDIF.
            t408 = t409.
            IF t409 = abap_true.
              DATA t426 TYPE abap_bool.
              DATA t427 TYPE string.
              DATA t428 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t429) = CAST zcl_lnt_shape_164098b6( t401 ).
              t428 = t429.
              t427 = t428->abap.
              DATA t430 TYPE string.
              DATA t431 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t432) = CAST zcl_lnt_shape_164098b6( t404 ).
              t431 = t432.
              t430 = t431->abap.
              t426 = xsdbool( t427 = t430 ).
              t408 = t426.
            ENDIF.
            t407 = t408.
            IF t408 = abap_true.
              DATA t433 TYPE abap_bool.
              DATA t434 TYPE int8.
              DATA t435 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t436) = CAST zcl_lnt_shape_164098b6( t401 ).
              t435 = t436.
              t434 = t435->length.
              DATA t437 TYPE int8.
              DATA t438 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t439) = CAST zcl_lnt_shape_164098b6( t404 ).
              t438 = t439.
              t437 = t438->length.
              t433 = xsdbool( t434 <> t437 ).
              t407 = t433.
            ENDIF.
            IF t407 = abap_true.
              DATA t440 TYPE string.
              DATA t441 TYPE string.
              DATA t442 TYPE string.
              DATA t443 TYPE string.
              DATA t444 TYPE string.
              DATA t445 TYPE string.
              DATA(t446) = |VALUE, source type |.
              DATA t447 TYPE string.
              DATA t448 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t449) = CAST zcl_lnt_shape_164098b6( t404 ).
              t448 = t449.
              t447 = t448->abap.
              DATA(t450) = strlen( t446 ).
              t445 = |{ t446 }{ t447 }|.
              DATA(t451) = | LENGTH |.
              DATA(t452) = strlen( t445 ).
              t444 = |{ t445 }{ t451 }|.
              DATA t453 TYPE string.
              DATA t454 TYPE int8.
              DATA t455 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t456) = CAST zcl_lnt_shape_164098b6( t404 ).
              t455 = t456.
              t454 = t455->length.
              t453 = |{ t454 }|.
              DATA(t457) = strlen( t444 ).
              t443 = |{ t444 }{ t453 }|.
              DATA(t458) = | not compatible |.
              DATA(t459) = strlen( t443 ).
              t442 = |{ t443 }{ t458 }|.
              DATA t460 TYPE string.
              DATA t461 TYPE string.
              DATA t462 TYPE string.
              DATA t463 TYPE string.
              DATA(t464) = |with row type |.
              DATA t465 TYPE string.
              DATA t466 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t467) = CAST zcl_lnt_shape_164098b6( t401 ).
              t466 = t467.
              t465 = t466->abap.
              DATA(t468) = strlen( t464 ).
              t463 = |{ t464 }{ t465 }|.
              DATA(t469) = | LENGTH |.
              DATA(t470) = strlen( t463 ).
              t462 = |{ t463 }{ t469 }|.
              DATA t471 TYPE string.
              DATA t472 TYPE int8.
              DATA t473 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t474) = CAST zcl_lnt_shape_164098b6( t401 ).
              t473 = t474.
              t472 = t473->length.
              t471 = |{ t472 }|.
              DATA(t475) = strlen( t462 ).
              t461 = |{ t462 }{ t471 }|.
              DATA(t476) = ||.
              DATA(t477) = strlen( t461 ).
              t460 = |{ t461 }{ t476 }|.
              DATA(t478) = strlen( t442 ).
              t441 = |{ t442 }{ t460 }|.
              t440 = t441.
              DATA t479 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t480) = CAST zcl_lnt_syntax_input( t2 ).
              t479 = t480->issues.
              DATA t481 TYPE REF TO zcl_lnt_issue.
              DATA(t482) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t483 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t484) = CAST zcl_lnt_expression_node( t371 ).
              t483 = t484->get_first_token( ).
              DATA(t485) = t440.
              DATA t486 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t486.
              t481 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t482 i_token = t483 i_message_26cb = t485 i_fix = t486 ).
              APPEND t481 TO t479->items.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA t487 TYPE abap_bool.
    DATA(t488) = t12.
    DATA(t489) = abap_true.
    t487 = xsdbool( t488 = t489 ).
    IF t487 = abap_true.
      DATA t490 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t490.
      DATA t491 TYPE REF TO zcl_lnt_current_scope.
      DATA(t492) = CAST zcl_lnt_syntax_input( t2 ).
      t491 = t492->scope.
      DATA t493 TYPE REF TO zcl_lnt_position.
      CLEAR t493.
      DATA t494 TYPE REF TO zcl_lnt_abstract_token.
      DATA t495 TYPE REF TO zcl_lnt_abstract_token.
      DATA t496 TYPE REF TO zcl_lnt_expression_node.
      DATA(t497) = CAST zcl_lnt_expression_node( t1 ).
      t496 = t497.
      t495 = t496->get_last_token( ).
      t494 = t495.
      DATA t498 TYPE REF TO zcl_lnt_position.
      CLEAR t498.
      DATA t499 TYPE int8.
      DATA t500 TYPE REF TO zcl_lnt_position.
      DATA t501 TYPE REF TO zcl_lnt_position.
      DATA(t502) = CAST zcl_lnt_abstract_token( t494 ).
      t501 = t502->start.
      t500 = t501.
      DATA t503 TYPE int8.
      DATA(t504) = CAST zcl_lnt_position( t500 ).
      t503 = t504->row.
      t499 = t503.
      DATA t505 TYPE int8.
      DATA t506 TYPE int8.
      DATA t507 TYPE REF TO zcl_lnt_position.
      DATA t508 TYPE REF TO zcl_lnt_position.
      DATA(t509) = CAST zcl_lnt_abstract_token( t494 ).
      t508 = t509->start.
      t507 = t508.
      DATA t510 TYPE int8.
      DATA(t511) = CAST zcl_lnt_position( t507 ).
      t510 = t511->col.
      t506 = t510.
      DATA t512 TYPE int8.
      DATA t513 TYPE i.
      DATA t514 TYPE string.
      DATA(t515) = CAST zcl_lnt_abstract_token( t494 ).
      t514 = t515->str.
      DATA(t516) = strlen( t514 ).
      t513 = t516.
      t512 = t513.
      t505 = t506 + t512.
      IF t505 < range_int8_bound_min OR t505 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t498 = NEW zcl_lnt_position( i_row = t499 i_col = t505 ).
      t493 = t498.
      t490 = t491->pop( i_end = t493 ).
    ENDIF.
    DATA t517 TYPE int8.
    DATA(t518) = CONV int8( 0 ).
    t517 = t518.
    DO.
      DATA t519 TYPE abap_bool.
      DATA(t520) = t517.
      DATA(t521) = t29.
      t519 = xsdbool( t520 < t521 ).
      IF t519 = abap_false.
        EXIT.
      ENDIF.
      DATA t522 TYPE REF TO zcl_lnt_spaghetti_scope.
      CLEAR t522.
      DATA t523 TYPE REF TO zcl_lnt_current_scope.
      DATA(t524) = CAST zcl_lnt_syntax_input( t2 ).
      t523 = t524->scope.
      DATA t525 TYPE REF TO zcl_lnt_position.
      CLEAR t525.
      DATA t526 TYPE REF TO zcl_lnt_abstract_token.
      DATA t527 TYPE REF TO zcl_lnt_abstract_token.
      DATA t528 TYPE REF TO zcl_lnt_expression_node.
      DATA(t529) = CAST zcl_lnt_expression_node( t1 ).
      t528 = t529.
      t527 = t528->get_last_token( ).
      t526 = t527.
      DATA t530 TYPE REF TO zcl_lnt_position.
      CLEAR t530.
      DATA t531 TYPE int8.
      DATA t532 TYPE REF TO zcl_lnt_position.
      DATA t533 TYPE REF TO zcl_lnt_position.
      DATA(t534) = CAST zcl_lnt_abstract_token( t526 ).
      t533 = t534->start.
      t532 = t533.
      DATA t535 TYPE int8.
      DATA(t536) = CAST zcl_lnt_position( t532 ).
      t535 = t536->row.
      t531 = t535.
      DATA t537 TYPE int8.
      DATA t538 TYPE int8.
      DATA t539 TYPE REF TO zcl_lnt_position.
      DATA t540 TYPE REF TO zcl_lnt_position.
      DATA(t541) = CAST zcl_lnt_abstract_token( t526 ).
      t540 = t541->start.
      t539 = t540.
      DATA t542 TYPE int8.
      DATA(t543) = CAST zcl_lnt_position( t539 ).
      t542 = t543->col.
      t538 = t542.
      DATA t544 TYPE int8.
      DATA t545 TYPE i.
      DATA t546 TYPE string.
      DATA(t547) = CAST zcl_lnt_abstract_token( t526 ).
      t546 = t547->str.
      DATA(t548) = strlen( t546 ).
      t545 = t548.
      t544 = t545.
      t537 = t538 + t544.
      IF t537 < range_int8_bound_min OR t537 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t530 = NEW zcl_lnt_position( i_row = t531 i_col = t537 ).
      t525 = t530.
      t522 = t523->pop( i_end = t525 ).
      DATA t549 TYPE int8.
      DATA(t550) = t517.
      DATA(t551) = CONV int8( 1 ).
      t549 = t550 + t551.
      IF t549 < range_int8_bound_min OR t549 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t517 = t549.
    ENDDO.
    DATA(t552) = VALUE abap_bool( ).
    DATA(t553) = VALUE abap_bool( ).
    DATA t554 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t554.
    DATA t555 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t556) = CAST zcl_lnt_abstract_type( t3 ).
    t555 = t556.
    DATA t557 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t557.
    DATA(t558) = VALUE abap_bool( ).
    DATA(t559) = CAST zcl_lnt_abstract_type( t555 ).
    IF t559 IS INITIAL.
      t558 = abap_true.
    ENDIF.
    IF t558 = abap_true.
      DATA t560 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t560.
      t557 = t560.
    ELSE.
      DATA t561 TYPE abap_bool.
      DATA t562 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t563) = CAST zcl_lnt_abstract_type( t555 ).
      t562 = t563.
      t561 = t562->is_generic( ).
      DATA(t564) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t564->has = abap_true.
      t564->value = t561.
      t557 = t564.
    ENDIF.
    t554 = t557.
    IF t554 IS BOUND.
      IF t554->has = abap_true.
        t553 = xsdbool( t554->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t552 = t553.
    IF t553 = abap_true.
      DATA t565 TYPE abap_bool.
      DATA(t566) = CAST zcl_lnt_abstract_type( t228 ).
      t565 = xsdbool( t566 IS BOUND ).
      t552 = t565.
    ENDIF.
    IF t552 = abap_true.
      DATA t567 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t567.
      DATA(t568) = abap_true.
      IF t568 = abap_true.
        DATA t569 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t570) = CAST zcl_lnt_abstract_type( t228 ).
        t569 = t570.
        t567 = t569.
      ELSE.
        DATA t571 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t571.
        t567 = t571.
      ENDIF.
      result = t567.
      RETURN.
    ENDIF.
    DATA t572 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t572.
    DATA t573 TYPE abap_bool.
    DATA(t574) = CAST zcl_lnt_abstract_type( t3 ).
    t573 = xsdbool( t574 IS BOUND ).
    IF t573 = abap_true.
      DATA t575 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t575.
      DATA(t576) = abap_true.
      IF t576 = abap_true.
        DATA t577 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t578) = CAST zcl_lnt_abstract_type( t3 ).
        t577 = t578.
        t575 = t577.
      ELSE.
        DATA t579 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t579.
        t575 = t579.
      ENDIF.
      t572 = t575.
    ELSE.
      DATA(t580) = CAST zcl_lnt_abstract_type( t228 ).
      t572 = t580.
    ENDIF.
    result = t572.

  ENDMETHOD.
  METHOD inserts_using_table_key.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_target_type ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CAST zcl_lnt_abstract_type( t1 ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA(t5) = abap_false.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_ty_table_type.
    DATA t9 TYPE REF TO zcl_lnt_ty_table_type.
    DATA(t10) = CAST zcl_lnt_abstract_type( t1 ).
    t9 ?= t10.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_itable_key.
    DATA t13 TYPE REF TO zcl_lnt_itable_key.
    DATA t14 TYPE REF TO zcl_lnt_itable_options.
    DATA(t15) = CAST zcl_lnt_ty_table_type( t8 ).
    t14 = t15->options.
    t13 = t14->primary_key.
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zcl_lnt_itable_key( t12 ).
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zcl_lnt_itable_key.
      DATA(t22) = CAST zcl_lnt_itable_key( t12 ).
      t21 = t22.
      t20 = t21->type_cba0.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t20.
      t16 = t23.
    ENDIF.
    t11 = t16.
    t7 = t11.
    t6 = t7.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |SORTED|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    IF t26 IS BOUND.
      t32 = t26->has.
    ENDIF.
    IF t27 IS BOUND.
      t33 = t27->has.
    ENDIF.
    IF t32 = t33.
      IF t32 = abap_false.
        t25 = abap_true.
      ELSEIF t26->value = t27->value.
        t25 = abap_true.
      ENDIF.
    ENDIF.
    t24 = t25.
    IF t25 = abap_false.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = |HASHED|.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t38.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t36 = t40.
      ENDIF.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = VALUE abap_bool( ).
      IF t35 IS BOUND.
        t41 = t35->has.
      ENDIF.
      IF t36 IS BOUND.
        t42 = t36->has.
      ENDIF.
      IF t41 = t42.
        IF t41 = abap_false.
          t34 = abap_true.
        ELSEIF t35->value = t36->value.
          t34 = abap_true.
        ENDIF.
      ENDIF.
      t24 = t34.
    ENDIF.
    result = t24.

  ENDMETHOD.
  METHOD character_or_hex_length.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA t2 TYPE abap_bool.
    DATA(t3) = CAST zcl_lnt_abstract_type( t1 ).
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_character_type ).
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zcl_lnt_shape_164098b6.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA t6 TYPE REF TO zcl_lnt_shape_164098b6.
        DATA(t7) = |c|.
        DATA t8 TYPE int8.
        DATA t9 TYPE REF TO zcl_lnt_character_type.
        DATA t10 TYPE REF TO zcl_lnt_character_type.
        DATA(t11) = CAST zcl_lnt_abstract_type( t1 ).
        t10 ?= t11.
        t9 = t10.
        DATA t12 TYPE int8.
        DATA(t13) = CAST zcl_lnt_character_type( t9 ).
        t12 = t13->length.
        t8 = t12.
        t6 = NEW zcl_lnt_shape_164098b6( i_abap = t7 i_length = t8 ).
        t4 = t6.
      ELSE.
        DATA t14 TYPE REF TO zcl_lnt_shape_164098b6.
        CLEAR t14.
        t4 = t14.
      ENDIF.
      result = t4.
      RETURN.
    ELSE.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zcl_lnt_abstract_type( t1 ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_hex_type ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_shape_164098b6.
        CLEAR t17.
        DATA(t18) = abap_true.
        IF t18 = abap_true.
          DATA t19 TYPE REF TO zcl_lnt_shape_164098b6.
          DATA(t20) = |x|.
          DATA t21 TYPE int8.
          DATA t22 TYPE REF TO zcl_lnt_hex_type.
          DATA t23 TYPE REF TO zcl_lnt_hex_type.
          DATA(t24) = CAST zcl_lnt_abstract_type( t1 ).
          t23 ?= t24.
          t22 = t23.
          DATA t25 TYPE int8.
          DATA(t26) = CAST zcl_lnt_hex_type( t22 ).
          t25 = t26->length.
          t21 = t25.
          t19 = NEW zcl_lnt_shape_164098b6( i_abap = t20 i_length = t21 ).
          t17 = t19.
        ELSE.
          DATA t27 TYPE REF TO zcl_lnt_shape_164098b6.
          CLEAR t27.
          t17 = t27.
        ENDIF.
        result = t17.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_shape_164098b6.
    CLEAR t28.
    result = t28.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d826_069eb7b1cef6.
  ENDMETHOD.
ENDCLASS.
