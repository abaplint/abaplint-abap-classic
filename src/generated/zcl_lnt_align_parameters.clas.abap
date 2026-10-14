* TS: src/rules/align_parameters.ts:27:1 AlignParameters
CLASS zcl_lnt_align_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_align_parameters_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_al_pr_ts_al_prm RETURNING VALUE(result) TYPE REF TO zcl_lnt_align_parameters_conf.
    METHODS st_cn_in_sr_rl_al_pr_ts_al_prm IMPORTING i_conf TYPE REF TO zcl_lnt_align_parameters_conf.
    METHODS rn_pr_in_sr_rl_al_pr_ts_al_prm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_candidate IMPORTING i_candidate TYPE REF TO zcl_lnt_icandidate i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS new_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS value_body_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS raise_and_create_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS method_call_param_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS function_parameter_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_align_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_align_parameters_conf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |align_parameters|.
    DATA(t3) = |Align Parameters|.
    DATA(t4) = |Checks for vertially aligned parameters|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CALL FUNCTION 'FOOBAR'|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  EXPORTING|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    foo = 2|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    parameter = 3.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |foobar( moo = 1|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  param = 1 ).|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |foo = VALUE #(|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t16 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    foo = bar|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t17 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |        moo = 2 ).|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t7.
      t5 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t5 = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = |CALL FUNCTION 'FOOBAR'|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t23 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  EXPORTING|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t24 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |    foo       = 2|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t25 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |    parameter = 3.|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t26 INTO t22 RESPECTING BLANKS.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t27 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |foobar( moo   = 1|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t28 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |        param = 1 ).|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t29 INTO t22 RESPECTING BLANKS.
      DATA t30 TYPE c LENGTH 1.
      CLEAR t30.
      t30 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t30 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |foo = VALUE #(|.
      DATA t31 TYPE c LENGTH 1.
      CLEAR t31.
      t31 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t31 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |    foo = bar|.
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      t32 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t32 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |    moo = 2 ).|.
      DATA t33 TYPE c LENGTH 1.
      CLEAR t33.
      t33 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t33 INTO t22 RESPECTING BLANKS.
      DATA t34 TYPE c LENGTH 1.
      CLEAR t34.
      t34 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t34 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |DATA(sdf) = VALUE type(|.
      DATA t35 TYPE c LENGTH 1.
      CLEAR t35.
      t35 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t35 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  common_val     = 2|.
      DATA t36 TYPE c LENGTH 1.
      CLEAR t36.
      t36 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t36 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  another_common = 5|.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t37 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |  ( row_value = 4|.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t22 t38 INTO t22 RESPECTING BLANKS.
      t22 = t22 && |    value_foo = 5 ) ).|.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t22.
      t20 = t39.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      t20 = t40.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA(t43) = |Checks:|.
      DATA t44 TYPE c LENGTH 1.
      CLEAR t44.
      t44 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t44 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |* function module calls|.
      DATA t45 TYPE c LENGTH 1.
      CLEAR t45.
      t45 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t45 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |* method calls|.
      DATA t46 TYPE c LENGTH 1.
      CLEAR t46.
      t46 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t46 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |* VALUE constructors|.
      DATA t47 TYPE c LENGTH 1.
      CLEAR t47.
      t47 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t47 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |* NEW constructors|.
      DATA t48 TYPE c LENGTH 1.
      CLEAR t48.
      t48 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t48 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |* RAISE EXCEPTION statements|.
      DATA t49 TYPE c LENGTH 1.
      CLEAR t49.
      t49 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t49 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |* CREATE OBJECT statements|.
      DATA t50 TYPE c LENGTH 1.
      CLEAR t50.
      t50 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t50 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |* RAISE EVENT statements|.
      DATA t51 TYPE c LENGTH 1.
      CLEAR t51.
      t51 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t51 INTO t43 RESPECTING BLANKS.
      DATA t52 TYPE c LENGTH 1.
      CLEAR t52.
      t52 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t52 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t43 = t43 && |nABAP.md#align-parameters|.
      DATA t53 TYPE c LENGTH 1.
      CLEAR t53.
      t53 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t53 INTO t43 RESPECTING BLANKS.
      DATA t54 TYPE c LENGTH 1.
      CLEAR t54.
      t54 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t54 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |Does not take effect on non functional method calls, use htt|.
      t43 = t43 && |ps://rules.abaplint.org/functional_writing/|.
      DATA t55 TYPE c LENGTH 1.
      CLEAR t55.
      t55 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t55 INTO t43 RESPECTING BLANKS.
      DATA t56 TYPE c LENGTH 1.
      CLEAR t56.
      t56 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t56 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |If parameters are on the same row, no issues are reported, s|.
      t43 = t43 && |ee|.
      DATA t57 TYPE c LENGTH 1.
      CLEAR t57.
      t57 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t43 t57 INTO t43 RESPECTING BLANKS.
      t43 = t43 && |https://rules.abaplint.org/max_one_method_parameter_per_line|.
      t43 = t43 && |/ for splitting parameters to lines|.
      DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t58->has = abap_true.
      t58->value = t43.
      t41 = t58.
    ELSE.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      t41 = t59.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t60.
    DATA(t61) = abap_true.
    IF t61 = abap_true.
      DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t64.
      t63 = t64.
      DATA(t65) = CAST zlnt_runtime_arra_8ecd6afe19e0( t63 ).
      DATA(t66) = |SingleFile|.
      APPEND t66 TO t65->items.
      DATA(t67) = CAST zlnt_runtime_arra_8ecd6afe19e0( t63 ).
      DATA(t68) = |Whitespace|.
      APPEND t68 TO t67->items.
      DATA(t69) = CAST zlnt_runtime_arra_8ecd6afe19e0( t63 ).
      DATA(t70) = |Styleguide|.
      APPEND t70 TO t69->items.
      DATA(t71) = CAST zlnt_runtime_arra_8ecd6afe19e0( t63 ).
      DATA(t72) = |Quickfix|.
      APPEND t72 TO t71->items.
      DATA(t73) = CAST zlnt_runtime_arra_8ecd6afe19e0( t63 ).
      t62 = t73.
      t60 = t62.
    ELSE.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t74.
      t60 = t74.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t76.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t20 i_extended_information = t41 i_tags = t60 i_pragma = t75 i_pseudo_comment = t76 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_al_pr_ts_al_prm.
    DATA(t1) = CAST zcl_lnt_align_parameters_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_al_pr_ts_al_prm.
    DATA(t1) = CAST zcl_lnt_align_parameters_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_parameters.ts:86|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD rn_pr_in_sr_rl_al_pr_ts_al_prm.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_parameters.ts:90|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_candidate.
    DATA(t1) = CAST zcl_lnt_icandidate( i_candidate ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/align_parameters.ts:115|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD new_candidates.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_parameters.ts:149|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD value_body_candidates.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_parameters.ts:196|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD raise_and_create_candidates.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_parameters.ts:246|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD method_call_param_candidates.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_parameters.ts:288|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD function_parameter_candidates.
    DATA(t1) = CAST zcl_lnt_structure_node( i_stru ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/align_parameters.ts:369|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_align_parameters_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_al_pr_ts_al_prm( i_conf = t1 ).

  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_al_pr_ts_al_prm( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1295_d9f253fcf5fd.
  ENDMETHOD.
ENDCLASS.
