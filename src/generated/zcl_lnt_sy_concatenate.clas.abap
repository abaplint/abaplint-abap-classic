* TS: src/abap/5_syntax/statements/concatenate.ts:11:1 Concatenate
CLASS zcl_lnt_sy_concatenate DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_concatenate IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t7) = t1.
    DATA(t8) = |BYTE|.
    t6 = t7->find_direct_token_by_text( i_text = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t5.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t11 = xsdbool( t12 = abap_false ).
    t4 = t11.
    t3 = t4.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t1.
    DATA(t19) = |LINES|.
    t17 = t18->find_direct_token_by_text( i_text = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t16.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t22 = xsdbool( t23 = abap_false ).
    t15 = t22.
    t14 = t15.
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = t1.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    t27 = t28->find_first_expression( i_type_9913 = t29 ).
    t26 = t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t26.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t32 = xsdbool( t33 = abap_false ).
    t25 = t32.
    IF t25 = abap_true.
      DATA t35 TYPE string.
      DATA(t36) = |CONCATENATE with table expression not possible|.
      t35 = t36.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t38) = t2.
      t37 = t38->issues.
      DATA t39 TYPE REF TO zcl_lnt_issue.
      DATA(t40) = t2.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = t1.
      t41 = t42->get_first_token( ).
      DATA(t43) = t35.
      DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t44.
      t39 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t40 i_token = t41 i_message_26cb = t43 i_fix = t44 ).
      t37->load( ).
      APPEND t39 TO t37->items.
      t37->save( ).
      RETURN.
    ENDIF.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA(t47) = t1.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t46 = t47->find_first_expression( i_type_9913 = t48 ).
    t45 = t46.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_expression_node.
    DATA(t52) = t45.
    t51 = t52.
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = t51.
    IF t55 IS INITIAL.
      t54 = abap_true.
    ENDIF.
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      t53 = t56.
    ELSE.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      DATA(t59) = t51.
      t58 = t59.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t57 = t58->find_direct_expression( i_type_9913 = t60 ).
      t53 = t57.
    ENDIF.
    t50 = t53.
    t49 = t50.
    DATA t61 TYPE abap_bool.
    DATA(t62) = t49.
    t61 = xsdbool( t62 IS BOUND ).
    IF t61 = abap_true.
      DATA(t63) = t3.
      IF t63 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA(t65) = t49.
        t64 = t65.
        DATA(t66) = t2.
        DATA t67 TYPE REF TO zcl_lnt_x_string_type.
        DATA t68 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t68.
        t67 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t68 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t64 i_input_967e = t66 i_type_9913 = t67 ).
      ELSE.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        DATA(t70) = t49.
        t69 = t70.
        DATA(t71) = t2.
        DATA t72 TYPE REF TO zcl_lnt_string_type.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t73.
        t72 = zcl_lnt_string_type=>get_db65( i_input_967e = t73 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t69 i_input_967e = t71 i_type_9913 = t72 ).
      ENDIF.
    ELSE.
      DATA t74 TYPE abap_bool.
      DATA(t75) = t45.
      t74 = xsdbool( t75 IS BOUND ).
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zcl_lnt_abstract_type.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        DATA(t79) = t45.
        t78 = t79.
        DATA(t80) = t2.
        t77 = zcl_lnt_sy_target=>run_syntax( i_node = t78 i_input_967e = t80 ).
        t76 = t77.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = t3.
        IF t83 = abap_true.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE REF TO zcl_lnt_type_utils.
          DATA t86 TYPE REF TO zcl_lnt_current_scope.
          DATA(t87) = t2.
          t86 = t87->scope.
          t85 = NEW zcl_lnt_type_utils( i_scope = t86 ).
          DATA(t88) = t76.
          t84 = t85->is_hex_like( i_type_9913 = t88 ).
          t82 = t84.
        ELSE.
          DATA t89 TYPE abap_bool.
          DATA t90 TYPE REF TO zcl_lnt_type_utils.
          DATA t91 TYPE REF TO zcl_lnt_current_scope.
          DATA(t92) = t2.
          t91 = t92->scope.
          t90 = NEW zcl_lnt_type_utils( i_scope = t91 ).
          DATA(t93) = t76.
          t89 = t90->is_char_like_strict( i_type_9913 = t93 ).
          t82 = t89.
        ENDIF.
        t81 = t82.
        DATA t94 TYPE abap_bool.
        DATA(t95) = t81.
        DATA(t96) = abap_false.
        t94 = xsdbool( t95 = t96 ).
        IF t94 = abap_true.
          DATA t97 TYPE string.
          DATA(t98) = |Target type not compatible|.
          t97 = t98.
          DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t100) = t2.
          t99 = t100->issues.
          DATA t101 TYPE REF TO zcl_lnt_issue.
          DATA(t102) = t2.
          DATA t103 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t104) = t1.
          t103 = t104->get_first_token( ).
          DATA(t105) = t97.
          DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t106.
          t101 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t102 i_token = t103 i_message_26cb = t105 i_fix = t106 ).
          t99->load( ).
          APPEND t101 TO t99->items.
          t99->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t107) = t14.
    IF t107 = abap_true.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t109) = t1.
      DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t108 = t109->find_direct_expressions( i_type_9913 = t110 ).
      DATA t111 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t111.
      DATA t112 TYPE REF TO object.
      CLEAR t112.
      DATA(t113) = VALUE i( ).
      DO.
        t108->load( ).
        IF t113 >= lines( t108->items ).
          EXIT.
        ENDIF.
        CLEAR t112.
        READ TABLE t108->items INDEX t113 + 1 INTO t112.
        t113 = t113 + 1.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        CLEAR t111.
        IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t114 ?= t112.
          DATA t115 TYPE REF TO object.
          t115 = t114->as_ref( ).
          t111 ?= t115.
        ELSE.
          t111 ?= t112.
        ENDIF.
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t116.
        DATA t117 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t117.
        DATA t118 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t118.
        DATA(t119) = abap_true.
        IF t119 = abap_true.
          DATA(t120) = t111.
          t118 = t120.
        ELSE.
          DATA t121 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t121.
          t118 = t121.
        ENDIF.
        DATA(t122) = t2.
        DATA t123 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t123.
        DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t125.
        DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t126.
        t117 = zcl_lnt_sy_source=>run_syntax( i_node = t118 i_input_967e = t122 i_target_type = t123 i_write_reference = t124 i_allow_generic_deference = t125 i_read_reference = t126 ).
        t116 = t117.
        DATA(t127) = VALUE abap_bool( ).
        DATA t128 TYPE abap_bool.
        DATA t129 TYPE abap_bool.
        DATA t130 TYPE abap_bool.
        DATA(t131) = t116.
        t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_unknown_type ).
        t129 = xsdbool( t130 = abap_false ).
        t128 = t129.
        IF t129 = abap_true.
          DATA t132 TYPE abap_bool.
          DATA t133 TYPE abap_bool.
          DATA(t134) = t116.
          t133 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_void_type ).
          t132 = xsdbool( t133 = abap_false ).
          t128 = t132.
        ENDIF.
        t127 = t128.
        IF t128 = abap_true.
          DATA t135 TYPE abap_bool.
          DATA t136 TYPE abap_bool.
          DATA(t137) = t116.
          t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t135 = xsdbool( t136 = abap_false ).
          t127 = t135.
        ENDIF.
        IF t127 = abap_true.
          DATA t138 TYPE string.
          DATA(t139) = |Source must be an internal table|.
          t138 = t139.
          DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t141) = t2.
          t140 = t141->issues.
          DATA t142 TYPE REF TO zcl_lnt_issue.
          DATA(t143) = t2.
          DATA t144 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t145) = t1.
          t144 = t145->get_first_token( ).
          DATA(t146) = t138.
          DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t147.
          t142 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t143 i_token = t144 i_message_26cb = t146 i_fix = t147 ).
          t140->load( ).
          APPEND t142 TO t140->items.
          t140->save( ).
          RETURN.
        ENDIF.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE abap_bool( ).
        DATA t150 TYPE abap_bool.
        DATA t151 TYPE abap_bool.
        DATA(t152) = t14.
        DATA(t153) = abap_true.
        t151 = xsdbool( t152 = t153 ).
        t150 = t151.
        IF t151 = abap_true.
          DATA t154 TYPE abap_bool.
          DATA(t155) = t3.
          DATA(t156) = abap_true.
          t154 = xsdbool( t155 = t156 ).
          t150 = t154.
        ENDIF.
        t149 = t150.
        IF t150 = abap_true.
          DATA t157 TYPE abap_bool.
          DATA(t158) = t116.
          t157 = xsdbool( t158 IS BOUND AND t158 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t149 = t157.
        ENDIF.
        t148 = t149.
        IF t149 = abap_true.
          DATA t159 TYPE abap_bool.
          DATA t160 TYPE REF TO zcl_lnt_abstract_type.
          DATA t161 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t162 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t163) = t116.
          t162 ?= t163.
          t161 = t162.
          DATA t164 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t165) = t161.
          t164 = t165->row_type.
          t160 = t164.
          t159 = xsdbool( t160 IS BOUND AND t160 IS INSTANCE OF zcl_lnt_structure_type ).
          t148 = t159.
        ENDIF.
        IF t148 = abap_true.
          DATA t166 TYPE string.
          DATA(t167) = |Source row type must not be a structure in BYTE mode|.
          t166 = t167.
          DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t169) = t2.
          t168 = t169->issues.
          DATA t170 TYPE REF TO zcl_lnt_issue.
          DATA(t171) = t2.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t173) = t1.
          t172 = t173->get_first_token( ).
          DATA(t174) = t166.
          DATA t175 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t175.
          t170 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t171 i_token = t172 i_message_26cb = t174 i_fix = t175 ).
          t168->load( ).
          APPEND t170 TO t168->items.
          t168->save( ).
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t177) = t1.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t176 = t177->find_direct_expressions( i_type_9913 = t178 ).
    DATA t179 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t179.
    DATA t180 TYPE REF TO object.
    CLEAR t180.
    DATA(t181) = VALUE i( ).
    DO.
      t176->load( ).
      IF t181 >= lines( t176->items ).
        EXIT.
      ENDIF.
      CLEAR t180.
      READ TABLE t176->items INDEX t181 + 1 INTO t180.
      t181 = t181 + 1.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      CLEAR t179.
      IF t180 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t182 ?= t180.
        DATA t183 TYPE REF TO object.
        t183 = t182->as_ref( ).
        t179 ?= t183.
      ELSE.
        t179 ?= t180.
      ENDIF.
      DATA t184 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t184.
      DATA t185 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t185.
      DATA t186 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t186.
      DATA(t187) = abap_true.
      IF t187 = abap_true.
        DATA(t188) = t179.
        t186 = t188.
      ELSE.
        DATA t189 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t189.
        t186 = t189.
      ENDIF.
      DATA(t190) = t2.
      DATA t191 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t192.
      DATA t193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t193.
      DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t194.
      t185 = zcl_lnt_sy_source=>run_syntax( i_node = t186 i_input_967e = t190 i_target_type = t191 i_write_reference = t192 i_allow_generic_deference = t193 i_read_reference = t194 ).
      t184 = t185.
      DATA(t195) = VALUE abap_bool( ).
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = t3.
      IF t197 = abap_true.
        DATA t198 TYPE abap_bool.
        DATA t199 TYPE REF TO zcl_lnt_type_utils.
        DATA t200 TYPE REF TO zcl_lnt_current_scope.
        DATA(t201) = t2.
        t200 = t201->scope.
        t199 = NEW zcl_lnt_type_utils( i_scope = t200 ).
        DATA(t202) = t184.
        t198 = t199->is_hex_like( i_type_9913 = t202 ).
        t196 = t198.
      ELSE.
        DATA t203 TYPE abap_bool.
        DATA t204 TYPE REF TO zcl_lnt_type_utils.
        DATA t205 TYPE REF TO zcl_lnt_current_scope.
        DATA(t206) = t2.
        t205 = t206->scope.
        t204 = NEW zcl_lnt_type_utils( i_scope = t205 ).
        DATA(t207) = t184.
        t203 = t204->is_char_like_strict( i_type_9913 = t207 ).
        t196 = t203.
      ENDIF.
      t195 = t196.
      DATA t208 TYPE abap_bool.
      DATA(t209) = t195.
      DATA(t210) = abap_false.
      t208 = xsdbool( t209 = t210 ).
      IF t208 = abap_true.
        DATA t211 TYPE string.
        DATA(t212) = |Source type not compatible|.
        t211 = t212.
        DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t214) = t2.
        t213 = t214->issues.
        DATA t215 TYPE REF TO zcl_lnt_issue.
        DATA(t216) = t2.
        DATA t217 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t218) = t1.
        t217 = t218->get_first_token( ).
        DATA(t219) = t211.
        DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t220.
        t215 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t216 i_token = t217 i_message_26cb = t219 i_fix = t220 ).
        t213->load( ).
        APPEND t215 TO t213->items.
        t213->save( ).
        RETURN.
      ENDIF.
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d879_686b4e830ffb.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
