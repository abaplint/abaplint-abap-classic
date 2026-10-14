* TS: src/rules/commented_code.ts:20:1 CommentedCode
CLASS zcl_lnt_commented_code DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_commented_code_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_cm_cd_ts_cmm_cd RETURNING VALUE(result) TYPE REF TO zcl_lnt_commented_code_conf.
    METHODS st_cn_in_sr_rl_cm_cd_ts_cmm_cd IMPORTING i_conf TYPE REF TO zcl_lnt_commented_code_conf.
    METHODS run_parsed REDEFINITION.
    METHODS check_bf6e IMPORTING i_code TYPE string i_file TYPE REF TO zcl_lnt_abap_file i_pos_start TYPE REF TO zcl_lnt_position i_pos_end TYPE REF TO zcl_lnt_position i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE
    REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_comment_line IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_commented_code IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_commented_code_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |commented_code|.
    DATA(t3) = |Find commented code|.
    DATA(t4) = |Detects usage of commented out code.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |* WRITE 'hello world'.|.
      DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t8->has = abap_true.
      t8->value = t7.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t5 = t9.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t13 = t13 && |nABAP.md#delete-code-instead-of-commenting-it|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t13 t14 INTO t13 RESPECTING BLANKS.
      t13 = t13 && |https://docs.abapopenchecks.org/checks/14/|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t13.
      t11 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t11 = t16.
    ENDIF.
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
      DATA(t23) = |Styleguide|.
      APPEND t23 TO t22->items.
      DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      DATA(t25) = |Quickfix|.
      APPEND t25 TO t24->items.
      DATA(t26) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      DATA(t27) = |SingleFile|.
      APPEND t27 TO t26->items.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t20 ).
      t19 = t28.
      t17 = t19.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t17 = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t11 i_tags = t17 i_pragma = t30 i_pseudo_comment = t31 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/commented_code.ts:36|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_cm_cd_ts_cmm_cd.
    DATA(t1) = CAST zcl_lnt_commented_code_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_cm_cd_ts_cmm_cd.
    DATA(t1) = CAST zcl_lnt_commented_code_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/commented_code.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/commented_code.ts:48|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_bf6e.
    DATA(t1) = i_code.
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = CAST zcl_lnt_position( i_pos_start ).
    DATA(t4) = CAST zcl_lnt_position( i_pos_end ).
    DATA(t5) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t6) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t7) = |src/rules/commented_code.ts:77|.
    t6->source_location = t7.
    RAISE EXCEPTION t6.
  ENDMETHOD.
  METHOD is_comment_line.
    DATA(t1) = i_text.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/commented_code.ts:114|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_commented_code_conf( me->gt_cn_in_sr_rl_cm_cd_ts_cmm_cd(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_commented_code_conf( me->gt_cn_in_sr_rl_cm_cd_ts_cmm_cd(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_commented_code_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_cm_cd_ts_cmm_cd( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1361_27884b4b0657.
  ENDMETHOD.
ENDCLASS.
