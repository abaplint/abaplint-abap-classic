* TS: src/abap/5_syntax/statements/read_table.ts:14:1 ReadTable
CLASS zcl_lnt_sy_read_table DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_read_table IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = t1.
    t5 = t6->concat_tokens( ).
    DATA(t7) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = t1.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t16) = t12.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA(t18) = t12.
    t11 = t18.
    t9 = t10->find_direct_expressions_multi( i_type_9913 = t11 ).
    t8 = t9.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA(t21) = t8.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    t21->load( ).
    CLEAR t22.
    READ TABLE t21->items INDEX 1 INTO t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    CLEAR t20.
    IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t23 ?= t22.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t24 = t23->as_ref( ).
      t20 ?= t24.
    ELSE.
      t20 ?= t22.
    ENDIF.
    t19 = t20.
    DATA t25 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t19.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = t19.
        t30 = t32.
      ELSE.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        t30 = t33.
      ENDIF.
      DATA(t34) = t2.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      t29 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t34 i_target_type = t35 i_write_reference = t36 i_allow_generic_deference = t37 i_read_reference = t38 ).
      t26 = t29.
    ELSE.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      t26 = t39.
    ENDIF.
    t25 = t26.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t41.
    DATA(t42) = t25.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    t43 = t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t41.
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    t40 = t45.
    IF t40 = abap_true.
      DATA(t47) = VALUE string( ).
      DATA(t48) = |No source type determined, read table|.
      t47 = t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA(t50) = t2.
      t49 = t50->issues.
      DATA t51 TYPE REF TO zcl_lnt_issue.
      CLEAR t51.
      DATA(t52) = t2.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      DATA(t54) = t1.
      t53 = t54->get_first_token( ).
      DATA(t55) = t47.
      DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t56.
      t51 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t52 i_token = t53 i_message_26cb = t55 i_fix = t56 ).
      t49->load( ).
      APPEND t51 TO t49->items.
      t49->save( ).
      RETURN.
    ELSE.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t25.
      t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t57 = abap_true.
      ELSE.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t25.
        t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t60 = xsdbool( t61 = abap_false ).
        t59 = t60.
        IF t60 = abap_true.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = t25.
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_void_type ).
          t63 = xsdbool( t64 = abap_false ).
          t59 = t63.
        ENDIF.
        IF t59 = abap_true.
          DATA(t66) = VALUE string( ).
          DATA(t67) = |Read table, not a table type|.
          t66 = t67.
          DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t68.
          DATA(t69) = t2.
          t68 = t69->issues.
          DATA t70 TYPE REF TO zcl_lnt_issue.
          CLEAR t70.
          DATA(t71) = t2.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t72.
          DATA(t73) = t1.
          t72 = t73->get_first_token( ).
          DATA(t74) = t66.
          DATA t75 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t75.
          t70 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t71 i_token = t72 i_message_26cb = t74 i_fix = t75 ).
          t68->load( ).
          APPEND t70 TO t68->items.
          t68->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t76.
    DATA t77 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_union_297610d4.
    CLEAR t78.
    DATA t79 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t79.
    DATA(t80) = t25.
    t79 = t80.
    t78 ?= t79.
    t77 ?= t78.
    t76 = t77.
    DATA(t81) = VALUE abap_bool( ).
    DATA(t82) = t76.
    t81 = xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t81 = abap_true.
      DATA t83 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t85.
      DATA(t86) = t76.
      t85 ?= t86.
      t84 = t85.
      DATA t87 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t87.
      DATA(t88) = t84.
      t87 = t88->row_type.
      t83 = t87.
      t76 = t83.
    ENDIF.
    DATA t89 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t90.
    DATA(t91) = t1.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d130_b1d921bbb09b.
    t90 = t91->find_direct_expression( i_type_9913 = t92 ).
    t89 = t90.
    DATA(t93) = VALUE abap_bool( ).
    DATA t94 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t94.
    DATA(t95) = t89.
    t94 = t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    t96 = t97.
    DATA(t98) = VALUE abap_bool( ).
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = t94.
    IF t100 IS INITIAL.
      t99 = abap_true.
    ENDIF.
    t98 = xsdbool( t99 = abap_false ).
    t93 = t98.
    IF t93 = abap_true.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t101.
      DATA(t102) = t89.
      t101 = t102.
      DATA(t103) = t2.
      DATA(t104) = t76.
      zcl_lnt_sy_cmpnnt_cmpr_smpl=>run_syntax( i_node = t101 i_input_967e = t103 i_row_type = t104 ).
    ENDIF.
    DATA t105 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t105.
    DATA t106 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t106.
    DATA(t107) = t1.
    DATA(t108) = |INDEX|.
    t106 = t107->find_expression_after_token( i_text = t108 ).
    t105 = t106.
    DATA(t109) = VALUE abap_bool( ).
    DATA(t110) = t105.
    t109 = xsdbool( t110 IS BOUND ).
    IF t109 = abap_true.
      DATA t111 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t111.
      DATA t112 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t112.
      DATA t113 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t115.
        DATA(t116) = t105.
        t115 = t116.
        t113 = t115.
      ELSE.
        DATA t117 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t117.
        t113 = t117.
      ENDIF.
      DATA(t118) = t2.
      DATA t119 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t119.
      DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t121.
      DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t122.
      t112 = zcl_lnt_sy_source=>run_syntax( i_node = t113 i_input_967e = t118 i_target_type = t119 i_write_reference = t120 i_allow_generic_deference = t121 i_read_reference = t122 ).
      t111 = t112.
      DATA(t123) = VALUE abap_bool( ).
      DATA(t124) = VALUE abap_bool( ).
      DATA t125 TYPE REF TO zcl_lnt_type_utils.
      CLEAR t125.
      DATA t126 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t126.
      DATA(t127) = t2.
      t126 = t127->scope.
      t125 = NEW zcl_lnt_type_utils( i_scope = t126 ).
      DATA(t128) = t111.
      DATA t129 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t130.
      t129 = zcl_lnt_integer_type=>get_db65( i_input_967e = t130 ).
      t124 = t125->is_assignable( i_source_75cf = t128 i_target_5f8a = t129 ).
      DATA(t131) = abap_false.
      t123 = xsdbool( t124 = t131 ).
      IF t123 = abap_true.
        DATA(t132) = VALUE string( ).
        DATA(t133) = VALUE string( ).
        DATA(t134) = |READ TABLE, INDEX must be simple, got |.
        DATA(t135) = VALUE string( ).
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA t138 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t140.
        DATA(t141) = t111.
        t140 = t141.
        DATA t142 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t142.
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = t140.
        IF t144 IS INITIAL.
          t143 = abap_true.
        ENDIF.
        IF t143 = abap_true.
          DATA t145 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t145.
          t142 = t145.
        ELSE.
          DATA t146 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t147.
          DATA(t148) = t140.
          t147 = t148.
          t146 = t147->zlnt_builtin_clas_3f891b097658( ).
          t142 = t146.
        ENDIF.
        t139 = t142.
        t138 = t139.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA(t150) = VALUE abap_bool( ).
        DATA(t151) = t138.
        IF t151 IS INITIAL.
          t150 = abap_true.
        ENDIF.
        IF t150 = abap_true.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          t149 = t152.
        ELSE.
          DATA(t153) = VALUE string( ).
          DATA t154 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t154.
          DATA(t155) = t138.
          t154 = t155.
          t153 = t154->name.
          DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t156->has = abap_true.
          t156->value = t153.
          t149 = t156.
        ENDIF.
        t137 = t149.
        t136 = t137.
        DATA(t157) = VALUE string( ).
        DATA(t158) = VALUE abap_bool( ).
        DATA(t159) = t136.
        IF t159 IS INITIAL.
          t158 = abap_true.
        ELSEIF t159->has = abap_false.
          t158 = abap_true.
        ENDIF.
        IF t158 = abap_true.
          DATA(t160) = |undefined|.
          t157 = t160.
        ELSE.
          DATA(t161) = VALUE string( ).
          DATA(t162) = t136.
          t161 = t162->value.
          t157 = t161.
        ENDIF.
        t135 = t157.
        DATA(t163) = strlen( t134 ).
        t133 = |{ t134 }{ t135 }|.
        t132 = t133.
        DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t164.
        DATA(t165) = t2.
        t164 = t165->issues.
        DATA t166 TYPE REF TO zcl_lnt_issue.
        CLEAR t166.
        DATA(t167) = t2.
        DATA t168 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t168.
        DATA(t169) = t1.
        t168 = t169->get_first_token( ).
        DATA(t170) = t132.
        DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t171.
        t166 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t167 i_token = t168 i_message_26cb = t170 i_fix = t171 ).
        t164->load( ).
        APPEND t166 TO t164->items.
        t164->save( ).
        RETURN.
      ELSE.
        DATA(t172) = VALUE abap_bool( ).
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = t25.
        t173 = xsdbool( t174 IS BOUND AND t174 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t172 = t173.
        IF t173 = abap_true.
          DATA(t175) = VALUE abap_bool( ).
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          DATA t177 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t177.
          DATA t178 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t178.
          DATA(t179) = t25.
          t178 ?= t179.
          t177 = t178.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          DATA t181 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t181.
          DATA t182 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t182.
          DATA t183 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t183.
          DATA(t184) = t177.
          t183 = t184->options.
          t182 = t183->zlnt_view_read_sr_48b89cc62ab9( ).
          t181 = t182.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA(t186) = VALUE abap_bool( ).
          DATA(t187) = t181.
          IF t187 IS INITIAL.
            t186 = abap_true.
          ENDIF.
          IF t186 = abap_true.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t188.
            t185 = t188.
          ELSE.
            DATA(t189) = VALUE string( ).
            DATA t190 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t190.
            DATA(t191) = t181.
            t190 = t191.
            t189 = t190->zlnt_view_read_sr_f361ef311f50( ).
            DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t192->has = abap_true.
            t192->value = t189.
            t185 = t192.
          ENDIF.
          t180 = t185.
          t176 = t180.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          DATA(t194) = abap_true.
          IF t194 = abap_true.
            DATA(t195) = |HASHED|.
            DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t196->has = abap_true.
            t196->value = t195.
            t193 = t196.
          ELSE.
            DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t197.
            t193 = t197.
          ENDIF.
          DATA(t198) = VALUE abap_bool( ).
          DATA(t199) = VALUE abap_bool( ).
          IF t176 IS BOUND.
            t198 = t176->has.
          ENDIF.
          IF t193 IS BOUND.
            t199 = t193->has.
          ENDIF.
          IF t198 = t199.
            IF t198 = abap_false.
              t175 = abap_true.
            ELSEIF t176->value = t193->value.
              t175 = abap_true.
            ENDIF.
          ENDIF.
          t172 = t175.
        ENDIF.
        IF t172 = abap_true.
          DATA(t200) = VALUE string( ).
          DATA(t201) = |INDEX on hashed table not possible|.
          t200 = t201.
          DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t202.
          DATA(t203) = t2.
          t202 = t203->issues.
          DATA t204 TYPE REF TO zcl_lnt_issue.
          CLEAR t204.
          DATA(t205) = t2.
          DATA t206 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t206.
          DATA(t207) = t1.
          t206 = t207->get_first_token( ).
          DATA(t208) = t200.
          DATA t209 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t209.
          t204 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t205 i_token = t206 i_message_26cb = t208 i_fix = t209 ).
          t202->load( ).
          APPEND t204 TO t202->items.
          t202->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t210.
    DATA t211 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t211.
    DATA(t212) = t1.
    DATA(t213) = |FROM|.
    t211 = t212->find_expression_after_token( i_text = t213 ).
    t210 = t211.
    DATA(t214) = VALUE abap_bool( ).
    DATA(t215) = t210.
    t214 = xsdbool( t215 IS BOUND ).
    IF t214 = abap_true.
      DATA t216 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t216.
      DATA t217 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t217.
      DATA t218 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t218.
      DATA(t219) = abap_true.
      IF t219 = abap_true.
        DATA t220 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t220.
        DATA(t221) = t210.
        t220 = t221.
        t218 = t220.
      ELSE.
        DATA t222 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t222.
        t218 = t222.
      ENDIF.
      DATA(t223) = t2.
      DATA t224 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t225.
      DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t226.
      DATA t227 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t227.
      t217 = zcl_lnt_sy_source=>run_syntax( i_node = t218 i_input_967e = t223 i_target_type = t224 i_write_reference = t225 i_allow_generic_deference = t226 i_read_reference = t227 ).
      t216 = t217.
      DATA(t228) = VALUE abap_bool( ).
      DATA(t229) = VALUE abap_bool( ).
      DATA t230 TYPE REF TO zcl_lnt_type_utils.
      CLEAR t230.
      DATA t231 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t231.
      DATA(t232) = t2.
      t231 = t232->scope.
      t230 = NEW zcl_lnt_type_utils( i_scope = t231 ).
      DATA(t233) = t216.
      DATA t234 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t234.
      DATA(t235) = abap_true.
      IF t235 = abap_true.
        DATA(t236) = t76.
        t234 = t236.
      ELSE.
        DATA t237 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t237.
        t234 = t237.
      ENDIF.
      t229 = t230->is_assignable( i_source_75cf = t233 i_target_5f8a = t234 ).
      DATA(t238) = abap_false.
      t228 = xsdbool( t229 = t238 ).
      IF t228 = abap_true.
        DATA(t239) = VALUE string( ).
        DATA(t240) = |READ TABLE, FROM must be compatible|.
        t239 = t240.
        DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t241.
        DATA(t242) = t2.
        t241 = t242->issues.
        DATA t243 TYPE REF TO zcl_lnt_issue.
        CLEAR t243.
        DATA(t244) = t2.
        DATA t245 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t245.
        DATA t246 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t246.
        DATA(t247) = t210.
        t246 = t247.
        t245 = t246->get_first_token( ).
        DATA(t248) = t239.
        DATA t249 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t249.
        t243 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t244 i_token = t245 i_message_26cb = t248 i_fix = t249 ).
        t241->load( ).
        APPEND t243 TO t241->items.
        t241->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t250 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t250.
    DATA t251 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t251.
    DATA(t252) = t1.
    DATA(t253) = |KEY|.
    t251 = t252->find_expression_after_token( i_text = t253 ).
    t250 = t251.
    DATA(t254) = t8.
    DATA t255 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t255.
    DATA t256 TYPE REF TO object.
    CLEAR t256.
    DATA(t257) = VALUE i( ).
    DO.
      t254->load( ).
      IF t257 >= lines( t254->items ).
        EXIT.
      ENDIF.
      CLEAR t256.
      READ TABLE t254->items INDEX t257 + 1 INTO t256.
      t257 = t257 + 1.
      DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t258.
      CLEAR t255.
      IF t256 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t258 ?= t256.
        DATA t259 TYPE REF TO object.
        CLEAR t259.
        t259 = t258->as_ref( ).
        t255 ?= t259.
      ELSE.
        t255 ?= t256.
      ENDIF.
      DATA(t260) = VALUE abap_bool( ).
      DATA(t261) = VALUE abap_bool( ).
      DATA(t262) = VALUE abap_bool( ).
      DATA(t263) = t255.
      DATA(t264) = t19.
      DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t265.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t266.
      CLEAR t265.
      IF t263 IS BOUND.
        DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t267.
        DATA t268 TYPE REF TO object.
        CLEAR t268.
        CLEAR t267.
        t268 = t263.
        TRY.
            t265 ?= t268.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS NOT BOUND.
          TRY.
              t267 ?= t263.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t267 IS BOUND.
            t265 = t267->source( ).
          ENDIF.
          IF t265 IS NOT BOUND.
            CREATE OBJECT t265.
            t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t265->oval = t263.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t266.
      IF t264 IS BOUND.
        DATA t269 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t269.
        DATA t270 TYPE REF TO object.
        CLEAR t270.
        CLEAR t269.
        t270 = t264.
        TRY.
            t266 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS NOT BOUND.
          TRY.
              t269 ?= t264.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t269 IS BOUND.
            t266 = t269->source( ).
          ENDIF.
          IF t266 IS NOT BOUND.
            CREATE OBJECT t266.
            t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t266->oval = t264.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t265 IS BOUND.
        t262 = t265->strict_equals( t266 ).
      ELSE.
        t262 = xsdbool( t266 IS NOT BOUND ).
      ENDIF.
      t261 = t262.
      IF t262 = abap_false.
        DATA(t271) = VALUE abap_bool( ).
        DATA t272 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t272.
        DATA(t273) = abap_true.
        IF t273 = abap_true.
          DATA(t274) = t255.
          t272 = t274.
        ELSE.
          DATA t275 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t275.
          t272 = t275.
        ENDIF.
        DATA(t276) = t105.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        CLEAR t277.
        IF t272 IS BOUND.
          CLEAR t277.
          IF t272 IS BOUND.
            DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t279.
            DATA t280 TYPE REF TO object.
            CLEAR t280.
            CLEAR t279.
            t280 = t272.
            TRY.
                t277 ?= t280.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t277 IS NOT BOUND.
              TRY.
                  t279 ?= t272.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t279 IS BOUND.
                t277 = t279->source( ).
              ENDIF.
              IF t277 IS NOT BOUND.
                CREATE OBJECT t277.
                t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t277->oval = t272.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t278.
        IF t276 IS BOUND.
          CLEAR t278.
          IF t276 IS BOUND.
            DATA t281 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t281.
            DATA t282 TYPE REF TO object.
            CLEAR t282.
            CLEAR t281.
            t282 = t276.
            TRY.
                t278 ?= t282.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t278 IS NOT BOUND.
              TRY.
                  t281 ?= t276.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t281 IS BOUND.
                t278 = t281->source( ).
              ENDIF.
              IF t278 IS NOT BOUND.
                CREATE OBJECT t278.
                t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t278->oval = t276.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t277 IS BOUND.
          t271 = t277->strict_equals( t278 ).
        ELSE.
          t271 = xsdbool( t278 IS NOT BOUND ).
        ENDIF.
        t261 = t271.
      ENDIF.
      t260 = t261.
      IF t261 = abap_false.
        DATA(t283) = VALUE abap_bool( ).
        DATA t284 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t284.
        DATA(t285) = abap_true.
        IF t285 = abap_true.
          DATA(t286) = t255.
          t284 = t286.
        ELSE.
          DATA t287 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t287.
          t284 = t287.
        ENDIF.
        DATA(t288) = t210.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        CLEAR t289.
        IF t284 IS BOUND.
          CLEAR t289.
          IF t284 IS BOUND.
            DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t291.
            DATA t292 TYPE REF TO object.
            CLEAR t292.
            CLEAR t291.
            t292 = t284.
            TRY.
                t289 ?= t292.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t289 IS NOT BOUND.
              TRY.
                  t291 ?= t284.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t291 IS BOUND.
                t289 = t291->source( ).
              ENDIF.
              IF t289 IS NOT BOUND.
                CREATE OBJECT t289.
                t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t289->oval = t284.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t290.
        IF t288 IS BOUND.
          CLEAR t290.
          IF t288 IS BOUND.
            DATA t293 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t293.
            DATA t294 TYPE REF TO object.
            CLEAR t294.
            CLEAR t293.
            t294 = t288.
            TRY.
                t290 ?= t294.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t290 IS NOT BOUND.
              TRY.
                  t293 ?= t288.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t293 IS BOUND.
                t290 = t293->source( ).
              ENDIF.
              IF t290 IS NOT BOUND.
                CREATE OBJECT t290.
                t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t290->oval = t288.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t289 IS BOUND.
          t283 = t289->strict_equals( t290 ).
        ELSE.
          t283 = xsdbool( t290 IS NOT BOUND ).
        ENDIF.
        t260 = t283.
      ENDIF.
      IF t260 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t295 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t295.
      DATA t296 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t296.
      DATA t297 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t297.
      DATA(t298) = abap_true.
      IF t298 = abap_true.
        DATA(t299) = t255.
        t297 = t299.
      ELSE.
        DATA t300 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t300.
        t297 = t300.
      ENDIF.
      DATA(t301) = t2.
      DATA t302 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t302.
      DATA t303 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t303.
      DATA t304 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t304.
      DATA t305 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t305.
      t296 = zcl_lnt_sy_source=>run_syntax( i_node = t297 i_input_967e = t301 i_target_type = t302 i_write_reference = t303 i_allow_generic_deference = t304 i_read_reference = t305 ).
      t295 = t296.
      DATA(t306) = VALUE abap_bool( ).
      DATA t307 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t307.
      DATA(t308) = abap_true.
      IF t308 = abap_true.
        DATA(t309) = t255.
        t307 = t309.
      ELSE.
        DATA t310 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t310.
        t307 = t310.
      ENDIF.
      DATA(t311) = t250.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t313.
      CLEAR t312.
      IF t307 IS BOUND.
        CLEAR t312.
        IF t307 IS BOUND.
          DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t314.
          DATA t315 TYPE REF TO object.
          CLEAR t315.
          CLEAR t314.
          t315 = t307.
          TRY.
              t312 ?= t315.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t312 IS NOT BOUND.
            TRY.
                t314 ?= t307.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t314 IS BOUND.
              t312 = t314->source( ).
            ENDIF.
            IF t312 IS NOT BOUND.
              CREATE OBJECT t312.
              t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t312->oval = t307.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t313.
      IF t311 IS BOUND.
        CLEAR t313.
        IF t311 IS BOUND.
          DATA t316 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t316.
          DATA t317 TYPE REF TO object.
          CLEAR t317.
          CLEAR t316.
          t317 = t311.
          TRY.
              t313 ?= t317.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t313 IS NOT BOUND.
            TRY.
                t316 ?= t311.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t316 IS BOUND.
              t313 = t316->source( ).
            ENDIF.
            IF t313 IS NOT BOUND.
              CREATE OBJECT t313.
              t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t313->oval = t311.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t312 IS BOUND.
        t306 = t312->strict_equals( t313 ).
      ELSE.
        t306 = xsdbool( t313 IS NOT BOUND ).
      ENDIF.
      IF t306 = abap_true.
        DATA(t318) = VALUE abap_bool( ).
        DATA(t319) = VALUE abap_bool( ).
        DATA(t320) = VALUE abap_bool( ).
        DATA(t321) = t295.
        t320 = xsdbool( t321 IS BOUND AND t321 IS INSTANCE OF zcl_lnt_string_type ).
        t319 = t320.
        IF t320 = abap_false.
          DATA(t322) = VALUE abap_bool( ).
          DATA(t323) = VALUE abap_bool( ).
          DATA(t324) = t295.
          t323 = xsdbool( t324 IS BOUND AND t324 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t322 = t323.
          IF t323 = abap_true.
            DATA(t325) = VALUE abap_bool( ).
            DATA(t326) = VALUE abap_bool( ).
            DATA t327 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t327.
            DATA t328 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t328.
            DATA(t329) = t295.
            t328 ?= t329.
            t327 = t328.
            DATA(t330) = VALUE abap_bool( ).
            DATA t331 TYPE REF TO zcl_lnt_itable_options.
            CLEAR t331.
            DATA(t332) = t327.
            t331 = t332->options.
            t330 = t331->zlnt_view_read_sr_ec4602663c93( ).
            t326 = t330.
            DATA(t333) = abap_false.
            t325 = xsdbool( t326 = t333 ).
            t322 = t325.
          ENDIF.
          t319 = t322.
        ENDIF.
        t318 = t319.
        IF t319 = abap_false.
          DATA(t334) = VALUE abap_bool( ).
          DATA(t335) = t295.
          t334 = xsdbool( t335 IS BOUND AND t335 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t318 = t334.
        ENDIF.
        IF t318 = abap_true.
          DATA(t336) = VALUE string( ).
          DATA(t337) = |Key cannot be string or table or reference|.
          t336 = t337.
          DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t338.
          DATA(t339) = t2.
          t338 = t339->issues.
          DATA t340 TYPE REF TO zcl_lnt_issue.
          CLEAR t340.
          DATA(t341) = t2.
          DATA t342 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t342.
          DATA(t343) = t255.
          t342 = t343->get_first_token( ).
          DATA(t344) = t336.
          DATA t345 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t345.
          t340 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t341 i_token = t342 i_message_26cb = t344 i_fix = t345 ).
          t338->load( ).
          APPEND t340 TO t338->items.
          t338->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t346 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t346.
    DATA t347 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t347.
    DATA(t348) = t1.
    DATA(t349) = zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258.
    t347 = t348->find_direct_expression( i_type_9913 = t349 ).
    t346 = t347.
    DATA(t350) = VALUE abap_bool( ).
    DATA(t351) = t346.
    t350 = xsdbool( t351 IS BOUND ).
    IF t350 = abap_true.
      DATA(t352) = VALUE abap_bool( ).
      DATA(t353) = VALUE i( ).
      DATA(t354) = t3.
      DATA(t355) = | REFERENCE INTO |.
      DATA(t356) = strlen( t354 ).
      IF t355 IS INITIAL.
        t353 = 0.
      ELSE.
        FIND t355 IN t354 MATCH OFFSET t353.
        IF sy-subrc <> 0.
          t353 = -1.
        ENDIF.
      ENDIF.
      DATA(t357) = 0.
      t352 = xsdbool( t353 >= t357 ).
      IF t352 = abap_true.
        DATA t358 TYPE REF TO zcl_lnt_data_reference.
        CLEAR t358.
        DATA(t359) = t76.
        DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t360.
        t358 = NEW zcl_lnt_data_reference( i_type_9913 = t359 i_qualified_name = t360 ).
        t76 = t358.
      ENDIF.
      DATA t361 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t361.
      DATA t362 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t362.
      DATA t363 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t363.
      DATA(t364) = t346.
      t363 = t364.
      DATA(t365) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t362 = t363->find_first_expression( i_type_9913 = t365 ).
      t361 = t362.
      DATA t366 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t366.
      DATA t367 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t367.
      DATA t368 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t368.
      DATA(t369) = t346.
      t368 = t369.
      DATA(t370) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
      t367 = t368->find_direct_expression( i_type_9913 = t370 ).
      t366 = t367.
      DATA t371 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t371.
      DATA t372 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t372.
      DATA t373 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t373.
      DATA(t374) = t346.
      t373 = t374.
      DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t372 = t373->find_first_expression( i_type_9913 = t375 ).
      t371 = t372.
      DATA(t376) = VALUE abap_bool( ).
      DATA(t377) = t361.
      t376 = xsdbool( t377 IS BOUND ).
      IF t376 = abap_true.
        DATA t378 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t378.
        DATA(t379) = t361.
        t378 = t379.
        DATA(t380) = t2.
        DATA t381 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t381.
        DATA(t382) = abap_true.
        IF t382 = abap_true.
          DATA(t383) = t76.
          t381 = t383.
        ELSE.
          DATA t384 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t384.
          t381 = t384.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t378 i_input_967e = t380 i_type_9913 = t381 ).
      ELSE.
        DATA(t385) = VALUE abap_bool( ).
        DATA(t386) = t366.
        t385 = xsdbool( t386 IS BOUND ).
        IF t385 = abap_true.
          DATA t387 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t387.
          DATA(t388) = t366.
          t387 = t388.
          DATA(t389) = t2.
          DATA t390 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t390.
          DATA(t391) = abap_true.
          IF t391 = abap_true.
            DATA(t392) = t76.
            t390 = t392.
          ELSE.
            DATA t393 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t393.
            t390 = t393.
          ENDIF.
          zcl_lnt_sy_fs_target=>run_syntax( i_node = t387 i_input_967e = t389 i_type_9913 = t390 ).
        ELSE.
          DATA(t394) = VALUE abap_bool( ).
          DATA(t395) = t371.
          t394 = xsdbool( t395 IS BOUND ).
          IF t394 = abap_true.
            DATA t396 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t396.
            DATA t397 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t397.
            DATA t398 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t398.
            DATA(t399) = t371.
            t398 = t399.
            DATA(t400) = t2.
            t397 = zcl_lnt_sy_target=>run_syntax( i_node = t398 i_input_967e = t400 ).
            t396 = t397.
            DATA(t401) = VALUE abap_bool( ).
            DATA(t402) = VALUE abap_bool( ).
            DATA t403 TYPE REF TO zcl_lnt_type_utils.
            CLEAR t403.
            DATA t404 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t404.
            DATA(t405) = t2.
            t404 = t405->scope.
            t403 = NEW zcl_lnt_type_utils( i_scope = t404 ).
            DATA t406 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t406.
            DATA(t407) = abap_true.
            IF t407 = abap_true.
              DATA(t408) = t76.
              t406 = t408.
            ELSE.
              DATA t409 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t409.
              t406 = t409.
            ENDIF.
            DATA(t410) = t396.
            t402 = t403->is_assignable( i_source_75cf = t406 i_target_5f8a = t410 ).
            DATA(t411) = abap_false.
            t401 = xsdbool( t402 = t411 ).
            IF t401 = abap_true.
              DATA(t412) = VALUE string( ).
              DATA(t413) = |Incompatible types|.
              t412 = t413.
              DATA t414 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t414.
              DATA(t415) = t2.
              t414 = t415->issues.
              DATA t416 TYPE REF TO zcl_lnt_issue.
              CLEAR t416.
              DATA(t417) = t2.
              DATA t418 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t418.
              DATA(t419) = t1.
              t418 = t419->get_first_token( ).
              DATA(t420) = t412.
              DATA t421 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t421.
              t416 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t417 i_token = t418 i_message_26cb = t420 i_fix = t421 ).
              t414->load( ).
              APPEND t416 TO t414->items.
              t414->save( ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t422) = VALUE abap_bool( ).
    DATA(t423) = VALUE abap_bool( ).
    DATA t424 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t424.
    DATA(t425) = t346.
    t424 = t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    t426 = t427.
    DATA(t428) = VALUE abap_bool( ).
    DATA(t429) = t424.
    IF t429 IS INITIAL.
      t428 = abap_true.
    ENDIF.
    t423 = t428.
    t422 = t423.
    IF t423 = abap_true.
      DATA(t430) = VALUE abap_bool( ).
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = VALUE i( ).
      DATA(t433) = t3.
      DATA(t434) = | TRANSPORTING NO FIELDS |.
      DATA(t435) = strlen( t433 ).
      IF t434 IS INITIAL.
        t432 = 0.
      ELSE.
        FIND t434 IN t433 MATCH OFFSET t432.
        IF sy-subrc <> 0.
          t432 = -1.
        ENDIF.
      ENDIF.
      DATA(t436) = 0.
      t431 = xsdbool( t432 >= t436 ).
      DATA(t437) = abap_false.
      t430 = xsdbool( t431 = t437 ).
      t422 = t430.
    ENDIF.
    IF t422 = abap_true.
      DATA(t438) = VALUE abap_bool( ).
      DATA(t439) = VALUE abap_bool( ).
      DATA(t440) = t25.
      t439 = xsdbool( t440 IS BOUND AND t440 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t438 = t439.
      IF t439 = abap_true.
        DATA(t441) = VALUE abap_bool( ).
        DATA(t442) = VALUE abap_bool( ).
        DATA t443 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t443.
        DATA t444 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t444.
        DATA(t445) = t25.
        t444 ?= t445.
        t443 = t444.
        DATA(t446) = VALUE abap_bool( ).
        DATA t447 TYPE REF TO zcl_lnt_itable_options.
        CLEAR t447.
        DATA(t448) = t443.
        t447 = t448->options.
        t446 = t447->zlnt_view_read_sr_ec4602663c93( ).
        t442 = t446.
        DATA(t449) = abap_false.
        t441 = xsdbool( t442 = t449 ).
        t438 = t441.
      ENDIF.
      IF t438 = abap_true.
        DATA(t450) = VALUE string( ).
        DATA(t451) = |READ TABLE, define INTO or TRANSPORTING NO FIELDS|.
        t450 = t451.
        DATA t452 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t452.
        DATA(t453) = t2.
        t452 = t453->issues.
        DATA t454 TYPE REF TO zcl_lnt_issue.
        CLEAR t454.
        DATA(t455) = t2.
        DATA t456 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t456.
        DATA(t457) = t1.
        t456 = t457->get_first_token( ).
        DATA(t458) = t450.
        DATA t459 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t459.
        t454 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t455 i_token = t456 i_message_26cb = t458 i_fix = t459 ).
        t452->load( ).
        APPEND t454 TO t452->items.
        t452->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t460 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t460.
    DATA t461 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t461.
    DATA(t462) = t1.
    DATA(t463) = zlnt_runtime_desc_78196487750d=>zlnt_member_d351_5341159ff4cc.
    t461 = t462->find_direct_expression( i_type_9913 = t463 ).
    t460 = t461.
    DATA(t464) = VALUE abap_bool( ).
    DATA(t465) = VALUE abap_bool( ).
    DATA(t466) = VALUE abap_bool( ).
    DATA(t467) = VALUE abap_bool( ).
    DATA(t468) = t460.
    t467 = xsdbool( t468 IS BOUND ).
    t466 = t467.
    IF t467 = abap_true.
      DATA(t469) = VALUE abap_bool( ).
      DATA(t470) = VALUE abap_bool( ).
      DATA(t471) = t76.
      t470 = xsdbool( t471 IS BOUND AND t471 IS INSTANCE OF zcl_lnt_void_type ).
      t469 = xsdbool( t470 = abap_false ).
      t466 = t469.
    ENDIF.
    t465 = t466.
    IF t466 = abap_true.
      DATA(t472) = VALUE abap_bool( ).
      DATA(t473) = VALUE abap_bool( ).
      DATA(t474) = t76.
      t473 = xsdbool( t474 IS BOUND AND t474 IS INSTANCE OF zcl_lnt_unknown_type ).
      t472 = xsdbool( t473 = abap_false ).
      t465 = t472.
    ENDIF.
    t464 = t465.
    IF t465 = abap_true.
      DATA(t475) = VALUE abap_bool( ).
      DATA(t476) = VALUE abap_bool( ).
      DATA(t477) = t76.
      t476 = xsdbool( t477 IS BOUND AND t477 IS INSTANCE OF zcl_lnt_any_type ).
      t475 = xsdbool( t476 = abap_false ).
      t464 = t475.
    ENDIF.
    IF t464 = abap_true.
      DATA(t478) = VALUE abap_bool( ).
      DATA(t479) = VALUE abap_bool( ).
      DATA(t480) = t76.
      t479 = xsdbool( t480 IS BOUND AND t480 IS INSTANCE OF zcl_lnt_structure_type ).
      t478 = xsdbool( t479 = abap_false ).
      IF t478 = abap_true.
        DATA(t481) = VALUE string( ).
        DATA(t482) = |READ TABLE, source not structured|.
        t481 = t482.
        DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t483.
        DATA(t484) = t2.
        t483 = t484->issues.
        DATA t485 TYPE REF TO zcl_lnt_issue.
        CLEAR t485.
        DATA(t486) = t2.
        DATA t487 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t487.
        DATA(t488) = t1.
        t487 = t488->get_first_token( ).
        DATA(t489) = t481.
        DATA t490 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t490.
        t485 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t486 i_token = t487 i_message_26cb = t489 i_fix = t490 ).
        t483->load( ).
        APPEND t485 TO t483->items.
        t483->save( ).
        RETURN.
      ENDIF.
      DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t491.
      DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t492.
      DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t493.
      DATA t494 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t494.
      DATA t495 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t495.
      DATA(t496) = t460.
      t495 = t496.
      t494 = t495.
      DATA t497 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t497.
      DATA(t498) = VALUE abap_bool( ).
      DATA(t499) = t494.
      IF t499 IS INITIAL.
        t498 = abap_true.
      ENDIF.
      IF t498 = abap_true.
        DATA t500 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t500.
        t497 = t500.
      ELSE.
        DATA t501 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t501.
        DATA(t502) = t494.
        DATA(t503) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t501 = t502->find_direct_expressions( i_type_9913 = t503 ).
        t497 = t501.
      ENDIF.
      t493 = t497.
      t492 = t493.
      DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t504.
      DATA(t505) = VALUE abap_bool( ).
      DATA(t506) = t492.
      t505 = xsdbool( t506 IS BOUND ).
      IF t505 = abap_true.
        DATA t507 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t507.
        DATA(t508) = t492.
        t507 = t508.
        t504 = t507.
      ELSE.
        DATA t509 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t509.
        CREATE OBJECT t509.
        t504 = t509.
      ENDIF.
      t491 = t504.
      DATA t510 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t510.
      DATA t511 TYPE REF TO object.
      CLEAR t511.
      DATA(t512) = VALUE i( ).
      DO.
        t491->load( ).
        IF t512 >= lines( t491->items ).
          EXIT.
        ENDIF.
        CLEAR t511.
        READ TABLE t491->items INDEX t512 + 1 INTO t511.
        t512 = t512 + 1.
        DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t513.
        CLEAR t510.
        IF t511 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t513 ?= t511.
          DATA t514 TYPE REF TO object.
          CLEAR t514.
          t514 = t513->as_ref( ).
          t510 ?= t514.
        ELSE.
          t510 ?= t511.
        ENDIF.
        DATA(t515) = VALUE string( ).
        DATA(t516) = VALUE string( ).
        DATA(t517) = t510.
        t516 = t517->concat_tokens( ).
        t515 = t516.
        DATA(t518) = VALUE abap_bool( ).
        DATA(t519) = VALUE i( ).
        DATA(t520) = t515.
        DATA(t521) = |-|.
        DATA(t522) = strlen( t520 ).
        IF t521 IS INITIAL.
          t519 = 0.
        ELSE.
          FIND t521 IN t520 MATCH OFFSET t519.
          IF sy-subrc <> 0.
            t519 = -1.
          ENDIF.
        ENDIF.
        DATA(t523) = 0.
        t518 = xsdbool( t519 >= t523 ).
        IF t518 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t524) = VALUE abap_bool( ).
        DATA t525 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t525.
        DATA t526 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t526.
        DATA t527 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t527.
        DATA t528 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t528.
        DATA(t529) = t76.
        t528 ?= t529.
        t527 = t528.
        DATA(t530) = VALUE string( ).
        DATA(t531) = t515.
        t530 = t531.
        DATA t532 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t532.
        DATA t533 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        CLEAR t533.
        DATA(t534) = t527.
        t533 = t534->indexed.
        DATA(t535) = VALUE string( ).
        DATA(t536) = t530.
        DATA(t537) = strlen( t536 ).
        t535 = t536.
        IF t535 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t535 TO UPPER CASE.
        ELSE.
          t535 = zlnt_runtime_uppe_91169605024d=>full( t535 ).
        ENDIF.
        t532 = t533->get( p0 = t535 ).
        t526 = t532.
        t525 = t526.
        DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t538.
        DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t539.
        t538 = t539.
        DATA(t540) = VALUE abap_bool( ).
        DATA(t541) = t525.
        IF t541 IS INITIAL.
          t540 = abap_true.
        ENDIF.
        t524 = t540.
        IF t524 = abap_true.
          DATA(t542) = VALUE string( ).
          DATA(t543) = VALUE string( ).
          DATA(t544) = VALUE string( ).
          DATA(t545) = |READ TABLE, field |.
          DATA(t546) = t515.
          DATA(t547) = strlen( t545 ).
          t544 = |{ t545 }{ t546 }|.
          DATA(t548) = | not found in source|.
          DATA(t549) = strlen( t544 ).
          t543 = |{ t544 }{ t548 }|.
          t542 = t543.
          DATA t550 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t550.
          DATA(t551) = t2.
          t550 = t551->issues.
          DATA t552 TYPE REF TO zcl_lnt_issue.
          CLEAR t552.
          DATA(t553) = t2.
          DATA t554 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t554.
          DATA(t555) = t1.
          t554 = t555->get_first_token( ).
          DATA(t556) = t542.
          DATA t557 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t557.
          t552 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t553 i_token = t554 i_message_26cb = t556 i_fix = t557 ).
          t550->load( ).
          APPEND t552 TO t550->items.
          t550->save( ).
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d948_8c64817562d8.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
