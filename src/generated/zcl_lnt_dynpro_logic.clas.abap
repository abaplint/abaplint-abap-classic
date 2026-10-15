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
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d728_88830252bc13.
    t3 = zcl_lnt_sr_combi_module=>sub( i_s = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t5.
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d729_b022852130b8.
    t9 = zcl_lnt_sr_combi_module=>sub( i_s = t10 ).
    t8 = zcl_lnt_sr_combi_module=>opt( i_o = t9 ).
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t11) = t5.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d730_2ce7d22b4d6f.
    t13 = zcl_lnt_sr_combi_module=>sub( i_s = t14 ).
    t12 = zcl_lnt_sr_combi_module=>opt( i_o = t13 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t15) = t5.
    DATA t16 TYPE REF TO zif_lnt_structure_runnable.
    DATA t17 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d731_b42f23a70705.
    t17 = zcl_lnt_sr_combi_module=>sub( i_s = t18 ).
    t16 = zcl_lnt_sr_combi_module=>opt( i_o = t17 ).
    t15->load( ).
    APPEND t16 TO t15->items.
    t15->save( ).
    DATA(t19) = t5.
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d730_2ce7d22b4d6f.
    t21 = zcl_lnt_sr_combi_module=>sub( i_s = t22 ).
    t20 = zcl_lnt_sr_combi_module=>opt( i_o = t21 ).
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = t2.
    DATA(t25) = t5.
    t23 = zcl_lnt_sr_combi_module=>seq( i_first = t24 i_rest = t25 ).
    t1 = t23.
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
