* TS: src/abap/3_structures/structures/type_enum.ts:6:1 TypeEnum
CLASS zcl_lnt_sr_type_enum DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_type_enum IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d649_e10823f76e5a ).
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d648_a329ded75973 ).
    t7 = zcl_lnt_sr_combi_module=>sta( i_s = t8 ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d645_168d2de480b7 ).
    t12 = zcl_lnt_sr_combi_module=>sta( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t15) = CAST zif_lnt_structure_runnable( t6 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t14 = zcl_lnt_sr_combi_module=>alt( i_first = t15 i_rest = t16 ).
    t5 = t14.
    t4 = zcl_lnt_sr_combi_module=>star( i_s = t5 ).
    DATA t17 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d650_9812fc275905 ).
    t17 = zcl_lnt_sr_combi_module=>sta( i_s = t18 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t17 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d730_2ce7d22b4d6f.
  ENDMETHOD.
  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
