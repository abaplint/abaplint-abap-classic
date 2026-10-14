* TS: src/_config.ts:87:1 IConfig
CLASS zcl_lnt_iconfig DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_builtin_mate_4bfafaf0b5ed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA global TYPE REF TO zcl_lnt_iglobal_config.
    DATA dependencies TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA syntax TYPE REF TO zcl_lnt_isyntax_settings.
    DATA rename TYPE REF TO zcl_lnt_irename_settings.
    DATA app TYPE REF TO zcl_lnt_iabaplint_app_settings.
    DATA rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA target_rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_global TYPE REF TO zcl_lnt_iglobal_config i_dependencies TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_syntax TYPE REF TO zcl_lnt_isyntax_settings i_rename TYPE REF TO zcl_lnt_irename_settings
    OPTIONAL i_app TYPE REF TO zcl_lnt_iabaplint_app_settings OPTIONAL i_rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_target_rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iconfig IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_global.
    DATA(t2) = i_dependencies.
    DATA(t3) = i_syntax.
    DATA(t4) = i_rename.
    DATA(t5) = i_app.
    DATA(t6) = i_rules.
    DATA(t7) = i_target_rules.
    DATA(t8) = t1.
    me->global = t8.
    DATA(t9) = t2.
    me->dependencies = t9.
    DATA(t10) = t3.
    me->syntax = t10.
    DATA(t11) = t4.
    me->rename = t11.
    DATA(t12) = t5.
    me->app = t12.
    DATA(t13) = t6.
    me->rules = t13.
    DATA(t14) = t7.
    me->target_rules = t14.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d5_fe178efb571dcf.
  ENDMETHOD.
ENDCLASS.
