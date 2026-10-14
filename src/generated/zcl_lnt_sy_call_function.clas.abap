* TS: src/abap/5_syntax/statements/call_function.ts:11:1 CallFunction
CLASS zcl_lnt_sy_call_function DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_call_function IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519 ).
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_expression_node( t9 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = CAST zcl_lnt_expression_node( t9 ).
      t16 = t17.
      DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
      t15 = t16->find_first_expression( i_type_9913 = t18 ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_expression_node( t7 ).
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = CAST zcl_lnt_expression_node( t7 ).
      t22 = t23.
      DATA(t24) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t28) = |Read From|.
        CREATE OBJECT t27.
        t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t27->sval = t28.
        t25 = t27.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        t25 = t29.
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      t21 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t22 i_input_967e = t24 i_ref_type = t25 i_allow_generic_deference = t30 ).
    ELSE.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE string.
      DATA t34 TYPE REF TO zcl_lnt_current_scope.
      DATA t35 TYPE REF TO zcl_lnt_current_scope.
      DATA(t36) = CAST zcl_lnt_syntax_input( t2 ).
      t35 = t36->scope.
      t34 = t35.
      DATA t37 TYPE string.
      DATA t38 TYPE REF TO zif_lnt_configuration.
      DATA t39 TYPE REF TO zif_lnt_registry.
      DATA(t40) = CAST zcl_lnt_current_scope( t34 ).
      t39 = t40->reg.
      t38 = t39->get_config( ).
      t37 = t38->get_language_version( ).
      t33 = t37.
      DATA(t41) = |Cloud|.
      t32 = xsdbool( t33 = t41 ).
      t31 = t32.
      IF t32 = abap_true.
        DATA(t42) = VALUE abap_bool( ).
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        DATA(t45) = CAST zcl_lnt_statement_node( t1 ).
        DATA(t46) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff ).
        t44 = t45->find_direct_expression( i_type_9913 = t46 ).
        t43 = t44.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        t47 = t48.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = CAST zcl_lnt_expression_node( t43 ).
        IF t50 IS INITIAL.
          t49 = abap_true.
        ENDIF.
        t42 = t49.
        t31 = t42.
      ENDIF.
      IF t31 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA(t56) = CAST zcl_lnt_expression_node( t3 ).
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = CAST zcl_lnt_expression_node( t55 ).
        IF t59 IS INITIAL.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t57 = t60.
        ELSE.
          DATA t61 TYPE string.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          DATA(t63) = CAST zcl_lnt_expression_node( t55 ).
          t62 = t63.
          t61 = t62->concat_tokens( ).
          DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t64->has = abap_true.
          t64->value = t61.
          t57 = t64.
        ENDIF.
        t54 = t57.
        t53 = t54.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = CAST zlnt_runtime_opti_4ba3bdccd169( t53 ).
        IF t67 IS INITIAL.
          t66 = abap_true.
        ELSEIF t67->has = abap_false.
          t66 = abap_true.
        ENDIF.
        IF t66 = abap_true.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t65 = t68.
        ELSE.
          DATA t69 TYPE string.
          DATA t70 TYPE string.
          DATA(t71) = CAST zlnt_runtime_opti_4ba3bdccd169( t53 ).
          t70 = t71->value.
          DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t72.
          DATA(t73) = |'|.
          DATA(t74) = |g|.
          CREATE OBJECT t72 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t73 flags = t74.
          DATA(t75) = ||.
          DATA(t76) = strlen( t70 ).
          t69 = t72->replace( p0 = t70 p1 = t75 ).
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t69.
          t65 = t77.
        ENDIF.
        t52 = t65.
        t51 = t52.
        DATA(t78) = VALUE abap_bool( ).
        DATA t79 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        DATA t80 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        DATA t81 TYPE REF TO zcl_lnt_current_scope.
        DATA(t82) = CAST zcl_lnt_syntax_input( t2 ).
        t81 = t82->scope.
        DATA(t83) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
        t80 = t81->find_function_module( i_name = t83 ).
        t79 = t80.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        t84 = t85.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = CAST zcl_lnt_fnctn_mdl_dfntn( t79 ).
        IF t87 IS INITIAL.
          t86 = abap_true.
        ENDIF.
        t78 = t86.
        IF t78 = abap_true.
          DATA(t88) = VALUE string( ).
          DATA(t89) = VALUE string( ).
          DATA(t90) = VALUE string( ).
          DATA(t91) = |Function module "|.
          DATA(t92) = VALUE string( ).
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t94) = CAST zlnt_runtime_opti_4ba3bdccd169( t51 ).
          t93 = t94.
          DATA(t95) = VALUE string( ).
          DATA(t96) = VALUE abap_bool( ).
          DATA(t97) = CAST zlnt_runtime_opti_4ba3bdccd169( t93 ).
          IF t97 IS INITIAL.
            t96 = abap_true.
          ELSEIF t97->has = abap_false.
            t96 = abap_true.
          ENDIF.
          IF t96 = abap_true.
            DATA(t98) = |undefined|.
            t95 = t98.
          ELSE.
            DATA t99 TYPE string.
            DATA(t100) = CAST zlnt_runtime_opti_4ba3bdccd169( t93 ).
            t99 = t100->value.
            t95 = t99.
          ENDIF.
          t92 = t95.
          DATA(t101) = strlen( t91 ).
          t90 = |{ t91 }{ t92 }|.
          DATA(t102) = |" not found/released|.
          DATA(t103) = strlen( t90 ).
          t89 = |{ t90 }{ t102 }|.
          t88 = t89.
          DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t105) = CAST zcl_lnt_syntax_input( t2 ).
          t104 = t105->issues.
          DATA t106 TYPE REF TO zcl_lnt_issue.
          DATA(t107) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t109) = CAST zcl_lnt_statement_node( t1 ).
          t108 = t109->get_first_token( ).
          DATA(t110) = t88.
          DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t111.
          t106 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t107 i_token = t108 i_message_26cb = t110 i_fix = t111 ).
          APPEND t106 TO t104->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t113) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t114) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2 ).
    t112 = t113->find_direct_expressions( i_type_9913 = t114 ).
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t115.
    DATA t116 TYPE REF TO object.
    CLEAR t116.
    LOOP AT t112->items INTO t116.
      t115 ?= t116.
      DATA t117 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t117.
      DATA t118 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t118.
      DATA(t119) = abap_true.
      IF t119 = abap_true.
        DATA(t120) = CAST zcl_lnt_expression_node( t115 ).
        t118 = t120.
      ELSE.
        DATA t121 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t121.
        t118 = t121.
      ENDIF.
      DATA(t122) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t123 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t123.
      DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t124.
      DATA t125 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t125.
      DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t126.
      t117 = zcl_lnt_sy_source=>run_syntax( i_node = t118 i_input_967e = t122 i_target_type = t123 i_write_reference = t124 i_allow_generic_deference = t125 i_read_reference = t126 ).
    ENDLOOP.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t128) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t129) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t127 = t128->find_direct_expressions( i_type_9913 = t129 ).
    DATA t130 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t130.
    DATA t131 TYPE REF TO object.
    CLEAR t131.
    LOOP AT t127->items INTO t131.
      t130 ?= t131.
      DATA t132 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t132.
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t133.
      DATA(t134) = abap_true.
      IF t134 = abap_true.
        DATA(t135) = CAST zcl_lnt_expression_node( t130 ).
        t133 = t135.
      ELSE.
        DATA t136 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t136.
        t133 = t136.
      ENDIF.
      DATA(t137) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t138 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t138.
      DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t140.
      DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t141.
      t132 = zcl_lnt_sy_source=>run_syntax( i_node = t133 i_input_967e = t137 i_target_type = t138 i_write_reference = t139 i_allow_generic_deference = t140 i_read_reference = t141 ).
    ENDLOOP.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t143) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t144) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff ).
    t142 = t143->find_direct_expressions( i_type_9913 = t144 ).
    DATA t145 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t145.
    DATA t146 TYPE REF TO object.
    CLEAR t146.
    LOOP AT t142->items INTO t146.
      t145 ?= t146.
      DATA t147 TYPE REF TO zcl_lnt_expression_node.
      DATA t148 TYPE REF TO zcl_lnt_expression_node.
      DATA(t149) = CAST zcl_lnt_expression_node( t145 ).
      DATA(t150) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t148 = t149->find_first_expression( i_type_9913 = t150 ).
      t147 = t148.
      DATA t151 TYPE abap_bool.
      DATA(t152) = CAST zcl_lnt_expression_node( t147 ).
      t151 = xsdbool( t152 IS BOUND ).
      IF t151 = abap_true.
        DATA t153 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t153.
        DATA t154 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t154.
        DATA(t155) = abap_true.
        IF t155 = abap_true.
          DATA t156 TYPE REF TO zcl_lnt_expression_node.
          DATA(t157) = CAST zcl_lnt_expression_node( t147 ).
          t156 = t157.
          t154 = t156.
        ELSE.
          DATA t158 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t158.
          t154 = t158.
        ENDIF.
        DATA(t159) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t160 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t160.
        DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t161.
        DATA t162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t162.
        DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t163.
        t153 = zcl_lnt_sy_source=>run_syntax( i_node = t154 i_input_967e = t159 i_target_type = t160 i_write_reference = t161 i_allow_generic_deference = t162 i_read_reference = t163 ).
      ENDIF.
    ENDLOOP.
    DATA t164 TYPE REF TO zcl_lnt_expression_node.
    DATA t165 TYPE REF TO zcl_lnt_expression_node.
    DATA(t166) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t167) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d192_2948974be5fb ).
    t165 = t166->find_direct_expression( i_type_9913 = t167 ).
    t164 = t165.
    DATA t168 TYPE abap_bool.
    DATA(t169) = CAST zcl_lnt_expression_node( t164 ).
    t168 = xsdbool( t169 IS BOUND ).
    IF t168 = abap_true.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      DATA(t171) = CAST zcl_lnt_expression_node( t164 ).
      t170 = t171.
      DATA(t172) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_function_parameters=>run_syntax( i_node = t170 i_input_967e = t172 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d840_cd1c20458c1b.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
