* TS: src/abap/5_syntax/expressions/reduce_next.ts:7:1 ReduceNext
CLASS zcl_lnt_sy_reduce_next DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_reduce_next IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = t1.
    t11 = t12.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t10 = t11->find_direct_expressions( i_type_9913 = t13 ).
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
    DATA(t16) = VALUE i( ).
    DO.
      t10->load( ).
      IF t16 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t10->items INDEX t16 + 1 INTO t15.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t14.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t15.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t14 ?= t18.
      ELSE.
        t14 ?= t15.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = t14.
        t20 = t22.
      ELSE.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t23.
        t20 = t23.
      ENDIF.
      DATA(t24) = t2.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      t19 = zcl_lnt_sy_source=>run_syntax( i_node = t20 i_input_967e = t24 i_target_type = t25 i_write_reference = t26 i_allow_generic_deference = t27 i_read_reference = t28 ).
    ENDDO.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t31) = t1.
    t30 = t31.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d255_88331b4186a0.
    t29 = t30->find_direct_expressions( i_type_9913 = t32 ).
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    DATA(t35) = VALUE i( ).
    DO.
      t29->load( ).
      IF t35 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t29->items INDEX t35 + 1 INTO t34.
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
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t39) = t33.
      DATA(t40) = t2.
      t38 = zcl_lnt_sy_target=>run_syntax( i_node = t39 i_input_967e = t40 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d830_ed01ba5bf6b6.
  ENDMETHOD.
ENDCLASS.
