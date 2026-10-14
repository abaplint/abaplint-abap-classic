* TS: src/abap/3_structures/structures/elseif.ts:7:1 ElseIf
CLASS zcl_lnt_sr_else_if DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_else_if IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d687_99e32c3ed690 ).
    t3 = zcl_lnt_sr_combi_module=>sub( i_s = t4 ).
    t2 = zcl_lnt_sr_combi_module=>opt( i_o = t3 ).
    t1 = t2.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d440_9631f5a0396f ).
    t8 = zcl_lnt_sr_combi_module=>sta( i_s = t9 ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    DATA(t13) = CAST zif_lnt_structure_runnable( t1 ).
    APPEND t13 TO t12->items.
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t15) = CAST zif_lnt_structure_runnable( t7 ).
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t14 = zcl_lnt_sr_combi_module=>seq( i_first = t15 i_rest = t16 ).
    t6 = t14.
    t5 = t6.
    DATA(t17) = CAST zif_lnt_structure_runnable( t5 ).
    result = t17.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d713_4226f4f67669.
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
