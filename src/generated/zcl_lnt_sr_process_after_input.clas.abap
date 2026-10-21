* TS: src/abap/3_structures/structures/process_after_input.ts:10:1 ProcessAfterInput
CLASS zcl_lnt_sr_process_after_input DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_process_after_input IMPLEMENTATION.
  METHOD get_matcher.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d560_1073f613c8c9.
    t5 = zcl_lnt_sr_combi_module=>sta( i_s = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d495_455bba123ac8.
    t10 = zcl_lnt_sr_combi_module=>sta( i_s = t11 ).
    t7->load( ).
    APPEND t10 TO t7->items.
    t7->save( ).
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d397_9e9329c3ef62.
    t13 = zcl_lnt_sr_combi_module=>sta( i_s = t14 ).
    t7->load( ).
    APPEND t13 TO t7->items.
    t7->save( ).
    DATA t16 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d714_49cf6811a616.
    t16 = zcl_lnt_sr_combi_module=>sub( i_s = t17 ).
    t7->load( ).
    APPEND t16 TO t7->items.
    t7->save( ).
    DATA t19 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d733_9d53cd1f40a8.
    t19 = zcl_lnt_sr_combi_module=>sub( i_s = t20 ).
    t7->load( ).
    APPEND t19 TO t7->items.
    t7->save( ).
    DATA t22 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d743_6e9adab31a90.
    t22 = zcl_lnt_sr_combi_module=>sub( i_s = t23 ).
    t7->load( ).
    APPEND t22 TO t7->items.
    t7->save( ).
    DATA t25 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
    t25 = zcl_lnt_sr_combi_module=>sub( i_s = t26 ).
    t7->load( ).
    APPEND t25 TO t7->items.
    t7->save( ).
    t2 = zcl_lnt_sr_combi_module=>star( i_s = zcl_lnt_sr_combi_module=>alt( i_first = t5 i_rest = t7 ) ).
    DATA t32 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d577_96008512c3b0.
    t32 = zcl_lnt_sr_combi_module=>sta( i_s = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    t34->load( ).
    APPEND t2 TO t34->items.
    t34->save( ).
    result = zcl_lnt_sr_combi_module=>seq( i_first = t32 i_rest = t34 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d729_b022852130b8.
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
