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
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
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
    DATA(t33) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
    t33 = t33 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
    t33 = t33 && |  METHOD foo.\n    CLEAR ev_result.\n    ev_result = ev_result|.
    t33 = t33 && | + 1.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |clear_exporting_parameters| i_title = |Clear EXPORTING parameters| i_short_description = t6 i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_ex_pr_ts_cl_ex_pr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_445691f4ed04( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
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
    t3 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
    ENDIF.
    IF t2 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA t13 TYPE REF TO object.
    t13 = t1.
    t11 ?= t13.
    t9 = t11->parsed.
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
      t21 = t16->statements.
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
        DATA t32 TYPE REF TO zif_lnt_statement.
        t32 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t38) = me->reg.
    DATA t39 TYPE REF TO zcl_lnt_abap_object.
    DATA t41 TYPE REF TO object.
    t41 = t1.
    t39 ?= t41.
    t35 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t38 i_object_19cd = t39 )->run( ).
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t44 = t35->zlnt_view_read_sr_bd188c319c03( ).
    t44->load( ).
    IF xsdbool( lines( t44->items ) > 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    DATA t50 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t50 = t35->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
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
    t6 = t1->get_identifier( )->stype.
    t5 = xsdbool( t6 = |method| ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t11 TYPE string.
      t11 = t1->get_identifier( )->stype.
      t4 = xsdbool( t11 = |function| ).
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
    t4 = me->collect_references( i_node = t1 ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = me->find_exporting_by_reference( i_node = t1 i_references = t4 ).
    t7->load( ).
    IF xsdbool( lines( t7->items ) = 0 ) = abap_true.
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
      t21 = me->check_parameter( i_parameter_5406 = t16 i_references = t4 i_obj_1ed0 = t2 ).
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF xsdbool( xsdbool( t21 IS INITIAL ) = abap_false ) = abap_true.
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
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_set__288f5ae381ad.
    DATA(t7) = NEW zlnt_runtime_set__288f5ae381ad( ).
    DATA t9 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    t9 = t1->get_data( )->vars.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
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
      t20 = t9->get( p0 = t17 ).
      t13->load( ).
      APPEND t20 TO t13->items.
      t13->save( ).
    ENDDO.
    t5 = t7->fromarray( p0 = t13 ).
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
      DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
      t32 = t26->resolved.
      IF xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_typed_identifier ) = abap_true.
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
      t46 = t41->meta.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      t54 = t46->includes( p0 = |exporting| ).
      t53 = t54.
      IF t54 = abap_false.
        t53 = t46->includes( p0 = |function_module_exporting| ).
      ENDIF.
      DATA t60 TYPE abap_bool.
      DATA t61 TYPE abap_bool.
      t61 = xsdbool( t53 = abap_false ).
      t60 = t61.
      IF t61 = abap_false.
        t60 = xsdbool( t46->includes( p0 = |pass_by_value| ) = abap_true ).
      ENDIF.
      IF t60 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t69) = VALUE abap_bool( ).
        DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t71 = me->conf->zlnt_view_read_sr_445691f4ed04( ).
        DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t74.
        IF xsdbool( t71 IS INITIAL ) = abap_true.
          CLEAR t74.
        ELSE.
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
            DATA t94 TYPE string.
            t94 = t91->token->str.
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
            ELSE.
              IF t105 > t106 - t104.
                t105 = t106 - t104.
              ENDIF.
              t102 = t103+t104(t105).
            ENDIF.
            IF xsdbool( t102 = |!| ) = abap_true.
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
              ELSE.
                IF t114 > t117 - t113.
                  t114 = t117 - t113.
                ENDIF.
                t111 = t109+t113(t114).
              ENDIF.
              t94 = t111.
            ENDIF.
            t90 = t94.
            DATA(t119) = strlen( t90 ).
            t89 = t90.
            IF t89 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t89 TO UPPER CASE.
            ELSE.
              t89 = zlnt_runtime_uppe_91169605024d=>full( t89 ).
            ENDIF.
            IF xsdbool( t86 = t89 ) = abap_true.
              t79 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t122) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t122->has = abap_true.
          t122->value = t79.
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
      t123 = t41->type_cba0.
      DATA t129 TYPE abap_bool.
      DATA t130 TYPE abap_bool.
      t130 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_void_type ).
      t129 = t130.
      IF t130 = abap_false.
        t129 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_unknown_type ).
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
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->get_data( )->references.
    t2 = t5->concat( p0 = t9 ).
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
      t2->load( ).
      t20 = lines( t2->items ).
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
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        t26 = t1.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        t28 = t9->resolved.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE REF TO zcl_lnt_position.
        t34 = t28->token->start.
        DATA t47 TYPE REF TO zcl_lnt_position.
        t47 = t26->token->start.
        t33 = t34->equals( i_p = t47 ).
        t32 = t33.
        IF t33 = abap_true.
          t32 = xsdbool( t28->filename = t26->filename ).
        ENDIF.
        t15 = xsdbool( t32 = abap_false ).
      ENDIF.
      t14 = t15.
      IF t15 = abap_false.
        DATA(t59) = VALUE string( ).
        DATA(t60) = VALUE string( ).
        DATA t61 TYPE REF TO zcl_lnt_fi_identifier.
        t61 = t1.
        DATA t64 TYPE string.
        t64 = t61->token->str.
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
        ELSE.
          IF t75 > t76 - t74.
            t75 = t76 - t74.
          ENDIF.
          t72 = t73+t74(t75).
        ENDIF.
        IF xsdbool( t72 = |!| ) = abap_true.
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
          ELSE.
            IF t84 > t87 - t83.
              t84 = t87 - t83.
            ENDIF.
            t81 = t79+t83(t84).
          ENDIF.
          t64 = t81.
        ENDIF.
        t60 = t64.
        DATA(t89) = strlen( t60 ).
        t59 = t60.
        IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t59 TO UPPER CASE.
        ELSE.
          t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
        ENDIF.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA t97 TYPE string.
        t97 = t9->resolved->token->str.
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
        ELSE.
          IF t108 > t109 - t107.
            t108 = t109 - t107.
          ENDIF.
          t105 = t106+t107(t108).
        ENDIF.
        IF xsdbool( t105 = |!| ) = abap_true.
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
          ELSE.
            IF t117 > t120 - t116.
              t117 = t120 - t116.
            ENDIF.
            t114 = t112+t116(t117).
          ENDIF.
          t97 = t114.
        ENDIF.
        t91 = t97.
        DATA(t122) = strlen( t91 ).
        t90 = t91.
        IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t90 TO UPPER CASE.
        ELSE.
          t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
        ENDIF.
        t14 = xsdbool( t59 <> t90 ).
      ENDIF.
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t123 TYPE REF TO zcl_lnt_position.
      t123 = t9->position_7b94->token->start.
      IF xsdbool( t9->reference_type = |Read From| ) = abap_true.
        IF me->is_supplied_or_requested( i_reference = t9 i_obj_1ed0 = t3 ) = abap_true.
          CONTINUE.
        ENDIF.
        IF me->is_reference_or_assign( i_reference = t9 i_obj_1ed0 = t3 ) = abap_true.
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = VALUE abap_bool( ).
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          t145 = xsdbool( t6 IS INITIAL ).
          t144 = t145.
          IF t145 = abap_false.
            DATA t153 TYPE REF TO zcl_lnt_position.
            t153 = t123.
            DATA t155 TYPE REF TO zcl_lnt_position.
            t155 = t6->position_7b94->token->start.
            DATA t167 TYPE abap_bool.
            DATA t168 TYPE abap_bool.
            t168 = xsdbool( t153->row < t155->row ).
            t167 = t168.
            IF t168 = abap_false.
              DATA t173 TYPE abap_bool.
              DATA t174 TYPE abap_bool.
              t174 = xsdbool( t153->row = t155->row ).
              t173 = t174.
              IF t174 = abap_true.
                DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t180 = t153->col.
                DATA t182 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t182 = t155->col.
                t173 = zlnt_runtime_numb_290eb04a9758=>compare( left = t180 right = t182 op = `<` ).
              ENDIF.
              t167 = t173.
            ENDIF.
            t144 = t167.
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
          DATA t197 TYPE REF TO zcl_lnt_position.
          t197 = t123.
          DATA t199 TYPE REF TO zcl_lnt_position.
          t199 = t4->position_7b94->token->start.
          DATA t211 TYPE abap_bool.
          DATA t212 TYPE abap_bool.
          t212 = xsdbool( t197->row < t199->row ).
          t211 = t212.
          IF t212 = abap_false.
            DATA t217 TYPE abap_bool.
            DATA t218 TYPE abap_bool.
            t218 = xsdbool( t197->row = t199->row ).
            t217 = t218.
            IF t218 = abap_true.
              DATA t224 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t224 = t197->col.
              DATA t226 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t226 = t199->col.
              t217 = zlnt_runtime_numb_290eb04a9758=>compare( left = t224 right = t226 op = `<` ).
            ENDIF.
            t211 = t217.
          ENDIF.
          t188 = t211.
        ENDIF.
        IF t188 = abap_true.
          t4 = t9.
        ENDIF.
      ELSE.
        IF xsdbool( t9->reference_type = |Write To| ) = abap_true.
          DATA(t236) = VALUE abap_bool( ).
          DATA(t237) = VALUE abap_bool( ).
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t240.
          t237 = xsdbool( t6 IS INITIAL ).
          t236 = t237.
          IF t237 = abap_false.
            DATA t245 TYPE REF TO zcl_lnt_position.
            t245 = t123.
            DATA t247 TYPE REF TO zcl_lnt_position.
            t247 = t6->position_7b94->token->start.
            DATA t259 TYPE abap_bool.
            DATA t260 TYPE abap_bool.
            t260 = xsdbool( t245->row < t247->row ).
            t259 = t260.
            IF t260 = abap_false.
              DATA t265 TYPE abap_bool.
              DATA t266 TYPE abap_bool.
              t266 = xsdbool( t245->row = t247->row ).
              t265 = t266.
              IF t266 = abap_true.
                DATA t272 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t272 = t245->col.
                DATA t274 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                t274 = t247->col.
                t265 = zlnt_runtime_numb_290eb04a9758=>compare( left = t272 right = t274 op = `<` ).
              ENDIF.
              t259 = t265.
            ENDIF.
            t236 = t259.
          ENDIF.
          IF t236 = abap_true.
            t6 = t9.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t288 TYPE REF TO zcl_lnt_position.
    t288 = me->statement_start( i_reference = t4 i_obj_1ed0 = t3 ).
    DATA t293 TYPE REF TO zcl_lnt_position.
    DATA t294 TYPE REF TO zcl_lnt_position.
    DATA t298 TYPE REF TO zcl_lnt_position.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t294 = me->statement_start( i_reference = t6 i_obj_1ed0 = t3 ).
    ENDIF.
    t293 = t294.
    DATA(t307) = VALUE abap_bool( ).
    DATA(t308) = VALUE abap_bool( ).
    DATA(t309) = VALUE abap_bool( ).
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t309 = xsdbool( xsdbool( t293 IS INITIAL ) = abap_false ).
    t308 = t309.
    IF t309 = abap_true.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t308 = xsdbool( xsdbool( t288 IS INITIAL ) = abap_false ).
    ENDIF.
    t307 = t308.
    IF t308 = abap_true.
      DATA t326 TYPE REF TO zcl_lnt_position.
      t326 = t293.
      DATA t329 TYPE REF TO zcl_lnt_position.
      t329 = t288.
      DATA t332 TYPE abap_bool.
      DATA t333 TYPE abap_bool.
      t333 = xsdbool( t326->row < t329->row ).
      t332 = t333.
      IF t333 = abap_false.
        DATA t338 TYPE abap_bool.
        DATA t339 TYPE abap_bool.
        t339 = xsdbool( t326->row = t329->row ).
        t338 = t339.
        IF t339 = abap_true.
          DATA t345 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t345 = t326->col.
          DATA t347 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t347 = t329->col.
          t338 = zlnt_runtime_numb_290eb04a9758=>compare( left = t345 right = t347 op = `<` ).
        ENDIF.
        t332 = t338.
      ENDIF.
      t307 = t332.
    ENDIF.
    IF t307 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t350) = VALUE string( ).
    DATA(t352) = VALUE string( ).
    DATA(t353) = |EXPORTING parameter "|.
    DATA(t354) = VALUE string( ).
    DATA(t355) = VALUE string( ).
    DATA t356 TYPE REF TO zcl_lnt_fi_identifier.
    t356 = t1.
    DATA t359 TYPE string.
    t359 = t356->token->str.
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
    ELSE.
      IF t370 > t371 - t369.
        t370 = t371 - t369.
      ENDIF.
      t367 = t368+t369(t370).
    ENDIF.
    IF xsdbool( t367 = |!| ) = abap_true.
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
      ELSE.
        IF t379 > t382 - t378.
          t379 = t382 - t378.
        ENDIF.
        t376 = t374+t378(t379).
      ENDIF.
      t359 = t376.
    ENDIF.
    t355 = t359.
    DATA(t384) = strlen( t355 ).
    t354 = t355.
    TRANSLATE t354 TO LOWER CASE.
    DATA(t385) = strlen( t353 ).
    t352 = |{ t353 }{ t354 }|.
    DATA(t387) = strlen( t352 ).
    t350 = |{ t352 }{ |" read before it is cleared or assigned| }|.
    DATA t391 TYPE REF TO zcl_lnt_fi_identifier.
    t391 = t4->position_7b94.
    DATA(t395) = VALUE string( ).
    DATA t396 TYPE REF TO zcl_lnt_irule_metadata.
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
    CREATE OBJECT t413.
    t413->load( ).
    APPEND |Styleguide| TO t413->items.
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
    DATA(t428) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS foo EXPO|.
    t428 = t428 && |RTING ev_result TYPE i.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n|.
    t428 = t428 && |  METHOD foo.\n    CLEAR ev_result.\n    ev_result = ev_result|.
    t428 = t428 && | + 1.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t429->has = abap_true.
    t429->value = t428.
    DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t396 = NEW zcl_lnt_irule_metadata( i_key = |clear_exporting_parameters| i_title = |Clear EXPORTING parameters| i_short_description = t401 i_bad_example = t419 i_good_example = t429 i_extended_information = t403 i_tags = t409 i_pragma = t431 i_pseudo_comment = t433 ).
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
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t443 ).
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t445 ).
    ENDIF.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t447 ).
    ENDIF.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t449 ).
    ENDIF.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t451 ).
    ENDIF.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t453 ).
    ENDIF.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t455 ).
    ENDIF.
    t395 = t396->key.
    DATA t458 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    result = zcl_lnt_issue=>at_identifier( i_identifier = t391 i_message_26cb = t350 i_key = t395 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t458 ).

  ENDMETHOD.

  METHOD is_reference_or_assign.
    DATA(t1) = i_reference.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t10 TYPE string.
    t10 = t1->position_7b94->filename.
    t4 = i_obj_1ed0->get_abap_file_by_name( i_filename = t10 ).
    DATA t12 TYPE REF TO zcl_lnt_position.
    t12 = t1->position_7b94->token->start.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    t26 = t4.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t26 IS INITIAL ) = abap_true.
    ELSE.
      t28 = t26->statements.
    ENDIF.
    t24 = t28.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t24 IS BOUND ) = abap_true.
      t38 = t24.
    ELSE.
      CREATE OBJECT t38.
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
      t49 = t44->get_first_token( )->start.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t44->get_last_token( ).
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      t71 = t68->start->row.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t78 = t68->start->col.
      DATA t84 TYPE f.
      t84 = strlen( t68->str ).
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ) ).
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      t91 = xsdbool( t12->equals( i_p = t49 ) = abap_false ).
      t90 = t91.
      IF t91 = abap_true.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE abap_bool.
        t97 = xsdbool( t12->is_after( i_p = t49 ) = abap_false ).
        t96 = t97.
        IF t97 = abap_false.
          DATA t104 TYPE REF TO zcl_lnt_position.
          t104 = t12.
          DATA t106 TYPE REF TO zcl_lnt_position.
          t106 = t70.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          t109 = xsdbool( t104->row < t106->row ).
          t108 = t109.
          IF t109 = abap_false.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            t115 = xsdbool( t104->row = t106->row ).
            t114 = t115.
            IF t115 = abap_true.
              DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t121 = t104->col.
              DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t123 = t106->col.
              t114 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
            ENDIF.
            t108 = t114.
          ENDIF.
          t96 = xsdbool( t108 = abap_false ).
        ENDIF.
        t90 = t96.
      ENDIF.
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t126 TYPE REF TO zif_lnt_statement.
      t126 = t44->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA t129 TYPE abap_bool.
      DATA t130 TYPE abap_bool.
      t130 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_get_reference ).
      t129 = t130.
      IF t130 = abap_false.
        t129 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_assign ).
      ENDIF.
      result = t129.
      RETURN.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_supplied_or_requested.
    DATA(t1) = i_reference.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA t10 TYPE string.
    t10 = t1->position_7b94->filename.
    t4 = i_obj_1ed0->get_abap_file_by_name( i_filename = t10 ).
    DATA t12 TYPE REF TO zcl_lnt_position.
    t12 = t1->position_7b94->token->start.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    t26 = t4.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t26 IS INITIAL ) = abap_true.
    ELSE.
      t28 = t26->statements.
    ENDIF.
    t24 = t28.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t24 IS BOUND ) = abap_true.
      t38 = t24.
    ELSE.
      CREATE OBJECT t38.
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
      t49 = t44->get_first_token( )->start.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t44->get_last_token( ).
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      t71 = t68->start->row.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t78 = t68->start->col.
      DATA t84 TYPE f.
      t84 = strlen( t68->str ).
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ) ).
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      t91 = xsdbool( t12->equals( i_p = t49 ) = abap_false ).
      t90 = t91.
      IF t91 = abap_true.
        DATA t96 TYPE abap_bool.
        DATA t97 TYPE abap_bool.
        t97 = xsdbool( t12->is_after( i_p = t49 ) = abap_false ).
        t96 = t97.
        IF t97 = abap_false.
          DATA t104 TYPE REF TO zcl_lnt_position.
          t104 = t12.
          DATA t106 TYPE REF TO zcl_lnt_position.
          t106 = t70.
          DATA t108 TYPE abap_bool.
          DATA t109 TYPE abap_bool.
          t109 = xsdbool( t104->row < t106->row ).
          t108 = t109.
          IF t109 = abap_false.
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            t115 = xsdbool( t104->row = t106->row ).
            t114 = t115.
            IF t115 = abap_true.
              DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t121 = t104->col.
              DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t123 = t106->col.
              t114 = zlnt_runtime_numb_290eb04a9758=>compare( left = t121 right = t123 op = `<` ).
            ENDIF.
            t108 = t114.
          ENDIF.
          t96 = xsdbool( t108 = abap_false ).
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
        t142 = xsdbool( xsdbool( t144 >= 0 ) = abap_false ).
        t141 = t142.
        IF t142 = abap_true.
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
          t141 = xsdbool( xsdbool( t152 >= 0 ) = abap_false ).
        ENDIF.
        t140 = t141.
        IF t141 = abap_true.
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
          t140 = xsdbool( xsdbool( t160 >= 0 ) = abap_false ).
        ENDIF.
        t139 = t140.
        IF t140 = abap_true.
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
          t139 = xsdbool( xsdbool( t168 >= 0 ) = abap_false ).
        ENDIF.
        IF t139 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t174 TYPE REF TO zcl_lnt_position.
        t174 = t129->get_first_token( )->start.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        t183 = t129->get_last_token( ).
        DATA t186 TYPE REF TO zcl_lnt_position.
        DATA t187 TYPE f.
        t187 = t183->start->row.
        DATA t194 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t194 = t183->start->col.
        DATA t200 TYPE f.
        t200 = strlen( t183->str ).
        DATA(t205) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t205->has = abap_true.
        t205->value = t200.
        t186 = NEW zcl_lnt_position( i_row = t187 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t194 right = t205 op = `+` ) ).
        DATA(t206) = VALUE abap_bool( ).
        DATA t207 TYPE abap_bool.
        DATA t208 TYPE abap_bool.
        t208 = t12->equals( i_p = t174 ).
        t207 = t208.
        IF t208 = abap_false.
          t207 = t12->is_after( i_p = t174 ).
        ENDIF.
        t206 = t207.
        IF t207 = abap_true.
          DATA t215 TYPE REF TO zcl_lnt_position.
          t215 = t12.
          DATA t217 TYPE REF TO zcl_lnt_position.
          t217 = t186.
          DATA t219 TYPE abap_bool.
          DATA t220 TYPE abap_bool.
          t220 = xsdbool( t215->row < t217->row ).
          t219 = t220.
          IF t220 = abap_false.
            DATA t225 TYPE abap_bool.
            DATA t226 TYPE abap_bool.
            t226 = xsdbool( t215->row = t217->row ).
            t225 = t226.
            IF t226 = abap_true.
              DATA t232 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t232 = t215->col.
              DATA t234 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t234 = t217->col.
              t225 = zlnt_runtime_numb_290eb04a9758=>compare( left = t232 right = t234 op = `<` ).
            ENDIF.
            t219 = t225.
          ENDIF.
          t206 = t219.
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
    DATA t10 TYPE string.
    t10 = t1->position_7b94->filename.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    t15 = i_obj_1ed0->get_abap_file_by_name( i_filename = t10 ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
    ELSE.
      t17 = t15->statements.
    ENDIF.
    t13 = t17.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t13 IS BOUND ) = abap_true.
      t27 = t13.
    ELSE.
      CREATE OBJECT t27.
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
      t38 = t1->position_7b94->token->start.
      DATA t49 TYPE REF TO zcl_lnt_position.
      t49 = t33->get_first_token( )->start.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t33->get_last_token( ).
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE f.
      t71 = t68->start->row.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t78 = t68->start->col.
      DATA t84 TYPE f.
      t84 = strlen( t68->str ).
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t70 = NEW zcl_lnt_position( i_row = t71 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ) ).
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
          DATA t99 TYPE REF TO zcl_lnt_position.
          t99 = t38.
          DATA t101 TYPE REF TO zcl_lnt_position.
          t101 = t70.
          DATA t103 TYPE abap_bool.
          DATA t104 TYPE abap_bool.
          t104 = xsdbool( t99->row < t101->row ).
          t103 = t104.
          IF t104 = abap_false.
            DATA t109 TYPE abap_bool.
            DATA t110 TYPE abap_bool.
            t110 = xsdbool( t99->row = t101->row ).
            t109 = t110.
            IF t110 = abap_true.
              DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t116 = t99->col.
              DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t118 = t101->col.
              t109 = zlnt_runtime_numb_290eb04a9758=>compare( left = t116 right = t118 op = `<` ).
            ENDIF.
            t103 = t109.
          ENDIF.
          t94 = t103.
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
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_cl_ex_pr_ts_cl_ex_pr( i_reg_f149 = t3 ).

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
