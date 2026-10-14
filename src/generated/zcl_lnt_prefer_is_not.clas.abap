* TS: src/rules/prefer_is_not.ts:14:1 PreferIsNot
CLASS zcl_lnt_prefer_is_not DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prefer_is_not_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_pr_is_nt_ts_pr_is_nt RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_is_not_conf.
    METHODS s_c_i_s_r_pr_is_nt_ts_pr_is_nt IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_is_not_conf.
    METHODS r_p_i_s_r_pr_is_nt_ts_pr_is_nt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_c TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_is_not IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prefer_is_not_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |prefer_is_not|.
    DATA(t3) = |Prefer IS NOT to NOT IS|.
    DATA(t4) = |Prefer IS NOT to NOT IS|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |IF NOT variable IS INITIAL.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |IF NOT variable CP 'TODO*'.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |IF NOT variable = 42.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |IF NOT variable CA 'hello'.|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t7.
      t5 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t5 = t12.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = |IF variable IS NOT INITIAL.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t16 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |IF variable NP 'TODO*'.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t17 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |IF variable <> 42.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t18 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |IF variable CO 'hello'.|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t15.
      t13 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t13 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = ||.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t24 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t23 = t23 && |nABAP.md#prefer-is-not-to-not-is|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t25 INTO t23 RESPECTING BLANKS.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t26 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |"if not is_valid( )." examples are skipped|.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t23.
      t21 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t21 = t28.
    ENDIF.
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
      DATA(t35) = |Styleguide|.
      APPEND t35 TO t34->items.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t32 ).
      DATA(t37) = |Quickfix|.
      APPEND t37 TO t36->items.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t32 ).
      DATA(t39) = |SingleFile|.
      APPEND t39 TO t38->items.
      DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t32 ).
      t31 = t40.
      t29 = t31.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t41.
      t29 = t41.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t13 i_extended_information = t21 i_tags = t29 i_pragma = t42 i_pseudo_comment = t43 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_pr_is_nt_ts_pr_is_nt.
    DATA(t1) = CAST zcl_lnt_prefer_is_not_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_pr_is_nt_ts_pr_is_nt.
    DATA(t1) = CAST zcl_lnt_prefer_is_not_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_is_not.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_pr_is_nt_ts_pr_is_nt.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/prefer_is_not.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_fix.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_expression_node( i_c ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/prefer_is_not.ts:68|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prefer_is_not_conf( me->g_c_i_s_r_pr_is_nt_ts_pr_is_nt(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prefer_is_not_conf( me->g_c_i_s_r_pr_is_nt_ts_pr_is_nt(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prefer_is_not_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_pr_is_nt_ts_pr_is_nt( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_is_nt_ts_pr_is_nt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1561_aaad7837c35b.
  ENDMETHOD.
ENDCLASS.
