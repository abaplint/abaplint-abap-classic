* TS: src/rules/xml_consistency.ts:12:1 XMLConsistencyConf
CLASS zcl_lnt_xml_consistency_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA txt_and_trnsltn_lngth_svrty TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA data_element_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_xml_consistency_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = |Error|.
    DATA(t2) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2->has = abap_true.
    t2->value = t1.
    me->txt_and_trnsltn_lngth_svrty = t2.
    DATA(t3) = |Error|.
    DATA(t4) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4->has = abap_true.
    t4->value = t3.
    me->data_element_severity = t4.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1681_62f38e982094.
  ENDMETHOD.
ENDCLASS.
