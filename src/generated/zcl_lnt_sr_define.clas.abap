* TS: src/abap/3_structures/structures/define.ts:7:1 Define
CLASS zcl_lnt_sr_define DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_define IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d423_57d28e34609f ).
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d350_60b8c1b06659 ).
    t5 = zcl_lnt_sr_combi_module=>sta( i_s = t6 ).
    t4 = zcl_lnt_sr_combi_module=>star( i_s = t5 ).
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d452_bb39104fe1e2 ).
    t7 = zcl_lnt_sr_combi_module=>sta( i_s = t8 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t7 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d703_a50af928c17c.
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
