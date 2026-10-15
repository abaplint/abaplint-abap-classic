* TS: src/abap/3_structures/structures/case.ts:9:1 Case
CLASS zcl_lnt_sr_case DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_case IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = zlnt_runtime_desc_78196487750d=>zlnt_member_d400_37d69a21ca3a.
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d696_1c7fc9b8a532.
    t7 = zcl_lnt_sr_combi_module=>sub( i_s = t8 ).
    t6 = zcl_lnt_sr_combi_module=>star( i_s = t7 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
    t15 = zcl_lnt_sr_combi_module=>sub( i_s = t16 ).
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = t17.
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d366_6e18e9b47d14.
    t20 = zcl_lnt_sr_combi_module=>sta( i_s = t21 ).
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA(t22) = t17.
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t23 = zcl_lnt_sr_combi_module=>sta( i_s = t24 ).
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA t25 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t26) = t14.
    DATA(t27) = t17.
    t25 = zcl_lnt_sr_combi_module=>alt( i_first = t26 i_rest = t27 ).
    t13 = t25.
    t12 = zcl_lnt_sr_combi_module=>star( i_s = t13 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA t28 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t29) = t5.
    DATA(t30) = t9.
    t28 = zcl_lnt_sr_combi_module=>seq( i_first = t29 i_rest = t30 ).
    t4 = t28.
    DATA t31 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d466_6f1cbcc7ebd9.
    t31 = zcl_lnt_sr_combi_module=>sta( i_s = t32 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t31 ).
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
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
