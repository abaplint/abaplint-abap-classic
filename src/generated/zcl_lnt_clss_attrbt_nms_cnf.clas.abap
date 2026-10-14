* TS: src/rules/class_attribute_names.ts:12:1 ClassAttributeNamesConf
CLASS zcl_lnt_clss_attrbt_nms_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_naming_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA ignore_exceptions TYPE abap_bool.
    DATA ignore_local TYPE abap_bool.
    DATA ignore_interfaces TYPE abap_bool.
    DATA statics TYPE string.
    DATA instance TYPE string.
    DATA constants TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clss_attrbt_nms_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = abap_true.
    me->ignore_exceptions = t1.
    DATA(t2) = abap_true.
    me->ignore_local = t2.
    DATA(t3) = abap_false.
    me->ignore_interfaces = t3.
    DATA(t4) = |^G._.+$|.
    me->statics = t4.
    DATA(t5) = |^M._.+$|.
    me->instance = t5.
    DATA(t6) = ||.
    me->constants = t6.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1350_e594999a8252.
  ENDMETHOD.
ENDCLASS.
