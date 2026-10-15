* TS: src/abap/5_syntax/expressions/component_cond.ts:7:1 ComponentCond
CLASS zcl_lnt_sy_component_cond DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_left_type TYPE REF TO zcl_lnt_abstract_type i_right_type TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_cond IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_left_type.
    DATA(t4) = i_right_type.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b.
    t5 = t6->find_direct_expressions( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t8.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
      t14 = t15->find_direct_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t13.
      t17 = xsdbool( t18 IS BOUND ).
      IF t17 = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = t13.
        t19 = t20.
        DATA(t21) = t2.
        DATA(t22) = t3.
        DATA(t23) = t4.
        zcl_lnt_sy_component_cond=>run_syntax( i_node = t19 i_input_967e = t21 i_left_type = t22 i_right_type = t23 ).
      ENDIF.
    ENDDO.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t25) = t1.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
    t24 = t25->find_direct_expressions( i_type_9913 = t26 ).
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    DATA(t29) = VALUE i( ).
    DO.
      t24->load( ).
      IF t29 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t24->items INDEX t29 + 1 INTO t28.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t27.
      IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t28.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA(t32) = t27.
      DATA(t33) = t2.
      DATA(t34) = t3.
      DATA(t35) = t4.
      zcl_lnt_sy_component_compare=>run_syntax( i_node = t32 i_input_967e = t33 i_left_type = t34 i_right_type = t35 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d790_8cd68f3ec94e.
  ENDMETHOD.
ENDCLASS.
