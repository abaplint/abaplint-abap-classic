* TS: src/rules/cds_naming.ts:10:1 CDSNamingConf
CLASS zcl_lnt_cds_naming_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA basic_interface_view TYPE string.
    DATA composite_interface_view TYPE string.
    DATA consumption_view TYPE string.
    DATA basic_restricted_reuse_view TYPE string.
    DATA cmpst_rstrctd_rs_vw TYPE string.
    DATA private_view TYPE string.
    DATA remote_api_view TYPE string.
    DATA view_extend TYPE string.
    DATA extension_include_view TYPE string.
    DATA derivation_function TYPE string.
    DATA abstract_entity TYPE string.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_naming_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = |ZI_|.
    me->basic_interface_view = t1.
    DATA(t2) = |ZI_|.
    me->composite_interface_view = t2.
    DATA(t3) = |ZC_|.
    me->consumption_view = t3.
    DATA(t4) = |ZR_|.
    me->basic_restricted_reuse_view = t4.
    DATA(t5) = |ZR_|.
    me->cmpst_rstrctd_rs_vw = t5.
    DATA(t6) = |ZP_|.
    me->private_view = t6.
    DATA(t7) = |ZA_|.
    me->remote_api_view = t7.
    DATA(t8) = |ZX_|.
    me->view_extend = t8.
    DATA(t9) = |ZE_|.
    me->extension_include_view = t9.
    DATA(t10) = |ZF_|.
    me->derivation_function = t10.
    DATA(t11) = |ZD_|.
    me->abstract_entity = t11.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1326_95d07c6e2b00.
  ENDMETHOD.
ENDCLASS.
