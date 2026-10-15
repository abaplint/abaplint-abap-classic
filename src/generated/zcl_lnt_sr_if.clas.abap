* TS: src/abap/3_structures/structures/if.ts:9:1 If
CLASS zcl_lnt_sr_if DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_if IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
    t5 = zcl_lnt_sr_combi_module=>sub( i_s = t6 ).
    t4 = zcl_lnt_sr_combi_module=>opt( i_o = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = t7.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA t11 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
    t11 = zcl_lnt_sr_combi_module=>sub( i_s = t12 ).
    t10 = zcl_lnt_sr_combi_module=>star( i_s = t11 ).
    t9->load( ).
    APPEND t10 TO t9->items.
    t9->save( ).
    DATA(t13) = t7.
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
    t15 = zcl_lnt_sr_combi_module=>sub( i_s = t16 ).
    t14 = zcl_lnt_sr_combi_module=>opt( i_o = t15 ).
    t13->load( ).
    APPEND t14 TO t13->items.
    t13->save( ).
    DATA t17 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = t3.
    DATA(t19) = t7.
    t17 = zcl_lnt_sr_combi_module=>seq( i_first = t18 i_rest = t19 ).
    t2 = t17.
    t1 = t2.
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b.
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    DATA(t23) = t1.
    DATA t24 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d474_51fcc2a31b27.
    t24 = zcl_lnt_sr_combi_module=>sta( i_s = t25 ).
    t20 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t21 i_body = t23 i_end = t24 ).
    result = t20.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
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
