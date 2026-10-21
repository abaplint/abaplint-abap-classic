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
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = zlnt_runtime_desc_78196487750d=>zlnt_member_d663_aa8d5c614796.
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t7 = zcl_lnt_sr_combi_module=>sta( i_s = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t12 = zcl_lnt_sr_combi_module=>sub( i_s = t13 ).
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d366_6e18e9b47d14.
    t15 = zcl_lnt_sr_combi_module=>sta( i_s = t16 ).
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t18 = zcl_lnt_sr_combi_module=>sta( i_s = t19 ).
    t9->load( ).
    APPEND t18 TO t9->items.
    t9->save( ).
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    t9->load( ).
    APPEND t21 TO t9->items.
    t9->save( ).
    t4 = zcl_lnt_sr_combi_module=>star( i_s = zcl_lnt_sr_combi_module=>alt( i_first = t7 i_rest = t9 ) ).
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d664_3faf50bb1fe5.
    result = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = zcl_lnt_sr_combi_module=>sta( i_s = t27 ) ).

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
