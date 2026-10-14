* TS: src/rules/obsolete_statement.ts:83:1 ObsoleteStatement
CLASS zcl_lnt_obsolete_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_obslt_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ob_st_ts_ob_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_obslt_sttmnt_cnf.
    METHODS st_cn_in_sr_rl_ob_st_ts_ob_stt IMPORTING i_conf TYPE REF TO zcl_lnt_obslt_sttmnt_cnf.
    METHODS rn_pr_in_sr_rl_ob_st_ts_ob_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zif_lnt_statement i_statement_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_obsolete_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_obslt_sttmnt_cnf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |obsolete_statement|.
    DATA(t3) = |Obsolete statements|.
    DATA(t4) = |Checks for usages of certain obsolete statements|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |REFRESH itab.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |COMPUTE foo = 2 + 2.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |MULTIPLY lv_foo BY 2.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |INTERFACE intf LOAD.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |IF foo IS SUPPLIED.|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDIF.|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t7.
      t5 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t5 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = ||.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t23 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t22 = t22 && |nABAP.md#prefer-functional-to-procedural-language-constructs|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t24 INTO t22 RESPECTING BLANKS.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t25 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t22 = t22 && |nABAP.md#avoid-obsolete-language-elements|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t26 INTO t22 RESPECTING BLANKS.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t27 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |SET EXTENDED CHECK: https://help.sap.com/doc/abapdocu_latest|.
      t22 = t22 && |_index_htm/latest/en-us/abapset_extended_check.html|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t28 INTO t22 RESPECTING BLANKS.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t29 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |IS REQUESTED: https://help.sap.com/doc/abapdocu_latest_index|.
      t22 = t22 && |_htm/latest/en-US/abenlogexp_requested.html|.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t30 INTO t22 RESPECTING BLANKS.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t31 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |WITH HEADER LINE: https://help.sap.com/doc/abapdocu_latest_i|.
      t22 = t22 && |ndex_htm/latest/en-US/abapdata_header_line.html|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t32 INTO t22 RESPECTING BLANKS.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t33 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |FIELD-SYMBOLS STRUCTURE: https://help.sap.com/doc/abapdocu_l|.
      t22 = t22 && |atest_index_htm/latest/en-us/abapfield-symbols_obsolete_typi|.
      t22 = t22 && |ng.html|.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t34 INTO t22 RESPECTING BLANKS.
      DATA t35 TYPE c LENGTH 1.
      CLEAR t35.
      t35 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t35 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |TYPE-POOLS: from 702, https://help.sap.com/doc/abapdocu_late|.
      t22 = t22 && |st_index_htm/latest/en-US/abennews-71-program_load.html|.
      DATA t36 TYPE c LENGTH 1.
      CLEAR t36.
      t36 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t36 INTO t22 RESPECTING BLANKS.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t37 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |LOAD addition: from 702, https://help.sap.com/doc/abapdocu_l|.
      t22 = t22 && |atest_index_htm/latest/en-US/abennews-71-program_load.html|.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t38 INTO t22 RESPECTING BLANKS.
      DATA t39 TYPE c LENGTH 1.
      CLEAR t39.
      t39 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t39 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |COMMUICATION: https://help.sap.com/doc/abapdocu_latest_index|.
      t22 = t22 && |_htm/latest/en-us/abapcommunication.html|.
      DATA t40 TYPE c LENGTH 1.
      CLEAR t40.
      t40 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t40 INTO t22 RESPECTING BLANKS.
      DATA t41 TYPE c LENGTH 1.
      CLEAR t41.
      t41 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t41 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |OCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/l|.
      t22 = t22 && |atest/en-us/abapdata_occurs.html|.
      DATA t42 TYPE c LENGTH 1.
      CLEAR t42.
      t42 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t42 INTO t22 RESPECTING BLANKS.
      DATA t43 TYPE c LENGTH 1.
      CLEAR t43.
      t43 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t43 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |PARAMETER: https://help.sap.com/doc/abapdocu_latest_index_ht|.
      t22 = t22 && |m/latest/en-US/abapparameter.html|.
      DATA t44 TYPE c LENGTH 1.
      CLEAR t44.
      t44 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t44 INTO t22 RESPECTING BLANKS.
      DATA t45 TYPE c LENGTH 1.
      CLEAR t45.
      t45 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t45 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |RANGES: https://help.sap.com/doc/abapdocu_latest_index_htm/l|.
      t22 = t22 && |atest/en-US/abapranges.html|.
      DATA t46 TYPE c LENGTH 1.
      CLEAR t46.
      t46 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t46 INTO t22 RESPECTING BLANKS.
      DATA t47 TYPE c LENGTH 1.
      CLEAR t47.
      t47 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t47 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |PACK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
      t22 = t22 && |est/en-us/abappack.html|.
      DATA t48 TYPE c LENGTH 1.
      CLEAR t48.
      t48 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t48 INTO t22 RESPECTING BLANKS.
      DATA t49 TYPE c LENGTH 1.
      CLEAR t49.
      t49 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t49 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |MOVE: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
      t22 = t22 && |est/en-us/abapmove_obs.html|.
      DATA t50 TYPE c LENGTH 1.
      CLEAR t50.
      t50 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t50 INTO t22 RESPECTING BLANKS.
      DATA t51 TYPE c LENGTH 1.
      CLEAR t51.
      t51 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t51 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |SELECT without INTO: https://help.sap.com/doc/abapdocu_lates|.
      t22 = t22 && |t_index_htm/latest/en-US/abapselect_obsolete.html|.
      DATA t52 TYPE c LENGTH 1.
      CLEAR t52.
      t52 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t52 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |SELECT COUNT(*) is considered okay|.
      DATA t53 TYPE c LENGTH 1.
      CLEAR t53.
      t53 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t53 INTO t22 RESPECTING BLANKS.
      DATA t54 TYPE c LENGTH 1.
      CLEAR t54.
      t54 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t54 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |FREE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_|.
      t22 = t22 && |htm/latest/en-us/abapfree_mem_id_obsolete.html|.
      DATA t55 TYPE c LENGTH 1.
      CLEAR t55.
      t55 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t55 INTO t22 RESPECTING BLANKS.
      DATA t56 TYPE c LENGTH 1.
      CLEAR t56.
      t56 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t56 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |SORT BY FS: https://help.sap.com/doc/abapdocu_latest_index_h|.
      t22 = t22 && |tm/latest/en-US/abapsort_itab_obsolete.html|.
      DATA t57 TYPE c LENGTH 1.
      CLEAR t57.
      t57 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t57 INTO t22 RESPECTING BLANKS.
      DATA t58 TYPE c LENGTH 1.
      CLEAR t58.
      t58 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t58 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |CALL TRANSFORMATION OBJECTS: https://help.sap.com/doc/abapdo|.
      t22 = t22 && |cu_latest_index_htm/latest/en-US/abapcall_transformation_obj|.
      t22 = t22 && |ects.html|.
      DATA t59 TYPE c LENGTH 1.
      CLEAR t59.
      t59 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t59 INTO t22 RESPECTING BLANKS.
      DATA t60 TYPE c LENGTH 1.
      CLEAR t60.
      t60 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t60 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |POSIX REGEX: https://help.sap.com/doc/abapdocu_latest_index_|.
      t22 = t22 && |htm/latest/en-US/ABENREGEX_MIGRATING_POSIX.html|.
      DATA t61 TYPE c LENGTH 1.
      CLEAR t61.
      t61 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t61 INTO t22 RESPECTING BLANKS.
      DATA t62 TYPE c LENGTH 1.
      CLEAR t62.
      t62 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t62 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |OCCURENCES: check for OCCURENCES vs OCCURRENCES|.
      DATA t63 TYPE c LENGTH 1.
      CLEAR t63.
      t63 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t63 INTO t22 RESPECTING BLANKS.
      DATA t64 TYPE c LENGTH 1.
      CLEAR t64.
      t64 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t64 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |CLIENT SPECIFIED, from 754: https://help.sap.com/doc/abapdoc|.
      t22 = t22 && |u_latest_index_htm/latest/en-US/abapselect_client_obsolete.h|.
      t22 = t22 && |tml|.
      DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t65->has = abap_true.
      t65->value = t22.
      t20 = t65.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      t20 = t66.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t67.
    DATA(t68) = abap_true.
    IF t68 = abap_true.
      DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t71.
      t70 = t71.
      DATA(t72) = t70.
      DATA(t73) = |SingleFile|.
      APPEND t73 TO t72->items.
      DATA(t74) = t70.
      DATA(t75) = |Styleguide|.
      APPEND t75 TO t74->items.
      DATA(t76) = t70.
      DATA(t77) = |Quickfix|.
      APPEND t77 TO t76->items.
      DATA(t78) = t70.
      t69 = t78.
      t67 = t69.
    ELSE.
      DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t79.
      t67 = t79.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t19 i_extended_information = t20 i_tags = t67 i_pragma = t80 i_pseudo_comment = t81 ).
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ob_st_ts_ob_stt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ob_st_ts_ob_stt.
    DATA(t1) = i_conf.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/obsolete_statement.ts:153|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ob_st_ts_ob_stt.
    DATA(t1) = i_file.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/obsolete_statement.ts:157|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_statement_node.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/obsolete_statement.ts:419|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_obslt_sttmnt_cnf( me->gt_cn_in_sr_rl_ob_st_ts_ob_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_obslt_sttmnt_cnf( me->gt_cn_in_sr_rl_ob_st_ts_ob_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_obslt_sttmnt_cnf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_ob_st_ts_ob_stt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ob_st_ts_ob_stt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1534_78add70ce415.
  ENDMETHOD.
ENDCLASS.
