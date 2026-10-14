* TS: src/abap/3_structures/structures/case.ts:9:1 Case
CLASS zcl_lnt_sr_case DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_case IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = zlnt_runtime_desc_78196487750d=>zlnt_member_d383_d553afa509ca.
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d679_3af40033658c.
    t7 = zcl_lnt_sr_combi_module=>sub( i_s = t8 ).
    t6 = zcl_lnt_sr_combi_module=>star( i_s = t7 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d691_9e043ef75c16.
    t15 = zcl_lnt_sr_combi_module=>sub( i_s = t16 ).
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = t17.
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d349_cecd27d97080.
    t20 = zcl_lnt_sr_combi_module=>sta( i_s = t21 ).
    APPEND t20 TO t19->items.
    DATA(t22) = t17.
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d512_11174d785e8e.
    t23 = zcl_lnt_sr_combi_module=>sta( i_s = t24 ).
    APPEND t23 TO t22->items.
    DATA t25 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t26) = t14.
    DATA(t27) = t17.
    t25 = zcl_lnt_sr_combi_module=>alt( i_first = t26 i_rest = t27 ).
    t13 = t25.
    t12 = zcl_lnt_sr_combi_module=>star( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA t28 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t29) = t5.
    DATA(t30) = t9.
    t28 = zcl_lnt_sr_combi_module=>seq( i_first = t29 i_rest = t30 ).
    t4 = t28.
    DATA t31 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d449_e575e1a13299.
    t31 = zcl_lnt_sr_combi_module=>sta( i_s = t32 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t31 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d692_8822f22e2e12.
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
