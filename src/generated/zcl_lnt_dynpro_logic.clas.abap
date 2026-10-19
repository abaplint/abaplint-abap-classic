* TS: src/abap/3_structures/structures/dynpro_logic.ts:6:1 DynproLogic
CLASS zcl_lnt_dynpro_logic DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_dynpro_logic IMPLEMENTATION.
  METHOD get_matcher.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d728_88830252bc13.
    t3 = zcl_lnt_sr_combi_module=>sub( i_s = t4 ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d729_b022852130b8.
    t8 = zcl_lnt_sr_combi_module=>opt( i_o = zcl_lnt_sr_combi_module=>sub( i_s = t10 ) ).
    t5->load( ).
    APPEND t8 TO t5->items.
    t5->save( ).
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d730_2ce7d22b4d6f.
    t12 = zcl_lnt_sr_combi_module=>opt( i_o = zcl_lnt_sr_combi_module=>sub( i_s = t14 ) ).
    t5->load( ).
    APPEND t12 TO t5->items.
    t5->save( ).
    DATA t16 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d731_b42f23a70705.
    t16 = zcl_lnt_sr_combi_module=>opt( i_o = zcl_lnt_sr_combi_module=>sub( i_s = t18 ) ).
    t5->load( ).
    APPEND t16 TO t5->items.
    t5->save( ).
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d730_2ce7d22b4d6f.
    t20 = zcl_lnt_sr_combi_module=>opt( i_o = zcl_lnt_sr_combi_module=>sub( i_s = t22 ) ).
    t5->load( ).
    APPEND t20 TO t5->items.
    t5->save( ).
    result = zcl_lnt_sr_combi_module=>seq( i_first = t3 i_rest = t5 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d732_1ee03f94664a.
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
