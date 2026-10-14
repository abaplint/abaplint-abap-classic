* TS: src/abap/5_syntax/expressions/filter_body.ts:9:1 FilterBody
CLASS zcl_lnt_sy_filter_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_filter_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_target_type.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA(t11) = t3.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8d6bb411953d.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8d6bb411953d.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = t1.
    t15 = t16.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t14 = t15->find_direct_expressions( i_type_9913 = t17 ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    LOOP AT t14->items INTO t19.
      t18 ?= t19.
      DATA(t20) = t12.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA(t24) = t18.
        t22 = t24.
      ELSE.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t25.
        t22 = t25.
      ENDIF.
      DATA(t26) = t2.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      t21 = zcl_lnt_sy_source=>run_syntax( i_node = t22 i_input_967e = t26 i_target_type = t27 i_write_reference = t28 i_allow_generic_deference = t29 i_read_reference = t30 ).
      APPEND t21 TO t20->items.
    ENDLOOP.
    DATA t31 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t32.
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t34.
    DATA(t35) = t12.
    READ TABLE t35->items INDEX 1 INTO t34.
    t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t33 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA t38 TYPE REF TO zcl_lnt_abstract_type.
        DATA t39 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t40 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t41.
        DATA(t42) = t12.
        READ TABLE t42->items INDEX 1 INTO t41.
        t40 ?= t41.
        t39 = t40.
        DATA t43 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t44) = t39.
        t43 = t44->row_type.
        t38 = t43.
        t36 = t38.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t45.
        t36 = t45.
      ENDIF.
      t32 = t36.
    ELSE.
      DATA t46 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t46.
      t32 = t46.
    ENDIF.
    t31 = t32.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t48.
    DATA t49 TYPE abap_bool.
    DATA t50 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t50.
    DATA(t51) = t12.
    READ TABLE t51->items INDEX 2 INTO t50.
    t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t49 = abap_true.
      DATA t52 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA t54 TYPE REF TO zcl_lnt_abstract_type.
        DATA t55 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t56 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t57 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t57.
        DATA(t58) = t12.
        READ TABLE t58->items INDEX 2 INTO t57.
        t56 ?= t57.
        t55 = t56.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t60) = t55.
        t59 = t60->row_type.
        t54 = t59.
        t52 = t54.
      ELSE.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t61.
        t52 = t61.
      ENDIF.
      t48 = t52.
    ELSE.
      DATA t62 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t62.
      t48 = t62.
    ENDIF.
    t47 = t48.
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    DATA t64 TYPE REF TO zcl_lnt_expression_node.
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    DATA(t66) = t1.
    t65 = t66.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d131_942bad51dc56.
    t64 = t65->find_direct_expression( i_type_9913 = t67 ).
    t63 = t64.
    DATA(t68) = t2.
    DATA(t69) = t31.
    DATA(t70) = t47.
    zcl_lnt_sy_component_cond=>run_syntax( i_node = t63 i_input_967e = t68 i_left_type = t69 i_right_type = t70 ).
    DATA t71 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t71.
    DATA t72 TYPE abap_bool.
    DATA t73 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t73.
    DATA(t74) = t12.
    READ TABLE t74->items INDEX 1 INTO t73.
    t72 = xsdbool( t73 IS BOUND ).
    IF t72 = abap_true.
      DATA t75 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t75.
      DATA(t76) = abap_true.
      IF t76 = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        DATA t78 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t78.
        DATA(t79) = t12.
        READ TABLE t79->items INDEX 1 INTO t78.
        t77 = t78.
        t75 = t77.
      ELSE.
        DATA t80 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t80.
        t75 = t80.
      ENDIF.
      t71 = t75.
    ELSE.
      DATA(t81) = t3.
      t71 = t81.
    ENDIF.
    result = t71.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d784_b0dc1a04ca48.
  ENDMETHOD.
ENDCLASS.
