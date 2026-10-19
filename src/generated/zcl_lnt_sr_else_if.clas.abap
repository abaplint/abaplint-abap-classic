* TS: src/abap/3_structures/structures/elseif.ts:7:1 ElseIf
CLASS zcl_lnt_sr_else_if DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_else_if IMPLEMENTATION.
  METHOD get_matcher.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t2 = zcl_lnt_sr_combi_module=>opt( i_o = zcl_lnt_sr_combi_module=>sub( i_s = t4 ) ).
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d457_9791cc858be9.
    t8 = zcl_lnt_sr_combi_module=>sta( i_s = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t10->load( ).
    APPEND t2 TO t10->items.
    t10->save( ).
    result = zcl_lnt_sr_combi_module=>seq( i_first = t8 i_rest = t10 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
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
