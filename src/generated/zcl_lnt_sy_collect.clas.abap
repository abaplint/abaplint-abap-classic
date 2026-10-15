* TS: src/abap/5_syntax/statements/collect.ts:9:1 Collect
CLASS zcl_lnt_sy_collect DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_collect IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        DATA(t13) = t3.
        t12 = t13.
        t10 = t12.
      ELSE.
        DATA t14 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      DATA(t15) = t2.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t9 = zcl_lnt_sy_source=>run_syntax( i_node = t10 i_input_967e = t15 i_target_type = t16 i_write_reference = t17 i_allow_generic_deference = t18 i_read_reference = t19 ).
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t21 = t22->find_direct_expression( i_type_9913 = t23 ).
    t20 = t21.
    DATA t24 TYPE abap_bool.
    DATA(t25) = t20.
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = t20.
      t27 = t28.
      DATA(t29) = t2.
      t26 = zcl_lnt_sy_target=>run_syntax( i_node = t27 i_input_967e = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    DATA(t32) = t1.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t31 = t32->find_direct_expression( i_type_9913 = t33 ).
    t30 = t31.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t30.
    t34 = xsdbool( t35 IS BOUND ).
    IF t34 = abap_true.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = t30.
      t36 = t37.
      DATA(t38) = t2.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t39.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t36 i_input_967e = t38 i_type_9913 = t39 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d877_67c17788809e.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
