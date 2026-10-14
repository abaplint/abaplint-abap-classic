* TS: src/rules/identical_contents.ts:13:1 IdenticalContents
CLASS zcl_lnt_identical_contents DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_id_cn_ts_id_cnt RETURNING VALUE(result) TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
    METHODS st_cn_in_sr_rl_id_cn_ts_id_cnt IMPORTING i_conf TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
    METHODS rn_pr_in_sr_rl_id_cn_ts_id_cnt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_if IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_chained IMPORTING i_node TYPE REF TO zif_lnt_union_8249fcb1 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_identical_contents IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_idntcl_cntnts_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |identical_contents|.
    DATA(t3) = |Identical contents|.
    DATA(t4) = |Find identical contents in blocks inside IFs, both in the be|.
    t4 = t4 && |ginning and in the end.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |IF foo = bar.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  WRITE 'bar'.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  WRITE 'world'.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ELSE.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  WRITE 'foo'.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  WRITE 'world'.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDIF.|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t7.
      t5 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t5 = t15.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |IF foo = bar.|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t19 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |  WRITE 'bar'.|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t20 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |ELSE.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t21 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |  WRITE 'foo'.|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t22 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |ENDIF.|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t23 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |WRITE 'world'.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t18.
      t16 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t16 = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA(t28) = ||.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t28 t29 INTO t28 RESPECTING BLANKS.
      t28 = t28 && |Prerequsites: code is pretty printed with identical cAsE|.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t28 t30 INTO t28 RESPECTING BLANKS.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t28 t31 INTO t28 RESPECTING BLANKS.
      t28 = t28 && |Chained statments are ignored|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t28.
      t26 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t26 = t33.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t38.
      t37 = t38.
      DATA(t39) = CAST zlnt_runtime_arra_8ecd6afe19e0( t37 ).
      DATA(t40) = |SingleFile|.
      APPEND t40 TO t39->items.
      DATA(t41) = CAST zlnt_runtime_arra_8ecd6afe19e0( t37 ).
      t36 = t41.
      t34 = t36.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t42.
      t34 = t42.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t16 i_extended_information = t26 i_tags = t34 i_pragma = t43 i_pseudo_comment = t44 ).
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_cn_ts_id_cnt.
    DATA(t1) = CAST zcl_lnt_idntcl_cntnts_cnf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_cn_ts_id_cnt.
    DATA(t1) = CAST zcl_lnt_idntcl_cntnts_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/identical_contents.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_id_cn_ts_id_cnt.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/identical_contents.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD analyze_if.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/identical_contents.ts:73|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD is_chained.
    DATA(t1) = CAST zif_lnt_union_8249fcb1( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/identical_contents.ts:148|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_idntcl_cntnts_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_idntcl_cntnts_cnf( me->gt_cn_in_sr_rl_id_cn_ts_id_cnt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_idntcl_cntnts_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_id_cn_ts_id_cnt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_id_cn_ts_id_cnt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1428_d470d509fb8d.
  ENDMETHOD.
ENDCLASS.
