* TS: src/abap/5_syntax/expressions/value_body.ts:11:1 ValueBody
CLASS zcl_lnt_sy_value_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    CLASS-METHODS inserts_using_table_key IMPORTING i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS character_or_hex_length IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_164098b6.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_value_body IMPLEMENTATION.
  METHOD run_syntax.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
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
      DATA(t11) = t3.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA(t13) = abap_false.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    t16 = t17.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t14.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t25) = t14.
        t24 = t25.
        t22 = t24.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      DATA(t27) = t2.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      t21 = zcl_lnt_sy_let=>run_syntax( i_node = t22 i_input_967e = t27 i_skip_scope = t28 ).
      t12 = t21.
    ENDIF.
    DATA t29 TYPE f.
    DATA(t30) = CONV f( 0 ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA(t35) = t1.
    t34 = t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
    t33 = t34->find_direct_expressions( i_type_9913 = t36 ).
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE abap_bool.
    DATA(t39) = t32.
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA(t40) = t32.
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
    DATA(t44) = VALUE i( ).
    DO.
      t31->load( ).
      IF t44 >= lines( t31->items ).
        EXIT.
      ENDIF.
      CLEAR t43.
      READ TABLE t31->items INDEX t44 + 1 INTO t43.
      t44 = t44 + 1.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      CLEAR t42.
      IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t45 ?= t43.
        DATA t46 TYPE REF TO object.
        t46 = t45->as_ref( ).
        t42 ?= t46.
      ELSE.
        t42 ?= t43.
      ENDIF.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE abap_bool.
      DATA(t49) = t42.
      DATA(t50) = t2.
      t48 = zcl_lnt_sy_for=>run_syntax( i_node = t49 i_input_967e = t50 ).
      t47 = t48.
      DATA t51 TYPE abap_bool.
      DATA(t52) = t47.
      DATA(t53) = abap_true.
      t51 = xsdbool( t52 = t53 ).
      IF t51 = abap_true.
        DATA t54 TYPE f.
        DATA(t55) = t29.
        DATA(t56) = CONV f( 1 ).
        t54 = t55 + t56.
        t29 = t54.
      ENDIF.
    ENDDO.
    DATA t57 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t58) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t57 = t58.
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = VALUE abap_bool( ).
    DATA t61 TYPE REF TO zcl_lnt_expression_node.
    DATA t62 TYPE REF TO zcl_lnt_expression_node.
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    DATA(t64) = t1.
    t63 = t64.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t62 = t63->find_direct_expression( i_type_9913 = t65 ).
    t61 = t62.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    t66 = t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = t61.
    IF t70 IS INITIAL.
      t69 = abap_true.
    ENDIF.
    t68 = xsdbool( t69 = abap_false ).
    t60 = t68.
    t59 = t60.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t73 TYPE REF TO zcl_lnt_abstract_node.
    DATA t74 TYPE REF TO zcl_lnt_expression_node.
    DATA(t75) = t1.
    t74 = t75.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t77) = t73.
    t76 = t77->children.
    t72 = t76.
    t71 ?= t72.
    DATA t78 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t78.
    DATA t79 TYPE REF TO object.
    CLEAR t79.
    DATA(t80) = VALUE i( ).
    DO.
      t71->load( ).
      IF t80 >= lines( t71->items ).
        EXIT.
      ENDIF.
      CLEAR t79.
      READ TABLE t71->items INDEX t80 + 1 INTO t79.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t78.
      IF t79 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t79.
        DATA t82 TYPE REF TO object.
        t82 = t81->as_ref( ).
        t78 ?= t82.
      ELSE.
        t78 ?= t79.
      ENDIF.
      DATA t83 TYPE abap_bool.
      DATA t84 TYPE abap_bool.
      DATA(t85) = t78.
      t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_expression_node ).
      t83 = xsdbool( t84 = abap_false ).
      IF t83 = abap_true.
        CONTINUE.
      ELSE.
        DATA t86 TYPE abap_bool.
        DATA t87 TYPE REF TO zif_lnt_statement_runnable.
        DATA t88 TYPE REF TO zcl_lnt_expression_node.
        DATA(t89) = t78.
        DATA t90 TYPE REF TO object.
        t90 = t89.
        t88 ?= t90.
        t87 = t88->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_st_field_assignment ).
        IF t86 = abap_true.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          DATA t95 TYPE REF TO zcl_lnt_expression_node.
          DATA t96 TYPE REF TO zcl_lnt_expression_node.
          DATA t97 TYPE REF TO zcl_lnt_expression_node.
          DATA(t98) = t78.
          DATA t99 TYPE REF TO object.
          t99 = t98.
          t97 ?= t99.
          DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
          t96 = t97->find_direct_expression( i_type_9913 = t100 ).
          t95 = t96.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = t95.
          IF t103 IS INITIAL.
            t102 = abap_true.
          ENDIF.
          IF t102 = abap_true.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            t101 = t104.
          ELSE.
            DATA t105 TYPE string.
            DATA t106 TYPE REF TO zcl_lnt_expression_node.
            DATA(t107) = t95.
            t106 = t107.
            t105 = t106->concat_tokens( ).
            DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t108->has = abap_true.
            t108->value = t105.
            t101 = t108.
          ENDIF.
          t94 = t101.
          t93 = t94.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t110) = VALUE abap_bool( ).
          DATA(t111) = t93.
          IF t111 IS INITIAL.
            t110 = abap_true.
          ELSEIF t111->has = abap_false.
            t110 = abap_true.
          ENDIF.
          IF t110 = abap_true.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            t109 = t112.
          ELSE.
            DATA t113 TYPE string.
            DATA t114 TYPE string.
            DATA(t115) = t93.
            t114 = t115->value.
            DATA(t116) = strlen( t114 ).
            t113 = t114.
            IF t113 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t113 TO UPPER CASE.
            ELSE.
              t113 = zlnt_runtime_uppe_91169605024d=>full( t113 ).
            ENDIF.
            DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t117->has = abap_true.
            t117->value = t113.
            t109 = t117.
          ENDIF.
          t92 = t109.
          t91 = t92.
          DATA(t118) = VALUE abap_bool( ).
          DATA(t119) = VALUE abap_bool( ).
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = t91.
          IF t121 IS BOUND.
            IF t121->has = abap_true.
              t120 = xsdbool( strlen( t121->value ) > 0 ).
            ENDIF.
          ENDIF.
          t119 = t120.
          IF t120 = abap_true.
            DATA t122 TYPE abap_bool.
            DATA(t123) = t59.
            DATA(t124) = abap_false.
            t122 = xsdbool( t123 = t124 ).
            t119 = t122.
          ENDIF.
          t118 = t119.
          IF t119 = abap_true.
            DATA t125 TYPE abap_bool.
            DATA(t126) = t57.
            DATA t127 TYPE string.
            DATA(t128) = t91.
            t127 = t128->value.
            t125 = t126->has( p0 = t127 ).
            t118 = t125.
          ENDIF.
          IF t118 = abap_true.
            DATA t129 TYPE string.
            DATA(t130) = |Duplicate field assignment|.
            t129 = t130.
            DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t132) = t2.
            t131 = t132->issues.
            DATA t133 TYPE REF TO zcl_lnt_issue.
            DATA(t134) = t2.
            DATA t135 TYPE REF TO zcl_lnt_abstract_token.
            DATA t136 TYPE REF TO zcl_lnt_expression_node.
            DATA(t137) = t78.
            DATA t138 TYPE REF TO object.
            t138 = t137.
            t136 ?= t138.
            t135 = t136->get_first_token( ).
            DATA(t139) = t129.
            DATA t140 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t140.
            t133 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t134 i_token = t135 i_message_26cb = t139 i_fix = t140 ).
            t131->load( ).
            APPEND t133 TO t131->items.
            t131->save( ).
            DATA t141 TYPE REF TO zcl_lnt_void_type.
            CLEAR t141.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t142.
            DATA(t143) = abap_true.
            IF t143 = abap_true.
              DATA(t144) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t145->has = abap_true.
              t145->value = t144.
              t142 = t145.
            ELSE.
              DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t146.
              t142 = t146.
            ENDIF.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            t141 = zcl_lnt_void_type=>get_db65( i_voided = t142 i_qualified_name = t147 ).
            result = t141.
            RETURN.
          ENDIF.
          DATA(t148) = VALUE abap_bool( ).
          DATA(t149) = t91.
          IF t149 IS BOUND.
            IF t149->has = abap_true.
              t148 = xsdbool( strlen( t149->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t148 = abap_true.
            DATA t150 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t151) = t57.
            DATA t152 TYPE string.
            DATA(t153) = t91.
            t152 = t153->value.
            t150 = t151->add( p0 = t152 ).
          ENDIF.
        ELSE.
          DATA t154 TYPE abap_bool.
          DATA t155 TYPE REF TO zif_lnt_statement_runnable.
          DATA t156 TYPE REF TO zcl_lnt_expression_node.
          DATA(t157) = t78.
          DATA t158 TYPE REF TO object.
          t158 = t157.
          t156 ?= t158.
          t155 = t156->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_value_body_line ).
          IF t154 = abap_true.
            DATA t159 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA t160 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            DATA(t161) = t57.
            DATA(t162) = t57.
            t160 = t161->copy( p0 = t162 ).
            t159 = t160.
            DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t164 TYPE REF TO zcl_lnt_expression_node.
            DATA(t165) = t78.
            DATA t166 TYPE REF TO object.
            t166 = t165.
            t164 ?= t166.
            DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
            t163 = t164->find_direct_expressions( i_type_9913 = t167 ).
            DATA t168 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t168.
            DATA t169 TYPE REF TO object.
            CLEAR t169.
            DATA(t170) = VALUE i( ).
            DO.
              t163->load( ).
              IF t170 >= lines( t163->items ).
                EXIT.
              ENDIF.
              CLEAR t169.
              READ TABLE t163->items INDEX t170 + 1 INTO t169.
              t170 = t170 + 1.
              DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t171.
              CLEAR t168.
              IF t169 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t171 ?= t169.
                DATA t172 TYPE REF TO object.
                t172 = t171->as_ref( ).
                t168 ?= t172.
              ELSE.
                t168 ?= t169.
              ENDIF.
              DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t173.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t174.
              DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t175.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t176.
              DATA t177 TYPE REF TO zcl_lnt_expression_node.
              DATA t178 TYPE REF TO zcl_lnt_expression_node.
              DATA(t179) = t168.
              DATA(t180) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
              t178 = t179->find_direct_expression( i_type_9913 = t180 ).
              t177 = t178.
              DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t181.
              DATA(t182) = VALUE abap_bool( ).
              DATA(t183) = t177.
              IF t183 IS INITIAL.
                t182 = abap_true.
              ENDIF.
              IF t182 = abap_true.
                DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t184.
                t181 = t184.
              ELSE.
                DATA t185 TYPE string.
                DATA t186 TYPE REF TO zcl_lnt_expression_node.
                DATA(t187) = t177.
                t186 = t187.
                t185 = t186->concat_tokens( ).
                DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t188->has = abap_true.
                t188->value = t185.
                t181 = t188.
              ENDIF.
              t176 = t181.
              t175 = t176.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t189.
              DATA(t190) = VALUE abap_bool( ).
              DATA(t191) = t175.
              IF t191 IS INITIAL.
                t190 = abap_true.
              ELSEIF t191->has = abap_false.
                t190 = abap_true.
              ENDIF.
              IF t190 = abap_true.
                DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t192.
                t189 = t192.
              ELSE.
                DATA t193 TYPE string.
                DATA t194 TYPE string.
                DATA(t195) = t175.
                t194 = t195->value.
                DATA(t196) = strlen( t194 ).
                t193 = t194.
                IF t193 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t193 TO UPPER CASE.
                ELSE.
                  t193 = zlnt_runtime_uppe_91169605024d=>full( t193 ).
                ENDIF.
                DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t197->has = abap_true.
                t197->value = t193.
                t189 = t197.
              ENDIF.
              t174 = t189.
              t173 = t174.
              DATA(t198) = VALUE abap_bool( ).
              DATA(t199) = VALUE abap_bool( ).
              DATA(t200) = t173.
              IF t200 IS BOUND.
                IF t200->has = abap_true.
                  t199 = xsdbool( strlen( t200->value ) > 0 ).
                ENDIF.
              ENDIF.
              t198 = t199.
              IF t199 = abap_true.
                DATA t201 TYPE abap_bool.
                DATA(t202) = t159.
                DATA t203 TYPE string.
                DATA(t204) = t173.
                t203 = t204->value.
                t201 = t202->has( p0 = t203 ).
                t198 = t201.
              ENDIF.
              IF t198 = abap_true.
                DATA t205 TYPE string.
                DATA(t206) = |Duplicate field assignment|.
                t205 = t206.
                DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t208) = t2.
                t207 = t208->issues.
                DATA t209 TYPE REF TO zcl_lnt_issue.
                DATA(t210) = t2.
                DATA t211 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t212) = t168.
                t211 = t212->get_first_token( ).
                DATA(t213) = t205.
                DATA t214 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t214.
                t209 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t210 i_token = t211 i_message_26cb = t213 i_fix = t214 ).
                t207->load( ).
                APPEND t209 TO t207->items.
                t207->save( ).
                DATA t215 TYPE REF TO zcl_lnt_void_type.
                CLEAR t215.
                DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t216.
                DATA(t217) = abap_true.
                IF t217 = abap_true.
                  DATA(t218) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t219->has = abap_true.
                  t219->value = t218.
                  t216 = t219.
                ELSE.
                  DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t220.
                  t216 = t220.
                ENDIF.
                DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t221.
                t215 = zcl_lnt_void_type=>get_db65( i_voided = t216 i_qualified_name = t221 ).
                result = t215.
                RETURN.
              ENDIF.
              DATA(t222) = VALUE abap_bool( ).
              DATA(t223) = t173.
              IF t223 IS BOUND.
                IF t223->has = abap_true.
                  t222 = xsdbool( strlen( t223->value ) > 0 ).
                ENDIF.
              ENDIF.
              IF t222 = abap_true.
                DATA t224 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
                DATA(t225) = t159.
                DATA t226 TYPE string.
                DATA(t227) = t173.
                t226 = t227->value.
                t224 = t225->add( p0 = t226 ).
              ENDIF.
            ENDDO.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t229 TYPE REF TO zcl_lnt_expression_node.
    DATA(t230) = t1.
    t229 = t230.
    DATA(t231) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    t228 = t229->find_direct_expressions( i_type_9913 = t231 ).
    DATA t232 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t232.
    DATA t233 TYPE REF TO object.
    CLEAR t233.
    DATA(t234) = VALUE i( ).
    DO.
      t228->load( ).
      IF t234 >= lines( t228->items ).
        EXIT.
      ENDIF.
      CLEAR t233.
      READ TABLE t228->items INDEX t234 + 1 INTO t233.
      t234 = t234 + 1.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t235.
      CLEAR t232.
      IF t233 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t235 ?= t233.
        DATA t236 TYPE REF TO object.
        t236 = t235->as_ref( ).
        t232 ?= t236.
      ELSE.
        t232 ?= t233.
      ENDIF.
      DATA(t237) = t232.
      DATA(t238) = t2.
      DATA(t239) = t3.
      zcl_lnt_sy_field_assignment=>run_syntax( i_node = t237 i_input_967e = t238 i_target_type = t239 ).
    ENDDO.
    DATA t240 TYPE REF TO zcl_lnt_abstract_type.
    DATA t241 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t241.
    t240 = t241.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t243 TYPE REF TO zcl_lnt_expression_node.
    DATA(t244) = t1.
    t243 = t244.
    DATA(t245) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t242 = t243->find_direct_expressions( i_type_9913 = t245 ).
    DATA t246 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t246.
    DATA t247 TYPE REF TO object.
    CLEAR t247.
    DATA(t248) = VALUE i( ).
    DO.
      t242->load( ).
      IF t248 >= lines( t242->items ).
        EXIT.
      ENDIF.
      CLEAR t247.
      READ TABLE t242->items INDEX t248 + 1 INTO t247.
      t248 = t248 + 1.
      DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t249.
      CLEAR t246.
      IF t247 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t249 ?= t247.
        DATA t250 TYPE REF TO object.
        t250 = t249->as_ref( ).
        t246 ?= t250.
      ELSE.
        t246 ?= t247.
      ENDIF.
      DATA t251 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t251.
      DATA t252 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t252.
      DATA(t253) = abap_true.
      IF t253 = abap_true.
        DATA(t254) = t246.
        t252 = t254.
      ELSE.
        DATA t255 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t255.
        t252 = t255.
      ENDIF.
      DATA(t256) = t2.
      DATA(t257) = t240.
      DATA t258 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t258.
      DATA t259 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t259.
      DATA t260 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t260.
      t251 = zcl_lnt_sy_source=>run_syntax( i_node = t252 i_input_967e = t256 i_target_type = t257 i_write_reference = t258 i_allow_generic_deference = t259 i_read_reference = t260 ).
      t240 = t251.
    ENDDO.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t263.
    DATA t264 TYPE REF TO zcl_lnt_expression_node.
    DATA t265 TYPE REF TO zcl_lnt_expression_node.
    DATA t266 TYPE REF TO zcl_lnt_expression_node.
    DATA(t267) = t1.
    t266 = t267.
    DATA(t268) = zlnt_runtime_desc_78196487750d=>zlnt_member_d354_a6deeff18cfd.
    t265 = t266->find_direct_expression( i_type_9913 = t268 ).
    t264 = t265.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t269.
    DATA(t270) = VALUE abap_bool( ).
    DATA(t271) = t264.
    IF t271 IS INITIAL.
      t270 = abap_true.
    ENDIF.
    IF t270 = abap_true.
      DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t272.
      t269 = t272.
    ELSE.
      DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t274 TYPE REF TO zcl_lnt_expression_node.
      DATA(t275) = t264.
      t274 = t275.
      DATA(t276) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t273 = t274->find_direct_expressions( i_type_9913 = t276 ).
      t269 = t273.
    ENDIF.
    t263 = t269.
    t262 = t263.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t277.
    DATA t278 TYPE abap_bool.
    DATA(t279) = t262.
    t278 = xsdbool( t279 IS BOUND ).
    IF t278 = abap_true.
      DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t281) = t262.
      t280 = t281.
      t277 = t280.
    ELSE.
      DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t282.
      t277 = t282.
    ENDIF.
    t261 = t277.
    DATA t283 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t283.
    DATA t284 TYPE REF TO object.
    CLEAR t284.
    DATA(t285) = VALUE i( ).
    DO.
      t261->load( ).
      IF t285 >= lines( t261->items ).
        EXIT.
      ENDIF.
      CLEAR t284.
      READ TABLE t261->items INDEX t285 + 1 INTO t284.
      t285 = t285 + 1.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t286.
      CLEAR t283.
      IF t284 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t286 ?= t284.
        DATA t287 TYPE REF TO object.
        t287 = t286->as_ref( ).
        t283 ?= t287.
      ELSE.
        t283 ?= t284.
      ENDIF.
      DATA t288 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t288.
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t289.
      DATA(t290) = abap_true.
      IF t290 = abap_true.
        DATA(t291) = t283.
        t289 = t291.
      ELSE.
        DATA t292 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t292.
        t289 = t292.
      ENDIF.
      DATA(t293) = t2.
      DATA(t294) = t240.
      DATA t295 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t295.
      DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t296.
      DATA t297 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t297.
      t288 = zcl_lnt_sy_source=>run_syntax( i_node = t289 i_input_967e = t293 i_target_type = t294 i_write_reference = t295 i_allow_generic_deference = t296 i_read_reference = t297 ).
      t240 = t288.
    ENDDO.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t299 TYPE REF TO zcl_lnt_expression_node.
    DATA(t300) = t1.
    t299 = t300.
    DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t298 = t299->find_direct_expressions( i_type_9913 = t301 ).
    DATA t302 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t302.
    DATA t303 TYPE REF TO object.
    CLEAR t303.
    DATA(t304) = VALUE i( ).
    DO.
      t298->load( ).
      IF t304 >= lines( t298->items ).
        EXIT.
      ENDIF.
      CLEAR t303.
      READ TABLE t298->items INDEX t304 + 1 INTO t303.
      t304 = t304 + 1.
      DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t305.
      CLEAR t302.
      IF t303 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t305 ?= t303.
        DATA t306 TYPE REF TO object.
        t306 = t305->as_ref( ).
        t302 ?= t306.
      ELSE.
        t302 ?= t303.
      ENDIF.
      DATA(t307) = VALUE abap_bool( ).
      DATA(t308) = VALUE abap_bool( ).
      DATA(t309) = VALUE abap_bool( ).
      DATA t310 TYPE abap_bool.
      DATA t311 TYPE abap_bool.
      DATA t312 TYPE abap_bool.
      DATA(t313) = t3.
      t312 = xsdbool( t313 IS BOUND AND t313 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t311 = xsdbool( t312 = abap_false ).
      t310 = t311.
      IF t311 = abap_true.
        DATA t314 TYPE abap_bool.
        DATA t315 TYPE abap_bool.
        DATA(t316) = t3.
        t315 = xsdbool( t316 IS BOUND AND t316 IS INSTANCE OF zcl_lnt_unknown_type ).
        t314 = xsdbool( t315 = abap_false ).
        t310 = t314.
      ENDIF.
      t309 = t310.
      IF t310 = abap_true.
        DATA t317 TYPE abap_bool.
        DATA t318 TYPE abap_bool.
        DATA(t319) = t3.
        t318 = xsdbool( t319 IS BOUND AND t319 IS INSTANCE OF zcl_lnt_any_type ).
        t317 = xsdbool( t318 = abap_false ).
        t309 = t317.
      ENDIF.
      t308 = t309.
      IF t309 = abap_true.
        DATA(t320) = VALUE abap_bool( ).
        DATA t321 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t322) = t3.
        t321 = t322.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        t323 = t324.
        DATA(t325) = VALUE abap_bool( ).
        DATA(t326) = VALUE abap_bool( ).
        DATA(t327) = t321.
        IF t327 IS INITIAL.
          t326 = abap_true.
        ENDIF.
        t325 = xsdbool( t326 = abap_false ).
        t320 = t325.
        t308 = t320.
      ENDIF.
      t307 = t308.
      IF t308 = abap_true.
        DATA t328 TYPE abap_bool.
        DATA t329 TYPE abap_bool.
        DATA(t330) = t3.
        t329 = xsdbool( t330 IS BOUND AND t330 IS INSTANCE OF zcl_lnt_void_type ).
        t328 = xsdbool( t329 = abap_false ).
        t307 = t328.
      ENDIF.
      IF t307 = abap_true.
        DATA t331 TYPE string.
        DATA(t332) = |Value, not a table type|.
        t331 = t332.
        DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t334) = t2.
        t333 = t334->issues.
        DATA t335 TYPE REF TO zcl_lnt_issue.
        DATA(t336) = t2.
        DATA t337 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t338) = t302.
        t337 = t338->get_first_token( ).
        DATA(t339) = t331.
        DATA t340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t340.
        t335 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t336 i_token = t337 i_message_26cb = t339 i_fix = t340 ).
        t333->load( ).
        APPEND t335 TO t333->items.
        t333->save( ).
        DATA t341 TYPE REF TO zcl_lnt_void_type.
        CLEAR t341.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t342.
        DATA(t343) = abap_true.
        IF t343 = abap_true.
          DATA(t344) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t345) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t345->has = abap_true.
          t345->value = t344.
          t342 = t345.
        ELSE.
          DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t346.
          t342 = t346.
        ENDIF.
        DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t347.
        t341 = zcl_lnt_void_type=>get_db65( i_voided = t342 i_qualified_name = t347 ).
        result = t341.
        RETURN.
      ENDIF.
      DATA t348 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t349) = t3.
      t348 = t349.
      DATA t350 TYPE abap_bool.
      DATA(t351) = t3.
      t350 = xsdbool( t351 IS BOUND AND t351 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t350 = abap_true.
        DATA t352 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t352.
        DATA(t353) = abap_true.
        IF t353 = abap_true.
          DATA t354 TYPE REF TO zcl_lnt_abstract_type.
          DATA t355 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t356 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t357) = t3.
          t356 ?= t357.
          t355 = t356.
          DATA t358 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t359) = t355.
          t358 = t359->row_type.
          t354 = t358.
          t352 = t354.
        ELSE.
          DATA t360 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t360.
          t352 = t360.
        ENDIF.
        t348 = t352.
      ENDIF.
      DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t362) = t302.
      DATA(t363) = zlnt_runtime_desc_78196487750d=>zlnt_member_d356_3218bf7cfc33.
      t361 = t362->find_direct_expressions( i_type_9913 = t363 ).
      DATA t364 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t364.
      DATA t365 TYPE REF TO object.
      CLEAR t365.
      DATA(t366) = VALUE i( ).
      DO.
        t361->load( ).
        IF t366 >= lines( t361->items ).
          EXIT.
        ENDIF.
        CLEAR t365.
        READ TABLE t361->items INDEX t366 + 1 INTO t365.
        t366 = t366 + 1.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        CLEAR t364.
        IF t365 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t367 ?= t365.
          DATA t368 TYPE REF TO object.
          t368 = t367->as_ref( ).
          t364 ?= t368.
        ELSE.
          t364 ?= t365.
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t370) = t364.
        DATA(t371) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t369 = t370->find_direct_expressions( i_type_9913 = t371 ).
        DATA t372 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t372.
        DATA t373 TYPE REF TO object.
        CLEAR t373.
        DATA(t374) = VALUE i( ).
        DO.
          t369->load( ).
          IF t374 >= lines( t369->items ).
            EXIT.
          ENDIF.
          CLEAR t373.
          READ TABLE t369->items INDEX t374 + 1 INTO t373.
          t374 = t374 + 1.
          DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t375.
          CLEAR t372.
          IF t373 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t375 ?= t373.
            DATA t376 TYPE REF TO object.
            t376 = t375->as_ref( ).
            t372 ?= t376.
          ELSE.
            t372 ?= t373.
          ENDIF.
          DATA t377 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t377.
          DATA t378 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t378.
          DATA(t379) = abap_true.
          IF t379 = abap_true.
            DATA(t380) = t372.
            t378 = t380.
          ELSE.
            DATA t381 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t381.
            t378 = t381.
          ENDIF.
          DATA(t382) = t2.
          DATA t383 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t383.
          DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t384.
          DATA t385 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t385.
          DATA t386 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t386.
          t377 = zcl_lnt_sy_source=>run_syntax( i_node = t378 i_input_967e = t382 i_target_type = t383 i_write_reference = t384 i_allow_generic_deference = t385 i_read_reference = t386 ).
        ENDDO.
      ENDDO.
      DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t388) = t302.
      DATA(t389) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t387 = t388->find_direct_expressions( i_type_9913 = t389 ).
      DATA t390 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t390.
      DATA t391 TYPE REF TO object.
      CLEAR t391.
      DATA(t392) = VALUE i( ).
      DO.
        t387->load( ).
        IF t392 >= lines( t387->items ).
          EXIT.
        ENDIF.
        CLEAR t391.
        READ TABLE t387->items INDEX t392 + 1 INTO t391.
        t392 = t392 + 1.
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        CLEAR t390.
        IF t391 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t393 ?= t391.
          DATA t394 TYPE REF TO object.
          t394 = t393->as_ref( ).
          t390 ?= t394.
        ELSE.
          t390 ?= t391.
        ENDIF.
        DATA(t395) = t390.
        DATA(t396) = t2.
        DATA(t397) = t348.
        zcl_lnt_sy_field_assignment=>run_syntax( i_node = t395 i_input_967e = t396 i_target_type = t397 ).
      ENDDO.
      DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t399) = t302.
      DATA(t400) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t398 = t399->find_direct_expressions( i_type_9913 = t400 ).
      DATA t401 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t401.
      DATA t402 TYPE REF TO object.
      CLEAR t402.
      DATA(t403) = VALUE i( ).
      DO.
        t398->load( ).
        IF t403 >= lines( t398->items ).
          EXIT.
        ENDIF.
        CLEAR t402.
        READ TABLE t398->items INDEX t403 + 1 INTO t402.
        t403 = t403 + 1.
        DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t404.
        CLEAR t401.
        IF t402 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t404 ?= t402.
          DATA t405 TYPE REF TO object.
          t405 = t404->as_ref( ).
          t401 ?= t405.
        ELSE.
          t401 ?= t402.
        ENDIF.
        DATA t406 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t406.
        DATA t407 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t407.
        DATA t408 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t408.
        DATA(t409) = abap_true.
        IF t409 = abap_true.
          DATA(t410) = t401.
          t408 = t410.
        ELSE.
          DATA t411 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t411.
          t408 = t411.
        ENDIF.
        DATA(t412) = t2.
        DATA(t413) = t348.
        DATA t414 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t414.
        DATA t415 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t415.
        DATA t416 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t416.
        t407 = zcl_lnt_sy_source=>run_syntax( i_node = t408 i_input_967e = t412 i_target_type = t413 i_write_reference = t414 i_allow_generic_deference = t415 i_read_reference = t416 ).
        t406 = t407.
        DATA t417 TYPE abap_bool.
        DATA t418 TYPE abap_bool.
        DATA(t419) = t348.
        t418 = xsdbool( t419 IS BOUND AND t419 IS INSTANCE OF zcl_lnt_string_type ).
        t417 = t418.
        IF t418 = abap_true.
          DATA t420 TYPE abap_bool.
          DATA(t421) = t406.
          t420 = xsdbool( t421 IS BOUND AND t421 IS INSTANCE OF zcl_lnt_character_type ).
          t417 = t420.
        ENDIF.
        IF t417 = abap_true.
          DATA t422 TYPE string.
          DATA(t423) = |VALUE, source type CharacterType not compatible with StringT|.
          t423 = t423 && |ype|.
          t422 = t423.
          DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t425) = t2.
          t424 = t425->issues.
          DATA t426 TYPE REF TO zcl_lnt_issue.
          DATA(t427) = t2.
          DATA t428 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t429) = t401.
          t428 = t429->get_first_token( ).
          DATA(t430) = t422.
          DATA t431 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t431.
          t426 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t427 i_token = t428 i_message_26cb = t430 i_fix = t431 ).
          t424->load( ).
          APPEND t426 TO t424->items.
          t424->save( ).
        ELSE.
          DATA t432 TYPE abap_bool.
          DATA(t433) = t3.
          t432 = zcl_lnt_sy_value_body=>inserts_using_table_key( i_target_type = t433 ).
          IF t432 = abap_true.
            DATA t434 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA t435 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA(t436) = t348.
            t435 = zcl_lnt_sy_value_body=>character_or_hex_length( i_type_9913 = t436 ).
            t434 = t435.
            DATA t437 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA t438 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA(t439) = t406.
            t438 = zcl_lnt_sy_value_body=>character_or_hex_length( i_type_9913 = t439 ).
            t437 = t438.
            DATA(t440) = VALUE abap_bool( ).
            DATA(t441) = VALUE abap_bool( ).
            DATA(t442) = VALUE abap_bool( ).
            DATA(t443) = VALUE abap_bool( ).
            DATA t444 TYPE REF TO zcl_lnt_shape_164098b6.
            DATA(t445) = t434.
            t444 = t445.
            DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t447.
            t446 = t447.
            DATA(t448) = VALUE abap_bool( ).
            DATA(t449) = VALUE abap_bool( ).
            DATA(t450) = t444.
            IF t450 IS INITIAL.
              t449 = abap_true.
            ENDIF.
            t448 = xsdbool( t449 = abap_false ).
            t443 = t448.
            t442 = t443.
            IF t443 = abap_true.
              DATA(t451) = VALUE abap_bool( ).
              DATA t452 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t453) = t437.
              t452 = t453.
              DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t455.
              t454 = t455.
              DATA(t456) = VALUE abap_bool( ).
              DATA(t457) = VALUE abap_bool( ).
              DATA(t458) = t452.
              IF t458 IS INITIAL.
                t457 = abap_true.
              ENDIF.
              t456 = xsdbool( t457 = abap_false ).
              t451 = t456.
              t442 = t451.
            ENDIF.
            t441 = t442.
            IF t442 = abap_true.
              DATA t459 TYPE abap_bool.
              DATA t460 TYPE string.
              DATA t461 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t462) = t434.
              t461 = t462.
              t460 = t461->abap.
              DATA t463 TYPE string.
              DATA t464 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t465) = t437.
              t464 = t465.
              t463 = t464->abap.
              t459 = xsdbool( t460 = t463 ).
              t441 = t459.
            ENDIF.
            t440 = t441.
            IF t441 = abap_true.
              DATA t466 TYPE abap_bool.
              DATA t467 TYPE f.
              DATA t468 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t469) = t434.
              t468 = t469.
              t467 = t468->length.
              DATA t470 TYPE f.
              DATA t471 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t472) = t437.
              t471 = t472.
              t470 = t471->length.
              t466 = xsdbool( t467 <> t470 ).
              t440 = t466.
            ENDIF.
            IF t440 = abap_true.
              DATA(t473) = VALUE string( ).
              DATA(t474) = VALUE string( ).
              DATA(t475) = VALUE string( ).
              DATA(t476) = VALUE string( ).
              DATA t477 TYPE string.
              DATA t478 TYPE string.
              DATA(t479) = |VALUE, source type |.
              DATA t480 TYPE string.
              DATA t481 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t482) = t437.
              t481 = t482.
              t480 = t481->abap.
              DATA(t483) = strlen( t479 ).
              t478 = |{ t479 }{ t480 }|.
              DATA(t484) = | LENGTH |.
              DATA(t485) = strlen( t478 ).
              t477 = |{ t478 }{ t484 }|.
              DATA(t486) = VALUE string( ).
              DATA t487 TYPE f.
              DATA t488 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t489) = t437.
              t488 = t489.
              t487 = t488->length.
              IF t487 <> trunc( t487 ) OR t487 > range_safe_integer OR t487 < 0 - range_safe_integer.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              DATA(t490) = CONV int8( t487 ).
              t486 = |{ t490 }|.
              DATA(t491) = strlen( t477 ).
              t476 = |{ t477 }{ t486 }|.
              DATA(t492) = | not compatible |.
              DATA(t493) = strlen( t476 ).
              t475 = |{ t476 }{ t492 }|.
              DATA(t494) = VALUE string( ).
              DATA(t495) = VALUE string( ).
              DATA t496 TYPE string.
              DATA t497 TYPE string.
              DATA(t498) = |with row type |.
              DATA t499 TYPE string.
              DATA t500 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t501) = t434.
              t500 = t501.
              t499 = t500->abap.
              DATA(t502) = strlen( t498 ).
              t497 = |{ t498 }{ t499 }|.
              DATA(t503) = | LENGTH |.
              DATA(t504) = strlen( t497 ).
              t496 = |{ t497 }{ t503 }|.
              DATA(t505) = VALUE string( ).
              DATA t506 TYPE f.
              DATA t507 TYPE REF TO zcl_lnt_shape_164098b6.
              DATA(t508) = t434.
              t507 = t508.
              t506 = t507->length.
              IF t506 <> trunc( t506 ) OR t506 > range_safe_integer OR t506 < 0 - range_safe_integer.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              DATA(t509) = CONV int8( t506 ).
              t505 = |{ t509 }|.
              DATA(t510) = strlen( t496 ).
              t495 = |{ t496 }{ t505 }|.
              DATA(t511) = ||.
              DATA(t512) = strlen( t495 ).
              t494 = |{ t495 }{ t511 }|.
              DATA(t513) = strlen( t475 ).
              t474 = |{ t475 }{ t494 }|.
              t473 = t474.
              DATA t514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t515) = t2.
              t514 = t515->issues.
              DATA t516 TYPE REF TO zcl_lnt_issue.
              DATA(t517) = t2.
              DATA t518 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t519) = t401.
              t518 = t519->get_first_token( ).
              DATA(t520) = t473.
              DATA t521 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t521.
              t516 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t517 i_token = t518 i_message_26cb = t520 i_fix = t521 ).
              t514->load( ).
              APPEND t516 TO t514->items.
              t514->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t522 TYPE abap_bool.
    DATA(t523) = t12.
    DATA(t524) = abap_true.
    t522 = xsdbool( t523 = t524 ).
    IF t522 = abap_true.
      DATA t525 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t526 TYPE REF TO zcl_lnt_current_scope.
      DATA(t527) = t2.
      t526 = t527->scope.
      DATA t528 TYPE REF TO zcl_lnt_position.
      DATA t529 TYPE REF TO zcl_lnt_abstract_token.
      DATA t530 TYPE REF TO zcl_lnt_abstract_token.
      DATA t531 TYPE REF TO zcl_lnt_expression_node.
      DATA(t532) = t1.
      t531 = t532.
      t530 = t531->get_last_token( ).
      t529 = t530.
      DATA t533 TYPE REF TO zcl_lnt_position.
      DATA t534 TYPE f.
      DATA t535 TYPE REF TO zcl_lnt_position.
      DATA t536 TYPE REF TO zcl_lnt_position.
      DATA(t537) = t529.
      t536 = t537->start.
      t535 = t536.
      DATA t538 TYPE f.
      DATA(t539) = t535.
      t538 = t539->row.
      t534 = t538.
      DATA t540 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t541 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t542 TYPE REF TO zcl_lnt_position.
      DATA t543 TYPE REF TO zcl_lnt_position.
      DATA(t544) = t529.
      t543 = t544->start.
      t542 = t543.
      DATA t545 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t546) = t542.
      t545 = t546->col.
      t541 = t545.
      DATA t547 TYPE f.
      DATA t548 TYPE i.
      DATA t549 TYPE string.
      DATA(t550) = t529.
      t549 = t550->str.
      DATA(t551) = strlen( t549 ).
      t548 = t551.
      t547 = t548.
      DATA(t552) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t552->has = abap_true.
      t552->value = t547.
      t540 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t541 right = t552 op = `+` ).
      t533 = NEW zcl_lnt_position( i_row = t534 i_col = t540 ).
      t528 = t533.
      t525 = t526->pop( i_end = t528 ).
    ENDIF.
    DATA t553 TYPE f.
    DATA(t554) = CONV f( 0 ).
    t553 = t554.
    DO.
      DATA t555 TYPE abap_bool.
      DATA(t556) = t553.
      DATA(t557) = t29.
      t555 = xsdbool( t556 < t557 ).
      IF t555 = abap_false.
        EXIT.
      ENDIF.
      DATA t558 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t559 TYPE REF TO zcl_lnt_current_scope.
      DATA(t560) = t2.
      t559 = t560->scope.
      DATA t561 TYPE REF TO zcl_lnt_position.
      DATA t562 TYPE REF TO zcl_lnt_abstract_token.
      DATA t563 TYPE REF TO zcl_lnt_abstract_token.
      DATA t564 TYPE REF TO zcl_lnt_expression_node.
      DATA(t565) = t1.
      t564 = t565.
      t563 = t564->get_last_token( ).
      t562 = t563.
      DATA t566 TYPE REF TO zcl_lnt_position.
      DATA t567 TYPE f.
      DATA t568 TYPE REF TO zcl_lnt_position.
      DATA t569 TYPE REF TO zcl_lnt_position.
      DATA(t570) = t562.
      t569 = t570->start.
      t568 = t569.
      DATA t571 TYPE f.
      DATA(t572) = t568.
      t571 = t572->row.
      t567 = t571.
      DATA t573 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t574 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t575 TYPE REF TO zcl_lnt_position.
      DATA t576 TYPE REF TO zcl_lnt_position.
      DATA(t577) = t562.
      t576 = t577->start.
      t575 = t576.
      DATA t578 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t579) = t575.
      t578 = t579->col.
      t574 = t578.
      DATA t580 TYPE f.
      DATA t581 TYPE i.
      DATA t582 TYPE string.
      DATA(t583) = t562.
      t582 = t583->str.
      DATA(t584) = strlen( t582 ).
      t581 = t584.
      t580 = t581.
      DATA(t585) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t585->has = abap_true.
      t585->value = t580.
      t573 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t574 right = t585 op = `+` ).
      t566 = NEW zcl_lnt_position( i_row = t567 i_col = t573 ).
      t561 = t566.
      t558 = t559->pop( i_end = t561 ).
      DATA t586 TYPE f.
      DATA(t587) = t553.
      DATA(t588) = CONV f( 1 ).
      t586 = t587 + t588.
      t553 = t586.
    ENDDO.
    DATA(t589) = VALUE abap_bool( ).
    DATA(t590) = VALUE abap_bool( ).
    DATA t591 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t591.
    DATA t592 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t593) = t3.
    t592 = t593.
    DATA t594 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t594.
    DATA(t595) = VALUE abap_bool( ).
    DATA(t596) = t592.
    IF t596 IS INITIAL.
      t595 = abap_true.
    ENDIF.
    IF t595 = abap_true.
      DATA t597 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t597.
      t594 = t597.
    ELSE.
      DATA t598 TYPE abap_bool.
      DATA t599 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t600) = t592.
      t599 = t600.
      t598 = t599->is_generic( ).
      DATA(t601) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t601->has = abap_true.
      t601->value = t598.
      t594 = t601.
    ENDIF.
    t591 = t594.
    IF t591 IS BOUND.
      IF t591->has = abap_true.
        t590 = xsdbool( t591->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t589 = t590.
    IF t590 = abap_true.
      DATA t602 TYPE abap_bool.
      DATA(t603) = t240.
      t602 = xsdbool( t603 IS BOUND ).
      t589 = t602.
    ENDIF.
    IF t589 = abap_true.
      DATA t604 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t604.
      DATA(t605) = abap_true.
      IF t605 = abap_true.
        DATA t606 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t607) = t240.
        t606 = t607.
        t604 = t606.
      ELSE.
        DATA t608 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t608.
        t604 = t608.
      ENDIF.
      result = t604.
      RETURN.
    ENDIF.
    DATA t609 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t609.
    DATA t610 TYPE abap_bool.
    DATA(t611) = t3.
    t610 = xsdbool( t611 IS BOUND ).
    IF t610 = abap_true.
      DATA t612 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t612.
      DATA(t613) = abap_true.
      IF t613 = abap_true.
        DATA t614 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t615) = t3.
        t614 = t615.
        t612 = t614.
      ELSE.
        DATA t616 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t616.
        t612 = t616.
      ENDIF.
      t609 = t612.
    ELSE.
      DATA(t617) = t240.
      t609 = t617.
    ENDIF.
    result = t609.

  ENDMETHOD.

  METHOD inserts_using_table_key.
    DATA(t1) = i_target_type.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
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
    DATA(t10) = t1.
    t9 ?= t10.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_itable_key.
    DATA t13 TYPE REF TO zcl_lnt_itable_key.
    DATA t14 TYPE REF TO zcl_lnt_itable_options.
    DATA(t15) = t8.
    t14 = t15->options.
    t13 = t14->zlnt_view_read_sr_48b89cc62ab9( ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t12.
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
      DATA(t22) = t12.
      t21 = t22.
      t20 = t21->zlnt_view_read_sr_f361ef311f50( ).
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
    DATA(t26) = t6.
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
      DATA(t35) = t6.
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
    DATA(t1) = i_type_9913.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_character_type ).
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zcl_lnt_shape_164098b6.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA t6 TYPE REF TO zcl_lnt_shape_164098b6.
        DATA t7 TYPE string.
        DATA(t8) = |c|.
        t7 = t8.
        DATA t9 TYPE f.
        DATA t10 TYPE f.
        DATA t11 TYPE REF TO zcl_lnt_character_type.
        DATA t12 TYPE REF TO zcl_lnt_character_type.
        DATA(t13) = t1.
        t12 ?= t13.
        t11 = t12.
        DATA t14 TYPE f.
        DATA(t15) = t11.
        t14 = t15->length.
        t10 = t14.
        t9 = t10.
        t6 = NEW zcl_lnt_shape_164098b6( i_abap = t7 i_length = t9 ).
        CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
        t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t16 ).
        ENDIF.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t17 ).
        ENDIF.
        CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
        t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t18) = |abap|.
        DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t19.
        IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
        ENDIF.
        DATA(t20) = |length|.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
        ENDIF.
        t4 = t6.
      ELSE.
        DATA t22 TYPE REF TO zcl_lnt_shape_164098b6.
        CLEAR t22.
        t4 = t22.
      ENDIF.
      result = t4.
      RETURN.
    ELSE.
      DATA t23 TYPE abap_bool.
      DATA(t24) = t1.
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_hex_type ).
      IF t23 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_shape_164098b6.
        CLEAR t25.
        DATA(t26) = abap_true.
        IF t26 = abap_true.
          DATA t27 TYPE REF TO zcl_lnt_shape_164098b6.
          DATA t28 TYPE string.
          DATA(t29) = |x|.
          t28 = t29.
          DATA t30 TYPE f.
          DATA t31 TYPE f.
          DATA t32 TYPE REF TO zcl_lnt_hex_type.
          DATA t33 TYPE REF TO zcl_lnt_hex_type.
          DATA(t34) = t1.
          t33 ?= t34.
          t32 = t33.
          DATA t35 TYPE f.
          DATA(t36) = t32.
          t35 = t36->length.
          t31 = t35.
          t30 = t31.
          t27 = NEW zcl_lnt_shape_164098b6( i_abap = t28 i_length = t30 ).
          CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
          t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t37.
          IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t37 ).
          ENDIF.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t38.
          IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t38 ).
          ENDIF.
          CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
          t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t39) = |abap|.
          DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t40.
          IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
          ENDIF.
          DATA(t41) = |length|.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t42.
          IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
          ENDIF.
          t25 = t27.
        ELSE.
          DATA t43 TYPE REF TO zcl_lnt_shape_164098b6.
          CLEAR t43.
          t25 = t43.
        ENDIF.
        result = t25.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_shape_164098b6.
    CLEAR t44.
    result = t44.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d848_c57a8b36aa9d.
  ENDMETHOD.
ENDCLASS.
