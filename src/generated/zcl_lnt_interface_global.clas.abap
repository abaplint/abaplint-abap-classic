* TS: src/abap/3_structures/structures/interface_global.ts:7:1 InterfaceGlobal
CLASS zcl_lnt_interface_global DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_interface_global IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d672_80ccb3caa5ab.
    t4 = zcl_lnt_sr_combi_module=>sta( i_s = t5 ).
    t3 = zcl_lnt_sr_combi_module=>star( i_s = t4 ).
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t6.
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d542_0aa767c92614.
    t10 = zcl_lnt_sr_combi_module=>sta( i_s = t11 ).
    t9 = zcl_lnt_sr_combi_module=>star( i_s = t10 ).
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA(t12) = t6.
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t13 = zcl_lnt_sr_combi_module=>sub( i_s = t14 ).
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = t2.
    DATA(t17) = t6.
    t15 = zcl_lnt_sr_combi_module=>seq( i_first = t16 i_rest = t17 ).
    t1 = t15.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d740_8d94e37f5710.
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
