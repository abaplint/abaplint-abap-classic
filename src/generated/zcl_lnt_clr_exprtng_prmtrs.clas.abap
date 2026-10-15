* TS: src/rules/clear_exporting_parameters.ts:26:1 ClearExportingParameters
CLASS zcl_lnt_clr_exprtng_prmtrs DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clr_exprtng_prmtrs IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_clr_exprtng_prmtrs_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |clear_exporting_parameters|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Clear EXPORTING parameters|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that EXPORTING parameters passed by reference are cle|.
    t7 = t7 && |ared or assigned before they are read|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |An EXPORTING parameter passed by reference behaves like a CH|.
      t11 = t11 && |ANGING parameter: it is not\ninitialized when the method is c|.
      t11 = t11 && |alled, so it can still contain a value supplied by the calle|.
      t11 = t11 && |r. Clear or overwrite it\nbefore reading it, so a leftover va|.
      t11 = t11 && |lue is not accidentally used.\n\nhttps://github.com/SAP/styleg|.
      t11 = t11 && |uides/blob/main/clean-abap/CleanABAP.md#clear-or-overwrite-e|.
      t11 = t11 && |xporting-reference-parameters\n\nhttps://help.sap.com/doc/abap|.
      t11 = t11 && |docu_latest_index_htm/latest/en-US/abenref_transf_output_par|.
      t11 = t11 && |am_guidl.html\n\nNote: EXPORTING parameters passed by VALUE ar|.
      t11 = t11 && |e always initialized and are therefore not reported.\nReading|.
      t11 = t11 && | and writing the parameter in the same statement (e.g. "ev_r|.
      t11 = t11 && |esult = ev_result + 1") is reported,\nas the source is evalua|.
      t11 = t11 && |ted before the parameter is assigned.\nObjects containing par|.
      t11 = t11 && |ser or syntax errors are not reported.\n"IS SUPPLIED"/"IS REQ|.
      t11 = t11 && |UESTED" checks are not considered reads, and "GET REFERENCE |.
      t11 = t11 && |OF" plus\n"ASSIGN ... TO <fs>" are considered writes, as the |.
      t11 = t11 && |value can be written via the reference.\n\nClass and interface|.
      t11 = t11 && | method implementations and function modules are checked.|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
      t27 = t27 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
      t27 = t27 && |  METHOD foo.\n    ev_result = ev_result + 1.\n  ENDMETHOD.\nEN|.
      t27 = t27 && |DCLASS.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
      t33 = t33 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
      t33 = t33 && |  METHOD foo.\n    CLEAR ev_result.\n    ev_result = ev_result|.
      t33 = t33 && | + 1.\n  ENDMETHOD.\nENDCLASS.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_445691f4ed04( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t14.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      t11->zlnt_view_write_s_41519ddb2572( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD i_i_sr_rl_cl_ex_pr_ts_cl_ex_pr.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_abap_object ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t1.
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_ob_interface ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t8.
      result = t8.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO object.
    t13 = t12.
    t11 ?= t13.
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t10.
    t14 = t15->parsed.
    t9 = t14.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t9->load( ).
      IF t18 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t9->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      DATA(t23) = t16.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = t22.
      t24 = t25->statements.
      t21 = t24.
      DATA t26 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t21->load( ).
        IF t28 >= lines( t21->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t21->items INDEX t28 + 1 INTO t27.
        t28 = t28 + 1.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        CLEAR t26.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t29 ?= t27.
          DATA t30 TYPE REF TO object.
          t30 = t29->as_ref( ).
          t26 ?= t30.
        ELSE.
          t26 ?= t27.
        ENDIF.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zif_lnt_statement.
        DATA(t33) = t26.
        t32 = t33->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_unknown ).
        IF t31 = abap_true.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t34.
          result = t34.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t36 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t37 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t38) = me->reg.
    DATA t39 TYPE REF TO zcl_lnt_abap_object.
    DATA(t40) = t1.
    DATA t41 TYPE REF TO object.
    t41 = t40.
    t39 ?= t41.
    t37 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t38 i_object_19cd = t39 ).
    t36 = t37->run( ).
    t35 = t36.
    DATA t42 TYPE abap_bool.
    DATA t43 TYPE i.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t45) = t35.
    t44 = t45->zlnt_view_read_sr_bd188c319c03( ).
    t44->load( ).
    t43 = lines( t44->items ).
    DATA(t46) = 0.
    t42 = xsdbool( t43 > t46 ).
    IF t42 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t47.
      result = t47.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t51 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t52) = t35.
    t51 = t52->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t50 = t51->get_top( ).
    DATA t53 TYPE REF TO zcl_lnt_abap_object.
    DATA(t54) = t1.
    DATA t55 TYPE REF TO object.
    t55 = t54.
    t53 ?= t55.
    DATA(t56) = t48.
    me->traverse( i_node = t50 i_obj_1ed0 = t53 i_issues = t56 ).
    DATA(t57) = t48.
    result = t57.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_issues.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t8) = t1.
    t7 = t8->get_identifier( ).
    t6 = t7->stype.
    DATA(t9) = |method|.
    t5 = xsdbool( t6 = t9 ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t13) = t1.
      t12 = t13->get_identifier( ).
      t11 = t12->stype.
      DATA(t14) = |function|.
      t10 = xsdbool( t11 = t14 ).
      t4 = t10.
    ENDIF.
    IF t4 = abap_true.
      DATA(t15) = t1.
      DATA(t16) = t2.
      DATA(t17) = t3.
      me->check_procedure( i_node = t15 i_obj_1ed0 = t16 i_issues = t17 ).
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = t1.
    t18 = t19->get_children( ).
    DATA t20 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    DATA(t22) = VALUE i( ).
    DO.
      t18->load( ).
      IF t22 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t18->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA(t25) = t20.
      DATA(t26) = t2.
      DATA(t27) = t3.
      me->traverse( i_node = t25 i_obj_1ed0 = t26 i_issues = t27 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_procedure.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_issues.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = me->collect_references( i_node = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t1.
    DATA(t10) = t4.
    t8 = me->find_exporting_by_reference( i_node = t9 i_references = t10 ).
    t7 = t8.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE i.
    DATA(t13) = t7.
    t13->load( ).
    t12 = lines( t13->items ).
    DATA(t14) = 0.
    t11 = xsdbool( t12 = t14 ).
    IF t11 = abap_true.
      RETURN.
    ENDIF.
    DATA(t15) = t7.
    DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t15->load( ).
      IF t18 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t15->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_issue.
      DATA t22 TYPE REF TO zcl_lnt_issue.
      DATA(t23) = t16.
      DATA(t24) = t4.
      DATA(t25) = t2.
      t22 = me->check_parameter( i_parameter_5406 = t23 i_references = t24 i_obj_1ed0 = t25 ).
      t21 = t22.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_issue.
      DATA(t28) = t21.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      t29 = t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t27.
      IF t33 IS INITIAL.
        t32 = abap_true.
      ENDIF.
      t31 = xsdbool( t32 = abap_false ).
      t26 = t31.
      IF t26 = abap_true.
        DATA(t34) = t3.
        DATA t35 TYPE REF TO zcl_lnt_issue.
        DATA(t36) = t21.
        t35 = t36.
        t34->load( ).
        APPEND t35 TO t34->items.
        t34->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_exporting_by_reference.
    DATA(t1) = i_node.
    DATA(t2) = i_references.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_set__288f5ae381ad.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_set__288f5ae381ad.
    CLEAR t6.
    DATA(t7) = NEW zlnt_runtime_set__288f5ae381ad( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t10 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t11 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t12) = t1.
    t11 = t12->get_data( ).
    t10 = t11->vars.
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t16) = t9.
    t15 = t16->keys( ).
    DATA(t17) = VALUE string( ).
    t15->dense( ).
    DATA(t18) = VALUE i( ).
    DO.
      t15->load( ).
      IF t18 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t15->items INDEX t18 + 1 INTO t17.
      IF t15->has( t18 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t18 = t18 + 1.
      DATA(t19) = t13.
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t22) = t9.
      DATA(t23) = t17.
      t21 = t22->get( p0 = t23 ).
      t20 = t21.
      t19->load( ).
      APPEND t20 TO t19->items.
      t19->save( ).
    ENDDO.
    DATA(t24) = t13.
    t8 = t24.
    t6 = t7->fromarray( p0 = t8 ).
    t5 = t6.
    DATA(t25) = t2.
    DATA t26 TYPE REF TO zcl_lnt_ireference.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    DATA(t28) = VALUE i( ).
    DO.
      t25->load( ).
      IF t28 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t25->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t33) = t26.
      t32 = t33->resolved.
      t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_typed_identifier ).
      IF t31 = abap_true.
        DATA t34 TYPE REF TO zlnt_runtime_set__288f5ae381ad.
        DATA(t35) = t5.
        DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t38) = t26.
        t37 = t38->resolved.
        t36 ?= t37.
        t34 = t35->add( p0 = t36 ).
      ENDIF.
    ENDDO.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t40) = t5.
    t39 = t40->values( ).
    DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    DATA(t43) = VALUE i( ).
    DO.
      t39->load( ).
      IF t43 >= lines( t39->items ).
        EXIT.
      ENDIF.
      CLEAR t42.
      READ TABLE t39->items INDEX t43 + 1 INTO t42.
      t43 = t43 + 1.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t41.
      IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t44 ?= t42.
        DATA t45 TYPE REF TO object.
        t45 = t44->as_ref( ).
        t41 ?= t45.
      ELSE.
        t41 ?= t42.
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t49) = t41.
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t51) = t48.
      t50 = t51->meta.
      t47 = t50.
      t46 = t47.
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      DATA(t55) = t46.
      DATA(t56) = |exporting|.
      t54 = t55->includes( p0 = t56 ).
      t53 = t54.
      IF t54 = abap_false.
        DATA t57 TYPE abap_bool.
        DATA(t58) = t46.
        DATA(t59) = |function_module_exporting|.
        t57 = t58->includes( p0 = t59 ).
        t53 = t57.
      ENDIF.
      t52 = t53.
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE abap_bool.
      DATA(t62) = t52.
      DATA(t63) = abap_false.
      t61 = xsdbool( t62 = t63 ).
      t60 = t61.
      IF t61 = abap_false.
        DATA t64 TYPE abap_bool.
        DATA t65 TYPE abap_bool.
        DATA(t66) = t46.
        DATA(t67) = |pass_by_value|.
        t65 = t66->includes( p0 = t67 ).
        DATA(t68) = abap_true.
        t64 = xsdbool( t65 = t68 ).
        t60 = t64.
      ENDIF.
      IF t60 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t69) = VALUE abap_bool( ).
        DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t73) = me->conf.
        t72 = t73->zlnt_view_read_sr_445691f4ed04( ).
        t71 = t72.
        DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t74.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t71.
        IF t76 IS INITIAL.
          t75 = abap_true.
        ENDIF.
        IF t75 = abap_true.
          DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t77.
          t74 = t77.
        ELSE.
          DATA(t78) = VALUE abap_bool( ).
          DATA t79 TYPE abap_bool.
          DATA(t80) = abap_false.
          t79 = t80.
          DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t82) = t71.
          t81 = t82.
          DATA(t83) = VALUE string( ).
          t81->dense( ).
          DATA(t84) = VALUE i( ).
          DO.
            t81->load( ).
            IF t84 >= lines( t81->items ).
              EXIT.
            ENDIF.
            CLEAR t83.
            READ TABLE t81->items INDEX t84 + 1 INTO t83.
            IF t81->has( t84 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t84 = t84 + 1.
            DATA(t85) = VALUE abap_bool( ).
            DATA t86 TYPE string.
            DATA(t87) = t83.
            DATA(t88) = strlen( t87 ).
            t86 = t87.
            IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t86 TO UPPER CASE.
            ELSE.
              t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
            ENDIF.
            DATA(t89) = VALUE string( ).
            DATA(t90) = VALUE string( ).
            DATA t91 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t92) = t41.
            t91 = t92.
            DATA(t93) = VALUE string( ).
            DATA t94 TYPE string.
            DATA t95 TYPE string.
            DATA t96 TYPE REF TO zcl_lnt_abstract_token.
            DATA t97 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t98) = t91.
            t97 = t98->token.
            t96 = t97.
            DATA t99 TYPE string.
            DATA(t100) = t96.
            t99 = t100->str.
            t95 = t99.
            t94 = t95.
            DATA(t101) = VALUE abap_bool( ).
            DATA(t102) = VALUE string( ).
            DATA(t103) = t94.
            DATA(t104) = 0.
            DATA(t105) = 1.
            DATA(t106) = strlen( t103 ).
            IF t104 < 0.
              t104 = t104 + t106.
              IF t104 < 0.
                t104 = 0.
              ENDIF.
            ENDIF.
            IF t104 > t106 OR t105 <= 0.
              CLEAR t102.
            ELSE.
              IF t105 > t106 - t104.
                t105 = t106 - t104.
              ENDIF.
              t102 = t103+t104(t105).
            ENDIF.
            DATA(t107) = |!|.
            t101 = xsdbool( t102 = t107 ).
            IF t101 = abap_true.
              DATA(t108) = VALUE string( ).
              DATA t109 TYPE string.
              DATA(t110) = t94.
              t109 = t110.
              DATA(t111) = VALUE string( ).
              DATA(t112) = t109.
              DATA(t113) = 1.
              DATA t114 TYPE i.
              DATA(t115) = t109.
              DATA(t116) = strlen( t115 ).
              t114 = t116.
              DATA(t117) = strlen( t112 ).
              IF t113 < 0.
                t113 = t113 + t117.
                IF t113 < 0.
                  t113 = 0.
                ENDIF.
              ENDIF.
              IF t113 > t117 OR t114 <= 0.
                CLEAR t111.
              ELSE.
                IF t114 > t117 - t113.
                  t114 = t117 - t113.
                ENDIF.
                t111 = t112+t113(t114).
              ENDIF.
              t108 = t111.
              t94 = t108.
            ENDIF.
            DATA(t118) = t94.
            t93 = t118.
            t90 = t93.
            DATA(t119) = strlen( t90 ).
            t89 = t90.
            IF t89 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t89 TO UPPER CASE.
            ELSE.
              t89 = zlnt_runtime_uppe_91169605024d=>full( t89 ).
            ENDIF.
            t85 = xsdbool( t86 = t89 ).
            IF t85 = abap_true.
              DATA(t120) = abap_true.
              t79 = t120.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t121) = t79.
          t78 = t121.
          DATA(t122) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t122->has = abap_true.
          t122->value = t78.
          t74 = t122.
        ENDIF.
        t70 = t74.
        IF t70 IS BOUND.
          IF t70->has = abap_true.
            t69 = xsdbool( t70->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t69 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t123 TYPE REF TO zcl_lnt_abstract_type.
      DATA t124 TYPE REF TO zcl_lnt_abstract_type.
      DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t126) = t41.
      t125 = t126.
      DATA t127 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t128) = t125.
      t127 = t128->type_cba0.
      t124 = t127.
      t123 = t124.
      DATA t129 TYPE abap_bool.
      DATA t130 TYPE abap_bool.
      DATA(t131) = t123.
      t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_void_type ).
      t129 = t130.
      IF t130 = abap_false.
        DATA t132 TYPE abap_bool.
        DATA(t133) = t123.
        t132 = xsdbool( t133 IS BOUND AND t133 IS INSTANCE OF zcl_lnt_unknown_type ).
        t129 = t132.
      ENDIF.
      IF t129 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t134) = t3.
      DATA(t135) = t41.
      t134->load( ).
      APPEND t135 TO t134->items.
      t134->save( ).
    ENDDO.
    DATA(t136) = t3.
    result = t136.

  ENDMETHOD.

  METHOD collect_references.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t4.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t11) = t1.
    t10 = t11->get_data( ).
    t9 = t10->references.
    t7 = t8->concat( p0 = t9 ).
    t6 = t7.
    DATA(t12) = t6.
    t3 = t12.
    t2 = t3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t1.
    t13 = t14->get_children( ).
    DATA t15 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t13->load( ).
      IF t17 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t13->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA(t20) = VALUE i( ).
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t22) = t15.
      t21 = me->collect_references( i_node = t22 ).
      DATA t23 TYPE REF TO zcl_lnt_ireference.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t21->load( ).
        IF t25 >= lines( t21->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t21->items INDEX t25 + 1 INTO t24.
        t25 = t25 + 1.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        CLEAR t23.
        IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t26 ?= t24.
          DATA t27 TYPE REF TO object.
          t27 = t26->as_ref( ).
          t23 ?= t27.
        ELSE.
          t23 ?= t24.
        ENDIF.
        DATA(t28) = t2.
        DATA(t29) = t23.
        t28->load( ).
        APPEND t29 TO t28->items.
        t28->save( ).
      ENDDO.
      DATA t30 TYPE i.
      DATA(t31) = t2.
      t31->load( ).
      t30 = lines( t31->items ).
      t20 = t30.
    ENDDO.
    DATA(t32) = t2.
    result = t32.

  ENDMETHOD.

  METHOD check_parameter.
    DATA(t1) = i_parameter_5406.
    DATA(t2) = i_references.
    DATA(t3) = i_obj_1ed0.
    DATA t4 TYPE REF TO zcl_lnt_ireference.
    DATA t5 TYPE REF TO zcl_lnt_ireference.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    DATA t7 TYPE REF TO zcl_lnt_ireference.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = t2.
    DATA t9 TYPE REF TO zcl_lnt_ireference.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t19) = t9.
      t18 = t19->resolved.
      t17 = t18.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t20 = t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t17.
      IF t23 IS INITIAL.
        t22 = abap_true.
      ENDIF.
      t16 = t22.
      t15 = t16.
      IF t16 = abap_false.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = VALUE abap_bool( ).
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t27) = t1.
        t26 = t27.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t31) = t9.
        t30 = t31->resolved.
        t29 = t30.
        t28 = t29.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE REF TO zcl_lnt_position.
        DATA t35 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t36) = t28.
        t35 = t36.
        DATA t37 TYPE REF TO zcl_lnt_position.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t40) = t35.
        t39 = t40->token.
        t38 = t39.
        DATA t41 TYPE REF TO zcl_lnt_position.
        DATA(t42) = t38.
        t41 = t42->start.
        t37 = t41.
        t34 = t37.
        DATA t43 TYPE REF TO zcl_lnt_position.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t46) = t26.
        t45 = t46->token.
        t44 = t45.
        DATA t47 TYPE REF TO zcl_lnt_position.
        DATA(t48) = t44.
        t47 = t48->start.
        t43 = t47.
        t33 = t34->equals( i_p = t43 ).
        t32 = t33.
        IF t33 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE string.
          DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t52) = t28.
          t51 = t52.
          DATA t53 TYPE string.
          DATA(t54) = t51.
          t53 = t54->filename.
          t50 = t53.
          DATA t55 TYPE string.
          DATA(t56) = t26.
          t55 = t56->filename.
          t49 = xsdbool( t50 = t55 ).
          t32 = t49.
        ENDIF.
        t25 = t32.
        DATA(t57) = abap_false.
        t24 = xsdbool( t25 = t57 ).
        t15 = t24.
      ENDIF.
      t14 = t15.
      IF t15 = abap_false.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = VALUE string( ).
        DATA(t60) = VALUE string( ).
        DATA t61 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t62) = t1.
        t61 = t62.
        DATA(t63) = VALUE string( ).
        DATA t64 TYPE string.
        DATA t65 TYPE string.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t68) = t61.
        t67 = t68->token.
        t66 = t67.
        DATA t69 TYPE string.
        DATA(t70) = t66.
        t69 = t70->str.
        t65 = t69.
        t64 = t65.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE string( ).
        DATA(t73) = t64.
        DATA(t74) = 0.
        DATA(t75) = 1.
        DATA(t76) = strlen( t73 ).
        IF t74 < 0.
          t74 = t74 + t76.
          IF t74 < 0.
            t74 = 0.
          ENDIF.
        ENDIF.
        IF t74 > t76 OR t75 <= 0.
          CLEAR t72.
        ELSE.
          IF t75 > t76 - t74.
            t75 = t76 - t74.
          ENDIF.
          t72 = t73+t74(t75).
        ENDIF.
        DATA(t77) = |!|.
        t71 = xsdbool( t72 = t77 ).
        IF t71 = abap_true.
          DATA(t78) = VALUE string( ).
          DATA t79 TYPE string.
          DATA(t80) = t64.
          t79 = t80.
          DATA(t81) = VALUE string( ).
          DATA(t82) = t79.
          DATA(t83) = 1.
          DATA t84 TYPE i.
          DATA(t85) = t79.
          DATA(t86) = strlen( t85 ).
          t84 = t86.
          DATA(t87) = strlen( t82 ).
          IF t83 < 0.
            t83 = t83 + t87.
            IF t83 < 0.
              t83 = 0.
            ENDIF.
          ENDIF.
          IF t83 > t87 OR t84 <= 0.
            CLEAR t81.
          ELSE.
            IF t84 > t87 - t83.
              t84 = t87 - t83.
            ENDIF.
            t81 = t82+t83(t84).
          ENDIF.
          t78 = t81.
          t64 = t78.
        ENDIF.
        DATA(t88) = t64.
        t63 = t88.
        t60 = t63.
        DATA(t89) = strlen( t60 ).
        t59 = t60.
        IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t59 TO UPPER CASE.
        ELSE.
          t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
        ENDIF.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t93 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t95) = t9.
        t94 = t95->resolved.
        t93 = t94.
        t92 = t93.
        DATA(t96) = VALUE string( ).
        DATA t97 TYPE string.
        DATA t98 TYPE string.
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t101) = t92.
        t100 = t101->token.
        t99 = t100.
        DATA t102 TYPE string.
        DATA(t103) = t99.
        t102 = t103->str.
        t98 = t102.
        t97 = t98.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = t97.
        DATA(t107) = 0.
        DATA(t108) = 1.
        DATA(t109) = strlen( t106 ).
        IF t107 < 0.
          t107 = t107 + t109.
          IF t107 < 0.
            t107 = 0.
          ENDIF.
        ENDIF.
        IF t107 > t109 OR t108 <= 0.
          CLEAR t105.
        ELSE.
          IF t108 > t109 - t107.
            t108 = t109 - t107.
          ENDIF.
          t105 = t106+t107(t108).
        ENDIF.
        DATA(t110) = |!|.
        t104 = xsdbool( t105 = t110 ).
        IF t104 = abap_true.
          DATA(t111) = VALUE string( ).
          DATA t112 TYPE string.
          DATA(t113) = t97.
          t112 = t113.
          DATA(t114) = VALUE string( ).
          DATA(t115) = t112.
          DATA(t116) = 1.
          DATA t117 TYPE i.
          DATA(t118) = t112.
          DATA(t119) = strlen( t118 ).
          t117 = t119.
          DATA(t120) = strlen( t115 ).
          IF t116 < 0.
            t116 = t116 + t120.
            IF t116 < 0.
              t116 = 0.
            ENDIF.
          ENDIF.
          IF t116 > t120 OR t117 <= 0.
            CLEAR t114.
          ELSE.
            IF t117 > t120 - t116.
              t117 = t120 - t116.
            ENDIF.
            t114 = t115+t116(t117).
          ENDIF.
          t111 = t114.
          t97 = t111.
        ENDIF.
        DATA(t121) = t97.
        t96 = t121.
        t91 = t96.
        DATA(t122) = strlen( t91 ).
        t90 = t91.
        IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t90 TO UPPER CASE.
        ELSE.
          t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
        ENDIF.
        t58 = xsdbool( t59 <> t90 ).
        t14 = t58.
      ENDIF.
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t123 TYPE REF TO zcl_lnt_position.
      DATA t124 TYPE REF TO zcl_lnt_position.
      DATA t125 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t126 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t127) = t9.
      t126 = t127->position_7b94.
      t125 = t126.
      DATA t128 TYPE REF TO zcl_lnt_position.
      DATA t129 TYPE REF TO zcl_lnt_abstract_token.
      DATA t130 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t131) = t125.
      t130 = t131->token.
      t129 = t130.
      DATA t132 TYPE REF TO zcl_lnt_position.
      DATA(t133) = t129.
      t132 = t133->start.
      t128 = t132.
      t124 = t128.
      t123 = t124.
      DATA t134 TYPE abap_bool.
      DATA t135 TYPE string.
      DATA(t136) = t9.
      t135 = t136->reference_type.
      DATA(t137) = |Read From|.
      t134 = xsdbool( t135 = t137 ).
      IF t134 = abap_true.
        DATA t138 TYPE abap_bool.
        DATA(t139) = t9.
        DATA(t140) = t3.
        t138 = me->is_supplied_or_requested( i_reference = t139 i_obj_1ed0 = t140 ).
        IF t138 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t141 TYPE abap_bool.
        DATA(t142) = t9.
        DATA(t143) = t3.
        t141 = me->is_reference_or_assign( i_reference = t142 i_obj_1ed0 = t143 ).
        IF t141 = abap_true.
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = VALUE abap_bool( ).
          DATA t146 TYPE REF TO zcl_lnt_ireference.
          DATA(t147) = t6.
          t146 = t147.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          t148 = t149.
          DATA(t150) = VALUE abap_bool( ).
          DATA(t151) = t146.
          IF t151 IS INITIAL.
            t150 = abap_true.
          ENDIF.
          t145 = t150.
          t144 = t145.
          IF t145 = abap_false.
            DATA(t152) = VALUE abap_bool( ).
            DATA t153 TYPE REF TO zcl_lnt_position.
            DATA(t154) = t123.
            t153 = t154.
            DATA t155 TYPE REF TO zcl_lnt_position.
            DATA t156 TYPE REF TO zcl_lnt_position.
            DATA t157 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t159 TYPE REF TO zcl_lnt_ireference.
            DATA(t160) = t6.
            t159 = t160.
            t158 = t159->position_7b94.
            t157 = t158.
            DATA t161 TYPE REF TO zcl_lnt_position.
            DATA t162 TYPE REF TO zcl_lnt_abstract_token.
            DATA t163 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t164) = t157.
            t163 = t164->token.
            t162 = t163.
            DATA t165 TYPE REF TO zcl_lnt_position.
            DATA(t166) = t162.
            t165 = t166->start.
            t161 = t165.
            t156 = t161.
            t155 = t156.
            DATA t167 TYPE abap_bool.
            DATA t168 TYPE abap_bool.
            DATA t169 TYPE f.
            DATA(t170) = t153.
            t169 = t170->row.
            DATA t171 TYPE f.
            DATA(t172) = t155.
            t171 = t172->row.
            t168 = xsdbool( t169 < t171 ).
            t167 = t168.
            IF t168 = abap_false.
              DATA t173 TYPE abap_bool.
              DATA t174 TYPE abap_bool.
              DATA t175 TYPE f.
              DATA(t176) = t153.
              t175 = t176->row.
              DATA t177 TYPE f.
              DATA(t178) = t155.
              t177 = t178->row.
              t174 = xsdbool( t175 = t177 ).
              t173 = t174.
              IF t174 = abap_true.
                DATA t179 TYPE abap_bool.
                DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t181) = t153.
                t180 = t181->col.
                DATA t182 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t183) = t155.
                t182 = t183->col.
                t179 = zlnt_runtime_numb_290eb04a9758=>compare( left = t180 right = t182 op = `<` ).
                t173 = t179.
              ENDIF.
              t167 = t173.
            ENDIF.
            t152 = t167.
            t144 = t152.
          ENDIF.
          IF t144 = abap_true.
            DATA t184 TYPE REF TO zcl_lnt_ireference.
            CLEAR t184.
            DATA(t185) = abap_true.
            IF t185 = abap_true.
              DATA(t186) = t9.
              t184 = t186.
            ELSE.
              DATA t187 TYPE REF TO zcl_lnt_ireference.
              CLEAR t187.
              t184 = t187.
            ENDIF.
            t6 = t184.
          ENDIF.
          CONTINUE.
        ENDIF.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = VALUE abap_bool( ).
        DATA t190 TYPE REF TO zcl_lnt_ireference.
        DATA(t191) = t4.
        t190 = t191.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        t192 = t193.
        DATA(t194) = VALUE abap_bool( ).
        DATA(t195) = t190.
        IF t195 IS INITIAL.
          t194 = abap_true.
        ENDIF.
        t189 = t194.
        t188 = t189.
        IF t189 = abap_false.
          DATA(t196) = VALUE abap_bool( ).
          DATA t197 TYPE REF TO zcl_lnt_position.
          DATA(t198) = t123.
          t197 = t198.
          DATA t199 TYPE REF TO zcl_lnt_position.
          DATA t200 TYPE REF TO zcl_lnt_position.
          DATA t201 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t202 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t203 TYPE REF TO zcl_lnt_ireference.
          DATA(t204) = t4.
          t203 = t204.
          t202 = t203->position_7b94.
          t201 = t202.
          DATA t205 TYPE REF TO zcl_lnt_position.
          DATA t206 TYPE REF TO zcl_lnt_abstract_token.
          DATA t207 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t208) = t201.
          t207 = t208->token.
          t206 = t207.
          DATA t209 TYPE REF TO zcl_lnt_position.
          DATA(t210) = t206.
          t209 = t210->start.
          t205 = t209.
          t200 = t205.
          t199 = t200.
          DATA t211 TYPE abap_bool.
          DATA t212 TYPE abap_bool.
          DATA t213 TYPE f.
          DATA(t214) = t197.
          t213 = t214->row.
          DATA t215 TYPE f.
          DATA(t216) = t199.
          t215 = t216->row.
          t212 = xsdbool( t213 < t215 ).
          t211 = t212.
          IF t212 = abap_false.
            DATA t217 TYPE abap_bool.
            DATA t218 TYPE abap_bool.
            DATA t219 TYPE f.
            DATA(t220) = t197.
            t219 = t220->row.
            DATA t221 TYPE f.
            DATA(t222) = t199.
            t221 = t222->row.
            t218 = xsdbool( t219 = t221 ).
            t217 = t218.
            IF t218 = abap_true.
              DATA t223 TYPE abap_bool.
              DATA t224 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t225) = t197.
              t224 = t225->col.
              DATA t226 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t227) = t199.
              t226 = t227->col.
              t223 = zlnt_runtime_numb_290eb04a9758=>compare( left = t224 right = t226 op = `<` ).
              t217 = t223.
            ENDIF.
            t211 = t217.
          ENDIF.
          t196 = t211.
          t188 = t196.
        ENDIF.
        IF t188 = abap_true.
          DATA t228 TYPE REF TO zcl_lnt_ireference.
          CLEAR t228.
          DATA(t229) = abap_true.
          IF t229 = abap_true.
            DATA(t230) = t9.
            t228 = t230.
          ELSE.
            DATA t231 TYPE REF TO zcl_lnt_ireference.
            CLEAR t231.
            t228 = t231.
          ENDIF.
          t4 = t228.
        ENDIF.
      ELSE.
        DATA t232 TYPE abap_bool.
        DATA t233 TYPE string.
        DATA(t234) = t9.
        t233 = t234->reference_type.
        DATA(t235) = |Write To|.
        t232 = xsdbool( t233 = t235 ).
        IF t232 = abap_true.
          DATA(t236) = VALUE abap_bool( ).
          DATA(t237) = VALUE abap_bool( ).
          DATA t238 TYPE REF TO zcl_lnt_ireference.
          DATA(t239) = t6.
          t238 = t239.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          t240 = t241.
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = t238.
          IF t243 IS INITIAL.
            t242 = abap_true.
          ENDIF.
          t237 = t242.
          t236 = t237.
          IF t237 = abap_false.
            DATA(t244) = VALUE abap_bool( ).
            DATA t245 TYPE REF TO zcl_lnt_position.
            DATA(t246) = t123.
            t245 = t246.
            DATA t247 TYPE REF TO zcl_lnt_position.
            DATA t248 TYPE REF TO zcl_lnt_position.
            DATA t249 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t250 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t251 TYPE REF TO zcl_lnt_ireference.
            DATA(t252) = t6.
            t251 = t252.
            t250 = t251->position_7b94.
            t249 = t250.
            DATA t253 TYPE REF TO zcl_lnt_position.
            DATA t254 TYPE REF TO zcl_lnt_abstract_token.
            DATA t255 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t256) = t249.
            t255 = t256->token.
            t254 = t255.
            DATA t257 TYPE REF TO zcl_lnt_position.
            DATA(t258) = t254.
            t257 = t258->start.
            t253 = t257.
            t248 = t253.
            t247 = t248.
            DATA t259 TYPE abap_bool.
            DATA t260 TYPE abap_bool.
            DATA t261 TYPE f.
            DATA(t262) = t245.
            t261 = t262->row.
            DATA t263 TYPE f.
            DATA(t264) = t247.
            t263 = t264->row.
            t260 = xsdbool( t261 < t263 ).
            t259 = t260.
            IF t260 = abap_false.
              DATA t265 TYPE abap_bool.
              DATA t266 TYPE abap_bool.
              DATA t267 TYPE f.
              DATA(t268) = t245.
              t267 = t268->row.
              DATA t269 TYPE f.
              DATA(t270) = t247.
              t269 = t270->row.
              t266 = xsdbool( t267 = t269 ).
              t265 = t266.
              IF t266 = abap_true.
                DATA t271 TYPE abap_bool.
                DATA t272 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t273) = t245.
                t272 = t273->col.
                DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                DATA(t275) = t247.
                t274 = t275->col.
                t271 = zlnt_runtime_numb_290eb04a9758=>compare( left = t272 right = t274 op = `<` ).
                t265 = t271.
              ENDIF.
              t259 = t265.
            ENDIF.
            t244 = t259.
            t236 = t244.
          ENDIF.
          IF t236 = abap_true.
            DATA t276 TYPE REF TO zcl_lnt_ireference.
            CLEAR t276.
            DATA(t277) = abap_true.
            IF t277 = abap_true.
              DATA(t278) = t9.
              t276 = t278.
            ELSE.
              DATA t279 TYPE REF TO zcl_lnt_ireference.
              CLEAR t279.
              t276 = t279.
            ENDIF.
            t6 = t276.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t280) = VALUE abap_bool( ).
    DATA t281 TYPE REF TO zcl_lnt_ireference.
    DATA(t282) = t4.
    t281 = t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    t283 = t284.
    DATA(t285) = VALUE abap_bool( ).
    DATA(t286) = t281.
    IF t286 IS INITIAL.
      t285 = abap_true.
    ENDIF.
    t280 = t285.
    IF t280 = abap_true.
      DATA t287 TYPE REF TO zcl_lnt_issue.
      CLEAR t287.
      result = t287.
      RETURN.
    ENDIF.
    DATA t288 TYPE REF TO zcl_lnt_position.
    DATA t289 TYPE REF TO zcl_lnt_position.
    DATA t290 TYPE REF TO zcl_lnt_ireference.
    DATA(t291) = t4.
    t290 = t291.
    DATA(t292) = t3.
    t289 = me->statement_start( i_reference = t290 i_obj_1ed0 = t292 ).
    t288 = t289.
    DATA t293 TYPE REF TO zcl_lnt_position.
    CLEAR t293.
    DATA t294 TYPE REF TO zcl_lnt_position.
    CLEAR t294.
    DATA(t295) = VALUE abap_bool( ).
    DATA t296 TYPE REF TO zcl_lnt_ireference.
    DATA(t297) = t6.
    t296 = t297.
    DATA t298 TYPE REF TO zcl_lnt_position.
    DATA t299 TYPE REF TO zcl_lnt_position.
    CLEAR t299.
    t298 = t299.
    DATA(t300) = VALUE abap_bool( ).
    DATA(t301) = t296.
    IF t301 IS INITIAL.
      t300 = abap_true.
    ENDIF.
    t295 = t300.
    IF t295 = abap_true.
      DATA t302 TYPE REF TO zcl_lnt_position.
      CLEAR t302.
      t294 = t302.
    ELSE.
      DATA t303 TYPE REF TO zcl_lnt_position.
      DATA t304 TYPE REF TO zcl_lnt_ireference.
      DATA(t305) = t6.
      t304 = t305.
      DATA(t306) = t3.
      t303 = me->statement_start( i_reference = t304 i_obj_1ed0 = t306 ).
      t294 = t303.
    ENDIF.
    t293 = t294.
    DATA(t307) = VALUE abap_bool( ).
    DATA(t308) = VALUE abap_bool( ).
    DATA(t309) = VALUE abap_bool( ).
    DATA t310 TYPE REF TO zcl_lnt_position.
    DATA(t311) = t293.
    t310 = t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    t312 = t313.
    DATA(t314) = VALUE abap_bool( ).
    DATA(t315) = VALUE abap_bool( ).
    DATA(t316) = t310.
    IF t316 IS INITIAL.
      t315 = abap_true.
    ENDIF.
    t314 = xsdbool( t315 = abap_false ).
    t309 = t314.
    t308 = t309.
    IF t309 = abap_true.
      DATA(t317) = VALUE abap_bool( ).
      DATA t318 TYPE REF TO zcl_lnt_position.
      DATA(t319) = t288.
      t318 = t319.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t321.
      t320 = t321.
      DATA(t322) = VALUE abap_bool( ).
      DATA(t323) = VALUE abap_bool( ).
      DATA(t324) = t318.
      IF t324 IS INITIAL.
        t323 = abap_true.
      ENDIF.
      t322 = xsdbool( t323 = abap_false ).
      t317 = t322.
      t308 = t317.
    ENDIF.
    t307 = t308.
    IF t308 = abap_true.
      DATA(t325) = VALUE abap_bool( ).
      DATA t326 TYPE REF TO zcl_lnt_position.
      DATA t327 TYPE REF TO zcl_lnt_position.
      DATA(t328) = t293.
      t327 = t328.
      t326 = t327.
      DATA t329 TYPE REF TO zcl_lnt_position.
      DATA t330 TYPE REF TO zcl_lnt_position.
      DATA(t331) = t288.
      t330 = t331.
      t329 = t330.
      DATA t332 TYPE abap_bool.
      DATA t333 TYPE abap_bool.
      DATA t334 TYPE f.
      DATA(t335) = t326.
      t334 = t335->row.
      DATA t336 TYPE f.
      DATA(t337) = t329.
      t336 = t337->row.
      t333 = xsdbool( t334 < t336 ).
      t332 = t333.
      IF t333 = abap_false.
        DATA t338 TYPE abap_bool.
        DATA t339 TYPE abap_bool.
        DATA t340 TYPE f.
        DATA(t341) = t326.
        t340 = t341->row.
        DATA t342 TYPE f.
        DATA(t343) = t329.
        t342 = t343->row.
        t339 = xsdbool( t340 = t342 ).
        t338 = t339.
        IF t339 = abap_true.
          DATA t344 TYPE abap_bool.
          DATA t345 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t346) = t326.
          t345 = t346->col.
          DATA t347 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t348) = t329.
          t347 = t348->col.
          t344 = zlnt_runtime_numb_290eb04a9758=>compare( left = t345 right = t347 op = `<` ).
          t338 = t344.
        ENDIF.
        t332 = t338.
      ENDIF.
      t325 = t332.
      t307 = t325.
    ENDIF.
    IF t307 = abap_true.
      DATA t349 TYPE REF TO zcl_lnt_issue.
      CLEAR t349.
      result = t349.
      RETURN.
    ENDIF.
    DATA(t350) = VALUE string( ).
    DATA(t351) = VALUE string( ).
    DATA(t352) = VALUE string( ).
    DATA(t353) = |EXPORTING parameter "|.
    DATA(t354) = VALUE string( ).
    DATA(t355) = VALUE string( ).
    DATA t356 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t357) = t1.
    t356 = t357.
    DATA(t358) = VALUE string( ).
    DATA t359 TYPE string.
    DATA t360 TYPE string.
    DATA t361 TYPE REF TO zcl_lnt_abstract_token.
    DATA t362 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t363) = t356.
    t362 = t363->token.
    t361 = t362.
    DATA t364 TYPE string.
    DATA(t365) = t361.
    t364 = t365->str.
    t360 = t364.
    t359 = t360.
    DATA(t366) = VALUE abap_bool( ).
    DATA(t367) = VALUE string( ).
    DATA(t368) = t359.
    DATA(t369) = 0.
    DATA(t370) = 1.
    DATA(t371) = strlen( t368 ).
    IF t369 < 0.
      t369 = t369 + t371.
      IF t369 < 0.
        t369 = 0.
      ENDIF.
    ENDIF.
    IF t369 > t371 OR t370 <= 0.
      CLEAR t367.
    ELSE.
      IF t370 > t371 - t369.
        t370 = t371 - t369.
      ENDIF.
      t367 = t368+t369(t370).
    ENDIF.
    DATA(t372) = |!|.
    t366 = xsdbool( t367 = t372 ).
    IF t366 = abap_true.
      DATA(t373) = VALUE string( ).
      DATA t374 TYPE string.
      DATA(t375) = t359.
      t374 = t375.
      DATA(t376) = VALUE string( ).
      DATA(t377) = t374.
      DATA(t378) = 1.
      DATA t379 TYPE i.
      DATA(t380) = t374.
      DATA(t381) = strlen( t380 ).
      t379 = t381.
      DATA(t382) = strlen( t377 ).
      IF t378 < 0.
        t378 = t378 + t382.
        IF t378 < 0.
          t378 = 0.
        ENDIF.
      ENDIF.
      IF t378 > t382 OR t379 <= 0.
        CLEAR t376.
      ELSE.
        IF t379 > t382 - t378.
          t379 = t382 - t378.
        ENDIF.
        t376 = t377+t378(t379).
      ENDIF.
      t373 = t376.
      t359 = t373.
    ENDIF.
    DATA(t383) = t359.
    t358 = t383.
    t355 = t358.
    DATA(t384) = strlen( t355 ).
    t354 = t355.
    TRANSLATE t354 TO LOWER CASE.
    DATA(t385) = strlen( t353 ).
    t352 = |{ t353 }{ t354 }|.
    DATA(t386) = |" read before it is cleared or assigned|.
    DATA(t387) = strlen( t352 ).
    t351 = |{ t352 }{ t386 }|.
    t350 = t351.
    DATA t388 TYPE REF TO zcl_lnt_issue.
    CLEAR t388.
    DATA(t389) = abap_true.
    IF t389 = abap_true.
      DATA t390 TYPE REF TO zcl_lnt_issue.
      CLEAR t390.
      DATA t391 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t392 TYPE REF TO zcl_lnt_ireference.
      DATA(t393) = t4.
      t392 = t393.
      t391 = t392->position_7b94.
      DATA(t394) = t350.
      DATA(t395) = VALUE string( ).
      DATA t396 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t396.
      DATA t397 TYPE string.
      DATA(t398) = |clear_exporting_parameters|.
      t397 = t398.
      DATA t399 TYPE string.
      DATA(t400) = |Clear EXPORTING parameters|.
      t399 = t400.
      DATA t401 TYPE string.
      DATA(t402) = |Checks that EXPORTING parameters passed by reference are cle|.
      t402 = t402 && |ared or assigned before they are read|.
      t401 = t402.
      DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t403.
      DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t404.
      DATA(t405) = abap_true.
      IF t405 = abap_true.
        DATA(t406) = |An EXPORTING parameter passed by reference behaves like a CH|.
        t406 = t406 && |ANGING parameter: it is not\ninitialized when the method is c|.
        t406 = t406 && |alled, so it can still contain a value supplied by the calle|.
        t406 = t406 && |r. Clear or overwrite it\nbefore reading it, so a leftover va|.
        t406 = t406 && |lue is not accidentally used.\n\nhttps://github.com/SAP/styleg|.
        t406 = t406 && |uides/blob/main/clean-abap/CleanABAP.md#clear-or-overwrite-e|.
        t406 = t406 && |xporting-reference-parameters\n\nhttps://help.sap.com/doc/abap|.
        t406 = t406 && |docu_latest_index_htm/latest/en-US/abenref_transf_output_par|.
        t406 = t406 && |am_guidl.html\n\nNote: EXPORTING parameters passed by VALUE ar|.
        t406 = t406 && |e always initialized and are therefore not reported.\nReading|.
        t406 = t406 && | and writing the parameter in the same statement (e.g. "ev_r|.
        t406 = t406 && |esult = ev_result + 1") is reported,\nas the source is evalua|.
        t406 = t406 && |ted before the parameter is assigned.\nObjects containing par|.
        t406 = t406 && |ser or syntax errors are not reported.\n"IS SUPPLIED"/"IS REQ|.
        t406 = t406 && |UESTED" checks are not considered reads, and "GET REFERENCE |.
        t406 = t406 && |OF" plus\n"ASSIGN ... TO <fs>" are considered writes, as the |.
        t406 = t406 && |value can be written via the reference.\n\nClass and interface|.
        t406 = t406 && | method implementations and function modules are checked.|.
        DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t407->has = abap_true.
        t407->value = t406.
        t404 = t407.
      ELSE.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t408.
        t404 = t408.
      ENDIF.
      t403 = t404.
      DATA t409 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t409.
      DATA t410 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t410.
      DATA(t411) = abap_true.
      IF t411 = abap_true.
        DATA t412 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t413 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t414 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t414.
        t413 = t414.
        DATA(t415) = t413.
        DATA(t416) = |Styleguide|.
        t415->load( ).
        APPEND t416 TO t415->items.
        t415->save( ).
        DATA(t417) = t413.
        t412 = t417.
        t410 = t412.
      ELSE.
        DATA t418 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t418.
        t410 = t418.
      ENDIF.
      t409 = t410.
      DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t419.
      DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t420.
      DATA(t421) = abap_true.
      IF t421 = abap_true.
        DATA(t422) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
        t422 = t422 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
        t422 = t422 && |  METHOD foo.\n    ev_result = ev_result + 1.\n  ENDMETHOD.\nEN|.
        t422 = t422 && |DCLASS.|.
        DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t423->has = abap_true.
        t423->value = t422.
        t420 = t423.
      ELSE.
        DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t424.
        t420 = t424.
      ENDIF.
      t419 = t420.
      DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t425.
      DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t426.
      DATA(t427) = abap_true.
      IF t427 = abap_true.
        DATA(t428) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
        t428 = t428 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
        t428 = t428 && |  METHOD foo.\n    CLEAR ev_result.\n    ev_result = ev_result|.
        t428 = t428 && | + 1.\n  ENDMETHOD.\nENDCLASS.|.
        DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t429->has = abap_true.
        t429->value = t428.
        t426 = t429.
      ELSE.
        DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t430.
        t426 = t430.
      ENDIF.
      t425 = t426.
      DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t432.
      t431 = t432.
      DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t434.
      t433 = t434.
      t396 = NEW zcl_lnt_irule_metadata( i_key = t397 i_title = t399 i_short_description = t401 i_bad_example = t419 i_good_example = t425 i_extended_information = t403 i_tags = t409 i_pragma = t431 i_pseudo_comment = t433 ).
      CREATE OBJECT t396->zlnt_view_ownkeys_b0e8086400eb.
      t396->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t435.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t435 ).
      ENDIF.
      DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t436.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t436 ).
      ENDIF.
      DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t437.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t437 ).
      ENDIF.
      DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t438.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t438 ).
      ENDIF.
      DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t439.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t439 ).
      ENDIF.
      DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t440.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t440 ).
      ENDIF.
      DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t441.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t441 ).
      ENDIF.
      CREATE OBJECT t396->zlnt_json_ownkeys_70e5fd461788.
      t396->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t442) = |key|.
      DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t443.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t442 p1 = t443 ).
      ENDIF.
      DATA(t444) = |title|.
      DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t445.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t444 p1 = t445 ).
      ENDIF.
      DATA(t446) = |shortDescription|.
      DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t447.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t446 p1 = t447 ).
      ENDIF.
      DATA(t448) = |extendedInformation|.
      DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t449.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
      ENDIF.
      DATA(t450) = |tags|.
      DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t451.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
      ENDIF.
      DATA(t452) = |badExample|.
      DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t453.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t452 p1 = t453 ).
      ENDIF.
      DATA(t454) = |goodExample|.
      DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t455.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t454 p1 = t455 ).
      ENDIF.
      t395 = t396->key.
      DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t457) = me->conf.
      t456 = t457->zlnt_view_read_sr_15c06369f827( ).
      DATA t458 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t458.
      t390 = zcl_lnt_issue=>at_identifier( i_identifier = t391 i_message_26cb = t394 i_key = t395 i_severity = t456 i_fix = t458 ).
      t388 = t390.
    ELSE.
      DATA t459 TYPE REF TO zcl_lnt_issue.
      CLEAR t459.
      t388 = t459.
    ENDIF.
    result = t388.

  ENDMETHOD.

  METHOD is_reference_or_assign.
    DATA(t1) = i_reference.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t2.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = t1.
    t8 = t9->position_7b94.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = t7.
    t10 = t11->filename.
    t6 = t10.
    t4 = t5->get_abap_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t16) = t1.
    t15 = t16->position_7b94.
    t14 = t15.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = t14.
    t19 = t20->token.
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA(t22) = t18.
    t21 = t22->start.
    t17 = t21.
    t13 = t17.
    t12 = t13.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    DATA(t27) = t3.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t26.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zcl_lnt_abap_file.
      DATA t34 TYPE REF TO zcl_lnt_abap_file.
      DATA(t35) = t26.
      t34 = t35.
      t33 = t34.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = t33.
      t36 = t37->statements.
      t32 = t36.
      t28 = t32.
    ENDIF.
    t25 = t28.
    t24 = t25.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE abap_bool.
    DATA(t40) = t24.
    t39 = xsdbool( t40 IS BOUND ).
    IF t39 = abap_true.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t24.
      t41 = t42.
      t38 = t41.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t38 = t43.
    ENDIF.
    t23 = t38.
    DATA t44 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t44.
    DATA t45 TYPE REF TO object.
    CLEAR t45.
    DATA(t46) = VALUE i( ).
    DO.
      t23->load( ).
      IF t46 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t45.
      READ TABLE t23->items INDEX t46 + 1 INTO t45.
      t46 = t46 + 1.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      CLEAR t44.
      IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t47 ?= t45.
        DATA t48 TYPE REF TO object.
        t48 = t47->as_ref( ).
        t44 ?= t48.
      ELSE.
        t44 ?= t45.
      ENDIF.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA t51 TYPE REF TO zcl_lnt_statement_node.
      DATA(t52) = t44.
      t51 = t52.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = t51.
      t55 = t56->get_first_token( ).
      t54 = t55.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA(t58) = t54.
      t57 = t58->start.
      t53 = t57.
      t50 = t53.
      t49 = t50.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA t60 TYPE REF TO zcl_lnt_position.
      DATA t61 TYPE REF TO zcl_lnt_statement_node.
      DATA(t62) = t44.
      t61 = t62.
      DATA t63 TYPE REF TO zcl_lnt_position.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t66) = t61.
      t65 = t66->get_last_token( ).
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_position.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t69) = t64.
      t68 = t69.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      DATA t72 TYPE REF TO zcl_lnt_position.
      DATA t73 TYPE REF TO zcl_lnt_position.
      DATA(t74) = t68.
      t73 = t74->start.
      t72 = t73.
      DATA t75 TYPE f.
      DATA(t76) = t72.
      t75 = t76->row.
      t71 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t79 TYPE REF TO zcl_lnt_position.
      DATA t80 TYPE REF TO zcl_lnt_position.
      DATA(t81) = t68.
      t80 = t81->start.
      t79 = t80.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t83) = t79.
      t82 = t83->col.
      t78 = t82.
      DATA t84 TYPE f.
      DATA t85 TYPE i.
      DATA t86 TYPE string.
      DATA(t87) = t68.
      t86 = t87->str.
      DATA(t88) = strlen( t86 ).
      t85 = t88.
      t84 = t85.
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t77 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ).
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = t77 ).
      t67 = t70.
      t63 = t67.
      t60 = t63.
      t59 = t60.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE abap_bool.
      DATA(t93) = t12.
      DATA(t94) = t49.
      t92 = t93->equals( i_p = t94 ).
      DATA(t95) = abap_false.
      t91 = xsdbool( t92 = t95 ).
      t90 = t91.
      IF t91 = abap_true.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE abap_bool.
        DATA t98 TYPE abap_bool.
        DATA(t99) = t12.
        DATA(t100) = t49.
        t98 = t99->is_after( i_p = t100 ).
        DATA(t101) = abap_false.
        t97 = xsdbool( t98 = t101 ).
        t96 = t97.
        IF t97 = abap_false.
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = VALUE abap_bool( ).
          DATA t104 TYPE REF TO zcl_lnt_position.
          DATA(t105) = t12.
          t104 = t105.
          DATA t106 TYPE REF TO zcl_lnt_position.
          DATA(t107) = t59.
          t106 = t107.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          DATA t110 TYPE f.
          DATA(t111) = t104.
          t110 = t111->row.
          DATA t112 TYPE f.
          DATA(t113) = t106.
          t112 = t113->row.
          t109 = xsdbool( t110 < t112 ).
          t108 = t109.
          IF t109 = abap_false.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            DATA t116 TYPE f.
            DATA(t117) = t104.
            t116 = t117->row.
            DATA t118 TYPE f.
            DATA(t119) = t106.
            t118 = t119->row.
            t115 = xsdbool( t116 = t118 ).
            t114 = t115.
            IF t115 = abap_true.
              DATA t120 TYPE abap_bool.
              DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t122) = t104.
              t121 = t122->col.
              DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t124) = t106.
              t123 = t124->col.
              t120 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
              t114 = t120.
            ENDIF.
            t108 = t114.
          ENDIF.
          t103 = t108.
          DATA(t125) = abap_false.
          t102 = xsdbool( t103 = t125 ).
          t96 = t102.
        ENDIF.
        t90 = t96.
      ENDIF.
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t126 TYPE REF TO zif_lnt_statement.
      DATA t127 TYPE REF TO zif_lnt_statement.
      DATA(t128) = t44.
      t127 = t128->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t126 = t127.
      DATA t129 TYPE abap_bool.
      DATA t130 TYPE abap_bool.
      DATA(t131) = t126.
      t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_st_get_reference ).
      t129 = t130.
      IF t130 = abap_false.
        DATA t132 TYPE abap_bool.
        DATA(t133) = t126.
        t132 = xsdbool( t133 IS BOUND AND t133 IS INSTANCE OF zcl_lnt_st_assign ).
        t129 = t132.
      ENDIF.
      result = t129.
      RETURN.
    ENDDO.
    DATA(t134) = abap_false.
    result = t134.

  ENDMETHOD.

  METHOD is_supplied_or_requested.
    DATA(t1) = i_reference.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t2.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = t1.
    t8 = t9->position_7b94.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = t7.
    t10 = t11->filename.
    t6 = t10.
    t4 = t5->get_abap_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t16) = t1.
    t15 = t16->position_7b94.
    t14 = t15.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = t14.
    t19 = t20->token.
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA(t22) = t18.
    t21 = t22->start.
    t17 = t21.
    t13 = t17.
    t12 = t13.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    DATA(t27) = t3.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t26.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zcl_lnt_abap_file.
      DATA t34 TYPE REF TO zcl_lnt_abap_file.
      DATA(t35) = t26.
      t34 = t35.
      t33 = t34.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = t33.
      t36 = t37->statements.
      t32 = t36.
      t28 = t32.
    ENDIF.
    t25 = t28.
    t24 = t25.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE abap_bool.
    DATA(t40) = t24.
    t39 = xsdbool( t40 IS BOUND ).
    IF t39 = abap_true.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t24.
      t41 = t42.
      t38 = t41.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t38 = t43.
    ENDIF.
    t23 = t38.
    DATA t44 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t44.
    DATA t45 TYPE REF TO object.
    CLEAR t45.
    DATA(t46) = VALUE i( ).
    DO.
      t23->load( ).
      IF t46 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t45.
      READ TABLE t23->items INDEX t46 + 1 INTO t45.
      t46 = t46 + 1.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      CLEAR t44.
      IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t47 ?= t45.
        DATA t48 TYPE REF TO object.
        t48 = t47->as_ref( ).
        t44 ?= t48.
      ELSE.
        t44 ?= t45.
      ENDIF.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA t51 TYPE REF TO zcl_lnt_statement_node.
      DATA(t52) = t44.
      t51 = t52.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = t51.
      t55 = t56->get_first_token( ).
      t54 = t55.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA(t58) = t54.
      t57 = t58->start.
      t53 = t57.
      t50 = t53.
      t49 = t50.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA t60 TYPE REF TO zcl_lnt_position.
      DATA t61 TYPE REF TO zcl_lnt_statement_node.
      DATA(t62) = t44.
      t61 = t62.
      DATA t63 TYPE REF TO zcl_lnt_position.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t66) = t61.
      t65 = t66->get_last_token( ).
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_position.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t69) = t64.
      t68 = t69.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      DATA t72 TYPE REF TO zcl_lnt_position.
      DATA t73 TYPE REF TO zcl_lnt_position.
      DATA(t74) = t68.
      t73 = t74->start.
      t72 = t73.
      DATA t75 TYPE f.
      DATA(t76) = t72.
      t75 = t76->row.
      t71 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t79 TYPE REF TO zcl_lnt_position.
      DATA t80 TYPE REF TO zcl_lnt_position.
      DATA(t81) = t68.
      t80 = t81->start.
      t79 = t80.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t83) = t79.
      t82 = t83->col.
      t78 = t82.
      DATA t84 TYPE f.
      DATA t85 TYPE i.
      DATA t86 TYPE string.
      DATA(t87) = t68.
      t86 = t87->str.
      DATA(t88) = strlen( t86 ).
      t85 = t88.
      t84 = t85.
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t77 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ).
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = t77 ).
      t67 = t70.
      t63 = t67.
      t60 = t63.
      t59 = t60.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE abap_bool.
      DATA(t93) = t12.
      DATA(t94) = t49.
      t92 = t93->equals( i_p = t94 ).
      DATA(t95) = abap_false.
      t91 = xsdbool( t92 = t95 ).
      t90 = t91.
      IF t91 = abap_true.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE abap_bool.
        DATA t98 TYPE abap_bool.
        DATA(t99) = t12.
        DATA(t100) = t49.
        t98 = t99->is_after( i_p = t100 ).
        DATA(t101) = abap_false.
        t97 = xsdbool( t98 = t101 ).
        t96 = t97.
        IF t97 = abap_false.
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = VALUE abap_bool( ).
          DATA t104 TYPE REF TO zcl_lnt_position.
          DATA(t105) = t12.
          t104 = t105.
          DATA t106 TYPE REF TO zcl_lnt_position.
          DATA(t107) = t59.
          t106 = t107.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          DATA t110 TYPE f.
          DATA(t111) = t104.
          t110 = t111->row.
          DATA t112 TYPE f.
          DATA(t113) = t106.
          t112 = t113->row.
          t109 = xsdbool( t110 < t112 ).
          t108 = t109.
          IF t109 = abap_false.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            DATA t116 TYPE f.
            DATA(t117) = t104.
            t116 = t117->row.
            DATA t118 TYPE f.
            DATA(t119) = t106.
            t118 = t119->row.
            t115 = xsdbool( t116 = t118 ).
            t114 = t115.
            IF t115 = abap_true.
              DATA t120 TYPE abap_bool.
              DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t122) = t104.
              t121 = t122->col.
              DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t124) = t106.
              t123 = t124->col.
              t120 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
              t114 = t120.
            ENDIF.
            t108 = t114.
          ENDIF.
          t103 = t108.
          DATA(t125) = abap_false.
          t102 = xsdbool( t103 = t125 ).
          t96 = t102.
        ENDIF.
        t90 = t96.
      ENDIF.
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t127) = t44.
      DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
      t126 = t127->find_all_expressions_recursive( i_type_9913 = t128 ).
      DATA t129 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t129.
      DATA t130 TYPE REF TO object.
      CLEAR t130.
      DATA(t131) = VALUE i( ).
      DO.
        t126->load( ).
        IF t131 >= lines( t126->items ).
          EXIT.
        ENDIF.
        CLEAR t130.
        READ TABLE t126->items INDEX t131 + 1 INTO t130.
        t131 = t131 + 1.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        CLEAR t129.
        IF t130 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t132 ?= t130.
          DATA t133 TYPE REF TO object.
          t133 = t132->as_ref( ).
          t129 ?= t133.
        ELSE.
          t129 ?= t130.
        ENDIF.
        DATA(t134) = VALUE string( ).
        DATA t135 TYPE string.
        DATA t136 TYPE string.
        DATA(t137) = t129.
        t136 = t137->concat_tokens( ).
        DATA(t138) = strlen( t136 ).
        t135 = t136.
        IF t135 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t135 TO UPPER CASE.
        ELSE.
          t135 = zlnt_runtime_uppe_91169605024d=>full( t135 ).
        ENDIF.
        t134 = t135.
        DATA(t139) = VALUE abap_bool( ).
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = VALUE i( ).
        DATA(t145) = t134.
        DATA(t146) = | IS SUPPLIED|.
        DATA(t147) = strlen( t145 ).
        IF t146 IS INITIAL.
          t144 = 0.
        ELSE.
          FIND t146 IN t145 MATCH OFFSET t144.
          IF sy-subrc <> 0.
            t144 = -1.
          ENDIF.
        ENDIF.
        DATA(t148) = 0.
        t143 = xsdbool( t144 >= t148 ).
        DATA(t149) = abap_false.
        t142 = xsdbool( t143 = t149 ).
        t141 = t142.
        IF t142 = abap_true.
          DATA(t150) = VALUE abap_bool( ).
          DATA(t151) = VALUE abap_bool( ).
          DATA(t152) = VALUE i( ).
          DATA(t153) = t134.
          DATA(t154) = | IS REQUESTED|.
          DATA(t155) = strlen( t153 ).
          IF t154 IS INITIAL.
            t152 = 0.
          ELSE.
            FIND t154 IN t153 MATCH OFFSET t152.
            IF sy-subrc <> 0.
              t152 = -1.
            ENDIF.
          ENDIF.
          DATA(t156) = 0.
          t151 = xsdbool( t152 >= t156 ).
          DATA(t157) = abap_false.
          t150 = xsdbool( t151 = t157 ).
          t141 = t150.
        ENDIF.
        t140 = t141.
        IF t141 = abap_true.
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = VALUE abap_bool( ).
          DATA(t160) = VALUE i( ).
          DATA(t161) = t134.
          DATA(t162) = | IS NOT SUPPLIED|.
          DATA(t163) = strlen( t161 ).
          IF t162 IS INITIAL.
            t160 = 0.
          ELSE.
            FIND t162 IN t161 MATCH OFFSET t160.
            IF sy-subrc <> 0.
              t160 = -1.
            ENDIF.
          ENDIF.
          DATA(t164) = 0.
          t159 = xsdbool( t160 >= t164 ).
          DATA(t165) = abap_false.
          t158 = xsdbool( t159 = t165 ).
          t140 = t158.
        ENDIF.
        t139 = t140.
        IF t140 = abap_true.
          DATA(t166) = VALUE abap_bool( ).
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = VALUE i( ).
          DATA(t169) = t134.
          DATA(t170) = | IS NOT REQUESTED|.
          DATA(t171) = strlen( t169 ).
          IF t170 IS INITIAL.
            t168 = 0.
          ELSE.
            FIND t170 IN t169 MATCH OFFSET t168.
            IF sy-subrc <> 0.
              t168 = -1.
            ENDIF.
          ENDIF.
          DATA(t172) = 0.
          t167 = xsdbool( t168 >= t172 ).
          DATA(t173) = abap_false.
          t166 = xsdbool( t167 = t173 ).
          t139 = t166.
        ENDIF.
        IF t139 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t174 TYPE REF TO zcl_lnt_position.
        DATA t175 TYPE REF TO zcl_lnt_position.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        DATA t177 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t178) = t129.
        t177 = t178->get_first_token( ).
        t176 = t177.
        DATA t179 TYPE REF TO zcl_lnt_position.
        DATA(t180) = t176.
        t179 = t180->start.
        t175 = t179.
        t174 = t175.
        DATA t181 TYPE REF TO zcl_lnt_position.
        DATA t182 TYPE REF TO zcl_lnt_position.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        DATA t184 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t185) = t129.
        t184 = t185->get_last_token( ).
        t183 = t184.
        DATA t186 TYPE REF TO zcl_lnt_position.
        DATA t187 TYPE f.
        DATA t188 TYPE REF TO zcl_lnt_position.
        DATA t189 TYPE REF TO zcl_lnt_position.
        DATA(t190) = t183.
        t189 = t190->start.
        t188 = t189.
        DATA t191 TYPE f.
        DATA(t192) = t188.
        t191 = t192->row.
        t187 = t191.
        DATA t193 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t194 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t195 TYPE REF TO zcl_lnt_position.
        DATA t196 TYPE REF TO zcl_lnt_position.
        DATA(t197) = t183.
        t196 = t197->start.
        t195 = t196.
        DATA t198 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t199) = t195.
        t198 = t199->col.
        t194 = t198.
        DATA t200 TYPE f.
        DATA t201 TYPE i.
        DATA t202 TYPE string.
        DATA(t203) = t183.
        t202 = t203->str.
        DATA(t204) = strlen( t202 ).
        t201 = t204.
        t200 = t201.
        DATA(t205) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t205->has = abap_true.
        t205->value = t200.
        t193 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t194 right = t205 op = `+` ).
        t186 = NEW zcl_lnt_position( i_row = t187 i_col = t193 ).
        t182 = t186.
        t181 = t182.
        DATA(t206) = VALUE abap_bool( ).
        DATA t207 TYPE abap_bool.
        DATA t208 TYPE abap_bool.
        DATA(t209) = t12.
        DATA(t210) = t174.
        t208 = t209->equals( i_p = t210 ).
        t207 = t208.
        IF t208 = abap_false.
          DATA t211 TYPE abap_bool.
          DATA(t212) = t12.
          DATA(t213) = t174.
          t211 = t212->is_after( i_p = t213 ).
          t207 = t211.
        ENDIF.
        t206 = t207.
        IF t207 = abap_true.
          DATA(t214) = VALUE abap_bool( ).
          DATA t215 TYPE REF TO zcl_lnt_position.
          DATA(t216) = t12.
          t215 = t216.
          DATA t217 TYPE REF TO zcl_lnt_position.
          DATA(t218) = t181.
          t217 = t218.
          DATA t219 TYPE abap_bool.
          DATA t220 TYPE abap_bool.
          DATA t221 TYPE f.
          DATA(t222) = t215.
          t221 = t222->row.
          DATA t223 TYPE f.
          DATA(t224) = t217.
          t223 = t224->row.
          t220 = xsdbool( t221 < t223 ).
          t219 = t220.
          IF t220 = abap_false.
            DATA t225 TYPE abap_bool.
            DATA t226 TYPE abap_bool.
            DATA t227 TYPE f.
            DATA(t228) = t215.
            t227 = t228->row.
            DATA t229 TYPE f.
            DATA(t230) = t217.
            t229 = t230->row.
            t226 = xsdbool( t227 = t229 ).
            t225 = t226.
            IF t226 = abap_true.
              DATA t231 TYPE abap_bool.
              DATA t232 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t233) = t215.
              t232 = t233->col.
              DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t235) = t217.
              t234 = t235->col.
              t231 = zlnt_runtime_numb_290eb04a9758=>compare( left = t232 right = t234 op = `<` ).
              t225 = t231.
            ENDIF.
            t219 = t225.
          ENDIF.
          t214 = t219.
          t206 = t214.
        ENDIF.
        IF t206 = abap_true.
          DATA(t236) = abap_true.
          result = t236.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t237) = abap_false.
    result = t237.

  ENDMETHOD.

  METHOD statement_start.
    DATA(t1) = i_reference.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t2.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = t1.
    t8 = t9->position_7b94.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = t7.
    t10 = t11->filename.
    t6 = t10.
    t4 = t5->get_abap_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = t3.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t15.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      DATA t23 TYPE REF TO zcl_lnt_abap_file.
      DATA(t24) = t15.
      t23 = t24.
      t22 = t23.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = t22.
      t25 = t26->statements.
      t21 = t25.
      t17 = t21.
    ENDIF.
    t14 = t17.
    t13 = t14.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE abap_bool.
    DATA(t29) = t13.
    t28 = xsdbool( t29 IS BOUND ).
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t13.
      t30 = t31.
      t27 = t30.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t32.
      t27 = t32.
    ENDIF.
    t12 = t27.
    DATA t33 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    DATA(t35) = VALUE i( ).
    DO.
      t12->load( ).
      IF t35 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t12->items INDEX t35 + 1 INTO t34.
      t35 = t35 + 1.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t33.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t34.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_position.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t42) = t1.
      t41 = t42->position_7b94.
      t40 = t41.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t40.
      t45 = t46->token.
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = t44.
      t47 = t48->start.
      t43 = t47.
      t39 = t43.
      t38 = t39.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA t51 TYPE REF TO zcl_lnt_statement_node.
      DATA(t52) = t33.
      t51 = t52.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = t51.
      t55 = t56->get_first_token( ).
      t54 = t55.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA(t58) = t54.
      t57 = t58->start.
      t53 = t57.
      t50 = t53.
      t49 = t50.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA t60 TYPE REF TO zcl_lnt_position.
      DATA t61 TYPE REF TO zcl_lnt_statement_node.
      DATA(t62) = t33.
      t61 = t62.
      DATA t63 TYPE REF TO zcl_lnt_position.
      DATA t64 TYPE REF TO zcl_lnt_abstract_token.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t66) = t61.
      t65 = t66->get_last_token( ).
      t64 = t65.
      DATA t67 TYPE REF TO zcl_lnt_position.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t69) = t64.
      t68 = t69.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      DATA t72 TYPE REF TO zcl_lnt_position.
      DATA t73 TYPE REF TO zcl_lnt_position.
      DATA(t74) = t68.
      t73 = t74->start.
      t72 = t73.
      DATA t75 TYPE f.
      DATA(t76) = t72.
      t75 = t76->row.
      t71 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t79 TYPE REF TO zcl_lnt_position.
      DATA t80 TYPE REF TO zcl_lnt_position.
      DATA(t81) = t68.
      t80 = t81->start.
      t79 = t80.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t83) = t79.
      t82 = t83->col.
      t78 = t82.
      DATA t84 TYPE f.
      DATA t85 TYPE i.
      DATA t86 TYPE string.
      DATA(t87) = t68.
      t86 = t87->str.
      DATA(t88) = strlen( t86 ).
      t85 = t88.
      t84 = t85.
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t77 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ).
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = t77 ).
      t67 = t70.
      t63 = t67.
      t60 = t63.
      t59 = t60.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA(t92) = t38.
      DATA(t93) = t49.
      t91 = t92->equals( i_p = t93 ).
      t90 = t91.
      IF t91 = abap_false.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE abap_bool.
        DATA(t96) = t38.
        DATA(t97) = t49.
        t95 = t96->is_after( i_p = t97 ).
        t94 = t95.
        IF t95 = abap_true.
          DATA(t98) = VALUE abap_bool( ).
          DATA t99 TYPE REF TO zcl_lnt_position.
          DATA(t100) = t38.
          t99 = t100.
          DATA t101 TYPE REF TO zcl_lnt_position.
          DATA(t102) = t59.
          t101 = t102.
          DATA t103 TYPE abap_bool.
          DATA t104 TYPE abap_bool.
          DATA t105 TYPE f.
          DATA(t106) = t99.
          t105 = t106->row.
          DATA t107 TYPE f.
          DATA(t108) = t101.
          t107 = t108->row.
          t104 = xsdbool( t105 < t107 ).
          t103 = t104.
          IF t104 = abap_false.
            DATA t109 TYPE abap_bool.
            DATA t110 TYPE abap_bool.
            DATA t111 TYPE f.
            DATA(t112) = t99.
            t111 = t112->row.
            DATA t113 TYPE f.
            DATA(t114) = t101.
            t113 = t114->row.
            t110 = xsdbool( t111 = t113 ).
            t109 = t110.
            IF t110 = abap_true.
              DATA t115 TYPE abap_bool.
              DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t117) = t99.
              t116 = t117->col.
              DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t119) = t101.
              t118 = t119->col.
              t115 = zlnt_runtime_numb_290eb04a9758=>compare( left = t116 right = t118 op = `<` ).
              t109 = t115.
            ENDIF.
            t103 = t109.
          ENDIF.
          t98 = t103.
          t94 = t98.
        ENDIF.
        t90 = t94.
      ENDIF.
      IF t90 = abap_true.
        DATA t120 TYPE REF TO zcl_lnt_position.
        CLEAR t120.
        DATA(t121) = abap_true.
        IF t121 = abap_true.
          DATA(t122) = t49.
          t120 = t122.
        ELSE.
          DATA t123 TYPE REF TO zcl_lnt_position.
          CLEAR t123.
          t120 = t123.
        ENDIF.
        result = t120.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t124 TYPE REF TO zcl_lnt_position.
    CLEAR t124.
    result = t124.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( me->g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( me->g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_clr_exprtng_prmtrs_cnf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_clr_exprtng_prmtrs_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cl_ex_pr_ts_cl_ex_pr( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_clr_exprtng_prmtrs.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_cl_ex_pr_ts_cl_ex_pr( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1454_9924309c0542.
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
