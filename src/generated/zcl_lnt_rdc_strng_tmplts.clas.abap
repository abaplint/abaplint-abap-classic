* TS: src/rules/reduce_string_templates.ts:12:1 ReduceStringTemplates
CLASS zcl_lnt_rdc_strng_tmplts DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_rd_st_tm_ts_rd_st_tm RETURNING VALUE(result) TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
    METHODS s_c_i_s_r_rd_st_tm_ts_rd_st_tm IMPORTING i_conf TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
    METHODS r_p_i_s_r_rd_st_tm_ts_rd_st_tm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_ac26 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rdc_strng_tmplts IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_rdc_strng_tmplts_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |reduce_string_templates|.
    DATA(t3) = |Reduce string templates|.
    DATA(t4) = |Checks for string templates|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |WRITE \|\{ \|sdf\| \}\|.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |WRITE \|\{ 'sdf' \}\|.|.
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
      DATA(t13) = |WRITE \|sdf\|.|.
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
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t21.
      t20 = t21.
      DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      DATA(t23) = |SingleFile|.
      APPEND t23 TO t22->items.
      DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      t19 = t24.
      t17 = t19.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t17 = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t11 i_extended_information = t16 i_tags = t17 i_pragma = t26 i_pseudo_comment = t27 ).
    result = t1.
    
  ENDMETHOD.
  METHOD g_c_i_s_r_rd_st_tm_ts_rd_st_tm.
    DATA(t1) = CAST zcl_lnt_rdc_strng_tmplts_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_rd_st_tm_ts_rd_st_tm.
    DATA(t1) = CAST zcl_lnt_rdc_strng_tmplts_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/reduce_string_templates.ts:31|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_rd_st_tm_ts_rd_st_tm.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zif_lnt_object( i_obj_ac26 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/reduce_string_templates.ts:35|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rdc_strng_tmplts_cnf( me->g_c_i_s_r_rd_st_tm_ts_rd_st_tm(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rdc_strng_tmplts_cnf( me->g_c_i_s_r_rd_st_tm_ts_rd_st_tm(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rdc_strng_tmplts_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_rd_st_tm_ts_rd_st_tm( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rd_st_tm_ts_rd_st_tm( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1577_46edd72fe47d.
  ENDMETHOD.
ENDCLASS.
