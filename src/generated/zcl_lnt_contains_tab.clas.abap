* TS: src/rules/contains_tab.ts:14:1 ContainsTab
CLASS zcl_lnt_contains_tab DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_contains_tab_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_cn_tb_ts_cnt_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_contains_tab_conf.
    METHODS st_cn_in_sr_rl_cn_tb_ts_cnt_tb IMPORTING i_conf TYPE REF TO zcl_lnt_contains_tab_conf.
    METHODS rn_pr_in_sr_rl_cn_tb_ts_cnt_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS create_issue IMPORTING i_line TYPE int8 i_tab_col TYPE int8 i_tab_amount TYPE int8 i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_contains_tab IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_contains_tab_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |contains_tab|.
    DATA(t3) = |Code contains tab|.
    DATA(t4) = |Checks for usage of tabs (enable to enforce spaces)|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = ||.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 9 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |WRITE 'hello world'.|.
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
      DATA(t13) = |  WRITE 'hello world'.|.
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
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = ||.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t19 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |https://docs.abapopenchecks.org/checks/09/|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t18 t20 INTO t18 RESPECTING BLANKS.
      t18 = t18 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t18 = t18 && |nABAP.md#indent-and-snap-to-tab|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t18.
      t16 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t16 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t27.
      t26 = t27.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA(t29) = |Whitespace|.
      APPEND t29 TO t28->items.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA(t31) = |Quickfix|.
      APPEND t31 TO t30->items.
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA(t33) = |Styleguide|.
      APPEND t33 TO t32->items.
      DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA(t35) = |SingleFile|.
      APPEND t35 TO t34->items.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      t25 = t36.
      t23 = t25.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t37.
      t23 = t37.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t11 i_extended_information = t16 i_tags = t23 i_pragma = t38 i_pseudo_comment = t39 ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/contains_tab.ts:32|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_cn_tb_ts_cnt_tb.
    DATA t1 TYPE int8.
    DATA t2 TYPE int8.
    DATA(t3) = CAST zcl_lnt_contains_tab_conf( me->conf ).
    t2 = t3->spaces.
    t1 = t2.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = CAST zcl_lnt_contains_tab_conf( me->conf ).
    result = t6.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_cn_tb_ts_cnt_tb.
    DATA(t1) = CAST zcl_lnt_contains_tab_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/contains_tab.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_cn_tb_ts_cnt_tb.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/contains_tab.ts:47|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD create_issue.
    DATA(t1) = i_line.
    DATA(t2) = i_tab_col.
    DATA(t3) = i_tab_amount.
    DATA(t4) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/contains_tab.ts:64|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_contains_tab_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_cn_tb_ts_cnt_tb( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_cn_tb_ts_cnt_tb( i_file = i_file ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1368_7e3d2272c1ea.
  ENDMETHOD.
ENDCLASS.
