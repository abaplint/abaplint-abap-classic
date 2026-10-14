* TS: src/rules/selection_screen_naming.ts:21:1 SelectionScreenNaming
CLASS zcl_lnt_slctn_scrn_nmng DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm IMPORTING i_conf TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_pattern_for_statement IMPORTING i_statement TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE string.
    METHODS get_field_for_statement_node IMPORTING i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slctn_scrn_nmng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_slctn_scrn_nmng_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |selection_screen_naming|.
    DATA(t3) = |Selection screen naming conventions|.
    DATA(t4) = |Allows you to enforce a pattern, such as a prefix, for selec|.
    t4 = t4 && |tion-screen variable names.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11 = t12.
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t14) = |Naming|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t16) = |SingleFile|.
      APPEND t16 TO t15->items.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      t10 = t17.
      t8 = t10.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      t8 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t8 i_pragma = t19 i_pseudo_comment = t20 ).
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/selection_screen_naming.ts:34|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    DATA(t1) = CAST zcl_lnt_slctn_scrn_nmng_cnf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    DATA(t1) = CAST zcl_lnt_slctn_scrn_nmng_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_naming.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_naming.ts:48|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_pattern_for_statement.
    DATA(t1) = CAST zif_lnt_statement( i_statement ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_naming.ts:85|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_field_for_statement_node.
    DATA(t1) = CAST zcl_lnt_statement_node( i_stat_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/selection_screen_naming.ts:97|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_slctn_scrn_nmng_cnf( me->g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slctn_scrn_nmng_cnf( me->g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1593_50ae645b6f52.
  ENDMETHOD.
ENDCLASS.
