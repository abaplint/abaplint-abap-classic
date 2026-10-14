* TS: src/abap/3_structures/structures/interface_global.ts:7:1 InterfaceGlobal
CLASS zcl_lnt_interface_global DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_interface_global IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d655_927738d95d40 ).
    t4 = zcl_lnt_sr_combi_module=>sta( i_s = t5 ).
    t3 = zcl_lnt_sr_combi_module=>star( i_s = t4 ).
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b ).
    t10 = zcl_lnt_sr_combi_module=>sta( i_s = t11 ).
    t9 = zcl_lnt_sr_combi_module=>star( i_s = t10 ).
    APPEND t9 TO t8->items.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t13 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1 ).
    t13 = zcl_lnt_sr_combi_module=>sub( i_s = t14 ).
    APPEND t13 TO t12->items.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = CAST zif_lnt_structure_runnable( t2 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t15 = zcl_lnt_sr_combi_module=>seq( i_first = t16 i_rest = t17 ).
    t1 = t15.
    result = t1.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
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
