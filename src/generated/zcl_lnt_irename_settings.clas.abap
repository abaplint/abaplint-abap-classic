* TS: src/_config.ts:62:1 IRenameSettings
CLASS zcl_lnt_irename_settings DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_builtin_mate_4bfafaf0b5ed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA output TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA skip_0892 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA patterns TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_output TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_skip_34cc TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_patterns TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_irename_settings IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_output ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_skip_34cc ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_patterns ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->output = t4.
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    me->skip_0892 = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    me->patterns = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d3_93b114c6beac5f.
  ENDMETHOD.
ENDCLASS.
