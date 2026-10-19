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
      DATA(t19) = |method_parameter.ts, todo, handle pass by value and referenc|.
      t19 = t19 && |e|.
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
      DATA(t39) = |method_parameter.ts, unexpected structure|.
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
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    DATA t46 TYPE REF TO zcl_lnt_basic_types.
    t46 = NEW zcl_lnt_basic_types( i_input_967e = t2 ).
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    t48 = t24.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t45 = t46->parse_type( i_node = t48 i_qualified_name = t50 ).
    t44 = t45.
    DATA(t51) = VALUE string( ).
    t51 = |RETURNING parameter must be fully specified|.
    DATA(t53) = VALUE string( ).
    DATA(t54) = VALUE string( ).
    DATA(t55) = VALUE string( ).
    DATA t56 TYPE REF TO zcl_lnt_expression_node.
    t56 = t24.
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
    DATA t63 TYPE REF TO zcl_lnt_abstract_type.
    t63 = t44.
    DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t66) = xsdbool( t63 IS INITIAL ).
    IF t66 = abap_true.
    ELSE.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zcl_lnt_abstract_type.
      t70 = t63.
      t69 = t70->is_generic( ).
      DATA(t72) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t72->has = abap_true.
      t72->value = t69.
      t65 = t72.
    ENDIF.
    t62 = t65.
    DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t76) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t76->has = abap_true.
    t76->value = abap_true.
    t73 = t76.
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
      DATA(t82) = |TYPE X|.
      t80 = xsdbool( t53 = t82 ).
      t60 = t80.
    ENDIF.
    t59 = t60.
    IF t60 = abap_false.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t85) = |TYPE C|.
      t83 = xsdbool( t53 = t85 ).
      t59 = t83.
    ENDIF.
    IF t59 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t86 = t2->issues.
      DATA t88 TYPE REF TO zcl_lnt_issue.
      DATA t90 TYPE REF TO zcl_lnt_abstract_token.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      t91 = t24.
      t90 = t91->get_first_token( ).
      DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t90 i_message_26cb = t51 i_fix = t94 ).
      t86->load( ).
      APPEND t88 TO t86->items.
      t86->save( ).
      DATA t95 TYPE REF TO zcl_lnt_unknown_type.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t95 = NEW zcl_lnt_unknown_type( i_error = t51 i_qualified_name = t97 ).
      t44 = t95.
    ENDIF.
    DATA(t98) = VALUE abap_bool( ).
    t98 = xsdbool( t44 IS BOUND ).
    IF t98 = abap_true.
      DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t101 TYPE REF TO zcl_lnt_abstract_token.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      t102 = t4.
      t101 = t102->get_first_token( ).
      DATA(t104) = VALUE string( ).
      t104 = t2->filename.
      DATA t106 TYPE REF TO zcl_lnt_abstract_type.
      t106 = t44.
      DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t108 = t3.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t100 = NEW zcl_lnt_typed_identifier( i_token = t101 i_filename = t104 i_type_9913 = t106 i_meta = t108 i_value = t112 ).
      result = t100.
      RETURN.
    ELSE.
      DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t114 TYPE REF TO zcl_lnt_abstract_token.
      DATA t115 TYPE REF TO zcl_lnt_expression_node.
      t115 = t4.
      t114 = t115->get_first_token( ).
      DATA(t117) = VALUE string( ).
      t117 = t2->filename.
      DATA t119 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t120) = |method param, todo|.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t119 = NEW zcl_lnt_unknown_type( i_error = t120 i_qualified_name = t121 ).
      DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t122 = t3.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
