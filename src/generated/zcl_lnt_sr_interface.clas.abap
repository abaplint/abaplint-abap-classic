* TS: src/abap/3_structures/structures/interface.ts:7:1 Interface
CLASS zcl_lnt_sr_interface DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_interface IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d522_37de97ed1215 ).
    t3 = zcl_lnt_sr_combi_module=>sta( i_s = t4 ).
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134 ).
    t6 = zcl_lnt_sr_combi_module=>sub( i_s = t7 ).
    t5 = zcl_lnt_sr_combi_module=>star( i_s = t6 ).
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d458_566715b776c6 ).
    t8 = zcl_lnt_sr_combi_module=>sta( i_s = t9 ).
    t2 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t3 i_body = t5 i_end = t8 ).
    t1 = t2.
    DATA(t10) = CAST zif_lnt_structure_runnable( t1 ).
    result = t10.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1.
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
