* TS: src/rules/unused_variables.ts:70:1 UnusedVariables
CLASS zcl_lnt_unused_variables DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_variables_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA workarea TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_un_vr_ts_un_vrb RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_variables_conf.
    METHODS st_cn_in_sr_rl_un_vr_ts_un_vrb IMPORTING i_conf TYPE REF TO zcl_lnt_unused_variables_conf.
    METHODS in_in_sr_rl_uns_vrb_ts_uns_vrb IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_variables.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_uses IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS build_workarea IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS build_issues IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS suppressedby_pseudo IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement_index TYPE int8 i_v TYPE REF TO zcl_lnt_typed_identifier i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS build_fix IMPORTING i_v TYPE REF TO zcl_lnt_typed_identifier i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unused_variables IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_unused_variables_conf( ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |unused_variables|.
    DATA(t3) = |Unused variables|.
    DATA(t4) = |Checks for unused variables and constants|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |DATA: BEGIN OF blah1,|.
      DATA t8 TYPE c LENGTH 1.
      CLEAR t8.
      t8 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t8 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      test  TYPE string,|.
      DATA t9 TYPE c LENGTH 1.
      CLEAR t9.
      t9 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t9 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |      test2 TYPE string,|.
      DATA t10 TYPE c LENGTH 1.
      CLEAR t10.
      t10 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t7 t10 INTO t7 RESPECTING BLANKS.
      t7 = t7 && |    END OF blah1.|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t7.
      t5 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t5 = t12.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = |DATA: BEGIN OF blah2 ##NEEDED,|.
      DATA t16 TYPE c LENGTH 1.
      CLEAR t16.
      t16 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t16 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |      test  TYPE string,|.
      DATA t17 TYPE c LENGTH 1.
      CLEAR t17.
      t17 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t17 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |      test2 TYPE string,|.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t15 t18 INTO t15 RESPECTING BLANKS.
      t15 = t15 && |    END OF blah2.|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t15.
      t13 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t13 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |Skips event parameters.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t24 INTO t23 RESPECTING BLANKS.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t25 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |Note that this currently does not work if the source code us|.
      t23 = t23 && |es macros.|.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t26 INTO t23 RESPECTING BLANKS.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t27 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |Unused variables are not reported if the object contains par|.
      t23 = t23 && |ser or syntax errors.|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t28 INTO t23 RESPECTING BLANKS.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t23 t29 INTO t23 RESPECTING BLANKS.
      t23 = t23 && |Errors found in INCLUDES are reported for the main program.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t23.
      t21 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t21 = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t32.
    DATA(t33) = abap_true.
    IF t33 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t36.
      t35 = t36.
      DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t35 ).
      DATA(t38) = |Quickfix|.
      APPEND t38 TO t37->items.
      DATA(t39) = CAST zlnt_runtime_arra_8ecd6afe19e0( t35 ).
      t34 = t39.
      t32 = t34.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t40.
      t32 = t40.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA(t43) = |##NEEDED|.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      t41 = t45.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    DATA(t47) = abap_true.
    IF t47 = abap_true.
      DATA(t48) = |EC NEEDED|.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = t48.
      t46 = t49.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      t46 = t50.
    ENDIF.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t13 i_extended_information = t21 i_tags = t32 i_pragma = t41 i_pseudo_comment = t46 ).
    result = t1.

  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_un_vr_ts_un_vrb.
    DATA(t1) = CAST zcl_lnt_unused_variables_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD st_cn_in_sr_rl_un_vr_ts_un_vrb.
    DATA(t1) = CAST zcl_lnt_unused_variables_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_variables.ts:105|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD in_in_sr_rl_uns_vrb_ts_uns_vrb.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_variables.ts:112|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_variables.ts:117|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_uses.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/unused_variables.ts:165|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD build_workarea.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/unused_variables.ts:180|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD build_issues.
    DATA(t1) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_variables.ts:214|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD suppressedby_pseudo.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = i_statement_index.
    DATA(t3) = CAST zcl_lnt_typed_identifier( i_v ).
    DATA(t4) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/unused_variables.ts:265|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD find_file.
    DATA(t1) = i_filename.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_variables.ts:279|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD build_fix.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_v ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA(t3) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/unused_variables.ts:291|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unused_variables_conf( me->gt_cn_in_sr_rl_un_vr_ts_un_vrb( ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_variables_conf( me->gt_cn_in_sr_rl_un_vr_ts_un_vrb( ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_variables.ts:105|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_variables.ts:112|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1664_68592b218da9.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
