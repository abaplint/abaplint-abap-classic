* TS: src/abap/5_syntax/statements/call_transformation.ts:11:1 CallTransformation
CLASS zcl_lnt_sy_call_transformation DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_call_transformation IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = |RESULT|.
    t4 = t5->find_expression_after_token( i_text = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_set__a5effc789cff.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_set__a5effc789cff.
    CLEAR t8.
    DATA(t9) = NEW zlnt_runtime_set__a5effc789cff( ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = CAST zcl_lnt_expression_node( t3 ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = CAST zcl_lnt_expression_node( t13 ).
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = CAST zcl_lnt_expression_node( t13 ).
      t20 = t21.
      DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
      t19 = t20->find_all_expressions( i_type_9913 = t22 ).
      t15 = t19.
    ENDIF.
    t12 = t15.
    t11 = t12.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE abap_bool.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
      t26 = t27.
      t23 = t26.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t28.
      t23 = t28.
    ENDIF.
    t10 = t23.
    t8 = t9->fromArray( p0 = t10 ).
    t7 = t8.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t29 = t30->find_all_expressions( i_type_9913 = t31 ).
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    LOOP AT t29->items INTO t33.
      t32 ?= t33.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE abap_bool.
      DATA(t36) = CAST zlnt_runtime_set__a5effc789cff( t7 ).
      DATA(t37) = CAST zcl_lnt_expression_node( t32 ).
      t35 = t36->has( p0 = t37 ).
      t34 = t35.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA(t41) = CAST zcl_lnt_expression_node( t32 ).
        t39 = t41.
      ELSE.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t42.
        t39 = t42.
      ENDIF.
      DATA(t43) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t44 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA(t47) = t34.
        DATA(t48) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t48->has = abap_true.
        t48->value = t47.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t49.
        t45 = t49.
      ENDIF.
      DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA(t52) = abap_false.
        DATA(t53) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t53->has = abap_true.
        t53->value = t52.
        t50 = t53.
      ELSE.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        t50 = t54.
      ENDIF.
      DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA t57 TYPE abap_bool.
        DATA(t58) = t34.
        DATA(t59) = abap_false.
        t57 = xsdbool( t58 = t59 ).
        DATA(t60) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t60->has = abap_true.
        t60->value = t57.
        t55 = t60.
      ELSE.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t61.
        t55 = t61.
      ENDIF.
      t38 = zcl_lnt_sy_source=>run_syntax( i_node = t39 i_input_967e = t43 i_target_type = t44 i_write_reference = t45 i_allow_generic_deference = t50 i_read_reference = t55 ).
    ENDLOOP.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t63) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t62 = t63->find_all_expressions( i_type_9913 = t64 ).
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t65.
    DATA t66 TYPE REF TO object.
    CLEAR t66.
    LOOP AT t62->items INTO t66.
      t65 ?= t66.
      DATA(t67) = CAST zcl_lnt_expression_node( t65 ).
      DATA(t68) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t67 i_input_967e = t68 ).
    ENDLOOP.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t70) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t71) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t69 = t70->find_all_expressions( i_type_9913 = t71 ).
    DATA t72 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t72.
    DATA t73 TYPE REF TO object.
    CLEAR t73.
    LOOP AT t69->items INTO t73.
      t72 ?= t73.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_expression_node.
      DATA(t77) = CAST zcl_lnt_expression_node( t72 ).
      t76 = t77.
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = CAST zcl_lnt_expression_node( t76 ).
      IF t80 IS INITIAL.
        t79 = abap_true.
      ENDIF.
      IF t79 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t81.
        t78 = t81.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        DATA(t83) = CAST zcl_lnt_expression_node( t76 ).
        DATA(t84) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
        t82 = t83->find_direct_expression( i_type_9913 = t84 ).
        t78 = t82.
      ENDIF.
      t75 = t78.
      t74 = t75.
      DATA t85 TYPE abap_bool.
      DATA(t86) = CAST zcl_lnt_expression_node( t74 ).
      t85 = xsdbool( t86 IS BOUND ).
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_expression_node.
        DATA(t88) = CAST zcl_lnt_expression_node( t74 ).
        t87 = t88.
        DATA(t89) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t90 TYPE REF TO zcl_lnt_x_string_type.
        DATA t91 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t91.
        t90 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t91 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t87 i_input_967e = t89 i_type_9913 = t90 ).
      ELSE.
        DATA t92 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t93) = CAST zcl_lnt_expression_node( t72 ).
        DATA(t94) = CAST zcl_lnt_syntax_input( t2 ).
        t92 = zcl_lnt_sy_target=>run_syntax( i_node = t93 i_input_967e = t94 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d843_a802fe206417.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
