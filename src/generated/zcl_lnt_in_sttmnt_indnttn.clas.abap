* TS: src/rules/in_statement_indentation.ts:21:1 InStatementIndentation
CLASS zcl_lnt_in_sttmnt_indnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_in_st_in_ts_in_st_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS s_c_i_s_r_in_st_in_ts_in_st_in IMPORTING i_conf TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    METHODS r_p_i_s_r_in_st_in_ts_in_st_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_in_sttmnt_indnttn IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_in_sttmnt_indnttn_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |in_statement_indentation|.
    DATA(t3) = |In-statement indentation|.
    DATA(t4) = |Checks alignment within statements which span multiple lines|.
    t4 = t4 && |.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |IF 1 = 1|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  AND 2 = 2.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  WRITE 'hello' &&|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  'world'.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDIF.|.
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
      DATA(t16) = |IF 1 = 1|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t17 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |    AND 2 = 2.|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t18 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |  WRITE 'hello' &&|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t19 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |    'world'.|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t16 t20 INTO t16 RESPECTING BLANKS.
      t16 = t16 && |ENDIF.|.
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
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |Lines following the first line should be indented once (2 sp|.
      t25 = t25 && |aces).|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t25 t26 INTO t25 RESPECTING BLANKS.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t25 t27 INTO t25 RESPECTING BLANKS.
      t25 = t25 && |For block declaration statements, lines after the first shou|.
      t25 = t25 && |ld be indented an additional time (default: +2 spaces)|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t25 t28 INTO t25 RESPECTING BLANKS.
      t25 = t25 && |to distinguish them better from code within the block.|.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t25.
      t23 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t23 = t30.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t35.
      t34 = t35.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t37) = |Whitespace|.
      APPEND t37 TO t36->items.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t39) = |Quickfix|.
      APPEND t39 TO t38->items.
      DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t41) = |SingleFile|.
      APPEND t41 TO t40->items.
      DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      t33 = t42.
      t31 = t33.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t43.
      t31 = t43.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t14 i_extended_information = t23 i_tags = t31 i_pragma = t44 i_pseudo_comment = t45 ).
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/in_statement_indentation.ts:48|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD g_c_i_s_r_in_st_in_ts_in_st_in.
    DATA(t1) = CAST zcl_lnt_in_sttmnt_indnttn_cnf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_st_in_ts_in_st_in.
    DATA(t1) = CAST zcl_lnt_in_sttmnt_indnttn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/in_statement_indentation.ts:56|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD r_p_i_s_r_in_st_in_ts_in_st_in.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/in_statement_indentation.ts:60|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_in_sttmnt_indnttn_cnf( me->g_c_i_s_r_in_st_in_ts_in_st_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_in_sttmnt_indnttn_cnf( me->g_c_i_s_r_in_st_in_ts_in_st_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_in_sttmnt_indnttn_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_in_st_in_ts_in_st_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_in_st_in_ts_in_st_in( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1443_212845767b97.
  ENDMETHOD.
ENDCLASS.
