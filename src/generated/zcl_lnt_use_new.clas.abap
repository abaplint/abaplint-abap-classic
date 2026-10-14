* TS: src/rules/use_new.ts:17:1 UseNew
CLASS zcl_lnt_use_new DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_use_new_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rls_us_nw_ts_us_nw RETURNING VALUE(result) TYPE REF TO zcl_lnt_use_new_conf.
    METHODS st_cn_in_sr_rls_us_nw_ts_us_nw IMPORTING i_conf TYPE REF TO zcl_lnt_use_new_conf.
    METHODS run_parsed REDEFINITION.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_use_new IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_use_new_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |use_new|.
    DATA(t3) = |Use NEW|.
    DATA(t4) = |Checks for deprecated CREATE OBJECT statements.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CREATE OBJECT ref.|.
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
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA(t12) = |ref = NEW #( ).|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t10 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t17 = t17 && |nABAP.md#prefer-new-to-create-object|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t18 INTO t17 RESPECTING BLANKS.
      DATA t19 TYPE c LENGTH 1.
      CLEAR t19.
      t19 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t19 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |If the target variable is referenced in the CREATE OBJECT st|.
      t17 = t17 && |atement, no errors are issued|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t20 INTO t17 RESPECTING BLANKS.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t17 t21 INTO t17 RESPECTING BLANKS.
      t17 = t17 && |Applicable from v740sp02 and up|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t17.
      t15 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t28.
      t27 = t28.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t30) = |Upport|.
      APPEND t30 TO t29->items.
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t32) = |Styleguide|.
      APPEND t32 TO t31->items.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t34) = |Quickfix|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      DATA(t36) = |SingleFile|.
      APPEND t36 TO t35->items.
      DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t27 ).
      t26 = t37.
      t24 = t26.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      t24 = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t10 i_extended_information = t15 i_tags = t24 i_pragma = t39 i_pseudo_comment = t40 ).
    result = t1.

  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/use_new.ts:36|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rls_us_nw_ts_us_nw.
    DATA(t1) = CAST zcl_lnt_use_new_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rls_us_nw_ts_us_nw.
    DATA(t1) = CAST zcl_lnt_use_new_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/use_new.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/use_new.ts:48|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD build_fix.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/use_new.ts:83|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_use_new_conf( me->gt_cn_in_sr_rls_us_nw_ts_us_nw(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_use_new_conf( me->gt_cn_in_sr_rls_us_nw_ts_us_nw(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_use_new_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rls_us_nw_ts_us_nw( i_conf = t1 ).

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1672_86bacaf40b83.
  ENDMETHOD.
ENDCLASS.
