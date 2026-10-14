* TS: src/rules/sequential_blank.ts:16:1 SequentialBlank
CLASS zcl_lnt_sequential_blank DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sequential_blank_conf.
    METHODS constructor.
    CLASS-METHODS is_blank_or_whitespace IMPORTING i_line TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_sq_bl_ts_sq_bln RETURNING VALUE(result) TYPE REF TO zcl_lnt_sequential_blank_conf.
    METHODS st_cn_in_sr_rl_sq_bl_ts_sq_bln IMPORTING i_conf TYPE REF TO zcl_lnt_sequential_blank_conf.
    METHODS rn_pr_in_sr_rl_sq_bl_ts_sq_bln IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sequential_blank IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_sequential_blank_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD is_blank_or_whitespace.
    DATA(t1) = i_line.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^\s*$`.
    DATA(t5) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    DATA(t6) = t1.
    t2 = t3->test( p0 = t6 ).
    result = t2.

  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |sequential_blank|.
    DATA(t3) = |Sequential blank lines|.
    DATA(t4) = |Checks that code does not contain more than the configured n|.
    t4 = t4 && |umber of blank lines in a row.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t9 = t9 && |nABAP.md#add-a-single-blank-line-to-separate-things-but-not-|.
      t9 = t9 && |more|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t16.
      t15 = t16.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA(t18) = |Whitespace|.
      APPEND t18 TO t17->items.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA(t20) = |Quickfix|.
      APPEND t20 TO t19->items.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA(t22) = |SingleFile|.
      APPEND t22 TO t21->items.
      DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      t14 = t23.
      t12 = t14.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t24.
      t12 = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t12 i_pragma = t25 i_pseudo_comment = t26 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/sequential_blank.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_sq_bl_ts_sq_bln.
    DATA(t1) = CAST zcl_lnt_sequential_blank_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_sq_bl_ts_sq_bln.
    DATA(t1) = CAST zcl_lnt_sequential_blank_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/sequential_blank.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_sq_bl_ts_sq_bln.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/sequential_blank.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_sequential_blank_conf( me->gt_cn_in_sr_rl_sq_bl_ts_sq_bln(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sequential_blank_conf( me->gt_cn_in_sr_rl_sq_bl_ts_sq_bln(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sequential_blank_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_sq_bl_ts_sq_bln( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_sq_bl_ts_sq_bln( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1597_bfd1b9595eb0.
  ENDMETHOD.
ENDCLASS.
