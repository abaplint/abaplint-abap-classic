* TS: src/abap/3_structures/structures/types.ts:7:1 Types
CLASS zcl_lnt_sr_types DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_types IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = zlnt_runtime_desc_78196487750d=>zlnt_member_d663_aa8d5c614796.
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t7 = zcl_lnt_sr_combi_module=>sta( i_s = t8 ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t12 = zcl_lnt_sr_combi_module=>sub( i_s = t13 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t9.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d366_6e18e9b47d14.
    t15 = zcl_lnt_sr_combi_module=>sta( i_s = t16 ).
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t9.
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t18 = zcl_lnt_sr_combi_module=>sta( i_s = t19 ).
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t20) = t9.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = t6.
    DATA(t25) = t9.
    t23 = zcl_lnt_sr_combi_module=>alt( i_first = t24 i_rest = t25 ).
    t5 = t23.
    t4 = zcl_lnt_sr_combi_module=>star( i_s = t5 ).
    DATA t26 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d664_3faf50bb1fe5.
    t26 = zcl_lnt_sr_combi_module=>sta( i_s = t27 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t26 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
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
