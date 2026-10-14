* TS: src/rules/begin_single_include.ts:12:1 BeginSingleInclude
CLASS zcl_lnt_begin_single_include DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_bg_sn_in_ts_bg_sn_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS s_c_i_s_r_bg_sn_in_ts_bg_sn_in IMPORTING i_conf TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS r_p_i_s_r_bg_sn_in_ts_bg_sn_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_begin_single_include IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_bgn_sngl_incld_cnf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |begin_single_include|.
    DATA(t3) = |BEGIN contains single INCLUDE|.
    DATA(t4) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
    t4 = t4 && |ingle INCLUDE STRUCTURE|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |TYPES: BEGIN OF dummy1.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  INCLUDE TYPE dselc.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |TYPES: END OF dummy1.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |DATA BEGIN OF foo.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |INCLUDE STRUCTURE syst.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |DATA END OF foo.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |STATICS BEGIN OF bar.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |INCLUDE STRUCTURE syst.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t17 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |STATICS END OF bar.|.
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
      DATA(t22) = |DATA BEGIN OF foo.|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t23 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  DATA field TYPE i.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t24 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  INCLUDE STRUCTURE dselc.|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t25 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |DATA END OF foo.|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t22.
      t20 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t20 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t33.
      t32 = t33.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t32 ).
      DATA(t35) = |SingleFile|.
      APPEND t35 TO t34->items.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t32 ).
      t31 = t36.
      t29 = t31.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t37.
      t29 = t37.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t20 i_extended_information = t28 i_tags = t29 i_pragma = t38 i_pseudo_comment = t39 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_bg_sn_in_ts_bg_sn_in.
    DATA(t1) = CAST zcl_lnt_bgn_sngl_incld_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_bg_sn_in_ts_bg_sn_in.
    DATA(t1) = CAST zcl_lnt_bgn_sngl_incld_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/begin_single_include.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_bg_sn_in_ts_bg_sn_in.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/begin_single_include.ts:48|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_bgn_sngl_incld_cnf( me->g_c_i_s_r_bg_sn_in_ts_bg_sn_in( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_bgn_sngl_incld_cnf( me->g_c_i_s_r_bg_sn_in_ts_bg_sn_in( ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_bg_sn_in_ts_bg_sn_in( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_bg_sn_in_ts_bg_sn_in( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1311_b73d3b527790.
  ENDMETHOD.
ENDCLASS.
