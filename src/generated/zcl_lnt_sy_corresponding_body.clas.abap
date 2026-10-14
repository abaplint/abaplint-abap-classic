* TS: src/abap/5_syntax/expressions/corresponding_body.ts:7:1 CorrespondingBody
CLASS zcl_lnt_sy_corresponding_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_corresponding_body IMPLEMENTATION.
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
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    t16 = t17.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    t15 = t16->find_direct_expression( i_type_9913 = t18 ).
    t14 = t15.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t14.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = t14.
      t24 = t25.
      DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
      t23 = t24->find_direct_expression( i_type_9913 = t26 ).
      t19 = t23.
    ENDIF.
    t13 = t19.
    t12 = t13.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t12.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        DATA(t33) = t12.
        t32 = t33.
        t30 = t32.
      ELSE.
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      DATA(t35) = t2.
      DATA(t36) = t3.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t39.
      t29 = zcl_lnt_sy_source=>run_syntax( i_node = t30 i_input_967e = t35 i_target_type = t36 i_write_reference = t37 i_allow_generic_deference = t38 i_read_reference = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zcl_lnt_abstract_type.
    DATA t41 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    DATA(t44) = t1.
    t43 = t44.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74.
    t42 = t43->find_direct_expressions( i_type_9913 = t45 ).
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t46.
    DATA t47 TYPE REF TO object.
    CLEAR t47.
    LOOP AT t42->items INTO t47.
      t46 ?= t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t50) = t40.
      t49 = t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t51 = t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = t49.
      IF t54 IS INITIAL.
        t53 = abap_true.
      ENDIF.
      t48 = t53.
      IF t48 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = t46.
          t56 = t58.
        ELSE.
          DATA t59 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t59.
          t56 = t59.
        ENDIF.
        DATA(t60) = t2.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t63.
        DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t64.
        t55 = zcl_lnt_sy_source=>run_syntax( i_node = t56 i_input_967e = t60 i_target_type = t61 i_write_reference = t62 i_allow_generic_deference = t63 i_read_reference = t64 ).
        t40 = t55.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA(t68) = t46.
          t66 = t68.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t69.
          t66 = t69.
        ENDIF.
        DATA(t70) = t2.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t71.
        DATA t72 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t74.
        t65 = zcl_lnt_sy_source=>run_syntax( i_node = t66 i_input_967e = t70 i_target_type = t71 i_write_reference = t72 i_allow_generic_deference = t73 i_read_reference = t74 ).
      ENDIF.
    ENDLOOP.
    DATA t75 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t75.
    DATA t76 TYPE abap_bool.
    DATA(t77) = t3.
    t76 = xsdbool( t77 IS BOUND ).
    IF t76 = abap_true.
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t78.
      DATA(t79) = abap_true.
      IF t79 = abap_true.
        DATA t80 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t81) = t3.
        t80 = t81.
        t78 = t80.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t82.
        t78 = t82.
      ENDIF.
      t75 = t78.
    ELSE.
      DATA(t83) = t40.
      t75 = t83.
    ENDIF.
    result = t75.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d774_0b2655d82e4e.
  ENDMETHOD.
ENDCLASS.
