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
    me->conf = NEW zcl_lnt_clr_exprtng_prmtrs_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |clear_exporting_parameters|.
    DATA t4 TYPE string.
    t4 = |Clear EXPORTING parameters|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that EXPORTING parameters passed by reference are cle|.
    t7 = t7 && |ared or assigned before they are read|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Styleguide|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
    t27 = t27 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
    t27 = t27 && |  METHOD foo.\n    ev_result = ev_result + 1.\n  ENDMETHOD.\nEN|.
    t27 = t27 && |DCLASS.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
    t33 = t33 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
    t33 = t33 && |  METHOD foo.\n    CLEAR ev_result.\n    ev_result = ev_result|.
    t33 = t33 && | + 1.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_445691f4ed04( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t5 IS INITIAL ).
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t12 = t14.
      t11->zlnt_view_write_s_41519ddb2572( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD i_i_sr_rl_cl_ex_pr_ts_cl_ex_pr.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t6 TYPE abap_bool.
      t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t8.
      result = t8.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA t13 TYPE REF TO object.
    t13 = t1.
    t11 ?= t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t14 = t11->parsed.
    t9 = t14.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    DATA t17 TYPE REF TO object.
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
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t24 = t16->statements.
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
        t32 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
    DATA t41 TYPE REF TO object.
    t41 = t1.
    t39 ?= t41.
    t37 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t38 i_object_19cd = t39 ).
    t36 = t37->run( ).
    t35 = t36.
    DATA t42 TYPE abap_bool.
    DATA t43 TYPE i.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t44 = t35->zlnt_view_read_sr_bd188c319c03( ).
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
    t51 = t35->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t50 = t51->get_top( ).
    DATA t53 TYPE REF TO zcl_lnt_abap_object.
    DATA t55 TYPE REF TO object.
    t55 = t1.
    t53 ?= t55.
    me->traverse( i_node = t50 i_obj_1ed0 = t53 i_issues = t48 ).
    result = t48.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_issues.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_iscope_identifier.
    t7 = t1->get_identifier( ).
    t6 = t7->stype.
    DATA(t9) = |method|.
    t5 = xsdbool( t6 = t9 ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_iscope_identifier.
      t12 = t1->get_identifier( ).
      t11 = t12->stype.
      DATA(t14) = |function|.
      t10 = xsdbool( t11 = t14 ).
      t4 = t10.
    ENDIF.
    IF t4 = abap_true.
      me->check_procedure( i_node = t1 i_obj_1ed0 = t2 i_issues = t3 ).
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t18 = t1->get_children( ).
    DATA t20 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t21 TYPE REF TO object.
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
      me->traverse( i_node = t20 i_obj_1ed0 = t2 i_issues = t3 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_procedure.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_issues.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = me->collect_references( i_node = t1 ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = me->find_exporting_by_reference( i_node = t1 i_references = t4 ).
    t7 = t8.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE i.
    t7->load( ).
    t12 = lines( t7->items ).
    DATA(t14) = 0.
    t11 = xsdbool( t12 = t14 ).
    IF t11 = abap_true.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t7->load( ).
      IF t18 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t7->items INDEX t18 + 1 INTO t17.
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
      t22 = me->check_parameter( i_parameter_5406 = t16 i_references = t4 i_obj_1ed0 = t2 ).
      t21 = t22.
      DATA(t26) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = xsdbool( t21 IS INITIAL ).
      t31 = xsdbool( t32 = abap_false ).
      t26 = t31.
      IF t26 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_issue.
        t35 = t21.
        t3->load( ).
        APPEND t35 TO t3->items.
        t3->save( ).
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
    DATA t6 TYPE REF TO zlnt_runtime_set__288f5ae381ad.
    DATA(t7) = NEW zlnt_runtime_set__288f5ae381ad( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t10 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t11 TYPE REF TO zcl_lnt_iscope_data.
    t11 = t1->get_data( ).
    t10 = t11->vars.
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t15 = t9->keys( ).
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
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
      t21 = t9->get( p0 = t17 ).
      t20 = t21.
      t13->load( ).
      APPEND t20 TO t13->items.
      t13->save( ).
    ENDDO.
    t8 = t13.
    t6 = t7->fromarray( p0 = t8 ).
    t5 = t6.
    DATA t26 TYPE REF TO zcl_lnt_ireference.
    DATA t27 TYPE REF TO object.
    DATA(t28) = VALUE i( ).
    DO.
      t2->load( ).
      IF t28 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t2->items INDEX t28 + 1 INTO t27.
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
      t32 = t26->resolved.
      t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_typed_identifier ).
      IF t31 = abap_true.
        DATA t34 TYPE REF TO zlnt_runtime_set__288f5ae381ad.
        DATA t36 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
        t37 = t26->resolved.
        t36 ?= t37.
        t34 = t5->add( p0 = t36 ).
      ENDIF.
    ENDDO.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t39 = t5->values( ).
    DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t42 TYPE REF TO object.
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
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t50 = t41->meta.
      t46 = t50.
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      DATA(t56) = |exporting|.
      t54 = t46->includes( p0 = t56 ).
      t53 = t54.
      IF t54 = abap_false.
        DATA t57 TYPE abap_bool.
        DATA(t59) = |function_module_exporting|.
        t57 = t46->includes( p0 = t59 ).
        t53 = t57.
      ENDIF.
      t52 = t53.
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE abap_bool.
      t61 = xsdbool( t52 = abap_false ).
      t60 = t61.
      IF t61 = abap_false.
        DATA t64 TYPE abap_bool.
        DATA t65 TYPE abap_bool.
        DATA(t67) = |pass_by_value|.
        t65 = t46->includes( p0 = t67 ).
        t64 = xsdbool( t65 = abap_true ).
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
        t72 = me->conf->zlnt_view_read_sr_445691f4ed04( ).
        t71 = t72.
        DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t74.
        DATA(t75) = xsdbool( t71 IS INITIAL ).
        IF t75 = abap_true.
          CLEAR t74.
        ELSE.
          DATA(t78) = VALUE abap_bool( ).
          DATA t79 TYPE abap_bool.
          t79 = abap_false.
          DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t81 = t71.
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
            DATA(t88) = strlen( t83 ).
            t86 = t83.
            IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t86 TO UPPER CASE.
            ELSE.
              t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
            ENDIF.
            DATA(t89) = VALUE string( ).
            DATA(t90) = VALUE string( ).
            DATA t91 TYPE REF TO zcl_lnt_fi_identifier.
            t91 = t41.
            DATA(t93) = VALUE string( ).
            DATA t94 TYPE string.
            DATA t97 TYPE REF TO zcl_lnt_abstract_token.
            t97 = t91->token.
            DATA t99 TYPE string.
            t99 = t97->str.
            t94 = t99.
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
              t109 = t94.
              DATA(t111) = VALUE string( ).
              DATA(t113) = 1.
              DATA t114 TYPE i.
              t114 = strlen( t109 ).
              DATA(t117) = strlen( t109 ).
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
                t111 = t109+t113(t114).
              ENDIF.
              t108 = t111.
              t94 = t108.
            ENDIF.
            t93 = t94.
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
              t79 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          t78 = t79.
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
      DATA t127 TYPE REF TO zcl_lnt_abstract_type.
      t127 = t41->type_cba0.
      t123 = t127.
      DATA t129 TYPE abap_bool.
      DATA t130 TYPE abap_bool.
      t130 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_void_type ).
      t129 = t130.
      IF t130 = abap_false.
        DATA t132 TYPE abap_bool.
        t132 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_unknown_type ).
        t129 = t132.
      ENDIF.
      IF t129 = abap_true.
        CONTINUE.
      ENDIF.
      t3->load( ).
      APPEND t41 TO t3->items.
      t3->save( ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD collect_references.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_iscope_data.
    t10 = t1->get_data( ).
    t9 = t10->references.
    t7 = t5->concat( p0 = t9 ).
    t2 = t7.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = t1->get_children( ).
    DATA t15 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t16 TYPE REF TO object.
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
      t21 = me->collect_references( i_node = t15 ).
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
        t2->load( ).
        APPEND t23 TO t2->items.
        t2->save( ).
      ENDDO.
      DATA t30 TYPE i.
      t2->load( ).
      t30 = lines( t2->items ).
      t20 = t30.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_parameter.
    DATA(t1) = i_parameter_5406.
    DATA(t2) = i_references.
    DATA(t3) = i_obj_1ed0.
    DATA t4 TYPE REF TO zcl_lnt_ireference.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO zcl_lnt_ireference.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t2->load( ).
      IF t11 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t2->items INDEX t11 + 1 INTO t10.
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
      DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
      t18 = t9->resolved.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      t16 = xsdbool( t18 IS INITIAL ).
      t15 = t16.
      IF t16 = abap_false.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = VALUE abap_bool( ).
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        t26 = t1.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
        t30 = t9->resolved.
        t28 = t30.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE REF TO zcl_lnt_position.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        t39 = t28->token.
        DATA t41 TYPE REF TO zcl_lnt_position.
        t41 = t39->start.
        t34 = t41.
        DATA t43 TYPE REF TO zcl_lnt_position.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        t45 = t26->token.
        DATA t47 TYPE REF TO zcl_lnt_position.
        t47 = t45->start.
        t43 = t47.
        t33 = t34->equals( i_p = t43 ).
        t32 = t33.
        IF t33 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE string.
          DATA t53 TYPE string.
          t53 = t28->filename.
          t50 = t53.
          DATA t55 TYPE string.
          t55 = t26->filename.
          t49 = xsdbool( t50 = t55 ).
          t32 = t49.
        ENDIF.
        t25 = t32.
        t24 = xsdbool( t25 = abap_false ).
        t15 = t24.
      ENDIF.
      t14 = t15.
      IF t15 = abap_false.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = VALUE string( ).
        DATA(t60) = VALUE string( ).
        DATA t61 TYPE REF TO zcl_lnt_fi_identifier.
        t61 = t1.
        DATA(t63) = VALUE string( ).
        DATA t64 TYPE string.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        t67 = t61->token.
        DATA t69 TYPE string.
        t69 = t67->str.
        t64 = t69.
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
          t79 = t64.
          DATA(t81) = VALUE string( ).
          DATA(t83) = 1.
          DATA t84 TYPE i.
          t84 = strlen( t79 ).
          DATA(t87) = strlen( t79 ).
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
            t81 = t79+t83(t84).
          ENDIF.
          t78 = t81.
          t64 = t78.
        ENDIF.
        t63 = t64.
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
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        t94 = t9->resolved.
        DATA(t96) = VALUE string( ).
        DATA t97 TYPE string.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        t100 = t94->token.
        DATA t102 TYPE string.
        t102 = t100->str.
        t97 = t102.
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
          t112 = t97.
          DATA(t114) = VALUE string( ).
          DATA(t116) = 1.
          DATA t117 TYPE i.
          t117 = strlen( t112 ).
          DATA(t120) = strlen( t112 ).
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
            t114 = t112+t116(t117).
          ENDIF.
          t111 = t114.
          t97 = t111.
        ENDIF.
        t96 = t97.
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
      DATA t126 TYPE REF TO zcl_lnt_fi_identifier.
      t126 = t9->position_7b94.
      DATA t130 TYPE REF TO zcl_lnt_abstract_token.
      t130 = t126->token.
      DATA t132 TYPE REF TO zcl_lnt_position.
      t132 = t130->start.
      t123 = t132.
      DATA t134 TYPE abap_bool.
      DATA t135 TYPE string.
      t135 = t9->reference_type.
      DATA(t137) = |Read From|.
      t134 = xsdbool( t135 = t137 ).
      IF t134 = abap_true.
        DATA t138 TYPE abap_bool.
        t138 = me->is_supplied_or_requested( i_reference = t9 i_obj_1ed0 = t3 ).
        IF t138 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t141 TYPE abap_bool.
        t141 = me->is_reference_or_assign( i_reference = t9 i_obj_1ed0 = t3 ).
        IF t141 = abap_true.
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = VALUE abap_bool( ).
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          t145 = xsdbool( t6 IS INITIAL ).
          t144 = t145.
          IF t145 = abap_false.
            DATA(t152) = VALUE abap_bool( ).
            DATA t153 TYPE REF TO zcl_lnt_position.
            t153 = t123.
            DATA t155 TYPE REF TO zcl_lnt_position.
            DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t159 TYPE REF TO zcl_lnt_ireference.
            t159 = t6.
            t158 = t159->position_7b94.
            DATA t163 TYPE REF TO zcl_lnt_abstract_token.
            t163 = t158->token.
            DATA t165 TYPE REF TO zcl_lnt_position.
            t165 = t163->start.
            t155 = t165.
            DATA t167 TYPE abap_bool.
            DATA t168 TYPE abap_bool.
            DATA t169 TYPE f.
            t169 = t153->row.
            DATA t171 TYPE f.
            t171 = t155->row.
            t168 = xsdbool( t169 < t171 ).
            t167 = t168.
            IF t168 = abap_false.
              DATA t173 TYPE abap_bool.
              DATA t174 TYPE abap_bool.
              DATA t175 TYPE f.
              t175 = t153->row.
              DATA t177 TYPE f.
              t177 = t155->row.
              t174 = xsdbool( t175 = t177 ).
              t173 = t174.
              IF t174 = abap_true.
                DATA t179 TYPE abap_bool.
                DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t180 = t153->col.
                DATA t182 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t182 = t155->col.
                t179 = zlnt_runtime_numb_290eb04a9758=>compare( left = t180 right = t182 op = `<` ).
                t173 = t179.
              ENDIF.
              t167 = t173.
            ENDIF.
            t152 = t167.
            t144 = t152.
          ENDIF.
          IF t144 = abap_true.
            t6 = t9.
          ENDIF.
          CONTINUE.
        ENDIF.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = VALUE abap_bool( ).
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        t189 = xsdbool( t4 IS INITIAL ).
        t188 = t189.
        IF t189 = abap_false.
          DATA(t196) = VALUE abap_bool( ).
          DATA t197 TYPE REF TO zcl_lnt_position.
          t197 = t123.
          DATA t199 TYPE REF TO zcl_lnt_position.
          DATA t202 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t203 TYPE REF TO zcl_lnt_ireference.
          t203 = t4.
          t202 = t203->position_7b94.
          DATA t207 TYPE REF TO zcl_lnt_abstract_token.
          t207 = t202->token.
          DATA t209 TYPE REF TO zcl_lnt_position.
          t209 = t207->start.
          t199 = t209.
          DATA t211 TYPE abap_bool.
          DATA t212 TYPE abap_bool.
          DATA t213 TYPE f.
          t213 = t197->row.
          DATA t215 TYPE f.
          t215 = t199->row.
          t212 = xsdbool( t213 < t215 ).
          t211 = t212.
          IF t212 = abap_false.
            DATA t217 TYPE abap_bool.
            DATA t218 TYPE abap_bool.
            DATA t219 TYPE f.
            t219 = t197->row.
            DATA t221 TYPE f.
            t221 = t199->row.
            t218 = xsdbool( t219 = t221 ).
            t217 = t218.
            IF t218 = abap_true.
              DATA t223 TYPE abap_bool.
              DATA t224 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t224 = t197->col.
              DATA t226 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t226 = t199->col.
              t223 = zlnt_runtime_numb_290eb04a9758=>compare( left = t224 right = t226 op = `<` ).
              t217 = t223.
            ENDIF.
            t211 = t217.
          ENDIF.
          t196 = t211.
          t188 = t196.
        ENDIF.
        IF t188 = abap_true.
          t4 = t9.
        ENDIF.
      ELSE.
        DATA t232 TYPE abap_bool.
        DATA t233 TYPE string.
        t233 = t9->reference_type.
        DATA(t235) = |Write To|.
        t232 = xsdbool( t233 = t235 ).
        IF t232 = abap_true.
          DATA(t236) = VALUE abap_bool( ).
          DATA(t237) = VALUE abap_bool( ).
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t240.
          t237 = xsdbool( t6 IS INITIAL ).
          t236 = t237.
          IF t237 = abap_false.
            DATA(t244) = VALUE abap_bool( ).
            DATA t245 TYPE REF TO zcl_lnt_position.
            t245 = t123.
            DATA t247 TYPE REF TO zcl_lnt_position.
            DATA t250 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t251 TYPE REF TO zcl_lnt_ireference.
            t251 = t6.
            t250 = t251->position_7b94.
            DATA t255 TYPE REF TO zcl_lnt_abstract_token.
            t255 = t250->token.
            DATA t257 TYPE REF TO zcl_lnt_position.
            t257 = t255->start.
            t247 = t257.
            DATA t259 TYPE abap_bool.
            DATA t260 TYPE abap_bool.
            DATA t261 TYPE f.
            t261 = t245->row.
            DATA t263 TYPE f.
            t263 = t247->row.
            t260 = xsdbool( t261 < t263 ).
            t259 = t260.
            IF t260 = abap_false.
              DATA t265 TYPE abap_bool.
              DATA t266 TYPE abap_bool.
              DATA t267 TYPE f.
              t267 = t245->row.
              DATA t269 TYPE f.
              t269 = t247->row.
              t266 = xsdbool( t267 = t269 ).
              t265 = t266.
              IF t266 = abap_true.
                DATA t271 TYPE abap_bool.
                DATA t272 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t272 = t245->col.
                DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t274 = t247->col.
                t271 = zlnt_runtime_numb_290eb04a9758=>compare( left = t272 right = t274 op = `<` ).
                t265 = t271.
              ENDIF.
              t259 = t265.
            ENDIF.
            t244 = t259.
            t236 = t244.
          ENDIF.
          IF t236 = abap_true.
            t6 = t9.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t280) = VALUE abap_bool( ).
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t280 = xsdbool( t4 IS INITIAL ).
    IF t280 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t288 TYPE REF TO zcl_lnt_position.
    DATA t289 TYPE REF TO zcl_lnt_position.
    DATA t290 TYPE REF TO zcl_lnt_ireference.
    t290 = t4.
    t289 = me->statement_start( i_reference = t290 i_obj_1ed0 = t3 ).
    t288 = t289.
    DATA t293 TYPE REF TO zcl_lnt_position.
    DATA t294 TYPE REF TO zcl_lnt_position.
    DATA(t295) = VALUE abap_bool( ).
    DATA t298 TYPE REF TO zcl_lnt_position.
    t295 = xsdbool( t6 IS INITIAL ).
    IF t295 = abap_true.
    ELSE.
      DATA t303 TYPE REF TO zcl_lnt_position.
      DATA t304 TYPE REF TO zcl_lnt_ireference.
      t304 = t6.
      t303 = me->statement_start( i_reference = t304 i_obj_1ed0 = t3 ).
      t294 = t303.
    ENDIF.
    t293 = t294.
    DATA(t307) = VALUE abap_bool( ).
    DATA(t308) = VALUE abap_bool( ).
    DATA(t309) = VALUE abap_bool( ).
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t314) = VALUE abap_bool( ).
    DATA(t315) = xsdbool( t293 IS INITIAL ).
    t314 = xsdbool( t315 = abap_false ).
    t309 = t314.
    t308 = t309.
    IF t309 = abap_true.
      DATA(t317) = VALUE abap_bool( ).
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t322) = VALUE abap_bool( ).
      DATA(t323) = xsdbool( t288 IS INITIAL ).
      t322 = xsdbool( t323 = abap_false ).
      t317 = t322.
      t308 = t317.
    ENDIF.
    t307 = t308.
    IF t308 = abap_true.
      DATA(t325) = VALUE abap_bool( ).
      DATA t326 TYPE REF TO zcl_lnt_position.
      t326 = t293.
      DATA t329 TYPE REF TO zcl_lnt_position.
      t329 = t288.
      DATA t332 TYPE abap_bool.
      DATA t333 TYPE abap_bool.
      DATA t334 TYPE f.
      t334 = t326->row.
      DATA t336 TYPE f.
      t336 = t329->row.
      t333 = xsdbool( t334 < t336 ).
      t332 = t333.
      IF t333 = abap_false.
        DATA t338 TYPE abap_bool.
        DATA t339 TYPE abap_bool.
        DATA t340 TYPE f.
        t340 = t326->row.
        DATA t342 TYPE f.
        t342 = t329->row.
        t339 = xsdbool( t340 = t342 ).
        t338 = t339.
        IF t339 = abap_true.
          DATA t344 TYPE abap_bool.
          DATA t345 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t345 = t326->col.
          DATA t347 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t347 = t329->col.
          t344 = zlnt_runtime_numb_290eb04a9758=>compare( left = t345 right = t347 op = `<` ).
          t338 = t344.
        ENDIF.
        t332 = t338.
      ENDIF.
      t325 = t332.
      t307 = t325.
    ENDIF.
    IF t307 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t350) = VALUE string( ).
    DATA(t351) = VALUE string( ).
    DATA(t352) = VALUE string( ).
    DATA(t353) = |EXPORTING parameter "|.
    DATA(t354) = VALUE string( ).
    DATA(t355) = VALUE string( ).
    DATA t356 TYPE REF TO zcl_lnt_fi_identifier.
    t356 = t1.
    DATA(t358) = VALUE string( ).
    DATA t359 TYPE string.
    DATA t362 TYPE REF TO zcl_lnt_abstract_token.
    t362 = t356->token.
    DATA t364 TYPE string.
    t364 = t362->str.
    t359 = t364.
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
      t374 = t359.
      DATA(t376) = VALUE string( ).
      DATA(t378) = 1.
      DATA t379 TYPE i.
      t379 = strlen( t374 ).
      DATA(t382) = strlen( t374 ).
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
        t376 = t374+t378(t379).
      ENDIF.
      t373 = t376.
      t359 = t373.
    ENDIF.
    t358 = t359.
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
    DATA t390 TYPE REF TO zcl_lnt_issue.
    DATA t391 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t392 TYPE REF TO zcl_lnt_ireference.
    t392 = t4.
    t391 = t392->position_7b94.
    DATA(t395) = VALUE string( ).
    DATA t396 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t397 TYPE string.
    t397 = |clear_exporting_parameters|.
    DATA t399 TYPE string.
    t399 = |Clear EXPORTING parameters|.
    DATA t401 TYPE string.
    DATA(t402) = |Checks that EXPORTING parameters passed by reference are cle|.
    t402 = t402 && |ared or assigned before they are read|.
    t401 = t402.
    DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    t403 = t407.
    DATA t409 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t413 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t414 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t414.
    t413 = t414.
    DATA(t416) = |Styleguide|.
    t413->load( ).
    APPEND t416 TO t413->items.
    t413->save( ).
    t409 = t413.
    DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t422) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
    t422 = t422 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
    t422 = t422 && |  METHOD foo.\n    ev_result = ev_result + 1.\n  ENDMETHOD.\nEN|.
    t422 = t422 && |DCLASS.|.
    DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t423->has = abap_true.
    t423->value = t422.
    t419 = t423.
    DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t428) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
    t428 = t428 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
    t428 = t428 && |  METHOD foo.\n    CLEAR ev_result.\n    ev_result = ev_result|.
    t428 = t428 && | + 1.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t429->has = abap_true.
    t429->value = t428.
    t425 = t429.
    DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t396 = NEW zcl_lnt_irule_metadata( i_key = t397 i_title = t399 i_short_description = t401 i_bad_example = t419 i_good_example = t425 i_extended_information = t403 i_tags = t409 i_pragma = t431 i_pseudo_comment = t433 ).
    CREATE OBJECT t396->zlnt_view_ownkeys_b0e8086400eb.
    t396->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t435 ).
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t436 ).
    ENDIF.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t437 ).
    ENDIF.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t438 ).
    ENDIF.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t439 ).
    ENDIF.
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t440 ).
    ENDIF.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t441 ).
    ENDIF.
    CREATE OBJECT t396->zlnt_json_ownkeys_70e5fd461788.
    t396->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t442) = |key|.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t442 p1 = t443 ).
    DATA(t444) = |title|.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t444 p1 = t445 ).
    ENDIF.
    DATA(t446) = |shortDescription|.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t446 p1 = t447 ).
    ENDIF.
    DATA(t448) = |extendedInformation|.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
    ENDIF.
    DATA(t450) = |tags|.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
    ENDIF.
    DATA(t452) = |badExample|.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t452 p1 = t453 ).
    ENDIF.
    DATA(t454) = |goodExample|.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t454 p1 = t455 ).
    ENDIF.
    t395 = t396->key.
    DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t456 = me->conf->zlnt_view_read_sr_15c06369f827( ).
    DATA t458 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t390 = zcl_lnt_issue=>at_identifier( i_identifier = t391 i_message_26cb = t350 i_key = t395 i_severity = t456 i_fix = t458 ).
    result = t390.

  ENDMETHOD.

  METHOD is_reference_or_assign.
    DATA(t1) = i_reference.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t6 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    t8 = t1->position_7b94.
    DATA t10 TYPE string.
    t10 = t8->filename.
    t6 = t10.
    t4 = i_obj_1ed0->get_abap_file_by_name( i_filename = t6 ).
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    t15 = t1->position_7b94.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    t19 = t15->token.
    DATA t21 TYPE REF TO zcl_lnt_position.
    t21 = t19->start.
    t12 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    t26 = t4.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t29) = xsdbool( t26 IS INITIAL ).
    IF t29 = abap_true.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = t26->statements.
      t28 = t36.
    ENDIF.
    t24 = t28.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE abap_bool.
    t39 = xsdbool( t24 IS BOUND ).
    IF t39 = abap_true.
      t38 = t24.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t38 = t43.
    ENDIF.
    t23 = t38.
    DATA t44 TYPE REF TO zcl_lnt_statement_node.
    DATA t45 TYPE REF TO object.
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
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      t55 = t44->get_first_token( ).
      DATA t57 TYPE REF TO zcl_lnt_position.
      t57 = t55->start.
      t49 = t57.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      t65 = t44->get_last_token( ).
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t65.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      DATA t73 TYPE REF TO zcl_lnt_position.
      t73 = t68->start.
      DATA t75 TYPE f.
      t75 = t73->row.
      t71 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t80 TYPE REF TO zcl_lnt_position.
      t80 = t68->start.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t82 = t80->col.
      t78 = t82.
      DATA t84 TYPE f.
      DATA t86 TYPE string.
      t86 = t68->str.
      t84 = strlen( t86 ).
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t77 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ).
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = t77 ).
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE abap_bool.
      t92 = t12->equals( i_p = t49 ).
      t91 = xsdbool( t92 = abap_false ).
      t90 = t91.
      IF t91 = abap_true.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE abap_bool.
        DATA t98 TYPE abap_bool.
        t98 = t12->is_after( i_p = t49 ).
        t97 = xsdbool( t98 = abap_false ).
        t96 = t97.
        IF t97 = abap_false.
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = VALUE abap_bool( ).
          DATA t104 TYPE REF TO zcl_lnt_position.
          t104 = t12.
          DATA t106 TYPE REF TO zcl_lnt_position.
          t106 = t70.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          DATA t110 TYPE f.
          t110 = t104->row.
          DATA t112 TYPE f.
          t112 = t106->row.
          t109 = xsdbool( t110 < t112 ).
          t108 = t109.
          IF t109 = abap_false.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            DATA t116 TYPE f.
            t116 = t104->row.
            DATA t118 TYPE f.
            t118 = t106->row.
            t115 = xsdbool( t116 = t118 ).
            t114 = t115.
            IF t115 = abap_true.
              DATA t120 TYPE abap_bool.
              DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t121 = t104->col.
              DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t123 = t106->col.
              t120 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
              t114 = t120.
            ENDIF.
            t108 = t114.
          ENDIF.
          t103 = t108.
          t102 = xsdbool( t103 = abap_false ).
          t96 = t102.
        ENDIF.
        t90 = t96.
      ENDIF.
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t126 TYPE REF TO zif_lnt_statement.
      DATA t127 TYPE REF TO zif_lnt_statement.
      t127 = t44->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t126 = t127.
      DATA t129 TYPE abap_bool.
      DATA t130 TYPE abap_bool.
      t130 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_get_reference ).
      t129 = t130.
      IF t130 = abap_false.
        DATA t132 TYPE abap_bool.
        t132 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_assign ).
        t129 = t132.
      ENDIF.
      result = t129.
      RETURN.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_supplied_or_requested.
    DATA(t1) = i_reference.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t6 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    t8 = t1->position_7b94.
    DATA t10 TYPE string.
    t10 = t8->filename.
    t6 = t10.
    t4 = i_obj_1ed0->get_abap_file_by_name( i_filename = t6 ).
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    t15 = t1->position_7b94.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    t19 = t15->token.
    DATA t21 TYPE REF TO zcl_lnt_position.
    t21 = t19->start.
    t12 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    t26 = t4.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t29) = xsdbool( t26 IS INITIAL ).
    IF t29 = abap_true.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t36 = t26->statements.
      t28 = t36.
    ENDIF.
    t24 = t28.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE abap_bool.
    t39 = xsdbool( t24 IS BOUND ).
    IF t39 = abap_true.
      t38 = t24.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t38 = t43.
    ENDIF.
    t23 = t38.
    DATA t44 TYPE REF TO zcl_lnt_statement_node.
    DATA t45 TYPE REF TO object.
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
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      t55 = t44->get_first_token( ).
      DATA t57 TYPE REF TO zcl_lnt_position.
      t57 = t55->start.
      t49 = t57.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      t65 = t44->get_last_token( ).
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t65.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      DATA t73 TYPE REF TO zcl_lnt_position.
      t73 = t68->start.
      DATA t75 TYPE f.
      t75 = t73->row.
      t71 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t80 TYPE REF TO zcl_lnt_position.
      t80 = t68->start.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t82 = t80->col.
      t78 = t82.
      DATA t84 TYPE f.
      DATA t86 TYPE string.
      t86 = t68->str.
      t84 = strlen( t86 ).
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t77 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ).
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = t77 ).
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE abap_bool.
      t92 = t12->equals( i_p = t49 ).
      t91 = xsdbool( t92 = abap_false ).
      t90 = t91.
      IF t91 = abap_true.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE abap_bool.
        DATA t98 TYPE abap_bool.
        t98 = t12->is_after( i_p = t49 ).
        t97 = xsdbool( t98 = abap_false ).
        t96 = t97.
        IF t97 = abap_false.
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = VALUE abap_bool( ).
          DATA t104 TYPE REF TO zcl_lnt_position.
          t104 = t12.
          DATA t106 TYPE REF TO zcl_lnt_position.
          t106 = t70.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          DATA t110 TYPE f.
          t110 = t104->row.
          DATA t112 TYPE f.
          t112 = t106->row.
          t109 = xsdbool( t110 < t112 ).
          t108 = t109.
          IF t109 = abap_false.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            DATA t116 TYPE f.
            t116 = t104->row.
            DATA t118 TYPE f.
            t118 = t106->row.
            t115 = xsdbool( t116 = t118 ).
            t114 = t115.
            IF t115 = abap_true.
              DATA t120 TYPE abap_bool.
              DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t121 = t104->col.
              DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t123 = t106->col.
              t120 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
              t114 = t120.
            ENDIF.
            t108 = t114.
          ENDIF.
          t103 = t108.
          t102 = xsdbool( t103 = abap_false ).
          t96 = t102.
        ENDIF.
        t90 = t96.
      ENDIF.
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
      t126 = t44->find_all_expressions_recursive( i_type_9913 = t128 ).
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
        t136 = t129->concat_tokens( ).
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
        DATA(t146) = | IS SUPPLIED|.
        DATA(t147) = strlen( t134 ).
        IF t146 IS INITIAL.
          t144 = 0.
        ELSE.
          FIND t146 IN t134 MATCH OFFSET t144.
          IF sy-subrc <> 0.
            t144 = -1.
          ENDIF.
        ENDIF.
        DATA(t148) = 0.
        t143 = xsdbool( t144 >= t148 ).
        t142 = xsdbool( t143 = abap_false ).
        t141 = t142.
        IF t142 = abap_true.
          DATA(t150) = VALUE abap_bool( ).
          DATA(t151) = VALUE abap_bool( ).
          DATA(t152) = VALUE i( ).
          DATA(t154) = | IS REQUESTED|.
          DATA(t155) = strlen( t134 ).
          IF t154 IS INITIAL.
            t152 = 0.
          ELSE.
            FIND t154 IN t134 MATCH OFFSET t152.
            IF sy-subrc <> 0.
              t152 = -1.
            ENDIF.
          ENDIF.
          DATA(t156) = 0.
          t151 = xsdbool( t152 >= t156 ).
          t150 = xsdbool( t151 = abap_false ).
          t141 = t150.
        ENDIF.
        t140 = t141.
        IF t141 = abap_true.
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = VALUE abap_bool( ).
          DATA(t160) = VALUE i( ).
          DATA(t162) = | IS NOT SUPPLIED|.
          DATA(t163) = strlen( t134 ).
          IF t162 IS INITIAL.
            t160 = 0.
          ELSE.
            FIND t162 IN t134 MATCH OFFSET t160.
            IF sy-subrc <> 0.
              t160 = -1.
            ENDIF.
          ENDIF.
          DATA(t164) = 0.
          t159 = xsdbool( t160 >= t164 ).
          t158 = xsdbool( t159 = abap_false ).
          t140 = t158.
        ENDIF.
        t139 = t140.
        IF t140 = abap_true.
          DATA(t166) = VALUE abap_bool( ).
          DATA(t167) = VALUE abap_bool( ).
          DATA(t168) = VALUE i( ).
          DATA(t170) = | IS NOT REQUESTED|.
          DATA(t171) = strlen( t134 ).
          IF t170 IS INITIAL.
            t168 = 0.
          ELSE.
            FIND t170 IN t134 MATCH OFFSET t168.
            IF sy-subrc <> 0.
              t168 = -1.
            ENDIF.
          ENDIF.
          DATA(t172) = 0.
          t167 = xsdbool( t168 >= t172 ).
          t166 = xsdbool( t167 = abap_false ).
          t139 = t166.
        ENDIF.
        IF t139 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t174 TYPE REF TO zcl_lnt_position.
        DATA t177 TYPE REF TO zcl_lnt_abstract_token.
        t177 = t129->get_first_token( ).
        DATA t179 TYPE REF TO zcl_lnt_position.
        t179 = t177->start.
        t174 = t179.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        DATA t184 TYPE REF TO zcl_lnt_abstract_token.
        t184 = t129->get_last_token( ).
        t183 = t184.
        DATA t186 TYPE REF TO zcl_lnt_position.
        DATA t187 TYPE f.
        DATA t189 TYPE REF TO zcl_lnt_position.
        t189 = t183->start.
        DATA t191 TYPE f.
        t191 = t189->row.
        t187 = t191.
        DATA t193 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t194 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t196 TYPE REF TO zcl_lnt_position.
        t196 = t183->start.
        DATA t198 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t198 = t196->col.
        t194 = t198.
        DATA t200 TYPE f.
        DATA t202 TYPE string.
        t202 = t183->str.
        t200 = strlen( t202 ).
        DATA(t205) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t205->has = abap_true.
        t205->value = t200.
        t193 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t194 right = t205 op = `+` ).
        t186 = NEW zcl_lnt_position( i_row = t187 i_col = t193 ).
        DATA(t206) = VALUE abap_bool( ).
        DATA t207 TYPE abap_bool.
        DATA t208 TYPE abap_bool.
        t208 = t12->equals( i_p = t174 ).
        t207 = t208.
        IF t208 = abap_false.
          DATA t211 TYPE abap_bool.
          t211 = t12->is_after( i_p = t174 ).
          t207 = t211.
        ENDIF.
        t206 = t207.
        IF t207 = abap_true.
          DATA(t214) = VALUE abap_bool( ).
          DATA t215 TYPE REF TO zcl_lnt_position.
          t215 = t12.
          DATA t217 TYPE REF TO zcl_lnt_position.
          t217 = t186.
          DATA t219 TYPE abap_bool.
          DATA t220 TYPE abap_bool.
          DATA t221 TYPE f.
          t221 = t215->row.
          DATA t223 TYPE f.
          t223 = t217->row.
          t220 = xsdbool( t221 < t223 ).
          t219 = t220.
          IF t220 = abap_false.
            DATA t225 TYPE abap_bool.
            DATA t226 TYPE abap_bool.
            DATA t227 TYPE f.
            t227 = t215->row.
            DATA t229 TYPE f.
            t229 = t217->row.
            t226 = xsdbool( t227 = t229 ).
            t225 = t226.
            IF t226 = abap_true.
              DATA t231 TYPE abap_bool.
              DATA t232 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t232 = t215->col.
              DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t234 = t217->col.
              t231 = zlnt_runtime_numb_290eb04a9758=>compare( left = t232 right = t234 op = `<` ).
              t225 = t231.
            ENDIF.
            t219 = t225.
          ENDIF.
          t214 = t219.
          t206 = t214.
        ENDIF.
        IF t206 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD statement_start.
    DATA(t1) = i_reference.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t6 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    t8 = t1->position_7b94.
    DATA t10 TYPE string.
    t10 = t8->filename.
    t6 = t10.
    t4 = i_obj_1ed0->get_abap_file_by_name( i_filename = t6 ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    t15 = t4.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = xsdbool( t15 IS INITIAL ).
    IF t18 = abap_true.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t25 = t15->statements.
      t17 = t25.
    ENDIF.
    t13 = t17.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE abap_bool.
    t28 = xsdbool( t13 IS BOUND ).
    IF t28 = abap_true.
      t27 = t13.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t32.
      t27 = t32.
    ENDIF.
    t12 = t27.
    DATA t33 TYPE REF TO zcl_lnt_statement_node.
    DATA t34 TYPE REF TO object.
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
      DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
      t41 = t1->position_7b94.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      t45 = t41->token.
      DATA t47 TYPE REF TO zcl_lnt_position.
      t47 = t45->start.
      t38 = t47.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      t55 = t33->get_first_token( ).
      DATA t57 TYPE REF TO zcl_lnt_position.
      t57 = t55->start.
      t49 = t57.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      t65 = t33->get_last_token( ).
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t65.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      DATA t73 TYPE REF TO zcl_lnt_position.
      t73 = t68->start.
      DATA t75 TYPE f.
      t75 = t73->row.
      t71 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t80 TYPE REF TO zcl_lnt_position.
      t80 = t68->start.
      DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t82 = t80->col.
      t78 = t82.
      DATA t84 TYPE f.
      DATA t86 TYPE string.
      t86 = t68->str.
      t84 = strlen( t86 ).
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t77 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ).
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = t77 ).
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      t91 = t38->equals( i_p = t49 ).
      t90 = t91.
      IF t91 = abap_false.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE abap_bool.
        t95 = t38->is_after( i_p = t49 ).
        t94 = t95.
        IF t95 = abap_true.
          DATA(t98) = VALUE abap_bool( ).
          DATA t99 TYPE REF TO zcl_lnt_position.
          t99 = t38.
          DATA t101 TYPE REF TO zcl_lnt_position.
          t101 = t70.
          DATA t103 TYPE abap_bool.
          DATA t104 TYPE abap_bool.
          DATA t105 TYPE f.
          t105 = t99->row.
          DATA t107 TYPE f.
          t107 = t101->row.
          t104 = xsdbool( t105 < t107 ).
          t103 = t104.
          IF t104 = abap_false.
            DATA t109 TYPE abap_bool.
            DATA t110 TYPE abap_bool.
            DATA t111 TYPE f.
            t111 = t99->row.
            DATA t113 TYPE f.
            t113 = t101->row.
            t110 = xsdbool( t111 = t113 ).
            t109 = t110.
            IF t110 = abap_true.
              DATA t115 TYPE abap_bool.
              DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t116 = t99->col.
              DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t118 = t101->col.
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
        result = t49.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( me->g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_clr_exprtng_prmtrs_cnf( me->g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_clr_exprtng_prmtrs_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_clr_exprtng_prmtrs_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cl_ex_pr_ts_cl_ex_pr( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_clr_exprtng_prmtrs.
    DATA(t3) = i_reg_f149.
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
