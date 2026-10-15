* TS: src/abap/5_syntax/statements/message.ts:11:1 Message
CLASS zcl_lnt_sy_message DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_message IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = |INTO|.
    t4 = t5->find_expression_after_token( i_text = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = t3.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
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
      DATA(t17) = t9.
      t16 = t17.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t15 = t16->find_direct_expression( i_type_9913 = t18 ).
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t7.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA(t22) = t7.
      t21 = t22.
      DATA(t23) = t2.
      DATA t24 TYPE REF TO zcl_lnt_string_type.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t25.
      t24 = zcl_lnt_string_type=>get_db65( i_input_967e = t25 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t21 i_input_967e = t23 i_type_9913 = t24 ).
    ELSE.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t3.
      t26 = xsdbool( t27 IS BOUND ).
      IF t26 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_abstract_type.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        DATA(t30) = t3.
        t29 = t30.
        DATA(t31) = t2.
        t28 = zcl_lnt_sy_target=>run_syntax( i_node = t29 i_input_967e = t31 ).
      ENDIF.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t33) = t1.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14.
    t32 = t33->find_direct_expressions( i_type_9913 = t34 ).
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = VALUE i( ).
    DO.
      t32->load( ).
      IF t37 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t32->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = t35.
      DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t40 = t41->find_direct_expressions( i_type_9913 = t42 ).
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      DATA(t45) = VALUE i( ).
      DO.
        t40->load( ).
        IF t45 >= lines( t40->items ).
          EXIT.
        ENDIF.
        CLEAR t44.
        READ TABLE t40->items INDEX t45 + 1 INTO t44.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t44.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t44.
        ENDIF.
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t49.
        DATA(t50) = abap_true.
        IF t50 = abap_true.
          DATA(t51) = t43.
          t49 = t51.
        ELSE.
          DATA t52 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t52.
          t49 = t52.
        ENDIF.
        DATA(t53) = t2.
        DATA t54 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t56.
        DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t57.
        t48 = zcl_lnt_sy_source=>run_syntax( i_node = t49 i_input_967e = t53 i_target_type = t54 i_write_reference = t55 i_allow_generic_deference = t56 i_read_reference = t57 ).
      ENDDO.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t59) = t35.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t58 = t59->find_direct_expressions( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t58->load( ).
        IF t63 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t58->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          DATA t65 TYPE REF TO object.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA t66 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t66.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = t61.
          t67 = t69.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t70.
          t67 = t70.
        ENDIF.
        DATA(t71) = t2.
        DATA t72 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t75.
        t66 = zcl_lnt_sy_source=>run_syntax( i_node = t67 i_input_967e = t71 i_target_type = t72 i_write_reference = t73 i_allow_generic_deference = t74 i_read_reference = t75 ).
      ENDDO.
    ENDDO.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t77) = t1.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t76 = t77->find_direct_expressions( i_type_9913 = t78 ).
    DATA t79 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t79.
    DATA t80 TYPE REF TO object.
    CLEAR t80.
    DATA(t81) = VALUE i( ).
    DO.
      t76->load( ).
      IF t81 >= lines( t76->items ).
        EXIT.
      ENDIF.
      CLEAR t80.
      READ TABLE t76->items INDEX t81 + 1 INTO t80.
      t81 = t81 + 1.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      CLEAR t79.
      IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t82 ?= t80.
        DATA t83 TYPE REF TO object.
        t83 = t82->as_ref( ).
        t79 ?= t83.
      ELSE.
        t79 ?= t80.
      ENDIF.
      DATA t84 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t84.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t85.
      DATA(t86) = abap_true.
      IF t86 = abap_true.
        DATA(t87) = t79.
        t85 = t87.
      ELSE.
        DATA t88 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t88.
        t85 = t88.
      ENDIF.
      DATA(t89) = t2.
      DATA t90 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t93.
      t84 = zcl_lnt_sy_source=>run_syntax( i_node = t85 i_input_967e = t89 i_target_type = t90 i_write_reference = t91 i_allow_generic_deference = t92 i_read_reference = t93 ).
    ENDDO.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t95) = t1.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t94 = t95->find_direct_expressions( i_type_9913 = t96 ).
    DATA t97 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t97.
    DATA t98 TYPE REF TO object.
    CLEAR t98.
    DATA(t99) = VALUE i( ).
    DO.
      t94->load( ).
      IF t99 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t98.
      READ TABLE t94->items INDEX t99 + 1 INTO t98.
      t99 = t99 + 1.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      CLEAR t97.
      IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t100 ?= t98.
        DATA t101 TYPE REF TO object.
        t101 = t100->as_ref( ).
        t97 ?= t101.
      ELSE.
        t97 ?= t98.
      ENDIF.
      DATA t102 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t102.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t103.
      DATA(t104) = abap_true.
      IF t104 = abap_true.
        DATA(t105) = t97.
        t103 = t105.
      ELSE.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t106.
        t103 = t106.
      ENDIF.
      DATA(t107) = t2.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t108.
      DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t111.
      t102 = zcl_lnt_sy_source=>run_syntax( i_node = t103 i_input_967e = t107 i_target_type = t108 i_write_reference = t109 i_allow_generic_deference = t110 i_read_reference = t111 ).
    ENDDO.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t113) = t1.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d218_79f2a1395386.
    t112 = t113->find_direct_expressions( i_type_9913 = t114 ).
    DATA t115 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t115.
    DATA t116 TYPE REF TO object.
    CLEAR t116.
    DATA(t117) = VALUE i( ).
    DO.
      t112->load( ).
      IF t117 >= lines( t112->items ).
        EXIT.
      ENDIF.
      CLEAR t116.
      READ TABLE t112->items INDEX t117 + 1 INTO t116.
      t117 = t117 + 1.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t115.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t116.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t115 ?= t119.
      ELSE.
        t115 ?= t116.
      ENDIF.
      DATA(t120) = t115.
      DATA(t121) = t2.
      zcl_lnt_sy_message_source=>run_syntax( i_node = t120 i_input_967e = t121 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d928_d99df58ff153.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
