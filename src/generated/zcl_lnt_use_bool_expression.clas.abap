* TS: src/rules/use_bool_expression.ts:18:1 UseBoolExpression
CLASS zcl_lnt_use_bool_expression DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_us_bl_ex_ts_us_bl_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
    METHODS s_c_i_s_r_us_bl_ex_ts_us_bl_ex IMPORTING i_conf TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
    METHODS r_p_i_s_r_us_bl_ex_ts_us_bl_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_use_bool_expression IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_us_bl_exprssn_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |use_bool_expression|.
    DATA(t3) = |Use boolean expression|.
    DATA(t4) = |Use boolean expression, xsdbool from 740sp08 and up, boolc f|.
    t4 = t4 && |rom 702 and up|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |IF line IS INITIAL.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  has_entries = abap_false.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ELSE.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  has_entries = abap_true.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDIF.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |DATA(fsdf) = COND #( WHEN foo <> bar THEN abap_true ELSE aba|.
      t7 = t7 && |p_false ).|.
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
      DATA(t18) = |DATA(has_entries) = xsdbool( line IS NOT INITIAL ).|.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t19 INTO t18 RESPECTING BLANKS.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t20 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |DATA(fsdf) = xsdbool( foo <> bar ).|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t18.
      t16 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t16 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t25 = t25 && |nABAP.md#use-xsdbool-to-set-boolean-variables|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t32.
      t31 = t32.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      DATA(t34) = |Upport|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      DATA(t36) = |Styleguide|.
      APPEND t36 TO t35->items.
      DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      DATA(t38) = |Quickfix|.
      APPEND t38 TO t37->items.
      DATA(t39) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      DATA(t40) = |SingleFile|.
      APPEND t40 TO t39->items.
      DATA(t41) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      t30 = t41.
      t28 = t30.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t42.
      t28 = t42.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t16 i_extended_information = t23 i_tags = t28 i_pragma = t43 i_pseudo_comment = t44 ).
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_us_bl_ex_ts_us_bl_ex.
    DATA(t1) = CAST zcl_lnt_us_bl_exprssn_cnf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_us_bl_ex_ts_us_bl_ex.
    DATA(t1) = CAST zcl_lnt_us_bl_exprssn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/use_bool_expression.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD r_p_i_s_r_us_bl_ex_ts_us_bl_ex.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/use_bool_expression.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_us_bl_exprssn_cnf( me->g_c_i_s_r_us_bl_ex_ts_us_bl_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_us_bl_exprssn_cnf( me->g_c_i_s_r_us_bl_ex_ts_us_bl_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_us_bl_ex_ts_us_bl_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_us_bl_ex_ts_us_bl_ex( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1666_aeed27749739.
  ENDMETHOD.
ENDCLASS.
