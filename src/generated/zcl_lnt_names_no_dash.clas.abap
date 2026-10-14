* TS: src/rules/names_no_dash.ts:15:1 NamesNoDash
CLASS zcl_lnt_names_no_dash DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds RETURNING VALUE(result) TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds IMPORTING i_conf TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_names_no_dash IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_names_no_dash_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |names_no_dash|.
    DATA(t3) = |No dashes in FORM and DATA names|.
    DATA(t4) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
    t4 = t4 && |names|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA foo-bar TYPE i.|.
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
      DATA(t12) = |DATA foobar TYPE i.|.
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
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t20.
      t19 = t20.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t22) = |SingleFile|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      DATA(t24) = |Naming|.
      APPEND t24 TO t23->items.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t19 ).
      t18 = t25.
      t16 = t18.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t26.
      t16 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t16 i_pragma = t27 i_pseudo_comment = t28 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/names_no_dash.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds.
    DATA(t1) = CAST zcl_lnt_names_no_dash_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds.
    DATA(t1) = CAST zcl_lnt_names_no_dash_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/names_no_dash.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/names_no_dash.ts:42|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_names_no_dash_conf( me->g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_names_no_dash_conf( me->g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_names_no_dash_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1500_b8c567c52dfd.
  ENDMETHOD.
ENDCLASS.
