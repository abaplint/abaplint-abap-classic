* TS: src/rules/unnecessary_pragma.ts:19:1 UnnecessaryPragma
CLASS zcl_lnt_unnecessary_pragma DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_pr_ts_un_prg RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
    METHODS st_cn_in_sr_rl_un_pr_ts_un_prg IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
    METHODS rn_pr_in_sr_rl_un_pr_ts_un_prg IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_text IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_subrc IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_next TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_needed IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS contains_no_handler IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_next TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_pragma IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_unncssry_prgm_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |unnecessary_pragma|.
    DATA(t3) = |Unnecessary Pragma|.
    DATA(t4) = |Finds pragmas which can be removed|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |TRY.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    ...|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  CATCH zcx_abapgit_exception ##NO_HANDLER.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    RETURN. " it has a handler|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDTRY.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |MESSAGE w125(zbar) WITH c_foo INTO message ##NEEDED ##NO_TEX|.
      t7 = t7 && |T.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |SELECT SINGLE * FROM tadir INTO @DATA(sdfs) ##SUBRC_OK.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |IF sy-subrc <> 0.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDIF.|.
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
      DATA(t20) = |TRY.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t21 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    ...|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t22 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |  CATCH zcx_abapgit_exception.|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t23 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    RETURN.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t24 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |ENDTRY.|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t25 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |MESSAGE w125(zbar) WITH c_foo INTO message.|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t26 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |SELECT SINGLE * FROM tadir INTO @DATA(sdfs).|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t27 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |IF sy-subrc <> 0.|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t28 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |ENDIF.|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t29 INTO t20 RESPECTING BLANKS.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t30 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |DATA: BEGIN OF blah ##NEEDED,|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t31 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |        test1 TYPE string,|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t32 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |        test2 TYPE string,|.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t33 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |      END OF blah.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t20.
      t18 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t18 = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA(t37) = abap_true.
    IF t37 = abap_true.
      DATA(t38) = |* NO_HANDLER with handler|.
      DATA t39 TYPE c LENGTH 1.
      CLEAR t39.
      t39 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t39 INTO t38 RESPECTING BLANKS.
      DATA t40 TYPE c LENGTH 1.
      CLEAR t40.
      t40 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t40 INTO t38 RESPECTING BLANKS.
      t38 = t38 && |* NEEDED without definition|.
      DATA t41 TYPE c LENGTH 1.
      CLEAR t41.
      t41 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t41 INTO t38 RESPECTING BLANKS.
      DATA t42 TYPE c LENGTH 1.
      CLEAR t42.
      t42 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t42 INTO t38 RESPECTING BLANKS.
      t38 = t38 && |* NO_TEXT without texts|.
      DATA t43 TYPE c LENGTH 1.
      CLEAR t43.
      t43 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t43 INTO t38 RESPECTING BLANKS.
      DATA t44 TYPE c LENGTH 1.
      CLEAR t44.
      t44 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t44 INTO t38 RESPECTING BLANKS.
      t38 = t38 && |* SUBRC_OK where sy-subrc is checked|.
      DATA t45 TYPE c LENGTH 1.
      CLEAR t45.
      t45 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t45 INTO t38 RESPECTING BLANKS.
      DATA t46 TYPE c LENGTH 1.
      CLEAR t46.
      t46 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t38 t46 INTO t38 RESPECTING BLANKS.
      t38 = t38 && |NO_HANDLER inside macros are not checked|.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t38.
      t36 = t47.
    ELSE.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      t36 = t48.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t53.
      t52 = t53.
      DATA(t54) = CAST zlnt_runtime_arra_8ecd6afe19e0( t52 ).
      DATA(t55) = |SingleFile|.
      APPEND t55 TO t54->items.
      DATA(t56) = CAST zlnt_runtime_arra_8ecd6afe19e0( t52 ).
      t51 = t56.
      t49 = t51.
    ELSE.
      DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t57.
      t49 = t57.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t59.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t18 i_extended_information = t36 i_tags = t49 i_pragma = t58 i_pseudo_comment = t59 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_un_pr_ts_un_prg.
    DATA(t1) = CAST zcl_lnt_unncssry_prgm_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_un_pr_ts_un_prg.
    DATA(t1) = CAST zcl_lnt_unncssry_prgm_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unnecessary_pragma.ts:67|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_un_pr_ts_un_prg.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unnecessary_pragma.ts:71|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_text.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/unnecessary_pragma.ts:130|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD check_subrc.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_next ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/unnecessary_pragma.ts:146|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_needed.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/unnecessary_pragma.ts:162|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD contains_no_handler.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_next ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/unnecessary_pragma.ts:193|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unncssry_prgm_cnf( me->gt_cn_in_sr_rl_un_pr_ts_un_prg(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_prgm_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_un_pr_ts_un_prg( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_pr_ts_un_prg( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1645_838d4280ff91.
  ENDMETHOD.
ENDCLASS.
