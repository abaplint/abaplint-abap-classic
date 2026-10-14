* TS: src/utils/cyclomatic_complexity_stats.ts:11:1 ICyclomaticComplexityResult
CLASS zcl_lnt_icyclmtc_cmplxty_rslt DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA file TYPE REF TO zif_lnt_file.
    DATA pos TYPE REF TO zcl_lnt_position.
    DATA name TYPE string.
    DATA count TYPE int8.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file i_pos TYPE REF TO zcl_lnt_position i_name TYPE string i_count TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_icyclmtc_cmplxty_rslt IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_position( i_pos ).
    DATA(t3) = i_name.
    DATA(t4) = i_count.
    DATA(t5) = CAST zif_lnt_file( t1 ).
    me->file = t5.
    DATA(t6) = CAST zcl_lnt_position( t2 ).
    me->pos = t6.
    DATA(t7) = t3.
    me->name = t7.
    DATA(t8) = t4.
    me->count = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1686_ea71804bc65d.
  ENDMETHOD.
ENDCLASS.
