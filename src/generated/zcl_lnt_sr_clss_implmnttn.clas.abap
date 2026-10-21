* TS: src/abap/3_structures/structures/class_implementation.ts:7:1 ClassImplementation
CLASS zcl_lnt_sr_clss_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_clss_implmnttn IMPLEMENTATION.
  METHOD get_matcher.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d720_0fac5ead5b3f.
    t5 = zcl_lnt_sr_combi_module=>sub( i_s = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t10 = zcl_lnt_sr_combi_module=>sta( i_s = t11 ).
    t7->load( ).
    APPEND t10 TO t7->items.
    t7->save( ).
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t13 = zcl_lnt_sr_combi_module=>sub( i_s = t14 ).
    t7->load( ).
    APPEND t13 TO t7->items.
    t7->save( ).
    t2 = zcl_lnt_sr_combi_module=>star( i_s = zcl_lnt_sr_combi_module=>alt( i_first = t5 i_rest = t7 ) ).
    DATA t19 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d413_4f364af5c7c0.
    t19 = zcl_lnt_sr_combi_module=>sta( i_s = t20 ).
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d468_9c9153155b4d.
    result = zcl_lnt_sr_combi_module=>begin_end( i_begin = t19 i_body = t2 i_end = zcl_lnt_sr_combi_module=>sta( i_s = t23 ) ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
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
