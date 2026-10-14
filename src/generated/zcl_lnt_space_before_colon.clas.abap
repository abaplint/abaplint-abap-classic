* TS: src/rules/space_before_colon.ts:14:1 SpaceBeforeColon
CLASS zcl_lnt_space_before_colon DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl IMPORTING i_conf TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_space_before_colon IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_spc_bfr_cln_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |space_before_colon|.
    DATA(t3) = |Space before colon|.
    DATA(t4) = |Checks that there are no spaces in front of colons in chaine|.
    t4 = t4 && |d statements.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA : foo TYPE string.|.
      DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t8->has = abap_true.
      t8->value = t7.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t5 = t9.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA(t12) = |DATA: foo TYPE string.|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t10 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |https://docs.abapopenchecks.org/checks/80/|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t24.
      t23 = t24.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t26) = |Whitespace|.
      APPEND t26 TO t25->items.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t28) = |SingleFile|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      DATA(t30) = |Quickfix|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t23 ).
      t22 = t31.
      t20 = t22.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t20 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t20 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/space_before_colon.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    DATA(t1) = CAST zcl_lnt_spc_bfr_cln_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    DATA(t1) = CAST zcl_lnt_spc_bfr_cln_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/space_before_colon.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/space_before_colon.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_spc_bfr_cln_cnf( me->g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_spc_bfr_cln_cnf( me->g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1607_00ba045497ec.
  ENDMETHOD.
ENDCLASS.
