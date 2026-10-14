* TS: src/rules/selection_screen_naming.ts:12:1 SelectionScreenNamingConf
CLASS zcl_lnt_slctn_scrn_nmng_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_naming_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parameter_6dfd TYPE string.
    DATA select_option_ef10 TYPE string.
    DATA screen_element TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slctn_scrn_nmng_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = |^P_.+$|.
    me->parameter_6dfd = t1.
    DATA(t2) = |^S_.+$|.
    me->select_option_ef10 = t2.
    DATA(t3) = |^SC_.+$|.
    me->screen_element = t3.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1592_ac74a3d9e37a.
  ENDMETHOD.
ENDCLASS.
