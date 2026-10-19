* TS: src/abap/5_syntax/statements/get_run_time.ts:9:1 GetRunTime
CLASS zcl_lnt_sy_get_run_time DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_get_run_time IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t3 = i_node->find_direct_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    t9 = t3.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      t16 = t9.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t11 = t16->find_direct_expression( i_type_9913 = t18 ).
    ENDIF.
    t7 = t11.
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type_data.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t7 i_input_967e = t2 i_type_9913 = zcl_lnt_integer_type=>get_db65( i_input_967e = t25 ) ).
    ELSE.
      IF xsdbool( t3 IS BOUND ) = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_abstract_type.
        t28 = zcl_lnt_sy_target=>run_syntax( i_node = t3 i_input_967e = t2 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d913_f3a1e3e19ca8.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
