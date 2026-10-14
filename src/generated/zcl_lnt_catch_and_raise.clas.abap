* TS: src/rules/catch_and_raise.ts:13:1 CatchAndRaise
CLASS zcl_lnt_catch_and_raise DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_catch_and_raise_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_ct_an_rs_ts_ct_an_rs RETURNING VALUE(result) TYPE REF TO zcl_lnt_catch_and_raise_conf.
    METHODS s_c_i_s_r_ct_an_rs_ts_ct_an_rs IMPORTING i_conf TYPE REF TO zcl_lnt_catch_and_raise_conf.
    METHODS r_p_i_s_r_ct_an_rs_ts_ct_an_rs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_catch_and_raise IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_catch_and_raise_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |catch_and_raise|.
    DATA(t3) = |Catch and re-raise same exception|.
    DATA(t4) = |Reports CATCH blocks that only re-raise the caught exception|.
    t4 = t4 && | without any handling|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |TRY.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  something( ).|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |CATCH zcx_something INTO DATA(lv_exc).|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  RAISE EXCEPTION lv_exc.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDTRY.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t7.
      t5 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t5 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = |TRY.|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t17 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  something( ).|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t18 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |CATCH zcx_something.|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t19 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  " handle exception|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t20 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |ENDTRY.|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t16.
      t14 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t14 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
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
      DATA(t30) = |SingleFile|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      t26 = t31.
      t24 = t26.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t24 = t32.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t14 i_extended_information = t23 i_tags = t24 i_pragma = t33 i_pseudo_comment = t34 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_ct_an_rs_ts_ct_an_rs.
    DATA(t1) = CAST zcl_lnt_catch_and_raise_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_ct_an_rs_ts_ct_an_rs.
    DATA(t1) = CAST zcl_lnt_catch_and_raise_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/catch_and_raise.ts:31|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_ct_an_rs_ts_ct_an_rs.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/catch_and_raise.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/catch_and_raise.ts:91|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_catch_and_raise_conf( me->g_c_i_s_r_ct_an_rs_ts_ct_an_rs(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_catch_and_raise_conf( me->g_c_i_s_r_ct_an_rs_ts_ct_an_rs(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_catch_and_raise_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_ct_an_rs_ts_ct_an_rs( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ct_an_rs_ts_ct_an_rs( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1315_550a7fa8ce6f.
  ENDMETHOD.
ENDCLASS.
