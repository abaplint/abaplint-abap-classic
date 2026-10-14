* TS: src/rules/add_test_attributes.ts:12:1 AddTestAttributes
CLASS zcl_lnt_add_test_attributes DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_ad_ts_at_ts_ad_ts_at RETURNING VALUE(result) TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
    METHODS s_c_i_s_r_ad_ts_at_ts_ad_ts_at IMPORTING i_conf TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
    METHODS r_p_i_s_r_ad_ts_at_ts_ad_ts_at IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_add_test_attributes IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_add_tst_attrbts_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |add_test_attributes|.
    DATA(t3) = |Add test attributes for tests classes with test methods|.
    DATA(t4) = |Add test attributes DURATION and RISK LEVEL for tests classe|.
    t4 = t4 && |s with test methods|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CLASS ltcl_test1 DEFINITION FINAL FOR TESTING.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  PUBLIC SECTION.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  PROTECTED SECTION.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  PRIVATE SECTION.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    METHODS test FOR TESTING RAISING cx_static_check.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDCLASS.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |CLASS ltcl_test1 IMPLEMENTATION.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  METHOD test.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ENDMETHOD.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t17 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDCLASS.|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t7.
      t5 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t5 = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = |CLASS ltcl_test2 DEFINITION FINAL FOR TESTING DURATION SHORT|.
      t22 = t22 && | RISK LEVEL HARMLESS.|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t23 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  PUBLIC SECTION.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t24 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  PROTECTED SECTION.|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t25 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  PRIVATE SECTION.|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t26 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |    METHODS test FOR TESTING RAISING cx_static_check.|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t27 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |ENDCLASS.|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t28 INTO t22 RESPECTING BLANKS.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t29 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |CLASS ltcl_test2 IMPLEMENTATION.|.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t30 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  METHOD test.|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t31 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  ENDMETHOD.|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t32 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |ENDCLASS.|.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = t22.
      t20 = t33.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      t20 = t34.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t36.
    DATA(t37) = abap_true.
    IF t37 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t40.
      t39 = t40.
      DATA(t41) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      DATA(t42) = |SingleFile|.
      APPEND t42 TO t41->items.
      DATA(t43) = CAST zlnt_runtime_arra_8ecd6afe19e0( t39 ).
      t38 = t43.
      t36 = t38.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t44.
      t36 = t44.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t20 i_extended_information = t35 i_tags = t36 i_pragma = t45 i_pseudo_comment = t46 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_ad_ts_at_ts_ad_ts_at.
    DATA(t1) = CAST zcl_lnt_add_tst_attrbts_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_ad_ts_at_ts_ad_ts_at.
    DATA(t1) = CAST zcl_lnt_add_tst_attrbts_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/add_test_attributes.ts:51|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_ad_ts_at_ts_ad_ts_at.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/add_test_attributes.ts:55|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_add_tst_attrbts_cnf( me->g_c_i_s_r_ad_ts_at_ts_ad_ts_at(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_add_tst_attrbts_cnf( me->g_c_i_s_r_ad_ts_at_ts_ad_ts_at(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_add_tst_attrbts_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_ad_ts_at_ts_ad_ts_at( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ad_ts_at_ts_ad_ts_at( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1289_8585c7bbdc43.
  ENDMETHOD.
ENDCLASS.
