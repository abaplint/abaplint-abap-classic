* TS: src/rules/functional_writing.ts:20:1 FunctionalWriting
CLASS zcl_lnt_functional_writing DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_fn_wr_ts_fn_wrt RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS st_cn_in_sr_rl_fn_wr_ts_fn_wrt IMPORTING i_conf TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS crt_iss_fr_sttmnt_nd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS build_fix_string IMPORTING i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_functional_writing IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_fnctnl_wrtng_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |functional_writing|.
    DATA(t3) = |Use functional writing|.
    DATA(t4) = |Detects usage of call method when functional style calls can|.
    t4 = t4 && | be used.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CALL METHOD zcl_class=>method( ).|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |CALL METHOD cl_abap_typedescr=>describe_by_name|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  EXPORTING|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    p_name         = 'NAME'|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  RECEIVING|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    p_descr_ref    = lr_typedescr|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  EXCEPTIONS|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    type_not_found = 1|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    OTHERS         = 2.|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t7.
      t5 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t5 = t17.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA(t20) = |zcl_class=>method( ).|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t21 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |cl_abap_typedescr=>describe_by_name(|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t22 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |  EXPORTING|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t23 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    p_name         = 'NAME'|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t24 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |  RECEIVING|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t25 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    p_descr_ref    = lr_typedescr|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t26 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |  EXCEPTIONS|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t27 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    type_not_found = 1|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t28 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    OTHERS         = 2 ).|.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t20.
      t18 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t18 = t30.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t33 = t33 && |nABAP.md#prefer-functional-to-procedural-calls|.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t33 t34 INTO t33 RESPECTING BLANKS.
      t33 = t33 && |https://docs.abapopenchecks.org/checks/07/|.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t33.
      t31 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t31 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t41.
      t40 = t41.
      DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
      DATA(t43) = |Styleguide|.
      APPEND t43 TO t42->items.
      DATA(t44) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
      DATA(t45) = |Quickfix|.
      APPEND t45 TO t44->items.
      DATA(t46) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
      DATA(t47) = |SingleFile|.
      APPEND t47 TO t46->items.
      DATA(t48) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
      t39 = t48.
      t37 = t39.
    ELSE.
      DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t49.
      t37 = t49.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t18 i_extended_information = t31 i_tags = t37 i_pragma = t50 i_pseudo_comment = t51 ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_message.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/functional_writing.ts:53|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_fn_wr_ts_fn_wrt.
    DATA(t1) = CAST zcl_lnt_fnctnl_wrtng_cnf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_fn_wr_ts_fn_wrt.
    DATA(t1) = CAST zcl_lnt_fnctnl_wrtng_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/functional_writing.ts:61|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/functional_writing.ts:65|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD crt_iss_fr_sttmnt_nd.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_stat_node ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/functional_writing.ts:104|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD build_fix_string.
    DATA(t1) = CAST zcl_lnt_statement_node( i_stat_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/functional_writing.ts:110|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_fnctnl_wrtng_cnf( me->gt_cn_in_sr_rl_fn_wr_ts_fn_wrt(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_fnctnl_wrtng_cnf( me->gt_cn_in_sr_rl_fn_wr_ts_fn_wrt(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_fn_wr_ts_fn_wrt( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1421_97dc5472ee30.
  ENDMETHOD.
ENDCLASS.
