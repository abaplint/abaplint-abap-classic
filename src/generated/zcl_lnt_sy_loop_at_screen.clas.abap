* TS: src/abap/5_syntax/statements/loop_at_screen.ts:9:1 LoopAtScreen
CLASS zcl_lnt_sy_loop_at_screen DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_loop_at_screen IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t3.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = t3.
      t10 = t11.
      DATA(t12) = t2.
      t9 = zcl_lnt_sy_target=>run_syntax( i_node = t10 i_input_967e = t12 ).
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = t3.
    t15 = t16.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t15.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t15.
      t22 = t23.
      DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t21 = t22->find_direct_expression( i_type_9913 = t24 ).
      t17 = t21.
    ENDIF.
    t14 = t17.
    t13 = t14.
    DATA t25 TYPE abap_bool.
    DATA(t26) = t13.
    t25 = xsdbool( t26 IS BOUND ).
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = t13.
      t27 = t28.
      DATA(t29) = t2.
      DATA t30 TYPE REF TO zcl_lnt_void_type.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA(t33) = |SCREEN|.
        DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t34->has = abap_true.
        t34->value = t33.
        t31 = t34.
      ELSE.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        t31 = t35.
      ENDIF.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t30 = zcl_lnt_void_type=>get_db65( i_voided = t31 i_qualified_name = t36 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t27 i_input_967e = t29 i_type_9913 = t30 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d927_99ae456ea99f.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
