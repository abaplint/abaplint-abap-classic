* TS: src/abap/3_structures/structures/on_change.ts:8:1 OnChange
CLASS zcl_lnt_sr_on_change DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_on_change IMPLEMENTATION.
  METHOD get_matcher.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = zlnt_runtime_desc_78196487750d=>zlnt_member_d567_45e95d0a1f15.
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t6 = zcl_lnt_sr_combi_module=>opt( i_o = zcl_lnt_sr_combi_module=>sub( i_s = t8 ) ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
    t12 = zcl_lnt_sr_combi_module=>opt( i_o = zcl_lnt_sr_combi_module=>sub( i_s = t14 ) ).
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t4 = zcl_lnt_sr_combi_module=>seq( i_first = t6 i_rest = t9 ).
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d479_88e6661c94ca.
    result = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = zcl_lnt_sr_combi_module=>sta( i_s = t19 ) ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d745_973382e545be.
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
