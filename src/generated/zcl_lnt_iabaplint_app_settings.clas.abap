* TS: src/_config.ts:82:1 IAbaplintAppSettings
CLASS zcl_lnt_iabaplint_app_settings DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_builtin_mate_4bfafaf0b5ed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA observations TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_observations TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iabaplint_app_settings IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_observations ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    me->observations = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d4_13543b5ca4726d.
  ENDMETHOD.
ENDCLASS.
