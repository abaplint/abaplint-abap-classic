* TS: src/rules/wrong_abapdoc_position.ts:13:1 WrongAbapdocPosition
CLASS zcl_lnt_wrong_abapdoc_position DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps RETURNING VALUE(result) TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps IMPORTING i_conf TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_abapdoc IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_bf6e IMPORTING i_abapdoc TYPE REF TO zcl_lnt_statement_node i_next TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_wrong_abapdoc_position IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_wrng_abpdc_pstn_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |wrong_abapdoc_position|.
    DATA(t3) = |Wrong ABAP Doc position|.
    DATA(t4) = |ABAP Doc must be placed directly in front of the declaration|.
    t4 = t4 && | it documents.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CLASS zcl_foo DEFINITION PUBLIC.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  PUBLIC SECTION.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    "! Navigation modes|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    CONSTANTS:|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      BEGIN OF cs_nav_mode,|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |        back TYPE i VALUE 1,|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      END OF cs_nav_mode.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDCLASS.|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t7.
      t5 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t5 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = |CLASS zcl_foo DEFINITION PUBLIC.|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t20 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |  PUBLIC SECTION.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t21 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |    CONSTANTS:|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t22 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |      "! Navigation modes|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t23 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |      BEGIN OF cs_nav_mode,|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t24 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |        back TYPE i VALUE 1,|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t25 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |      END OF cs_nav_mode.|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t26 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |ENDCLASS.|.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t19.
      t17 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t17 = t28.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |ABAP Doc documents the single declaration following it, an A|.
      t31 = t31 && |BAP Doc block placed|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t32 INTO t31 RESPECTING BLANKS.
      t31 = t31 && |elsewhere is silently ignored, leaving the declaration undoc|.
      t31 = t31 && |umented.|.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t33 INTO t31 RESPECTING BLANKS.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t34 INTO t31 RESPECTING BLANKS.
      t31 = t31 && |The following positions are reported,|.
      DATA t35 TYPE c LENGTH 1.
      CLEAR t35.
      t35 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t35 INTO t31 RESPECTING BLANKS.
      t31 = t31 && |* in front of a chained keyword, ie. before "CONSTANTS:" ins|.
      t31 = t31 && |tead of after the colon,|.
      DATA t36 TYPE c LENGTH 1.
      CLEAR t36.
      t36 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t36 INTO t31 RESPECTING BLANKS.
      t31 = t31 && |* in the middle of a statement, ie. between the parameters o|.
      t31 = t31 && |f a METHODS definition,|.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t37 INTO t31 RESPECTING BLANKS.
      t31 = t31 && |* directly in front of ENDCLASS, ENDINTERFACE or a SECTION s|.
      t31 = t31 && |tatement.|.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t38 INTO t31 RESPECTING BLANKS.
      DATA t39 TYPE c LENGTH 1.
      CLEAR t39.
      t39 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t31 t39 INTO t31 RESPECTING BLANKS.
      t31 = t31 && |Only checks ABAP Doc inside class definitions and interfaces|.
      t31 = t31 && |.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t31.
      t29 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t29 = t41.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t42.
    DATA(t43) = abap_true.
    IF t43 = abap_true.
      DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t46.
      t45 = t46.
      DATA(t47) = CAST zlnt_runtime_arra_8ecd6afe19e0( t45 ).
      DATA(t48) = |SingleFile|.
      APPEND t48 TO t47->items.
      DATA(t49) = CAST zlnt_runtime_arra_8ecd6afe19e0( t45 ).
      t44 = t49.
      t42 = t44.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t50.
      t42 = t50.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t17 i_extended_information = t29 i_tags = t42 i_pragma = t51 i_pseudo_comment = t52 ).
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    DATA(t1) = CAST zcl_lnt_wrng_abpdc_pstn_cnf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    DATA(t1) = CAST zcl_lnt_wrng_abpdc_pstn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/wrong_abapdoc_position.ts:55|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/wrong_abapdoc_position.ts:59|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_abapdoc.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/wrong_abapdoc_position.ts:102|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = CAST zcl_lnt_statement_node( i_abapdoc ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_next ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/wrong_abapdoc_position.ts:107|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_wrng_abpdc_pstn_cnf( me->g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_wrng_abpdc_pstn_cnf( me->g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1678_d60f33b1f86f.
  ENDMETHOD.
ENDCLASS.
