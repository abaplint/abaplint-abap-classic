* TS: src/abap/5_syntax/expressions/method_def_returning.ts:9:1 MethodDefReturning
CLASS zcl_lnt_sy_mthd_df_rtrnng DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_meta TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_mthd_df_rtrnng IMPLEMENTATION.
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
        DATA(t19) = |method_parameter.ts, todo, handle pass by value and referenc|.
        t19 = t19 && |e|.
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
        DATA(t39) = |method_parameter.ts, unexpected structure|.
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
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t46.
    DATA(t47) = t2.
    t46 = NEW zcl_lnt_basic_types( i_input_967e = t47 ).
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t48.
    DATA(t49) = t24.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    t45 = t46->parse_type( i_node = t48 i_qualified_name = t50 ).
    t44 = t45.
    DATA(t51) = VALUE string( ).
    DATA(t52) = |RETURNING parameter must be fully specified|.
    t51 = t52.
    DATA(t53) = VALUE string( ).
    DATA(t54) = VALUE string( ).
    DATA(t55) = VALUE string( ).
    DATA t56 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t56.
    DATA(t57) = t24.
    t56 = t57.
    t55 = t56->concat_tokens( ).
    DATA(t58) = strlen( t55 ).
    t54 = t55.
    IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t54 TO UPPER CASE.
    ELSE.
      t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
    ENDIF.
    t53 = t54.
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t62.
    DATA t63 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t63.
    DATA(t64) = t44.
    t63 = t64.
    DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t65.
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = t63.
    IF t67 IS INITIAL.
      t66 = abap_true.
    ENDIF.
    IF t66 = abap_true.
      DATA t68 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t68.
      t65 = t68.
    ELSE.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t70.
      DATA(t71) = t63.
      t70 = t71.
      t69 = t70->is_generic( ).
      DATA(t72) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t72->has = abap_true.
      t72->value = t69.
      t65 = t72.
    ENDIF.
    t62 = t65.
    DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t73.
    DATA(t74) = abap_true.
    IF t74 = abap_true.
      DATA(t75) = abap_true.
      DATA(t76) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t76->has = abap_true.
      t76->value = t75.
      t73 = t76.
    ELSE.
      DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t77.
      t73 = t77.
    ENDIF.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE abap_bool( ).
    IF t62 IS BOUND.
      t78 = t62->has.
    ENDIF.
    IF t73 IS BOUND.
      t79 = t73->has.
    ENDIF.
    IF t78 = t79.
      IF t78 = abap_false.
        t61 = abap_true.
      ELSEIF t62->value = t73->value.
        t61 = abap_true.
      ENDIF.
    ENDIF.
    t60 = t61.
    IF t61 = abap_false.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = t53.
      DATA(t82) = |TYPE X|.
      t80 = xsdbool( t81 = t82 ).
      t60 = t80.
    ENDIF.
    t59 = t60.
    IF t60 = abap_false.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = t53.
      DATA(t85) = |TYPE C|.
      t83 = xsdbool( t84 = t85 ).
      t59 = t83.
    ENDIF.
    IF t59 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t86.
      DATA(t87) = t2.
      t86 = t87->issues.
      DATA t88 TYPE REF TO zcl_lnt_issue.
      CLEAR t88.
      DATA(t89) = t2.
      DATA t90 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t91.
      DATA(t92) = t24.
      t91 = t92.
      t90 = t91->get_first_token( ).
      DATA(t93) = t51.
      DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t94.
      t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t89 i_token = t90 i_message_26cb = t93 i_fix = t94 ).
      t86->load( ).
      APPEND t88 TO t86->items.
      t86->save( ).
      DATA t95 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t95.
      DATA(t96) = t51.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      t95 = NEW zcl_lnt_unknown_type( i_error = t96 i_qualified_name = t97 ).
      t44 = t95.
    ENDIF.
    DATA(t98) = VALUE abap_bool( ).
    DATA(t99) = t44.
    t98 = xsdbool( t99 IS BOUND ).
    IF t98 = abap_true.
      DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA(t103) = t4.
      t102 = t103.
      t101 = t102->get_first_token( ).
      DATA(t104) = VALUE string( ).
      DATA(t105) = t2.
      t104 = t105->filename.
      DATA t106 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t106.
      DATA(t107) = t44.
      t106 = t107.
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
      t100 = NEW zcl_lnt_typed_identifier( i_token = t101 i_filename = t104 i_type_9913 = t106 i_meta = t108 i_value = t112 ).
      result = t100.
      RETURN.
    ELSE.
      DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t113.
      DATA t114 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t114.
      DATA t115 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t115.
      DATA(t116) = t4.
      t115 = t116.
      t114 = t115->get_first_token( ).
      DATA(t117) = VALUE string( ).
      DATA(t118) = t2.
      t117 = t118->filename.
      DATA t119 TYPE REF TO zcl_lnt_unknown_type.
      CLEAR t119.
      DATA(t120) = |method param, todo|.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      t119 = NEW zcl_lnt_unknown_type( i_error = t120 i_qualified_name = t121 ).
      DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t122.
      DATA(t123) = abap_true.
      IF t123 = abap_true.
        DATA(t124) = t3.
        t122 = t124.
      ELSE.
        DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t125.
        t122 = t125.
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      t113 = NEW zcl_lnt_typed_identifier( i_token = t114 i_filename = t117 i_type_9913 = t119 i_meta = t122 i_value = t126 ).
      result = t113.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d821_2e45b1626a3a.
  ENDMETHOD.
ENDCLASS.
