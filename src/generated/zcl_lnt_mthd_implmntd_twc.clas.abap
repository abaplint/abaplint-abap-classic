* TS: src/rules/method_implemented_twice.ts:10:1 MethodImplementedTwice
CLASS zcl_lnt_mthd_implmntd_twc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_mt_im_tw_ts_mt_im_tw RETURNING VALUE(result) TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS s_c_i_s_r_mt_im_tw_ts_mt_im_tw IMPORTING i_conf TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS r_p_i_s_r_mt_im_tw_ts_mt_im_tw IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_implmntd_twc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_mthd_implmntd_twc_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |method_implemented_twice|.
    DATA(t3) = |Method implemented twice|.
    DATA(t4) = |Reports an error if a method is implemented or defined twice|.
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
      DATA(t14) = |SingleFile|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t16) = |Syntax|.
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
  METHOD g_c_i_s_r_mt_im_tw_ts_mt_im_tw.
    DATA(t1) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_mt_im_tw_ts_mt_im_tw.
    DATA(t1) = CAST zcl_lnt_mthd_implmntd_twc_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_implemented_twice.ts:27|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD r_p_i_s_r_mt_im_tw_ts_mt_im_tw.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/method_implemented_twice.ts:31|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->s_c_i_s_r_mt_im_tw_ts_mt_im_tw( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_mt_im_tw_ts_mt_im_tw( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1486_c548d2cb8999.
  ENDMETHOD.
ENDCLASS.
