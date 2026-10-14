* TS: src/rules/line_only_punc.ts:17:1 LineOnlyPunc
CLASS zcl_lnt_line_only_punc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_ln_on_pn_ts_ln_on_pn RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS s_c_i_s_r_ln_on_pn_ts_ln_on_pn IMPORTING i_conf TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS r_p_i_s_r_ln_on_pn_ts_ln_on_pn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_line_only_punc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_line_only_punc_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |line_only_punc|.
    DATA(t3) = |Line containing only punctuation|.
    DATA(t4) = |Detects lines containing only punctuation.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |zcl_class=>method(|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |).|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t7.
      t5 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t5 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = |zcl_class=>method( ).|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t13.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t11 = t15.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t18 = t18 && |nABAP.md#close-brackets-at-line-end|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t19 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |https://docs.abapopenchecks.org/checks/16/|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t18.
      t16 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t16 = t21.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t25 = t26.
      DATA(t27) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t28) = |Styleguide|.
      APPEND t28 TO t27->items.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t30) = |Quickfix|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      DATA(t32) = |SingleFile|.
      APPEND t32 TO t31->items.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t25 ).
      t24 = t33.
      t22 = t24.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t34.
      t22 = t34.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t11 i_extended_information = t16 i_tags = t22 i_pragma = t35 i_pseudo_comment = t36 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/line_only_punc.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD g_c_i_s_r_ln_on_pn_ts_ln_on_pn.
    DATA(t1) = CAST zcl_lnt_line_only_punc_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_ln_on_pn_ts_ln_on_pn.
    DATA(t1) = CAST zcl_lnt_line_only_punc_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_only_punc.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_ln_on_pn_ts_ln_on_pn.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/line_only_punc.ts:46|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_line_only_punc_conf( me->g_c_i_s_r_ln_on_pn_ts_ln_on_pn(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_line_only_punc_conf( me->g_c_i_s_r_ln_on_pn_ts_ln_on_pn(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_line_only_punc_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_ln_on_pn_ts_ln_on_pn( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ln_on_pn_ts_ln_on_pn( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1466_474c6802a453.
  ENDMETHOD.
ENDCLASS.
