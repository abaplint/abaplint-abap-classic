* TS: src/abap/5_syntax/expressions/field_offset.ts:7:1 FieldOffset
CLASS zcl_lnt_sy_field_offset DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_offset IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    t4 = t1->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t3 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      t10 = t3.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = |Read From|.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t15->sval = t16.
      t13 = t15.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t9 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t10 i_input_967e = t2 i_ref_type = t13 i_allow_generic_deference = t18 ).
      CLEAR result.
      RETURN.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t23 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      t25 = t1->get_last_token( ).
      DATA t27 TYPE string.
      t27 = t25->str.
      t23 = t27.
      t22 = zlnt_runtime_stri_248d3505915c=>int_optional( t23 ).
      result = t22.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d805_d3390e023ff8.
  ENDMETHOD.
ENDCLASS.
