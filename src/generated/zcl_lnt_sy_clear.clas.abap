* TS: src/abap/5_syntax/statements/clear.ts:8:1 Clear
CLASS zcl_lnt_sy_clear DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_clear IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t12) = t6.
      DATA(t13) = t2.
      t11 = zcl_lnt_sy_target=>run_syntax( i_node = t12 i_input_967e = t13 ).
    ENDDO.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t1.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t14 = t15->find_direct_expressions( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    DATA(t19) = VALUE i( ).
    DO.
      t14->load( ).
      IF t19 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t14->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA(t25) = t17.
        t23 = t25.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t26.
        t23 = t26.
      ENDIF.
      DATA(t27) = t2.
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      t22 = zcl_lnt_sy_source=>run_syntax( i_node = t23 i_input_967e = t27 i_target_type = t28 i_write_reference = t29 i_allow_generic_deference = t30 i_read_reference = t31 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d874_1cd3f7db804b.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
