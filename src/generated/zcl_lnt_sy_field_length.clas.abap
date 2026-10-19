* TS: src/abap/5_syntax/expressions/field_length.ts:7:1 FieldLength
CLASS zcl_lnt_sy_field_length DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_field_length IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      t10 = t3.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t15->sval = |Read From|.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t9 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t10 i_input_967e = t2 i_ref_type = t15 i_allow_generic_deference = t18 ).
      CLEAR result.
      RETURN.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zcl_lnt_abstract_node.
      t23 = t1.
      t22 = t23->children.
      t21 ?= t22.
      t20 = t21.
      DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t28 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t30 TYPE i.
      DATA t31 TYPE i.
      t20->load( ).
      t31 = lines( t20->items ).
      DATA(t33) = 2.
      t30 = t31 - t33.
      t30 = t30 + 1.
      DATA t34 TYPE REF TO object.
      t20->load( ).
      READ TABLE t20->items INDEX t30 INTO t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t34.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t28 ?= t36.
      ELSE.
        t28 ?= t34.
      ENDIF.
      t27 = t28.
      DATA t38 TYPE string.
      t38 = t27->get_last_token( )->str.
      IF xsdbool( t38 = |*| ) = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
      DATA t53 TYPE string.
      t53 = t27->get_last_token( )->str.
      result = zlnt_runtime_stri_248d3505915c=>int_optional( t53 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d804_2c0ba40f9348.
  ENDMETHOD.
ENDCLASS.
