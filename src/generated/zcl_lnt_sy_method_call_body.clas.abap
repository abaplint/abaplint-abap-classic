* TS: src/abap/5_syntax/expressions/method_call_body.ts:10:1 MethodCallBody
CLASS zcl_lnt_sy_method_call_body DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_method TYPE REF TO zif_lnt_union_8cd68e5e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_call_body IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_method.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t5 = t6->find_direct_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA(t10) = NEW zcl_lnt_sy_method_parameters( ).
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = t4.
      t11 = t12.
      DATA(t13) = t2.
      DATA(t14) = t3.
      t10->run_syntax( i_node = t11 i_input_967e = t13 i_method = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
    t16 = t17->find_direct_expression( i_type_9913 = t18 ).
    t15 = t16.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t15.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA(t22) = t15.
      t21 = t22.
      DATA(t23) = t2.
      DATA(t24) = t3.
      zcl_lnt_sy_method_call_param=>run_syntax( i_node = t21 i_input_967e = t23 i_method = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t1.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t25 = t26->find_direct_expressions( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t25->load( ).
      IF t30 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t25->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t34.
      DATA(t35) = abap_true.
      IF t35 = abap_true.
        DATA(t36) = t28.
        t34 = t36.
      ELSE.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t37.
        t34 = t37.
      ENDIF.
      DATA(t38) = t2.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t42.
      t33 = zcl_lnt_sy_source=>run_syntax( i_node = t34 i_input_967e = t38 i_target_type = t39 i_write_reference = t40 i_allow_generic_deference = t41 i_read_reference = t42 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d818_822e44b2803d.
  ENDMETHOD.
ENDCLASS.
