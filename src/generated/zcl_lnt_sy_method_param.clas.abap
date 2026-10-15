* TS: src/abap/5_syntax/expressions/method_param.ts:11:1 MethodParam
CLASS zcl_lnt_sy_method_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_param IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_meta.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA(t10) = t4.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
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
      CLEAR t15->source_value.
      IF t16 IS BOUND.
        DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t22.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        CLEAR t22.
        t23 = t16.
        TRY.
            t15->source_value ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15->source_value IS NOT BOUND.
          TRY.
              t22 ?= t16.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t22 IS BOUND.
            t15->source_value = t22->source( ).
          ENDIF.
          IF t15->source_value IS NOT BOUND.
            CREATE OBJECT t15->source_value.
            t15->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t15->source_value->oval = t16.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t25.
    DATA(t26) = t1.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
    t25 = t26->find_direct_expression( i_type_9913 = t27 ).
    t24 = t25.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA(t30) = t24.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t35.
      DATA t36 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = abap_true.
      IF t38 = abap_true.
        DATA(t39) = |MethodParam, unexpected structure|.
        DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t40->has = abap_true.
        t40->value = t39.
        t37 = t40.
      ELSE.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        t37 = t41.
      ENDIF.
      t36 = NEW zcx_lnt_assert_error( i_message_26cb = t37 ).
      t35 = NEW #( ).
      t35->payload = t36.
      CLEAR t35->source_value.
      IF t36 IS BOUND.
        DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t42.
        DATA t43 TYPE REF TO object.
        CLEAR t43.
        CLEAR t42.
        t43 = t36.
        TRY.
            t35->source_value ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35->source_value IS NOT BOUND.
          TRY.
              t42 ?= t36.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t42 IS BOUND.
            t35->source_value = t42->source( ).
          ENDIF.
          IF t35->source_value IS NOT BOUND.
            CREATE OBJECT t35->source_value.
            t35->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t35->source_value->oval = t36.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t35.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t46.
    DATA(t47) = t24.
    t46 = t47.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    t45 = t46->find_direct_expression( i_type_9913 = t48 ).
    t44 = t45.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = t44.
    t49 = xsdbool( t50 IS BOUND ).
    IF t49 = abap_true.
      DATA t51 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t51.
      TRY.
          DATA t52 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t52.
          DATA t53 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t53.
          DATA(t54) = t44.
          t53 = t54.
          DATA(t55) = t2.
          t52 = zcl_lnt_sy_default=>run_syntax( i_node = t53 i_input_967e = t55 ).
        CATCH zlnt_exception_cl_30eec8e8805d INTO t51.
          DATA(t56) = t51->payload.
          DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t58.
          DATA t59 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t59.
          DATA(t60) = t4.
          t59 = t60.
          t58 = t59->get_first_token( ).
          DATA(t61) = VALUE string( ).
          DATA(t62) = t2.
          t61 = t62->filename.
          DATA t63 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t63.
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t65.
          DATA(t66) = t56.
          t65 = t66.
          DATA(t67) = VALUE string( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE string( ).
          DATA(t70) = t65.
          t69 = t70->message_25cb.
          DATA(t71) = ||.
          t68 = xsdbool( t69 = t71 ).
          IF t68 = abap_true.
            DATA(t72) = |Error|.
            t67 = t72.
          ELSE.
            DATA(t73) = VALUE string( ).
            DATA(t74) = |Error: |.
            DATA(t75) = VALUE string( ).
            DATA(t76) = t65.
            t75 = t76->message_25cb.
            DATA(t77) = strlen( t74 ).
            t73 = |{ t74 }{ t75 }|.
            t67 = t73.
          ENDIF.
          t64 = t67.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t78.
          t63 = NEW zcl_lnt_unknown_type( i_error = t64 i_qualified_name = t78 ).
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t79.
          DATA(t80) = abap_true.
          IF t80 = abap_true.
            DATA(t81) = t3.
            t79 = t81.
          ELSE.
            DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t82.
            t79 = t82.
          ENDIF.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          t57 = NEW zcl_lnt_typed_identifier( i_token = t58 i_filename = t61 i_type_9913 = t63 i_meta = t79 i_value = t83 ).
          result = t57.
          RETURN.
      ENDTRY.
    ENDIF.
    DATA(t84) = VALUE string( ).
    DATA(t85) = VALUE string( ).
    DATA(t86) = VALUE string( ).
    DATA t87 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t87.
    DATA(t88) = t24.
    t87 = t88.
    t86 = t87->concat_tokens( ).
    DATA(t89) = strlen( t86 ).
    t85 = t86.
    IF t85 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t85 TO UPPER CASE.
    ELSE.
      t85 = zlnt_runtime_uppe_91169605024d=>full( t85 ).
    ENDIF.
    t84 = t85.
    DATA(t90) = VALUE abap_bool( ).
    DATA(t91) = VALUE abap_bool( ).
    DATA(t92) = t84.
    DATA(t93) = |TYPE C|.
    t91 = xsdbool( t92 = t93 ).
    t90 = t91.
    IF t91 = abap_false.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t84.
      DATA(t96) = |TYPE C |.
      DATA(t97) = strlen( t95 ).
      DATA(t98) = VALUE i( ).
      DATA(t99) = VALUE i( ).
      DATA(t100) = VALUE string( ).
      t98 = strlen( t96 ).
      IF t98 = 0.
        t94 = abap_true.
      ELSEIF t98 <= t97.
        t99 = 0.
        t100 = t95+t99(t98).
        IF t100 = t96.
          t94 = abap_true.
        ENDIF.
      ENDIF.
      t90 = t94.
    ENDIF.
    IF t90 = abap_true.
      DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t102.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t103.
      DATA(t104) = t4.
      t103 = t104.
      t102 = t103->get_first_token( ).
      DATA(t105) = VALUE string( ).
      DATA(t106) = t2.
      t105 = t106->filename.
      DATA(t107) = CAST zcl_lnt_c_generic_type( zcl_lnt_c_generic_type=>get_db65( ) ).
      DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t108.
      DATA(t109) = abap_true.
      IF t109 = abap_true.
        DATA(t110) = t3.
        t108 = t110.
      ELSE.
        DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t111.
        t108 = t111.
      ENDIF.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      t101 = NEW zcl_lnt_typed_identifier( i_token = t102 i_filename = t105 i_type_9913 = t107 i_meta = t108 i_value = t112 ).
      result = t101.
      RETURN.
    ELSE.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = VALUE abap_bool( ).
      DATA(t115) = t84.
      DATA(t116) = |TYPE X|.
      t114 = xsdbool( t115 = t116 ).
      t113 = t114.
      IF t114 = abap_false.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = t84.
        DATA(t119) = |TYPE X |.
        DATA(t120) = strlen( t118 ).
        DATA(t121) = VALUE i( ).
        DATA(t122) = VALUE i( ).
        DATA(t123) = VALUE string( ).
        t121 = strlen( t119 ).
        IF t121 = 0.
          t117 = abap_true.
        ELSEIF t121 <= t120.
          t122 = 0.
          t123 = t118+t122(t121).
          IF t123 = t119.
            t117 = abap_true.
          ENDIF.
        ENDIF.
        t113 = t117.
      ENDIF.
      IF t113 = abap_true.
        DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t124.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t125.
        DATA t126 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t126.
        DATA(t127) = t4.
        t126 = t127.
        t125 = t126->get_first_token( ).
        DATA(t128) = VALUE string( ).
        DATA(t129) = t2.
        t128 = t129->filename.
        DATA(t130) = CAST zcl_lnt_x_generic_type( zcl_lnt_x_generic_type=>get_db65( ) ).
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t131.
        DATA(t132) = abap_true.
        IF t132 = abap_true.
          DATA(t133) = t3.
          t131 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t134.
          t131 = t134.
        ENDIF.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        t124 = NEW zcl_lnt_typed_identifier( i_token = t125 i_filename = t128 i_type_9913 = t130 i_meta = t131 i_value = t135 ).
        result = t124.
        RETURN.
      ELSE.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = t84.
        DATA(t139) = |TYPE P|.
        t137 = xsdbool( t138 = t139 ).
        t136 = t137.
        IF t137 = abap_false.
          DATA(t140) = VALUE abap_bool( ).
          DATA(t141) = t84.
          DATA(t142) = |TYPE P |.
          DATA(t143) = strlen( t141 ).
          DATA(t144) = VALUE i( ).
          DATA(t145) = VALUE i( ).
          DATA(t146) = VALUE string( ).
          t144 = strlen( t142 ).
          IF t144 = 0.
            t140 = abap_true.
          ELSEIF t144 <= t143.
            t145 = 0.
            t146 = t141+t145(t144).
            IF t146 = t142.
              t140 = abap_true.
            ENDIF.
          ENDIF.
          t136 = t140.
        ENDIF.
        IF t136 = abap_true.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t148.
          DATA t149 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t149.
          DATA(t150) = t4.
          t149 = t150.
          t148 = t149->get_first_token( ).
          DATA(t151) = VALUE string( ).
          DATA(t152) = t2.
          t151 = t152->filename.
          DATA(t153) = CAST zcl_lnt_p_generic_type( zcl_lnt_p_generic_type=>get_db65( ) ).
          DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t154.
          DATA(t155) = abap_true.
          IF t155 = abap_true.
            DATA(t156) = t3.
            t154 = t156.
          ELSE.
            DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t157.
            t154 = t157.
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          t147 = NEW zcl_lnt_typed_identifier( i_token = t148 i_filename = t151 i_type_9913 = t153 i_meta = t154 i_value = t158 ).
          result = t147.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t159.
    DATA t160 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t160.
    DATA t161 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t161.
    DATA(t162) = t2.
    t161 = NEW zcl_lnt_basic_types( i_input_967e = t162 ).
    DATA t163 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t163.
    DATA(t164) = t24.
    t163 = t164.
    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t165.
    t160 = t161->parse_type( i_node = t163 i_qualified_name = t165 ).
    t159 = t160.
    DATA(t166) = VALUE abap_bool( ).
    DATA(t167) = t159.
    t166 = xsdbool( t167 IS BOUND ).
    IF t166 = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t170.
      DATA(t171) = t4.
      t170 = t171.
      t169 = t170->get_first_token( ).
      DATA(t172) = VALUE string( ).
      DATA(t173) = t2.
      t172 = t173->filename.
      DATA t174 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t174.
      DATA(t175) = t159.
      t174 = t175.
      DATA t176 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t176.
      DATA(t177) = abap_true.
      IF t177 = abap_true.
        DATA(t178) = t3.
        t176 = t178.
      ELSE.
        DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t179.
        t176 = t179.
      ENDIF.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      t168 = NEW zcl_lnt_typed_identifier( i_token = t169 i_filename = t172 i_type_9913 = t174 i_meta = t176 i_value = t180 ).
      result = t168.
      RETURN.
    ELSE.
      DATA t181 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t181.
      DATA t182 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t182.
      DATA t183 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t183.
      DATA(t184) = t4.
      t183 = t184.
      t182 = t183->get_first_token( ).
      DATA(t185) = VALUE string( ).
      DATA(t186) = t2.
      t185 = t186->filename.
      DATA t187 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t187.
      DATA(t188) = |method param, todo|.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t189.
      t187 = NEW zcl_lnt_unknown_type( i_error = t188 i_qualified_name = t189 ).
      DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t190.
      DATA(t191) = abap_true.
      IF t191 = abap_true.
        DATA(t192) = t3.
        t190 = t192.
      ELSE.
        DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t193.
        t190 = t193.
      ENDIF.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      t181 = NEW zcl_lnt_typed_identifier( i_token = t182 i_filename = t185 i_type_9913 = t187 i_meta = t190 i_value = t194 ).
      result = t181.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d822_2b8f8a4e40c9.
  ENDMETHOD.
ENDCLASS.
