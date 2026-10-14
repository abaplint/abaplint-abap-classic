* TS: src/abap/5_syntax/statements/find.ts:11:1 Find
CLASS zcl_lnt_sy_find DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS inline IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_find IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = t6.
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = t2.
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = t1.
    DATA(t21) = |RESULTS|.
    t19 = t20->find_expression_after_token( i_text = t21 ).
    t18 = t19.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t18.
    t23 = xsdbool( t24 IS BOUND ).
    t22 = t23.
    IF t23 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE REF TO zif_lnt_statement_runnable.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = t18.
      t27 = t28.
      t26 = t27->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_target ).
      t22 = t25.
    ENDIF.
    IF t22 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      t32 = t33.
      DATA(t34) = t32.
      DATA t35 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t36) = |OFFSET|.
      DATA t37 TYPE REF TO zcl_lnt_integer_type.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t38.
      t37 = zcl_lnt_integer_type=>get_db65( i_input_967e = t38 ).
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      t35 = NEW zcl_lnt_istructure_component( i_name = t36 i_type_9913 = t37 i_as_include = t39 i_suffix = t40 ).
      APPEND t35 TO t34->items.
      DATA(t41) = t32.
      DATA t42 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t43) = |LENGTH|.
      DATA t44 TYPE REF TO zcl_lnt_integer_type.
      DATA t45 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t45.
      t44 = zcl_lnt_integer_type=>get_db65( i_input_967e = t45 ).
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      t42 = NEW zcl_lnt_istructure_component( i_name = t43 i_type_9913 = t44 i_as_include = t46 i_suffix = t47 ).
      APPEND t42 TO t41->items.
      DATA(t48) = t32.
      t31 = t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = abap_true.
      IF t50 = abap_true.
        DATA(t51) = |SUBMATCH_RESULT|.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t51.
        t49 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t49 = t53.
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = abap_true.
      IF t55 = abap_true.
        DATA(t56) = |SUBMATCH_RESULT|.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t56.
        t54 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t54 = t58.
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      t30 = NEW zcl_lnt_structure_type( i_components = t31 i_qualified_name = t49 i_ddic_name = t54 i_description = t59 ).
      t29 = t30.
      DATA t60 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t64.
      t63 = t64.
      DATA(t65) = t63.
      DATA t66 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t67) = |LINE|.
      DATA t68 TYPE REF TO zcl_lnt_integer_type.
      DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t69.
      t68 = zcl_lnt_integer_type=>get_db65( i_input_967e = t69 ).
      DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      t66 = NEW zcl_lnt_istructure_component( i_name = t67 i_type_9913 = t68 i_as_include = t70 i_suffix = t71 ).
      APPEND t66 TO t65->items.
      DATA(t72) = t63.
      DATA t73 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t74) = |OFFSET|.
      DATA t75 TYPE REF TO zcl_lnt_integer_type.
      DATA t76 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t76.
      t75 = zcl_lnt_integer_type=>get_db65( i_input_967e = t76 ).
      DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      t73 = NEW zcl_lnt_istructure_component( i_name = t74 i_type_9913 = t75 i_as_include = t77 i_suffix = t78 ).
      APPEND t73 TO t72->items.
      DATA(t79) = t63.
      DATA t80 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t81) = |LENGTH|.
      DATA t82 TYPE REF TO zcl_lnt_integer_type.
      DATA t83 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t83.
      t82 = zcl_lnt_integer_type=>get_db65( i_input_967e = t83 ).
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t84.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      t80 = NEW zcl_lnt_istructure_component( i_name = t81 i_type_9913 = t82 i_as_include = t84 i_suffix = t85 ).
      APPEND t80 TO t79->items.
      DATA(t86) = t63.
      DATA t87 TYPE REF TO zcl_lnt_istructure_component.
      DATA(t88) = |SUBMATCHES|.
      DATA t89 TYPE REF TO zcl_lnt_ty_table_type.
      DATA(t90) = t29.
      DATA t91 TYPE REF TO zcl_lnt_itable_options.
      DATA(t92) = abap_false.
      DATA(t93) = |DEFAULT|.
      DATA t94 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t95.
      t91 = NEW zcl_lnt_itable_options( i_with_header = t92 i_key_type = t93 i_primary_key = t94 i_secondary = t95 ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      t89 = NEW zcl_lnt_ty_table_type( i_row_type = t90 i_options = t91 i_qualified_name = t96 i_description = t97 ).
      DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      t87 = NEW zcl_lnt_istructure_component( i_name = t88 i_type_9913 = t89 i_as_include = t98 i_suffix = t99 ).
      APPEND t87 TO t86->items.
      DATA(t100) = t63.
      t62 = t100.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      DATA(t102) = abap_true.
      IF t102 = abap_true.
        DATA(t103) = |MATCH_RESULT|.
        DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t104->has = abap_true.
        t104->value = t103.
        t101 = t104.
      ELSE.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        t101 = t105.
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA(t107) = abap_true.
      IF t107 = abap_true.
        DATA(t108) = |MATCH_RESULT|.
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = t108.
        t106 = t109.
      ELSE.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        t106 = t110.
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      t61 = NEW zcl_lnt_structure_type( i_components = t62 i_qualified_name = t101 i_ddic_name = t106 i_description = t111 ).
      t60 = t61.
      DATA(t112) = VALUE abap_bool( ).
      DATA t113 TYPE string.
      DATA t114 TYPE string.
      DATA(t115) = t1.
      t114 = t115->concat_tokens( ).
      DATA(t116) = strlen( t114 ).
      t113 = t114.
      IF t113 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t113 TO UPPER CASE.
      ELSE.
        t113 = zlnt_runtime_uppe_91169605024d=>full( t113 ).
      ENDIF.
      DATA(t117) = |FIND FIRST|.
      DATA(t118) = strlen( t113 ).
      DATA t119 TYPE i.
      DATA(t120) = VALUE i( ).
      DATA(t121) = VALUE string( ).
      t119 = strlen( t117 ).
      IF t119 = 0.
        t112 = abap_true.
      ELSEIF t119 <= t118.
        t120 = 0.
        t121 = t113+t120(t119).
        IF t121 = t117.
          t112 = abap_true.
        ENDIF.
      ENDIF.
      IF t112 = abap_true.
        DATA t122 TYPE REF TO zcl_lnt_expression_node.
        DATA t123 TYPE REF TO zcl_lnt_expression_node.
        DATA(t124) = t18.
        t123 = t124.
        t122 = t123.
        DATA t125 TYPE REF TO zcl_lnt_syntax_input.
        DATA(t126) = t2.
        t125 = t126.
        DATA t127 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t128) = t60.
        t127 = t128.
        DATA t129 TYPE REF TO zcl_lnt_expression_node.
        DATA t130 TYPE REF TO zcl_lnt_expression_node.
        DATA(t131) = t122.
        DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
        t130 = t131->find_direct_expression( i_type_9913 = t132 ).
        t129 = t130.
        DATA t133 TYPE abap_bool.
        DATA(t134) = t129.
        t133 = xsdbool( t134 IS BOUND ).
        IF t133 = abap_true.
          DATA t135 TYPE REF TO zcl_lnt_expression_node.
          DATA(t136) = t129.
          t135 = t136.
          DATA(t137) = t125.
          DATA t138 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t138.
          DATA(t139) = abap_true.
          IF t139 = abap_true.
            DATA(t140) = t127.
            t138 = t140.
          ELSE.
            DATA t141 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t141.
            t138 = t141.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t135 i_input_967e = t137 i_type_9913 = t138 ).
        ELSE.
          DATA t142 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t143) = t122.
          DATA(t144) = t125.
          t142 = zcl_lnt_sy_target=>run_syntax( i_node = t143 i_input_967e = t144 ).
        ENDIF.
      ELSE.
        DATA t145 TYPE REF TO zcl_lnt_expression_node.
        DATA t146 TYPE REF TO zcl_lnt_expression_node.
        DATA(t147) = t18.
        t146 = t147.
        t145 = t146.
        DATA t148 TYPE REF TO zcl_lnt_syntax_input.
        DATA(t149) = t2.
        t148 = t149.
        DATA t150 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t150.
        DATA t151 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t151.
        DATA(t152) = t60.
        DATA t153 TYPE REF TO zcl_lnt_itable_options.
        DATA(t154) = abap_false.
        DATA(t155) = |DEFAULT|.
        DATA t156 TYPE REF TO zcl_lnt_itable_key.
        CLEAR t156.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t157.
        t153 = NEW zcl_lnt_itable_options( i_with_header = t154 i_key_type = t155 i_primary_key = t156 i_secondary = t157 ).
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        DATA(t159) = abap_true.
        IF t159 = abap_true.
          DATA(t160) = |MATCH_RESULT_TAB|.
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
        t151 = NEW zcl_lnt_ty_table_type( i_row_type = t152 i_options = t153 i_qualified_name = t158 i_description = t163 ).
        t150 = t151.
        DATA t164 TYPE REF TO zcl_lnt_expression_node.
        DATA t165 TYPE REF TO zcl_lnt_expression_node.
        DATA(t166) = t145.
        DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
        t165 = t166->find_direct_expression( i_type_9913 = t167 ).
        t164 = t165.
        DATA t168 TYPE abap_bool.
        DATA(t169) = t164.
        t168 = xsdbool( t169 IS BOUND ).
        IF t168 = abap_true.
          DATA t170 TYPE REF TO zcl_lnt_expression_node.
          DATA(t171) = t164.
          t170 = t171.
          DATA(t172) = t148.
          DATA t173 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t173.
          DATA(t174) = abap_true.
          IF t174 = abap_true.
            DATA(t175) = t150.
            t173 = t175.
          ELSE.
            DATA t176 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t176.
            t173 = t176.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t170 i_input_967e = t172 i_type_9913 = t173 ).
        ELSE.
          DATA t177 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t178) = t145.
          DATA(t179) = t148.
          t177 = zcl_lnt_sy_target=>run_syntax( i_node = t178 i_input_967e = t179 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t182) = t1.
    DATA(t183) = |OFFSET|.
    t181 = t182->find_expressions_after_token( i_text = t183 ).
    t180 = t181.
    DATA(t184) = t180.
    DATA t185 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t185.
    DATA t186 TYPE REF TO object.
    CLEAR t186.
    LOOP AT t184->items INTO t186.
      t185 ?= t186.
      DATA t187 TYPE abap_bool.
      DATA t188 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t189) = t185.
      t188 = t189->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t187 = xsdbool( t188 IS BOUND AND t188 IS INSTANCE OF zcl_lnt_st_target ).
      IF t187 = abap_true.
        DATA t190 TYPE REF TO zcl_lnt_expression_node.
        DATA(t191) = t185.
        t190 = t191.
        DATA t192 TYPE REF TO zcl_lnt_syntax_input.
        DATA(t193) = t2.
        t192 = t193.
        DATA t194 TYPE REF TO zcl_lnt_abstract_type.
        DATA t195 TYPE REF TO zcl_lnt_integer_type.
        DATA t196 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t196.
        t195 = zcl_lnt_integer_type=>get_db65( i_input_967e = t196 ).
        t194 = t195.
        DATA t197 TYPE REF TO zcl_lnt_expression_node.
        DATA t198 TYPE REF TO zcl_lnt_expression_node.
        DATA(t199) = t190.
        DATA(t200) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
        t198 = t199->find_direct_expression( i_type_9913 = t200 ).
        t197 = t198.
        DATA t201 TYPE abap_bool.
        DATA(t202) = t197.
        t201 = xsdbool( t202 IS BOUND ).
        IF t201 = abap_true.
          DATA t203 TYPE REF TO zcl_lnt_expression_node.
          DATA(t204) = t197.
          t203 = t204.
          DATA(t205) = t192.
          DATA t206 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t206.
          DATA(t207) = abap_true.
          IF t207 = abap_true.
            DATA(t208) = t194.
            t206 = t208.
          ELSE.
            DATA t209 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t209.
            t206 = t209.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t203 i_input_967e = t205 i_type_9913 = t206 ).
        ELSE.
          DATA t210 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t211) = t190.
          DATA(t212) = t192.
          t210 = zcl_lnt_sy_target=>run_syntax( i_node = t211 i_input_967e = t212 ).
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t213 TYPE REF TO zcl_lnt_expression_node.
    DATA t214 TYPE REF TO zcl_lnt_expression_node.
    DATA(t215) = t1.
    DATA(t216) = |LINE|.
    t214 = t215->find_expression_after_token( i_text = t216 ).
    t213 = t214.
    DATA t217 TYPE abap_bool.
    DATA t218 TYPE abap_bool.
    DATA(t219) = t213.
    t218 = xsdbool( t219 IS BOUND ).
    t217 = t218.
    IF t218 = abap_true.
      DATA t220 TYPE abap_bool.
      DATA t221 TYPE REF TO zif_lnt_statement_runnable.
      DATA t222 TYPE REF TO zcl_lnt_expression_node.
      DATA(t223) = t213.
      t222 = t223.
      t221 = t222->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t220 = xsdbool( t221 IS BOUND AND t221 IS INSTANCE OF zcl_lnt_st_target ).
      t217 = t220.
    ENDIF.
    IF t217 = abap_true.
      DATA t224 TYPE REF TO zcl_lnt_expression_node.
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      DATA(t226) = t213.
      t225 = t226.
      t224 = t225.
      DATA t227 TYPE REF TO zcl_lnt_syntax_input.
      DATA(t228) = t2.
      t227 = t228.
      DATA t229 TYPE REF TO zcl_lnt_abstract_type.
      DATA t230 TYPE REF TO zcl_lnt_integer_type.
      DATA t231 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t231.
      t230 = zcl_lnt_integer_type=>get_db65( i_input_967e = t231 ).
      t229 = t230.
      DATA t232 TYPE REF TO zcl_lnt_expression_node.
      DATA t233 TYPE REF TO zcl_lnt_expression_node.
      DATA(t234) = t224.
      DATA(t235) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t233 = t234->find_direct_expression( i_type_9913 = t235 ).
      t232 = t233.
      DATA t236 TYPE abap_bool.
      DATA(t237) = t232.
      t236 = xsdbool( t237 IS BOUND ).
      IF t236 = abap_true.
        DATA t238 TYPE REF TO zcl_lnt_expression_node.
        DATA(t239) = t232.
        t238 = t239.
        DATA(t240) = t227.
        DATA t241 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t241.
        DATA(t242) = abap_true.
        IF t242 = abap_true.
          DATA(t243) = t229.
          t241 = t243.
        ELSE.
          DATA t244 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t244.
          t241 = t244.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t238 i_input_967e = t240 i_type_9913 = t241 ).
      ELSE.
        DATA t245 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t246) = t224.
        DATA(t247) = t227.
        t245 = zcl_lnt_sy_target=>run_syntax( i_node = t246 i_input_967e = t247 ).
      ENDIF.
    ENDIF.
    DATA t248 TYPE REF TO zcl_lnt_expression_node.
    DATA t249 TYPE REF TO zcl_lnt_expression_node.
    DATA(t250) = t1.
    DATA(t251) = |COUNT|.
    t249 = t250->find_expression_after_token( i_text = t251 ).
    t248 = t249.
    DATA t252 TYPE abap_bool.
    DATA t253 TYPE abap_bool.
    DATA(t254) = t248.
    t253 = xsdbool( t254 IS BOUND ).
    t252 = t253.
    IF t253 = abap_true.
      DATA t255 TYPE abap_bool.
      DATA t256 TYPE REF TO zif_lnt_statement_runnable.
      DATA t257 TYPE REF TO zcl_lnt_expression_node.
      DATA(t258) = t248.
      t257 = t258.
      t256 = t257->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t255 = xsdbool( t256 IS BOUND AND t256 IS INSTANCE OF zcl_lnt_st_target ).
      t252 = t255.
    ENDIF.
    IF t252 = abap_true.
      DATA t259 TYPE REF TO zcl_lnt_expression_node.
      DATA t260 TYPE REF TO zcl_lnt_expression_node.
      DATA(t261) = t248.
      t260 = t261.
      t259 = t260.
      DATA t262 TYPE REF TO zcl_lnt_syntax_input.
      DATA(t263) = t2.
      t262 = t263.
      DATA t264 TYPE REF TO zcl_lnt_abstract_type.
      DATA t265 TYPE REF TO zcl_lnt_integer_type.
      DATA t266 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t266.
      t265 = zcl_lnt_integer_type=>get_db65( i_input_967e = t266 ).
      t264 = t265.
      DATA t267 TYPE REF TO zcl_lnt_expression_node.
      DATA t268 TYPE REF TO zcl_lnt_expression_node.
      DATA(t269) = t259.
      DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t268 = t269->find_direct_expression( i_type_9913 = t270 ).
      t267 = t268.
      DATA t271 TYPE abap_bool.
      DATA(t272) = t267.
      t271 = xsdbool( t272 IS BOUND ).
      IF t271 = abap_true.
        DATA t273 TYPE REF TO zcl_lnt_expression_node.
        DATA(t274) = t267.
        t273 = t274.
        DATA(t275) = t262.
        DATA t276 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t276.
        DATA(t277) = abap_true.
        IF t277 = abap_true.
          DATA(t278) = t264.
          t276 = t278.
        ELSE.
          DATA t279 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t279.
          t276 = t279.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t273 i_input_967e = t275 i_type_9913 = t276 ).
      ELSE.
        DATA t280 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t281) = t259.
        DATA(t282) = t262.
        t280 = zcl_lnt_sy_target=>run_syntax( i_node = t281 i_input_967e = t282 ).
      ENDIF.
    ENDIF.
    DATA t283 TYPE REF TO zcl_lnt_expression_node.
    DATA t284 TYPE REF TO zcl_lnt_expression_node.
    DATA(t285) = t1.
    DATA(t286) = |LENGTH|.
    t284 = t285->find_expression_after_token( i_text = t286 ).
    t283 = t284.
    DATA t287 TYPE abap_bool.
    DATA t288 TYPE abap_bool.
    DATA(t289) = t283.
    t288 = xsdbool( t289 IS BOUND ).
    t287 = t288.
    IF t288 = abap_true.
      DATA t290 TYPE abap_bool.
      DATA t291 TYPE REF TO zif_lnt_statement_runnable.
      DATA t292 TYPE REF TO zcl_lnt_expression_node.
      DATA(t293) = t283.
      t292 = t293.
      t291 = t292->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t290 = xsdbool( t291 IS BOUND AND t291 IS INSTANCE OF zcl_lnt_st_target ).
      t287 = t290.
    ENDIF.
    IF t287 = abap_true.
      DATA t294 TYPE REF TO zcl_lnt_expression_node.
      DATA t295 TYPE REF TO zcl_lnt_expression_node.
      DATA(t296) = t283.
      t295 = t296.
      t294 = t295.
      DATA t297 TYPE REF TO zcl_lnt_syntax_input.
      DATA(t298) = t2.
      t297 = t298.
      DATA t299 TYPE REF TO zcl_lnt_abstract_type.
      DATA t300 TYPE REF TO zcl_lnt_integer_type.
      DATA t301 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t301.
      t300 = zcl_lnt_integer_type=>get_db65( i_input_967e = t301 ).
      t299 = t300.
      DATA t302 TYPE REF TO zcl_lnt_expression_node.
      DATA t303 TYPE REF TO zcl_lnt_expression_node.
      DATA(t304) = t294.
      DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t303 = t304->find_direct_expression( i_type_9913 = t305 ).
      t302 = t303.
      DATA t306 TYPE abap_bool.
      DATA(t307) = t302.
      t306 = xsdbool( t307 IS BOUND ).
      IF t306 = abap_true.
        DATA t308 TYPE REF TO zcl_lnt_expression_node.
        DATA(t309) = t302.
        t308 = t309.
        DATA(t310) = t297.
        DATA t311 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t311.
        DATA(t312) = abap_true.
        IF t312 = abap_true.
          DATA(t313) = t299.
          t311 = t313.
        ELSE.
          DATA t314 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t314.
          t311 = t314.
        ENDIF.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t308 i_input_967e = t310 i_type_9913 = t311 ).
      ELSE.
        DATA t315 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t316) = t294.
        DATA(t317) = t297.
        t315 = zcl_lnt_sy_target=>run_syntax( i_node = t316 i_input_967e = t317 ).
      ENDIF.
    ENDIF.
    DATA t318 TYPE abap_bool.
    DATA t319 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t320) = t1.
    DATA(t321) = |SUBMATCHES|.
    t319 = t320->find_direct_token_by_text( i_text = t321 ).
    t318 = xsdbool( t319 IS BOUND ).
    IF t318 = abap_true.
      DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t323) = t1.
      DATA(t324) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
      t322 = t323->find_direct_expressions( i_type_9913 = t324 ).
      DATA t325 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t325.
      DATA t326 TYPE REF TO object.
      CLEAR t326.
      LOOP AT t322->items INTO t326.
        t325 ?= t326.
        DATA(t327) = VALUE abap_bool( ).
        DATA(t328) = VALUE abap_bool( ).
        DATA(t329) = VALUE abap_bool( ).
        DATA(t330) = VALUE abap_bool( ).
        DATA t331 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t331.
        DATA(t332) = abap_true.
        IF t332 = abap_true.
          DATA(t333) = t325.
          t331 = t333.
        ELSE.
          DATA t334 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t334.
          t331 = t334.
        ENDIF.
        DATA(t335) = t18.
        t330 = xsdbool( t331 = t335 ).
        t329 = t330.
        IF t330 = abap_false.
          DATA(t336) = VALUE abap_bool( ).
          DATA t337 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t337.
          DATA(t338) = abap_true.
          IF t338 = abap_true.
            DATA(t339) = t325.
            t337 = t339.
          ELSE.
            DATA t340 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t340.
            t337 = t340.
          ENDIF.
          DATA(t341) = t213.
          t336 = xsdbool( t337 = t341 ).
          t329 = t336.
        ENDIF.
        t328 = t329.
        IF t329 = abap_false.
          DATA(t342) = VALUE abap_bool( ).
          DATA t343 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t343.
          DATA(t344) = abap_true.
          IF t344 = abap_true.
            DATA(t345) = t325.
            t343 = t345.
          ELSE.
            DATA t346 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t346.
            t343 = t346.
          ENDIF.
          DATA(t347) = t248.
          t342 = xsdbool( t343 = t347 ).
          t328 = t342.
        ENDIF.
        t327 = t328.
        IF t328 = abap_false.
          DATA(t348) = VALUE abap_bool( ).
          DATA t349 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t349.
          DATA(t350) = abap_true.
          IF t350 = abap_true.
            DATA(t351) = t325.
            t349 = t351.
          ELSE.
            DATA t352 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t352.
            t349 = t352.
          ENDIF.
          DATA(t353) = t283.
          t348 = xsdbool( t349 = t353 ).
          t327 = t348.
        ENDIF.
        IF t327 = abap_true.
          CONTINUE.
        ELSE.
          DATA t354 TYPE abap_bool.
          DATA t355 TYPE i.
          DATA(t356) = t180.
          DATA(t357) = t325.
          t355 = t356->indexof( p0 = t357 ).
          DATA(t358) = 0.
          t354 = xsdbool( t355 >= t358 ).
          IF t354 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t359 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t359.
        DATA t360 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t360.
        DATA t361 TYPE REF TO zcl_lnt_expression_node.
        DATA(t362) = t325.
        t361 = t362.
        DATA t363 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t363.
        DATA(t364) = VALUE abap_bool( ).
        DATA(t365) = t361.
        IF t365 IS INITIAL.
          t364 = abap_true.
        ENDIF.
        IF t364 = abap_true.
          DATA t366 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t366.
          t363 = t366.
        ELSE.
          DATA t367 TYPE REF TO zcl_lnt_expression_node.
          DATA(t368) = t361.
          DATA(t369) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
          t367 = t368->find_direct_expression( i_type_9913 = t369 ).
          t363 = t367.
        ENDIF.
        t360 = t363.
        t359 = t360.
        DATA t370 TYPE abap_bool.
        DATA(t371) = t359.
        t370 = xsdbool( t371 IS BOUND ).
        IF t370 = abap_true.
          DATA t372 TYPE REF TO zcl_lnt_expression_node.
          DATA(t373) = t359.
          t372 = t373.
          DATA(t374) = t2.
          DATA t375 TYPE REF TO zcl_lnt_string_type.
          DATA t376 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t376.
          t375 = zcl_lnt_string_type=>get_db65( i_input_967e = t376 ).
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t372 i_input_967e = t374 i_type_9913 = t375 ).
        ELSE.
          DATA t377 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t378) = t325.
          DATA(t379) = t2.
          t377 = zcl_lnt_sy_target=>run_syntax( i_node = t378 i_input_967e = t379 ).
        ENDIF.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.

  METHOD inline.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = t4.
      t10 = t11.
      DATA(t12) = t2.
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = t3.
        t13 = t15.
      ELSE.
        DATA t16 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t16.
        t13 = t16.
      ENDIF.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t10 i_input_967e = t12 i_type_9913 = t13 ).
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t18) = t1.
      DATA(t19) = t2.
      t17 = zcl_lnt_sy_target=>run_syntax( i_node = t18 i_input_967e = t19 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d879_686b4e830ffb.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
