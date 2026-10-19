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
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
    t5 = t1->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = xsdbool( t4 IS INITIAL ).
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t16 TYPE REF TO zcx_lnt_assert_error.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t19) = |MethodParam, todo, handle pass by value and reference|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t19.
      t17 = t20.
      t16 = NEW zcx_lnt_assert_error( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
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
      RAISE EXCEPTION t15.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
    t25 = t1->find_direct_expression( i_type_9913 = t27 ).
    t24 = t25.
    DATA(t28) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t28 = xsdbool( t24 IS INITIAL ).
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t36 TYPE REF TO zcx_lnt_assert_error.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t39) = |MethodParam, unexpected structure|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
      t36 = NEW zcx_lnt_assert_error( i_message_26cb = t37 ).
      t35 = NEW #( ).
      t35->payload = t36.
      CLEAR t35->source_value.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
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
      RAISE EXCEPTION t35.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_expression_node.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    t46 = t24.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    t45 = t46->find_direct_expression( i_type_9913 = t48 ).
    t44 = t45.
    DATA(t49) = VALUE abap_bool( ).
    t49 = xsdbool( t44 IS BOUND ).
    IF t49 = abap_true.
      DATA t51 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      TRY.
          DATA t52 TYPE REF TO zcl_lnt_abstract_type.
          DATA t53 TYPE REF TO zcl_lnt_expression_node.
          t53 = t44.
          t52 = zcl_lnt_sy_default=>run_syntax( i_node = t53 i_input_967e = t2 ).
        CATCH zlnt_exception_cl_30eec8e8805d INTO t51.
          DATA(t56) = t51->payload.
          DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA t59 TYPE REF TO zcl_lnt_expression_node.
          t59 = t4.
          t58 = t59->get_first_token( ).
          DATA(t61) = VALUE string( ).
          t61 = t2->filename.
          DATA t63 TYPE REF TO zcl_lnt_unknown_type.
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          t65 = t56.
          DATA(t67) = VALUE string( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE string( ).
          t69 = t65->message_25cb.
          DATA(t71) = ||.
          t68 = xsdbool( t69 = t71 ).
          IF t68 = abap_true.
            t67 = |Error|.
          ELSE.
            DATA(t73) = VALUE string( ).
            DATA(t74) = |Error: |.
            DATA(t75) = VALUE string( ).
            t75 = t65->message_25cb.
            DATA(t77) = strlen( t74 ).
            t73 = |{ t74 }{ t75 }|.
            t67 = t73.
          ENDIF.
          t64 = t67.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t63 = NEW zcl_lnt_unknown_type( i_error = t64 i_qualified_name = t78 ).
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t79 = t3.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t57 = NEW zcl_lnt_typed_identifier( i_token = t58 i_filename = t61 i_type_9913 = t63 i_meta = t79 i_value = t83 ).
          result = t57.
          RETURN.
      ENDTRY.
    ENDIF.
    DATA(t84) = VALUE string( ).
    DATA(t85) = VALUE string( ).
    DATA(t86) = VALUE string( ).
    DATA t87 TYPE REF TO zcl_lnt_expression_node.
    t87 = t24.
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
    DATA(t93) = |TYPE C|.
    t91 = xsdbool( t84 = t93 ).
    t90 = t91.
    IF t91 = abap_false.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t96) = |TYPE C |.
      DATA(t97) = strlen( t84 ).
      DATA(t98) = VALUE i( ).
      DATA(t99) = VALUE i( ).
      DATA(t100) = VALUE string( ).
      t98 = strlen( t96 ).
      IF t98 = 0.
        t94 = abap_true.
      ELSEIF t98 <= t97.
        t99 = 0.
        t100 = t84+t99(t98).
        IF t100 = t96.
          t94 = abap_true.
        ENDIF.
      ENDIF.
      t90 = t94.
    ENDIF.
    IF t90 = abap_true.
      DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t102 TYPE REF TO zcl_lnt_abstract_token.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      t103 = t4.
      t102 = t103->get_first_token( ).
      DATA(t105) = VALUE string( ).
      t105 = t2->filename.
      DATA(t107) = CAST zcl_lnt_c_generic_type( zcl_lnt_c_generic_type=>get_db65( ) ).
      DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t108 = t3.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t101 = NEW zcl_lnt_typed_identifier( i_token = t102 i_filename = t105 i_type_9913 = t107 i_meta = t108 i_value = t112 ).
      result = t101.
      RETURN.
    ELSE.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = VALUE abap_bool( ).
      DATA(t116) = |TYPE X|.
      t114 = xsdbool( t84 = t116 ).
      t113 = t114.
      IF t114 = abap_false.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t119) = |TYPE X |.
        DATA(t120) = strlen( t84 ).
        DATA(t121) = VALUE i( ).
        DATA(t122) = VALUE i( ).
        DATA(t123) = VALUE string( ).
        t121 = strlen( t119 ).
        IF t121 = 0.
          t117 = abap_true.
        ELSEIF t121 <= t120.
          t122 = 0.
          t123 = t84+t122(t121).
          IF t123 = t119.
            t117 = abap_true.
          ENDIF.
        ENDIF.
        t113 = t117.
      ENDIF.
      IF t113 = abap_true.
        DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        DATA t126 TYPE REF TO zcl_lnt_expression_node.
        t126 = t4.
        t125 = t126->get_first_token( ).
        DATA(t128) = VALUE string( ).
        t128 = t2->filename.
        DATA(t130) = CAST zcl_lnt_x_generic_type( zcl_lnt_x_generic_type=>get_db65( ) ).
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t131 = t3.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t124 = NEW zcl_lnt_typed_identifier( i_token = t125 i_filename = t128 i_type_9913 = t130 i_meta = t131 i_value = t135 ).
        result = t124.
        RETURN.
      ELSE.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA(t139) = |TYPE P|.
        t137 = xsdbool( t84 = t139 ).
        t136 = t137.
        IF t137 = abap_false.
          DATA(t140) = VALUE abap_bool( ).
          DATA(t142) = |TYPE P |.
          DATA(t143) = strlen( t84 ).
          DATA(t144) = VALUE i( ).
          DATA(t145) = VALUE i( ).
          DATA(t146) = VALUE string( ).
          t144 = strlen( t142 ).
          IF t144 = 0.
            t140 = abap_true.
          ELSEIF t144 <= t143.
            t145 = 0.
            t146 = t84+t145(t144).
            IF t146 = t142.
              t140 = abap_true.
            ENDIF.
          ENDIF.
          t136 = t140.
        ENDIF.
        IF t136 = abap_true.
          DATA t147 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          DATA t149 TYPE REF TO zcl_lnt_expression_node.
          t149 = t4.
          t148 = t149->get_first_token( ).
          DATA(t151) = VALUE string( ).
          t151 = t2->filename.
          DATA(t153) = CAST zcl_lnt_p_generic_type( zcl_lnt_p_generic_type=>get_db65( ) ).
          DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t154 = t3.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t147 = NEW zcl_lnt_typed_identifier( i_token = t148 i_filename = t151 i_type_9913 = t153 i_meta = t154 i_value = t158 ).
          result = t147.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zcl_lnt_abstract_type.
    DATA t160 TYPE REF TO zcl_lnt_abstract_type.
    DATA t161 TYPE REF TO zcl_lnt_basic_types.
    t161 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t163 TYPE REF TO zcl_lnt_expression_node.
    t163 = t24.
    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t160 = t161->parse_type( i_node = t163 i_qualified_name = t165 ).
    t159 = t160.
    DATA(t166) = VALUE abap_bool( ).
    t166 = xsdbool( t159 IS BOUND ).
    IF t166 = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t169 TYPE REF TO zcl_lnt_abstract_token.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      t170 = t4.
      t169 = t170->get_first_token( ).
      DATA(t172) = VALUE string( ).
      t172 = t2->filename.
      DATA t174 TYPE REF TO zcl_lnt_abstract_type.
      t174 = t159.
      DATA t176 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t176 = t3.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t168 = NEW zcl_lnt_typed_identifier( i_token = t169 i_filename = t172 i_type_9913 = t174 i_meta = t176 i_value = t180 ).
      result = t168.
      RETURN.
    ELSE.
      DATA t181 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t182 TYPE REF TO zcl_lnt_abstract_token.
      DATA t183 TYPE REF TO zcl_lnt_expression_node.
      t183 = t4.
      t182 = t183->get_first_token( ).
      DATA(t185) = VALUE string( ).
      t185 = t2->filename.
      DATA t187 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t188) = |method param, todo|.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t187 = NEW zcl_lnt_unknown_type( i_error = t188 i_qualified_name = t189 ).
      DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t190 = t3.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
