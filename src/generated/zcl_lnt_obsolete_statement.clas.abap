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
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_obsolete_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_obslt_sttmnt_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |obsolete_statement|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Obsolete statements|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for usages of certain obsolete statements|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Styleguide|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |Quickfix|.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t12.
      t11 = t20.
      t9 = t11.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t8 = t9.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
      t25 = t25 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
      t25 = t25 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
      t25 = t25 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
      t25 = t25 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
      t25 = t25 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
      t25 = t25 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
      t25 = t25 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
      t25 = t25 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
      t25 = t25 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
      t25 = t25 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
      t25 = t25 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
      t25 = t25 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
      t25 = t25 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
      t25 = t25 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
      t25 = t25 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
      t25 = t25 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
      t25 = t25 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
      t25 = t25 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
      t25 = t25 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
      t25 = t25 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
      t25 = t25 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
      t25 = t25 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
      t25 = t25 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
      t25 = t25 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
      t25 = t25 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
      t25 = t25 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
      t25 = t25 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
      t25 = t25 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
      t25 = t25 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
      t25 = t25 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
      t25 = t25 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
      t25 = t25 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
      t25 = t25 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
      t25 = t25 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
      t25 = t25 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
      t25 = t25 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
      t25 = t25 && |ect_client_obsolete.html|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    t22 = t23.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
      t31 = t31 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t22 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |extendedInformation|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |badExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ob_st_ts_ob_stt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ob_st_ts_ob_stt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ob_st_ts_ob_stt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA(t9) = t6.
    t8 = t9->statements.
    t5 = t8.
    t4 = t5.
    DATA t10 TYPE REF TO zcl_lnt_position.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_position.
    CLEAR t11.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_configuration.
    CLEAR t14.
    DATA(t15) = me->reg.
    t14 = t15->get_config( ).
    t13 = t14->get_release( ).
    t12 = t13.
    DATA(t16) = t4.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    DATA(t19) = VALUE i( ).
    DO.
      t16->load( ).
      IF t19 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t16->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE REF TO zif_lnt_statement.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_statement.
      CLEAR t23.
      DATA(t24) = t17.
      t23 = t24->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t22 = t23.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t22.
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_st_refresh ).
      t33 = t34.
      IF t34 = abap_true.
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = me->conf.
        t36 = t37->zlnt_view_read_sr_e5182c9cb5b0( ).
        t33 = t36.
      ENDIF.
      t32 = t33.
      IF t33 = abap_false.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = t22.
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_compute ).
        t38 = t39.
        IF t39 = abap_true.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = me->conf.
          t41 = t42->zlnt_view_read_sr_74d4d49d4745( ).
          t38 = t41.
        ENDIF.
        t32 = t38.
      ENDIF.
      t31 = t32.
      IF t32 = abap_false.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = t22.
        t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_st_add ).
        t43 = t44.
        IF t44 = abap_true.
          DATA(t46) = VALUE abap_bool( ).
          DATA(t47) = me->conf.
          t46 = t47->zlnt_view_read_sr_e1b5545ca094( ).
          t43 = t46.
        ENDIF.
        t31 = t43.
      ENDIF.
      t30 = t31.
      IF t31 = abap_false.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = t22.
        t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_st_subtract ).
        t48 = t49.
        IF t49 = abap_true.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = me->conf.
          t51 = t52->zlnt_view_read_sr_7cd00c4cd3d2( ).
          t48 = t51.
        ENDIF.
        t30 = t48.
      ENDIF.
      t29 = t30.
      IF t30 = abap_false.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = t22.
        t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_class_definition_load ).
        t54 = t55.
        IF t55 = abap_true.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = me->conf.
          t57 = t58->zlnt_view_read_sr_79f97f0da28d( ).
          t54 = t57.
        ENDIF.
        t53 = t54.
        IF t54 = abap_true.
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = t12.
          DATA t61 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t62.
          DATA t63 TYPE REF TO zlnt_runtime_map__201f3699a39e.
          CLEAR t63.
          IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
            zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
          ENDIF.
          t63 = zcl_lnt_version_module=>release_b8cd.
          DATA(t64) = |v702|.
          t62 = t63->get( p0 = t64 ).
          t61 = t62.
          t59 = zcl_lnt_version_module=>release_at_least( i_running = t60 i_required = t61 ).
          t53 = t59.
        ENDIF.
        t29 = t53.
      ENDIF.
      t28 = t29.
      IF t29 = abap_false.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t22.
        t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_interface_load ).
        t66 = t67.
        IF t67 = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = me->conf.
          t69 = t70->zlnt_view_read_sr_79f97f0da28d( ).
          t66 = t69.
        ENDIF.
        t65 = t66.
        IF t66 = abap_true.
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = t12.
          DATA t73 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t73.
          DATA t74 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t74.
          DATA t75 TYPE REF TO zlnt_runtime_map__201f3699a39e.
          CLEAR t75.
          IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
            zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
          ENDIF.
          t75 = zcl_lnt_version_module=>release_b8cd.
          DATA(t76) = |v702|.
          t74 = t75->get( p0 = t76 ).
          t73 = t74.
          t71 = zcl_lnt_version_module=>release_at_least( i_running = t72 i_required = t73 ).
          t65 = t71.
        ENDIF.
        t28 = t65.
      ENDIF.
      t27 = t28.
      IF t28 = abap_false.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = VALUE abap_bool( ).
        DATA(t79) = t22.
        t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_st_multiply ).
        t77 = t78.
        IF t78 = abap_true.
          DATA(t80) = VALUE abap_bool( ).
          DATA(t81) = me->conf.
          t80 = t81->zlnt_view_read_sr_53e2daddf5c0( ).
          t77 = t80.
        ENDIF.
        t27 = t77.
      ENDIF.
      t26 = t27.
      IF t27 = abap_false.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = t22.
        t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_st_divide ).
        t82 = t83.
        IF t83 = abap_true.
          DATA(t85) = VALUE abap_bool( ).
          DATA(t86) = me->conf.
          t85 = t86->zlnt_view_read_sr_199e22f3d1e2( ).
          t82 = t85.
        ENDIF.
        t26 = t82.
      ENDIF.
      t25 = t26.
      IF t26 = abap_false.
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = VALUE abap_bool( ).
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = t22.
        t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_move ).
        t90 = t91.
        IF t91 = abap_true.
          DATA(t93) = VALUE abap_bool( ).
          DATA(t94) = me->conf.
          t93 = t94->zlnt_view_read_sr_f1ab3a745d20( ).
          t90 = t93.
        ENDIF.
        t89 = t90.
        IF t90 = abap_true.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = VALUE string( ).
          DATA(t97) = VALUE string( ).
          DATA t98 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t98.
          DATA t99 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t99.
          DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t100.
          DATA(t101) = t17.
          t100 = t101->get_tokens( ).
          DATA t102 TYPE REF TO object.
          CLEAR t102.
          t100->load( ).
          CLEAR t102.
          READ TABLE t100->items INDEX 1 INTO t102.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          CLEAR t99.
          IF t102 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t103 ?= t102.
            DATA t104 TYPE REF TO object.
            CLEAR t104.
            t104 = t103->as_ref( ).
            t99 ?= t104.
          ELSE.
            t99 ?= t102.
          ENDIF.
          t98 = t99.
          DATA(t105) = VALUE string( ).
          DATA(t106) = t98.
          t105 = t106->str.
          t97 = t105.
          DATA(t107) = strlen( t97 ).
          t96 = t97.
          IF t96 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t96 TO UPPER CASE.
          ELSE.
            t96 = zlnt_runtime_uppe_91169605024d=>full( t96 ).
          ENDIF.
          DATA(t108) = |MOVE|.
          t95 = xsdbool( t96 = t108 ).
          t89 = t95.
        ENDIF.
        t88 = t89.
        IF t89 = abap_true.
          DATA(t109) = VALUE abap_bool( ).
          DATA(t110) = VALUE string( ).
          DATA t111 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t111.
          DATA t112 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t113.
          DATA(t114) = t17.
          t113 = t114->get_tokens( ).
          DATA t115 TYPE REF TO object.
          CLEAR t115.
          t113->load( ).
          CLEAR t115.
          READ TABLE t113->items INDEX 2 INTO t115.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          CLEAR t112.
          IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t116 ?= t115.
            DATA t117 TYPE REF TO object.
            CLEAR t117.
            t117 = t116->as_ref( ).
            t112 ?= t117.
          ELSE.
            t112 ?= t115.
          ENDIF.
          t111 = t112.
          DATA(t118) = VALUE string( ).
          DATA(t119) = t111.
          t118 = t119->str.
          t110 = t118.
          DATA(t120) = |-|.
          t109 = xsdbool( t110 <> t120 ).
          t88 = t109.
        ENDIF.
        t87 = t88.
        IF t88 = abap_true.
          DATA(t121) = VALUE abap_bool( ).
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE string( ).
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t124.
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t126.
          DATA(t127) = t17.
          t126 = t127->get_tokens( ).
          DATA t128 TYPE REF TO object.
          CLEAR t128.
          t126->load( ).
          CLEAR t128.
          READ TABLE t126->items INDEX 2 INTO t128.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          CLEAR t125.
          IF t128 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t129 ?= t128.
            DATA t130 TYPE REF TO object.
            CLEAR t130.
            t130 = t129->as_ref( ).
            t125 ?= t130.
          ELSE.
            t125 ?= t128.
          ENDIF.
          t124 = t125.
          DATA(t131) = VALUE string( ).
          DATA(t132) = t124.
          t131 = t132->str.
          t123 = t131.
          DATA(t133) = strlen( t123 ).
          t122 = t123.
          IF t122 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t122 TO UPPER CASE.
          ELSE.
            t122 = zlnt_runtime_uppe_91169605024d=>full( t122 ).
          ENDIF.
          DATA(t134) = |EXACT|.
          t121 = xsdbool( t122 <> t134 ).
          t87 = t121.
        ENDIF.
        t25 = t87.
      ENDIF.
      IF t25 = abap_true.
        DATA(t135) = VALUE abap_bool( ).
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE REF TO zcl_lnt_position.
        CLEAR t138.
        DATA(t139) = t10.
        t138 = t139.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        t140 = t141.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = t138.
        IF t143 IS INITIAL.
          t142 = abap_true.
        ENDIF.
        t137 = t142.
        t136 = t137.
        IF t137 = abap_false.
          DATA(t144) = VALUE abap_bool( ).
          DATA t145 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t145.
          DATA t146 TYPE REF TO zcl_lnt_position.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_position.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t148.
          DATA(t149) = t17.
          t148 = t149.
          DATA t150 TYPE REF TO zcl_lnt_position.
          CLEAR t150.
          DATA t151 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t151.
          DATA t152 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t152.
          DATA(t153) = t148.
          t152 = t153->get_first_token( ).
          t151 = t152.
          DATA t154 TYPE REF TO zcl_lnt_position.
          CLEAR t154.
          DATA(t155) = t151.
          t154 = t155->start.
          t150 = t154.
          t147 = t150.
          t146 = t147.
          DATA t156 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t156.
          DATA(t157) = t146.
          t156 = t157->col.
          t145 = t156.
          DATA t158 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t158.
          DATA t159 TYPE REF TO zcl_lnt_position.
          CLEAR t159.
          DATA t160 TYPE REF TO zcl_lnt_position.
          CLEAR t160.
          DATA(t161) = t10.
          t160 = t161.
          t159 = t160.
          DATA t162 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t162.
          DATA(t163) = t159.
          t162 = t163->col.
          t158 = t162.
          t144 = zlnt_runtime_numb_290eb04a9758=>compare( left = t145 right = t158 op = `!=` ).
          t136 = t144.
        ENDIF.
        t135 = t136.
        IF t136 = abap_false.
          DATA(t164) = VALUE abap_bool( ).
          DATA(t165) = VALUE f( ).
          DATA t166 TYPE REF TO zcl_lnt_position.
          CLEAR t166.
          DATA t167 TYPE REF TO zcl_lnt_position.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t168.
          DATA(t169) = t17.
          t168 = t169.
          DATA t170 TYPE REF TO zcl_lnt_position.
          CLEAR t170.
          DATA t171 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t171.
          DATA t172 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t172.
          DATA(t173) = t168.
          t172 = t173->get_first_token( ).
          t171 = t172.
          DATA t174 TYPE REF TO zcl_lnt_position.
          CLEAR t174.
          DATA(t175) = t171.
          t174 = t175->start.
          t170 = t174.
          t167 = t170.
          t166 = t167.
          DATA(t176) = VALUE f( ).
          DATA(t177) = t166.
          t176 = t177->row.
          t165 = t176.
          DATA(t178) = VALUE f( ).
          DATA t179 TYPE REF TO zcl_lnt_position.
          CLEAR t179.
          DATA t180 TYPE REF TO zcl_lnt_position.
          CLEAR t180.
          DATA(t181) = t10.
          t180 = t181.
          t179 = t180.
          DATA(t182) = VALUE f( ).
          DATA(t183) = t179.
          t182 = t183->row.
          t178 = t182.
          t164 = xsdbool( t165 <> t178 ).
          t135 = t164.
        ENDIF.
        IF t135 = abap_true.
          DATA(t184) = VALUE string( ).
          DATA(t185) = VALUE string( ).
          DATA(t186) = VALUE string( ).
          DATA(t187) = |Statement "|.
          DATA(t188) = VALUE string( ).
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t189.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          DATA(t191) = t17.
          t190 = t191->get_first_token( ).
          t189 = t190.
          DATA(t192) = VALUE string( ).
          DATA(t193) = t189.
          t192 = t193->str.
          t188 = t192.
          DATA(t194) = strlen( t187 ).
          t186 = |{ t187 }{ t188 }|.
          DATA(t195) = |" is obsolete|.
          DATA(t196) = strlen( t186 ).
          t185 = |{ t186 }{ t195 }|.
          t184 = t185.
          DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t197.
          DATA t198 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t198.
          DATA(t199) = t1.
          DATA(t200) = t22.
          DATA(t201) = t17.
          t198 = me->get_fix( i_file = t199 i_statement = t200 i_statement_node = t201 ).
          t197 = t198.
          DATA t202 TYPE REF TO zcl_lnt_issue.
          CLEAR t202.
          DATA t203 TYPE REF TO zcl_lnt_issue.
          CLEAR t203.
          DATA(t204) = t1.
          DATA(t205) = t17.
          DATA(t206) = t184.
          DATA(t207) = VALUE string( ).
          DATA t208 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t208.
          DATA(t209) = VALUE string( ).
          DATA(t210) = |obsolete_statement|.
          t209 = t210.
          DATA(t211) = VALUE string( ).
          DATA(t212) = |Obsolete statements|.
          t211 = t212.
          DATA(t213) = VALUE string( ).
          DATA(t214) = |Checks for usages of certain obsolete statements|.
          t213 = t214.
          DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t215.
          DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t216.
          DATA(t217) = abap_true.
          IF t217 = abap_true.
            DATA t218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t218.
            DATA t219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t219.
            DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t220.
            CREATE OBJECT t220.
            t219 = t220.
            DATA(t221) = t219.
            DATA(t222) = |SingleFile|.
            t221->load( ).
            APPEND t222 TO t221->items.
            t221->save( ).
            DATA(t223) = t219.
            DATA(t224) = |Styleguide|.
            t223->load( ).
            APPEND t224 TO t223->items.
            t223->save( ).
            DATA(t225) = t219.
            DATA(t226) = |Quickfix|.
            t225->load( ).
            APPEND t226 TO t225->items.
            t225->save( ).
            DATA(t227) = t219.
            t218 = t227.
            t216 = t218.
          ELSE.
            DATA t228 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t228.
            t216 = t228.
          ENDIF.
          t215 = t216.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          DATA(t231) = abap_true.
          IF t231 = abap_true.
            DATA(t232) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t232 = t232 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t232 = t232 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t232 = t232 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t232 = t232 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t232 = t232 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t232 = t232 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t232 = t232 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t232 = t232 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t232 = t232 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t232 = t232 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t232 = t232 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t232 = t232 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t232 = t232 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t232 = t232 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t232 = t232 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t232 = t232 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t232 = t232 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t232 = t232 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t232 = t232 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t232 = t232 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t232 = t232 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t232 = t232 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t232 = t232 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t232 = t232 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t232 = t232 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t232 = t232 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t232 = t232 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t232 = t232 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t232 = t232 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t232 = t232 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t232 = t232 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t232 = t232 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t232 = t232 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t232 = t232 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t232 = t232 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t232 = t232 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t232 = t232 && |ect_client_obsolete.html|.
            DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t233->has = abap_true.
            t233->value = t232.
            t230 = t233.
          ELSE.
            DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t234.
            t230 = t234.
          ENDIF.
          t229 = t230.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t235.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t236.
          DATA(t237) = abap_true.
          IF t237 = abap_true.
            DATA(t238) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t238 = t238 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t239->has = abap_true.
            t239->value = t238.
            t236 = t239.
          ELSE.
            DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t240.
            t236 = t240.
          ENDIF.
          t235 = t236.
          DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t241.
          DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t242.
          t241 = t242.
          DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t243.
          DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t244.
          t243 = t244.
          DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t245.
          DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t246.
          t245 = t246.
          t208 = NEW zcl_lnt_irule_metadata( i_key = t209 i_title = t211 i_short_description = t213 i_bad_example = t235 i_good_example = t241 i_extended_information = t229 i_tags = t215 i_pragma = t243 i_pseudo_comment = t245 ).
          CREATE OBJECT t208->zlnt_view_ownkeys_b0e8086400eb.
          t208->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t247.
          IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t247 ).
          ENDIF.
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t248 ).
          ENDIF.
          DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t249.
          IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t249 ).
          ENDIF.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t250 ).
          ENDIF.
          DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t251.
          IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t251 ).
          ENDIF.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t252 ).
          ENDIF.
          CREATE OBJECT t208->zlnt_json_ownkeys_70e5fd461788.
          t208->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t253) = |key|.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
          ENDIF.
          DATA(t255) = |title|.
          DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t256.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
          ENDIF.
          DATA(t257) = |shortDescription|.
          DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t258.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
          ENDIF.
          DATA(t259) = |tags|.
          DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t260.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
          ENDIF.
          DATA(t261) = |extendedInformation|.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
          ENDIF.
          DATA(t263) = |badExample|.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
          ENDIF.
          t207 = t208->key.
          DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t265.
          DATA(t266) = me->conf.
          t265 = t266->zlnt_view_read_sr_15c06369f827( ).
          DATA(t267) = t197.
          DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t268.
          t203 = zcl_lnt_issue=>at_statement( i_file = t204 i_statement = t205 i_message_26cb = t206 i_key = t207 i_severity = t265 i_fix = t267 i_alternative_fixes = t268 ).
          t202 = t203.
          DATA(t269) = t2.
          DATA(t270) = t202.
          t269->load( ).
          APPEND t270 TO t269->items.
          t269->save( ).
        ENDIF.
        DATA t271 TYPE REF TO zcl_lnt_position.
        CLEAR t271.
        DATA(t272) = abap_true.
        IF t272 = abap_true.
          DATA t273 TYPE REF TO zcl_lnt_position.
          CLEAR t273.
          DATA t274 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t274.
          DATA(t275) = t17.
          t274 = t275.
          DATA t276 TYPE REF TO zcl_lnt_position.
          CLEAR t276.
          DATA t277 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t277.
          DATA t278 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t278.
          DATA(t279) = t274.
          t278 = t279->get_first_token( ).
          t277 = t278.
          DATA t280 TYPE REF TO zcl_lnt_position.
          CLEAR t280.
          DATA(t281) = t277.
          t280 = t281->start.
          t276 = t280.
          t273 = t276.
          t271 = t273.
        ELSE.
          DATA t282 TYPE REF TO zcl_lnt_position.
          CLEAR t282.
          t271 = t282.
        ENDIF.
        t10 = t271.
      ENDIF.
      DATA(t283) = VALUE abap_bool( ).
      DATA(t284) = VALUE abap_bool( ).
      DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t285.
      DATA(t286) = me->conf.
      t285 = t286->zlnt_view_read_sr_a489a62433a9( ).
      IF t285 IS BOUND.
        IF t285->has = abap_true.
          t284 = xsdbool( t285->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t283 = t284.
      IF t284 = abap_true.
        DATA(t287) = VALUE abap_bool( ).
        DATA(t288) = t22.
        t287 = xsdbool( t288 IS BOUND AND t288 IS INSTANCE OF zcl_lnt_set_extended_check ).
        t283 = t287.
      ENDIF.
      IF t283 = abap_true.
        DATA t289 TYPE REF TO zcl_lnt_issue.
        CLEAR t289.
        DATA t290 TYPE REF TO zcl_lnt_issue.
        CLEAR t290.
        DATA(t291) = t1.
        DATA(t292) = t17.
        DATA(t293) = |SET EXTENDED CHECK is obsolete|.
        DATA(t294) = VALUE string( ).
        DATA t295 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t295.
        DATA(t296) = VALUE string( ).
        DATA(t297) = |obsolete_statement|.
        t296 = t297.
        DATA(t298) = VALUE string( ).
        DATA(t299) = |Obsolete statements|.
        t298 = t299.
        DATA(t300) = VALUE string( ).
        DATA(t301) = |Checks for usages of certain obsolete statements|.
        t300 = t301.
        DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t302.
        DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t303.
        DATA(t304) = abap_true.
        IF t304 = abap_true.
          DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t305.
          DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t306.
          DATA t307 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t307.
          CREATE OBJECT t307.
          t306 = t307.
          DATA(t308) = t306.
          DATA(t309) = |SingleFile|.
          t308->load( ).
          APPEND t309 TO t308->items.
          t308->save( ).
          DATA(t310) = t306.
          DATA(t311) = |Styleguide|.
          t310->load( ).
          APPEND t311 TO t310->items.
          t310->save( ).
          DATA(t312) = t306.
          DATA(t313) = |Quickfix|.
          t312->load( ).
          APPEND t313 TO t312->items.
          t312->save( ).
          DATA(t314) = t306.
          t305 = t314.
          t303 = t305.
        ELSE.
          DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t315.
          t303 = t315.
        ENDIF.
        t302 = t303.
        DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t316.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t317.
        DATA(t318) = abap_true.
        IF t318 = abap_true.
          DATA(t319) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t319 = t319 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t319 = t319 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t319 = t319 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t319 = t319 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t319 = t319 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t319 = t319 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t319 = t319 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t319 = t319 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t319 = t319 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t319 = t319 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t319 = t319 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t319 = t319 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t319 = t319 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t319 = t319 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t319 = t319 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t319 = t319 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t319 = t319 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t319 = t319 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t319 = t319 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t319 = t319 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t319 = t319 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t319 = t319 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t319 = t319 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t319 = t319 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t319 = t319 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t319 = t319 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t319 = t319 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t319 = t319 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t319 = t319 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t319 = t319 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t319 = t319 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t319 = t319 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t319 = t319 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t319 = t319 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t319 = t319 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t319 = t319 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t319 = t319 && |ect_client_obsolete.html|.
          DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t320->has = abap_true.
          t320->value = t319.
          t317 = t320.
        ELSE.
          DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t321.
          t317 = t321.
        ENDIF.
        t316 = t317.
        DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t322.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t323.
        DATA(t324) = abap_true.
        IF t324 = abap_true.
          DATA(t325) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t325 = t325 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t326->has = abap_true.
          t326->value = t325.
          t323 = t326.
        ELSE.
          DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t327.
          t323 = t327.
        ENDIF.
        t322 = t323.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t328.
        DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t329.
        t328 = t329.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t330.
        DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t331.
        t330 = t331.
        DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t332.
        DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t333.
        t332 = t333.
        t295 = NEW zcl_lnt_irule_metadata( i_key = t296 i_title = t298 i_short_description = t300 i_bad_example = t322 i_good_example = t328 i_extended_information = t316 i_tags = t302 i_pragma = t330 i_pseudo_comment = t332 ).
        CREATE OBJECT t295->zlnt_view_ownkeys_b0e8086400eb.
        t295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        IF t295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t334 ).
        ENDIF.
        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t335.
        IF t295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t335 ).
        ENDIF.
        DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t336.
        IF t295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t336 ).
        ENDIF.
        DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t337.
        IF t295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t337 ).
        ENDIF.
        DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t338.
        IF t295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t338 ).
        ENDIF.
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t339.
        IF t295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t339 ).
        ENDIF.
        CREATE OBJECT t295->zlnt_json_ownkeys_70e5fd461788.
        t295->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t340) = |key|.
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t341.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
        ENDIF.
        DATA(t342) = |title|.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t342 p1 = t343 ).
        ENDIF.
        DATA(t344) = |shortDescription|.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
        ENDIF.
        DATA(t346) = |tags|.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t346 p1 = t347 ).
        ENDIF.
        DATA(t348) = |extendedInformation|.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
        ENDIF.
        DATA(t350) = |badExample|.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
        ENDIF.
        t294 = t295->key.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        DATA(t353) = me->conf.
        t352 = t353->zlnt_view_read_sr_15c06369f827( ).
        DATA t354 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t354.
        DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t355.
        t290 = zcl_lnt_issue=>at_statement( i_file = t291 i_statement = t292 i_message_26cb = t293 i_key = t294 i_severity = t352 i_fix = t354 i_alternative_fixes = t355 ).
        t289 = t290.
        DATA(t356) = t2.
        DATA(t357) = t289.
        t356->load( ).
        APPEND t357 TO t356->items.
        t356->save( ).
      ENDIF.
      DATA(t358) = VALUE abap_bool( ).
      DATA(t359) = VALUE abap_bool( ).
      DATA t360 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t360.
      DATA(t361) = me->conf.
      t360 = t361->zlnt_view_read_sr_2efbb7e799e5( ).
      IF t360 IS BOUND.
        IF t360->has = abap_true.
          t359 = xsdbool( t360->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t358 = t359.
      IF t359 = abap_true.
        DATA(t362) = VALUE abap_bool( ).
        DATA(t363) = t22.
        t362 = xsdbool( t363 IS BOUND AND t363 IS INSTANCE OF zcl_lnt_communication ).
        t358 = t362.
      ENDIF.
      IF t358 = abap_true.
        DATA t364 TYPE REF TO zcl_lnt_issue.
        CLEAR t364.
        DATA t365 TYPE REF TO zcl_lnt_issue.
        CLEAR t365.
        DATA(t366) = t1.
        DATA(t367) = t17.
        DATA(t368) = |COMMUNICATION is obsolete|.
        DATA(t369) = VALUE string( ).
        DATA t370 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t370.
        DATA(t371) = VALUE string( ).
        DATA(t372) = |obsolete_statement|.
        t371 = t372.
        DATA(t373) = VALUE string( ).
        DATA(t374) = |Obsolete statements|.
        t373 = t374.
        DATA(t375) = VALUE string( ).
        DATA(t376) = |Checks for usages of certain obsolete statements|.
        t375 = t376.
        DATA t377 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t377.
        DATA t378 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t378.
        DATA(t379) = abap_true.
        IF t379 = abap_true.
          DATA t380 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t380.
          DATA t381 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t381.
          DATA t382 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t382.
          CREATE OBJECT t382.
          t381 = t382.
          DATA(t383) = t381.
          DATA(t384) = |SingleFile|.
          t383->load( ).
          APPEND t384 TO t383->items.
          t383->save( ).
          DATA(t385) = t381.
          DATA(t386) = |Styleguide|.
          t385->load( ).
          APPEND t386 TO t385->items.
          t385->save( ).
          DATA(t387) = t381.
          DATA(t388) = |Quickfix|.
          t387->load( ).
          APPEND t388 TO t387->items.
          t387->save( ).
          DATA(t389) = t381.
          t380 = t389.
          t378 = t380.
        ELSE.
          DATA t390 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t390.
          t378 = t390.
        ENDIF.
        t377 = t378.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
        DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t392.
        DATA(t393) = abap_true.
        IF t393 = abap_true.
          DATA(t394) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t394 = t394 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t394 = t394 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t394 = t394 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t394 = t394 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t394 = t394 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t394 = t394 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t394 = t394 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t394 = t394 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t394 = t394 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t394 = t394 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t394 = t394 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t394 = t394 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t394 = t394 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t394 = t394 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t394 = t394 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t394 = t394 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t394 = t394 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t394 = t394 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t394 = t394 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t394 = t394 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t394 = t394 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t394 = t394 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t394 = t394 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t394 = t394 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t394 = t394 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t394 = t394 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t394 = t394 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t394 = t394 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t394 = t394 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t394 = t394 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t394 = t394 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t394 = t394 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t394 = t394 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t394 = t394 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t394 = t394 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t394 = t394 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t394 = t394 && |ect_client_obsolete.html|.
          DATA(t395) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t395->has = abap_true.
          t395->value = t394.
          t392 = t395.
        ELSE.
          DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t396.
          t392 = t396.
        ENDIF.
        t391 = t392.
        DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t397.
        DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t398.
        DATA(t399) = abap_true.
        IF t399 = abap_true.
          DATA(t400) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t400 = t400 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t401->has = abap_true.
          t401->value = t400.
          t398 = t401.
        ELSE.
          DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t402.
          t398 = t402.
        ENDIF.
        t397 = t398.
        DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t403.
        DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t404.
        t403 = t404.
        DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t405.
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t406.
        t405 = t406.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t407.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t408.
        t407 = t408.
        t370 = NEW zcl_lnt_irule_metadata( i_key = t371 i_title = t373 i_short_description = t375 i_bad_example = t397 i_good_example = t403 i_extended_information = t391 i_tags = t377 i_pragma = t405 i_pseudo_comment = t407 ).
        CREATE OBJECT t370->zlnt_view_ownkeys_b0e8086400eb.
        t370->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t409.
        IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t409 ).
        ENDIF.
        DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t410.
        IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t410 ).
        ENDIF.
        DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t411.
        IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t411 ).
        ENDIF.
        DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t412.
        IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t412 ).
        ENDIF.
        DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t413.
        IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t413 ).
        ENDIF.
        DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t414.
        IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t414 ).
        ENDIF.
        CREATE OBJECT t370->zlnt_json_ownkeys_70e5fd461788.
        t370->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t415) = |key|.
        DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t416.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t415 p1 = t416 ).
        ENDIF.
        DATA(t417) = |title|.
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t418.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
        ENDIF.
        DATA(t419) = |shortDescription|.
        DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t420.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
        ENDIF.
        DATA(t421) = |tags|.
        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t422.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
        ENDIF.
        DATA(t423) = |extendedInformation|.
        DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t424.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
        ENDIF.
        DATA(t425) = |badExample|.
        DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t426.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t425 p1 = t426 ).
        ENDIF.
        t369 = t370->key.
        DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t427.
        DATA(t428) = me->conf.
        t427 = t428->zlnt_view_read_sr_15c06369f827( ).
        DATA t429 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t429.
        DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t430.
        t365 = zcl_lnt_issue=>at_statement( i_file = t366 i_statement = t367 i_message_26cb = t368 i_key = t369 i_severity = t427 i_fix = t429 i_alternative_fixes = t430 ).
        t364 = t365.
        DATA(t431) = t2.
        DATA(t432) = t364.
        t431->load( ).
        APPEND t432 TO t431->items.
        t431->save( ).
      ENDIF.
      DATA(t433) = VALUE abap_bool( ).
      DATA(t434) = VALUE abap_bool( ).
      DATA(t435) = VALUE abap_bool( ).
      DATA t436 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t436.
      DATA(t437) = me->conf.
      t436 = t437->zlnt_view_read_sr_8b1de602e50e( ).
      IF t436 IS BOUND.
        IF t436->has = abap_true.
          t435 = xsdbool( t436->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t434 = t435.
      IF t435 = abap_true.
        DATA(t438) = VALUE abap_bool( ).
        DATA(t439) = t22.
        t438 = xsdbool( t439 IS BOUND AND t439 IS INSTANCE OF zcl_lnt_data_begin ).
        t434 = t438.
      ENDIF.
      t433 = t434.
      IF t434 = abap_true.
        DATA(t440) = VALUE abap_bool( ).
        DATA t441 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t441.
        DATA(t442) = t17.
        DATA(t443) = |COMMON|.
        t441 = t442->find_direct_token_by_text( i_text = t443 ).
        t440 = xsdbool( t441 IS BOUND ).
        t433 = t440.
      ENDIF.
      IF t433 = abap_true.
        DATA t444 TYPE REF TO zcl_lnt_issue.
        CLEAR t444.
        DATA t445 TYPE REF TO zcl_lnt_issue.
        CLEAR t445.
        DATA(t446) = t1.
        DATA(t447) = t17.
        DATA(t448) = |COMMON PART is obsolete|.
        DATA(t449) = VALUE string( ).
        DATA t450 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t450.
        DATA(t451) = VALUE string( ).
        DATA(t452) = |obsolete_statement|.
        t451 = t452.
        DATA(t453) = VALUE string( ).
        DATA(t454) = |Obsolete statements|.
        t453 = t454.
        DATA(t455) = VALUE string( ).
        DATA(t456) = |Checks for usages of certain obsolete statements|.
        t455 = t456.
        DATA t457 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t457.
        DATA t458 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t458.
        DATA(t459) = abap_true.
        IF t459 = abap_true.
          DATA t460 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t460.
          DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t461.
          DATA t462 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t462.
          CREATE OBJECT t462.
          t461 = t462.
          DATA(t463) = t461.
          DATA(t464) = |SingleFile|.
          t463->load( ).
          APPEND t464 TO t463->items.
          t463->save( ).
          DATA(t465) = t461.
          DATA(t466) = |Styleguide|.
          t465->load( ).
          APPEND t466 TO t465->items.
          t465->save( ).
          DATA(t467) = t461.
          DATA(t468) = |Quickfix|.
          t467->load( ).
          APPEND t468 TO t467->items.
          t467->save( ).
          DATA(t469) = t461.
          t460 = t469.
          t458 = t460.
        ELSE.
          DATA t470 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t470.
          t458 = t470.
        ENDIF.
        t457 = t458.
        DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t471.
        DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t472.
        DATA(t473) = abap_true.
        IF t473 = abap_true.
          DATA(t474) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t474 = t474 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t474 = t474 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t474 = t474 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t474 = t474 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t474 = t474 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t474 = t474 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t474 = t474 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t474 = t474 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t474 = t474 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t474 = t474 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t474 = t474 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t474 = t474 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t474 = t474 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t474 = t474 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t474 = t474 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t474 = t474 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t474 = t474 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t474 = t474 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t474 = t474 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t474 = t474 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t474 = t474 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t474 = t474 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t474 = t474 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t474 = t474 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t474 = t474 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t474 = t474 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t474 = t474 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t474 = t474 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t474 = t474 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t474 = t474 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t474 = t474 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t474 = t474 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t474 = t474 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t474 = t474 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t474 = t474 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t474 = t474 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t474 = t474 && |ect_client_obsolete.html|.
          DATA(t475) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t475->has = abap_true.
          t475->value = t474.
          t472 = t475.
        ELSE.
          DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t476.
          t472 = t476.
        ENDIF.
        t471 = t472.
        DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t477.
        DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t478.
        DATA(t479) = abap_true.
        IF t479 = abap_true.
          DATA(t480) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t480 = t480 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t481) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t481->has = abap_true.
          t481->value = t480.
          t478 = t481.
        ELSE.
          DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t482.
          t478 = t482.
        ENDIF.
        t477 = t478.
        DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t483.
        DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t484.
        t483 = t484.
        DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t485.
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t486.
        t485 = t486.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t487.
        DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t488.
        t487 = t488.
        t450 = NEW zcl_lnt_irule_metadata( i_key = t451 i_title = t453 i_short_description = t455 i_bad_example = t477 i_good_example = t483 i_extended_information = t471 i_tags = t457 i_pragma = t485 i_pseudo_comment = t487 ).
        CREATE OBJECT t450->zlnt_view_ownkeys_b0e8086400eb.
        t450->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t489.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t489 ).
        ENDIF.
        DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t490.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t490 ).
        ENDIF.
        DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t491.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t491 ).
        ENDIF.
        DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t492.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t492 ).
        ENDIF.
        DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t493.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t493 ).
        ENDIF.
        DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t494.
        IF t450->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t494 ).
        ENDIF.
        CREATE OBJECT t450->zlnt_json_ownkeys_70e5fd461788.
        t450->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t495) = |key|.
        DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t496.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t495 p1 = t496 ).
        ENDIF.
        DATA(t497) = |title|.
        DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t498.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t497 p1 = t498 ).
        ENDIF.
        DATA(t499) = |shortDescription|.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t500.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t499 p1 = t500 ).
        ENDIF.
        DATA(t501) = |tags|.
        DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t502.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t501 p1 = t502 ).
        ENDIF.
        DATA(t503) = |extendedInformation|.
        DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t504.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t503 p1 = t504 ).
        ENDIF.
        DATA(t505) = |badExample|.
        DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t506.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = t505 p1 = t506 ).
        ENDIF.
        t449 = t450->key.
        DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t507.
        DATA(t508) = me->conf.
        t507 = t508->zlnt_view_read_sr_15c06369f827( ).
        DATA t509 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t509.
        DATA t510 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t510.
        t445 = zcl_lnt_issue=>at_statement( i_file = t446 i_statement = t447 i_message_26cb = t448 i_key = t449 i_severity = t507 i_fix = t509 i_alternative_fixes = t510 ).
        t444 = t445.
        DATA(t511) = t2.
        DATA(t512) = t444.
        t511->load( ).
        APPEND t512 TO t511->items.
        t511->save( ).
      ENDIF.
      DATA(t513) = VALUE abap_bool( ).
      DATA(t514) = VALUE abap_bool( ).
      DATA(t515) = VALUE abap_bool( ).
      DATA t516 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t516.
      DATA(t517) = me->conf.
      t516 = t517->zlnt_view_read_sr_bc501b82d528( ).
      IF t516 IS BOUND.
        IF t516->has = abap_true.
          t515 = xsdbool( t516->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t514 = t515.
      IF t515 = abap_true.
        DATA(t518) = VALUE abap_bool( ).
        DATA(t519) = t22.
        t518 = xsdbool( t519 IS BOUND AND t519 IS INSTANCE OF zcl_lnt_st_replace ).
        t514 = t518.
      ENDIF.
      t513 = t514.
      IF t514 = abap_true.
        DATA(t520) = VALUE abap_bool( ).
        DATA t521 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t521.
        DATA(t522) = t17.
        DATA(t523) = |INTO|.
        t521 = t522->find_direct_token_by_text( i_text = t523 ).
        t520 = xsdbool( t521 IS BOUND ).
        t513 = t520.
      ENDIF.
      IF t513 = abap_true.
        DATA t524 TYPE REF TO zcl_lnt_issue.
        CLEAR t524.
        DATA t525 TYPE REF TO zcl_lnt_issue.
        CLEAR t525.
        DATA(t526) = t1.
        DATA(t527) = t17.
        DATA(t528) = |REPLACE INTO is obsolete|.
        DATA(t529) = VALUE string( ).
        DATA t530 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t530.
        DATA(t531) = VALUE string( ).
        DATA(t532) = |obsolete_statement|.
        t531 = t532.
        DATA(t533) = VALUE string( ).
        DATA(t534) = |Obsolete statements|.
        t533 = t534.
        DATA(t535) = VALUE string( ).
        DATA(t536) = |Checks for usages of certain obsolete statements|.
        t535 = t536.
        DATA t537 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t537.
        DATA t538 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t538.
        DATA(t539) = abap_true.
        IF t539 = abap_true.
          DATA t540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t540.
          DATA t541 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t541.
          DATA t542 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t542.
          CREATE OBJECT t542.
          t541 = t542.
          DATA(t543) = t541.
          DATA(t544) = |SingleFile|.
          t543->load( ).
          APPEND t544 TO t543->items.
          t543->save( ).
          DATA(t545) = t541.
          DATA(t546) = |Styleguide|.
          t545->load( ).
          APPEND t546 TO t545->items.
          t545->save( ).
          DATA(t547) = t541.
          DATA(t548) = |Quickfix|.
          t547->load( ).
          APPEND t548 TO t547->items.
          t547->save( ).
          DATA(t549) = t541.
          t540 = t549.
          t538 = t540.
        ELSE.
          DATA t550 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t550.
          t538 = t550.
        ENDIF.
        t537 = t538.
        DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t551.
        DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t552.
        DATA(t553) = abap_true.
        IF t553 = abap_true.
          DATA(t554) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t554 = t554 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t554 = t554 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t554 = t554 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t554 = t554 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t554 = t554 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t554 = t554 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t554 = t554 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t554 = t554 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t554 = t554 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t554 = t554 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t554 = t554 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t554 = t554 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t554 = t554 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t554 = t554 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t554 = t554 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t554 = t554 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t554 = t554 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t554 = t554 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t554 = t554 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t554 = t554 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t554 = t554 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t554 = t554 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t554 = t554 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t554 = t554 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t554 = t554 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t554 = t554 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t554 = t554 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t554 = t554 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t554 = t554 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t554 = t554 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t554 = t554 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t554 = t554 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t554 = t554 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t554 = t554 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t554 = t554 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t554 = t554 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t554 = t554 && |ect_client_obsolete.html|.
          DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t555->has = abap_true.
          t555->value = t554.
          t552 = t555.
        ELSE.
          DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t556.
          t552 = t556.
        ENDIF.
        t551 = t552.
        DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t557.
        DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t558.
        DATA(t559) = abap_true.
        IF t559 = abap_true.
          DATA(t560) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t560 = t560 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t561) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t561->has = abap_true.
          t561->value = t560.
          t558 = t561.
        ELSE.
          DATA t562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t562.
          t558 = t562.
        ENDIF.
        t557 = t558.
        DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t563.
        DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t564.
        t563 = t564.
        DATA t565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t565.
        DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t566.
        t565 = t566.
        DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t567.
        DATA t568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t568.
        t567 = t568.
        t530 = NEW zcl_lnt_irule_metadata( i_key = t531 i_title = t533 i_short_description = t535 i_bad_example = t557 i_good_example = t563 i_extended_information = t551 i_tags = t537 i_pragma = t565 i_pseudo_comment = t567 ).
        CREATE OBJECT t530->zlnt_view_ownkeys_b0e8086400eb.
        t530->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t569.
        IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t569 ).
        ENDIF.
        DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t570.
        IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t570 ).
        ENDIF.
        DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t571.
        IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t571 ).
        ENDIF.
        DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t572.
        IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t572 ).
        ENDIF.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t573.
        IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t573 ).
        ENDIF.
        DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t574.
        IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t574 ).
        ENDIF.
        CREATE OBJECT t530->zlnt_json_ownkeys_70e5fd461788.
        t530->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t575) = |key|.
        DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t576.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t575 p1 = t576 ).
        ENDIF.
        DATA(t577) = |title|.
        DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t578.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t577 p1 = t578 ).
        ENDIF.
        DATA(t579) = |shortDescription|.
        DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t580.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t579 p1 = t580 ).
        ENDIF.
        DATA(t581) = |tags|.
        DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t582.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t581 p1 = t582 ).
        ENDIF.
        DATA(t583) = |extendedInformation|.
        DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t584.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t583 p1 = t584 ).
        ENDIF.
        DATA(t585) = |badExample|.
        DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t586.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t585 p1 = t586 ).
        ENDIF.
        t529 = t530->key.
        DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t587.
        DATA(t588) = me->conf.
        t587 = t588->zlnt_view_read_sr_15c06369f827( ).
        DATA t589 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t589.
        DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t590.
        t525 = zcl_lnt_issue=>at_statement( i_file = t526 i_statement = t527 i_message_26cb = t528 i_key = t529 i_severity = t587 i_fix = t589 i_alternative_fixes = t590 ).
        t524 = t525.
        DATA(t591) = t2.
        DATA(t592) = t524.
        t591->load( ).
        APPEND t592 TO t591->items.
        t591->save( ).
      ENDIF.
      DATA(t593) = VALUE abap_bool( ).
      DATA(t594) = VALUE abap_bool( ).
      DATA t595 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t595.
      DATA(t596) = me->conf.
      t595 = t596->zlnt_view_read_sr_af6f73503223( ).
      IF t595 IS BOUND.
        IF t595->has = abap_true.
          t594 = xsdbool( t595->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t593 = t594.
      IF t594 = abap_true.
        DATA(t597) = VALUE abap_bool( ).
        DATA(t598) = t22.
        t597 = xsdbool( t598 IS BOUND AND t598 IS INSTANCE OF zcl_lnt_st_pack ).
        t593 = t597.
      ENDIF.
      IF t593 = abap_true.
        DATA t599 TYPE REF TO zcl_lnt_issue.
        CLEAR t599.
        DATA t600 TYPE REF TO zcl_lnt_issue.
        CLEAR t600.
        DATA(t601) = t1.
        DATA(t602) = t17.
        DATA(t603) = |PACK is obsolete|.
        DATA(t604) = VALUE string( ).
        DATA t605 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t605.
        DATA(t606) = VALUE string( ).
        DATA(t607) = |obsolete_statement|.
        t606 = t607.
        DATA(t608) = VALUE string( ).
        DATA(t609) = |Obsolete statements|.
        t608 = t609.
        DATA(t610) = VALUE string( ).
        DATA(t611) = |Checks for usages of certain obsolete statements|.
        t610 = t611.
        DATA t612 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t612.
        DATA t613 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t613.
        DATA(t614) = abap_true.
        IF t614 = abap_true.
          DATA t615 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t615.
          DATA t616 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t616.
          DATA t617 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t617.
          CREATE OBJECT t617.
          t616 = t617.
          DATA(t618) = t616.
          DATA(t619) = |SingleFile|.
          t618->load( ).
          APPEND t619 TO t618->items.
          t618->save( ).
          DATA(t620) = t616.
          DATA(t621) = |Styleguide|.
          t620->load( ).
          APPEND t621 TO t620->items.
          t620->save( ).
          DATA(t622) = t616.
          DATA(t623) = |Quickfix|.
          t622->load( ).
          APPEND t623 TO t622->items.
          t622->save( ).
          DATA(t624) = t616.
          t615 = t624.
          t613 = t615.
        ELSE.
          DATA t625 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t625.
          t613 = t625.
        ENDIF.
        t612 = t613.
        DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t626.
        DATA t627 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t627.
        DATA(t628) = abap_true.
        IF t628 = abap_true.
          DATA(t629) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t629 = t629 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t629 = t629 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t629 = t629 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t629 = t629 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t629 = t629 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t629 = t629 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t629 = t629 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t629 = t629 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t629 = t629 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t629 = t629 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t629 = t629 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t629 = t629 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t629 = t629 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t629 = t629 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t629 = t629 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t629 = t629 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t629 = t629 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t629 = t629 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t629 = t629 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t629 = t629 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t629 = t629 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t629 = t629 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t629 = t629 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t629 = t629 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t629 = t629 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t629 = t629 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t629 = t629 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t629 = t629 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t629 = t629 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t629 = t629 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t629 = t629 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t629 = t629 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t629 = t629 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t629 = t629 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t629 = t629 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t629 = t629 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t629 = t629 && |ect_client_obsolete.html|.
          DATA(t630) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t630->has = abap_true.
          t630->value = t629.
          t627 = t630.
        ELSE.
          DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t631.
          t627 = t631.
        ENDIF.
        t626 = t627.
        DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t632.
        DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t633.
        DATA(t634) = abap_true.
        IF t634 = abap_true.
          DATA(t635) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t635 = t635 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t636) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t636->has = abap_true.
          t636->value = t635.
          t633 = t636.
        ELSE.
          DATA t637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t637.
          t633 = t637.
        ENDIF.
        t632 = t633.
        DATA t638 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t638.
        DATA t639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t639.
        t638 = t639.
        DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t640.
        DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t641.
        t640 = t641.
        DATA t642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t642.
        DATA t643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t643.
        t642 = t643.
        t605 = NEW zcl_lnt_irule_metadata( i_key = t606 i_title = t608 i_short_description = t610 i_bad_example = t632 i_good_example = t638 i_extended_information = t626 i_tags = t612 i_pragma = t640 i_pseudo_comment = t642 ).
        CREATE OBJECT t605->zlnt_view_ownkeys_b0e8086400eb.
        t605->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t644.
        IF t605->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t644 ).
        ENDIF.
        DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t645.
        IF t605->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t645 ).
        ENDIF.
        DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t646.
        IF t605->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t646 ).
        ENDIF.
        DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t647.
        IF t605->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t647 ).
        ENDIF.
        DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t648.
        IF t605->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t648 ).
        ENDIF.
        DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t649.
        IF t605->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t649 ).
        ENDIF.
        CREATE OBJECT t605->zlnt_json_ownkeys_70e5fd461788.
        t605->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t650) = |key|.
        DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t651.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = t650 p1 = t651 ).
        ENDIF.
        DATA(t652) = |title|.
        DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t653.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = t652 p1 = t653 ).
        ENDIF.
        DATA(t654) = |shortDescription|.
        DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t655.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = t654 p1 = t655 ).
        ENDIF.
        DATA(t656) = |tags|.
        DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t657.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = t656 p1 = t657 ).
        ENDIF.
        DATA(t658) = |extendedInformation|.
        DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t659.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = t658 p1 = t659 ).
        ENDIF.
        DATA(t660) = |badExample|.
        DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t661.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
        ENDIF.
        t604 = t605->key.
        DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t662.
        DATA(t663) = me->conf.
        t662 = t663->zlnt_view_read_sr_15c06369f827( ).
        DATA t664 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t664.
        DATA t665 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t665.
        t600 = zcl_lnt_issue=>at_statement( i_file = t601 i_statement = t602 i_message_26cb = t603 i_key = t604 i_severity = t662 i_fix = t664 i_alternative_fixes = t665 ).
        t599 = t600.
        DATA(t666) = t2.
        DATA(t667) = t599.
        t666->load( ).
        APPEND t667 TO t666->items.
        t666->save( ).
      ENDIF.
      DATA(t668) = VALUE abap_bool( ).
      DATA(t669) = VALUE abap_bool( ).
      DATA t670 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t670.
      DATA(t671) = me->conf.
      t670 = t671->zlnt_view_read_sr_107aabcd4247( ).
      IF t670 IS BOUND.
        IF t670->has = abap_true.
          t669 = xsdbool( t670->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t668 = t669.
      IF t669 = abap_true.
        DATA(t672) = VALUE abap_bool( ).
        DATA(t673) = t22.
        t672 = xsdbool( t673 IS BOUND AND t673 IS INSTANCE OF zcl_lnt_st_field_group ).
        t668 = t672.
      ENDIF.
      IF t668 = abap_true.
        DATA t674 TYPE REF TO zcl_lnt_issue.
        CLEAR t674.
        DATA t675 TYPE REF TO zcl_lnt_issue.
        CLEAR t675.
        DATA(t676) = t1.
        DATA(t677) = t17.
        DATA(t678) = |FIELD-GROUPS is obsolete|.
        DATA(t679) = VALUE string( ).
        DATA t680 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t680.
        DATA(t681) = VALUE string( ).
        DATA(t682) = |obsolete_statement|.
        t681 = t682.
        DATA(t683) = VALUE string( ).
        DATA(t684) = |Obsolete statements|.
        t683 = t684.
        DATA(t685) = VALUE string( ).
        DATA(t686) = |Checks for usages of certain obsolete statements|.
        t685 = t686.
        DATA t687 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t687.
        DATA t688 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t688.
        DATA(t689) = abap_true.
        IF t689 = abap_true.
          DATA t690 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t690.
          DATA t691 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t691.
          DATA t692 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t692.
          CREATE OBJECT t692.
          t691 = t692.
          DATA(t693) = t691.
          DATA(t694) = |SingleFile|.
          t693->load( ).
          APPEND t694 TO t693->items.
          t693->save( ).
          DATA(t695) = t691.
          DATA(t696) = |Styleguide|.
          t695->load( ).
          APPEND t696 TO t695->items.
          t695->save( ).
          DATA(t697) = t691.
          DATA(t698) = |Quickfix|.
          t697->load( ).
          APPEND t698 TO t697->items.
          t697->save( ).
          DATA(t699) = t691.
          t690 = t699.
          t688 = t690.
        ELSE.
          DATA t700 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t700.
          t688 = t700.
        ENDIF.
        t687 = t688.
        DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t701.
        DATA t702 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t702.
        DATA(t703) = abap_true.
        IF t703 = abap_true.
          DATA(t704) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t704 = t704 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t704 = t704 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t704 = t704 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t704 = t704 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t704 = t704 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t704 = t704 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t704 = t704 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t704 = t704 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t704 = t704 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t704 = t704 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t704 = t704 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t704 = t704 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t704 = t704 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t704 = t704 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t704 = t704 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t704 = t704 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t704 = t704 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t704 = t704 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t704 = t704 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t704 = t704 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t704 = t704 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t704 = t704 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t704 = t704 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t704 = t704 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t704 = t704 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t704 = t704 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t704 = t704 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t704 = t704 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t704 = t704 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t704 = t704 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t704 = t704 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t704 = t704 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t704 = t704 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t704 = t704 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t704 = t704 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t704 = t704 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t704 = t704 && |ect_client_obsolete.html|.
          DATA(t705) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t705->has = abap_true.
          t705->value = t704.
          t702 = t705.
        ELSE.
          DATA t706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t706.
          t702 = t706.
        ENDIF.
        t701 = t702.
        DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t707.
        DATA t708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t708.
        DATA(t709) = abap_true.
        IF t709 = abap_true.
          DATA(t710) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t710 = t710 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t711) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t711->has = abap_true.
          t711->value = t710.
          t708 = t711.
        ELSE.
          DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t712.
          t708 = t712.
        ENDIF.
        t707 = t708.
        DATA t713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t713.
        DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t714.
        t713 = t714.
        DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t715.
        DATA t716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t716.
        t715 = t716.
        DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t717.
        DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t718.
        t717 = t718.
        t680 = NEW zcl_lnt_irule_metadata( i_key = t681 i_title = t683 i_short_description = t685 i_bad_example = t707 i_good_example = t713 i_extended_information = t701 i_tags = t687 i_pragma = t715 i_pseudo_comment = t717 ).
        CREATE OBJECT t680->zlnt_view_ownkeys_b0e8086400eb.
        t680->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t719.
        IF t680->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t680->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t719 ).
        ENDIF.
        DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t720.
        IF t680->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t680->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t720 ).
        ENDIF.
        DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t721.
        IF t680->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t680->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t721 ).
        ENDIF.
        DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t722.
        IF t680->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t680->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t722 ).
        ENDIF.
        DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t723.
        IF t680->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t680->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t723 ).
        ENDIF.
        DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t724.
        IF t680->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t680->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t724 ).
        ENDIF.
        CREATE OBJECT t680->zlnt_json_ownkeys_70e5fd461788.
        t680->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t725) = |key|.
        DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t726.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = t725 p1 = t726 ).
        ENDIF.
        DATA(t727) = |title|.
        DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t728.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = t727 p1 = t728 ).
        ENDIF.
        DATA(t729) = |shortDescription|.
        DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t730.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = t729 p1 = t730 ).
        ENDIF.
        DATA(t731) = |tags|.
        DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t732.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = t731 p1 = t732 ).
        ENDIF.
        DATA(t733) = |extendedInformation|.
        DATA t734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t734.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = t733 p1 = t734 ).
        ENDIF.
        DATA(t735) = |badExample|.
        DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t736.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = t735 p1 = t736 ).
        ENDIF.
        t679 = t680->key.
        DATA t737 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t737.
        DATA(t738) = me->conf.
        t737 = t738->zlnt_view_read_sr_15c06369f827( ).
        DATA t739 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t739.
        DATA t740 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t740.
        t675 = zcl_lnt_issue=>at_statement( i_file = t676 i_statement = t677 i_message_26cb = t678 i_key = t679 i_severity = t737 i_fix = t739 i_alternative_fixes = t740 ).
        t674 = t675.
        DATA(t741) = t2.
        DATA(t742) = t674.
        t741->load( ).
        APPEND t742 TO t741->items.
        t741->save( ).
      ENDIF.
      DATA(t743) = VALUE abap_bool( ).
      DATA(t744) = VALUE abap_bool( ).
      DATA t745 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t745.
      DATA(t746) = me->conf.
      t745 = t746->zlnt_view_read_sr_32a9ad24daa8( ).
      IF t745 IS BOUND.
        IF t745->has = abap_true.
          t744 = xsdbool( t745->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t743 = t744.
      IF t744 = abap_true.
        DATA(t747) = VALUE abap_bool( ).
        DATA(t748) = t22.
        t747 = xsdbool( t748 IS BOUND AND t748 IS INSTANCE OF zcl_lnt_st_parameter ).
        t743 = t747.
      ENDIF.
      IF t743 = abap_true.
        DATA t749 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t749.
        DATA t750 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t750.
        DATA(t751) = t17.
        t750 = t751->get_first_token( ).
        t749 = t750.
        DATA(t752) = VALUE abap_bool( ).
        DATA(t753) = VALUE string( ).
        DATA(t754) = VALUE string( ).
        DATA t755 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t755.
        DATA(t756) = t749.
        t755 = t756.
        DATA(t757) = VALUE string( ).
        DATA(t758) = t755.
        t757 = t758->str.
        t754 = t757.
        DATA(t759) = strlen( t754 ).
        t753 = t754.
        IF t753 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t753 TO UPPER CASE.
        ELSE.
          t753 = zlnt_runtime_uppe_91169605024d=>full( t753 ).
        ENDIF.
        DATA(t760) = |PARAMETER|.
        t752 = xsdbool( t753 = t760 ).
        IF t752 = abap_true.
          DATA t761 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t761.
          DATA t762 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t762.
          DATA(t763) = t1.
          DATA(t764) = t749.
          DATA(t765) = |PARAMETERS|.
          t762 = zcl_lnt_edit_helper=>replace_token( i_file = t763 i_token = t764 i_text = t765 ).
          t761 = t762.
          DATA t766 TYPE REF TO zcl_lnt_issue.
          CLEAR t766.
          DATA t767 TYPE REF TO zcl_lnt_issue.
          CLEAR t767.
          DATA(t768) = t1.
          DATA(t769) = t17.
          DATA(t770) = |Use PARAMETERS instead of PARAMETER|.
          DATA(t771) = VALUE string( ).
          DATA t772 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t772.
          DATA(t773) = VALUE string( ).
          DATA(t774) = |obsolete_statement|.
          t773 = t774.
          DATA(t775) = VALUE string( ).
          DATA(t776) = |Obsolete statements|.
          t775 = t776.
          DATA(t777) = VALUE string( ).
          DATA(t778) = |Checks for usages of certain obsolete statements|.
          t777 = t778.
          DATA t779 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t779.
          DATA t780 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t780.
          DATA(t781) = abap_true.
          IF t781 = abap_true.
            DATA t782 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t782.
            DATA t783 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t783.
            DATA t784 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t784.
            CREATE OBJECT t784.
            t783 = t784.
            DATA(t785) = t783.
            DATA(t786) = |SingleFile|.
            t785->load( ).
            APPEND t786 TO t785->items.
            t785->save( ).
            DATA(t787) = t783.
            DATA(t788) = |Styleguide|.
            t787->load( ).
            APPEND t788 TO t787->items.
            t787->save( ).
            DATA(t789) = t783.
            DATA(t790) = |Quickfix|.
            t789->load( ).
            APPEND t790 TO t789->items.
            t789->save( ).
            DATA(t791) = t783.
            t782 = t791.
            t780 = t782.
          ELSE.
            DATA t792 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t792.
            t780 = t792.
          ENDIF.
          t779 = t780.
          DATA t793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t793.
          DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t794.
          DATA(t795) = abap_true.
          IF t795 = abap_true.
            DATA(t796) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t796 = t796 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t796 = t796 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t796 = t796 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t796 = t796 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t796 = t796 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t796 = t796 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t796 = t796 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t796 = t796 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t796 = t796 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t796 = t796 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t796 = t796 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t796 = t796 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t796 = t796 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t796 = t796 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t796 = t796 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t796 = t796 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t796 = t796 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t796 = t796 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t796 = t796 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t796 = t796 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t796 = t796 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t796 = t796 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t796 = t796 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t796 = t796 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t796 = t796 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t796 = t796 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t796 = t796 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t796 = t796 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t796 = t796 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t796 = t796 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t796 = t796 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t796 = t796 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t796 = t796 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t796 = t796 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t796 = t796 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t796 = t796 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t796 = t796 && |ect_client_obsolete.html|.
            DATA(t797) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t797->has = abap_true.
            t797->value = t796.
            t794 = t797.
          ELSE.
            DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t798.
            t794 = t798.
          ENDIF.
          t793 = t794.
          DATA t799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t799.
          DATA t800 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t800.
          DATA(t801) = abap_true.
          IF t801 = abap_true.
            DATA(t802) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t802 = t802 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t803) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t803->has = abap_true.
            t803->value = t802.
            t800 = t803.
          ELSE.
            DATA t804 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t804.
            t800 = t804.
          ENDIF.
          t799 = t800.
          DATA t805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t805.
          DATA t806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t806.
          t805 = t806.
          DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t807.
          DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t808.
          t807 = t808.
          DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t809.
          DATA t810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t810.
          t809 = t810.
          t772 = NEW zcl_lnt_irule_metadata( i_key = t773 i_title = t775 i_short_description = t777 i_bad_example = t799 i_good_example = t805 i_extended_information = t793 i_tags = t779 i_pragma = t807 i_pseudo_comment = t809 ).
          CREATE OBJECT t772->zlnt_view_ownkeys_b0e8086400eb.
          t772->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t811.
          IF t772->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t772->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t811 ).
          ENDIF.
          DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t812.
          IF t772->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t772->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t812 ).
          ENDIF.
          DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t813.
          IF t772->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t772->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t813 ).
          ENDIF.
          DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t814.
          IF t772->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t772->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t814 ).
          ENDIF.
          DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t815.
          IF t772->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t772->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t815 ).
          ENDIF.
          DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t816.
          IF t772->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t772->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t816 ).
          ENDIF.
          CREATE OBJECT t772->zlnt_json_ownkeys_70e5fd461788.
          t772->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t817) = |key|.
          DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t818.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = t817 p1 = t818 ).
          ENDIF.
          DATA(t819) = |title|.
          DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t820.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = t819 p1 = t820 ).
          ENDIF.
          DATA(t821) = |shortDescription|.
          DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t822.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = t821 p1 = t822 ).
          ENDIF.
          DATA(t823) = |tags|.
          DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t824.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = t823 p1 = t824 ).
          ENDIF.
          DATA(t825) = |extendedInformation|.
          DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t826.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = t825 p1 = t826 ).
          ENDIF.
          DATA(t827) = |badExample|.
          DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t828.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = t827 p1 = t828 ).
          ENDIF.
          t771 = t772->key.
          DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t829.
          DATA(t830) = me->conf.
          t829 = t830->zlnt_view_read_sr_15c06369f827( ).
          DATA t831 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t831.
          DATA(t832) = abap_true.
          IF t832 = abap_true.
            DATA(t833) = t761.
            t831 = t833.
          ELSE.
            DATA t834 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t834.
            t831 = t834.
          ENDIF.
          DATA t835 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t835.
          t767 = zcl_lnt_issue=>at_statement( i_file = t768 i_statement = t769 i_message_26cb = t770 i_key = t771 i_severity = t829 i_fix = t831 i_alternative_fixes = t835 ).
          t766 = t767.
          DATA(t836) = t2.
          DATA(t837) = t766.
          t836->load( ).
          APPEND t837 TO t836->items.
          t836->save( ).
        ENDIF.
      ENDIF.
      DATA(t838) = VALUE abap_bool( ).
      DATA(t839) = VALUE abap_bool( ).
      DATA t840 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t840.
      DATA(t841) = me->conf.
      t840 = t841->zlnt_view_read_sr_df26b38faf17( ).
      IF t840 IS BOUND.
        IF t840->has = abap_true.
          t839 = xsdbool( t840->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t838 = t839.
      IF t839 = abap_true.
        DATA(t842) = VALUE abap_bool( ).
        DATA(t843) = t22.
        t842 = xsdbool( t843 IS BOUND AND t843 IS INSTANCE OF zcl_lnt_st_ranges ).
        t838 = t842.
      ENDIF.
      IF t838 = abap_true.
        DATA t844 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t844.
        DATA t845 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t845.
        DATA t846 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t846.
        DATA t847 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t847.
        DATA(t848) = t17.
        t847 = t848.
        DATA t849 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t849.
        DATA(t850) = t847.
        t849 = t850->children.
        t846 = t849.
        t845 ?= t846.
        t844 = t845.
        DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t851.
        DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t852.
        t851 = t852.
        DATA(t853) = VALUE abap_bool( ).
        DATA(t854) = VALUE i( ).
        DATA(t855) = t844.
        t855->load( ).
        t854 = lines( t855->items ).
        DATA(t856) = 5.
        t853 = xsdbool( t854 = t856 ).
        IF t853 = abap_true.
          DATA(t857) = VALUE string( ).
          DATA(t858) = VALUE string( ).
          DATA t859 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t859.
          DATA(t860) = t844.
          DATA t861 TYPE REF TO object.
          CLEAR t861.
          t860->load( ).
          CLEAR t861.
          READ TABLE t860->items INDEX 2 INTO t861.
          DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t862.
          CLEAR t859.
          IF t861 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t862 ?= t861.
            DATA t863 TYPE REF TO object.
            CLEAR t863.
            t863 = t862->as_ref( ).
            t859 ?= t863.
          ELSE.
            t859 ?= t861.
          ENDIF.
          t858 = t859->concat_tokens( ).
          t857 = t858.
          DATA(t864) = VALUE string( ).
          DATA(t865) = VALUE string( ).
          DATA t866 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t866.
          DATA(t867) = t844.
          DATA t868 TYPE REF TO object.
          CLEAR t868.
          t867->load( ).
          CLEAR t868.
          READ TABLE t867->items INDEX 4 INTO t868.
          DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t869.
          CLEAR t866.
          IF t868 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t869 ?= t868.
            DATA t870 TYPE REF TO object.
            CLEAR t870.
            t870 = t869->as_ref( ).
            t866 ?= t870.
          ELSE.
            t866 ?= t868.
          ENDIF.
          t865 = t866->concat_tokens( ).
          t864 = t865.
          DATA(t871) = VALUE string( ).
          DATA(t872) = VALUE string( ).
          DATA(t873) = VALUE string( ).
          DATA(t874) = VALUE string( ).
          DATA(t875) = VALUE string( ).
          DATA(t876) = |TYPES |.
          DATA(t877) = t857.
          DATA(t878) = strlen( t876 ).
          t875 = |{ t876 }{ t877 }|.
          DATA(t879) = | LIKE RANGE OF |.
          DATA(t880) = strlen( t875 ).
          t874 = |{ t875 }{ t879 }|.
          DATA(t881) = t864.
          DATA(t882) = strlen( t874 ).
          t873 = |{ t874 }{ t881 }|.
          DATA(t883) = |.|.
          DATA(t884) = strlen( t873 ).
          t872 = |{ t873 }{ t883 }|.
          t871 = t872.
          DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t885.
          DATA(t886) = abap_true.
          IF t886 = abap_true.
            DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t887.
            DATA t888 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t888.
            DATA(t889) = t1.
            DATA t890 TYPE REF TO zcl_lnt_position.
            CLEAR t890.
            DATA t891 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t891.
            DATA(t892) = t17.
            t891 = t892.
            DATA t893 TYPE REF TO zcl_lnt_position.
            CLEAR t893.
            DATA t894 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t894.
            DATA t895 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t895.
            DATA(t896) = t891.
            t895 = t896->get_first_token( ).
            t894 = t895.
            DATA t897 TYPE REF TO zcl_lnt_position.
            CLEAR t897.
            DATA(t898) = t894.
            t897 = t898->start.
            t893 = t897.
            t890 = t893.
            DATA t899 TYPE REF TO zcl_lnt_position.
            CLEAR t899.
            DATA t900 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t900.
            DATA(t901) = t17.
            t900 = t901.
            DATA t902 TYPE REF TO zcl_lnt_position.
            CLEAR t902.
            DATA t903 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t903.
            DATA t904 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t904.
            DATA(t905) = t900.
            t904 = t905->get_last_token( ).
            t903 = t904.
            DATA t906 TYPE REF TO zcl_lnt_position.
            CLEAR t906.
            DATA t907 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t907.
            DATA(t908) = t903.
            t907 = t908.
            DATA t909 TYPE REF TO zcl_lnt_position.
            CLEAR t909.
            DATA(t910) = VALUE f( ).
            DATA t911 TYPE REF TO zcl_lnt_position.
            CLEAR t911.
            DATA t912 TYPE REF TO zcl_lnt_position.
            CLEAR t912.
            DATA(t913) = t907.
            t912 = t913->start.
            t911 = t912.
            DATA(t914) = VALUE f( ).
            DATA(t915) = t911.
            t914 = t915->row.
            t910 = t914.
            DATA t916 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t916.
            DATA t917 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t917.
            DATA t918 TYPE REF TO zcl_lnt_position.
            CLEAR t918.
            DATA t919 TYPE REF TO zcl_lnt_position.
            CLEAR t919.
            DATA(t920) = t907.
            t919 = t920->start.
            t918 = t919.
            DATA t921 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t921.
            DATA(t922) = t918.
            t921 = t922->col.
            t917 = t921.
            DATA(t923) = VALUE f( ).
            DATA(t924) = VALUE i( ).
            DATA(t925) = VALUE string( ).
            DATA(t926) = t907.
            t925 = t926->str.
            DATA(t927) = strlen( t925 ).
            t924 = t927.
            t923 = t924.
            DATA(t928) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t928->has = abap_true.
            t928->value = t923.
            t916 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t917 right = t928 op = `+` ).
            t909 = NEW zcl_lnt_position( i_row = t910 i_col = t916 ).
            t906 = t909.
            t902 = t906.
            t899 = t902.
            DATA(t929) = t871.
            t888 = zcl_lnt_edit_helper=>replace_range( i_file = t889 i_start = t890 i_end = t899 i_text = t929 ).
            CLEAR t887.
            IF t888 IS BOUND.
              DATA t930 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t930.
              DATA t931 TYPE REF TO object.
              CLEAR t931.
              CLEAR t930.
              t931 = t888.
              TRY.
                  t887 ?= t931.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t887 IS NOT BOUND.
                TRY.
                    t930 ?= t888.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t930 IS BOUND.
                  t887 = t930->source( ).
                ENDIF.
                IF t887 IS NOT BOUND.
                  CREATE OBJECT t887.
                  t887->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t887->oval = t888.
                ENDIF.
              ENDIF.
            ENDIF.
            t885 = t887.
          ELSE.
            DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t932.
            t885 = t932.
          ENDIF.
          t851 = t885.
        ENDIF.
        DATA t933 TYPE REF TO zcl_lnt_issue.
        CLEAR t933.
        DATA t934 TYPE REF TO zcl_lnt_issue.
        CLEAR t934.
        DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t935.
        DATA(t936) = t851.
        t935 = t936.
        DATA t937 TYPE REF TO zcl_lnt_issue.
        CLEAR t937.
        DATA(t938) = t1.
        DATA(t939) = t17.
        DATA(t940) = |Use LIKE RANGE OF instead of RANGES|.
        DATA(t941) = VALUE string( ).
        DATA t942 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t942.
        DATA(t943) = VALUE string( ).
        DATA(t944) = |obsolete_statement|.
        t943 = t944.
        DATA(t945) = VALUE string( ).
        DATA(t946) = |Obsolete statements|.
        t945 = t946.
        DATA(t947) = VALUE string( ).
        DATA(t948) = |Checks for usages of certain obsolete statements|.
        t947 = t948.
        DATA t949 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t949.
        DATA t950 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t950.
        DATA(t951) = abap_true.
        IF t951 = abap_true.
          DATA t952 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t952.
          DATA t953 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t953.
          DATA t954 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t954.
          CREATE OBJECT t954.
          t953 = t954.
          DATA(t955) = t953.
          DATA(t956) = |SingleFile|.
          t955->load( ).
          APPEND t956 TO t955->items.
          t955->save( ).
          DATA(t957) = t953.
          DATA(t958) = |Styleguide|.
          t957->load( ).
          APPEND t958 TO t957->items.
          t957->save( ).
          DATA(t959) = t953.
          DATA(t960) = |Quickfix|.
          t959->load( ).
          APPEND t960 TO t959->items.
          t959->save( ).
          DATA(t961) = t953.
          t952 = t961.
          t950 = t952.
        ELSE.
          DATA t962 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t962.
          t950 = t962.
        ENDIF.
        t949 = t950.
        DATA t963 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t963.
        DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t964.
        DATA(t965) = abap_true.
        IF t965 = abap_true.
          DATA(t966) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t966 = t966 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t966 = t966 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t966 = t966 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t966 = t966 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t966 = t966 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t966 = t966 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t966 = t966 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t966 = t966 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t966 = t966 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t966 = t966 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t966 = t966 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t966 = t966 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t966 = t966 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t966 = t966 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t966 = t966 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t966 = t966 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t966 = t966 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t966 = t966 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t966 = t966 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t966 = t966 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t966 = t966 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t966 = t966 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t966 = t966 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t966 = t966 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t966 = t966 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t966 = t966 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t966 = t966 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t966 = t966 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t966 = t966 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t966 = t966 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t966 = t966 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t966 = t966 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t966 = t966 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t966 = t966 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t966 = t966 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t966 = t966 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t966 = t966 && |ect_client_obsolete.html|.
          DATA(t967) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t967->has = abap_true.
          t967->value = t966.
          t964 = t967.
        ELSE.
          DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t968.
          t964 = t968.
        ENDIF.
        t963 = t964.
        DATA t969 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t969.
        DATA t970 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t970.
        DATA(t971) = abap_true.
        IF t971 = abap_true.
          DATA(t972) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t972 = t972 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t973) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t973->has = abap_true.
          t973->value = t972.
          t970 = t973.
        ELSE.
          DATA t974 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t974.
          t970 = t974.
        ENDIF.
        t969 = t970.
        DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t975.
        DATA t976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t976.
        t975 = t976.
        DATA t977 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t977.
        DATA t978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t978.
        t977 = t978.
        DATA t979 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t979.
        DATA t980 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t980.
        t979 = t980.
        t942 = NEW zcl_lnt_irule_metadata( i_key = t943 i_title = t945 i_short_description = t947 i_bad_example = t969 i_good_example = t975 i_extended_information = t963 i_tags = t949 i_pragma = t977 i_pseudo_comment = t979 ).
        CREATE OBJECT t942->zlnt_view_ownkeys_b0e8086400eb.
        t942->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t981.
        IF t942->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t942->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t981 ).
        ENDIF.
        DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t982.
        IF t942->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t942->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t982 ).
        ENDIF.
        DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t983.
        IF t942->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t942->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t983 ).
        ENDIF.
        DATA t984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t984.
        IF t942->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t942->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t984 ).
        ENDIF.
        DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t985.
        IF t942->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t942->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t985 ).
        ENDIF.
        DATA t986 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t986.
        IF t942->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t942->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t986 ).
        ENDIF.
        CREATE OBJECT t942->zlnt_json_ownkeys_70e5fd461788.
        t942->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t987) = |key|.
        DATA t988 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t988.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = t987 p1 = t988 ).
        ENDIF.
        DATA(t989) = |title|.
        DATA t990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t990.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = t989 p1 = t990 ).
        ENDIF.
        DATA(t991) = |shortDescription|.
        DATA t992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t992.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = t991 p1 = t992 ).
        ENDIF.
        DATA(t993) = |tags|.
        DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t994.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = t993 p1 = t994 ).
        ENDIF.
        DATA(t995) = |extendedInformation|.
        DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t996.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = t995 p1 = t996 ).
        ENDIF.
        DATA(t997) = |badExample|.
        DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t998.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = t997 p1 = t998 ).
        ENDIF.
        t941 = t942->key.
        DATA t999 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t999.
        DATA(t1000) = me->conf.
        t999 = t1000->zlnt_view_read_sr_15c06369f827( ).
        DATA t1001 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1001.
        DATA(t1002) = VALUE abap_bool( ).
        DATA(t1003) = t935.
        IF t1003 IS INITIAL.
          t1002 = abap_true.
        ENDIF.
        IF t1002 = abap_true.
          DATA t1004 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1004.
          t1001 = t1004.
        ELSE.
          DATA t1005 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1005.
          DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1006.
          DATA(t1007) = t935.
          t1006 = t1007.
          DATA t1008 TYPE REF TO object.
          CLEAR t1008.
          IF t1006 IS BOUND AND t1006->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            CREATE OBJECT t1005.
            LOOP AT t1006->entries INTO DATA(t1009).
              DATA(t1010) = CAST zlnt_runtime_dyna_a429568d5be8( t1009-v ).
              DATA t1011 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t1011.
              DATA t1012 TYPE REF TO object.
              CLEAR t1012.
              t1012 = t1010->as_ref( ).
              t1011 ?= t1012.
              t1005->set( p0 = t1009-k p1 = t1011 ).
            ENDLOOP.
          ELSE.
            t1008 = t1006->as_ref( ).
            DATA t1013 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
            CLEAR t1013.
            TRY.
                t1005 ?= t1008.
              CATCH cx_sy_move_cast_error.
                t1013 ?= t1008.
                CREATE OBJECT t1005.
                LOOP AT t1013->entries INTO DATA(t1014).
                  DATA(t1015) = CAST zlnt_runtime_dyna_a429568d5be8( t1014-v ).
                  DATA t1016 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t1016.
                  DATA t1017 TYPE REF TO object.
                  CLEAR t1017.
                  t1017 = t1015->as_ref( ).
                  t1016 ?= t1017.
                  t1005->set( p0 = t1014-k p1 = t1016 ).
                ENDLOOP.
            ENDTRY.
          ENDIF.
          t1001 = t1005.
        ENDIF.
        DATA t1018 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1018.
        t937 = zcl_lnt_issue=>at_statement( i_file = t938 i_statement = t939 i_message_26cb = t940 i_key = t941 i_severity = t999 i_fix = t1001 i_alternative_fixes = t1018 ).
        t934 = t937.
        t933 = t934.
        DATA(t1019) = t2.
        DATA(t1020) = t933.
        t1019->load( ).
        APPEND t1020 TO t1019->items.
        t1019->save( ).
      ENDIF.
      DATA(t1021) = VALUE abap_bool( ).
      DATA(t1022) = VALUE abap_bool( ).
      DATA(t1023) = VALUE abap_bool( ).
      DATA(t1024) = VALUE abap_bool( ).
      DATA(t1025) = VALUE abap_bool( ).
      DATA t1026 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1026.
      DATA(t1027) = me->conf.
      t1026 = t1027->zlnt_view_read_sr_b9ac5976bbdc( ).
      IF t1026 IS BOUND.
        IF t1026->has = abap_true.
          t1025 = xsdbool( t1026->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1024 = t1025.
      IF t1025 = abap_true.
        DATA(t1028) = VALUE abap_bool( ).
        DATA(t1029) = VALUE abap_bool( ).
        DATA(t1030) = t22.
        t1029 = xsdbool( t1030 IS BOUND AND t1030 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t1028 = t1029.
        IF t1029 = abap_false.
          DATA(t1031) = VALUE abap_bool( ).
          DATA(t1032) = t22.
          t1031 = xsdbool( t1032 IS BOUND AND t1032 IS INSTANCE OF zcl_lnt_st_select_loop ).
          t1028 = t1031.
        ENDIF.
        t1024 = t1028.
      ENDIF.
      t1023 = t1024.
      IF t1024 = abap_true.
        DATA(t1033) = VALUE abap_bool( ).
        DATA t1034 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1034.
        DATA t1035 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1035.
        DATA(t1036) = t17.
        DATA(t1037) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
        t1035 = t1036->find_first_expression( i_type_9913 = t1037 ).
        t1034 = t1035.
        DATA t1038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1038.
        DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1039.
        t1038 = t1039.
        DATA(t1040) = VALUE abap_bool( ).
        DATA(t1041) = t1034.
        IF t1041 IS INITIAL.
          t1040 = abap_true.
        ENDIF.
        t1033 = t1040.
        t1023 = t1033.
      ENDIF.
      t1022 = t1023.
      IF t1023 = abap_true.
        DATA(t1042) = VALUE abap_bool( ).
        DATA t1043 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1043.
        DATA t1044 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1044.
        DATA(t1045) = t17.
        DATA(t1046) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
        t1044 = t1045->find_first_expression( i_type_9913 = t1046 ).
        t1043 = t1044.
        DATA t1047 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1047.
        DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1048.
        t1047 = t1048.
        DATA(t1049) = VALUE abap_bool( ).
        DATA(t1050) = t1043.
        IF t1050 IS INITIAL.
          t1049 = abap_true.
        ENDIF.
        t1042 = t1049.
        t1022 = t1042.
      ENDIF.
      t1021 = t1022.
      IF t1022 = abap_true.
        DATA(t1051) = VALUE abap_bool( ).
        DATA t1052 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1052.
        DATA t1053 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1053.
        DATA(t1054) = t17.
        DATA(t1055) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
        t1053 = t1054->find_first_expression( i_type_9913 = t1055 ).
        t1052 = t1053.
        DATA t1056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1056.
        DATA t1057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1057.
        t1056 = t1057.
        DATA(t1058) = VALUE abap_bool( ).
        DATA(t1059) = t1052.
        IF t1059 IS INITIAL.
          t1058 = abap_true.
        ENDIF.
        t1051 = t1058.
        t1021 = t1051.
      ENDIF.
      IF t1021 = abap_true.
        DATA t1060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1060.
        DATA t1061 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1061.
        DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1062.
        DATA t1063 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1063.
        DATA t1064 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1064.
        DATA t1065 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1065.
        DATA(t1066) = t17.
        DATA(t1067) = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
        t1065 = t1066->find_first_expression( i_type_9913 = t1067 ).
        t1064 = t1065.
        DATA t1068 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1068.
        DATA(t1069) = VALUE abap_bool( ).
        DATA(t1070) = t1064.
        IF t1070 IS INITIAL.
          t1069 = abap_true.
        ENDIF.
        IF t1069 = abap_true.
          DATA t1071 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1071.
          t1068 = t1071.
        ELSE.
          DATA(t1072) = VALUE string( ).
          DATA t1073 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t1073.
          DATA(t1074) = t1064.
          t1073 = t1074.
          t1072 = t1073->concat_tokens( ).
          DATA(t1075) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1075->has = abap_true.
          t1075->value = t1072.
          t1068 = t1075.
        ENDIF.
        t1063 = t1068.
        t1062 = t1063.
        DATA t1076 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1076.
        DATA(t1077) = VALUE abap_bool( ).
        DATA(t1078) = t1062.
        IF t1078 IS INITIAL.
          t1077 = abap_true.
        ELSEIF t1078->has = abap_false.
          t1077 = abap_true.
        ENDIF.
        IF t1077 = abap_true.
          DATA t1079 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1079.
          t1076 = t1079.
        ELSE.
          DATA(t1080) = VALUE string( ).
          DATA(t1081) = VALUE string( ).
          DATA(t1082) = t1062.
          t1081 = t1082->value.
          DATA(t1083) = strlen( t1081 ).
          t1080 = t1081.
          IF t1080 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t1080 TO UPPER CASE.
          ELSE.
            t1080 = zlnt_runtime_uppe_91169605024d=>full( t1080 ).
          ENDIF.
          DATA(t1084) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1084->has = abap_true.
          t1084->value = t1080.
          t1076 = t1084.
        ENDIF.
        t1061 = t1076.
        t1060 = t1061.
        DATA(t1085) = VALUE abap_bool( ).
        DATA(t1086) = VALUE abap_bool( ).
        DATA(t1087) = t1060.
        DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1088.
        DATA(t1089) = abap_true.
        IF t1089 = abap_true.
          DATA(t1090) = |COUNT(*)|.
          DATA(t1091) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1091->has = abap_true.
          t1091->value = t1090.
          t1088 = t1091.
        ELSE.
          DATA t1092 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1092.
          t1088 = t1092.
        ENDIF.
        DATA(t1093) = VALUE abap_bool( ).
        DATA(t1094) = VALUE abap_bool( ).
        IF t1087 IS BOUND.
          t1093 = t1087->has.
        ENDIF.
        IF t1088 IS BOUND.
          t1094 = t1088->has.
        ENDIF.
        IF t1093 = t1094.
          IF t1093 = abap_false.
            t1086 = abap_true.
          ELSEIF t1087->value = t1088->value.
            t1086 = abap_true.
          ENDIF.
        ENDIF.
        IF t1086 = abap_true.
          t1086 = abap_false.
        ELSE.
          t1086 = abap_true.
        ENDIF.
        t1085 = t1086.
        IF t1086 = abap_true.
          DATA(t1095) = VALUE abap_bool( ).
          DATA(t1096) = t1060.
          DATA t1097 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1097.
          DATA(t1098) = abap_true.
          IF t1098 = abap_true.
            DATA(t1099) = |COUNT( * )|.
            DATA(t1100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1100->has = abap_true.
            t1100->value = t1099.
            t1097 = t1100.
          ELSE.
            DATA t1101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1101.
            t1097 = t1101.
          ENDIF.
          DATA(t1102) = VALUE abap_bool( ).
          DATA(t1103) = VALUE abap_bool( ).
          IF t1096 IS BOUND.
            t1102 = t1096->has.
          ENDIF.
          IF t1097 IS BOUND.
            t1103 = t1097->has.
          ENDIF.
          IF t1102 = t1103.
            IF t1102 = abap_false.
              t1095 = abap_true.
            ELSEIF t1096->value = t1097->value.
              t1095 = abap_true.
            ENDIF.
          ENDIF.
          IF t1095 = abap_true.
            t1095 = abap_false.
          ELSE.
            t1095 = abap_true.
          ENDIF.
          t1085 = t1095.
        ENDIF.
        IF t1085 = abap_true.
          DATA t1104 TYPE REF TO zcl_lnt_issue.
          CLEAR t1104.
          DATA t1105 TYPE REF TO zcl_lnt_issue.
          CLEAR t1105.
          DATA(t1106) = t1.
          DATA(t1107) = t17.
          DATA(t1108) = |SELECT without INTO|.
          DATA(t1109) = VALUE string( ).
          DATA t1110 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1110.
          DATA(t1111) = VALUE string( ).
          DATA(t1112) = |obsolete_statement|.
          t1111 = t1112.
          DATA(t1113) = VALUE string( ).
          DATA(t1114) = |Obsolete statements|.
          t1113 = t1114.
          DATA(t1115) = VALUE string( ).
          DATA(t1116) = |Checks for usages of certain obsolete statements|.
          t1115 = t1116.
          DATA t1117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1117.
          DATA t1118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1118.
          DATA(t1119) = abap_true.
          IF t1119 = abap_true.
            DATA t1120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1120.
            DATA t1121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1121.
            DATA t1122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1122.
            CREATE OBJECT t1122.
            t1121 = t1122.
            DATA(t1123) = t1121.
            DATA(t1124) = |SingleFile|.
            t1123->load( ).
            APPEND t1124 TO t1123->items.
            t1123->save( ).
            DATA(t1125) = t1121.
            DATA(t1126) = |Styleguide|.
            t1125->load( ).
            APPEND t1126 TO t1125->items.
            t1125->save( ).
            DATA(t1127) = t1121.
            DATA(t1128) = |Quickfix|.
            t1127->load( ).
            APPEND t1128 TO t1127->items.
            t1127->save( ).
            DATA(t1129) = t1121.
            t1120 = t1129.
            t1118 = t1120.
          ELSE.
            DATA t1130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1130.
            t1118 = t1130.
          ENDIF.
          t1117 = t1118.
          DATA t1131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1131.
          DATA t1132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1132.
          DATA(t1133) = abap_true.
          IF t1133 = abap_true.
            DATA(t1134) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t1134 = t1134 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t1134 = t1134 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t1134 = t1134 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t1134 = t1134 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t1134 = t1134 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t1134 = t1134 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t1134 = t1134 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t1134 = t1134 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t1134 = t1134 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t1134 = t1134 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t1134 = t1134 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t1134 = t1134 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1134 = t1134 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t1134 = t1134 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1134 = t1134 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t1134 = t1134 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t1134 = t1134 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t1134 = t1134 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t1134 = t1134 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t1134 = t1134 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t1134 = t1134 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t1134 = t1134 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t1134 = t1134 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t1134 = t1134 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t1134 = t1134 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t1134 = t1134 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t1134 = t1134 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t1134 = t1134 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t1134 = t1134 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t1134 = t1134 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t1134 = t1134 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t1134 = t1134 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t1134 = t1134 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t1134 = t1134 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t1134 = t1134 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t1134 = t1134 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t1134 = t1134 && |ect_client_obsolete.html|.
            DATA(t1135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1135->has = abap_true.
            t1135->value = t1134.
            t1132 = t1135.
          ELSE.
            DATA t1136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1136.
            t1132 = t1136.
          ENDIF.
          t1131 = t1132.
          DATA t1137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1137.
          DATA t1138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1138.
          DATA(t1139) = abap_true.
          IF t1139 = abap_true.
            DATA(t1140) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1140 = t1140 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1141->has = abap_true.
            t1141->value = t1140.
            t1138 = t1141.
          ELSE.
            DATA t1142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1142.
            t1138 = t1142.
          ENDIF.
          t1137 = t1138.
          DATA t1143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1143.
          DATA t1144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1144.
          t1143 = t1144.
          DATA t1145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1145.
          DATA t1146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1146.
          t1145 = t1146.
          DATA t1147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1147.
          DATA t1148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1148.
          t1147 = t1148.
          t1110 = NEW zcl_lnt_irule_metadata( i_key = t1111 i_title = t1113 i_short_description = t1115 i_bad_example = t1137 i_good_example = t1143 i_extended_information = t1131 i_tags = t1117 i_pragma = t1145 i_pseudo_comment = t1147 ).
          CREATE OBJECT t1110->zlnt_view_ownkeys_b0e8086400eb.
          t1110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1149.
          IF t1110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1149 ).
          ENDIF.
          DATA t1150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1150.
          IF t1110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1150 ).
          ENDIF.
          DATA t1151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1151.
          IF t1110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1151 ).
          ENDIF.
          DATA t1152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1152.
          IF t1110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1152 ).
          ENDIF.
          DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1153.
          IF t1110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1153 ).
          ENDIF.
          DATA t1154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1154.
          IF t1110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1154 ).
          ENDIF.
          CREATE OBJECT t1110->zlnt_json_ownkeys_70e5fd461788.
          t1110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1155) = |key|.
          DATA t1156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1156.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1155 p1 = t1156 ).
          ENDIF.
          DATA(t1157) = |title|.
          DATA t1158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1158.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1157 p1 = t1158 ).
          ENDIF.
          DATA(t1159) = |shortDescription|.
          DATA t1160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1160.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1159 p1 = t1160 ).
          ENDIF.
          DATA(t1161) = |tags|.
          DATA t1162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1162.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1161 p1 = t1162 ).
          ENDIF.
          DATA(t1163) = |extendedInformation|.
          DATA t1164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1164.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1163 p1 = t1164 ).
          ENDIF.
          DATA(t1165) = |badExample|.
          DATA t1166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1166.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1165 p1 = t1166 ).
          ENDIF.
          t1109 = t1110->key.
          DATA t1167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1167.
          DATA(t1168) = me->conf.
          t1167 = t1168->zlnt_view_read_sr_15c06369f827( ).
          DATA t1169 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1169.
          DATA t1170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1170.
          t1105 = zcl_lnt_issue=>at_statement( i_file = t1106 i_statement = t1107 i_message_26cb = t1108 i_key = t1109 i_severity = t1167 i_fix = t1169 i_alternative_fixes = t1170 ).
          t1104 = t1105.
          DATA(t1171) = t2.
          DATA(t1172) = t1104.
          t1171->load( ).
          APPEND t1172 TO t1171->items.
          t1171->save( ).
        ENDIF.
      ENDIF.
      DATA(t1173) = VALUE abap_bool( ).
      DATA(t1174) = VALUE abap_bool( ).
      DATA t1175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1175.
      DATA(t1176) = me->conf.
      t1175 = t1176->zlnt_view_read_sr_73010cccd5a3( ).
      IF t1175 IS BOUND.
        IF t1175->has = abap_true.
          t1174 = xsdbool( t1175->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1173 = t1174.
      IF t1174 = abap_true.
        DATA(t1177) = VALUE abap_bool( ).
        DATA(t1178) = t22.
        t1177 = xsdbool( t1178 IS BOUND AND t1178 IS INSTANCE OF zcl_lnt_st_if ).
        t1173 = t1177.
      ENDIF.
      IF t1173 = abap_true.
        DATA t1179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1179.
        DATA(t1180) = t17.
        DATA(t1181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
        t1179 = t1180->find_all_expressions( i_type_9913 = t1181 ).
        DATA t1182 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1182.
        DATA t1183 TYPE REF TO object.
        CLEAR t1183.
        DATA(t1184) = VALUE i( ).
        DO.
          t1179->load( ).
          IF t1184 >= lines( t1179->items ).
            EXIT.
          ENDIF.
          CLEAR t1183.
          READ TABLE t1179->items INDEX t1184 + 1 INTO t1183.
          t1184 = t1184 + 1.
          DATA t1185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1185.
          CLEAR t1182.
          IF t1183 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t1185 ?= t1183.
            DATA t1186 TYPE REF TO object.
            CLEAR t1186.
            t1186 = t1185->as_ref( ).
            t1182 ?= t1186.
          ELSE.
            t1182 ?= t1183.
          ENDIF.
          DATA t1187 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1187.
          DATA t1188 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1188.
          DATA(t1189) = t1182.
          DATA(t1190) = |REQUESTED|.
          t1188 = t1189->find_direct_token_by_text( i_text = t1190 ).
          t1187 = t1188.
          DATA(t1191) = VALUE abap_bool( ).
          DATA(t1192) = t1187.
          t1191 = xsdbool( t1192 IS BOUND ).
          IF t1191 = abap_true.
            DATA t1193 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1193.
            DATA t1194 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1194.
            DATA(t1195) = t1.
            DATA t1196 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1196.
            DATA(t1197) = t1187.
            t1196 = t1197.
            DATA(t1198) = |SUPPLIED|.
            t1194 = zcl_lnt_edit_helper=>replace_token( i_file = t1195 i_token = t1196 i_text = t1198 ).
            t1193 = t1194.
            DATA t1199 TYPE REF TO zcl_lnt_issue.
            CLEAR t1199.
            DATA t1200 TYPE REF TO zcl_lnt_issue.
            CLEAR t1200.
            DATA(t1201) = t1.
            DATA t1202 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1202.
            DATA(t1203) = t1187.
            t1202 = t1203.
            DATA(t1204) = |IS REQUESTED is obsolete|.
            DATA(t1205) = VALUE string( ).
            DATA t1206 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t1206.
            DATA(t1207) = VALUE string( ).
            DATA(t1208) = |obsolete_statement|.
            t1207 = t1208.
            DATA(t1209) = VALUE string( ).
            DATA(t1210) = |Obsolete statements|.
            t1209 = t1210.
            DATA(t1211) = VALUE string( ).
            DATA(t1212) = |Checks for usages of certain obsolete statements|.
            t1211 = t1212.
            DATA t1213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1213.
            DATA t1214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1214.
            DATA(t1215) = abap_true.
            IF t1215 = abap_true.
              DATA t1216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1216.
              DATA t1217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1217.
              DATA t1218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1218.
              CREATE OBJECT t1218.
              t1217 = t1218.
              DATA(t1219) = t1217.
              DATA(t1220) = |SingleFile|.
              t1219->load( ).
              APPEND t1220 TO t1219->items.
              t1219->save( ).
              DATA(t1221) = t1217.
              DATA(t1222) = |Styleguide|.
              t1221->load( ).
              APPEND t1222 TO t1221->items.
              t1221->save( ).
              DATA(t1223) = t1217.
              DATA(t1224) = |Quickfix|.
              t1223->load( ).
              APPEND t1224 TO t1223->items.
              t1223->save( ).
              DATA(t1225) = t1217.
              t1216 = t1225.
              t1214 = t1216.
            ELSE.
              DATA t1226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1226.
              t1214 = t1226.
            ENDIF.
            t1213 = t1214.
            DATA t1227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1227.
            DATA t1228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1228.
            DATA(t1229) = abap_true.
            IF t1229 = abap_true.
              DATA(t1230) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
              t1230 = t1230 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
              t1230 = t1230 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
              t1230 = t1230 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
              t1230 = t1230 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
              t1230 = t1230 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
              t1230 = t1230 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
              t1230 = t1230 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
              t1230 = t1230 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
              t1230 = t1230 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
              t1230 = t1230 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
              t1230 = t1230 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
              t1230 = t1230 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1230 = t1230 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
              t1230 = t1230 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1230 = t1230 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
              t1230 = t1230 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
              t1230 = t1230 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
              t1230 = t1230 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
              t1230 = t1230 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
              t1230 = t1230 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
              t1230 = t1230 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
              t1230 = t1230 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
              t1230 = t1230 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
              t1230 = t1230 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
              t1230 = t1230 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
              t1230 = t1230 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
              t1230 = t1230 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
              t1230 = t1230 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
              t1230 = t1230 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
              t1230 = t1230 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
              t1230 = t1230 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
              t1230 = t1230 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
              t1230 = t1230 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
              t1230 = t1230 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
              t1230 = t1230 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
              t1230 = t1230 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
              t1230 = t1230 && |ect_client_obsolete.html|.
              DATA(t1231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1231->has = abap_true.
              t1231->value = t1230.
              t1228 = t1231.
            ELSE.
              DATA t1232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1232.
              t1228 = t1232.
            ENDIF.
            t1227 = t1228.
            DATA t1233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1233.
            DATA t1234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1234.
            DATA(t1235) = abap_true.
            IF t1235 = abap_true.
              DATA(t1236) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
              t1236 = t1236 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
              DATA(t1237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1237->has = abap_true.
              t1237->value = t1236.
              t1234 = t1237.
            ELSE.
              DATA t1238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1238.
              t1234 = t1238.
            ENDIF.
            t1233 = t1234.
            DATA t1239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1239.
            DATA t1240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1240.
            t1239 = t1240.
            DATA t1241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1241.
            DATA t1242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1242.
            t1241 = t1242.
            DATA t1243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1243.
            DATA t1244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1244.
            t1243 = t1244.
            t1206 = NEW zcl_lnt_irule_metadata( i_key = t1207 i_title = t1209 i_short_description = t1211 i_bad_example = t1233 i_good_example = t1239 i_extended_information = t1227 i_tags = t1213 i_pragma = t1241 i_pseudo_comment = t1243 ).
            CREATE OBJECT t1206->zlnt_view_ownkeys_b0e8086400eb.
            t1206->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1245.
            IF t1206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1245 ).
            ENDIF.
            DATA t1246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1246.
            IF t1206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1246 ).
            ENDIF.
            DATA t1247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1247.
            IF t1206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1247 ).
            ENDIF.
            DATA t1248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1248.
            IF t1206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1248 ).
            ENDIF.
            DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1249.
            IF t1206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1249 ).
            ENDIF.
            DATA t1250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1250.
            IF t1206->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1250 ).
            ENDIF.
            CREATE OBJECT t1206->zlnt_json_ownkeys_70e5fd461788.
            t1206->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t1251) = |key|.
            DATA t1252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1252.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1251 p1 = t1252 ).
            ENDIF.
            DATA(t1253) = |title|.
            DATA t1254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1254.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1253 p1 = t1254 ).
            ENDIF.
            DATA(t1255) = |shortDescription|.
            DATA t1256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1256.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1255 p1 = t1256 ).
            ENDIF.
            DATA(t1257) = |tags|.
            DATA t1258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1258.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1257 p1 = t1258 ).
            ENDIF.
            DATA(t1259) = |extendedInformation|.
            DATA t1260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1260.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1259 p1 = t1260 ).
            ENDIF.
            DATA(t1261) = |badExample|.
            DATA t1262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1262.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1261 p1 = t1262 ).
            ENDIF.
            t1205 = t1206->key.
            DATA t1263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1263.
            DATA(t1264) = me->conf.
            t1263 = t1264->zlnt_view_read_sr_15c06369f827( ).
            DATA t1265 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1265.
            DATA(t1266) = abap_true.
            IF t1266 = abap_true.
              DATA(t1267) = t1193.
              t1265 = t1267.
            ELSE.
              DATA t1268 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t1268.
              t1265 = t1268.
            ENDIF.
            t1200 = zcl_lnt_issue=>at_token( i_file = t1201 i_token = t1202 i_message_26cb = t1204 i_key = t1205 i_severity = t1263 i_fix = t1265 ).
            t1199 = t1200.
            DATA(t1269) = t2.
            DATA(t1270) = t1199.
            t1269->load( ).
            APPEND t1270 TO t1269->items.
            t1269->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
      DATA(t1271) = VALUE abap_bool( ).
      DATA t1272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1272.
      DATA(t1273) = me->conf.
      t1272 = t1273->zlnt_view_read_sr_9564c57a9817( ).
      IF t1272 IS BOUND.
        IF t1272->has = abap_true.
          t1271 = xsdbool( t1272->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t1271 = abap_true.
        DATA(t1274) = VALUE abap_bool( ).
        DATA(t1275) = VALUE abap_bool( ).
        DATA(t1276) = VALUE abap_bool( ).
        DATA(t1277) = VALUE abap_bool( ).
        DATA(t1278) = t22.
        t1277 = xsdbool( t1278 IS BOUND AND t1278 IS INSTANCE OF zcl_lnt_st_describe ).
        t1276 = t1277.
        IF t1277 = abap_false.
          DATA(t1279) = VALUE abap_bool( ).
          DATA(t1280) = t22.
          t1279 = xsdbool( t1280 IS BOUND AND t1280 IS INSTANCE OF zcl_lnt_st_ranges ).
          t1276 = t1279.
        ENDIF.
        t1275 = t1276.
        IF t1276 = abap_false.
          DATA(t1281) = VALUE abap_bool( ).
          DATA(t1282) = t22.
          t1281 = xsdbool( t1282 IS BOUND AND t1282 IS INSTANCE OF zcl_lnt_data_begin ).
          t1275 = t1281.
        ENDIF.
        t1274 = t1275.
        IF t1275 = abap_false.
          DATA(t1283) = VALUE abap_bool( ).
          DATA(t1284) = t22.
          t1283 = xsdbool( t1284 IS BOUND AND t1284 IS INSTANCE OF zcl_lnt_type_begin ).
          t1274 = t1283.
        ENDIF.
        IF t1274 = abap_true.
          DATA t1285 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1285.
          DATA t1286 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1286.
          DATA(t1287) = t17.
          DATA(t1288) = |OCCURS|.
          t1286 = t1287->find_direct_token_by_text( i_text = t1288 ).
          t1285 = t1286.
          DATA(t1289) = VALUE abap_bool( ).
          DATA(t1290) = t1285.
          t1289 = xsdbool( t1290 IS BOUND ).
          IF t1289 = abap_true.
            DATA t1291 TYPE REF TO zcl_lnt_issue.
            CLEAR t1291.
            DATA t1292 TYPE REF TO zcl_lnt_issue.
            CLEAR t1292.
            DATA(t1293) = t1.
            DATA t1294 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1294.
            DATA(t1295) = t1285.
            t1294 = t1295.
            DATA(t1296) = |OCCURS is obsolete|.
            DATA(t1297) = VALUE string( ).
            DATA t1298 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t1298.
            DATA(t1299) = VALUE string( ).
            DATA(t1300) = |obsolete_statement|.
            t1299 = t1300.
            DATA(t1301) = VALUE string( ).
            DATA(t1302) = |Obsolete statements|.
            t1301 = t1302.
            DATA(t1303) = VALUE string( ).
            DATA(t1304) = |Checks for usages of certain obsolete statements|.
            t1303 = t1304.
            DATA t1305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1305.
            DATA t1306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1306.
            DATA(t1307) = abap_true.
            IF t1307 = abap_true.
              DATA t1308 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1308.
              DATA t1309 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1309.
              DATA t1310 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1310.
              CREATE OBJECT t1310.
              t1309 = t1310.
              DATA(t1311) = t1309.
              DATA(t1312) = |SingleFile|.
              t1311->load( ).
              APPEND t1312 TO t1311->items.
              t1311->save( ).
              DATA(t1313) = t1309.
              DATA(t1314) = |Styleguide|.
              t1313->load( ).
              APPEND t1314 TO t1313->items.
              t1313->save( ).
              DATA(t1315) = t1309.
              DATA(t1316) = |Quickfix|.
              t1315->load( ).
              APPEND t1316 TO t1315->items.
              t1315->save( ).
              DATA(t1317) = t1309.
              t1308 = t1317.
              t1306 = t1308.
            ELSE.
              DATA t1318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1318.
              t1306 = t1318.
            ENDIF.
            t1305 = t1306.
            DATA t1319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1319.
            DATA t1320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1320.
            DATA(t1321) = abap_true.
            IF t1321 = abap_true.
              DATA(t1322) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
              t1322 = t1322 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
              t1322 = t1322 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
              t1322 = t1322 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
              t1322 = t1322 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
              t1322 = t1322 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
              t1322 = t1322 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
              t1322 = t1322 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
              t1322 = t1322 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
              t1322 = t1322 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
              t1322 = t1322 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
              t1322 = t1322 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
              t1322 = t1322 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1322 = t1322 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
              t1322 = t1322 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1322 = t1322 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
              t1322 = t1322 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
              t1322 = t1322 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
              t1322 = t1322 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
              t1322 = t1322 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
              t1322 = t1322 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
              t1322 = t1322 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
              t1322 = t1322 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
              t1322 = t1322 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
              t1322 = t1322 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
              t1322 = t1322 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
              t1322 = t1322 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
              t1322 = t1322 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
              t1322 = t1322 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
              t1322 = t1322 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
              t1322 = t1322 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
              t1322 = t1322 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
              t1322 = t1322 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
              t1322 = t1322 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
              t1322 = t1322 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
              t1322 = t1322 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
              t1322 = t1322 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
              t1322 = t1322 && |ect_client_obsolete.html|.
              DATA(t1323) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1323->has = abap_true.
              t1323->value = t1322.
              t1320 = t1323.
            ELSE.
              DATA t1324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1324.
              t1320 = t1324.
            ENDIF.
            t1319 = t1320.
            DATA t1325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1325.
            DATA t1326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1326.
            DATA(t1327) = abap_true.
            IF t1327 = abap_true.
              DATA(t1328) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
              t1328 = t1328 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
              DATA(t1329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1329->has = abap_true.
              t1329->value = t1328.
              t1326 = t1329.
            ELSE.
              DATA t1330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1330.
              t1326 = t1330.
            ENDIF.
            t1325 = t1326.
            DATA t1331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1331.
            DATA t1332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1332.
            t1331 = t1332.
            DATA t1333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1333.
            DATA t1334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1334.
            t1333 = t1334.
            DATA t1335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1335.
            DATA t1336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1336.
            t1335 = t1336.
            t1298 = NEW zcl_lnt_irule_metadata( i_key = t1299 i_title = t1301 i_short_description = t1303 i_bad_example = t1325 i_good_example = t1331 i_extended_information = t1319 i_tags = t1305 i_pragma = t1333 i_pseudo_comment = t1335 ).
            CREATE OBJECT t1298->zlnt_view_ownkeys_b0e8086400eb.
            t1298->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1337.
            IF t1298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1337 ).
            ENDIF.
            DATA t1338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1338.
            IF t1298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1338 ).
            ENDIF.
            DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1339.
            IF t1298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1339 ).
            ENDIF.
            DATA t1340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1340.
            IF t1298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1340 ).
            ENDIF.
            DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1341.
            IF t1298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1341 ).
            ENDIF.
            DATA t1342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1342.
            IF t1298->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1342 ).
            ENDIF.
            CREATE OBJECT t1298->zlnt_json_ownkeys_70e5fd461788.
            t1298->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t1343) = |key|.
            DATA t1344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1344.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1343 p1 = t1344 ).
            ENDIF.
            DATA(t1345) = |title|.
            DATA t1346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1346.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1345 p1 = t1346 ).
            ENDIF.
            DATA(t1347) = |shortDescription|.
            DATA t1348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1348.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1347 p1 = t1348 ).
            ENDIF.
            DATA(t1349) = |tags|.
            DATA t1350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1350.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1349 p1 = t1350 ).
            ENDIF.
            DATA(t1351) = |extendedInformation|.
            DATA t1352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1352.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1351 p1 = t1352 ).
            ENDIF.
            DATA(t1353) = |badExample|.
            DATA t1354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1354.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1353 p1 = t1354 ).
            ENDIF.
            t1297 = t1298->key.
            DATA t1355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1355.
            DATA(t1356) = me->conf.
            t1355 = t1356->zlnt_view_read_sr_15c06369f827( ).
            DATA t1357 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1357.
            t1292 = zcl_lnt_issue=>at_token( i_file = t1293 i_token = t1294 i_message_26cb = t1296 i_key = t1297 i_severity = t1355 i_fix = t1357 ).
            t1291 = t1292.
            DATA(t1358) = t2.
            DATA(t1359) = t1291.
            t1358->load( ).
            APPEND t1359 TO t1358->items.
            t1358->save( ).
          ENDIF.
        ENDIF.
        DATA t1360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1360.
        DATA(t1361) = t17.
        DATA(t1362) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
        t1360 = t1361->find_all_expressions( i_type_9913 = t1362 ).
        DATA t1363 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1363.
        DATA t1364 TYPE REF TO object.
        CLEAR t1364.
        DATA(t1365) = VALUE i( ).
        DO.
          t1360->load( ).
          IF t1365 >= lines( t1360->items ).
            EXIT.
          ENDIF.
          CLEAR t1364.
          READ TABLE t1360->items INDEX t1365 + 1 INTO t1364.
          t1365 = t1365 + 1.
          DATA t1366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1366.
          CLEAR t1363.
          IF t1364 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t1366 ?= t1364.
            DATA t1367 TYPE REF TO object.
            CLEAR t1367.
            t1367 = t1366->as_ref( ).
            t1363 ?= t1367.
          ELSE.
            t1363 ?= t1364.
          ENDIF.
          DATA t1368 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1368.
          DATA t1369 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1369.
          DATA t1370 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t1370.
          DATA t1371 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t1371.
          DATA(t1372) = t1363.
          DATA(t1373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
          t1371 = t1372->find_direct_expression( i_type_9913 = t1373 ).
          t1370 = t1371.
          DATA t1374 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1374.
          DATA(t1375) = VALUE abap_bool( ).
          DATA(t1376) = t1370.
          IF t1376 IS INITIAL.
            t1375 = abap_true.
          ENDIF.
          IF t1375 = abap_true.
            DATA t1377 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1377.
            t1374 = t1377.
          ELSE.
            DATA t1378 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1378.
            DATA t1379 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t1379.
            DATA(t1380) = t1370.
            t1379 = t1380.
            DATA(t1381) = |OCCURS|.
            t1378 = t1379->find_direct_token_by_text( i_text = t1381 ).
            t1374 = t1378.
          ENDIF.
          t1369 = t1374.
          t1368 = t1369.
          DATA(t1382) = VALUE abap_bool( ).
          DATA(t1383) = t1368.
          t1382 = xsdbool( t1383 IS BOUND ).
          IF t1382 = abap_true.
            DATA t1384 TYPE REF TO zcl_lnt_issue.
            CLEAR t1384.
            DATA t1385 TYPE REF TO zcl_lnt_issue.
            CLEAR t1385.
            DATA(t1386) = t1.
            DATA t1387 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1387.
            DATA(t1388) = t1368.
            t1387 = t1388.
            DATA(t1389) = |OCCURS is obsolete|.
            DATA(t1390) = VALUE string( ).
            DATA t1391 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t1391.
            DATA(t1392) = VALUE string( ).
            DATA(t1393) = |obsolete_statement|.
            t1392 = t1393.
            DATA(t1394) = VALUE string( ).
            DATA(t1395) = |Obsolete statements|.
            t1394 = t1395.
            DATA(t1396) = VALUE string( ).
            DATA(t1397) = |Checks for usages of certain obsolete statements|.
            t1396 = t1397.
            DATA t1398 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1398.
            DATA t1399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1399.
            DATA(t1400) = abap_true.
            IF t1400 = abap_true.
              DATA t1401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1401.
              DATA t1402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1402.
              DATA t1403 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1403.
              CREATE OBJECT t1403.
              t1402 = t1403.
              DATA(t1404) = t1402.
              DATA(t1405) = |SingleFile|.
              t1404->load( ).
              APPEND t1405 TO t1404->items.
              t1404->save( ).
              DATA(t1406) = t1402.
              DATA(t1407) = |Styleguide|.
              t1406->load( ).
              APPEND t1407 TO t1406->items.
              t1406->save( ).
              DATA(t1408) = t1402.
              DATA(t1409) = |Quickfix|.
              t1408->load( ).
              APPEND t1409 TO t1408->items.
              t1408->save( ).
              DATA(t1410) = t1402.
              t1401 = t1410.
              t1399 = t1401.
            ELSE.
              DATA t1411 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1411.
              t1399 = t1411.
            ENDIF.
            t1398 = t1399.
            DATA t1412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1412.
            DATA t1413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1413.
            DATA(t1414) = abap_true.
            IF t1414 = abap_true.
              DATA(t1415) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
              t1415 = t1415 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
              t1415 = t1415 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
              t1415 = t1415 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
              t1415 = t1415 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
              t1415 = t1415 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
              t1415 = t1415 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
              t1415 = t1415 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
              t1415 = t1415 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
              t1415 = t1415 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
              t1415 = t1415 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
              t1415 = t1415 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
              t1415 = t1415 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1415 = t1415 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
              t1415 = t1415 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1415 = t1415 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
              t1415 = t1415 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
              t1415 = t1415 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
              t1415 = t1415 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
              t1415 = t1415 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
              t1415 = t1415 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
              t1415 = t1415 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
              t1415 = t1415 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
              t1415 = t1415 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
              t1415 = t1415 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
              t1415 = t1415 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
              t1415 = t1415 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
              t1415 = t1415 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
              t1415 = t1415 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
              t1415 = t1415 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
              t1415 = t1415 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
              t1415 = t1415 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
              t1415 = t1415 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
              t1415 = t1415 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
              t1415 = t1415 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
              t1415 = t1415 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
              t1415 = t1415 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
              t1415 = t1415 && |ect_client_obsolete.html|.
              DATA(t1416) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1416->has = abap_true.
              t1416->value = t1415.
              t1413 = t1416.
            ELSE.
              DATA t1417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1417.
              t1413 = t1417.
            ENDIF.
            t1412 = t1413.
            DATA t1418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1418.
            DATA t1419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1419.
            DATA(t1420) = abap_true.
            IF t1420 = abap_true.
              DATA(t1421) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
              t1421 = t1421 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
              DATA(t1422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1422->has = abap_true.
              t1422->value = t1421.
              t1419 = t1422.
            ELSE.
              DATA t1423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1423.
              t1419 = t1423.
            ENDIF.
            t1418 = t1419.
            DATA t1424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1424.
            DATA t1425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1425.
            t1424 = t1425.
            DATA t1426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1426.
            DATA t1427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1427.
            t1426 = t1427.
            DATA t1428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1428.
            DATA t1429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1429.
            t1428 = t1429.
            t1391 = NEW zcl_lnt_irule_metadata( i_key = t1392 i_title = t1394 i_short_description = t1396 i_bad_example = t1418 i_good_example = t1424 i_extended_information = t1412 i_tags = t1398 i_pragma = t1426 i_pseudo_comment = t1428 ).
            CREATE OBJECT t1391->zlnt_view_ownkeys_b0e8086400eb.
            t1391->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1430.
            IF t1391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1430 ).
            ENDIF.
            DATA t1431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1431.
            IF t1391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1431 ).
            ENDIF.
            DATA t1432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1432.
            IF t1391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1432 ).
            ENDIF.
            DATA t1433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1433.
            IF t1391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1433 ).
            ENDIF.
            DATA t1434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1434.
            IF t1391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1434 ).
            ENDIF.
            DATA t1435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1435.
            IF t1391->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1435 ).
            ENDIF.
            CREATE OBJECT t1391->zlnt_json_ownkeys_70e5fd461788.
            t1391->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t1436) = |key|.
            DATA t1437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1437.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1436 p1 = t1437 ).
            ENDIF.
            DATA(t1438) = |title|.
            DATA t1439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1439.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1438 p1 = t1439 ).
            ENDIF.
            DATA(t1440) = |shortDescription|.
            DATA t1441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1441.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1440 p1 = t1441 ).
            ENDIF.
            DATA(t1442) = |tags|.
            DATA t1443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1443.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1442 p1 = t1443 ).
            ENDIF.
            DATA(t1444) = |extendedInformation|.
            DATA t1445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1445.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1444 p1 = t1445 ).
            ENDIF.
            DATA(t1446) = |badExample|.
            DATA t1447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1447.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1446 p1 = t1447 ).
            ENDIF.
            t1390 = t1391->key.
            DATA t1448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1448.
            DATA(t1449) = me->conf.
            t1448 = t1449->zlnt_view_read_sr_15c06369f827( ).
            DATA t1450 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1450.
            t1385 = zcl_lnt_issue=>at_token( i_file = t1386 i_token = t1387 i_message_26cb = t1389 i_key = t1390 i_severity = t1448 i_fix = t1450 ).
            t1384 = t1385.
            DATA(t1451) = t2.
            DATA(t1452) = t1384.
            t1451->load( ).
            APPEND t1452 TO t1451->items.
            t1451->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
      DATA(t1453) = VALUE abap_bool( ).
      DATA(t1454) = VALUE abap_bool( ).
      DATA(t1455) = VALUE abap_bool( ).
      DATA(t1456) = me->conf.
      t1455 = t1456->zlnt_view_read_sr_5ab84e52ca26( ).
      DATA(t1457) = abap_true.
      t1454 = xsdbool( t1455 = t1457 ).
      t1453 = t1454.
      IF t1454 = abap_true.
        DATA(t1458) = VALUE abap_bool( ).
        DATA(t1459) = t22.
        t1458 = xsdbool( t1459 IS BOUND AND t1459 IS INSTANCE OF zcl_lnt_st_data ).
        t1453 = t1458.
      ENDIF.
      IF t1453 = abap_true.
        DATA(t1460) = VALUE abap_bool( ).
        DATA(t1461) = VALUE i( ).
        DATA(t1462) = VALUE string( ).
        DATA(t1463) = VALUE string( ).
        DATA(t1464) = t17.
        t1463 = t1464->concat_tokens( ).
        DATA(t1465) = strlen( t1463 ).
        t1462 = t1463.
        IF t1462 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1462 TO UPPER CASE.
        ELSE.
          t1462 = zlnt_runtime_uppe_91169605024d=>full( t1462 ).
        ENDIF.
        DATA(t1466) = |WITH HEADER LINE|.
        DATA(t1467) = strlen( t1462 ).
        IF t1466 IS INITIAL.
          t1461 = 0.
        ELSE.
          FIND t1466 IN t1462 MATCH OFFSET t1461.
          IF sy-subrc <> 0.
            t1461 = -1.
          ENDIF.
        ENDIF.
        DATA(t1468) = 0.
        t1460 = xsdbool( t1461 >= t1468 ).
        IF t1460 = abap_true.
          DATA t1469 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1469.
          DATA t1470 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1470.
          DATA t1471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1471.
          DATA t1472 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1472.
          DATA(t1473) = t17.
          t1472 = t1473->get_tokens( ).
          t1471 = t1472.
          DATA(t1474) = VALUE i( ).
          DATA(t1475) = VALUE i( ).
          DATA(t1476) = t1471.
          t1476->load( ).
          t1475 = lines( t1476->items ).
          t1474 = t1475.
          DATA(t1477) = VALUE i( ).
          DATA(t1478) = 0.
          t1477 = t1478.
          DATA t1479 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1479.
          DATA t1480 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1480.
          t1479 = t1480.
          DO.
            DATA(t1481) = VALUE abap_bool( ).
            DATA(t1482) = t1477.
            DATA(t1483) = t1474.
            t1481 = xsdbool( t1482 < t1483 ).
            IF t1481 = abap_false.
              EXIT.
            ENDIF.
            DATA t1484 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1484.
            DATA t1485 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1485.
            DATA t1486 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1486.
            DATA(t1487) = t1471.
            DATA(t1488) = t1477.
            DATA t1489 TYPE REF TO object.
            CLEAR t1489.
            t1489 = t1487->get( p0 = t1488 ).
            DATA t1490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1490.
            CLEAR t1486.
            IF t1489 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t1490 ?= t1489.
              DATA t1491 TYPE REF TO object.
              CLEAR t1491.
              t1491 = t1490->as_ref( ).
              t1486 ?= t1491.
            ELSE.
              t1486 ?= t1489.
            ENDIF.
            t1485 = t1486.
            t1484 = t1485.
            DATA(t1492) = VALUE abap_bool( ).
            DATA(t1493) = VALUE string( ).
            DATA(t1494) = VALUE string( ).
            DATA t1495 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1495.
            DATA(t1496) = t1484.
            t1495 = t1496.
            DATA(t1497) = VALUE string( ).
            DATA(t1498) = t1495.
            t1497 = t1498->str.
            t1494 = t1497.
            DATA(t1499) = strlen( t1494 ).
            t1493 = t1494.
            IF t1493 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t1493 TO UPPER CASE.
            ELSE.
              t1493 = zlnt_runtime_uppe_91169605024d=>full( t1493 ).
            ENDIF.
            DATA(t1500) = |WITH|.
            t1492 = xsdbool( t1493 = t1500 ).
            IF t1492 = abap_true.
              DATA t1501 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t1501.
              DATA(t1502) = abap_true.
              IF t1502 = abap_true.
                DATA(t1503) = t1484.
                t1501 = t1503.
              ELSE.
                DATA t1504 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t1504.
                t1501 = t1504.
              ENDIF.
              t1479 = t1501.
              EXIT.
            ENDIF.
            DATA(t1505) = VALUE i( ).
            DATA(t1506) = t1477.
            DATA(t1507) = 1.
            t1505 = t1506 + t1507.
            t1477 = t1505.
          ENDDO.
          DATA(t1508) = t1479.
          t1470 = t1508.
          t1469 = t1470.
          DATA(t1509) = VALUE abap_bool( ).
          DATA(t1510) = t1469.
          t1509 = xsdbool( t1510 IS BOUND ).
          IF t1509 = abap_true.
            DATA t1511 TYPE REF TO zcl_lnt_issue.
            CLEAR t1511.
            DATA t1512 TYPE REF TO zcl_lnt_issue.
            CLEAR t1512.
            DATA(t1513) = t1.
            DATA t1514 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1514.
            DATA(t1515) = t1469.
            t1514 = t1515.
            DATA(t1516) = |WITH HEADER LINE is obsolete|.
            DATA(t1517) = VALUE string( ).
            DATA t1518 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t1518.
            DATA(t1519) = VALUE string( ).
            DATA(t1520) = |obsolete_statement|.
            t1519 = t1520.
            DATA(t1521) = VALUE string( ).
            DATA(t1522) = |Obsolete statements|.
            t1521 = t1522.
            DATA(t1523) = VALUE string( ).
            DATA(t1524) = |Checks for usages of certain obsolete statements|.
            t1523 = t1524.
            DATA t1525 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1525.
            DATA t1526 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1526.
            DATA(t1527) = abap_true.
            IF t1527 = abap_true.
              DATA t1528 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1528.
              DATA t1529 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1529.
              DATA t1530 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1530.
              CREATE OBJECT t1530.
              t1529 = t1530.
              DATA(t1531) = t1529.
              DATA(t1532) = |SingleFile|.
              t1531->load( ).
              APPEND t1532 TO t1531->items.
              t1531->save( ).
              DATA(t1533) = t1529.
              DATA(t1534) = |Styleguide|.
              t1533->load( ).
              APPEND t1534 TO t1533->items.
              t1533->save( ).
              DATA(t1535) = t1529.
              DATA(t1536) = |Quickfix|.
              t1535->load( ).
              APPEND t1536 TO t1535->items.
              t1535->save( ).
              DATA(t1537) = t1529.
              t1528 = t1537.
              t1526 = t1528.
            ELSE.
              DATA t1538 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t1538.
              t1526 = t1538.
            ENDIF.
            t1525 = t1526.
            DATA t1539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1539.
            DATA t1540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1540.
            DATA(t1541) = abap_true.
            IF t1541 = abap_true.
              DATA(t1542) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
              t1542 = t1542 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
              t1542 = t1542 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
              t1542 = t1542 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
              t1542 = t1542 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
              t1542 = t1542 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
              t1542 = t1542 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
              t1542 = t1542 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
              t1542 = t1542 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
              t1542 = t1542 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
              t1542 = t1542 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
              t1542 = t1542 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
              t1542 = t1542 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1542 = t1542 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
              t1542 = t1542 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t1542 = t1542 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
              t1542 = t1542 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
              t1542 = t1542 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
              t1542 = t1542 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
              t1542 = t1542 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
              t1542 = t1542 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
              t1542 = t1542 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
              t1542 = t1542 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
              t1542 = t1542 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
              t1542 = t1542 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
              t1542 = t1542 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
              t1542 = t1542 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
              t1542 = t1542 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
              t1542 = t1542 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
              t1542 = t1542 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
              t1542 = t1542 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
              t1542 = t1542 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
              t1542 = t1542 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
              t1542 = t1542 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
              t1542 = t1542 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
              t1542 = t1542 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
              t1542 = t1542 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
              t1542 = t1542 && |ect_client_obsolete.html|.
              DATA(t1543) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1543->has = abap_true.
              t1543->value = t1542.
              t1540 = t1543.
            ELSE.
              DATA t1544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1544.
              t1540 = t1544.
            ENDIF.
            t1539 = t1540.
            DATA t1545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1545.
            DATA t1546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1546.
            DATA(t1547) = abap_true.
            IF t1547 = abap_true.
              DATA(t1548) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
              t1548 = t1548 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
              DATA(t1549) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1549->has = abap_true.
              t1549->value = t1548.
              t1546 = t1549.
            ELSE.
              DATA t1550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t1550.
              t1546 = t1550.
            ENDIF.
            t1545 = t1546.
            DATA t1551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1551.
            DATA t1552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1552.
            t1551 = t1552.
            DATA t1553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1553.
            DATA t1554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1554.
            t1553 = t1554.
            DATA t1555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1555.
            DATA t1556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1556.
            t1555 = t1556.
            t1518 = NEW zcl_lnt_irule_metadata( i_key = t1519 i_title = t1521 i_short_description = t1523 i_bad_example = t1545 i_good_example = t1551 i_extended_information = t1539 i_tags = t1525 i_pragma = t1553 i_pseudo_comment = t1555 ).
            CREATE OBJECT t1518->zlnt_view_ownkeys_b0e8086400eb.
            t1518->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1557.
            IF t1518->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1557 ).
            ENDIF.
            DATA t1558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1558.
            IF t1518->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1558 ).
            ENDIF.
            DATA t1559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1559.
            IF t1518->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1559 ).
            ENDIF.
            DATA t1560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1560.
            IF t1518->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1560 ).
            ENDIF.
            DATA t1561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1561.
            IF t1518->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1561 ).
            ENDIF.
            DATA t1562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1562.
            IF t1518->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1562 ).
            ENDIF.
            CREATE OBJECT t1518->zlnt_json_ownkeys_70e5fd461788.
            t1518->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t1563) = |key|.
            DATA t1564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1564.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1563 p1 = t1564 ).
            ENDIF.
            DATA(t1565) = |title|.
            DATA t1566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1566.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1565 p1 = t1566 ).
            ENDIF.
            DATA(t1567) = |shortDescription|.
            DATA t1568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1568.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1567 p1 = t1568 ).
            ENDIF.
            DATA(t1569) = |tags|.
            DATA t1570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1570.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1569 p1 = t1570 ).
            ENDIF.
            DATA(t1571) = |extendedInformation|.
            DATA t1572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1572.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1571 p1 = t1572 ).
            ENDIF.
            DATA(t1573) = |badExample|.
            DATA t1574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1574.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1573 p1 = t1574 ).
            ENDIF.
            t1517 = t1518->key.
            DATA t1575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1575.
            DATA(t1576) = me->conf.
            t1575 = t1576->zlnt_view_read_sr_15c06369f827( ).
            DATA t1577 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1577.
            t1512 = zcl_lnt_issue=>at_token( i_file = t1513 i_token = t1514 i_message_26cb = t1516 i_key = t1517 i_severity = t1575 i_fix = t1577 ).
            t1511 = t1512.
            DATA(t1578) = t2.
            DATA(t1579) = t1511.
            t1578->load( ).
            APPEND t1579 TO t1578->items.
            t1578->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t1580) = VALUE abap_bool( ).
      DATA(t1581) = VALUE abap_bool( ).
      DATA t1582 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1582.
      DATA(t1583) = me->conf.
      t1582 = t1583->zlnt_view_read_sr_74010c810334( ).
      IF t1582 IS BOUND.
        IF t1582->has = abap_true.
          t1581 = xsdbool( t1582->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1580 = t1581.
      IF t1581 = abap_true.
        DATA(t1584) = VALUE abap_bool( ).
        DATA(t1585) = t22.
        t1584 = xsdbool( t1585 IS BOUND AND t1585 IS INSTANCE OF zcl_lnt_st_statem_field_symbol ).
        t1580 = t1584.
      ENDIF.
      IF t1580 = abap_true.
        DATA t1586 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t1586.
        DATA t1587 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t1587.
        DATA(t1588) = t17.
        DATA(t1589) = |STRUCTURE|.
        t1587 = t1588->find_direct_token_by_text( i_text = t1589 ).
        t1586 = t1587.
        DATA(t1590) = VALUE abap_bool( ).
        DATA(t1591) = t1586.
        t1590 = xsdbool( t1591 IS BOUND ).
        IF t1590 = abap_true.
          DATA t1592 TYPE REF TO zcl_lnt_issue.
          CLEAR t1592.
          DATA t1593 TYPE REF TO zcl_lnt_issue.
          CLEAR t1593.
          DATA(t1594) = t1.
          DATA t1595 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1595.
          DATA(t1596) = t1586.
          t1595 = t1596.
          DATA(t1597) = |FIELD-SYMBOLS ... STRUCTURE is obsolete|.
          DATA(t1598) = VALUE string( ).
          DATA t1599 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1599.
          DATA(t1600) = VALUE string( ).
          DATA(t1601) = |obsolete_statement|.
          t1600 = t1601.
          DATA(t1602) = VALUE string( ).
          DATA(t1603) = |Obsolete statements|.
          t1602 = t1603.
          DATA(t1604) = VALUE string( ).
          DATA(t1605) = |Checks for usages of certain obsolete statements|.
          t1604 = t1605.
          DATA t1606 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1606.
          DATA t1607 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1607.
          DATA(t1608) = abap_true.
          IF t1608 = abap_true.
            DATA t1609 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1609.
            DATA t1610 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1610.
            DATA t1611 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1611.
            CREATE OBJECT t1611.
            t1610 = t1611.
            DATA(t1612) = t1610.
            DATA(t1613) = |SingleFile|.
            t1612->load( ).
            APPEND t1613 TO t1612->items.
            t1612->save( ).
            DATA(t1614) = t1610.
            DATA(t1615) = |Styleguide|.
            t1614->load( ).
            APPEND t1615 TO t1614->items.
            t1614->save( ).
            DATA(t1616) = t1610.
            DATA(t1617) = |Quickfix|.
            t1616->load( ).
            APPEND t1617 TO t1616->items.
            t1616->save( ).
            DATA(t1618) = t1610.
            t1609 = t1618.
            t1607 = t1609.
          ELSE.
            DATA t1619 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1619.
            t1607 = t1619.
          ENDIF.
          t1606 = t1607.
          DATA t1620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1620.
          DATA t1621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1621.
          DATA(t1622) = abap_true.
          IF t1622 = abap_true.
            DATA(t1623) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t1623 = t1623 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t1623 = t1623 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t1623 = t1623 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t1623 = t1623 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t1623 = t1623 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t1623 = t1623 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t1623 = t1623 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t1623 = t1623 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t1623 = t1623 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t1623 = t1623 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t1623 = t1623 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t1623 = t1623 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1623 = t1623 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t1623 = t1623 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1623 = t1623 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t1623 = t1623 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t1623 = t1623 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t1623 = t1623 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t1623 = t1623 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t1623 = t1623 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t1623 = t1623 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t1623 = t1623 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t1623 = t1623 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t1623 = t1623 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t1623 = t1623 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t1623 = t1623 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t1623 = t1623 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t1623 = t1623 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t1623 = t1623 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t1623 = t1623 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t1623 = t1623 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t1623 = t1623 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t1623 = t1623 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t1623 = t1623 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t1623 = t1623 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t1623 = t1623 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t1623 = t1623 && |ect_client_obsolete.html|.
            DATA(t1624) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1624->has = abap_true.
            t1624->value = t1623.
            t1621 = t1624.
          ELSE.
            DATA t1625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1625.
            t1621 = t1625.
          ENDIF.
          t1620 = t1621.
          DATA t1626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1626.
          DATA t1627 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1627.
          DATA(t1628) = abap_true.
          IF t1628 = abap_true.
            DATA(t1629) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1629 = t1629 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1630) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1630->has = abap_true.
            t1630->value = t1629.
            t1627 = t1630.
          ELSE.
            DATA t1631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1631.
            t1627 = t1631.
          ENDIF.
          t1626 = t1627.
          DATA t1632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1632.
          DATA t1633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1633.
          t1632 = t1633.
          DATA t1634 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1634.
          DATA t1635 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1635.
          t1634 = t1635.
          DATA t1636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1636.
          DATA t1637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1637.
          t1636 = t1637.
          t1599 = NEW zcl_lnt_irule_metadata( i_key = t1600 i_title = t1602 i_short_description = t1604 i_bad_example = t1626 i_good_example = t1632 i_extended_information = t1620 i_tags = t1606 i_pragma = t1634 i_pseudo_comment = t1636 ).
          CREATE OBJECT t1599->zlnt_view_ownkeys_b0e8086400eb.
          t1599->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1638.
          IF t1599->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1638 ).
          ENDIF.
          DATA t1639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1639.
          IF t1599->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1639 ).
          ENDIF.
          DATA t1640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1640.
          IF t1599->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1640 ).
          ENDIF.
          DATA t1641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1641.
          IF t1599->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1641 ).
          ENDIF.
          DATA t1642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1642.
          IF t1599->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1642 ).
          ENDIF.
          DATA t1643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1643.
          IF t1599->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1643 ).
          ENDIF.
          CREATE OBJECT t1599->zlnt_json_ownkeys_70e5fd461788.
          t1599->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1644) = |key|.
          DATA t1645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1645.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1644 p1 = t1645 ).
          ENDIF.
          DATA(t1646) = |title|.
          DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1647.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1646 p1 = t1647 ).
          ENDIF.
          DATA(t1648) = |shortDescription|.
          DATA t1649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1649.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1648 p1 = t1649 ).
          ENDIF.
          DATA(t1650) = |tags|.
          DATA t1651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1651.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1650 p1 = t1651 ).
          ENDIF.
          DATA(t1652) = |extendedInformation|.
          DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1653.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1652 p1 = t1653 ).
          ENDIF.
          DATA(t1654) = |badExample|.
          DATA t1655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1655.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1654 p1 = t1655 ).
          ENDIF.
          t1598 = t1599->key.
          DATA t1656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1656.
          DATA(t1657) = me->conf.
          t1656 = t1657->zlnt_view_read_sr_15c06369f827( ).
          DATA t1658 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1658.
          t1593 = zcl_lnt_issue=>at_token( i_file = t1594 i_token = t1595 i_message_26cb = t1597 i_key = t1598 i_severity = t1656 i_fix = t1658 ).
          t1592 = t1593.
          DATA(t1659) = t2.
          DATA(t1660) = t1592.
          t1659->load( ).
          APPEND t1660 TO t1659->items.
          t1659->save( ).
        ENDIF.
      ENDIF.
      DATA(t1661) = VALUE abap_bool( ).
      DATA(t1662) = VALUE abap_bool( ).
      DATA(t1663) = VALUE abap_bool( ).
      DATA t1664 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1664.
      DATA(t1665) = me->conf.
      t1664 = t1665->zlnt_view_read_sr_e7ae581b8c54( ).
      IF t1664 IS BOUND.
        IF t1664->has = abap_true.
          t1663 = xsdbool( t1664->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1662 = t1663.
      IF t1663 = abap_true.
        DATA(t1666) = VALUE abap_bool( ).
        DATA(t1667) = t22.
        t1666 = xsdbool( t1667 IS BOUND AND t1667 IS INSTANCE OF zcl_lnt_type_pools ).
        t1662 = t1666.
      ENDIF.
      t1661 = t1662.
      IF t1662 = abap_true.
        DATA(t1668) = VALUE abap_bool( ).
        DATA(t1669) = t12.
        DATA t1670 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t1670.
        DATA t1671 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t1671.
        DATA t1672 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t1672.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t1672 = zcl_lnt_version_module=>release_b8cd.
        DATA(t1673) = |v702|.
        t1671 = t1672->get( p0 = t1673 ).
        t1670 = t1671.
        t1668 = zcl_lnt_version_module=>release_at_least( i_running = t1669 i_required = t1670 ).
        t1661 = t1668.
      ENDIF.
      IF t1661 = abap_true.
        DATA t1674 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1674.
        DATA t1675 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1675.
        DATA(t1676) = t1.
        DATA(t1677) = t17.
        t1675 = zcl_lnt_edit_helper=>delete_statement( i_file = t1676 i_statement = t1677 ).
        t1674 = t1675.
        DATA t1678 TYPE REF TO zcl_lnt_issue.
        CLEAR t1678.
        DATA t1679 TYPE REF TO zcl_lnt_issue.
        CLEAR t1679.
        DATA(t1680) = t1.
        DATA(t1681) = t17.
        DATA(t1682) = |Statement "TYPE-POOLS" is obsolete|.
        DATA(t1683) = VALUE string( ).
        DATA t1684 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t1684.
        DATA(t1685) = VALUE string( ).
        DATA(t1686) = |obsolete_statement|.
        t1685 = t1686.
        DATA(t1687) = VALUE string( ).
        DATA(t1688) = |Obsolete statements|.
        t1687 = t1688.
        DATA(t1689) = VALUE string( ).
        DATA(t1690) = |Checks for usages of certain obsolete statements|.
        t1689 = t1690.
        DATA t1691 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t1691.
        DATA t1692 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t1692.
        DATA(t1693) = abap_true.
        IF t1693 = abap_true.
          DATA t1694 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1694.
          DATA t1695 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1695.
          DATA t1696 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1696.
          CREATE OBJECT t1696.
          t1695 = t1696.
          DATA(t1697) = t1695.
          DATA(t1698) = |SingleFile|.
          t1697->load( ).
          APPEND t1698 TO t1697->items.
          t1697->save( ).
          DATA(t1699) = t1695.
          DATA(t1700) = |Styleguide|.
          t1699->load( ).
          APPEND t1700 TO t1699->items.
          t1699->save( ).
          DATA(t1701) = t1695.
          DATA(t1702) = |Quickfix|.
          t1701->load( ).
          APPEND t1702 TO t1701->items.
          t1701->save( ).
          DATA(t1703) = t1695.
          t1694 = t1703.
          t1692 = t1694.
        ELSE.
          DATA t1704 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1704.
          t1692 = t1704.
        ENDIF.
        t1691 = t1692.
        DATA t1705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1705.
        DATA t1706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1706.
        DATA(t1707) = abap_true.
        IF t1707 = abap_true.
          DATA(t1708) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t1708 = t1708 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t1708 = t1708 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t1708 = t1708 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t1708 = t1708 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t1708 = t1708 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t1708 = t1708 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t1708 = t1708 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t1708 = t1708 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t1708 = t1708 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t1708 = t1708 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t1708 = t1708 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t1708 = t1708 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t1708 = t1708 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t1708 = t1708 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t1708 = t1708 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t1708 = t1708 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t1708 = t1708 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t1708 = t1708 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t1708 = t1708 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t1708 = t1708 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t1708 = t1708 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t1708 = t1708 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t1708 = t1708 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t1708 = t1708 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t1708 = t1708 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t1708 = t1708 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t1708 = t1708 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t1708 = t1708 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t1708 = t1708 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t1708 = t1708 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t1708 = t1708 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t1708 = t1708 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t1708 = t1708 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t1708 = t1708 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t1708 = t1708 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t1708 = t1708 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t1708 = t1708 && |ect_client_obsolete.html|.
          DATA(t1709) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1709->has = abap_true.
          t1709->value = t1708.
          t1706 = t1709.
        ELSE.
          DATA t1710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1710.
          t1706 = t1710.
        ENDIF.
        t1705 = t1706.
        DATA t1711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1711.
        DATA t1712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1712.
        DATA(t1713) = abap_true.
        IF t1713 = abap_true.
          DATA(t1714) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t1714 = t1714 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t1715) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1715->has = abap_true.
          t1715->value = t1714.
          t1712 = t1715.
        ELSE.
          DATA t1716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1716.
          t1712 = t1716.
        ENDIF.
        t1711 = t1712.
        DATA t1717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1717.
        DATA t1718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1718.
        t1717 = t1718.
        DATA t1719 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1719.
        DATA t1720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1720.
        t1719 = t1720.
        DATA t1721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1721.
        DATA t1722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1722.
        t1721 = t1722.
        t1684 = NEW zcl_lnt_irule_metadata( i_key = t1685 i_title = t1687 i_short_description = t1689 i_bad_example = t1711 i_good_example = t1717 i_extended_information = t1705 i_tags = t1691 i_pragma = t1719 i_pseudo_comment = t1721 ).
        CREATE OBJECT t1684->zlnt_view_ownkeys_b0e8086400eb.
        t1684->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1723.
        IF t1684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1723 ).
        ENDIF.
        DATA t1724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1724.
        IF t1684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1724 ).
        ENDIF.
        DATA t1725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1725.
        IF t1684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1725 ).
        ENDIF.
        DATA t1726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1726.
        IF t1684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1726 ).
        ENDIF.
        DATA t1727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1727.
        IF t1684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1727 ).
        ENDIF.
        DATA t1728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1728.
        IF t1684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1728 ).
        ENDIF.
        CREATE OBJECT t1684->zlnt_json_ownkeys_70e5fd461788.
        t1684->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t1729) = |key|.
        DATA t1730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1730.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1729 p1 = t1730 ).
        ENDIF.
        DATA(t1731) = |title|.
        DATA t1732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1732.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1731 p1 = t1732 ).
        ENDIF.
        DATA(t1733) = |shortDescription|.
        DATA t1734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1734.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1733 p1 = t1734 ).
        ENDIF.
        DATA(t1735) = |tags|.
        DATA t1736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1736.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1735 p1 = t1736 ).
        ENDIF.
        DATA(t1737) = |extendedInformation|.
        DATA t1738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1738.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1737 p1 = t1738 ).
        ENDIF.
        DATA(t1739) = |badExample|.
        DATA t1740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1740.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1739 p1 = t1740 ).
        ENDIF.
        t1683 = t1684->key.
        DATA t1741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1741.
        DATA(t1742) = me->conf.
        t1741 = t1742->zlnt_view_read_sr_15c06369f827( ).
        DATA t1743 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1743.
        DATA(t1744) = abap_true.
        IF t1744 = abap_true.
          DATA(t1745) = t1674.
          t1743 = t1745.
        ELSE.
          DATA t1746 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1746.
          t1743 = t1746.
        ENDIF.
        DATA t1747 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1747.
        t1679 = zcl_lnt_issue=>at_statement( i_file = t1680 i_statement = t1681 i_message_26cb = t1682 i_key = t1683 i_severity = t1741 i_fix = t1743 i_alternative_fixes = t1747 ).
        t1678 = t1679.
        DATA(t1748) = t2.
        DATA(t1749) = t1678.
        t1748->load( ).
        APPEND t1749 TO t1748->items.
        t1748->save( ).
      ENDIF.
      DATA(t1750) = VALUE abap_bool( ).
      DATA(t1751) = VALUE abap_bool( ).
      DATA t1752 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1752.
      DATA(t1753) = me->conf.
      t1752 = t1753->zlnt_view_read_sr_f913da31cb26( ).
      IF t1752 IS BOUND.
        IF t1752->has = abap_true.
          t1751 = xsdbool( t1752->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1750 = t1751.
      IF t1751 = abap_true.
        DATA(t1754) = VALUE abap_bool( ).
        DATA(t1755) = t22.
        t1754 = xsdbool( t1755 IS BOUND AND t1755 IS INSTANCE OF zcl_lnt_free_memory ).
        t1750 = t1754.
      ENDIF.
      IF t1750 = abap_true.
        DATA(t1756) = VALUE string( ).
        DATA(t1757) = VALUE string( ).
        DATA(t1758) = VALUE string( ).
        DATA(t1759) = t17.
        t1758 = t1759->concat_tokens( ).
        DATA(t1760) = strlen( t1758 ).
        t1757 = t1758.
        IF t1757 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1757 TO UPPER CASE.
        ELSE.
          t1757 = zlnt_runtime_uppe_91169605024d=>full( t1757 ).
        ENDIF.
        t1756 = t1757.
        DATA(t1761) = VALUE abap_bool( ).
        DATA(t1762) = t1756.
        DATA(t1763) = |FREE MEMORY.|.
        t1761 = xsdbool( t1762 = t1763 ).
        IF t1761 = abap_true.
          DATA t1764 TYPE REF TO zcl_lnt_issue.
          CLEAR t1764.
          DATA t1765 TYPE REF TO zcl_lnt_issue.
          CLEAR t1765.
          DATA(t1766) = t1.
          DATA(t1767) = t17.
          DATA(t1768) = |Statement "FREE MEMORY" without ID is obsolete|.
          DATA(t1769) = VALUE string( ).
          DATA t1770 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1770.
          DATA(t1771) = VALUE string( ).
          DATA(t1772) = |obsolete_statement|.
          t1771 = t1772.
          DATA(t1773) = VALUE string( ).
          DATA(t1774) = |Obsolete statements|.
          t1773 = t1774.
          DATA(t1775) = VALUE string( ).
          DATA(t1776) = |Checks for usages of certain obsolete statements|.
          t1775 = t1776.
          DATA t1777 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1777.
          DATA t1778 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1778.
          DATA(t1779) = abap_true.
          IF t1779 = abap_true.
            DATA t1780 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1780.
            DATA t1781 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1781.
            DATA t1782 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1782.
            CREATE OBJECT t1782.
            t1781 = t1782.
            DATA(t1783) = t1781.
            DATA(t1784) = |SingleFile|.
            t1783->load( ).
            APPEND t1784 TO t1783->items.
            t1783->save( ).
            DATA(t1785) = t1781.
            DATA(t1786) = |Styleguide|.
            t1785->load( ).
            APPEND t1786 TO t1785->items.
            t1785->save( ).
            DATA(t1787) = t1781.
            DATA(t1788) = |Quickfix|.
            t1787->load( ).
            APPEND t1788 TO t1787->items.
            t1787->save( ).
            DATA(t1789) = t1781.
            t1780 = t1789.
            t1778 = t1780.
          ELSE.
            DATA t1790 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1790.
            t1778 = t1790.
          ENDIF.
          t1777 = t1778.
          DATA t1791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1791.
          DATA t1792 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1792.
          DATA(t1793) = abap_true.
          IF t1793 = abap_true.
            DATA(t1794) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t1794 = t1794 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t1794 = t1794 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t1794 = t1794 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t1794 = t1794 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t1794 = t1794 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t1794 = t1794 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t1794 = t1794 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t1794 = t1794 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t1794 = t1794 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t1794 = t1794 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t1794 = t1794 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t1794 = t1794 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1794 = t1794 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t1794 = t1794 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1794 = t1794 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t1794 = t1794 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t1794 = t1794 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t1794 = t1794 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t1794 = t1794 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t1794 = t1794 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t1794 = t1794 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t1794 = t1794 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t1794 = t1794 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t1794 = t1794 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t1794 = t1794 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t1794 = t1794 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t1794 = t1794 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t1794 = t1794 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t1794 = t1794 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t1794 = t1794 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t1794 = t1794 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t1794 = t1794 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t1794 = t1794 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t1794 = t1794 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t1794 = t1794 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t1794 = t1794 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t1794 = t1794 && |ect_client_obsolete.html|.
            DATA(t1795) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1795->has = abap_true.
            t1795->value = t1794.
            t1792 = t1795.
          ELSE.
            DATA t1796 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1796.
            t1792 = t1796.
          ENDIF.
          t1791 = t1792.
          DATA t1797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1797.
          DATA t1798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1798.
          DATA(t1799) = abap_true.
          IF t1799 = abap_true.
            DATA(t1800) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1800 = t1800 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1801) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1801->has = abap_true.
            t1801->value = t1800.
            t1798 = t1801.
          ELSE.
            DATA t1802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1802.
            t1798 = t1802.
          ENDIF.
          t1797 = t1798.
          DATA t1803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1803.
          DATA t1804 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1804.
          t1803 = t1804.
          DATA t1805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1805.
          DATA t1806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1806.
          t1805 = t1806.
          DATA t1807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1807.
          DATA t1808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1808.
          t1807 = t1808.
          t1770 = NEW zcl_lnt_irule_metadata( i_key = t1771 i_title = t1773 i_short_description = t1775 i_bad_example = t1797 i_good_example = t1803 i_extended_information = t1791 i_tags = t1777 i_pragma = t1805 i_pseudo_comment = t1807 ).
          CREATE OBJECT t1770->zlnt_view_ownkeys_b0e8086400eb.
          t1770->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1809.
          IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1809 ).
          ENDIF.
          DATA t1810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1810.
          IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1810 ).
          ENDIF.
          DATA t1811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1811.
          IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1811 ).
          ENDIF.
          DATA t1812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1812.
          IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1812 ).
          ENDIF.
          DATA t1813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1813.
          IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1813 ).
          ENDIF.
          DATA t1814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1814.
          IF t1770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1814 ).
          ENDIF.
          CREATE OBJECT t1770->zlnt_json_ownkeys_70e5fd461788.
          t1770->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1815) = |key|.
          DATA t1816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1816.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1815 p1 = t1816 ).
          ENDIF.
          DATA(t1817) = |title|.
          DATA t1818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1818.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1817 p1 = t1818 ).
          ENDIF.
          DATA(t1819) = |shortDescription|.
          DATA t1820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1820.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1819 p1 = t1820 ).
          ENDIF.
          DATA(t1821) = |tags|.
          DATA t1822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1822.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1821 p1 = t1822 ).
          ENDIF.
          DATA(t1823) = |extendedInformation|.
          DATA t1824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1824.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1823 p1 = t1824 ).
          ENDIF.
          DATA(t1825) = |badExample|.
          DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1826.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1825 p1 = t1826 ).
          ENDIF.
          t1769 = t1770->key.
          DATA t1827 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1827.
          DATA(t1828) = me->conf.
          t1827 = t1828->zlnt_view_read_sr_15c06369f827( ).
          DATA t1829 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1829.
          DATA t1830 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1830.
          t1765 = zcl_lnt_issue=>at_statement( i_file = t1766 i_statement = t1767 i_message_26cb = t1768 i_key = t1769 i_severity = t1827 i_fix = t1829 i_alternative_fixes = t1830 ).
          t1764 = t1765.
          DATA(t1831) = t2.
          DATA(t1832) = t1764.
          t1831->load( ).
          APPEND t1832 TO t1831->items.
          t1831->save( ).
        ENDIF.
      ENDIF.
      DATA(t1833) = VALUE abap_bool( ).
      DATA(t1834) = VALUE abap_bool( ).
      DATA t1835 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1835.
      DATA(t1836) = me->conf.
      t1835 = t1836->zlnt_view_read_sr_6a5fcc262012( ).
      IF t1835 IS BOUND.
        IF t1835->has = abap_true.
          t1834 = xsdbool( t1835->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1833 = t1834.
      IF t1834 = abap_true.
        DATA(t1837) = VALUE abap_bool( ).
        DATA(t1838) = t22.
        t1837 = xsdbool( t1838 IS BOUND AND t1838 IS INSTANCE OF zcl_lnt_exit ).
        t1833 = t1837.
      ENDIF.
      IF t1833 = abap_true.
        DATA(t1839) = VALUE string( ).
        DATA(t1840) = VALUE string( ).
        DATA(t1841) = VALUE string( ).
        DATA(t1842) = t17.
        t1841 = t1842->concat_tokens( ).
        DATA(t1843) = strlen( t1841 ).
        t1840 = t1841.
        IF t1840 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1840 TO UPPER CASE.
        ELSE.
          t1840 = zlnt_runtime_uppe_91169605024d=>full( t1840 ).
        ENDIF.
        t1839 = t1840.
        DATA(t1844) = VALUE abap_bool( ).
        DATA(t1845) = t1839.
        DATA(t1846) = |EXIT FROM SQL.|.
        t1844 = xsdbool( t1845 = t1846 ).
        IF t1844 = abap_true.
          DATA t1847 TYPE REF TO zcl_lnt_issue.
          CLEAR t1847.
          DATA t1848 TYPE REF TO zcl_lnt_issue.
          CLEAR t1848.
          DATA(t1849) = t1.
          DATA(t1850) = t17.
          DATA(t1851) = |Statement "EXIT FROM SQL" is obsolete|.
          DATA(t1852) = VALUE string( ).
          DATA t1853 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1853.
          DATA(t1854) = VALUE string( ).
          DATA(t1855) = |obsolete_statement|.
          t1854 = t1855.
          DATA(t1856) = VALUE string( ).
          DATA(t1857) = |Obsolete statements|.
          t1856 = t1857.
          DATA(t1858) = VALUE string( ).
          DATA(t1859) = |Checks for usages of certain obsolete statements|.
          t1858 = t1859.
          DATA t1860 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1860.
          DATA t1861 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1861.
          DATA(t1862) = abap_true.
          IF t1862 = abap_true.
            DATA t1863 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1863.
            DATA t1864 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1864.
            DATA t1865 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1865.
            CREATE OBJECT t1865.
            t1864 = t1865.
            DATA(t1866) = t1864.
            DATA(t1867) = |SingleFile|.
            t1866->load( ).
            APPEND t1867 TO t1866->items.
            t1866->save( ).
            DATA(t1868) = t1864.
            DATA(t1869) = |Styleguide|.
            t1868->load( ).
            APPEND t1869 TO t1868->items.
            t1868->save( ).
            DATA(t1870) = t1864.
            DATA(t1871) = |Quickfix|.
            t1870->load( ).
            APPEND t1871 TO t1870->items.
            t1870->save( ).
            DATA(t1872) = t1864.
            t1863 = t1872.
            t1861 = t1863.
          ELSE.
            DATA t1873 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1873.
            t1861 = t1873.
          ENDIF.
          t1860 = t1861.
          DATA t1874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1874.
          DATA t1875 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1875.
          DATA(t1876) = abap_true.
          IF t1876 = abap_true.
            DATA(t1877) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t1877 = t1877 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t1877 = t1877 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t1877 = t1877 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t1877 = t1877 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t1877 = t1877 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t1877 = t1877 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t1877 = t1877 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t1877 = t1877 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t1877 = t1877 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t1877 = t1877 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t1877 = t1877 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t1877 = t1877 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1877 = t1877 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t1877 = t1877 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1877 = t1877 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t1877 = t1877 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t1877 = t1877 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t1877 = t1877 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t1877 = t1877 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t1877 = t1877 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t1877 = t1877 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t1877 = t1877 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t1877 = t1877 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t1877 = t1877 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t1877 = t1877 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t1877 = t1877 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t1877 = t1877 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t1877 = t1877 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t1877 = t1877 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t1877 = t1877 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t1877 = t1877 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t1877 = t1877 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t1877 = t1877 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t1877 = t1877 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t1877 = t1877 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t1877 = t1877 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t1877 = t1877 && |ect_client_obsolete.html|.
            DATA(t1878) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1878->has = abap_true.
            t1878->value = t1877.
            t1875 = t1878.
          ELSE.
            DATA t1879 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1879.
            t1875 = t1879.
          ENDIF.
          t1874 = t1875.
          DATA t1880 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1880.
          DATA t1881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1881.
          DATA(t1882) = abap_true.
          IF t1882 = abap_true.
            DATA(t1883) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1883 = t1883 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1884) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1884->has = abap_true.
            t1884->value = t1883.
            t1881 = t1884.
          ELSE.
            DATA t1885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1885.
            t1881 = t1885.
          ENDIF.
          t1880 = t1881.
          DATA t1886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1886.
          DATA t1887 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1887.
          t1886 = t1887.
          DATA t1888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1888.
          DATA t1889 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1889.
          t1888 = t1889.
          DATA t1890 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1890.
          DATA t1891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1891.
          t1890 = t1891.
          t1853 = NEW zcl_lnt_irule_metadata( i_key = t1854 i_title = t1856 i_short_description = t1858 i_bad_example = t1880 i_good_example = t1886 i_extended_information = t1874 i_tags = t1860 i_pragma = t1888 i_pseudo_comment = t1890 ).
          CREATE OBJECT t1853->zlnt_view_ownkeys_b0e8086400eb.
          t1853->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1892.
          IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1892 ).
          ENDIF.
          DATA t1893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1893.
          IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1893 ).
          ENDIF.
          DATA t1894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1894.
          IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1894 ).
          ENDIF.
          DATA t1895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1895.
          IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1895 ).
          ENDIF.
          DATA t1896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1896.
          IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1896 ).
          ENDIF.
          DATA t1897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1897.
          IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1897 ).
          ENDIF.
          CREATE OBJECT t1853->zlnt_json_ownkeys_70e5fd461788.
          t1853->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1898) = |key|.
          DATA t1899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1899.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1898 p1 = t1899 ).
          ENDIF.
          DATA(t1900) = |title|.
          DATA t1901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1901.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1900 p1 = t1901 ).
          ENDIF.
          DATA(t1902) = |shortDescription|.
          DATA t1903 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1903.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1902 p1 = t1903 ).
          ENDIF.
          DATA(t1904) = |tags|.
          DATA t1905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1905.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1904 p1 = t1905 ).
          ENDIF.
          DATA(t1906) = |extendedInformation|.
          DATA t1907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1907.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1906 p1 = t1907 ).
          ENDIF.
          DATA(t1908) = |badExample|.
          DATA t1909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1909.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1908 p1 = t1909 ).
          ENDIF.
          t1852 = t1853->key.
          DATA t1910 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1910.
          DATA(t1911) = me->conf.
          t1910 = t1911->zlnt_view_read_sr_15c06369f827( ).
          DATA t1912 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1912.
          DATA t1913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1913.
          t1848 = zcl_lnt_issue=>at_statement( i_file = t1849 i_statement = t1850 i_message_26cb = t1851 i_key = t1852 i_severity = t1910 i_fix = t1912 i_alternative_fixes = t1913 ).
          t1847 = t1848.
          DATA(t1914) = t2.
          DATA(t1915) = t1847.
          t1914->load( ).
          APPEND t1915 TO t1914->items.
          t1914->save( ).
        ENDIF.
      ENDIF.
      DATA(t1916) = VALUE abap_bool( ).
      DATA(t1917) = VALUE abap_bool( ).
      DATA t1918 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1918.
      DATA(t1919) = me->conf.
      t1918 = t1919->zlnt_view_read_sr_8bc7f98b4ab7( ).
      IF t1918 IS BOUND.
        IF t1918->has = abap_true.
          t1917 = xsdbool( t1918->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1916 = t1917.
      IF t1917 = abap_true.
        DATA(t1920) = VALUE abap_bool( ).
        DATA(t1921) = t22.
        t1920 = xsdbool( t1921 IS BOUND AND t1921 IS INSTANCE OF zcl_lnt_st_sort ).
        t1916 = t1920.
      ENDIF.
      IF t1916 = abap_true.
        DATA t1922 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1922.
        DATA t1923 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t1923.
        DATA(t1924) = t17.
        DATA(t1925) = |BY|.
        t1923 = t1924->find_expression_after_token( i_text = t1925 ).
        t1922 = t1923.
        DATA(t1926) = VALUE abap_bool( ).
        DATA(t1927) = VALUE abap_bool( ).
        DATA(t1928) = t1922.
        t1927 = xsdbool( t1928 IS BOUND AND t1928 IS INSTANCE OF zcl_lnt_expression_node ).
        t1926 = t1927.
        IF t1927 = abap_true.
          DATA(t1929) = VALUE abap_bool( ).
          DATA t1930 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t1930.
          DATA t1931 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t1931.
          DATA(t1932) = t1922.
          t1931 = t1932.
          t1930 = t1931->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t1929 = xsdbool( t1930 IS BOUND AND t1930 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
          t1926 = t1929.
        ENDIF.
        IF t1926 = abap_true.
          DATA t1933 TYPE REF TO zcl_lnt_issue.
          CLEAR t1933.
          DATA t1934 TYPE REF TO zcl_lnt_issue.
          CLEAR t1934.
          DATA(t1935) = t1.
          DATA(t1936) = t17.
          DATA(t1937) = |Statement "SORT itab BY <fs>" is obsolete|.
          DATA(t1938) = VALUE string( ).
          DATA t1939 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t1939.
          DATA(t1940) = VALUE string( ).
          DATA(t1941) = |obsolete_statement|.
          t1940 = t1941.
          DATA(t1942) = VALUE string( ).
          DATA(t1943) = |Obsolete statements|.
          t1942 = t1943.
          DATA(t1944) = VALUE string( ).
          DATA(t1945) = |Checks for usages of certain obsolete statements|.
          t1944 = t1945.
          DATA t1946 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1946.
          DATA t1947 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1947.
          DATA(t1948) = abap_true.
          IF t1948 = abap_true.
            DATA t1949 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1949.
            DATA t1950 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1950.
            DATA t1951 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1951.
            CREATE OBJECT t1951.
            t1950 = t1951.
            DATA(t1952) = t1950.
            DATA(t1953) = |SingleFile|.
            t1952->load( ).
            APPEND t1953 TO t1952->items.
            t1952->save( ).
            DATA(t1954) = t1950.
            DATA(t1955) = |Styleguide|.
            t1954->load( ).
            APPEND t1955 TO t1954->items.
            t1954->save( ).
            DATA(t1956) = t1950.
            DATA(t1957) = |Quickfix|.
            t1956->load( ).
            APPEND t1957 TO t1956->items.
            t1956->save( ).
            DATA(t1958) = t1950.
            t1949 = t1958.
            t1947 = t1949.
          ELSE.
            DATA t1959 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1959.
            t1947 = t1959.
          ENDIF.
          t1946 = t1947.
          DATA t1960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1960.
          DATA t1961 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1961.
          DATA(t1962) = abap_true.
          IF t1962 = abap_true.
            DATA(t1963) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t1963 = t1963 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t1963 = t1963 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t1963 = t1963 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t1963 = t1963 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t1963 = t1963 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t1963 = t1963 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t1963 = t1963 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t1963 = t1963 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t1963 = t1963 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t1963 = t1963 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t1963 = t1963 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t1963 = t1963 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1963 = t1963 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t1963 = t1963 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t1963 = t1963 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t1963 = t1963 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t1963 = t1963 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t1963 = t1963 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t1963 = t1963 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t1963 = t1963 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t1963 = t1963 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t1963 = t1963 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t1963 = t1963 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t1963 = t1963 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t1963 = t1963 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t1963 = t1963 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t1963 = t1963 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t1963 = t1963 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t1963 = t1963 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t1963 = t1963 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t1963 = t1963 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t1963 = t1963 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t1963 = t1963 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t1963 = t1963 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t1963 = t1963 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t1963 = t1963 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t1963 = t1963 && |ect_client_obsolete.html|.
            DATA(t1964) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1964->has = abap_true.
            t1964->value = t1963.
            t1961 = t1964.
          ELSE.
            DATA t1965 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1965.
            t1961 = t1965.
          ENDIF.
          t1960 = t1961.
          DATA t1966 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1966.
          DATA t1967 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1967.
          DATA(t1968) = abap_true.
          IF t1968 = abap_true.
            DATA(t1969) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1969 = t1969 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1970) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1970->has = abap_true.
            t1970->value = t1969.
            t1967 = t1970.
          ELSE.
            DATA t1971 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1971.
            t1967 = t1971.
          ENDIF.
          t1966 = t1967.
          DATA t1972 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1972.
          DATA t1973 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1973.
          t1972 = t1973.
          DATA t1974 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1974.
          DATA t1975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1975.
          t1974 = t1975.
          DATA t1976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1976.
          DATA t1977 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1977.
          t1976 = t1977.
          t1939 = NEW zcl_lnt_irule_metadata( i_key = t1940 i_title = t1942 i_short_description = t1944 i_bad_example = t1966 i_good_example = t1972 i_extended_information = t1960 i_tags = t1946 i_pragma = t1974 i_pseudo_comment = t1976 ).
          CREATE OBJECT t1939->zlnt_view_ownkeys_b0e8086400eb.
          t1939->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1978.
          IF t1939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1978 ).
          ENDIF.
          DATA t1979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1979.
          IF t1939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1979 ).
          ENDIF.
          DATA t1980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1980.
          IF t1939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1980 ).
          ENDIF.
          DATA t1981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1981.
          IF t1939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1981 ).
          ENDIF.
          DATA t1982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1982.
          IF t1939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1982 ).
          ENDIF.
          DATA t1983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1983.
          IF t1939->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t1939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t1983 ).
          ENDIF.
          CREATE OBJECT t1939->zlnt_json_ownkeys_70e5fd461788.
          t1939->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t1984) = |key|.
          DATA t1985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1985.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1984 p1 = t1985 ).
          ENDIF.
          DATA(t1986) = |title|.
          DATA t1987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1987.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1986 p1 = t1987 ).
          ENDIF.
          DATA(t1988) = |shortDescription|.
          DATA t1989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1989.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1988 p1 = t1989 ).
          ENDIF.
          DATA(t1990) = |tags|.
          DATA t1991 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1991.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1990 p1 = t1991 ).
          ENDIF.
          DATA(t1992) = |extendedInformation|.
          DATA t1993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1993.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1992 p1 = t1993 ).
          ENDIF.
          DATA(t1994) = |badExample|.
          DATA t1995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1995.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1994 p1 = t1995 ).
          ENDIF.
          t1938 = t1939->key.
          DATA t1996 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1996.
          DATA(t1997) = me->conf.
          t1996 = t1997->zlnt_view_read_sr_15c06369f827( ).
          DATA t1998 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1998.
          DATA t1999 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1999.
          t1934 = zcl_lnt_issue=>at_statement( i_file = t1935 i_statement = t1936 i_message_26cb = t1937 i_key = t1938 i_severity = t1996 i_fix = t1998 i_alternative_fixes = t1999 ).
          t1933 = t1934.
          DATA(t2000) = t2.
          DATA(t2001) = t1933.
          t2000->load( ).
          APPEND t2001 TO t2000->items.
          t2000->save( ).
        ENDIF.
      ENDIF.
      DATA(t2002) = VALUE abap_bool( ).
      DATA(t2003) = VALUE abap_bool( ).
      DATA t2004 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2004.
      DATA(t2005) = me->conf.
      t2004 = t2005->zlnt_view_read_sr_2a70a957561f( ).
      IF t2004 IS BOUND.
        IF t2004->has = abap_true.
          t2003 = xsdbool( t2004->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2002 = t2003.
      IF t2003 = abap_true.
        DATA(t2006) = VALUE abap_bool( ).
        DATA(t2007) = t22.
        t2006 = xsdbool( t2007 IS BOUND AND t2007 IS INSTANCE OF zcl_lnt_st_call_transformation ).
        t2002 = t2006.
      ENDIF.
      IF t2002 = abap_true.
        DATA t2008 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t2008.
        DATA t2009 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t2009.
        DATA(t2010) = t17.
        DATA(t2011) = |OBJECTS|.
        t2009 = t2010->find_expression_after_token( i_text = t2011 ).
        t2008 = t2009.
        DATA(t2012) = VALUE abap_bool( ).
        DATA(t2013) = t2008.
        t2012 = xsdbool( t2013 IS BOUND ).
        IF t2012 = abap_true.
          DATA t2014 TYPE REF TO zcl_lnt_issue.
          CLEAR t2014.
          DATA t2015 TYPE REF TO zcl_lnt_issue.
          CLEAR t2015.
          DATA(t2016) = t1.
          DATA(t2017) = t17.
          DATA(t2018) = |Use PARAMETERS instead of OBJECTS|.
          DATA(t2019) = VALUE string( ).
          DATA t2020 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t2020.
          DATA(t2021) = VALUE string( ).
          DATA(t2022) = |obsolete_statement|.
          t2021 = t2022.
          DATA(t2023) = VALUE string( ).
          DATA(t2024) = |Obsolete statements|.
          t2023 = t2024.
          DATA(t2025) = VALUE string( ).
          DATA(t2026) = |Checks for usages of certain obsolete statements|.
          t2025 = t2026.
          DATA t2027 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2027.
          DATA t2028 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2028.
          DATA(t2029) = abap_true.
          IF t2029 = abap_true.
            DATA t2030 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2030.
            DATA t2031 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2031.
            DATA t2032 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2032.
            CREATE OBJECT t2032.
            t2031 = t2032.
            DATA(t2033) = t2031.
            DATA(t2034) = |SingleFile|.
            t2033->load( ).
            APPEND t2034 TO t2033->items.
            t2033->save( ).
            DATA(t2035) = t2031.
            DATA(t2036) = |Styleguide|.
            t2035->load( ).
            APPEND t2036 TO t2035->items.
            t2035->save( ).
            DATA(t2037) = t2031.
            DATA(t2038) = |Quickfix|.
            t2037->load( ).
            APPEND t2038 TO t2037->items.
            t2037->save( ).
            DATA(t2039) = t2031.
            t2030 = t2039.
            t2028 = t2030.
          ELSE.
            DATA t2040 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2040.
            t2028 = t2040.
          ENDIF.
          t2027 = t2028.
          DATA t2041 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2041.
          DATA t2042 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2042.
          DATA(t2043) = abap_true.
          IF t2043 = abap_true.
            DATA(t2044) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t2044 = t2044 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t2044 = t2044 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t2044 = t2044 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t2044 = t2044 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t2044 = t2044 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t2044 = t2044 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t2044 = t2044 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t2044 = t2044 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t2044 = t2044 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t2044 = t2044 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t2044 = t2044 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t2044 = t2044 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2044 = t2044 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t2044 = t2044 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2044 = t2044 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t2044 = t2044 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t2044 = t2044 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t2044 = t2044 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t2044 = t2044 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t2044 = t2044 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t2044 = t2044 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t2044 = t2044 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t2044 = t2044 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t2044 = t2044 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t2044 = t2044 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t2044 = t2044 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t2044 = t2044 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t2044 = t2044 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t2044 = t2044 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t2044 = t2044 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t2044 = t2044 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t2044 = t2044 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t2044 = t2044 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t2044 = t2044 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t2044 = t2044 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t2044 = t2044 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t2044 = t2044 && |ect_client_obsolete.html|.
            DATA(t2045) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2045->has = abap_true.
            t2045->value = t2044.
            t2042 = t2045.
          ELSE.
            DATA t2046 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2046.
            t2042 = t2046.
          ENDIF.
          t2041 = t2042.
          DATA t2047 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2047.
          DATA t2048 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2048.
          DATA(t2049) = abap_true.
          IF t2049 = abap_true.
            DATA(t2050) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t2050 = t2050 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t2051) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2051->has = abap_true.
            t2051->value = t2050.
            t2048 = t2051.
          ELSE.
            DATA t2052 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2052.
            t2048 = t2052.
          ENDIF.
          t2047 = t2048.
          DATA t2053 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2053.
          DATA t2054 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2054.
          t2053 = t2054.
          DATA t2055 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2055.
          DATA t2056 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2056.
          t2055 = t2056.
          DATA t2057 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2057.
          DATA t2058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2058.
          t2057 = t2058.
          t2020 = NEW zcl_lnt_irule_metadata( i_key = t2021 i_title = t2023 i_short_description = t2025 i_bad_example = t2047 i_good_example = t2053 i_extended_information = t2041 i_tags = t2027 i_pragma = t2055 i_pseudo_comment = t2057 ).
          CREATE OBJECT t2020->zlnt_view_ownkeys_b0e8086400eb.
          t2020->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2059.
          IF t2020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2059 ).
          ENDIF.
          DATA t2060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2060.
          IF t2020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2060 ).
          ENDIF.
          DATA t2061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2061.
          IF t2020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2061 ).
          ENDIF.
          DATA t2062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2062.
          IF t2020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2062 ).
          ENDIF.
          DATA t2063 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2063.
          IF t2020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2063 ).
          ENDIF.
          DATA t2064 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2064.
          IF t2020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2064 ).
          ENDIF.
          CREATE OBJECT t2020->zlnt_json_ownkeys_70e5fd461788.
          t2020->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t2065) = |key|.
          DATA t2066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2066.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2065 p1 = t2066 ).
          ENDIF.
          DATA(t2067) = |title|.
          DATA t2068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2068.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2067 p1 = t2068 ).
          ENDIF.
          DATA(t2069) = |shortDescription|.
          DATA t2070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2070.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2069 p1 = t2070 ).
          ENDIF.
          DATA(t2071) = |tags|.
          DATA t2072 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2072.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2071 p1 = t2072 ).
          ENDIF.
          DATA(t2073) = |extendedInformation|.
          DATA t2074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2074.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2073 p1 = t2074 ).
          ENDIF.
          DATA(t2075) = |badExample|.
          DATA t2076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2076.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2075 p1 = t2076 ).
          ENDIF.
          t2019 = t2020->key.
          DATA t2077 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2077.
          DATA(t2078) = me->conf.
          t2077 = t2078->zlnt_view_read_sr_15c06369f827( ).
          DATA t2079 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2079.
          DATA t2080 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2080.
          t2015 = zcl_lnt_issue=>at_statement( i_file = t2016 i_statement = t2017 i_message_26cb = t2018 i_key = t2019 i_severity = t2077 i_fix = t2079 i_alternative_fixes = t2080 ).
          t2014 = t2015.
          DATA(t2081) = t2.
          DATA(t2082) = t2014.
          t2081->load( ).
          APPEND t2082 TO t2081->items.
          t2081->save( ).
        ENDIF.
      ENDIF.
      DATA(t2083) = VALUE abap_bool( ).
      DATA(t2084) = VALUE abap_bool( ).
      DATA t2085 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2085.
      DATA(t2086) = me->conf.
      t2085 = t2086->zlnt_view_read_sr_3922bd87722d( ).
      IF t2085 IS BOUND.
        IF t2085->has = abap_true.
          t2084 = xsdbool( t2085->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2083 = t2084.
      IF t2084 = abap_true.
        DATA(t2087) = VALUE abap_bool( ).
        DATA(t2088) = t22.
        t2087 = xsdbool( t2088 IS BOUND AND t2088 IS INSTANCE OF zcl_lnt_st_replace ).
        t2083 = t2087.
      ENDIF.
      IF t2083 = abap_true.
        DATA(t2089) = VALUE string( ).
        DATA(t2090) = VALUE string( ).
        DATA(t2091) = VALUE string( ).
        DATA(t2092) = t17.
        t2091 = t2092->concat_tokens( ).
        DATA(t2093) = strlen( t2091 ).
        t2090 = t2091.
        IF t2090 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t2090 TO UPPER CASE.
        ELSE.
          t2090 = zlnt_runtime_uppe_91169605024d=>full( t2090 ).
        ENDIF.
        t2089 = t2090.
        DATA(t2094) = VALUE abap_bool( ).
        DATA(t2095) = VALUE i( ).
        DATA(t2096) = t2089.
        DATA(t2097) = | OCCURENCES |.
        DATA(t2098) = strlen( t2096 ).
        IF t2097 IS INITIAL.
          t2095 = 0.
        ELSE.
          FIND t2097 IN t2096 MATCH OFFSET t2095.
          IF sy-subrc <> 0.
            t2095 = -1.
          ENDIF.
        ENDIF.
        DATA(t2099) = 0.
        t2094 = xsdbool( t2095 >= t2099 ).
        IF t2094 = abap_true.
          DATA t2100 TYPE REF TO zcl_lnt_issue.
          CLEAR t2100.
          DATA t2101 TYPE REF TO zcl_lnt_issue.
          CLEAR t2101.
          DATA(t2102) = t1.
          DATA(t2103) = t17.
          DATA(t2104) = |Use "OCCURRENCES"|.
          DATA(t2105) = VALUE string( ).
          DATA t2106 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t2106.
          DATA(t2107) = VALUE string( ).
          DATA(t2108) = |obsolete_statement|.
          t2107 = t2108.
          DATA(t2109) = VALUE string( ).
          DATA(t2110) = |Obsolete statements|.
          t2109 = t2110.
          DATA(t2111) = VALUE string( ).
          DATA(t2112) = |Checks for usages of certain obsolete statements|.
          t2111 = t2112.
          DATA t2113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2113.
          DATA t2114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2114.
          DATA(t2115) = abap_true.
          IF t2115 = abap_true.
            DATA t2116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2116.
            DATA t2117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2117.
            DATA t2118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2118.
            CREATE OBJECT t2118.
            t2117 = t2118.
            DATA(t2119) = t2117.
            DATA(t2120) = |SingleFile|.
            t2119->load( ).
            APPEND t2120 TO t2119->items.
            t2119->save( ).
            DATA(t2121) = t2117.
            DATA(t2122) = |Styleguide|.
            t2121->load( ).
            APPEND t2122 TO t2121->items.
            t2121->save( ).
            DATA(t2123) = t2117.
            DATA(t2124) = |Quickfix|.
            t2123->load( ).
            APPEND t2124 TO t2123->items.
            t2123->save( ).
            DATA(t2125) = t2117.
            t2116 = t2125.
            t2114 = t2116.
          ELSE.
            DATA t2126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2126.
            t2114 = t2126.
          ENDIF.
          t2113 = t2114.
          DATA t2127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2127.
          DATA t2128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2128.
          DATA(t2129) = abap_true.
          IF t2129 = abap_true.
            DATA(t2130) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t2130 = t2130 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t2130 = t2130 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t2130 = t2130 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t2130 = t2130 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t2130 = t2130 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t2130 = t2130 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t2130 = t2130 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t2130 = t2130 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t2130 = t2130 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t2130 = t2130 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t2130 = t2130 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t2130 = t2130 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2130 = t2130 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t2130 = t2130 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2130 = t2130 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t2130 = t2130 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t2130 = t2130 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t2130 = t2130 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t2130 = t2130 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t2130 = t2130 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t2130 = t2130 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t2130 = t2130 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t2130 = t2130 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t2130 = t2130 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t2130 = t2130 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t2130 = t2130 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t2130 = t2130 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t2130 = t2130 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t2130 = t2130 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t2130 = t2130 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t2130 = t2130 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t2130 = t2130 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t2130 = t2130 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t2130 = t2130 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t2130 = t2130 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t2130 = t2130 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t2130 = t2130 && |ect_client_obsolete.html|.
            DATA(t2131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2131->has = abap_true.
            t2131->value = t2130.
            t2128 = t2131.
          ELSE.
            DATA t2132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2132.
            t2128 = t2132.
          ENDIF.
          t2127 = t2128.
          DATA t2133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2133.
          DATA t2134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2134.
          DATA(t2135) = abap_true.
          IF t2135 = abap_true.
            DATA(t2136) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t2136 = t2136 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t2137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2137->has = abap_true.
            t2137->value = t2136.
            t2134 = t2137.
          ELSE.
            DATA t2138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2138.
            t2134 = t2138.
          ENDIF.
          t2133 = t2134.
          DATA t2139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2139.
          DATA t2140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2140.
          t2139 = t2140.
          DATA t2141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2141.
          DATA t2142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2142.
          t2141 = t2142.
          DATA t2143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2143.
          DATA t2144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2144.
          t2143 = t2144.
          t2106 = NEW zcl_lnt_irule_metadata( i_key = t2107 i_title = t2109 i_short_description = t2111 i_bad_example = t2133 i_good_example = t2139 i_extended_information = t2127 i_tags = t2113 i_pragma = t2141 i_pseudo_comment = t2143 ).
          CREATE OBJECT t2106->zlnt_view_ownkeys_b0e8086400eb.
          t2106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2145.
          IF t2106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2145 ).
          ENDIF.
          DATA t2146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2146.
          IF t2106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2146 ).
          ENDIF.
          DATA t2147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2147.
          IF t2106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2147 ).
          ENDIF.
          DATA t2148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2148.
          IF t2106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2148 ).
          ENDIF.
          DATA t2149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2149.
          IF t2106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2149 ).
          ENDIF.
          DATA t2150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2150.
          IF t2106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2150 ).
          ENDIF.
          CREATE OBJECT t2106->zlnt_json_ownkeys_70e5fd461788.
          t2106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t2151) = |key|.
          DATA t2152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2152.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2151 p1 = t2152 ).
          ENDIF.
          DATA(t2153) = |title|.
          DATA t2154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2154.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2153 p1 = t2154 ).
          ENDIF.
          DATA(t2155) = |shortDescription|.
          DATA t2156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2156.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2155 p1 = t2156 ).
          ENDIF.
          DATA(t2157) = |tags|.
          DATA t2158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2158.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2157 p1 = t2158 ).
          ENDIF.
          DATA(t2159) = |extendedInformation|.
          DATA t2160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2160.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2159 p1 = t2160 ).
          ENDIF.
          DATA(t2161) = |badExample|.
          DATA t2162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2162.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2161 p1 = t2162 ).
          ENDIF.
          t2105 = t2106->key.
          DATA t2163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2163.
          DATA(t2164) = me->conf.
          t2163 = t2164->zlnt_view_read_sr_15c06369f827( ).
          DATA t2165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2165.
          DATA t2166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2166.
          t2101 = zcl_lnt_issue=>at_statement( i_file = t2102 i_statement = t2103 i_message_26cb = t2104 i_key = t2105 i_severity = t2163 i_fix = t2165 i_alternative_fixes = t2166 ).
          t2100 = t2101.
          DATA(t2167) = t2.
          DATA(t2168) = t2100.
          t2167->load( ).
          APPEND t2168 TO t2167->items.
          t2167->save( ).
        ENDIF.
      ENDIF.
      DATA(t2169) = VALUE abap_bool( ).
      DATA(t2170) = VALUE abap_bool( ).
      DATA t2171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2171.
      DATA(t2172) = me->conf.
      t2171 = t2172->zlnt_view_read_sr_07dfda9b4838( ).
      IF t2171 IS BOUND.
        IF t2171->has = abap_true.
          t2170 = xsdbool( t2171->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2169 = t2170.
      IF t2170 = abap_true.
        DATA(t2173) = VALUE abap_bool( ).
        DATA(t2174) = t22.
        t2173 = xsdbool( t2174 IS BOUND AND t2174 IS INSTANCE OF zcl_lnt_st_form_definition ).
        t2169 = t2173.
      ENDIF.
      IF t2169 = abap_true.
        DATA t2175 TYPE REF TO zcl_lnt_issue.
        CLEAR t2175.
        DATA t2176 TYPE REF TO zcl_lnt_issue.
        CLEAR t2176.
        DATA(t2177) = t1.
        DATA(t2178) = t17.
        DATA(t2179) = |FORM DEFINITION|.
        DATA(t2180) = VALUE string( ).
        DATA t2181 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t2181.
        DATA(t2182) = VALUE string( ).
        DATA(t2183) = |obsolete_statement|.
        t2182 = t2183.
        DATA(t2184) = VALUE string( ).
        DATA(t2185) = |Obsolete statements|.
        t2184 = t2185.
        DATA(t2186) = VALUE string( ).
        DATA(t2187) = |Checks for usages of certain obsolete statements|.
        t2186 = t2187.
        DATA t2188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2188.
        DATA t2189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2189.
        DATA(t2190) = abap_true.
        IF t2190 = abap_true.
          DATA t2191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2191.
          DATA t2192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2192.
          DATA t2193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2193.
          CREATE OBJECT t2193.
          t2192 = t2193.
          DATA(t2194) = t2192.
          DATA(t2195) = |SingleFile|.
          t2194->load( ).
          APPEND t2195 TO t2194->items.
          t2194->save( ).
          DATA(t2196) = t2192.
          DATA(t2197) = |Styleguide|.
          t2196->load( ).
          APPEND t2197 TO t2196->items.
          t2196->save( ).
          DATA(t2198) = t2192.
          DATA(t2199) = |Quickfix|.
          t2198->load( ).
          APPEND t2199 TO t2198->items.
          t2198->save( ).
          DATA(t2200) = t2192.
          t2191 = t2200.
          t2189 = t2191.
        ELSE.
          DATA t2201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2201.
          t2189 = t2201.
        ENDIF.
        t2188 = t2189.
        DATA t2202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2202.
        DATA t2203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2203.
        DATA(t2204) = abap_true.
        IF t2204 = abap_true.
          DATA(t2205) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t2205 = t2205 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t2205 = t2205 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t2205 = t2205 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t2205 = t2205 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t2205 = t2205 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t2205 = t2205 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t2205 = t2205 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t2205 = t2205 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t2205 = t2205 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t2205 = t2205 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t2205 = t2205 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t2205 = t2205 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t2205 = t2205 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t2205 = t2205 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t2205 = t2205 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t2205 = t2205 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t2205 = t2205 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t2205 = t2205 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t2205 = t2205 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t2205 = t2205 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t2205 = t2205 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t2205 = t2205 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t2205 = t2205 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t2205 = t2205 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t2205 = t2205 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t2205 = t2205 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t2205 = t2205 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t2205 = t2205 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t2205 = t2205 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t2205 = t2205 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t2205 = t2205 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t2205 = t2205 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t2205 = t2205 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t2205 = t2205 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t2205 = t2205 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t2205 = t2205 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t2205 = t2205 && |ect_client_obsolete.html|.
          DATA(t2206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2206->has = abap_true.
          t2206->value = t2205.
          t2203 = t2206.
        ELSE.
          DATA t2207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2207.
          t2203 = t2207.
        ENDIF.
        t2202 = t2203.
        DATA t2208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2208.
        DATA t2209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2209.
        DATA(t2210) = abap_true.
        IF t2210 = abap_true.
          DATA(t2211) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t2211 = t2211 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t2212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2212->has = abap_true.
          t2212->value = t2211.
          t2209 = t2212.
        ELSE.
          DATA t2213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2213.
          t2209 = t2213.
        ENDIF.
        t2208 = t2209.
        DATA t2214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2214.
        DATA t2215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2215.
        t2214 = t2215.
        DATA t2216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2216.
        DATA t2217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2217.
        t2216 = t2217.
        DATA t2218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2218.
        DATA t2219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2219.
        t2218 = t2219.
        t2181 = NEW zcl_lnt_irule_metadata( i_key = t2182 i_title = t2184 i_short_description = t2186 i_bad_example = t2208 i_good_example = t2214 i_extended_information = t2202 i_tags = t2188 i_pragma = t2216 i_pseudo_comment = t2218 ).
        CREATE OBJECT t2181->zlnt_view_ownkeys_b0e8086400eb.
        t2181->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t2220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2220.
        IF t2181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2220 ).
        ENDIF.
        DATA t2221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2221.
        IF t2181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2221 ).
        ENDIF.
        DATA t2222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2222.
        IF t2181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2222 ).
        ENDIF.
        DATA t2223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2223.
        IF t2181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2223 ).
        ENDIF.
        DATA t2224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2224.
        IF t2181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2224 ).
        ENDIF.
        DATA t2225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2225.
        IF t2181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2225 ).
        ENDIF.
        CREATE OBJECT t2181->zlnt_json_ownkeys_70e5fd461788.
        t2181->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t2226) = |key|.
        DATA t2227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2227.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2226 p1 = t2227 ).
        ENDIF.
        DATA(t2228) = |title|.
        DATA t2229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2229.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2228 p1 = t2229 ).
        ENDIF.
        DATA(t2230) = |shortDescription|.
        DATA t2231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2231.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2230 p1 = t2231 ).
        ENDIF.
        DATA(t2232) = |tags|.
        DATA t2233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2233.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2232 p1 = t2233 ).
        ENDIF.
        DATA(t2234) = |extendedInformation|.
        DATA t2235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2235.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2234 p1 = t2235 ).
        ENDIF.
        DATA(t2236) = |badExample|.
        DATA t2237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2237.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2236 p1 = t2237 ).
        ENDIF.
        t2180 = t2181->key.
        DATA t2238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2238.
        DATA(t2239) = me->conf.
        t2238 = t2239->zlnt_view_read_sr_15c06369f827( ).
        DATA t2240 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t2240.
        DATA t2241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2241.
        t2176 = zcl_lnt_issue=>at_statement( i_file = t2177 i_statement = t2178 i_message_26cb = t2179 i_key = t2180 i_severity = t2238 i_fix = t2240 i_alternative_fixes = t2241 ).
        t2175 = t2176.
        DATA(t2242) = t2.
        DATA(t2243) = t2175.
        t2242->load( ).
        APPEND t2243 TO t2242->items.
        t2242->save( ).
      ENDIF.
      DATA(t2244) = VALUE abap_bool( ).
      DATA(t2245) = VALUE abap_bool( ).
      DATA t2246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2246.
      DATA(t2247) = me->conf.
      t2246 = t2247->zlnt_view_read_sr_a82fd91e3e4c( ).
      IF t2246 IS BOUND.
        IF t2246->has = abap_true.
          t2245 = xsdbool( t2246->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2244 = t2245.
      IF t2245 = abap_true.
        DATA(t2248) = VALUE abap_bool( ).
        DATA(t2249) = t22.
        t2248 = xsdbool( t2249 IS BOUND AND t2249 IS INSTANCE OF zcl_lnt_st_form ).
        t2244 = t2248.
      ENDIF.
      IF t2244 = abap_true.
        DATA(t2250) = VALUE abap_bool( ).
        DATA t2251 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t2251.
        DATA(t2252) = t17.
        DATA(t2253) = |IMPLEMENTATION|.
        t2251 = t2252->find_direct_token_by_text( i_text = t2253 ).
        t2250 = xsdbool( t2251 IS BOUND ).
        IF t2250 = abap_true.
          DATA t2254 TYPE REF TO zcl_lnt_issue.
          CLEAR t2254.
          DATA t2255 TYPE REF TO zcl_lnt_issue.
          CLEAR t2255.
          DATA(t2256) = t1.
          DATA(t2257) = t17.
          DATA(t2258) = |FORM IMPLEMENTATION|.
          DATA(t2259) = VALUE string( ).
          DATA t2260 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t2260.
          DATA(t2261) = VALUE string( ).
          DATA(t2262) = |obsolete_statement|.
          t2261 = t2262.
          DATA(t2263) = VALUE string( ).
          DATA(t2264) = |Obsolete statements|.
          t2263 = t2264.
          DATA(t2265) = VALUE string( ).
          DATA(t2266) = |Checks for usages of certain obsolete statements|.
          t2265 = t2266.
          DATA t2267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2267.
          DATA t2268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2268.
          DATA(t2269) = abap_true.
          IF t2269 = abap_true.
            DATA t2270 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2270.
            DATA t2271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2271.
            DATA t2272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2272.
            CREATE OBJECT t2272.
            t2271 = t2272.
            DATA(t2273) = t2271.
            DATA(t2274) = |SingleFile|.
            t2273->load( ).
            APPEND t2274 TO t2273->items.
            t2273->save( ).
            DATA(t2275) = t2271.
            DATA(t2276) = |Styleguide|.
            t2275->load( ).
            APPEND t2276 TO t2275->items.
            t2275->save( ).
            DATA(t2277) = t2271.
            DATA(t2278) = |Quickfix|.
            t2277->load( ).
            APPEND t2278 TO t2277->items.
            t2277->save( ).
            DATA(t2279) = t2271.
            t2270 = t2279.
            t2268 = t2270.
          ELSE.
            DATA t2280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2280.
            t2268 = t2280.
          ENDIF.
          t2267 = t2268.
          DATA t2281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2281.
          DATA t2282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2282.
          DATA(t2283) = abap_true.
          IF t2283 = abap_true.
            DATA(t2284) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t2284 = t2284 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t2284 = t2284 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t2284 = t2284 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t2284 = t2284 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t2284 = t2284 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t2284 = t2284 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t2284 = t2284 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t2284 = t2284 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t2284 = t2284 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t2284 = t2284 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t2284 = t2284 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t2284 = t2284 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2284 = t2284 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t2284 = t2284 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2284 = t2284 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t2284 = t2284 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t2284 = t2284 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t2284 = t2284 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t2284 = t2284 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t2284 = t2284 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t2284 = t2284 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t2284 = t2284 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t2284 = t2284 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t2284 = t2284 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t2284 = t2284 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t2284 = t2284 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t2284 = t2284 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t2284 = t2284 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t2284 = t2284 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t2284 = t2284 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t2284 = t2284 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t2284 = t2284 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t2284 = t2284 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t2284 = t2284 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t2284 = t2284 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t2284 = t2284 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t2284 = t2284 && |ect_client_obsolete.html|.
            DATA(t2285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2285->has = abap_true.
            t2285->value = t2284.
            t2282 = t2285.
          ELSE.
            DATA t2286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2286.
            t2282 = t2286.
          ENDIF.
          t2281 = t2282.
          DATA t2287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2287.
          DATA t2288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2288.
          DATA(t2289) = abap_true.
          IF t2289 = abap_true.
            DATA(t2290) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t2290 = t2290 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t2291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2291->has = abap_true.
            t2291->value = t2290.
            t2288 = t2291.
          ELSE.
            DATA t2292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2292.
            t2288 = t2292.
          ENDIF.
          t2287 = t2288.
          DATA t2293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2293.
          DATA t2294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2294.
          t2293 = t2294.
          DATA t2295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2295.
          DATA t2296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2296.
          t2295 = t2296.
          DATA t2297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2297.
          DATA t2298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2298.
          t2297 = t2298.
          t2260 = NEW zcl_lnt_irule_metadata( i_key = t2261 i_title = t2263 i_short_description = t2265 i_bad_example = t2287 i_good_example = t2293 i_extended_information = t2281 i_tags = t2267 i_pragma = t2295 i_pseudo_comment = t2297 ).
          CREATE OBJECT t2260->zlnt_view_ownkeys_b0e8086400eb.
          t2260->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2299.
          IF t2260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2299 ).
          ENDIF.
          DATA t2300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2300.
          IF t2260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2300 ).
          ENDIF.
          DATA t2301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2301.
          IF t2260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2301 ).
          ENDIF.
          DATA t2302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2302.
          IF t2260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2302 ).
          ENDIF.
          DATA t2303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2303.
          IF t2260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2303 ).
          ENDIF.
          DATA t2304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2304.
          IF t2260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2304 ).
          ENDIF.
          CREATE OBJECT t2260->zlnt_json_ownkeys_70e5fd461788.
          t2260->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t2305) = |key|.
          DATA t2306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2306.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2305 p1 = t2306 ).
          ENDIF.
          DATA(t2307) = |title|.
          DATA t2308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2308.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2307 p1 = t2308 ).
          ENDIF.
          DATA(t2309) = |shortDescription|.
          DATA t2310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2310.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2309 p1 = t2310 ).
          ENDIF.
          DATA(t2311) = |tags|.
          DATA t2312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2312.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2311 p1 = t2312 ).
          ENDIF.
          DATA(t2313) = |extendedInformation|.
          DATA t2314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2314.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2313 p1 = t2314 ).
          ENDIF.
          DATA(t2315) = |badExample|.
          DATA t2316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2316.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2315 p1 = t2316 ).
          ENDIF.
          t2259 = t2260->key.
          DATA t2317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2317.
          DATA(t2318) = me->conf.
          t2317 = t2318->zlnt_view_read_sr_15c06369f827( ).
          DATA t2319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2319.
          DATA t2320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2320.
          t2255 = zcl_lnt_issue=>at_statement( i_file = t2256 i_statement = t2257 i_message_26cb = t2258 i_key = t2259 i_severity = t2317 i_fix = t2319 i_alternative_fixes = t2320 ).
          t2254 = t2255.
          DATA(t2321) = t2.
          DATA(t2322) = t2254.
          t2321->load( ).
          APPEND t2322 TO t2321->items.
          t2321->save( ).
        ENDIF.
      ENDIF.
      DATA(t2323) = VALUE abap_bool( ).
      DATA(t2324) = VALUE abap_bool( ).
      DATA t2325 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2325.
      DATA(t2326) = me->conf.
      t2325 = t2326->zlnt_view_read_sr_2b4baa7f3ded( ).
      IF t2325 IS BOUND.
        IF t2325->has = abap_true.
          t2324 = xsdbool( t2325->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2323 = t2324.
      IF t2324 = abap_true.
        DATA(t2327) = VALUE abap_bool( ).
        DATA(t2328) = t22.
        t2327 = xsdbool( t2328 IS BOUND AND t2328 IS INSTANCE OF zcl_lnt_st_loop_extract ).
        t2323 = t2327.
      ENDIF.
      IF t2323 = abap_true.
        DATA t2329 TYPE REF TO zcl_lnt_issue.
        CLEAR t2329.
        DATA t2330 TYPE REF TO zcl_lnt_issue.
        CLEAR t2330.
        DATA(t2331) = t1.
        DATA(t2332) = t17.
        DATA(t2333) = |LOOP extract|.
        DATA(t2334) = VALUE string( ).
        DATA t2335 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t2335.
        DATA(t2336) = VALUE string( ).
        DATA(t2337) = |obsolete_statement|.
        t2336 = t2337.
        DATA(t2338) = VALUE string( ).
        DATA(t2339) = |Obsolete statements|.
        t2338 = t2339.
        DATA(t2340) = VALUE string( ).
        DATA(t2341) = |Checks for usages of certain obsolete statements|.
        t2340 = t2341.
        DATA t2342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2342.
        DATA t2343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2343.
        DATA(t2344) = abap_true.
        IF t2344 = abap_true.
          DATA t2345 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2345.
          DATA t2346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2346.
          DATA t2347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2347.
          CREATE OBJECT t2347.
          t2346 = t2347.
          DATA(t2348) = t2346.
          DATA(t2349) = |SingleFile|.
          t2348->load( ).
          APPEND t2349 TO t2348->items.
          t2348->save( ).
          DATA(t2350) = t2346.
          DATA(t2351) = |Styleguide|.
          t2350->load( ).
          APPEND t2351 TO t2350->items.
          t2350->save( ).
          DATA(t2352) = t2346.
          DATA(t2353) = |Quickfix|.
          t2352->load( ).
          APPEND t2353 TO t2352->items.
          t2352->save( ).
          DATA(t2354) = t2346.
          t2345 = t2354.
          t2343 = t2345.
        ELSE.
          DATA t2355 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2355.
          t2343 = t2355.
        ENDIF.
        t2342 = t2343.
        DATA t2356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2356.
        DATA t2357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2357.
        DATA(t2358) = abap_true.
        IF t2358 = abap_true.
          DATA(t2359) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t2359 = t2359 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t2359 = t2359 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t2359 = t2359 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t2359 = t2359 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t2359 = t2359 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t2359 = t2359 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t2359 = t2359 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t2359 = t2359 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t2359 = t2359 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t2359 = t2359 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t2359 = t2359 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t2359 = t2359 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t2359 = t2359 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t2359 = t2359 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t2359 = t2359 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t2359 = t2359 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t2359 = t2359 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t2359 = t2359 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t2359 = t2359 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t2359 = t2359 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t2359 = t2359 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t2359 = t2359 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t2359 = t2359 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t2359 = t2359 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t2359 = t2359 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t2359 = t2359 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t2359 = t2359 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t2359 = t2359 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t2359 = t2359 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t2359 = t2359 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t2359 = t2359 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t2359 = t2359 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t2359 = t2359 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t2359 = t2359 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t2359 = t2359 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t2359 = t2359 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t2359 = t2359 && |ect_client_obsolete.html|.
          DATA(t2360) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2360->has = abap_true.
          t2360->value = t2359.
          t2357 = t2360.
        ELSE.
          DATA t2361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2361.
          t2357 = t2361.
        ENDIF.
        t2356 = t2357.
        DATA t2362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2362.
        DATA t2363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2363.
        DATA(t2364) = abap_true.
        IF t2364 = abap_true.
          DATA(t2365) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t2365 = t2365 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t2366) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2366->has = abap_true.
          t2366->value = t2365.
          t2363 = t2366.
        ELSE.
          DATA t2367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2367.
          t2363 = t2367.
        ENDIF.
        t2362 = t2363.
        DATA t2368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2368.
        DATA t2369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2369.
        t2368 = t2369.
        DATA t2370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2370.
        DATA t2371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2371.
        t2370 = t2371.
        DATA t2372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2372.
        DATA t2373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2373.
        t2372 = t2373.
        t2335 = NEW zcl_lnt_irule_metadata( i_key = t2336 i_title = t2338 i_short_description = t2340 i_bad_example = t2362 i_good_example = t2368 i_extended_information = t2356 i_tags = t2342 i_pragma = t2370 i_pseudo_comment = t2372 ).
        CREATE OBJECT t2335->zlnt_view_ownkeys_b0e8086400eb.
        t2335->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t2374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2374.
        IF t2335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2374 ).
        ENDIF.
        DATA t2375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2375.
        IF t2335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2375 ).
        ENDIF.
        DATA t2376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2376.
        IF t2335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2376 ).
        ENDIF.
        DATA t2377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2377.
        IF t2335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2377 ).
        ENDIF.
        DATA t2378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2378.
        IF t2335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2378 ).
        ENDIF.
        DATA t2379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2379.
        IF t2335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2379 ).
        ENDIF.
        CREATE OBJECT t2335->zlnt_json_ownkeys_70e5fd461788.
        t2335->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t2380) = |key|.
        DATA t2381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2381.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2380 p1 = t2381 ).
        ENDIF.
        DATA(t2382) = |title|.
        DATA t2383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2383.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2382 p1 = t2383 ).
        ENDIF.
        DATA(t2384) = |shortDescription|.
        DATA t2385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2385.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2384 p1 = t2385 ).
        ENDIF.
        DATA(t2386) = |tags|.
        DATA t2387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2387.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2386 p1 = t2387 ).
        ENDIF.
        DATA(t2388) = |extendedInformation|.
        DATA t2389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2389.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2388 p1 = t2389 ).
        ENDIF.
        DATA(t2390) = |badExample|.
        DATA t2391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2391.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2390 p1 = t2391 ).
        ENDIF.
        t2334 = t2335->key.
        DATA t2392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2392.
        DATA(t2393) = me->conf.
        t2392 = t2393->zlnt_view_read_sr_15c06369f827( ).
        DATA t2394 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t2394.
        DATA t2395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2395.
        t2330 = zcl_lnt_issue=>at_statement( i_file = t2331 i_statement = t2332 i_message_26cb = t2333 i_key = t2334 i_severity = t2392 i_fix = t2394 i_alternative_fixes = t2395 ).
        t2329 = t2330.
        DATA(t2396) = t2.
        DATA(t2397) = t2329.
        t2396->load( ).
        APPEND t2397 TO t2396->items.
        t2396->save( ).
      ENDIF.
      DATA(t2398) = VALUE abap_bool( ).
      DATA(t2399) = VALUE abap_bool( ).
      DATA(t2400) = VALUE abap_bool( ).
      DATA t2401 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2401.
      DATA(t2402) = me->conf.
      t2401 = t2402->zlnt_view_read_sr_285c76f87f81( ).
      IF t2401 IS BOUND.
        IF t2401->has = abap_true.
          t2400 = xsdbool( t2401->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2399 = t2400.
      IF t2400 = abap_true.
        DATA(t2403) = VALUE abap_bool( ).
        DATA(t2404) = t22.
        t2403 = xsdbool( t2404 IS BOUND AND t2404 IS INSTANCE OF zcl_lnt_sort_dataset ).
        t2399 = t2403.
      ENDIF.
      t2398 = t2399.
      IF t2399 = abap_true.
        DATA(t2405) = VALUE abap_bool( ).
        DATA(t2406) = VALUE i( ).
        DATA t2407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2407.
        DATA t2408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2408.
        DATA t2409 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t2409.
        DATA(t2410) = t17.
        t2409 = t2410.
        DATA t2411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2411.
        DATA(t2412) = t2409.
        t2411 = t2412->children.
        t2408 = t2411.
        t2407 ?= t2408.
        t2407->load( ).
        t2406 = lines( t2407->items ).
        DATA(t2413) = 2.
        t2405 = xsdbool( t2406 = t2413 ).
        t2398 = t2405.
      ENDIF.
      IF t2398 = abap_true.
        DATA t2414 TYPE REF TO zcl_lnt_issue.
        CLEAR t2414.
        DATA t2415 TYPE REF TO zcl_lnt_issue.
        CLEAR t2415.
        DATA(t2416) = t1.
        DATA(t2417) = t17.
        DATA(t2418) = |SORT extract|.
        DATA(t2419) = VALUE string( ).
        DATA t2420 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t2420.
        DATA(t2421) = VALUE string( ).
        DATA(t2422) = |obsolete_statement|.
        t2421 = t2422.
        DATA(t2423) = VALUE string( ).
        DATA(t2424) = |Obsolete statements|.
        t2423 = t2424.
        DATA(t2425) = VALUE string( ).
        DATA(t2426) = |Checks for usages of certain obsolete statements|.
        t2425 = t2426.
        DATA t2427 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2427.
        DATA t2428 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2428.
        DATA(t2429) = abap_true.
        IF t2429 = abap_true.
          DATA t2430 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2430.
          DATA t2431 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2431.
          DATA t2432 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2432.
          CREATE OBJECT t2432.
          t2431 = t2432.
          DATA(t2433) = t2431.
          DATA(t2434) = |SingleFile|.
          t2433->load( ).
          APPEND t2434 TO t2433->items.
          t2433->save( ).
          DATA(t2435) = t2431.
          DATA(t2436) = |Styleguide|.
          t2435->load( ).
          APPEND t2436 TO t2435->items.
          t2435->save( ).
          DATA(t2437) = t2431.
          DATA(t2438) = |Quickfix|.
          t2437->load( ).
          APPEND t2438 TO t2437->items.
          t2437->save( ).
          DATA(t2439) = t2431.
          t2430 = t2439.
          t2428 = t2430.
        ELSE.
          DATA t2440 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2440.
          t2428 = t2440.
        ENDIF.
        t2427 = t2428.
        DATA t2441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2441.
        DATA t2442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2442.
        DATA(t2443) = abap_true.
        IF t2443 = abap_true.
          DATA(t2444) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t2444 = t2444 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
          t2444 = t2444 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
          t2444 = t2444 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
          t2444 = t2444 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
          t2444 = t2444 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
          t2444 = t2444 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
          t2444 = t2444 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
          t2444 = t2444 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
          t2444 = t2444 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
          t2444 = t2444 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
          t2444 = t2444 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
          t2444 = t2444 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t2444 = t2444 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
          t2444 = t2444 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
          t2444 = t2444 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
          t2444 = t2444 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
          t2444 = t2444 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
          t2444 = t2444 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
          t2444 = t2444 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
          t2444 = t2444 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
          t2444 = t2444 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
          t2444 = t2444 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
          t2444 = t2444 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
          t2444 = t2444 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
          t2444 = t2444 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
          t2444 = t2444 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
          t2444 = t2444 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
          t2444 = t2444 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
          t2444 = t2444 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
          t2444 = t2444 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
          t2444 = t2444 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
          t2444 = t2444 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
          t2444 = t2444 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t2444 = t2444 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
          t2444 = t2444 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
          t2444 = t2444 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
          t2444 = t2444 && |ect_client_obsolete.html|.
          DATA(t2445) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2445->has = abap_true.
          t2445->value = t2444.
          t2442 = t2445.
        ELSE.
          DATA t2446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2446.
          t2442 = t2446.
        ENDIF.
        t2441 = t2442.
        DATA t2447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2447.
        DATA t2448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2448.
        DATA(t2449) = abap_true.
        IF t2449 = abap_true.
          DATA(t2450) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t2450 = t2450 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t2451) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2451->has = abap_true.
          t2451->value = t2450.
          t2448 = t2451.
        ELSE.
          DATA t2452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2452.
          t2448 = t2452.
        ENDIF.
        t2447 = t2448.
        DATA t2453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2453.
        DATA t2454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2454.
        t2453 = t2454.
        DATA t2455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2455.
        DATA t2456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2456.
        t2455 = t2456.
        DATA t2457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2457.
        DATA t2458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2458.
        t2457 = t2458.
        t2420 = NEW zcl_lnt_irule_metadata( i_key = t2421 i_title = t2423 i_short_description = t2425 i_bad_example = t2447 i_good_example = t2453 i_extended_information = t2441 i_tags = t2427 i_pragma = t2455 i_pseudo_comment = t2457 ).
        CREATE OBJECT t2420->zlnt_view_ownkeys_b0e8086400eb.
        t2420->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t2459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2459.
        IF t2420->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2459 ).
        ENDIF.
        DATA t2460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2460.
        IF t2420->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2460 ).
        ENDIF.
        DATA t2461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2461.
        IF t2420->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2461 ).
        ENDIF.
        DATA t2462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2462.
        IF t2420->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2462 ).
        ENDIF.
        DATA t2463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2463.
        IF t2420->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2463 ).
        ENDIF.
        DATA t2464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2464.
        IF t2420->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t2420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2464 ).
        ENDIF.
        CREATE OBJECT t2420->zlnt_json_ownkeys_70e5fd461788.
        t2420->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t2465) = |key|.
        DATA t2466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2466.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2465 p1 = t2466 ).
        ENDIF.
        DATA(t2467) = |title|.
        DATA t2468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2468.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2467 p1 = t2468 ).
        ENDIF.
        DATA(t2469) = |shortDescription|.
        DATA t2470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2470.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2469 p1 = t2470 ).
        ENDIF.
        DATA(t2471) = |tags|.
        DATA t2472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2472.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2471 p1 = t2472 ).
        ENDIF.
        DATA(t2473) = |extendedInformation|.
        DATA t2474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2474.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2473 p1 = t2474 ).
        ENDIF.
        DATA(t2475) = |badExample|.
        DATA t2476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2476.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2475 p1 = t2476 ).
        ENDIF.
        t2419 = t2420->key.
        DATA t2477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2477.
        DATA(t2478) = me->conf.
        t2477 = t2478->zlnt_view_read_sr_15c06369f827( ).
        DATA t2479 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t2479.
        DATA t2480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2480.
        t2415 = zcl_lnt_issue=>at_statement( i_file = t2416 i_statement = t2417 i_message_26cb = t2418 i_key = t2419 i_severity = t2477 i_fix = t2479 i_alternative_fixes = t2480 ).
        t2414 = t2415.
        DATA(t2481) = t2.
        DATA(t2482) = t2414.
        t2481->load( ).
        APPEND t2482 TO t2481->items.
        t2481->save( ).
      ENDIF.
      DATA(t2483) = VALUE abap_bool( ).
      DATA(t2484) = VALUE abap_bool( ).
      DATA(t2485) = VALUE abap_bool( ).
      DATA(t2486) = t12.
      DATA t2487 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2487.
      DATA t2488 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2488.
      DATA t2489 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2489.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2489 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2490) = |v754|.
      t2488 = t2489->get( p0 = t2490 ).
      t2487 = t2488.
      t2485 = zcl_lnt_version_module=>release_at_least( i_running = t2486 i_required = t2487 ).
      t2484 = t2485.
      IF t2485 = abap_true.
        DATA(t2491) = VALUE abap_bool( ).
        DATA(t2492) = me->conf.
        t2491 = t2492->zlnt_view_read_sr_76df01b8d502( ).
        t2484 = t2491.
      ENDIF.
      t2483 = t2484.
      IF t2484 = abap_true.
        DATA(t2493) = VALUE abap_bool( ).
        DATA(t2494) = VALUE abap_bool( ).
        DATA(t2495) = VALUE abap_bool( ).
        DATA(t2496) = VALUE abap_bool( ).
        DATA(t2497) = VALUE abap_bool( ).
        DATA(t2498) = VALUE abap_bool( ).
        DATA(t2499) = t22.
        t2498 = xsdbool( t2499 IS BOUND AND t2499 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t2497 = t2498.
        IF t2498 = abap_false.
          DATA(t2500) = VALUE abap_bool( ).
          DATA(t2501) = t22.
          t2500 = xsdbool( t2501 IS BOUND AND t2501 IS INSTANCE OF zcl_lnt_st_select_loop ).
          t2497 = t2500.
        ENDIF.
        t2496 = t2497.
        IF t2497 = abap_false.
          DATA(t2502) = VALUE abap_bool( ).
          DATA(t2503) = t22.
          t2502 = xsdbool( t2503 IS BOUND AND t2503 IS INSTANCE OF zcl_lnt_st_delete_database ).
          t2496 = t2502.
        ENDIF.
        t2495 = t2496.
        IF t2496 = abap_false.
          DATA(t2504) = VALUE abap_bool( ).
          DATA(t2505) = t22.
          t2504 = xsdbool( t2505 IS BOUND AND t2505 IS INSTANCE OF zcl_lnt_st_insert_database ).
          t2495 = t2504.
        ENDIF.
        t2494 = t2495.
        IF t2495 = abap_false.
          DATA(t2506) = VALUE abap_bool( ).
          DATA(t2507) = t22.
          t2506 = xsdbool( t2507 IS BOUND AND t2507 IS INSTANCE OF zcl_lnt_st_modify_database ).
          t2494 = t2506.
        ENDIF.
        t2493 = t2494.
        IF t2494 = abap_false.
          DATA(t2508) = VALUE abap_bool( ).
          DATA(t2509) = t22.
          t2508 = xsdbool( t2509 IS BOUND AND t2509 IS INSTANCE OF zcl_lnt_st_update_database ).
          t2493 = t2508.
        ENDIF.
        t2483 = t2493.
      ENDIF.
      IF t2483 = abap_true.
        DATA(t2510) = VALUE string( ).
        DATA(t2511) = VALUE string( ).
        DATA(t2512) = VALUE string( ).
        DATA(t2513) = t17.
        t2512 = t2513->concat_tokens( ).
        DATA(t2514) = strlen( t2512 ).
        t2511 = t2512.
        IF t2511 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t2511 TO UPPER CASE.
        ELSE.
          t2511 = zlnt_runtime_uppe_91169605024d=>full( t2511 ).
        ENDIF.
        t2510 = t2511.
        DATA(t2515) = VALUE abap_bool( ).
        DATA(t2516) = VALUE i( ).
        DATA(t2517) = t2510.
        DATA(t2518) = | CLIENT SPECIFIED|.
        DATA(t2519) = strlen( t2517 ).
        IF t2518 IS INITIAL.
          t2516 = 0.
        ELSE.
          FIND t2518 IN t2517 MATCH OFFSET t2516.
          IF sy-subrc <> 0.
            t2516 = -1.
          ENDIF.
        ENDIF.
        DATA(t2520) = 0.
        t2515 = xsdbool( t2516 >= t2520 ).
        IF t2515 = abap_true.
          DATA t2521 TYPE REF TO zcl_lnt_issue.
          CLEAR t2521.
          DATA t2522 TYPE REF TO zcl_lnt_issue.
          CLEAR t2522.
          DATA(t2523) = t1.
          DATA(t2524) = t17.
          DATA(t2525) = |Use USING CLIENT|.
          DATA(t2526) = VALUE string( ).
          DATA t2527 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t2527.
          DATA(t2528) = VALUE string( ).
          DATA(t2529) = |obsolete_statement|.
          t2528 = t2529.
          DATA(t2530) = VALUE string( ).
          DATA(t2531) = |Obsolete statements|.
          t2530 = t2531.
          DATA(t2532) = VALUE string( ).
          DATA(t2533) = |Checks for usages of certain obsolete statements|.
          t2532 = t2533.
          DATA t2534 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2534.
          DATA t2535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2535.
          DATA(t2536) = abap_true.
          IF t2536 = abap_true.
            DATA t2537 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2537.
            DATA t2538 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2538.
            DATA t2539 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2539.
            CREATE OBJECT t2539.
            t2538 = t2539.
            DATA(t2540) = t2538.
            DATA(t2541) = |SingleFile|.
            t2540->load( ).
            APPEND t2541 TO t2540->items.
            t2540->save( ).
            DATA(t2542) = t2538.
            DATA(t2543) = |Styleguide|.
            t2542->load( ).
            APPEND t2543 TO t2542->items.
            t2542->save( ).
            DATA(t2544) = t2538.
            DATA(t2545) = |Quickfix|.
            t2544->load( ).
            APPEND t2545 TO t2544->items.
            t2544->save( ).
            DATA(t2546) = t2538.
            t2537 = t2546.
            t2535 = t2537.
          ELSE.
            DATA t2547 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2547.
            t2535 = t2547.
          ENDIF.
          t2534 = t2535.
          DATA t2548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2548.
          DATA t2549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2549.
          DATA(t2550) = abap_true.
          IF t2550 = abap_true.
            DATA(t2551) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t2551 = t2551 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
            t2551 = t2551 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
            t2551 = t2551 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
            t2551 = t2551 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
            t2551 = t2551 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
            t2551 = t2551 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
            t2551 = t2551 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
            t2551 = t2551 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
            t2551 = t2551 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
            t2551 = t2551 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
            t2551 = t2551 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
            t2551 = t2551 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2551 = t2551 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
            t2551 = t2551 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
            t2551 = t2551 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
            t2551 = t2551 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
            t2551 = t2551 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
            t2551 = t2551 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
            t2551 = t2551 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
            t2551 = t2551 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
            t2551 = t2551 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
            t2551 = t2551 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
            t2551 = t2551 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
            t2551 = t2551 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
            t2551 = t2551 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
            t2551 = t2551 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
            t2551 = t2551 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
            t2551 = t2551 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
            t2551 = t2551 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
            t2551 = t2551 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
            t2551 = t2551 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
            t2551 = t2551 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
            t2551 = t2551 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
            t2551 = t2551 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
            t2551 = t2551 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
            t2551 = t2551 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
            t2551 = t2551 && |ect_client_obsolete.html|.
            DATA(t2552) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2552->has = abap_true.
            t2552->value = t2551.
            t2549 = t2552.
          ELSE.
            DATA t2553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2553.
            t2549 = t2553.
          ENDIF.
          t2548 = t2549.
          DATA t2554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2554.
          DATA t2555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2555.
          DATA(t2556) = abap_true.
          IF t2556 = abap_true.
            DATA(t2557) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t2557 = t2557 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t2558) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2558->has = abap_true.
            t2558->value = t2557.
            t2555 = t2558.
          ELSE.
            DATA t2559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2559.
            t2555 = t2559.
          ENDIF.
          t2554 = t2555.
          DATA t2560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2560.
          DATA t2561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2561.
          t2560 = t2561.
          DATA t2562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2562.
          DATA t2563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2563.
          t2562 = t2563.
          DATA t2564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2564.
          DATA t2565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2565.
          t2564 = t2565.
          t2527 = NEW zcl_lnt_irule_metadata( i_key = t2528 i_title = t2530 i_short_description = t2532 i_bad_example = t2554 i_good_example = t2560 i_extended_information = t2548 i_tags = t2534 i_pragma = t2562 i_pseudo_comment = t2564 ).
          CREATE OBJECT t2527->zlnt_view_ownkeys_b0e8086400eb.
          t2527->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2566.
          IF t2527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2566 ).
          ENDIF.
          DATA t2567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2567.
          IF t2527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2567 ).
          ENDIF.
          DATA t2568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2568.
          IF t2527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2568 ).
          ENDIF.
          DATA t2569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2569.
          IF t2527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2569 ).
          ENDIF.
          DATA t2570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2570.
          IF t2527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2570 ).
          ENDIF.
          DATA t2571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2571.
          IF t2527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t2527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2571 ).
          ENDIF.
          CREATE OBJECT t2527->zlnt_json_ownkeys_70e5fd461788.
          t2527->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t2572) = |key|.
          DATA t2573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2573.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2572 p1 = t2573 ).
          ENDIF.
          DATA(t2574) = |title|.
          DATA t2575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2575.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2574 p1 = t2575 ).
          ENDIF.
          DATA(t2576) = |shortDescription|.
          DATA t2577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2577.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2576 p1 = t2577 ).
          ENDIF.
          DATA(t2578) = |tags|.
          DATA t2579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2579.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2578 p1 = t2579 ).
          ENDIF.
          DATA(t2580) = |extendedInformation|.
          DATA t2581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2581.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2580 p1 = t2581 ).
          ENDIF.
          DATA(t2582) = |badExample|.
          DATA t2583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2583.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2582 p1 = t2583 ).
          ENDIF.
          t2526 = t2527->key.
          DATA t2584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2584.
          DATA(t2585) = me->conf.
          t2584 = t2585->zlnt_view_read_sr_15c06369f827( ).
          DATA t2586 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2586.
          DATA t2587 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2587.
          t2522 = zcl_lnt_issue=>at_statement( i_file = t2523 i_statement = t2524 i_message_26cb = t2525 i_key = t2526 i_severity = t2584 i_fix = t2586 i_alternative_fixes = t2587 ).
          t2521 = t2522.
          DATA(t2588) = t2.
          DATA(t2589) = t2521.
          t2588->load( ).
          APPEND t2589 TO t2588->items.
          t2588->save( ).
        ENDIF.
      ENDIF.
      DATA(t2590) = VALUE abap_bool( ).
      DATA(t2591) = VALUE abap_bool( ).
      DATA(t2592) = t12.
      DATA t2593 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2593.
      DATA t2594 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2594.
      DATA t2595 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2595.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2595 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2596) = |v756|.
      t2594 = t2595->get( p0 = t2596 ).
      t2593 = t2594.
      t2591 = zcl_lnt_version_module=>release_at_least( i_running = t2592 i_required = t2593 ).
      t2590 = t2591.
      IF t2591 = abap_true.
        DATA(t2597) = VALUE abap_bool( ).
        DATA(t2598) = me->conf.
        t2597 = t2598->zlnt_view_read_sr_1e511c9f8d04( ).
        t2590 = t2597.
      ENDIF.
      IF t2590 = abap_true.
        DATA(t2599) = VALUE abap_bool( ).
        DATA(t2600) = VALUE abap_bool( ).
        DATA(t2601) = t22.
        t2600 = xsdbool( t2601 IS BOUND AND t2601 IS INSTANCE OF zcl_lnt_st_find ).
        t2599 = t2600.
        IF t2600 = abap_false.
          DATA(t2602) = VALUE abap_bool( ).
          DATA(t2603) = t22.
          t2602 = xsdbool( t2603 IS BOUND AND t2603 IS INSTANCE OF zcl_lnt_st_replace ).
          t2599 = t2602.
        ENDIF.
        IF t2599 = abap_true.
          DATA(t2604) = VALUE abap_bool( ).
          DATA t2605 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t2605.
          DATA t2606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2606.
          DATA t2607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2607.
          DATA t2608 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t2608.
          DATA t2609 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t2609.
          DATA(t2610) = t17.
          DATA(t2611) = zlnt_runtime_desc_78196487750d=>zlnt_member_d176_70730c0e7184.
          t2609 = t2610->find_first_expression( i_type_9913 = t2611 ).
          t2608 = t2609.
          DATA t2612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2612.
          DATA(t2613) = VALUE abap_bool( ).
          DATA(t2614) = t2608.
          IF t2614 IS INITIAL.
            t2613 = abap_true.
          ENDIF.
          IF t2613 = abap_true.
            DATA t2615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2615.
            t2612 = t2615.
          ELSE.
            DATA(t2616) = VALUE string( ).
            DATA t2617 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t2617.
            DATA(t2618) = t2608.
            t2617 = t2618.
            t2616 = t2617->concat_tokens( ).
            DATA(t2619) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2619->has = abap_true.
            t2619->value = t2616.
            t2612 = t2619.
          ENDIF.
          t2607 = t2612.
          t2606 = t2607.
          DATA t2620 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t2620.
          DATA(t2621) = VALUE abap_bool( ).
          DATA(t2622) = t2606.
          IF t2622 IS INITIAL.
            t2621 = abap_true.
          ELSEIF t2622->has = abap_false.
            t2621 = abap_true.
          ENDIF.
          IF t2621 = abap_true.
            DATA t2623 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t2623.
            t2620 = t2623.
          ELSE.
            DATA(t2624) = VALUE abap_bool( ).
            DATA(t2625) = VALUE i( ).
            DATA(t2626) = VALUE string( ).
            DATA(t2627) = t2606.
            t2626 = t2627->value.
            DATA(t2628) = |REGEX|.
            DATA(t2629) = strlen( t2626 ).
            IF t2628 IS INITIAL.
              t2625 = 0.
            ELSE.
              FIND t2628 IN t2626 MATCH OFFSET t2625.
              IF sy-subrc <> 0.
                t2625 = -1.
              ENDIF.
            ENDIF.
            DATA(t2630) = 0.
            t2624 = xsdbool( t2625 >= t2630 ).
            DATA(t2631) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t2631->has = abap_true.
            t2631->value = t2624.
            t2620 = t2631.
          ENDIF.
          t2605 = t2620.
          IF t2605 IS BOUND.
            IF t2605->has = abap_true.
              t2604 = xsdbool( t2605->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t2604 = abap_true.
            DATA t2632 TYPE REF TO zcl_lnt_issue.
            CLEAR t2632.
            DATA t2633 TYPE REF TO zcl_lnt_issue.
            CLEAR t2633.
            DATA(t2634) = t1.
            DATA(t2635) = t17.
            DATA(t2636) = |REGEX obsolete, use PCRE|.
            DATA(t2637) = VALUE string( ).
            DATA t2638 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t2638.
            DATA(t2639) = VALUE string( ).
            DATA(t2640) = |obsolete_statement|.
            t2639 = t2640.
            DATA(t2641) = VALUE string( ).
            DATA(t2642) = |Obsolete statements|.
            t2641 = t2642.
            DATA(t2643) = VALUE string( ).
            DATA(t2644) = |Checks for usages of certain obsolete statements|.
            t2643 = t2644.
            DATA t2645 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2645.
            DATA t2646 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2646.
            DATA(t2647) = abap_true.
            IF t2647 = abap_true.
              DATA t2648 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t2648.
              DATA t2649 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t2649.
              DATA t2650 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t2650.
              CREATE OBJECT t2650.
              t2649 = t2650.
              DATA(t2651) = t2649.
              DATA(t2652) = |SingleFile|.
              t2651->load( ).
              APPEND t2652 TO t2651->items.
              t2651->save( ).
              DATA(t2653) = t2649.
              DATA(t2654) = |Styleguide|.
              t2653->load( ).
              APPEND t2654 TO t2653->items.
              t2653->save( ).
              DATA(t2655) = t2649.
              DATA(t2656) = |Quickfix|.
              t2655->load( ).
              APPEND t2656 TO t2655->items.
              t2655->save( ).
              DATA(t2657) = t2649.
              t2648 = t2657.
              t2646 = t2648.
            ELSE.
              DATA t2658 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t2658.
              t2646 = t2658.
            ENDIF.
            t2645 = t2646.
            DATA t2659 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2659.
            DATA t2660 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2660.
            DATA(t2661) = abap_true.
            IF t2661 = abap_true.
              DATA(t2662) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
              t2662 = t2662 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
              t2662 = t2662 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
              t2662 = t2662 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
              t2662 = t2662 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
              t2662 = t2662 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
              t2662 = t2662 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
              t2662 = t2662 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
              t2662 = t2662 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
              t2662 = t2662 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
              t2662 = t2662 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
              t2662 = t2662 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
              t2662 = t2662 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t2662 = t2662 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
              t2662 = t2662 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
              t2662 = t2662 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
              t2662 = t2662 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
              t2662 = t2662 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
              t2662 = t2662 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
              t2662 = t2662 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
              t2662 = t2662 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
              t2662 = t2662 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
              t2662 = t2662 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
              t2662 = t2662 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
              t2662 = t2662 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
              t2662 = t2662 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
              t2662 = t2662 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
              t2662 = t2662 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
              t2662 = t2662 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
              t2662 = t2662 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
              t2662 = t2662 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
              t2662 = t2662 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
              t2662 = t2662 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
              t2662 = t2662 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
              t2662 = t2662 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
              t2662 = t2662 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
              t2662 = t2662 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
              t2662 = t2662 && |ect_client_obsolete.html|.
              DATA(t2663) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t2663->has = abap_true.
              t2663->value = t2662.
              t2660 = t2663.
            ELSE.
              DATA t2664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t2664.
              t2660 = t2664.
            ENDIF.
            t2659 = t2660.
            DATA t2665 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2665.
            DATA t2666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2666.
            DATA(t2667) = abap_true.
            IF t2667 = abap_true.
              DATA(t2668) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
              t2668 = t2668 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
              DATA(t2669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t2669->has = abap_true.
              t2669->value = t2668.
              t2666 = t2669.
            ELSE.
              DATA t2670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t2670.
              t2666 = t2670.
            ENDIF.
            t2665 = t2666.
            DATA t2671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2671.
            DATA t2672 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2672.
            t2671 = t2672.
            DATA t2673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2673.
            DATA t2674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2674.
            t2673 = t2674.
            DATA t2675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2675.
            DATA t2676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2676.
            t2675 = t2676.
            t2638 = NEW zcl_lnt_irule_metadata( i_key = t2639 i_title = t2641 i_short_description = t2643 i_bad_example = t2665 i_good_example = t2671 i_extended_information = t2659 i_tags = t2645 i_pragma = t2673 i_pseudo_comment = t2675 ).
            CREATE OBJECT t2638->zlnt_view_ownkeys_b0e8086400eb.
            t2638->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2677.
            IF t2638->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2638->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2677 ).
            ENDIF.
            DATA t2678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2678.
            IF t2638->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2638->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2678 ).
            ENDIF.
            DATA t2679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2679.
            IF t2638->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2638->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2679 ).
            ENDIF.
            DATA t2680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2680.
            IF t2638->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2638->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2680 ).
            ENDIF.
            DATA t2681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2681.
            IF t2638->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2638->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2681 ).
            ENDIF.
            DATA t2682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2682.
            IF t2638->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t2638->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2682 ).
            ENDIF.
            CREATE OBJECT t2638->zlnt_json_ownkeys_70e5fd461788.
            t2638->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t2683) = |key|.
            DATA t2684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2684.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2683 p1 = t2684 ).
            ENDIF.
            DATA(t2685) = |title|.
            DATA t2686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2686.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2685 p1 = t2686 ).
            ENDIF.
            DATA(t2687) = |shortDescription|.
            DATA t2688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2688.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2687 p1 = t2688 ).
            ENDIF.
            DATA(t2689) = |tags|.
            DATA t2690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2690.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2689 p1 = t2690 ).
            ENDIF.
            DATA(t2691) = |extendedInformation|.
            DATA t2692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2692.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2691 p1 = t2692 ).
            ENDIF.
            DATA(t2693) = |badExample|.
            DATA t2694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2694.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2693 p1 = t2694 ).
            ENDIF.
            t2637 = t2638->key.
            DATA t2695 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2695.
            DATA(t2696) = me->conf.
            t2695 = t2696->zlnt_view_read_sr_15c06369f827( ).
            DATA t2697 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t2697.
            DATA t2698 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t2698.
            t2633 = zcl_lnt_issue=>at_statement( i_file = t2634 i_statement = t2635 i_message_26cb = t2636 i_key = t2637 i_severity = t2695 i_fix = t2697 i_alternative_fixes = t2698 ).
            t2632 = t2633.
            DATA(t2699) = t2.
            DATA(t2700) = t2632.
            t2699->load( ).
            APPEND t2700 TO t2699->items.
            t2699->save( ).
          ENDIF.
        ELSE.
          DATA t2701 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t2701.
          DATA t2702 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t2702.
          DATA(t2703) = t17.
          DATA(t2704) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
          t2702 = t2703->find_first_expression( i_type_9913 = t2704 ).
          t2701 = t2702.
          DATA t2705 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t2705.
          DATA t2706 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t2706.
          DATA(t2707) = t17.
          DATA(t2708) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
          t2706 = t2707->find_first_expression( i_type_9913 = t2708 ).
          t2705 = t2706.
          DATA(t2709) = VALUE abap_bool( ).
          DATA(t2710) = VALUE abap_bool( ).
          DATA(t2711) = t2701.
          t2710 = xsdbool( t2711 IS BOUND ).
          t2709 = t2710.
          IF t2710 = abap_true.
            DATA(t2712) = VALUE abap_bool( ).
            DATA(t2713) = t2705.
            t2712 = xsdbool( t2713 IS BOUND ).
            t2709 = t2712.
          ENDIF.
          IF t2709 = abap_true.
            DATA(t2714) = VALUE string( ).
            DATA(t2715) = VALUE string( ).
            DATA t2716 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t2716.
            DATA(t2717) = t2701.
            t2716 = t2717.
            t2715 = t2716->concat_tokens( ).
            t2714 = t2715.
            DATA(t2718) = VALUE string( ).
            DATA(t2719) = VALUE string( ).
            DATA t2720 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t2720.
            DATA(t2721) = t2705.
            t2720 = t2721.
            t2719 = t2720->concat_tokens( ).
            t2718 = t2719.
            DATA(t2722) = VALUE abap_bool( ).
            DATA(t2723) = t2714.
            DATA(t2724) = |cl_abap_regex|.
            t2722 = xsdbool( t2723 = t2724 ).
            IF t2722 = abap_true.
              DATA(t2725) = VALUE abap_bool( ).
              DATA(t2726) = t2718.
              DATA(t2727) = |create_posix|.
              t2725 = xsdbool( t2726 = t2727 ).
              IF t2725 = abap_true.
                DATA t2728 TYPE REF TO zcl_lnt_issue.
                CLEAR t2728.
                DATA t2729 TYPE REF TO zcl_lnt_issue.
                CLEAR t2729.
                DATA(t2730) = t1.
                DATA(t2731) = t17.
                DATA(t2732) = |create_posix obsolete, use create_pcre|.
                DATA(t2733) = VALUE string( ).
                DATA t2734 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t2734.
                DATA(t2735) = VALUE string( ).
                DATA(t2736) = |obsolete_statement|.
                t2735 = t2736.
                DATA(t2737) = VALUE string( ).
                DATA(t2738) = |Obsolete statements|.
                t2737 = t2738.
                DATA(t2739) = VALUE string( ).
                DATA(t2740) = |Checks for usages of certain obsolete statements|.
                t2739 = t2740.
                DATA t2741 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t2741.
                DATA t2742 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t2742.
                DATA(t2743) = abap_true.
                IF t2743 = abap_true.
                  DATA t2744 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t2744.
                  DATA t2745 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t2745.
                  DATA t2746 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t2746.
                  CREATE OBJECT t2746.
                  t2745 = t2746.
                  DATA(t2747) = t2745.
                  DATA(t2748) = |SingleFile|.
                  t2747->load( ).
                  APPEND t2748 TO t2747->items.
                  t2747->save( ).
                  DATA(t2749) = t2745.
                  DATA(t2750) = |Styleguide|.
                  t2749->load( ).
                  APPEND t2750 TO t2749->items.
                  t2749->save( ).
                  DATA(t2751) = t2745.
                  DATA(t2752) = |Quickfix|.
                  t2751->load( ).
                  APPEND t2752 TO t2751->items.
                  t2751->save( ).
                  DATA(t2753) = t2745.
                  t2744 = t2753.
                  t2742 = t2744.
                ELSE.
                  DATA t2754 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t2754.
                  t2742 = t2754.
                ENDIF.
                t2741 = t2742.
                DATA t2755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2755.
                DATA t2756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2756.
                DATA(t2757) = abap_true.
                IF t2757 = abap_true.
                  DATA(t2758) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
                  t2758 = t2758 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
                  t2758 = t2758 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
                  t2758 = t2758 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
                  t2758 = t2758 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
                  t2758 = t2758 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
                  t2758 = t2758 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
                  t2758 = t2758 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
                  t2758 = t2758 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
                  t2758 = t2758 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
                  t2758 = t2758 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
                  t2758 = t2758 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
                  t2758 = t2758 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
                  t2758 = t2758 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
                  t2758 = t2758 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
                  t2758 = t2758 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
                  t2758 = t2758 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
                  t2758 = t2758 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
                  t2758 = t2758 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
                  t2758 = t2758 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
                  t2758 = t2758 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
                  t2758 = t2758 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
                  t2758 = t2758 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
                  t2758 = t2758 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
                  t2758 = t2758 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
                  t2758 = t2758 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
                  t2758 = t2758 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
                  t2758 = t2758 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
                  t2758 = t2758 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
                  t2758 = t2758 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
                  t2758 = t2758 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
                  t2758 = t2758 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
                  t2758 = t2758 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
                  t2758 = t2758 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
                  t2758 = t2758 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
                  t2758 = t2758 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
                  t2758 = t2758 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
                  t2758 = t2758 && |ect_client_obsolete.html|.
                  DATA(t2759) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t2759->has = abap_true.
                  t2759->value = t2758.
                  t2756 = t2759.
                ELSE.
                  DATA t2760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2760.
                  t2756 = t2760.
                ENDIF.
                t2755 = t2756.
                DATA t2761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2761.
                DATA t2762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2762.
                DATA(t2763) = abap_true.
                IF t2763 = abap_true.
                  DATA(t2764) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
                  t2764 = t2764 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
                  DATA(t2765) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t2765->has = abap_true.
                  t2765->value = t2764.
                  t2762 = t2765.
                ELSE.
                  DATA t2766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2766.
                  t2762 = t2766.
                ENDIF.
                t2761 = t2762.
                DATA t2767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2767.
                DATA t2768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2768.
                t2767 = t2768.
                DATA t2769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2769.
                DATA t2770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2770.
                t2769 = t2770.
                DATA t2771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2771.
                DATA t2772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2772.
                t2771 = t2772.
                t2734 = NEW zcl_lnt_irule_metadata( i_key = t2735 i_title = t2737 i_short_description = t2739 i_bad_example = t2761 i_good_example = t2767 i_extended_information = t2755 i_tags = t2741 i_pragma = t2769 i_pseudo_comment = t2771 ).
                CREATE OBJECT t2734->zlnt_view_ownkeys_b0e8086400eb.
                t2734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t2773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2773.
                IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2773 ).
                ENDIF.
                DATA t2774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2774.
                IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2774 ).
                ENDIF.
                DATA t2775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2775.
                IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2775 ).
                ENDIF.
                DATA t2776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2776.
                IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2776 ).
                ENDIF.
                DATA t2777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2777.
                IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2777 ).
                ENDIF.
                DATA t2778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2778.
                IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2778 ).
                ENDIF.
                CREATE OBJECT t2734->zlnt_json_ownkeys_70e5fd461788.
                t2734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t2779) = |key|.
                DATA t2780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2780.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2779 p1 = t2780 ).
                ENDIF.
                DATA(t2781) = |title|.
                DATA t2782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2782.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2781 p1 = t2782 ).
                ENDIF.
                DATA(t2783) = |shortDescription|.
                DATA t2784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2784.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2783 p1 = t2784 ).
                ENDIF.
                DATA(t2785) = |tags|.
                DATA t2786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2786.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2785 p1 = t2786 ).
                ENDIF.
                DATA(t2787) = |extendedInformation|.
                DATA t2788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2788.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2787 p1 = t2788 ).
                ENDIF.
                DATA(t2789) = |badExample|.
                DATA t2790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2790.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2789 p1 = t2790 ).
                ENDIF.
                t2733 = t2734->key.
                DATA t2791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2791.
                DATA(t2792) = me->conf.
                t2791 = t2792->zlnt_view_read_sr_15c06369f827( ).
                DATA t2793 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t2793.
                DATA t2794 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t2794.
                t2729 = zcl_lnt_issue=>at_statement( i_file = t2730 i_statement = t2731 i_message_26cb = t2732 i_key = t2733 i_severity = t2791 i_fix = t2793 i_alternative_fixes = t2794 ).
                t2728 = t2729.
                DATA(t2795) = t2.
                DATA(t2796) = t2728.
                t2795->load( ).
                APPEND t2796 TO t2795->items.
                t2795->save( ).
              ENDIF.
            ELSE.
              DATA(t2797) = VALUE abap_bool( ).
              DATA(t2798) = t2714.
              DATA(t2799) = |cl_abap_matcher|.
              t2797 = xsdbool( t2798 = t2799 ).
              IF t2797 = abap_true.
                DATA(t2800) = VALUE abap_bool( ).
                DATA(t2801) = VALUE i( ).
                DATA(t2802) = t2718.
                DATA(t2803) = |posix|.
                DATA(t2804) = strlen( t2802 ).
                IF t2803 IS INITIAL.
                  t2801 = 0.
                ELSE.
                  FIND t2803 IN t2802 MATCH OFFSET t2801.
                  IF sy-subrc <> 0.
                    t2801 = -1.
                  ENDIF.
                ENDIF.
                DATA(t2805) = 0.
                t2800 = xsdbool( t2801 >= t2805 ).
                IF t2800 = abap_true.
                  DATA t2806 TYPE REF TO zcl_lnt_issue.
                  CLEAR t2806.
                  DATA t2807 TYPE REF TO zcl_lnt_issue.
                  CLEAR t2807.
                  DATA(t2808) = t1.
                  DATA(t2809) = t17.
                  DATA(t2810) = |posix methods obsolete, use pcre methods|.
                  DATA(t2811) = VALUE string( ).
                  DATA t2812 TYPE REF TO zcl_lnt_irule_metadata.
                  CLEAR t2812.
                  DATA(t2813) = VALUE string( ).
                  DATA(t2814) = |obsolete_statement|.
                  t2813 = t2814.
                  DATA(t2815) = VALUE string( ).
                  DATA(t2816) = |Obsolete statements|.
                  t2815 = t2816.
                  DATA(t2817) = VALUE string( ).
                  DATA(t2818) = |Checks for usages of certain obsolete statements|.
                  t2817 = t2818.
                  DATA t2819 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t2819.
                  DATA t2820 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t2820.
                  DATA(t2821) = abap_true.
                  IF t2821 = abap_true.
                    DATA t2822 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t2822.
                    DATA t2823 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t2823.
                    DATA t2824 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t2824.
                    CREATE OBJECT t2824.
                    t2823 = t2824.
                    DATA(t2825) = t2823.
                    DATA(t2826) = |SingleFile|.
                    t2825->load( ).
                    APPEND t2826 TO t2825->items.
                    t2825->save( ).
                    DATA(t2827) = t2823.
                    DATA(t2828) = |Styleguide|.
                    t2827->load( ).
                    APPEND t2828 TO t2827->items.
                    t2827->save( ).
                    DATA(t2829) = t2823.
                    DATA(t2830) = |Quickfix|.
                    t2829->load( ).
                    APPEND t2830 TO t2829->items.
                    t2829->save( ).
                    DATA(t2831) = t2823.
                    t2822 = t2831.
                    t2820 = t2822.
                  ELSE.
                    DATA t2832 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t2832.
                    t2820 = t2832.
                  ENDIF.
                  t2819 = t2820.
                  DATA t2833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2833.
                  DATA t2834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2834.
                  DATA(t2835) = abap_true.
                  IF t2835 = abap_true.
                    DATA(t2836) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
                    t2836 = t2836 && |anABAP.md#prefer-functional-to-procedural-language-construct|.
                    t2836 = t2836 && |s\n\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/C|.
                    t2836 = t2836 && |leanABAP.md#avoid-obsolete-language-elements\n\nSET EXTENDED C|.
                    t2836 = t2836 && |HECK: https://help.sap.com/doc/abapdocu_latest_index_htm/lat|.
                    t2836 = t2836 && |est/en-us/abapset_extended_check.html\n\nIS REQUESTED: https:/|.
                    t2836 = t2836 && |/help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abe|.
                    t2836 = t2836 && |nlogexp_requested.html\n\nWITH HEADER LINE: https://help.sap.c|.
                    t2836 = t2836 && |om/doc/abapdocu_latest_index_htm/latest/en-US/abapdata_heade|.
                    t2836 = t2836 && |r_line.html\n\nFIELD-SYMBOLS STRUCTURE: https://help.sap.com/d|.
                    t2836 = t2836 && |oc/abapdocu_latest_index_htm/latest/en-us/abapfield-symbols_|.
                    t2836 = t2836 && |obsolete_typing.html\n\nTYPE-POOLS: from 702, https://help.sap|.
                    t2836 = t2836 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
                    t2836 = t2836 && |program_load.html\n\nLOAD addition: from 702, https://help.sap|.
                    t2836 = t2836 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abennews-71-|.
                    t2836 = t2836 && |program_load.html\n\nCOMMUICATION: https://help.sap.com/doc/ab|.
                    t2836 = t2836 && |apdocu_latest_index_htm/latest/en-us/abapcommunication.html\n|.
                    t2836 = t2836 && |\nOCCURS: https://help.sap.com/doc/abapdocu_latest_index_htm/|.
                    t2836 = t2836 && |latest/en-us/abapdata_occurs.html\n\nPARAMETER: https://help.s|.
                    t2836 = t2836 && |ap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapparame|.
                    t2836 = t2836 && |ter.html\n\nRANGES: https://help.sap.com/doc/abapdocu_latest_i|.
                    t2836 = t2836 && |ndex_htm/latest/en-US/abapranges.html\n\nPACK: https://help.sa|.
                    t2836 = t2836 && |p.com/doc/abapdocu_latest_index_htm/latest/en-us/abappack.ht|.
                    t2836 = t2836 && |ml\n\nMOVE: https://help.sap.com/doc/abapdocu_latest_index_htm|.
                    t2836 = t2836 && |/latest/en-us/abapmove_obs.html\n\nSELECT without INTO: https:|.
                    t2836 = t2836 && |//help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/ab|.
                    t2836 = t2836 && |apselect_obsolete.html\nSELECT COUNT(*) is considered okay\n\nF|.
                    t2836 = t2836 && |REE MEMORY: https://help.sap.com/doc/abapdocu_latest_index_h|.
                    t2836 = t2836 && |tm/latest/en-us/abapfree_mem_id_obsolete.html\n\nSORT BY FS: h|.
                    t2836 = t2836 && |ttps://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-|.
                    t2836 = t2836 && |US/abapsort_itab_obsolete.html\n\nCALL TRANSFORMATION OBJECTS:|.
                    t2836 = t2836 && | https://help.sap.com/doc/abapdocu_latest_index_htm/latest/e|.
                    t2836 = t2836 && |n-US/abapcall_transformation_objects.html\n\nPOSIX REGEX: http|.
                    t2836 = t2836 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
                    t2836 = t2836 && |ABENREGEX_MIGRATING_POSIX.html\n\nOCCURENCES: check for OCCURE|.
                    t2836 = t2836 && |NCES vs OCCURRENCES\n\nCLIENT SPECIFIED, from 754: https://hel|.
                    t2836 = t2836 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abapsel|.
                    t2836 = t2836 && |ect_client_obsolete.html|.
                    DATA(t2837) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t2837->has = abap_true.
                    t2837->value = t2836.
                    t2834 = t2837.
                  ELSE.
                    DATA t2838 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t2838.
                    t2834 = t2838.
                  ENDIF.
                  t2833 = t2834.
                  DATA t2839 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2839.
                  DATA t2840 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2840.
                  DATA(t2841) = abap_true.
                  IF t2841 = abap_true.
                    DATA(t2842) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
                    t2842 = t2842 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
                    DATA(t2843) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t2843->has = abap_true.
                    t2843->value = t2842.
                    t2840 = t2843.
                  ELSE.
                    DATA t2844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t2844.
                    t2840 = t2844.
                  ENDIF.
                  t2839 = t2840.
                  DATA t2845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2845.
                  DATA t2846 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2846.
                  t2845 = t2846.
                  DATA t2847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2847.
                  DATA t2848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2848.
                  t2847 = t2848.
                  DATA t2849 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2849.
                  DATA t2850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2850.
                  t2849 = t2850.
                  t2812 = NEW zcl_lnt_irule_metadata( i_key = t2813 i_title = t2815 i_short_description = t2817 i_bad_example = t2839 i_good_example = t2845 i_extended_information = t2833 i_tags = t2819 i_pragma = t2847 i_pseudo_comment = t2849 ).
                  CREATE OBJECT t2812->zlnt_view_ownkeys_b0e8086400eb.
                  t2812->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t2851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2851.
                  IF t2812->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t2812->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2851 ).
                  ENDIF.
                  DATA t2852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2852.
                  IF t2812->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t2812->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t2852 ).
                  ENDIF.
                  DATA t2853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2853.
                  IF t2812->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t2812->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t2853 ).
                  ENDIF.
                  DATA t2854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2854.
                  IF t2812->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t2812->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t2854 ).
                  ENDIF.
                  DATA t2855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2855.
                  IF t2812->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t2812->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t2855 ).
                  ENDIF.
                  DATA t2856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2856.
                  IF t2812->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t2812->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t2856 ).
                  ENDIF.
                  CREATE OBJECT t2812->zlnt_json_ownkeys_70e5fd461788.
                  t2812->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t2857) = |key|.
                  DATA t2858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2858.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2857 p1 = t2858 ).
                  ENDIF.
                  DATA(t2859) = |title|.
                  DATA t2860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2860.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2859 p1 = t2860 ).
                  ENDIF.
                  DATA(t2861) = |shortDescription|.
                  DATA t2862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2862.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2861 p1 = t2862 ).
                  ENDIF.
                  DATA(t2863) = |tags|.
                  DATA t2864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2864.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2863 p1 = t2864 ).
                  ENDIF.
                  DATA(t2865) = |extendedInformation|.
                  DATA t2866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2866.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2865 p1 = t2866 ).
                  ENDIF.
                  DATA(t2867) = |badExample|.
                  DATA t2868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2868.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2867 p1 = t2868 ).
                  ENDIF.
                  t2811 = t2812->key.
                  DATA t2869 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2869.
                  DATA(t2870) = me->conf.
                  t2869 = t2870->zlnt_view_read_sr_15c06369f827( ).
                  DATA t2871 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t2871.
                  DATA t2872 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t2872.
                  t2807 = zcl_lnt_issue=>at_statement( i_file = t2808 i_statement = t2809 i_message_26cb = t2810 i_key = t2811 i_severity = t2869 i_fix = t2871 i_alternative_fixes = t2872 ).
                  t2806 = t2807.
                  DATA(t2873) = t2.
                  DATA(t2874) = t2806.
                  t2873->load( ).
                  APPEND t2874 TO t2873->items.
                  t2873->save( ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t2875) = t2.
    result = t2875.

  ENDMETHOD.

  METHOD get_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_statement_node.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t2.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_refresh ).
    IF t4 = abap_true.
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = VALUE i( ).
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t10.
      DATA(t11) = t3.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t12.
      DATA(t13) = t10.
      t12 = t13->children.
      t9 = t12.
      t8 ?= t9.
      t8->load( ).
      t7 = lines( t8->items ).
      DATA(t14) = 6.
      t6 = xsdbool( t7 = t14 ).
      IF t6 = abap_true.
        DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t15.
        result = t15.
        RETURN.
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t18.
        DATA(t19) = t1.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t20.
        DATA(t21) = t3.
        t20 = t21->get_first_token( ).
        DATA(t22) = |CLEAR|.
        t18 = zcl_lnt_edit_helper=>replace_token( i_file = t19 i_token = t20 i_text = t22 ).
        t16 = t18.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t23.
        t16 = t23.
      ENDIF.
      result = t16.
      RETURN.
    ELSE.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t2.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_compute ).
      IF t24 = abap_true.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t26.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t27.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_abstract_node.
        CLEAR t29.
        DATA(t30) = t3.
        t29 = t30.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t31.
        DATA(t32) = t29.
        t31 = t32->children.
        t28 = t31.
        t27 ?= t28.
        t26 = t27.
        DATA(t33) = VALUE abap_bool( ).
        DATA(t34) = VALUE i( ).
        DATA(t35) = t26.
        t35->load( ).
        t34 = lines( t35->items ).
        DATA(t36) = 5.
        t33 = xsdbool( t34 = t36 ).
        IF t33 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t37.
          DATA t38 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t38.
          DATA(t39) = t3.
          t38 = t39->get_first_token( ).
          t37 = t38.
          DATA t40 TYPE REF TO zcl_lnt_position.
          CLEAR t40.
          DATA t41 TYPE REF TO zcl_lnt_position.
          CLEAR t41.
          DATA t42 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t42.
          DATA(t43) = t37.
          t42 = t43.
          DATA t44 TYPE REF TO zcl_lnt_position.
          CLEAR t44.
          DATA(t45) = VALUE f( ).
          DATA t46 TYPE REF TO zcl_lnt_position.
          CLEAR t46.
          DATA t47 TYPE REF TO zcl_lnt_position.
          CLEAR t47.
          DATA(t48) = t42.
          t47 = t48->start.
          t46 = t47.
          DATA(t49) = VALUE f( ).
          DATA(t50) = t46.
          t49 = t50->row.
          t45 = t49.
          DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t51.
          DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t52.
          DATA t53 TYPE REF TO zcl_lnt_position.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_position.
          CLEAR t54.
          DATA(t55) = t42.
          t54 = t55->start.
          t53 = t54.
          DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t56.
          DATA(t57) = t53.
          t56 = t57->col.
          t52 = t56.
          DATA(t58) = VALUE f( ).
          DATA(t59) = VALUE i( ).
          DATA(t60) = VALUE string( ).
          DATA(t61) = t42.
          t60 = t61->str.
          DATA(t62) = strlen( t60 ).
          t59 = t62.
          t58 = t59.
          DATA(t63) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t63->has = abap_true.
          t63->value = t58.
          t51 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t52 right = t63 op = `+` ).
          t44 = NEW zcl_lnt_position( i_row = t45 i_col = t51 ).
          t41 = t44.
          t40 = t41.
          DATA t64 TYPE REF TO zcl_lnt_position.
          CLEAR t64.
          DATA(t65) = VALUE f( ).
          DATA t66 TYPE REF TO zcl_lnt_position.
          CLEAR t66.
          DATA(t67) = t40.
          t66 = t67.
          DATA(t68) = VALUE f( ).
          DATA(t69) = t66.
          t68 = t69->row.
          t65 = t68.
          DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t70.
          DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_position.
          CLEAR t72.
          DATA(t73) = t40.
          t72 = t73.
          DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t74.
          DATA(t75) = t72.
          t74 = t75->col.
          t71 = t74.
          DATA(t76) = CONV f( 1 ).
          DATA(t77) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t77->has = abap_true.
          t77->value = t76.
          t70 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t71 right = t77 op = `+` ).
          t64 = NEW zcl_lnt_position( i_row = t65 i_col = t70 ).
          t40 = t64.
          DATA t78 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t78.
          DATA(t79) = abap_true.
          IF t79 = abap_true.
            DATA t80 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t80.
            DATA(t81) = t1.
            DATA t82 TYPE REF TO zcl_lnt_position.
            CLEAR t82.
            DATA t83 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t83.
            DATA(t84) = t37.
            t83 = t84.
            DATA t85 TYPE REF TO zcl_lnt_position.
            CLEAR t85.
            DATA(t86) = t83.
            t85 = t86->start.
            t82 = t85.
            DATA(t87) = t40.
            t80 = zcl_lnt_edit_helper=>delete_range( i_file = t81 i_start = t82 i_end = t87 ).
            t78 = t80.
          ELSE.
            DATA t88 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t88.
            t78 = t88.
          ENDIF.
          result = t78.
          RETURN.
        ELSE.
          DATA(t89) = VALUE string( ).
          DATA(t90) = VALUE string( ).
          DATA t91 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t91.
          DATA(t92) = t26.
          DATA t93 TYPE REF TO object.
          CLEAR t93.
          t92->load( ).
          CLEAR t93.
          READ TABLE t92->items INDEX 3 INTO t93.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          CLEAR t91.
          IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t94 ?= t93.
            DATA t95 TYPE REF TO object.
            CLEAR t95.
            t95 = t94->as_ref( ).
            t91 ?= t95.
          ELSE.
            t91 ?= t93.
          ENDIF.
          t90 = t91->concat_tokens( ).
          t89 = t90.
          DATA(t96) = VALUE string( ).
          DATA(t97) = VALUE string( ).
          DATA t98 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t98.
          DATA(t99) = t26.
          DATA t100 TYPE REF TO object.
          CLEAR t100.
          t99->load( ).
          CLEAR t100.
          READ TABLE t99->items INDEX 5 INTO t100.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          CLEAR t98.
          IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t101 ?= t100.
            DATA t102 TYPE REF TO object.
            CLEAR t102.
            t102 = t101->as_ref( ).
            t98 ?= t102.
          ELSE.
            t98 ?= t100.
          ENDIF.
          t97 = t98->concat_tokens( ).
          t96 = t97.
          DATA(t103) = VALUE string( ).
          DATA(t104) = VALUE string( ).
          DATA(t105) = VALUE string( ).
          DATA(t106) = VALUE string( ).
          DATA(t107) = t89.
          DATA(t108) = | = EXACT #( |.
          DATA(t109) = strlen( t107 ).
          t106 = |{ t107 }{ t108 }|.
          DATA(t110) = t96.
          DATA(t111) = strlen( t106 ).
          t105 = |{ t106 }{ t110 }|.
          DATA(t112) = | ).|.
          DATA(t113) = strlen( t105 ).
          t104 = |{ t105 }{ t112 }|.
          t103 = t104.
          DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t114.
          DATA(t115) = abap_true.
          IF t115 = abap_true.
            DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t116.
            DATA(t117) = t1.
            DATA t118 TYPE REF TO zcl_lnt_position.
            CLEAR t118.
            DATA t119 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t119.
            DATA(t120) = t3.
            t119 = t120.
            DATA t121 TYPE REF TO zcl_lnt_position.
            CLEAR t121.
            DATA t122 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t122.
            DATA t123 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t123.
            DATA(t124) = t119.
            t123 = t124->get_first_token( ).
            t122 = t123.
            DATA t125 TYPE REF TO zcl_lnt_position.
            CLEAR t125.
            DATA(t126) = t122.
            t125 = t126->start.
            t121 = t125.
            t118 = t121.
            DATA t127 TYPE REF TO zcl_lnt_position.
            CLEAR t127.
            DATA t128 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t128.
            DATA(t129) = t3.
            t128 = t129.
            DATA t130 TYPE REF TO zcl_lnt_position.
            CLEAR t130.
            DATA t131 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t131.
            DATA t132 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t132.
            DATA(t133) = t128.
            t132 = t133->get_last_token( ).
            t131 = t132.
            DATA t134 TYPE REF TO zcl_lnt_position.
            CLEAR t134.
            DATA t135 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t135.
            DATA(t136) = t131.
            t135 = t136.
            DATA t137 TYPE REF TO zcl_lnt_position.
            CLEAR t137.
            DATA(t138) = VALUE f( ).
            DATA t139 TYPE REF TO zcl_lnt_position.
            CLEAR t139.
            DATA t140 TYPE REF TO zcl_lnt_position.
            CLEAR t140.
            DATA(t141) = t135.
            t140 = t141->start.
            t139 = t140.
            DATA(t142) = VALUE f( ).
            DATA(t143) = t139.
            t142 = t143->row.
            t138 = t142.
            DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t144.
            DATA t145 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t145.
            DATA t146 TYPE REF TO zcl_lnt_position.
            CLEAR t146.
            DATA t147 TYPE REF TO zcl_lnt_position.
            CLEAR t147.
            DATA(t148) = t135.
            t147 = t148->start.
            t146 = t147.
            DATA t149 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t149.
            DATA(t150) = t146.
            t149 = t150->col.
            t145 = t149.
            DATA(t151) = VALUE f( ).
            DATA(t152) = VALUE i( ).
            DATA(t153) = VALUE string( ).
            DATA(t154) = t135.
            t153 = t154->str.
            DATA(t155) = strlen( t153 ).
            t152 = t155.
            t151 = t152.
            DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t156->has = abap_true.
            t156->value = t151.
            t144 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t145 right = t156 op = `+` ).
            t137 = NEW zcl_lnt_position( i_row = t138 i_col = t144 ).
            t134 = t137.
            t130 = t134.
            t127 = t130.
            DATA(t157) = t103.
            t116 = zcl_lnt_edit_helper=>replace_range( i_file = t117 i_start = t118 i_end = t127 i_text = t157 ).
            t114 = t116.
          ELSE.
            DATA t158 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t158.
            t114 = t158.
          ENDIF.
          result = t114.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t159) = VALUE abap_bool( ).
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = t2.
        t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_st_add ).
        t159 = t160.
        IF t160 = abap_false.
          DATA(t162) = VALUE abap_bool( ).
          DATA(t163) = t2.
          t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_st_subtract ).
          t159 = t162.
        ENDIF.
        IF t159 = abap_true.
          DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t165.
          DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t166.
          DATA t167 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t167.
          DATA(t168) = t3.
          t167 = t168.
          DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t169.
          DATA(t170) = t167.
          t169 = t170->children.
          t166 = t169.
          t165 ?= t166.
          t164 = t165.
          DATA(t171) = VALUE string( ).
          DATA(t172) = VALUE string( ).
          DATA t173 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t173.
          DATA(t174) = t164.
          DATA t175 TYPE REF TO object.
          CLEAR t175.
          t174->load( ).
          CLEAR t175.
          READ TABLE t174->items INDEX 2 INTO t175.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          CLEAR t173.
          IF t175 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t176 ?= t175.
            DATA t177 TYPE REF TO object.
            CLEAR t177.
            t177 = t176->as_ref( ).
            t173 ?= t177.
          ELSE.
            t173 ?= t175.
          ENDIF.
          t172 = t173->concat_tokens( ).
          t171 = t172.
          DATA(t178) = VALUE string( ).
          DATA(t179) = VALUE string( ).
          DATA t180 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t180.
          DATA(t181) = t164.
          DATA t182 TYPE REF TO object.
          CLEAR t182.
          t181->load( ).
          CLEAR t182.
          READ TABLE t181->items INDEX 4 INTO t182.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          CLEAR t180.
          IF t182 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t183 ?= t182.
            DATA t184 TYPE REF TO object.
            CLEAR t184.
            t184 = t183->as_ref( ).
            t180 ?= t184.
          ELSE.
            t180 ?= t182.
          ENDIF.
          t179 = t180->concat_tokens( ).
          t178 = t179.
          DATA(t185) = VALUE string( ).
          DATA(t186) = ||.
          t185 = t186.
          DATA(t187) = VALUE abap_bool( ).
          DATA(t188) = t2.
          t187 = xsdbool( t188 IS BOUND AND t188 IS INSTANCE OF zcl_lnt_st_add ).
          IF t187 = abap_true.
            DATA(t189) = VALUE string( ).
            DATA(t190) = VALUE string( ).
            DATA(t191) = VALUE string( ).
            DATA(t192) = VALUE string( ).
            DATA(t193) = VALUE string( ).
            DATA(t194) = t178.
            DATA(t195) = | = |.
            DATA(t196) = strlen( t194 ).
            t193 = |{ t194 }{ t195 }|.
            DATA(t197) = t178.
            DATA(t198) = strlen( t193 ).
            t192 = |{ t193 }{ t197 }|.
            DATA(t199) = | + |.
            DATA(t200) = strlen( t192 ).
            t191 = |{ t192 }{ t199 }|.
            DATA(t201) = t171.
            DATA(t202) = strlen( t191 ).
            t190 = |{ t191 }{ t201 }|.
            DATA(t203) = |.|.
            DATA(t204) = strlen( t190 ).
            t189 = |{ t190 }{ t203 }|.
            t185 = t189.
          ELSE.
            DATA(t205) = VALUE abap_bool( ).
            DATA(t206) = t2.
            t205 = xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_st_subtract ).
            IF t205 = abap_true.
              DATA(t207) = VALUE string( ).
              DATA(t208) = VALUE string( ).
              DATA(t209) = VALUE string( ).
              DATA(t210) = VALUE string( ).
              DATA(t211) = VALUE string( ).
              DATA(t212) = t178.
              DATA(t213) = | = |.
              DATA(t214) = strlen( t212 ).
              t211 = |{ t212 }{ t213 }|.
              DATA(t215) = t178.
              DATA(t216) = strlen( t211 ).
              t210 = |{ t211 }{ t215 }|.
              DATA(t217) = | - |.
              DATA(t218) = strlen( t210 ).
              t209 = |{ t210 }{ t217 }|.
              DATA(t219) = t171.
              DATA(t220) = strlen( t209 ).
              t208 = |{ t209 }{ t219 }|.
              DATA(t221) = |.|.
              DATA(t222) = strlen( t208 ).
              t207 = |{ t208 }{ t221 }|.
              t185 = t207.
            ENDIF.
          ENDIF.
          DATA t223 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t223.
          DATA(t224) = abap_true.
          IF t224 = abap_true.
            DATA t225 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t225.
            DATA(t226) = t1.
            DATA t227 TYPE REF TO zcl_lnt_position.
            CLEAR t227.
            DATA t228 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t228.
            DATA(t229) = t3.
            t228 = t229.
            DATA t230 TYPE REF TO zcl_lnt_position.
            CLEAR t230.
            DATA t231 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t231.
            DATA t232 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t232.
            DATA(t233) = t228.
            t232 = t233->get_first_token( ).
            t231 = t232.
            DATA t234 TYPE REF TO zcl_lnt_position.
            CLEAR t234.
            DATA(t235) = t231.
            t234 = t235->start.
            t230 = t234.
            t227 = t230.
            DATA t236 TYPE REF TO zcl_lnt_position.
            CLEAR t236.
            DATA t237 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t237.
            DATA(t238) = t3.
            t237 = t238.
            DATA t239 TYPE REF TO zcl_lnt_position.
            CLEAR t239.
            DATA t240 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t240.
            DATA t241 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t241.
            DATA(t242) = t237.
            t241 = t242->get_last_token( ).
            t240 = t241.
            DATA t243 TYPE REF TO zcl_lnt_position.
            CLEAR t243.
            DATA t244 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t244.
            DATA(t245) = t240.
            t244 = t245.
            DATA t246 TYPE REF TO zcl_lnt_position.
            CLEAR t246.
            DATA(t247) = VALUE f( ).
            DATA t248 TYPE REF TO zcl_lnt_position.
            CLEAR t248.
            DATA t249 TYPE REF TO zcl_lnt_position.
            CLEAR t249.
            DATA(t250) = t244.
            t249 = t250->start.
            t248 = t249.
            DATA(t251) = VALUE f( ).
            DATA(t252) = t248.
            t251 = t252->row.
            t247 = t251.
            DATA t253 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t253.
            DATA t254 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t254.
            DATA t255 TYPE REF TO zcl_lnt_position.
            CLEAR t255.
            DATA t256 TYPE REF TO zcl_lnt_position.
            CLEAR t256.
            DATA(t257) = t244.
            t256 = t257->start.
            t255 = t256.
            DATA t258 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t258.
            DATA(t259) = t255.
            t258 = t259->col.
            t254 = t258.
            DATA(t260) = VALUE f( ).
            DATA(t261) = VALUE i( ).
            DATA(t262) = VALUE string( ).
            DATA(t263) = t244.
            t262 = t263->str.
            DATA(t264) = strlen( t262 ).
            t261 = t264.
            t260 = t261.
            DATA(t265) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t265->has = abap_true.
            t265->value = t260.
            t253 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t254 right = t265 op = `+` ).
            t246 = NEW zcl_lnt_position( i_row = t247 i_col = t253 ).
            t243 = t246.
            t239 = t243.
            t236 = t239.
            DATA(t266) = t185.
            t225 = zcl_lnt_edit_helper=>replace_range( i_file = t226 i_start = t227 i_end = t236 i_text = t266 ).
            t223 = t225.
          ELSE.
            DATA t267 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t267.
            t223 = t267.
          ENDIF.
          result = t223.
          RETURN.
        ELSE.
          DATA(t268) = VALUE abap_bool( ).
          DATA(t269) = VALUE abap_bool( ).
          DATA(t270) = t2.
          t269 = xsdbool( t270 IS BOUND AND t270 IS INSTANCE OF zcl_lnt_st_multiply ).
          t268 = t269.
          IF t269 = abap_false.
            DATA(t271) = VALUE abap_bool( ).
            DATA(t272) = t2.
            t271 = xsdbool( t272 IS BOUND AND t272 IS INSTANCE OF zcl_lnt_st_divide ).
            t268 = t271.
          ENDIF.
          IF t268 = abap_true.
            DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t273.
            DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t274.
            DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t275.
            DATA t276 TYPE REF TO zcl_lnt_abstract_node.
            CLEAR t276.
            DATA(t277) = t3.
            t276 = t277.
            DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t278.
            DATA(t279) = t276.
            t278 = t279->children.
            t275 = t278.
            t274 ?= t275.
            t273 = t274.
            DATA(t280) = VALUE string( ).
            DATA(t281) = VALUE string( ).
            DATA t282 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t282.
            DATA(t283) = t273.
            DATA t284 TYPE REF TO object.
            CLEAR t284.
            t283->load( ).
            CLEAR t284.
            READ TABLE t283->items INDEX 2 INTO t284.
            DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t285.
            CLEAR t282.
            IF t284 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t285 ?= t284.
              DATA t286 TYPE REF TO object.
              CLEAR t286.
              t286 = t285->as_ref( ).
              t282 ?= t286.
            ELSE.
              t282 ?= t284.
            ENDIF.
            t281 = t282->concat_tokens( ).
            t280 = t281.
            DATA(t287) = VALUE string( ).
            DATA(t288) = VALUE string( ).
            DATA t289 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t289.
            DATA(t290) = t273.
            DATA t291 TYPE REF TO object.
            CLEAR t291.
            t290->load( ).
            CLEAR t291.
            READ TABLE t290->items INDEX 4 INTO t291.
            DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t292.
            CLEAR t289.
            IF t291 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t292 ?= t291.
              DATA t293 TYPE REF TO object.
              CLEAR t293.
              t293 = t292->as_ref( ).
              t289 ?= t293.
            ELSE.
              t289 ?= t291.
            ENDIF.
            t288 = t289->concat_tokens( ).
            t287 = t288.
            DATA(t294) = VALUE string( ).
            DATA(t295) = ||.
            t294 = t295.
            DATA(t296) = VALUE abap_bool( ).
            DATA(t297) = t2.
            t296 = xsdbool( t297 IS BOUND AND t297 IS INSTANCE OF zcl_lnt_st_multiply ).
            IF t296 = abap_true.
              DATA(t298) = VALUE string( ).
              DATA(t299) = VALUE string( ).
              DATA(t300) = VALUE string( ).
              DATA(t301) = VALUE string( ).
              DATA(t302) = VALUE string( ).
              DATA(t303) = t280.
              DATA(t304) = | = |.
              DATA(t305) = strlen( t303 ).
              t302 = |{ t303 }{ t304 }|.
              DATA(t306) = t280.
              DATA(t307) = strlen( t302 ).
              t301 = |{ t302 }{ t306 }|.
              DATA(t308) = | * |.
              DATA(t309) = strlen( t301 ).
              t300 = |{ t301 }{ t308 }|.
              DATA(t310) = t287.
              DATA(t311) = strlen( t300 ).
              t299 = |{ t300 }{ t310 }|.
              DATA(t312) = |.|.
              DATA(t313) = strlen( t299 ).
              t298 = |{ t299 }{ t312 }|.
              t294 = t298.
            ELSE.
              DATA(t314) = VALUE abap_bool( ).
              DATA(t315) = t2.
              t314 = xsdbool( t315 IS BOUND AND t315 IS INSTANCE OF zcl_lnt_st_divide ).
              IF t314 = abap_true.
                DATA(t316) = VALUE string( ).
                DATA(t317) = VALUE string( ).
                DATA(t318) = VALUE string( ).
                DATA(t319) = VALUE string( ).
                DATA(t320) = VALUE string( ).
                DATA(t321) = t280.
                DATA(t322) = | = |.
                DATA(t323) = strlen( t321 ).
                t320 = |{ t321 }{ t322 }|.
                DATA(t324) = t280.
                DATA(t325) = strlen( t320 ).
                t319 = |{ t320 }{ t324 }|.
                DATA(t326) = | / |.
                DATA(t327) = strlen( t319 ).
                t318 = |{ t319 }{ t326 }|.
                DATA(t328) = t287.
                DATA(t329) = strlen( t318 ).
                t317 = |{ t318 }{ t328 }|.
                DATA(t330) = |.|.
                DATA(t331) = strlen( t317 ).
                t316 = |{ t317 }{ t330 }|.
                t294 = t316.
              ENDIF.
            ENDIF.
            DATA t332 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t332.
            DATA(t333) = abap_true.
            IF t333 = abap_true.
              DATA t334 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t334.
              DATA(t335) = t1.
              DATA t336 TYPE REF TO zcl_lnt_position.
              CLEAR t336.
              DATA t337 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t337.
              DATA(t338) = t3.
              t337 = t338.
              DATA t339 TYPE REF TO zcl_lnt_position.
              CLEAR t339.
              DATA t340 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t340.
              DATA t341 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t341.
              DATA(t342) = t337.
              t341 = t342->get_first_token( ).
              t340 = t341.
              DATA t343 TYPE REF TO zcl_lnt_position.
              CLEAR t343.
              DATA(t344) = t340.
              t343 = t344->start.
              t339 = t343.
              t336 = t339.
              DATA t345 TYPE REF TO zcl_lnt_position.
              CLEAR t345.
              DATA t346 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t346.
              DATA(t347) = t3.
              t346 = t347.
              DATA t348 TYPE REF TO zcl_lnt_position.
              CLEAR t348.
              DATA t349 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t349.
              DATA t350 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t350.
              DATA(t351) = t346.
              t350 = t351->get_last_token( ).
              t349 = t350.
              DATA t352 TYPE REF TO zcl_lnt_position.
              CLEAR t352.
              DATA t353 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t353.
              DATA(t354) = t349.
              t353 = t354.
              DATA t355 TYPE REF TO zcl_lnt_position.
              CLEAR t355.
              DATA(t356) = VALUE f( ).
              DATA t357 TYPE REF TO zcl_lnt_position.
              CLEAR t357.
              DATA t358 TYPE REF TO zcl_lnt_position.
              CLEAR t358.
              DATA(t359) = t353.
              t358 = t359->start.
              t357 = t358.
              DATA(t360) = VALUE f( ).
              DATA(t361) = t357.
              t360 = t361->row.
              t356 = t360.
              DATA t362 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t362.
              DATA t363 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t363.
              DATA t364 TYPE REF TO zcl_lnt_position.
              CLEAR t364.
              DATA t365 TYPE REF TO zcl_lnt_position.
              CLEAR t365.
              DATA(t366) = t353.
              t365 = t366->start.
              t364 = t365.
              DATA t367 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t367.
              DATA(t368) = t364.
              t367 = t368->col.
              t363 = t367.
              DATA(t369) = VALUE f( ).
              DATA(t370) = VALUE i( ).
              DATA(t371) = VALUE string( ).
              DATA(t372) = t353.
              t371 = t372->str.
              DATA(t373) = strlen( t371 ).
              t370 = t373.
              t369 = t370.
              DATA(t374) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t374->has = abap_true.
              t374->value = t369.
              t362 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t363 right = t374 op = `+` ).
              t355 = NEW zcl_lnt_position( i_row = t356 i_col = t362 ).
              t352 = t355.
              t348 = t352.
              t345 = t348.
              DATA(t375) = t294.
              t334 = zcl_lnt_edit_helper=>replace_range( i_file = t335 i_start = t336 i_end = t345 i_text = t375 ).
              t332 = t334.
            ELSE.
              DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t376.
              t332 = t376.
            ENDIF.
            result = t332.
            RETURN.
          ELSE.
            DATA(t377) = VALUE abap_bool( ).
            DATA(t378) = t2.
            t377 = xsdbool( t378 IS BOUND AND t378 IS INSTANCE OF zcl_lnt_st_move ).
            IF t377 = abap_true.
              DATA(t379) = VALUE abap_bool( ).
              DATA t380 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t380.
              DATA t381 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t381.
              DATA t382 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t382.
              DATA(t383) = t3.
              t382 = t383.
              DATA t384 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t384.
              DATA(t385) = t382.
              t384 = t385->colon.
              t381 = t384.
              t380 = t381.
              DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t386.
              DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t387.
              t386 = t387.
              DATA(t388) = VALUE abap_bool( ).
              DATA(t389) = VALUE abap_bool( ).
              DATA(t390) = t380.
              IF t390 IS INITIAL.
                t389 = abap_true.
              ENDIF.
              t388 = xsdbool( t389 = abap_false ).
              t379 = t388.
              IF t379 = abap_true.
                DATA t391 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t391.
                result = t391.
                RETURN.
              ENDIF.
              DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t392.
              DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t393.
              DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t394.
              DATA t395 TYPE REF TO zcl_lnt_abstract_node.
              CLEAR t395.
              DATA(t396) = t3.
              t395 = t396.
              DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t397.
              DATA(t398) = t395.
              t397 = t398->children.
              t394 = t397.
              t393 ?= t394.
              t392 = t393.
              DATA(t399) = VALUE string( ).
              DATA(t400) = VALUE string( ).
              DATA t401 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t401.
              DATA(t402) = t392.
              DATA t403 TYPE REF TO object.
              CLEAR t403.
              t402->load( ).
              CLEAR t403.
              READ TABLE t402->items INDEX 2 INTO t403.
              DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t404.
              CLEAR t401.
              IF t403 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t404 ?= t403.
                DATA t405 TYPE REF TO object.
                CLEAR t405.
                t405 = t404->as_ref( ).
                t401 ?= t405.
              ELSE.
                t401 ?= t403.
              ENDIF.
              t400 = t401->concat_tokens( ).
              t399 = t400.
              DATA(t406) = VALUE string( ).
              DATA(t407) = VALUE string( ).
              DATA t408 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t408.
              DATA(t409) = t392.
              DATA t410 TYPE REF TO object.
              CLEAR t410.
              t409->load( ).
              CLEAR t410.
              READ TABLE t409->items INDEX 4 INTO t410.
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t411.
              CLEAR t408.
              IF t410 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t411 ?= t410.
                DATA t412 TYPE REF TO object.
                CLEAR t412.
                t412 = t411->as_ref( ).
                t408 ?= t412.
              ELSE.
                t408 ?= t410.
              ENDIF.
              t407 = t408->concat_tokens( ).
              t406 = t407.
              DATA(t413) = VALUE string( ).
              DATA(t414) = VALUE string( ).
              DATA(t415) = VALUE string( ).
              DATA t416 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t416.
              DATA(t417) = t392.
              DATA t418 TYPE REF TO object.
              CLEAR t418.
              t417->load( ).
              CLEAR t418.
              READ TABLE t417->items INDEX 3 INTO t418.
              DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t419.
              CLEAR t416.
              IF t418 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t419 ?= t418.
                DATA t420 TYPE REF TO object.
                CLEAR t420.
                t420 = t419->as_ref( ).
                t416 ?= t420.
              ELSE.
                t416 ?= t418.
              ENDIF.
              t415 = t416->concat_tokens( ).
              DATA(t421) = strlen( t415 ).
              t414 = t415.
              IF t414 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t414 TO UPPER CASE.
              ELSE.
                t414 = zlnt_runtime_uppe_91169605024d=>full( t414 ).
              ENDIF.
              t413 = t414.
              DATA(t422) = VALUE abap_bool( ).
              DATA(t423) = t413.
              DATA(t424) = |TO|.
              t422 = xsdbool( t423 = t424 ).
              IF t422 = abap_true.
                DATA(t425) = | = |.
                t413 = t425.
              ELSE.
                DATA(t426) = | ?= |.
                t413 = t426.
              ENDIF.
              DATA(t427) = VALUE string( ).
              DATA(t428) = VALUE string( ).
              DATA(t429) = VALUE string( ).
              DATA(t430) = VALUE string( ).
              DATA(t431) = t406.
              DATA(t432) = t413.
              DATA(t433) = strlen( t431 ).
              t430 = |{ t431 }{ t432 }|.
              DATA(t434) = t399.
              DATA(t435) = strlen( t430 ).
              t429 = |{ t430 }{ t434 }|.
              DATA(t436) = |.|.
              DATA(t437) = strlen( t429 ).
              t428 = |{ t429 }{ t436 }|.
              t427 = t428.
              DATA t438 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t438.
              DATA(t439) = abap_true.
              IF t439 = abap_true.
                DATA t440 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t440.
                DATA(t441) = t1.
                DATA t442 TYPE REF TO zcl_lnt_position.
                CLEAR t442.
                DATA t443 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t443.
                DATA(t444) = t3.
                t443 = t444.
                DATA t445 TYPE REF TO zcl_lnt_position.
                CLEAR t445.
                DATA t446 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t446.
                DATA t447 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t447.
                DATA(t448) = t443.
                t447 = t448->get_first_token( ).
                t446 = t447.
                DATA t449 TYPE REF TO zcl_lnt_position.
                CLEAR t449.
                DATA(t450) = t446.
                t449 = t450->start.
                t445 = t449.
                t442 = t445.
                DATA t451 TYPE REF TO zcl_lnt_position.
                CLEAR t451.
                DATA t452 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t452.
                DATA(t453) = t3.
                t452 = t453.
                DATA t454 TYPE REF TO zcl_lnt_position.
                CLEAR t454.
                DATA t455 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t455.
                DATA t456 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t456.
                DATA(t457) = t452.
                t456 = t457->get_last_token( ).
                t455 = t456.
                DATA t458 TYPE REF TO zcl_lnt_position.
                CLEAR t458.
                DATA t459 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t459.
                DATA(t460) = t455.
                t459 = t460.
                DATA t461 TYPE REF TO zcl_lnt_position.
                CLEAR t461.
                DATA(t462) = VALUE f( ).
                DATA t463 TYPE REF TO zcl_lnt_position.
                CLEAR t463.
                DATA t464 TYPE REF TO zcl_lnt_position.
                CLEAR t464.
                DATA(t465) = t459.
                t464 = t465->start.
                t463 = t464.
                DATA(t466) = VALUE f( ).
                DATA(t467) = t463.
                t466 = t467->row.
                t462 = t466.
                DATA t468 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t468.
                DATA t469 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t469.
                DATA t470 TYPE REF TO zcl_lnt_position.
                CLEAR t470.
                DATA t471 TYPE REF TO zcl_lnt_position.
                CLEAR t471.
                DATA(t472) = t459.
                t471 = t472->start.
                t470 = t471.
                DATA t473 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t473.
                DATA(t474) = t470.
                t473 = t474->col.
                t469 = t473.
                DATA(t475) = VALUE f( ).
                DATA(t476) = VALUE i( ).
                DATA(t477) = VALUE string( ).
                DATA(t478) = t459.
                t477 = t478->str.
                DATA(t479) = strlen( t477 ).
                t476 = t479.
                t475 = t476.
                DATA(t480) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t480->has = abap_true.
                t480->value = t475.
                t468 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t469 right = t480 op = `+` ).
                t461 = NEW zcl_lnt_position( i_row = t462 i_col = t468 ).
                t458 = t461.
                t454 = t458.
                t451 = t454.
                DATA(t481) = t427.
                t440 = zcl_lnt_edit_helper=>replace_range( i_file = t441 i_start = t442 i_end = t451 i_text = t481 ).
                t438 = t440.
              ELSE.
                DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t482.
                t438 = t482.
              ENDIF.
              result = t438.
              RETURN.
            ELSE.
              DATA(t483) = VALUE abap_bool( ).
              DATA(t484) = VALUE abap_bool( ).
              DATA(t485) = t2.
              t484 = xsdbool( t485 IS BOUND AND t485 IS INSTANCE OF zcl_lnt_class_definition_load ).
              t483 = t484.
              IF t484 = abap_false.
                DATA(t486) = VALUE abap_bool( ).
                DATA(t487) = t2.
                t486 = xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_interface_load ).
                t483 = t486.
              ENDIF.
              IF t483 = abap_true.
                DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t488.
                DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t489.
                t488 = t489.
                DATA(t490) = VALUE abap_bool( ).
                DATA(t491) = t2.
                t490 = xsdbool( t491 IS BOUND AND t491 IS INSTANCE OF zcl_lnt_class_definition_load ).
                IF t490 = abap_true.
                  DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t492.
                  DATA(t493) = abap_true.
                  IF t493 = abap_true.
                    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t494.
                    DATA t495 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t495.
                    DATA t496 TYPE REF TO zif_lnt_union_4cf1d054.
                    CLEAR t496.
                    DATA t497 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t497.
                    DATA t498 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t498.
                    DATA t499 TYPE REF TO zcl_lnt_abstract_node.
                    CLEAR t499.
                    DATA(t500) = t3.
                    t499 = t500.
                    DATA t501 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t501.
                    DATA(t502) = t499.
                    t501 = t502->children.
                    t498 = t501.
                    t497 ?= t498.
                    DATA t503 TYPE REF TO object.
                    CLEAR t503.
                    t497->load( ).
                    CLEAR t503.
                    READ TABLE t497->items INDEX 4 INTO t503.
                    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t504.
                    CLEAR t496.
                    IF t503 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                      t504 ?= t503.
                      DATA t505 TYPE REF TO object.
                      CLEAR t505.
                      t505 = t504->as_ref( ).
                      t496 ?= t505.
                    ELSE.
                      t496 ?= t503.
                    ENDIF.
                    t495 = t496->get_first_token( ).
                    CLEAR t494.
                    IF t495 IS BOUND.
                      DATA t506 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t506.
                      DATA t507 TYPE REF TO object.
                      CLEAR t507.
                      CLEAR t506.
                      t507 = t495.
                      TRY.
                          t494 ?= t507.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t494 IS NOT BOUND.
                        TRY.
                            t506 ?= t495.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                        IF t506 IS BOUND.
                          t494 = t506->source( ).
                        ENDIF.
                        IF t494 IS NOT BOUND.
                          CREATE OBJECT t494.
                          t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          t494->oval = t495.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                    t492 = t494.
                  ELSE.
                    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t508.
                    t492 = t508.
                  ENDIF.
                  t488 = t492.
                ELSE.
                  DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t509.
                  DATA(t510) = abap_true.
                  IF t510 = abap_true.
                    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t511.
                    DATA t512 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t512.
                    DATA t513 TYPE REF TO zif_lnt_union_4cf1d054.
                    CLEAR t513.
                    DATA t514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t514.
                    DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t515.
                    DATA t516 TYPE REF TO zcl_lnt_abstract_node.
                    CLEAR t516.
                    DATA(t517) = t3.
                    t516 = t517.
                    DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t518.
                    DATA(t519) = t516.
                    t518 = t519->children.
                    t515 = t518.
                    t514 ?= t515.
                    DATA t520 TYPE REF TO object.
                    CLEAR t520.
                    t514->load( ).
                    CLEAR t520.
                    READ TABLE t514->items INDEX 3 INTO t520.
                    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t521.
                    CLEAR t513.
                    IF t520 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                      t521 ?= t520.
                      DATA t522 TYPE REF TO object.
                      CLEAR t522.
                      t522 = t521->as_ref( ).
                      t513 ?= t522.
                    ELSE.
                      t513 ?= t520.
                    ENDIF.
                    t512 = t513->get_first_token( ).
                    CLEAR t511.
                    IF t512 IS BOUND.
                      DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t523.
                      DATA t524 TYPE REF TO object.
                      CLEAR t524.
                      CLEAR t523.
                      t524 = t512.
                      TRY.
                          t511 ?= t524.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t511 IS NOT BOUND.
                        TRY.
                            t523 ?= t512.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                        IF t523 IS BOUND.
                          t511 = t523->source( ).
                        ENDIF.
                        IF t511 IS NOT BOUND.
                          CREATE OBJECT t511.
                          t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          t511->oval = t512.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                    t509 = t511.
                  ELSE.
                    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t525.
                    t509 = t525.
                  ENDIF.
                  t488 = t509.
                ENDIF.
                DATA t526 TYPE REF TO zcl_lnt_position.
                CLEAR t526.
                DATA t527 TYPE REF TO zcl_lnt_position.
                CLEAR t527.
                DATA t528 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t528.
                DATA t529 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t529.
                DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t530.
                DATA(t531) = t488.
                t530 = t531.
                CLEAR t529.
                IF t530 IS BOUND.
                  IF t530->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    TRY.
                        t529 ?= t530->oval.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                  ENDIF.
                  IF t529 IS NOT BOUND.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                  ENDIF.
                ENDIF.
                t528 = t529.
                DATA t532 TYPE REF TO zcl_lnt_position.
                CLEAR t532.
                DATA(t533) = t528.
                t532 = t533->start.
                t527 = t532.
                t526 = t527.
                DATA t534 TYPE REF TO zcl_lnt_position.
                CLEAR t534.
                DATA(t535) = VALUE f( ).
                DATA t536 TYPE REF TO zcl_lnt_position.
                CLEAR t536.
                DATA(t537) = t526.
                t536 = t537.
                DATA(t538) = VALUE f( ).
                DATA(t539) = t536.
                t538 = t539->row.
                t535 = t538.
                DATA t540 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t540.
                DATA t541 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t541.
                DATA t542 TYPE REF TO zcl_lnt_position.
                CLEAR t542.
                DATA(t543) = t526.
                t542 = t543.
                DATA t544 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t544.
                DATA(t545) = t542.
                t544 = t545->col.
                t541 = t544.
                DATA(t546) = CONV f( 1 ).
                DATA(t547) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t547->has = abap_true.
                t547->value = t546.
                t540 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t541 right = t547 op = `-` ).
                t534 = NEW zcl_lnt_position( i_row = t535 i_col = t540 ).
                t526 = t534.
                DATA t548 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t548.
                DATA(t549) = abap_true.
                IF t549 = abap_true.
                  DATA t550 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t550.
                  DATA(t551) = t1.
                  DATA(t552) = t526.
                  DATA t553 TYPE REF TO zcl_lnt_position.
                  CLEAR t553.
                  DATA t554 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t554.
                  DATA t555 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t555.
                  DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t556.
                  DATA(t557) = t488.
                  t556 = t557.
                  CLEAR t555.
                  IF t556 IS BOUND.
                    IF t556->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t555 ?= t556->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t555 IS NOT BOUND.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                    ENDIF.
                  ENDIF.
                  t554 = t555.
                  DATA t558 TYPE REF TO zcl_lnt_position.
                  CLEAR t558.
                  DATA(t559) = VALUE f( ).
                  DATA t560 TYPE REF TO zcl_lnt_position.
                  CLEAR t560.
                  DATA t561 TYPE REF TO zcl_lnt_position.
                  CLEAR t561.
                  DATA(t562) = t554.
                  t561 = t562->start.
                  t560 = t561.
                  DATA(t563) = VALUE f( ).
                  DATA(t564) = t560.
                  t563 = t564->row.
                  t559 = t563.
                  DATA t565 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t565.
                  DATA t566 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t566.
                  DATA t567 TYPE REF TO zcl_lnt_position.
                  CLEAR t567.
                  DATA t568 TYPE REF TO zcl_lnt_position.
                  CLEAR t568.
                  DATA(t569) = t554.
                  t568 = t569->start.
                  t567 = t568.
                  DATA t570 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t570.
                  DATA(t571) = t567.
                  t570 = t571->col.
                  t566 = t570.
                  DATA(t572) = VALUE f( ).
                  DATA(t573) = VALUE i( ).
                  DATA(t574) = VALUE string( ).
                  DATA(t575) = t554.
                  t574 = t575->str.
                  DATA(t576) = strlen( t574 ).
                  t573 = t576.
                  t572 = t573.
                  DATA(t577) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t577->has = abap_true.
                  t577->value = t572.
                  t565 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t566 right = t577 op = `+` ).
                  t558 = NEW zcl_lnt_position( i_row = t559 i_col = t565 ).
                  t553 = t558.
                  t550 = zcl_lnt_edit_helper=>delete_range( i_file = t551 i_start = t552 i_end = t553 ).
                  t548 = t550.
                ELSE.
                  DATA t578 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t578.
                  t548 = t578.
                ENDIF.
                result = t548.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t579 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t579.
    result = t579.

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
    CLEAR t1.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_obslt_sttmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ob_st_ts_ob_stt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ob_st_ts_ob_stt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1633_3cfe054f1163.
  ENDMETHOD.
ENDCLASS.
