* TS: src/rules/local_variable_names.ts:13:1 LocalVariableNamesConf
CLASS zcl_lnt_lcl_vrbl_nms_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_naming_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA expected_data TYPE string.
    DATA expected_constant TYPE string.
    DATA expected_fs TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lcl_vrbl_nms_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = |^L._.+$|.
    me->expected_data = t1.
    DATA(t2) = |^LC_.+$|.
    me->expected_constant = t2.
    DATA(t3) = |^<L._.+>$|.
    me->expected_fs = t3.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1471_4779fd9146e1.
  ENDMETHOD.
ENDCLASS.
