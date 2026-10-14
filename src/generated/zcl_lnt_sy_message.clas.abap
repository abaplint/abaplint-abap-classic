* TS: src/abap/5_syntax/statements/message.ts:11:1 Message
CLASS zcl_lnt_sy_message DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_message IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t6) = |INTO|.
    t4 = t5->find_expression_after_token( i_text = t6 ).
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
      DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a ).
      t15 = t16->find_direct_expression( i_type_9913 = t18 ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t19 TYPE abap_bool.
    DATA(t20) = CAST zcl_lnt_expression_node( t7 ).
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA(t22) = CAST zcl_lnt_expression_node( t7 ).
      t21 = t22.
      DATA(t23) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t24 TYPE REF TO zcl_lnt_string_type.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t25.
      t24 = zcl_lnt_string_type=>get_db65( i_input_967e = t25 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t21 i_input_967e = t23 i_type_9913 = t24 ).
    ELSE.
      DATA t26 TYPE abap_bool.
      DATA(t27) = CAST zcl_lnt_expression_node( t3 ).
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_abstract_type.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        DATA(t30) = CAST zcl_lnt_expression_node( t3 ).
        t29 = t30.
        DATA(t31) = CAST zcl_lnt_syntax_input( t2 ).
        t28 = zcl_lnt_sy_target=>run_syntax( i_node = t29 i_input_967e = t31 ).
      ENDIF.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t33) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc ).
    t32 = t33->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    LOOP AT t32->items INTO t36.
      t35 ?= t36.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t38) = CAST zcl_lnt_expression_node( t35 ).
      DATA(t39) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t37 = t38->find_direct_expressions( i_type_9913 = t39 ).
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      LOOP AT t37->items INTO t41.
        t40 ?= t41.
        DATA t42 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
          DATA(t45) = CAST zcl_lnt_expression_node( t40 ).
          t43 = t45.
        ELSE.
          DATA t46 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t46.
          t43 = t46.
        ENDIF.
        DATA(t47) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t50.
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t51.
        t42 = zcl_lnt_sy_source=>run_syntax( i_node = t43 i_input_967e = t47 i_target_type = t48 i_write_reference = t49 i_allow_generic_deference = t50 i_read_reference = t51 ).
      ENDLOOP.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t53) = CAST zcl_lnt_expression_node( t35 ).
      DATA(t54) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
      t52 = t53->find_direct_expressions( i_type_9913 = t54 ).
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t55.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      LOOP AT t52->items INTO t56.
        t55 ?= t56.
        DATA t57 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA(t60) = CAST zcl_lnt_expression_node( t55 ).
          t58 = t60.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t61.
          t58 = t61.
        ENDIF.
        DATA(t62) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t63 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t63.
        DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t64.
        DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t65.
        DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t66.
        t57 = zcl_lnt_sy_source=>run_syntax( i_node = t58 i_input_967e = t62 i_target_type = t63 i_write_reference = t64 i_allow_generic_deference = t65 i_read_reference = t66 ).
      ENDLOOP.
    ENDLOOP.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t68) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t67 = t68->find_direct_expressions( i_type_9913 = t69 ).
    DATA t70 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t70.
    DATA t71 TYPE REF TO object.
    CLEAR t71.
    LOOP AT t67->items INTO t71.
      t70 ?= t71.
      DATA t72 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA(t75) = CAST zcl_lnt_expression_node( t70 ).
        t73 = t75.
      ELSE.
        DATA t76 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t76.
        t73 = t76.
      ENDIF.
      DATA(t77) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t81.
      t72 = zcl_lnt_sy_source=>run_syntax( i_node = t73 i_input_967e = t77 i_target_type = t78 i_write_reference = t79 i_allow_generic_deference = t80 i_read_reference = t81 ).
    ENDLOOP.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t83) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t84) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t82 = t83->find_direct_expressions( i_type_9913 = t84 ).
    DATA t85 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t85.
    DATA t86 TYPE REF TO object.
    CLEAR t86.
    LOOP AT t82->items INTO t86.
      t85 ?= t86.
      DATA t87 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t88.
      DATA(t89) = abap_true.
      IF t89 = abap_true.
        DATA(t90) = CAST zcl_lnt_expression_node( t85 ).
        t88 = t90.
      ELSE.
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t91.
        t88 = t91.
      ENDIF.
      DATA(t92) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t93 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t96.
      t87 = zcl_lnt_sy_source=>run_syntax( i_node = t88 i_input_967e = t92 i_target_type = t93 i_write_reference = t94 i_allow_generic_deference = t95 i_read_reference = t96 ).
    ENDLOOP.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t98) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43 ).
    t97 = t98->find_direct_expressions( i_type_9913 = t99 ).
    DATA t100 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t100.
    DATA t101 TYPE REF TO object.
    CLEAR t101.
    LOOP AT t97->items INTO t101.
      t100 ?= t101.
      DATA(t102) = CAST zcl_lnt_expression_node( t100 ).
      DATA(t103) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_message_source=>run_syntax( i_node = t102 i_input_967e = t103 ).
    ENDLOOP.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d906_2d2a73eda936.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
