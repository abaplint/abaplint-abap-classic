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
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t4 = i_node->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t3 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      t10 = t3.
      t9 = zcl_lnt_sy_target=>run_syntax( i_node = t10 i_input_967e = t2 ).
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    t15 = t3.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = xsdbool( t15 IS INITIAL ).
    IF t18 = abap_true.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 = t15.
      DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t21 = t22->find_direct_expression( i_type_9913 = t24 ).
      t17 = t21.
    ENDIF.
    t13 = t17.
    DATA t25 TYPE abap_bool.
    t25 = xsdbool( t13 IS BOUND ).
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      t27 = t13.
      DATA t30 TYPE REF TO zcl_lnt_void_type.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t33) = |SCREEN|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t30 = zcl_lnt_void_type=>get_db65( i_voided = t31 i_qualified_name = t36 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t27 i_input_967e = t2 i_type_9913 = t30 ).
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
