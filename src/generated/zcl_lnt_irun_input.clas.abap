* TS: src/_iregistry.ts:10:1 IRunInput
CLASS zcl_lnt_irun_input DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA progress TYPE REF TO zif_lnt_progress.
    DATA output_performance TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_progress TYPE REF TO zif_lnt_progress OPTIONAL i_output_performance TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_irun_input IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_progress.
    DATA(t2) = i_output_performance.
    DATA(t3) = t1.
    me->progress = t3.
    DATA(t4) = t2.
    me->output_performance = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d8_a324bf63049ad1.
  ENDMETHOD.
ENDCLASS.
