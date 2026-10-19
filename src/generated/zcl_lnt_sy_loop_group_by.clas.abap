* TS: src/abap/5_syntax/expressions/loop_group_by.ts:11:1 LoopGroupBy
CLASS zcl_lnt_sy_loop_group_by DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_loop_group_by IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t3 = t1->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t12 = t6->find_direct_expression( i_type_9913 = t14 ).
      t11 = t12.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t11 IS BOUND ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        t17 = t11.
        DATA t20 TYPE REF TO zcl_lnt_void_type.
        CLEAR t20.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA(t23) = |todoGroupBy|.
        DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t24->has = abap_true.
        t24->value = t23.
        t21 = t24.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t20 = zcl_lnt_void_type=>get_db65( i_voided = t21 i_qualified_name = t26 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t17 i_input_967e = t2 i_type_9913 = t20 ).
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        t27 = zcl_lnt_sy_target=>run_syntax( i_node = t6 i_input_967e = t2 ).
      ENDIF.
    ENDDO.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t30 = t1->find_all_expressions( i_type_9913 = t32 ).
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA t34 TYPE REF TO object.
    DATA(t35) = VALUE i( ).
    DO.
      t30->load( ).
      IF t35 >= lines( t30->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t30->items INDEX t35 + 1 INTO t34.
      t35 = t35 + 1.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t33.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t34.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA t40 TYPE REF TO zcl_lnt_void_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA(t43) = |todoGroupBy|.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = t44.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      t40 = zcl_lnt_void_type=>get_db65( i_voided = t41 i_qualified_name = t46 ).
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t33 i_input_967e = t2 i_type_9913 = t40 ).
    ENDDO.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t47 = t1->find_direct_expressions( i_type_9913 = t49 ).
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    DATA t51 TYPE REF TO object.
    DATA(t52) = VALUE i( ).
    DO.
      t47->load( ).
      IF t52 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t51.
      READ TABLE t47->items INDEX t52 + 1 INTO t51.
      t52 = t52 + 1.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t50.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t51.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t50 ?= t54.
      ELSE.
        t50 ?= t51.
      ENDIF.
      DATA t55 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t56.
      t56 = t50.
      DATA t61 TYPE REF TO zcl_lnt_void_type.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      DATA(t64) = |todoGroupBy|.
      DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t65->has = abap_true.
      t65->value = t64.
      t62 = t65.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      t61 = zcl_lnt_void_type=>get_db65( i_voided = t62 i_qualified_name = t67 ).
      DATA t68 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t70.
      t55 = zcl_lnt_sy_source=>run_syntax( i_node = t56 i_input_967e = t2 i_target_type = t61 i_write_reference = t68 i_allow_generic_deference = t69 i_read_reference = t70 ).
    ENDDO.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931.
    t71 = t1->find_direct_expressions( i_type_9913 = t73 ).
    DATA t74 TYPE REF TO zcl_lnt_expression_node.
    DATA t75 TYPE REF TO object.
    DATA(t76) = VALUE i( ).
    DO.
      t71->load( ).
      IF t76 >= lines( t71->items ).
        EXIT.
      ENDIF.
      CLEAR t75.
      READ TABLE t71->items INDEX t76 + 1 INTO t75.
      t76 = t76 + 1.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      CLEAR t74.
      IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t77 ?= t75.
        DATA t78 TYPE REF TO object.
        t78 = t77->as_ref( ).
        t74 ?= t78.
      ELSE.
        t74 ?= t75.
      ENDIF.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56.
      t79 = t74->find_direct_expressions( i_type_9913 = t81 ).
      DATA t82 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t82.
      DATA t83 TYPE REF TO object.
      CLEAR t83.
      DATA(t84) = VALUE i( ).
      DO.
        t79->load( ).
        IF t84 >= lines( t79->items ).
          EXIT.
        ENDIF.
        CLEAR t83.
        READ TABLE t79->items INDEX t84 + 1 INTO t83.
        t84 = t84 + 1.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        CLEAR t82.
        IF t83 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t85 ?= t83.
          DATA t86 TYPE REF TO object.
          t86 = t85->as_ref( ).
          t82 ?= t86.
        ELSE.
          t82 ?= t83.
        ENDIF.
        DATA t89 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t89.
        DATA t90 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t90.
        zcl_lnt_sy_component_compare=>run_syntax( i_node = t82 i_input_967e = t2 i_left_type = t89 i_right_type = t90 ).
      ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d816_929e61be1dd2.
  ENDMETHOD.
ENDCLASS.
