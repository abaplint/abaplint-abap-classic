* TS: src/abap/3_structures/structures/when_type.ts:7:1 WhenType
CLASS zcl_lnt_sr_when_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_when_type IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d681_a5a298bc6cdf.
    t6 = zcl_lnt_sr_combi_module=>sta( i_s = t7 ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA(t10) = t8.
    DATA t11 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d680_7b1b0c92e5ad.
    t11 = zcl_lnt_sr_combi_module=>sta( i_s = t12 ).
    t10->load( ).
    APPEND t11 TO t10->items.
    t10->save( ).
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = t5.
    DATA(t15) = t8.
    t13 = zcl_lnt_sr_combi_module=>alt( i_first = t14 i_rest = t15 ).
    t4 = t13.
    t3 = t4.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA(t18) = t16.
    DATA t19 TYPE REF TO zif_lnt_structure_runnable.
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t20 = zcl_lnt_sr_combi_module=>sub( i_s = t21 ).
    t19 = zcl_lnt_sr_combi_module=>opt( i_o = t20 ).
    t18->load( ).
    APPEND t19 TO t18->items.
    t18->save( ).
    DATA t22 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t23) = t3.
    DATA(t24) = t16.
    t22 = zcl_lnt_sr_combi_module=>seq( i_first = t23 i_rest = t24 ).
    t2 = t22.
    t1 = t2.
    DATA(t25) = t1.
    result = t25.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d710_52a89b3f6da2.
  ENDMETHOD.

  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
