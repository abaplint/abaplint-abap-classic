* TS: src/abap/5_syntax/expressions/default.ts:8:1 Default
CLASS zcl_lnt_sy_default DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_default IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      t10 = t3.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t15->sval = |Read From|.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      result = zcl_lnt_sy_field_chain=>run_syntax( i_node = t10 i_input_967e = t2 i_ref_type = t15 i_allow_generic_deference = t18 ).
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    t19 = t1->find_direct_expression( i_type_9913 = t22 ).
    IF xsdbool( t19 IS BOUND ) = abap_true.
      result = zcl_lnt_sy_expres_constant=>run_syntax( i_node = t19 ).
      RETURN.
    ENDIF.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d799_ff940767bff6.
  ENDMETHOD.
ENDCLASS.
