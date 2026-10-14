* TS: src/rules/max_one_statement.ts:13:1 MaxOneStatement
CLASS zcl_lnt_max_one_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_mx_on_st_ts_mx_on_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS s_c_i_s_r_mx_on_st_ts_mx_on_st IMPORTING i_conf TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS r_p_i_s_r_mx_on_st_ts_mx_on_st IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_max_one_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_max_one_statement_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |max_one_statement|.
    DATA(t3) = |Max one statement per line|.
    DATA(t4) = |Checks that each line contains only a single statement.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |WRITE foo. WRITE bar.|.
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
      DATA(t12) = |WRITE foo.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t12 t13 INTO t12 RESPECTING BLANKS.
      t12 = t12 && |WRITE bar.|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t12.
      t10 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t10 = t15.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |Does not report empty statements, use rule empty_statement f|.
      t18 = t18 && |or detecting empty statements.|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t19 INTO t18 RESPECTING BLANKS.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t20 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |Does not report anything for chained statements.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t21 INTO t18 RESPECTING BLANKS.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t22 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t18 = t18 && |nABAP.md#no-more-than-one-statement-per-line|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t23 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |https://docs.abapopenchecks.org/checks/11/|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t18.
      t16 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t16 = t25.
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
      DATA(t32) = |Styleguide|.
      APPEND t32 TO t31->items.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      DATA(t34) = |Quickfix|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      DATA(t36) = |SingleFile|.
      APPEND t36 TO t35->items.
      DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      t28 = t37.
      t26 = t28.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      t26 = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t16 i_tags = t26 i_pragma = t39 i_pseudo_comment = t40 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/max_one_statement.ts:35|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_mx_on_st_ts_mx_on_st.
    DATA(t1) = CAST zcl_lnt_max_one_statement_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_mx_on_st_ts_mx_on_st.
    DATA(t1) = CAST zcl_lnt_max_one_statement_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/max_one_statement.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_mx_on_st_ts_mx_on_st.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/max_one_statement.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_max_one_statement_conf( me->g_c_i_s_r_mx_on_st_ts_mx_on_st(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_max_one_statement_conf( me->g_c_i_s_r_mx_on_st_ts_mx_on_st(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_max_one_statement_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_mx_on_st_ts_mx_on_st( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_mx_on_st_ts_mx_on_st( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1482_51d6ce5a4221.
  ENDMETHOD.
ENDCLASS.
