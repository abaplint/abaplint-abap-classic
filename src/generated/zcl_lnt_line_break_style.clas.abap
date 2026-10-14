* TS: src/rules/line_break_style.ts:11:1 LineBreakStyle
CLASS zcl_lnt_line_break_style DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_line_break_style_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_ln_br_st_ts_ln_br_st IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_break_style.
    METHODS g_c_i_s_r_ln_br_st_ts_ln_br_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_break_style_conf.
    METHODS s_c_i_s_r_ln_br_st_ts_ln_br_st IMPORTING i_conf TYPE REF TO zcl_lnt_line_break_style_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_line_break_style IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_line_break_style_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |line_break_style|.
    DATA(t3) = |Makes sure line breaks are consistent|.
    DATA(t4) = |Enforces LF as newlines in ABAP and XML files|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t6 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |abapGit does not work with CRLF|.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |SMIM and W3MI files are not checked.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t18.
      t17 = t18.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      DATA(t20) = |Whitespace|.
      APPEND t20 TO t19->items.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      DATA(t22) = |SingleFile|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      t16 = t23.
      t14 = t16.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t24.
      t14 = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t7 i_good_example = t8 i_extended_information = t9 i_tags = t14 i_pragma = t25 i_pseudo_comment = t26 ).
    result = t1.
    
  ENDMETHOD.
  METHOD i_i_sr_rl_ln_br_st_ts_ln_br_st.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_break_style.ts:26|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD g_c_i_s_r_ln_br_st_ts_ln_br_st.
    DATA(t1) = CAST zcl_lnt_line_break_style_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD s_c_i_s_r_ln_br_st_ts_ln_br_st.
    DATA(t1) = CAST zcl_lnt_line_break_style_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_break_style.ts:34|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_break_style.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_break_style.ts:26|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_line_break_style_conf( me->g_c_i_s_r_ln_br_st_ts_ln_br_st(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_line_break_style_conf( me->g_c_i_s_r_ln_br_st_ts_ln_br_st(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/line_break_style.ts:34|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1462_d39d45472b5c.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config(  i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize(  i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value(  ).
  ENDMETHOD.
ENDCLASS.
