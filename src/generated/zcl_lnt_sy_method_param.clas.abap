* TS: src/abap/5_syntax/expressions/method_param.ts:11:1 MethodParam
CLASS zcl_lnt_sy_method_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_param IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t3) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_meta ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA(t10) = CAST zcl_lnt_expression_node( t4 ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zcl_lnt_expression_node( t9 ).
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t15.
      DATA t16 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |MethodParam, todo, handle pass by value and reference|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = NEW zcx_lnt_assert_error( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      RAISE EXCEPTION t15.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t23.
    DATA(t24) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429 ).
    t23 = t24->find_direct_expression( i_type_9913 = t25 ).
    t22 = t23.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t27.
    DATA(t28) = CAST zcl_lnt_expression_node( t22 ).
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zcl_lnt_expression_node( t27 ).
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t33.
      DATA t34 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA(t37) = |MethodParam, unexpected structure|.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t37.
        t35 = t38.
      ELSE.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        t35 = t39.
      ENDIF.
      t34 = NEW zcx_lnt_assert_error( i_message_26cb = t35 ).
      t33 = NEW #( ).
      t33->payload = t34.
      RAISE EXCEPTION t33.
    ENDIF.
    DATA t40 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t42.
    DATA(t43) = CAST zcl_lnt_expression_node( t22 ).
    t42 = t43.
    DATA(t44) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401 ).
    t41 = t42->find_direct_expression( i_type_9913 = t44 ).
    t40 = t41.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = CAST zcl_lnt_expression_node( t40 ).
    t45 = xsdbool( t46 IS BOUND ).
    IF t45 = abap_true.
      DATA t47 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t47.
      TRY.
          DATA t48 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t48.
          DATA t49 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t49.
          DATA(t50) = CAST zcl_lnt_expression_node( t40 ).
          t49 = t50.
          DATA(t51) = CAST zcl_lnt_syntax_input( t2 ).
          t48 = zcl_lnt_sy_default=>run_syntax( i_node = t49 i_input_967e = t51 ).
        CATCH zlnt_exception_cl_30eec8e8805d INTO t47.
          DATA(t52) = CAST zcl_lnt_builtin_e8b3bd7e( t47->payload ).
          DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t55.
          DATA(t56) = CAST zcl_lnt_expression_node( t4 ).
          t55 = t56.
          t54 = t55->get_first_token(  ).
          DATA(t57) = VALUE string( ).
          DATA(t58) = CAST zcl_lnt_syntax_input( t2 ).
          t57 = t58->filename.
          DATA t59 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t59.
          DATA(t60) = VALUE string( ).
          DATA t61 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t61.
          DATA(t62) = CAST zcl_lnt_builtin_e8b3bd7e( t52 ).
          t61 = t62.
          DATA(t63) = VALUE string( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE string( ).
          DATA(t66) = CAST zcl_lnt_builtin_e8b3bd7e( t61 ).
          t65 = t66->message_25cb.
          DATA(t67) = ||.
          t64 = xsdbool( t65 = t67 ).
          IF t64 = abap_true.
            DATA(t68) = |Error|.
            t63 = t68.
          ELSE.
            DATA(t69) = VALUE string( ).
            DATA(t70) = |Error: |.
            DATA(t71) = VALUE string( ).
            DATA(t72) = CAST zcl_lnt_builtin_e8b3bd7e( t61 ).
            t71 = t72->message_25cb.
            DATA(t73) = strlen( t70 ).
            t69 = |{ t70 }{ t71 }|.
            t63 = t69.
          ENDIF.
          t60 = t63.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          t59 = NEW zcl_lnt_unknown_type( i_error = t60 i_qualified_name = t74 ).
          DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA(t77) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
            t75 = t77.
          ELSE.
            DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t78.
            t75 = t78.
          ENDIF.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t79.
          t53 = NEW zcl_lnt_typed_identifier( i_token = t54 i_filename = t57 i_type_9913 = t59 i_meta = t75 i_value = t79 ).
          result = t53.
          RETURN.
      ENDTRY.
    ENDIF.
    DATA(t80) = VALUE string( ).
    DATA(t81) = VALUE string( ).
    DATA(t82) = VALUE string( ).
    DATA t83 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t83.
    DATA(t84) = CAST zcl_lnt_expression_node( t22 ).
    t83 = t84.
    t82 = t83->concat_tokens(  ).
    DATA(t85) = strlen( t82 ).
    t81 = t82.
    IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t81 TO UPPER CASE.
    ELSE.
      t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
    ENDIF.
    t80 = t81.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = VALUE abap_bool( ).
    DATA(t88) = t80.
    DATA(t89) = |TYPE C|.
    t87 = xsdbool( t88 = t89 ).
    t86 = t87.
    IF t87 = abap_false.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = t80.
      DATA(t92) = |TYPE C |.
      DATA(t93) = strlen( t91 ).
      DATA(t94) = VALUE i( ).
      DATA(t95) = VALUE i( ).
      DATA(t96) = VALUE string( ).
      t94 = strlen( t92 ).
      IF t94 = 0.
        t90 = abap_true.
      ELSEIF t94 <= t93.
        t95 = 0.
        t96 = t91+t95(t94).
        IF t96 = t92.
          t90 = abap_true.
        ENDIF.
      ENDIF.
      t86 = t90.
    ENDIF.
    IF t86 = abap_true.
      DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t98.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t99.
      DATA(t100) = CAST zcl_lnt_expression_node( t4 ).
      t99 = t100.
      t98 = t99->get_first_token(  ).
      DATA(t101) = VALUE string( ).
      DATA(t102) = CAST zcl_lnt_syntax_input( t2 ).
      t101 = t102->filename.
      DATA(t103) = CAST zcl_lnt_c_generic_type( zcl_lnt_c_generic_type=>get_db65(  ) ).
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t104.
      DATA(t105) = abap_true.
      IF t105 = abap_true.
        DATA(t106) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
        t104 = t106.
      ELSE.
        DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t107.
        t104 = t107.
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      t97 = NEW zcl_lnt_typed_identifier( i_token = t98 i_filename = t101 i_type_9913 = t103 i_meta = t104 i_value = t108 ).
      result = t97.
      RETURN.
    ELSE.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = t80.
      DATA(t112) = |TYPE X|.
      t110 = xsdbool( t111 = t112 ).
      t109 = t110.
      IF t110 = abap_false.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = t80.
        DATA(t115) = |TYPE X |.
        DATA(t116) = strlen( t114 ).
        DATA(t117) = VALUE i( ).
        DATA(t118) = VALUE i( ).
        DATA(t119) = VALUE string( ).
        t117 = strlen( t115 ).
        IF t117 = 0.
          t113 = abap_true.
        ELSEIF t117 <= t116.
          t118 = 0.
          t119 = t114+t118(t117).
          IF t119 = t115.
            t113 = abap_true.
          ENDIF.
        ENDIF.
        t109 = t113.
      ENDIF.
      IF t109 = abap_true.
        DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t121.
        DATA t122 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t122.
        DATA(t123) = CAST zcl_lnt_expression_node( t4 ).
        t122 = t123.
        t121 = t122->get_first_token(  ).
        DATA(t124) = VALUE string( ).
        DATA(t125) = CAST zcl_lnt_syntax_input( t2 ).
        t124 = t125->filename.
        DATA(t126) = CAST zcl_lnt_x_generic_type( zcl_lnt_x_generic_type=>get_db65(  ) ).
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t127.
        DATA(t128) = abap_true.
        IF t128 = abap_true.
          DATA(t129) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
          t127 = t129.
        ELSE.
          DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t130.
          t127 = t130.
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        t120 = NEW zcl_lnt_typed_identifier( i_token = t121 i_filename = t124 i_type_9913 = t126 i_meta = t127 i_value = t131 ).
        result = t120.
        RETURN.
      ELSE.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = t80.
        DATA(t135) = |TYPE P|.
        t133 = xsdbool( t134 = t135 ).
        t132 = t133.
        IF t133 = abap_false.
          DATA(t136) = VALUE abap_bool( ).
          DATA(t137) = t80.
          DATA(t138) = |TYPE P |.
          DATA(t139) = strlen( t137 ).
          DATA(t140) = VALUE i( ).
          DATA(t141) = VALUE i( ).
          DATA(t142) = VALUE string( ).
          t140 = strlen( t138 ).
          IF t140 = 0.
            t136 = abap_true.
          ELSEIF t140 <= t139.
            t141 = 0.
            t142 = t137+t141(t140).
            IF t142 = t138.
              t136 = abap_true.
            ENDIF.
          ENDIF.
          t132 = t136.
        ENDIF.
        IF t132 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t143.
          DATA t144 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t144.
          DATA t145 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t145.
          DATA(t146) = CAST zcl_lnt_expression_node( t4 ).
          t145 = t146.
          t144 = t145->get_first_token(  ).
          DATA(t147) = VALUE string( ).
          DATA(t148) = CAST zcl_lnt_syntax_input( t2 ).
          t147 = t148->filename.
          DATA(t149) = CAST zcl_lnt_p_generic_type( zcl_lnt_p_generic_type=>get_db65(  ) ).
          DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t150.
          DATA(t151) = abap_true.
          IF t151 = abap_true.
            DATA(t152) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
            t150 = t152.
          ELSE.
            DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t153.
            t150 = t153.
          ENDIF.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          t143 = NEW zcl_lnt_typed_identifier( i_token = t144 i_filename = t147 i_type_9913 = t149 i_meta = t150 i_value = t154 ).
          result = t143.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t155 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t155.
    DATA t156 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t156.
    DATA t157 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t157.
    DATA(t158) = CAST zcl_lnt_syntax_input( t2 ).
    t157 = NEW zcl_lnt_basic_types( i_input_967e = t158 ).
    DATA t159 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t159.
    DATA(t160) = CAST zcl_lnt_expression_node( t22 ).
    t159 = t160.
    DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t161.
    t156 = t157->parse_type( i_node = t159 i_qualified_name = t161 ).
    t155 = t156.
    DATA(t162) = VALUE abap_bool( ).
    DATA(t163) = CAST zcl_lnt_abstract_type( t155 ).
    t162 = xsdbool( t163 IS BOUND ).
    IF t162 = abap_true.
      DATA t164 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t166.
      DATA(t167) = CAST zcl_lnt_expression_node( t4 ).
      t166 = t167.
      t165 = t166->get_first_token(  ).
      DATA(t168) = VALUE string( ).
      DATA(t169) = CAST zcl_lnt_syntax_input( t2 ).
      t168 = t169->filename.
      DATA t170 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t170.
      DATA(t171) = CAST zcl_lnt_abstract_type( t155 ).
      t170 = t171.
      DATA t172 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t172.
      DATA(t173) = abap_true.
      IF t173 = abap_true.
        DATA(t174) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
        t172 = t174.
      ELSE.
        DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t175.
        t172 = t175.
      ENDIF.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t176.
      t164 = NEW zcl_lnt_typed_identifier( i_token = t165 i_filename = t168 i_type_9913 = t170 i_meta = t172 i_value = t176 ).
      result = t164.
      RETURN.
    ELSE.
      DATA t177 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t177.
      DATA t178 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t178.
      DATA t179 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t179.
      DATA(t180) = CAST zcl_lnt_expression_node( t4 ).
      t179 = t180.
      t178 = t179->get_first_token(  ).
      DATA(t181) = VALUE string( ).
      DATA(t182) = CAST zcl_lnt_syntax_input( t2 ).
      t181 = t182->filename.
      DATA t183 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t183.
      DATA(t184) = |method param, todo|.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t185.
      t183 = NEW zcl_lnt_unknown_type( i_error = t184 i_qualified_name = t185 ).
      DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t186.
      DATA(t187) = abap_true.
      IF t187 = abap_true.
        DATA(t188) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
        t186 = t188.
      ELSE.
        DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t189.
        t186 = t189.
      ENDIF.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      t177 = NEW zcl_lnt_typed_identifier( i_token = t178 i_filename = t181 i_type_9913 = t183 i_meta = t186 i_value = t190 ).
      result = t177.
      
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d800_a614a7e91d19.
  ENDMETHOD.
ENDCLASS.
