* TS: src/rules/no_prefixes.ts:36:1 NoPrefixes
CLASS zcl_lnt_no_prefixes DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_prefixes_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rls_n_prf_ts_n_prf RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_prefixes_conf.
    METHODS st_cn_in_sr_rls_n_prf_ts_n_prf IMPORTING i_conf TYPE REF TO zcl_lnt_no_prefixes_conf.
    METHODS rn_pr_in_sr_rls_n_prf_ts_n_prf IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_data IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_statics IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_field_symbols IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_constants IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_types IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_method_parameters IMPORTING i_top_node TYPE REF TO zcl_lnt_structure_node i_regex TYPE REF TO zlnt_runtime_rege_5a210f82384e i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_prefixes IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_no_prefixes_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |no_prefixes|.
    DATA(t3) = |No Prefixes|.
    DATA(t4) = |Dont use hungarian notation|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA lv_foo TYPE i.|.
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
      DATA(t12) = |DATA foo TYPE i.|.
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
      DATA(t17) = ||.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t18 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |Note: not prefixing TYPES will require changing the errorNam|.
      t17 = t17 && |espace in the abaplint configuration,|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t19 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |allowing all types to become voided, abaplint will then prov|.
      t17 = t17 && |ide less precise syntax errors.|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t20 INTO t17 RESPECTING BLANKS.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t21 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t17 = t17 && |nABAP.md#avoid-encodings-esp-hungarian-notation-and-prefixes|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t22 INTO t17 RESPECTING BLANKS.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t23 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |https://github.com/SAP/styleguides/blob/main/clean-abap/sub-|.
      t17 = t17 && |sections/AvoidEncodings.md|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t17.
      t15 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t30.
      t29 = t30.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      DATA(t32) = |SingleFile|.
      APPEND t32 TO t31->items.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      DATA(t34) = |Styleguide|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      t28 = t35.
      t26 = t28.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t36.
      t26 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t26 i_pragma = t37 i_pseudo_comment = t38 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rls_n_prf_ts_n_prf.
    DATA(t1) = CAST zcl_lnt_no_prefixes_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rls_n_prf_ts_n_prf.
    DATA(t1) = CAST zcl_lnt_no_prefixes_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_prefixes.ts:62|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rls_n_prf_ts_n_prf.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/no_prefixes.ts:66|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_data.
    DATA(t1) = CAST zcl_lnt_structure_node( i_top_node ).
    DATA(t2) = CAST zlnt_runtime_rege_5a210f82384e( i_regex ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/no_prefixes.ts:124|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_statics.
    DATA(t1) = CAST zcl_lnt_structure_node( i_top_node ).
    DATA(t2) = CAST zlnt_runtime_rege_5a210f82384e( i_regex ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/no_prefixes.ts:154|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_field_symbols.
    DATA(t1) = CAST zcl_lnt_structure_node( i_top_node ).
    DATA(t2) = CAST zlnt_runtime_rege_5a210f82384e( i_regex ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/no_prefixes.ts:171|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_constants.
    DATA(t1) = CAST zcl_lnt_structure_node( i_top_node ).
    DATA(t2) = CAST zlnt_runtime_rege_5a210f82384e( i_regex ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/no_prefixes.ts:195|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_types.
    DATA(t1) = CAST zcl_lnt_structure_node( i_top_node ).
    DATA(t2) = CAST zlnt_runtime_rege_5a210f82384e( i_regex ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/no_prefixes.ts:212|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_method_parameters.
    DATA(t1) = CAST zcl_lnt_structure_node( i_top_node ).
    DATA(t2) = CAST zlnt_runtime_rege_5a210f82384e( i_regex ).
    DATA(t3) = CAST zif_lnt_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/no_prefixes.ts:233|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_no_prefixes_conf( me->gt_cn_in_sr_rls_n_prf_ts_n_prf(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_prefixes_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rls_n_prf_ts_n_prf( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_prf_ts_n_prf( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1524_bd719ae299a8.
  ENDMETHOD.
ENDCLASS.
