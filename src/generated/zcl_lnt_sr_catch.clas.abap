* TS: src/abap/3_structures/structures/catch.ts:7:1 Catch
CLASS zcl_lnt_sr_catch DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_catch IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d402_a27e9c5370ec.
    t4 = zcl_lnt_sr_combi_module=>sta( i_s = t5 ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t6.
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t10 = zcl_lnt_sr_combi_module=>sub( i_s = t11 ).
    t9 = zcl_lnt_sr_combi_module=>opt( i_o = t10 ).
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = t3.
    DATA(t14) = t6.
    t12 = zcl_lnt_sr_combi_module=>seq( i_first = t13 i_rest = t14 ).
    t2 = t12.
    t1 = t2.
    DATA(t15) = t1.
    result = t15.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
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
