* TS: src/abap/5_syntax/expressions/filter_body.ts:9:1 FilterBody
CLASS zcl_lnt_sy_filter_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_target_type TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t14 = t15->find_direct_expressions( i_type_9913 = t17 ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t14->load( ).
      IF t20 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t14->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA(t23) = t12.
      DATA t24 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA(t27) = t18.
        t25 = t27.
      ELSE.
        DATA t28 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t28.
        t25 = t28.
      ENDIF.
      DATA(t29) = t2.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t33.
      t24 = zcl_lnt_sy_source=>run_syntax( i_node = t25 i_input_967e = t29 i_target_type = t30 i_write_reference = t31 i_allow_generic_deference = t32 i_read_reference = t33 ).
      t23->load( ).
      APPEND t24 TO t23->items.
      t23->save( ).
    ENDDO.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t35.
    DATA t36 TYPE abap_bool.
    DATA t37 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t37.
    DATA(t38) = t12.
    t38->load( ).
    CLEAR t37.
    READ TABLE t38->items INDEX 1 INTO t37.
    t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t36 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        DATA t42 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t43 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t44.
        DATA(t45) = t12.
        t45->load( ).
        CLEAR t44.
        READ TABLE t45->items INDEX 1 INTO t44.
        t43 ?= t44.
        t42 = t43.
        DATA t46 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t47) = t42.
        t46 = t47->row_type.
        t41 = t46.
        t39 = t41.
      ELSE.
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t48.
        t39 = t48.
      ENDIF.
      t35 = t39.
    ELSE.
      DATA t49 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t49.
      t35 = t49.
    ENDIF.
    t34 = t35.
    DATA t50 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t51.
    DATA t52 TYPE abap_bool.
    DATA t53 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t53.
    DATA(t54) = t12.
    t54->load( ).
    CLEAR t53.
    READ TABLE t54->items INDEX 2 INTO t53.
    t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t52 = abap_true.
      DATA t55 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA t57 TYPE REF TO zcl_lnt_abstract_type.
        DATA t58 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t59 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t60 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t60.
        DATA(t61) = t12.
        t61->load( ).
        CLEAR t60.
        READ TABLE t61->items INDEX 2 INTO t60.
        t59 ?= t60.
        t58 = t59.
        DATA t62 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t63) = t58.
        t62 = t63->row_type.
        t57 = t62.
        t55 = t57.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t64.
        t55 = t64.
      ENDIF.
      t51 = t55.
    ELSE.
      DATA t65 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t65.
      t51 = t65.
    ENDIF.
    t50 = t51.
    DATA t66 TYPE REF TO zcl_lnt_expression_node.
    DATA t67 TYPE REF TO zcl_lnt_expression_node.
    DATA t68 TYPE REF TO zcl_lnt_expression_node.
    DATA(t69) = t1.
    t68 = t69.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t67 = t68->find_direct_expression( i_type_9913 = t70 ).
    t66 = t67.
    DATA(t71) = t2.
    DATA(t72) = t34.
    DATA(t73) = t50.
    zcl_lnt_sy_component_cond=>run_syntax( i_node = t66 i_input_967e = t71 i_left_type = t72 i_right_type = t73 ).
    DATA t74 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t74.
    DATA t75 TYPE abap_bool.
    DATA t76 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t76.
    DATA(t77) = t12.
    t77->load( ).
    CLEAR t76.
    READ TABLE t77->items INDEX 1 INTO t76.
    t75 = xsdbool( t76 IS BOUND ).
    IF t75 = abap_true.
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t78.
      DATA(t79) = abap_true.
      IF t79 = abap_true.
        DATA t80 TYPE REF TO zcl_lnt_abstract_type.
        DATA t81 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t81.
        DATA(t82) = t12.
        t82->load( ).
        CLEAR t81.
        READ TABLE t82->items INDEX 1 INTO t81.
        t80 = t81.
        t78 = t80.
      ELSE.
        DATA t83 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t83.
        t78 = t83.
      ENDIF.
      t74 = t78.
    ELSE.
      DATA(t84) = t3.
      t74 = t84.
    ENDIF.
    result = t74.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d806_031c0d786620.
  ENDMETHOD.
ENDCLASS.
