* TS: src/rules/ambiguous_statement.ts:16:1 AmbiguousStatement
CLASS zcl_lnt_ambiguous_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_am_st_ts_am_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
    METHODS st_cn_in_sr_rl_am_st_ts_am_stt IMPORTING i_conf TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
    METHODS rn_pr_in_sr_rl_am_st_ts_am_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_bare_statement IMPORTING i_st TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS try_match IMPORTING i_st TYPE REF TO zcl_lnt_statement_node i_reg_f149 TYPE REF TO zif_lnt_registry i_type1 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ambiguous_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_ambgs_sttmnt_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |ambiguous_statement|.
    DATA(t3) = |Check for ambigious statements|.
    DATA(t4) = |Checks for ambiguity between deleting or modifying from inte|.
    t4 = t4 && |rnal and database table|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Add "TABLE" keyword or "@" for escaping SQL variables|.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t6 INTO t4 RESPECTING BLANKS.
    DATA t7 TYPE c LENGTH 1.
    CLEAR t7.
    t7 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t7 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |Only works if the target version is 740sp05 or above|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA(t10) = |DELETE foo FROM bar.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t10 t11 INTO t10 RESPECTING BLANKS.
      t10 = t10 && |MODIFY foo FROM bar.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t10.
      t8 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t8 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = |DELETE foo FROM @bar.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t17 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |DELETE TABLE itab FROM 2.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t18 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |MODIFY zfoo FROM @wa.|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t19 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |MODIFY TABLE foo FROM bar.|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t16.
      t14 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t14 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t27.
      t26 = t27.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA(t29) = |SingleFile|.
      APPEND t29 TO t28->items.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      t25 = t30.
      t23 = t25.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t31.
      t23 = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t8 i_good_example = t14 i_extended_information = t22 i_tags = t23 i_pragma = t32 i_pseudo_comment = t33 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/ambiguous_statement.ts:37|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_am_st_ts_am_stt.
    DATA(t1) = CAST zcl_lnt_ambgs_sttmnt_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_am_st_ts_am_stt.
    DATA(t1) = CAST zcl_lnt_ambgs_sttmnt_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/ambiguous_statement.ts:45|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_am_st_ts_am_stt.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/ambiguous_statement.ts:49|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_bare_statement.
    DATA(t1) = CAST zcl_lnt_statement_node( i_st ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/ambiguous_statement.ts:83|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD try_match.
    DATA(t1) = CAST zcl_lnt_statement_node( i_st ).
    DATA(t2) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( i_type1 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/ambiguous_statement.ts:89|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_ambgs_sttmnt_cnf( me->gt_cn_in_sr_rl_am_st_ts_am_stt(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_ambgs_sttmnt_cnf( me->gt_cn_in_sr_rl_am_st_ts_am_stt(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_am_st_ts_am_stt( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_am_st_ts_am_stt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1305_856dcc9932bf.
  ENDMETHOD.
ENDCLASS.
