* TS: src/rules/clear_exporting_parameters.ts:26:1 ClearExportingParameters
CLASS zcl_lnt_clr_exprtng_prmtrs DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_clr_exprtng_prmtrs_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_clr_exprtng_prmtrs_cnf.
    METHODS s_c_i_s_r_cl_ex_pr_ts_cl_ex_pr IMPORTING i_conf TYPE REF TO zcl_lnt_clr_exprtng_prmtrs_cnf.
    METHODS i_i_sr_rl_cl_ex_pr_ts_cl_ex_pr IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_clr_exprtng_prmtrs.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_procedure IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_exporting_by_reference IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_references TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS collect_references IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_parameter IMPORTING i_parameter_5406 TYPE REF TO zcl_lnt_typed_identifier i_references TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS is_reference_or_assign IMPORTING i_reference TYPE REF TO zcl_lnt_ireference i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_supplied_or_requested IMPORTING i_reference TYPE REF TO zcl_lnt_ireference i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS statement_start IMPORTING i_reference TYPE REF TO zcl_lnt_ireference i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clr_exprtng_prmtrs IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_clr_exprtng_prmtrs_cnf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |clear_exporting_parameters|.
    DATA(t3) = |Clear EXPORTING parameters|.
    DATA(t4) = |Checks that EXPORTING parameters passed by reference are cle|.
    t4 = t4 && |ared or assigned before they are read|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CLASS lcl DEFINITION.|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  PUBLIC SECTION.|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    METHODS foo EXPORTING ev_result TYPE i.|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDCLASS.|.
      DATA t11 TYPE c LENGTH 1.
      CLEAR t11.
      t11 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t11 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |CLASS lcl IMPLEMENTATION.|.
      DATA t12 TYPE c LENGTH 1.
      CLEAR t12.
      t12 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t12 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  METHOD foo.|.
      DATA t13 TYPE c LENGTH 1.
      CLEAR t13.
      t13 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t13 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    ev_result = ev_result + 1.|.
      DATA t14 TYPE c LENGTH 1.
      CLEAR t14.
      t14 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t14 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |  ENDMETHOD.|.
      DATA t15 TYPE c LENGTH 1.
      CLEAR t15.
      t15 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t15 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |ENDCLASS.|.
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
      DATA(t20) = |CLASS lcl DEFINITION.|.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t21 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |  PUBLIC SECTION.|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t22 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    METHODS foo EXPORTING ev_result TYPE i.|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t23 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |ENDCLASS.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t24 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |CLASS lcl IMPLEMENTATION.|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t25 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |  METHOD foo.|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t26 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    CLEAR ev_result.|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t27 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |    ev_result = ev_result + 1.|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t28 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |  ENDMETHOD.|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t20 t29 INTO t20 RESPECTING BLANKS.
      t20 = t20 && |ENDCLASS.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t20.
      t18 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t18 = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = abap_true.
    IF t33 = abap_true.
      DATA(t34) = |An EXPORTING parameter passed by reference behaves like a CH|.
      t34 = t34 && |ANGING parameter: it is not|.
      DATA t35 TYPE c LENGTH 1.
      CLEAR t35.
      t35 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t35 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |initialized when the method is called, so it can still conta|.
      t34 = t34 && |in a value supplied by the caller. Clear or overwrite it|.
      DATA t36 TYPE c LENGTH 1.
      CLEAR t36.
      t36 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t36 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |before reading it, so a leftover value is not accidentally u|.
      t34 = t34 && |sed.|.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t37 INTO t34 RESPECTING BLANKS.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t38 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t34 = t34 && |nABAP.md#clear-or-overwrite-exporting-reference-parameters|.
      DATA t39 TYPE c LENGTH 1.
      CLEAR t39.
      t39 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t39 INTO t34 RESPECTING BLANKS.
      DATA t40 TYPE c LENGTH 1.
      CLEAR t40.
      t40 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t40 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t34 = t34 && |-US/abenref_transf_output_param_guidl.html|.
      DATA t41 TYPE c LENGTH 1.
      CLEAR t41.
      t41 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t41 INTO t34 RESPECTING BLANKS.
      DATA t42 TYPE c LENGTH 1.
      CLEAR t42.
      t42 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t42 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |Note: EXPORTING parameters passed by VALUE are always initia|.
      t34 = t34 && |lized and are therefore not reported.|.
      DATA t43 TYPE c LENGTH 1.
      CLEAR t43.
      t43 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t43 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |Reading and writing the parameter in the same statement (e.g|.
      t34 = t34 && |. "ev_result = ev_result + 1") is reported,|.
      DATA t44 TYPE c LENGTH 1.
      CLEAR t44.
      t44 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t44 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |as the source is evaluated before the parameter is assigned.|.
      DATA t45 TYPE c LENGTH 1.
      CLEAR t45.
      t45 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t45 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |Objects containing parser or syntax errors are not reported.|.
      DATA t46 TYPE c LENGTH 1.
      CLEAR t46.
      t46 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t46 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |"IS SUPPLIED"/"IS REQUESTED" checks are not considered reads|.
      t34 = t34 && |, and "GET REFERENCE OF" plus|.
      DATA t47 TYPE c LENGTH 1.
      CLEAR t47.
      t47 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t47 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |"ASSIGN ... TO <fs>" are considered writes, as the value can|.
      t34 = t34 && | be written via the reference.|.
      DATA t48 TYPE c LENGTH 1.
      CLEAR t48.
      t48 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t48 INTO t34 RESPECTING BLANKS.
      DATA t49 TYPE c LENGTH 1.
      CLEAR t49.
      t49 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t49 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |Class and interface method implementations and function modu|.
      t34 = t34 && |les are checked.|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t34.
      t32 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      t32 = t51.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t52.
    DATA(t53) = abap_true.
    IF t53 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t56.
      t55 = t56.
      DATA(t57) = CAST zlnt_runtime_arra_8ecd6afe19e0( t55 ).
      DATA(t58) = |Styleguide|.
      APPEND t58 TO t57->items.
      DATA(t59) = CAST zlnt_runtime_arra_8ecd6afe19e0( t55 ).
      t54 = t59.
      t52 = t54.
    ELSE.
      DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t60.
      t52 = t60.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t62.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t18 i_extended_information = t32 i_tags = t52 i_pragma = t61 i_pseudo_comment = t62 ).
    result = t1.

  ENDMETHOD.
  METHOD g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    DATA(t1) = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    DATA(t1) = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/clear_exporting_parameters.ts:78|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD i_i_sr_rl_cl_ex_pr_ts_cl_ex_pr.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/clear_exporting_parameters.ts:85|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/clear_exporting_parameters.ts:90|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD traverse.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/clear_exporting_parameters.ts:113|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD check_procedure.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/clear_exporting_parameters.ts:123|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD find_exporting_by_reference.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_references ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/clear_exporting_parameters.ts:138|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD collect_references.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/clear_exporting_parameters.ts:166|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD check_parameter.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_parameter_5406 ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_references ).
    DATA(t3) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/clear_exporting_parameters.ts:175|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD is_reference_or_assign.
    DATA(t1) = CAST zcl_lnt_ireference( i_reference ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/clear_exporting_parameters.ts:222|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD is_supplied_or_requested.
    DATA(t1) = CAST zcl_lnt_ireference( i_reference ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/clear_exporting_parameters.ts:237|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD statement_start.
    DATA(t1) = CAST zcl_lnt_ireference( i_reference ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/clear_exporting_parameters.ts:264|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( me->g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( me->g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/clear_exporting_parameters.ts:78|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/clear_exporting_parameters.ts:85|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1355_92f531eaac66.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config(  i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize(  i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value(  ).
  ENDMETHOD.
ENDCLASS.
