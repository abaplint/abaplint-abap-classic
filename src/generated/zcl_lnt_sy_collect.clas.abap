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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t9 = zcl_lnt_sy_source=>run_syntax( i_node = t3 i_input_967e = t2 i_target_type = t16 i_write_reference = t17 i_allow_generic_deference = t18 i_read_reference = t19 ).
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t20 = t1->find_direct_expression( i_type_9913 = t23 ).
    IF xsdbool( t20 IS BOUND ) = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      t26 = zcl_lnt_sy_target=>run_syntax( i_node = t20 i_input_967e = t2 ).
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t30 = t1->find_direct_expression( i_type_9913 = t33 ).
    IF xsdbool( t30 IS BOUND ) = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t30 i_input_967e = t2 i_type_9913 = t39 ).
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
