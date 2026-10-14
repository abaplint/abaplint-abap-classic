* TS: src/rules/selection_screen_texts_missing.ts:15:1 SelectionScreenTextsMissing
CLASS zcl_lnt_slctn_scrn_txts_mssng DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms RETURNING VALUE(result) TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
    METHODS s_c_i_s_r_s_s_t_m_t_s_sc_tx_ms IMPORTING i_conf TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
    METHODS i_i_s_r_s_s_t_m_ts_sl_sc_tx_ms IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_slctn_scrn_txts_mssng.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_file IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_sel_texts TYPE REF TO zlnt_runtime_map__8bf596bf435b i_output TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_checked TYPE REF TO zlnt_runtime_set__1827558fd4c7
    i_main_prog_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slctn_scrn_txts_mssng IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_slc_scrn_txts_mssn_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |selection_screen_texts_missing|.
    DATA(t3) = |Selection screen texts missing|.
    DATA(t4) = |Checks that selection screen parameters and select-options h|.
    t4 = t4 && |ave selection texts|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |Excludes parameters and select-options that:|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t10 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* are inside a "SELECTION-SCREEN BEGIN OF LINE" block|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t9 t11 INTO t9 RESPECTING BLANKS.
      t9 = t9 && |* have the addition "NO-DISPLAY"|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t9.
      t7 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t7 = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t14 i_pragma = t15 i_pseudo_comment = t16 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms.
    DATA(t1) = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_s_s_t_m_t_s_sc_tx_ms.
    DATA(t1) = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_texts_missing.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD i_i_s_r_s_s_t_m_ts_sl_sc_tx_ms.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_texts_missing.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_texts_missing.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_file.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zlnt_runtime_map__8bf596bf435b( i_sel_texts ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_output ).
    DATA(t4) = CAST zlnt_runtime_set__1827558fd4c7( i_checked ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_main_prog_name ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/selection_screen_texts_missing.ts:62|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( me->g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( me->g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_texts_missing.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_texts_missing.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1595_2dc53c6ae51d.
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
