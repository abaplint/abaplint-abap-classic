* TS: src/rules/empty_line_in_statement.ts:16:1 EmptyLineinStatement
CLASS zcl_lnt_empty_linein_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_e_l_i_st_ts_em_ln_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
    METHODS s_c_i_s_r_e_l_i_st_ts_em_ln_st IMPORTING i_conf TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
    METHODS r_p_i_s_r_e_l_i_st_ts_em_ln_st IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_linein_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_empty_lnn_sttmnt_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |empty_line_in_statement|.
    DATA(t3) = |Find empty lines in statements|.
    DATA(t4) = |Checks that statements do not contain empty lines.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |WRITE|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |hello.|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t7.
      t5 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t5 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA(t14) = |WRITE hello.|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t12 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t19 = t19 && |nABAP.md#dont-obsess-with-separating-blank-lines|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t20 INTO t19 RESPECTING BLANKS.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t19 t21 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |https://docs.abapopenchecks.org/checks/41/|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t19.
      t17 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t17 = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t28.
      t27 = t28.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t30) = |Quickfix|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t32) = |Whitespace|.
      APPEND t32 TO t31->items.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t34) = |SingleFile|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t36) = |Styleguide|.
      APPEND t36 TO t35->items.
      DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      t26 = t37.
      t24 = t26.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      t24 = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t12 i_extended_information = t17 i_tags = t24 i_pragma = t39 i_pseudo_comment = t40 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/empty_line_in_statement.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_e_l_i_st_ts_em_ln_st.
    DATA(t1) = CAST zcl_lnt_empty_lnn_sttmnt_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_e_l_i_st_ts_em_ln_st.
    DATA(t1) = CAST zcl_lnt_empty_lnn_sttmnt_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/empty_line_in_statement.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_e_l_i_st_ts_em_ln_st.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/empty_line_in_statement.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_empty_lnn_sttmnt_cnf( me->g_c_i_s_r_e_l_i_st_ts_em_ln_st(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_empty_lnn_sttmnt_cnf( me->g_c_i_s_r_e_l_i_st_ts_em_ln_st(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_e_l_i_st_ts_em_ln_st( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_e_l_i_st_ts_em_ln_st( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1393_93e61edf7566.
  ENDMETHOD.
ENDCLASS.
