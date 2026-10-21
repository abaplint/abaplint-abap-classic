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
    me->conf = NEW zcl_lnt_obslt_sttmnt_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Styleguide| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    t22 = t26.
    DATA(t31) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
    t31 = t31 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t32 i_good_example = t34 i_extended_information = t22 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ob_st_ts_ob_stt.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ob_st_ts_ob_stt.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ob_st_ts_ob_stt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t12 TYPE REF TO zcl_lnt_abap_release.
    t12 = me->reg->get_config( )->get_release( ).
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t4->load( ).
      IF t19 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t4->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE REF TO zif_lnt_statement.
      CLEAR t22.
      t22 = t17->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
      t34 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_refresh ).
      t33 = t34.
      IF t34 = abap_true.
        t33 = me->conf->zlnt_view_read_sr_e5182c9cb5b0( ).
      ENDIF.
      t32 = t33.
      IF t33 = abap_false.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE abap_bool( ).
        t39 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_compute ).
        t38 = t39.
        IF t39 = abap_true.
          t38 = me->conf->zlnt_view_read_sr_74d4d49d4745( ).
        ENDIF.
        t32 = t38.
      ENDIF.
      t31 = t32.
      IF t32 = abap_false.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        t44 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_add ).
        t43 = t44.
        IF t44 = abap_true.
          t43 = me->conf->zlnt_view_read_sr_e1b5545ca094( ).
        ENDIF.
        t31 = t43.
      ENDIF.
      t30 = t31.
      IF t31 = abap_false.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        t49 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_subtract ).
        t48 = t49.
        IF t49 = abap_true.
          t48 = me->conf->zlnt_view_read_sr_7cd00c4cd3d2( ).
        ENDIF.
        t30 = t48.
      ENDIF.
      t29 = t30.
      IF t30 = abap_false.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        t55 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_class_definition_load ).
        t54 = t55.
        IF t55 = abap_true.
          t54 = me->conf->zlnt_view_read_sr_79f97f0da28d( ).
        ENDIF.
        t53 = t54.
        IF t54 = abap_true.
          DATA t63 TYPE REF TO zlnt_runtime_map__201f3699a39e.
          CLEAR t63.
          IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
            zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
          ENDIF.
          t63 = zcl_lnt_version_module=>release_b8cd.
          t53 = zcl_lnt_version_module=>release_at_least( i_running = t12 i_required = t63->get( p0 = |v702| ) ).
        ENDIF.
        t29 = t53.
      ENDIF.
      t28 = t29.
      IF t29 = abap_false.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        t67 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_interface_load ).
        t66 = t67.
        IF t67 = abap_true.
          t66 = me->conf->zlnt_view_read_sr_79f97f0da28d( ).
        ENDIF.
        t65 = t66.
        IF t66 = abap_true.
          DATA t75 TYPE REF TO zlnt_runtime_map__201f3699a39e.
          CLEAR t75.
          IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
            zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
          ENDIF.
          t75 = zcl_lnt_version_module=>release_b8cd.
          t65 = zcl_lnt_version_module=>release_at_least( i_running = t12 i_required = t75->get( p0 = |v702| ) ).
        ENDIF.
        t28 = t65.
      ENDIF.
      t27 = t28.
      IF t28 = abap_false.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = VALUE abap_bool( ).
        t78 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_multiply ).
        t77 = t78.
        IF t78 = abap_true.
          t77 = me->conf->zlnt_view_read_sr_53e2daddf5c0( ).
        ENDIF.
        t27 = t77.
      ENDIF.
      t26 = t27.
      IF t27 = abap_false.
        DATA(t82) = VALUE abap_bool( ).
        DATA(t83) = VALUE abap_bool( ).
        t83 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_divide ).
        t82 = t83.
        IF t83 = abap_true.
          t82 = me->conf->zlnt_view_read_sr_199e22f3d1e2( ).
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
        t91 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_move ).
        t90 = t91.
        IF t91 = abap_true.
          t90 = me->conf->zlnt_view_read_sr_f1ab3a745d20( ).
        ENDIF.
        t89 = t90.
        IF t90 = abap_true.
          DATA(t96) = VALUE string( ).
          DATA(t97) = VALUE string( ).
          DATA t99 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t99.
          DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t100 = t17->get_tokens( ).
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
            t104 = t103->as_ref( ).
            t99 ?= t104.
          ELSE.
            t99 ?= t102.
          ENDIF.
          t97 = t99->str.
          DATA(t107) = strlen( t97 ).
          t96 = t97.
          IF t96 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t96 TO UPPER CASE.
          ELSE.
            t96 = zlnt_runtime_uppe_91169605024d=>full( t96 ).
          ENDIF.
          t89 = xsdbool( t96 = |MOVE| ).
        ENDIF.
        t88 = t89.
        IF t89 = abap_true.
          DATA t112 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t113 = t17->get_tokens( ).
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
            t117 = t116->as_ref( ).
            t112 ?= t117.
          ELSE.
            t112 ?= t115.
          ENDIF.
          t88 = xsdbool( t112->str <> |-| ).
        ENDIF.
        t87 = t88.
        IF t88 = abap_true.
          DATA(t122) = VALUE string( ).
          DATA(t123) = VALUE string( ).
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t126 = t17->get_tokens( ).
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
            t130 = t129->as_ref( ).
            t125 ?= t130.
          ELSE.
            t125 ?= t128.
          ENDIF.
          t123 = t125->str.
          DATA(t133) = strlen( t123 ).
          t122 = t123.
          IF t122 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t122 TO UPPER CASE.
          ELSE.
            t122 = zlnt_runtime_uppe_91169605024d=>full( t122 ).
          ENDIF.
          t87 = xsdbool( t122 <> |EXACT| ).
        ENDIF.
        t25 = t87.
      ENDIF.
      IF t25 = abap_true.
        DATA(t135) = VALUE abap_bool( ).
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        CLEAR t140.
        t137 = xsdbool( t10 IS INITIAL ).
        t136 = t137.
        IF t137 = abap_false.
          DATA t145 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t145.
          t145 = t17->get_first_token( )->start->col.
          DATA t158 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t158.
          t158 = t10->col.
          t136 = zlnt_runtime_numb_290eb04a9758=>compare( left = t145 right = t158 op = `!=` ).
        ENDIF.
        t135 = t136.
        IF t136 = abap_false.
          t135 = xsdbool( t17->get_first_token( )->start->row <> t10->row ).
        ENDIF.
        IF t135 = abap_true.
          DATA(t184) = VALUE string( ).
          DATA(t186) = VALUE string( ).
          DATA(t187) = |Statement "|.
          DATA(t188) = VALUE string( ).
          t188 = t17->get_first_token( )->str.
          DATA(t194) = strlen( t187 ).
          t186 = |{ t187 }{ t188 }|.
          DATA(t196) = strlen( t186 ).
          t184 = |{ t186 }{ |" is obsolete| }|.
          DATA t198 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t198.
          t198 = me->get_fix( i_file = t1 i_statement = t22 i_statement_node = t17 ).
          DATA t203 TYPE REF TO zcl_lnt_issue.
          CLEAR t203.
          DATA(t207) = VALUE string( ).
          DATA t208 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t215.
          DATA t219 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t219.
          t219->load( ).
          APPEND |SingleFile| TO t219->items.
          t219->save( ).
          t219->load( ).
          APPEND |Styleguide| TO t219->items.
          t219->save( ).
          t219->load( ).
          APPEND |Quickfix| TO t219->items.
          t219->save( ).
          t215 = t219.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
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
          t229 = t233.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t235.
          DATA(t238) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t238 = t238 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t239->has = abap_true.
          t239->value = t238.
          t235 = t239.
          DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t241.
          CLEAR t241.
          DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t243.
          CLEAR t243.
          DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t245.
          CLEAR t245.
          t208 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t235 i_good_example = t241 i_extended_information = t229 i_tags = t215 i_pragma = t243 i_pseudo_comment = t245 ).
          CREATE OBJECT t208->zlnt_view_ownkeys_b0e8086400eb.
          t208->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t247.
          t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t247 ).
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
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t254 ).
          DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t256.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t256 ).
          ENDIF.
          DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t258.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t258 ).
          ENDIF.
          DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t260.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t260 ).
          ENDIF.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t262 ).
          ENDIF.
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t264 ).
          ENDIF.
          t207 = t208->key.
          DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t265.
          t265 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t268.
          t203 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = t184 i_key = t207 i_severity = t265 i_fix = t198 i_alternative_fixes = t268 ).
          t2->load( ).
          APPEND t203 TO t2->items.
          t2->save( ).
        ENDIF.
        t10 = t17->get_first_token( )->start.
      ENDIF.
      DATA(t283) = VALUE abap_bool( ).
      DATA(t284) = VALUE abap_bool( ).
      DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t285 = me->conf->zlnt_view_read_sr_a489a62433a9( ).
      IF t285 IS BOUND.
        IF t285->has = abap_true.
          t284 = xsdbool( t285->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t283 = t284.
      IF t284 = abap_true.
        t283 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_set_extended_check ).
      ENDIF.
      IF t283 = abap_true.
        DATA t290 TYPE REF TO zcl_lnt_issue.
        CLEAR t290.
        DATA(t294) = VALUE string( ).
        DATA t295 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t302.
        DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t306.
        t306->load( ).
        APPEND |SingleFile| TO t306->items.
        t306->save( ).
        t306->load( ).
        APPEND |Styleguide| TO t306->items.
        t306->save( ).
        t306->load( ).
        APPEND |Quickfix| TO t306->items.
        t306->save( ).
        t302 = t306.
        DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t316.
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
        t316 = t320.
        DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t322.
        DATA(t325) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t325 = t325 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t326->has = abap_true.
        t326->value = t325.
        t322 = t326.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t328.
        CLEAR t328.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t330.
        CLEAR t330.
        DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t332.
        CLEAR t332.
        t295 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t322 i_good_example = t328 i_extended_information = t316 i_tags = t302 i_pragma = t330 i_pseudo_comment = t332 ).
        CREATE OBJECT t295->zlnt_view_ownkeys_b0e8086400eb.
        t295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        t295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t334 ).
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
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t341.
        t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t341 ).
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t343 ).
        ENDIF.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t345 ).
        ENDIF.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t347 ).
        ENDIF.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t349 ).
        ENDIF.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t351 ).
        ENDIF.
        t294 = t295->key.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        t352 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t354 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t354.
        DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t355.
        t290 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |SET EXTENDED CHECK is obsolete| i_key = t294 i_severity = t352 i_fix = t354 i_alternative_fixes = t355 ).
        t2->load( ).
        APPEND t290 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t358) = VALUE abap_bool( ).
      DATA(t359) = VALUE abap_bool( ).
      DATA t360 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t360 = me->conf->zlnt_view_read_sr_2efbb7e799e5( ).
      IF t360 IS BOUND.
        IF t360->has = abap_true.
          t359 = xsdbool( t360->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t358 = t359.
      IF t359 = abap_true.
        t358 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_communication ).
      ENDIF.
      IF t358 = abap_true.
        DATA t365 TYPE REF TO zcl_lnt_issue.
        CLEAR t365.
        DATA(t369) = VALUE string( ).
        DATA t370 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t377 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t377.
        DATA t381 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t381.
        t381->load( ).
        APPEND |SingleFile| TO t381->items.
        t381->save( ).
        t381->load( ).
        APPEND |Styleguide| TO t381->items.
        t381->save( ).
        t381->load( ).
        APPEND |Quickfix| TO t381->items.
        t381->save( ).
        t377 = t381.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
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
        t391 = t395.
        DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t397.
        DATA(t400) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t400 = t400 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t401->has = abap_true.
        t401->value = t400.
        t397 = t401.
        DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t403.
        CLEAR t403.
        DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t405.
        CLEAR t405.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t407.
        CLEAR t407.
        t370 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t397 i_good_example = t403 i_extended_information = t391 i_tags = t377 i_pragma = t405 i_pseudo_comment = t407 ).
        CREATE OBJECT t370->zlnt_view_ownkeys_b0e8086400eb.
        t370->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t409.
        t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t409 ).
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
        DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t416.
        t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t416 ).
        DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t418.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t418 ).
        ENDIF.
        DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t420.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t420 ).
        ENDIF.
        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t422.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t422 ).
        ENDIF.
        DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t424.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t424 ).
        ENDIF.
        DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t426.
        IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t426 ).
        ENDIF.
        t369 = t370->key.
        DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t427.
        t427 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t429 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t429.
        DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t430.
        t365 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |COMMUNICATION is obsolete| i_key = t369 i_severity = t427 i_fix = t429 i_alternative_fixes = t430 ).
        t2->load( ).
        APPEND t365 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t433) = VALUE abap_bool( ).
      DATA(t434) = VALUE abap_bool( ).
      DATA(t435) = VALUE abap_bool( ).
      DATA t436 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t436 = me->conf->zlnt_view_read_sr_8b1de602e50e( ).
      IF t436 IS BOUND.
        IF t436->has = abap_true.
          t435 = xsdbool( t436->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t434 = t435.
      IF t435 = abap_true.
        t434 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_data_begin ).
      ENDIF.
      t433 = t434.
      IF t434 = abap_true.
        DATA t441 TYPE REF TO zcl_lnt_abstract_token.
        t441 = t17->find_direct_token_by_text( i_text = |COMMON| ).
        t433 = xsdbool( t441 IS BOUND ).
      ENDIF.
      IF t433 = abap_true.
        DATA t445 TYPE REF TO zcl_lnt_issue.
        CLEAR t445.
        DATA(t449) = VALUE string( ).
        DATA t450 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t457 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t457.
        DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t461.
        t461->load( ).
        APPEND |SingleFile| TO t461->items.
        t461->save( ).
        t461->load( ).
        APPEND |Styleguide| TO t461->items.
        t461->save( ).
        t461->load( ).
        APPEND |Quickfix| TO t461->items.
        t461->save( ).
        t457 = t461.
        DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t471.
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
        t471 = t475.
        DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t477.
        DATA(t480) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t480 = t480 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t481) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t481->has = abap_true.
        t481->value = t480.
        t477 = t481.
        DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t483.
        CLEAR t483.
        DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t485.
        CLEAR t485.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t487.
        CLEAR t487.
        t450 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t477 i_good_example = t483 i_extended_information = t471 i_tags = t457 i_pragma = t485 i_pseudo_comment = t487 ).
        CREATE OBJECT t450->zlnt_view_ownkeys_b0e8086400eb.
        t450->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t489.
        t450->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t489 ).
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
        DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t496.
        t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t496 ).
        DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t498.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t498 ).
        ENDIF.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t500.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t500 ).
        ENDIF.
        DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t502.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t502 ).
        ENDIF.
        DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t504.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t504 ).
        ENDIF.
        DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t506.
        IF t450->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t450->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t506 ).
        ENDIF.
        t449 = t450->key.
        DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t507.
        t507 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t509 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t509.
        DATA t510 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t510.
        t445 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |COMMON PART is obsolete| i_key = t449 i_severity = t507 i_fix = t509 i_alternative_fixes = t510 ).
        t2->load( ).
        APPEND t445 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t513) = VALUE abap_bool( ).
      DATA(t514) = VALUE abap_bool( ).
      DATA(t515) = VALUE abap_bool( ).
      DATA t516 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t516 = me->conf->zlnt_view_read_sr_bc501b82d528( ).
      IF t516 IS BOUND.
        IF t516->has = abap_true.
          t515 = xsdbool( t516->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t514 = t515.
      IF t515 = abap_true.
        t514 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_replace ).
      ENDIF.
      t513 = t514.
      IF t514 = abap_true.
        DATA t521 TYPE REF TO zcl_lnt_abstract_token.
        t521 = t17->find_direct_token_by_text( i_text = |INTO| ).
        t513 = xsdbool( t521 IS BOUND ).
      ENDIF.
      IF t513 = abap_true.
        DATA t525 TYPE REF TO zcl_lnt_issue.
        CLEAR t525.
        DATA(t529) = VALUE string( ).
        DATA t530 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t537 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t537.
        DATA t541 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t541.
        t541->load( ).
        APPEND |SingleFile| TO t541->items.
        t541->save( ).
        t541->load( ).
        APPEND |Styleguide| TO t541->items.
        t541->save( ).
        t541->load( ).
        APPEND |Quickfix| TO t541->items.
        t541->save( ).
        t537 = t541.
        DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t551.
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
        t551 = t555.
        DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t557.
        DATA(t560) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t560 = t560 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t561) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t561->has = abap_true.
        t561->value = t560.
        t557 = t561.
        DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t563.
        CLEAR t563.
        DATA t565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t565.
        CLEAR t565.
        DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t567.
        CLEAR t567.
        t530 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t557 i_good_example = t563 i_extended_information = t551 i_tags = t537 i_pragma = t565 i_pseudo_comment = t567 ).
        CREATE OBJECT t530->zlnt_view_ownkeys_b0e8086400eb.
        t530->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t569.
        t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t569 ).
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
        DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t576.
        t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t576 ).
        DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t578.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t578 ).
        ENDIF.
        DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t580.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t580 ).
        ENDIF.
        DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t582.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t582 ).
        ENDIF.
        DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t584.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t584 ).
        ENDIF.
        DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t586.
        IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t586 ).
        ENDIF.
        t529 = t530->key.
        DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t587.
        t587 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t589 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t589.
        DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t590.
        t525 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |REPLACE INTO is obsolete| i_key = t529 i_severity = t587 i_fix = t589 i_alternative_fixes = t590 ).
        t2->load( ).
        APPEND t525 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t593) = VALUE abap_bool( ).
      DATA(t594) = VALUE abap_bool( ).
      DATA t595 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t595 = me->conf->zlnt_view_read_sr_af6f73503223( ).
      IF t595 IS BOUND.
        IF t595->has = abap_true.
          t594 = xsdbool( t595->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t593 = t594.
      IF t594 = abap_true.
        t593 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_pack ).
      ENDIF.
      IF t593 = abap_true.
        DATA t600 TYPE REF TO zcl_lnt_issue.
        CLEAR t600.
        DATA(t604) = VALUE string( ).
        DATA t605 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t612 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t612.
        DATA t616 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t616.
        t616->load( ).
        APPEND |SingleFile| TO t616->items.
        t616->save( ).
        t616->load( ).
        APPEND |Styleguide| TO t616->items.
        t616->save( ).
        t616->load( ).
        APPEND |Quickfix| TO t616->items.
        t616->save( ).
        t612 = t616.
        DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t626.
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
        t626 = t630.
        DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t632.
        DATA(t635) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t635 = t635 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t636) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t636->has = abap_true.
        t636->value = t635.
        t632 = t636.
        DATA t638 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t638.
        CLEAR t638.
        DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t640.
        CLEAR t640.
        DATA t642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t642.
        CLEAR t642.
        t605 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t632 i_good_example = t638 i_extended_information = t626 i_tags = t612 i_pragma = t640 i_pseudo_comment = t642 ).
        CREATE OBJECT t605->zlnt_view_ownkeys_b0e8086400eb.
        t605->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t644.
        t605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t644 ).
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
        DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t651.
        t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t651 ).
        DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t653.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t653 ).
        ENDIF.
        DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t655.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t655 ).
        ENDIF.
        DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t657.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t657 ).
        ENDIF.
        DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t659.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t659 ).
        ENDIF.
        DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t661.
        IF t605->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t605->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t661 ).
        ENDIF.
        t604 = t605->key.
        DATA t662 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t662.
        t662 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t664 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t664.
        DATA t665 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t665.
        t600 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |PACK is obsolete| i_key = t604 i_severity = t662 i_fix = t664 i_alternative_fixes = t665 ).
        t2->load( ).
        APPEND t600 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t668) = VALUE abap_bool( ).
      DATA(t669) = VALUE abap_bool( ).
      DATA t670 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t670 = me->conf->zlnt_view_read_sr_107aabcd4247( ).
      IF t670 IS BOUND.
        IF t670->has = abap_true.
          t669 = xsdbool( t670->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t668 = t669.
      IF t669 = abap_true.
        t668 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_field_group ).
      ENDIF.
      IF t668 = abap_true.
        DATA t675 TYPE REF TO zcl_lnt_issue.
        CLEAR t675.
        DATA(t679) = VALUE string( ).
        DATA t680 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t687 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t687.
        DATA t691 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t691.
        t691->load( ).
        APPEND |SingleFile| TO t691->items.
        t691->save( ).
        t691->load( ).
        APPEND |Styleguide| TO t691->items.
        t691->save( ).
        t691->load( ).
        APPEND |Quickfix| TO t691->items.
        t691->save( ).
        t687 = t691.
        DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t701.
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
        t701 = t705.
        DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t707.
        DATA(t710) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t710 = t710 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t711) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t711->has = abap_true.
        t711->value = t710.
        t707 = t711.
        DATA t713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t713.
        CLEAR t713.
        DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t715.
        CLEAR t715.
        DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t717.
        CLEAR t717.
        t680 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t707 i_good_example = t713 i_extended_information = t701 i_tags = t687 i_pragma = t715 i_pseudo_comment = t717 ).
        CREATE OBJECT t680->zlnt_view_ownkeys_b0e8086400eb.
        t680->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t719.
        t680->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t719 ).
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
        DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t726.
        t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t726 ).
        DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t728.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t728 ).
        ENDIF.
        DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t730.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t730 ).
        ENDIF.
        DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t732.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t732 ).
        ENDIF.
        DATA t734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t734.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t734 ).
        ENDIF.
        DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t736.
        IF t680->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t680->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t736 ).
        ENDIF.
        t679 = t680->key.
        DATA t737 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t737.
        t737 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t739 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t739.
        DATA t740 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t740.
        t675 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |FIELD-GROUPS is obsolete| i_key = t679 i_severity = t737 i_fix = t739 i_alternative_fixes = t740 ).
        t2->load( ).
        APPEND t675 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t743) = VALUE abap_bool( ).
      DATA(t744) = VALUE abap_bool( ).
      DATA t745 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t745 = me->conf->zlnt_view_read_sr_32a9ad24daa8( ).
      IF t745 IS BOUND.
        IF t745->has = abap_true.
          t744 = xsdbool( t745->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t743 = t744.
      IF t744 = abap_true.
        t743 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_parameter ).
      ENDIF.
      IF t743 = abap_true.
        DATA t749 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t749.
        t749 = t17->get_first_token( ).
        DATA(t753) = VALUE string( ).
        DATA(t754) = VALUE string( ).
        t754 = t749->str.
        DATA(t759) = strlen( t754 ).
        t753 = t754.
        IF t753 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t753 TO UPPER CASE.
        ELSE.
          t753 = zlnt_runtime_uppe_91169605024d=>full( t753 ).
        ENDIF.
        IF xsdbool( t753 = |PARAMETER| ) = abap_true.
          DATA t762 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t762 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t749 i_text = |PARAMETERS| ).
          DATA t767 TYPE REF TO zcl_lnt_issue.
          CLEAR t767.
          DATA(t771) = VALUE string( ).
          DATA t772 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t779 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t779.
          DATA t783 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t783.
          t783->load( ).
          APPEND |SingleFile| TO t783->items.
          t783->save( ).
          t783->load( ).
          APPEND |Styleguide| TO t783->items.
          t783->save( ).
          t783->load( ).
          APPEND |Quickfix| TO t783->items.
          t783->save( ).
          t779 = t783.
          DATA t793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t793.
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
          t793 = t797.
          DATA t799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t799.
          DATA(t802) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t802 = t802 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t803) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t803->has = abap_true.
          t803->value = t802.
          t799 = t803.
          DATA t805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t805.
          CLEAR t805.
          DATA t807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t807.
          CLEAR t807.
          DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t809.
          CLEAR t809.
          t772 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t799 i_good_example = t805 i_extended_information = t793 i_tags = t779 i_pragma = t807 i_pseudo_comment = t809 ).
          CREATE OBJECT t772->zlnt_view_ownkeys_b0e8086400eb.
          t772->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t811.
          t772->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t811 ).
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
          DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t818.
          t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t818 ).
          DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t820.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t820 ).
          ENDIF.
          DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t822.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t822 ).
          ENDIF.
          DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t824.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t824 ).
          ENDIF.
          DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t826.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t826 ).
          ENDIF.
          DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t828.
          IF t772->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t772->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t828 ).
          ENDIF.
          t771 = t772->key.
          DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t829.
          t829 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t831 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t831.
          t831 = t762.
          DATA t835 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t835.
          t767 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Use PARAMETERS instead of PARAMETER| i_key = t771 i_severity = t829 i_fix = t831 i_alternative_fixes = t835 ).
          t2->load( ).
          APPEND t767 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t838) = VALUE abap_bool( ).
      DATA(t839) = VALUE abap_bool( ).
      DATA t840 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t840 = me->conf->zlnt_view_read_sr_df26b38faf17( ).
      IF t840 IS BOUND.
        IF t840->has = abap_true.
          t839 = xsdbool( t840->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t838 = t839.
      IF t839 = abap_true.
        t838 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_ranges ).
      ENDIF.
      IF t838 = abap_true.
        DATA t844 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t844.
        DATA t845 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t845.
        DATA t847 TYPE REF TO zcl_lnt_abstract_node.
        t847 = t17.
        t845 ?= t847->children.
        t844 = t845.
        DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t851.
        CLEAR t851.
        t844->load( ).
        IF xsdbool( lines( t844->items ) = 5 ) = abap_true.
          DATA(t857) = VALUE string( ).
          DATA t859 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t859.
          DATA t861 TYPE REF TO object.
          CLEAR t861.
          t844->load( ).
          CLEAR t861.
          READ TABLE t844->items INDEX 2 INTO t861.
          DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t862.
          CLEAR t859.
          IF t861 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t862 ?= t861.
            DATA t863 TYPE REF TO object.
            t863 = t862->as_ref( ).
            t859 ?= t863.
          ELSE.
            t859 ?= t861.
          ENDIF.
          t857 = t859->concat_tokens( ).
          DATA(t864) = VALUE string( ).
          DATA t866 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t866.
          DATA t868 TYPE REF TO object.
          CLEAR t868.
          t844->load( ).
          CLEAR t868.
          READ TABLE t844->items INDEX 4 INTO t868.
          DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t869.
          CLEAR t866.
          IF t868 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t869 ?= t868.
            DATA t870 TYPE REF TO object.
            t870 = t869->as_ref( ).
            t866 ?= t870.
          ELSE.
            t866 ?= t868.
          ENDIF.
          t864 = t866->concat_tokens( ).
          DATA(t871) = VALUE string( ).
          DATA(t873) = VALUE string( ).
          DATA(t874) = VALUE string( ).
          DATA(t875) = VALUE string( ).
          DATA(t876) = |TYPES |.
          DATA(t878) = strlen( t876 ).
          t875 = |{ t876 }{ t857 }|.
          DATA(t880) = strlen( t875 ).
          t874 = |{ t875 }{ | LIKE RANGE OF | }|.
          DATA(t882) = strlen( t874 ).
          t873 = |{ t874 }{ t864 }|.
          DATA(t884) = strlen( t873 ).
          t871 = |{ t873 }{ |.| }|.
          DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t887.
          DATA t888 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t890 TYPE REF TO zcl_lnt_position.
          CLEAR t890.
          t890 = t17->get_first_token( )->start.
          DATA t904 TYPE REF TO zcl_lnt_abstract_token.
          t904 = t17->get_last_token( ).
          DATA t907 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t907.
          t907 = t904.
          DATA(t910) = VALUE f( ).
          t910 = t907->start->row.
          DATA t917 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t917.
          t917 = t907->start->col.
          DATA(t923) = VALUE f( ).
          t923 = strlen( t907->str ).
          DATA(t928) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t928->has = abap_true.
          t928->value = t923.
          t888 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t890 i_end = NEW zcl_lnt_position( i_row = t910 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t917 right = t928 op = `+` ) ) i_text = t871 ).
          CLEAR t887.
          IF t888 IS BOUND.
            DATA t930 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t930.
            DATA t931 TYPE REF TO object.
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
          t851 = t887.
        ENDIF.
        DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t935 = t851.
        DATA t937 TYPE REF TO zcl_lnt_issue.
        CLEAR t937.
        DATA(t941) = VALUE string( ).
        DATA t942 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t949 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t949.
        DATA t953 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t953.
        t953->load( ).
        APPEND |SingleFile| TO t953->items.
        t953->save( ).
        t953->load( ).
        APPEND |Styleguide| TO t953->items.
        t953->save( ).
        t953->load( ).
        APPEND |Quickfix| TO t953->items.
        t953->save( ).
        t949 = t953.
        DATA t963 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t963.
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
        t963 = t967.
        DATA t969 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t969.
        DATA(t972) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t972 = t972 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t973) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t973->has = abap_true.
        t973->value = t972.
        t969 = t973.
        DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t975.
        CLEAR t975.
        DATA t977 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t977.
        CLEAR t977.
        DATA t979 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t979.
        CLEAR t979.
        t942 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t969 i_good_example = t975 i_extended_information = t963 i_tags = t949 i_pragma = t977 i_pseudo_comment = t979 ).
        CREATE OBJECT t942->zlnt_view_ownkeys_b0e8086400eb.
        t942->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t981.
        t942->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t981 ).
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
        DATA t988 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t988.
        t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t988 ).
        DATA t990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t990.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t990 ).
        ENDIF.
        DATA t992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t992.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t992 ).
        ENDIF.
        DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t994.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t994 ).
        ENDIF.
        DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t996.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t996 ).
        ENDIF.
        DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t998.
        IF t942->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t942->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t998 ).
        ENDIF.
        t941 = t942->key.
        DATA t999 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t999.
        t999 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t1001 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1001.
        IF xsdbool( t935 IS INITIAL ) = abap_true.
          CLEAR t1001.
        ELSE.
          DATA t1005 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1005.
          DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t1006 = t935.
          DATA t1008 TYPE REF TO object.
          CLEAR t1008.
          IF t1006 IS BOUND AND t1006->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            CREATE OBJECT t1005.
            LOOP AT t1006->entries INTO DATA(t1009).
              DATA(t1010) = CAST zlnt_runtime_dyna_a429568d5be8( t1009-v ).
              DATA t1011 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t1011.
              DATA t1012 TYPE REF TO object.
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
        t937 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Use LIKE RANGE OF instead of RANGES| i_key = t941 i_severity = t999 i_fix = t1001 i_alternative_fixes = t1018 ).
        t2->load( ).
        APPEND t937 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t1021) = VALUE abap_bool( ).
      DATA(t1022) = VALUE abap_bool( ).
      DATA(t1023) = VALUE abap_bool( ).
      DATA(t1024) = VALUE abap_bool( ).
      DATA(t1025) = VALUE abap_bool( ).
      DATA t1026 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1026 = me->conf->zlnt_view_read_sr_b9ac5976bbdc( ).
      IF t1026 IS BOUND.
        IF t1026->has = abap_true.
          t1025 = xsdbool( t1026->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1024 = t1025.
      IF t1025 = abap_true.
        DATA(t1028) = VALUE abap_bool( ).
        DATA(t1029) = VALUE abap_bool( ).
        t1029 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t1028 = t1029.
        IF t1029 = abap_false.
          t1028 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_select_loop ).
        ENDIF.
        t1024 = t1028.
      ENDIF.
      t1023 = t1024.
      IF t1024 = abap_true.
        DATA t1035 TYPE REF TO zcl_lnt_expression_node.
        DATA(t1037) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
        t1035 = t17->find_first_expression( i_type_9913 = t1037 ).
        DATA t1038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1038.
        CLEAR t1038.
        t1023 = xsdbool( t1035 IS INITIAL ).
      ENDIF.
      t1022 = t1023.
      IF t1023 = abap_true.
        DATA t1044 TYPE REF TO zcl_lnt_expression_node.
        DATA(t1046) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
        t1044 = t17->find_first_expression( i_type_9913 = t1046 ).
        DATA t1047 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1047.
        CLEAR t1047.
        t1022 = xsdbool( t1044 IS INITIAL ).
      ENDIF.
      t1021 = t1022.
      IF t1022 = abap_true.
        DATA t1053 TYPE REF TO zcl_lnt_expression_node.
        DATA(t1055) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
        t1053 = t17->find_first_expression( i_type_9913 = t1055 ).
        DATA t1056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1056.
        CLEAR t1056.
        t1021 = xsdbool( t1053 IS INITIAL ).
      ENDIF.
      IF t1021 = abap_true.
        DATA t1060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1060.
        DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1062.
        DATA t1064 TYPE REF TO zcl_lnt_expression_node.
        DATA(t1067) = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
        t1064 = t17->find_first_expression( i_type_9913 = t1067 ).
        DATA t1068 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1068.
        IF xsdbool( t1064 IS INITIAL ) = abap_true.
          CLEAR t1068.
        ELSE.
          DATA(t1072) = VALUE string( ).
          t1072 = t1064->concat_tokens( ).
          DATA(t1075) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1075->has = abap_true.
          t1075->value = t1072.
          t1068 = t1075.
        ENDIF.
        t1062 = t1068.
        DATA t1076 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1076.
        DATA(t1077) = VALUE abap_bool( ).
        IF t1062 IS INITIAL.
          t1077 = abap_true.
        ELSEIF t1062->has = abap_false.
          t1077 = abap_true.
        ENDIF.
        IF t1077 = abap_true.
          CLEAR t1076.
        ELSE.
          DATA(t1080) = VALUE string( ).
          DATA(t1081) = VALUE string( ).
          t1081 = t1062->value.
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
        t1060 = t1076.
        DATA(t1085) = VALUE abap_bool( ).
        DATA(t1086) = VALUE abap_bool( ).
        DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t1091) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1091->has = abap_true.
        t1091->value = |COUNT(*)|.
        t1088 = t1091.
        DATA(t1093) = VALUE abap_bool( ).
        DATA(t1094) = VALUE abap_bool( ).
        IF t1060 IS BOUND.
          t1093 = t1060->has.
        ENDIF.
        IF t1088 IS BOUND.
          t1094 = t1088->has.
        ENDIF.
        IF t1093 = t1094.
          IF t1093 = abap_false.
            t1086 = abap_true.
          ELSEIF t1060->value = t1088->value.
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
          DATA t1097 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t1100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1100->has = abap_true.
          t1100->value = |COUNT( * )|.
          t1097 = t1100.
          DATA(t1102) = VALUE abap_bool( ).
          DATA(t1103) = VALUE abap_bool( ).
          IF t1060 IS BOUND.
            t1102 = t1060->has.
          ENDIF.
          IF t1097 IS BOUND.
            t1103 = t1097->has.
          ENDIF.
          IF t1102 = t1103.
            IF t1102 = abap_false.
              t1095 = abap_true.
            ELSEIF t1060->value = t1097->value.
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
          DATA t1105 TYPE REF TO zcl_lnt_issue.
          CLEAR t1105.
          DATA(t1109) = VALUE string( ).
          DATA t1110 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t1117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1117.
          DATA t1121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1121.
          t1121->load( ).
          APPEND |SingleFile| TO t1121->items.
          t1121->save( ).
          t1121->load( ).
          APPEND |Styleguide| TO t1121->items.
          t1121->save( ).
          t1121->load( ).
          APPEND |Quickfix| TO t1121->items.
          t1121->save( ).
          t1117 = t1121.
          DATA t1131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1131.
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
          t1131 = t1135.
          DATA t1137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1137.
          DATA(t1140) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t1140 = t1140 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t1141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1141->has = abap_true.
          t1141->value = t1140.
          t1137 = t1141.
          DATA t1143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1143.
          CLEAR t1143.
          DATA t1145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1145.
          CLEAR t1145.
          DATA t1147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1147.
          CLEAR t1147.
          t1110 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1137 i_good_example = t1143 i_extended_information = t1131 i_tags = t1117 i_pragma = t1145 i_pseudo_comment = t1147 ).
          CREATE OBJECT t1110->zlnt_view_ownkeys_b0e8086400eb.
          t1110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1149.
          t1110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1149 ).
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
          DATA t1156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1156.
          t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1156 ).
          DATA t1158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1158.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1158 ).
          ENDIF.
          DATA t1160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1160.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1160 ).
          ENDIF.
          DATA t1162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1162.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1162 ).
          ENDIF.
          DATA t1164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1164.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1164 ).
          ENDIF.
          DATA t1166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1166.
          IF t1110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1110->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1166 ).
          ENDIF.
          t1109 = t1110->key.
          DATA t1167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1167.
          t1167 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t1169 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1169.
          DATA t1170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1170.
          t1105 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |SELECT without INTO| i_key = t1109 i_severity = t1167 i_fix = t1169 i_alternative_fixes = t1170 ).
          t2->load( ).
          APPEND t1105 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t1173) = VALUE abap_bool( ).
      DATA(t1174) = VALUE abap_bool( ).
      DATA t1175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1175 = me->conf->zlnt_view_read_sr_73010cccd5a3( ).
      IF t1175 IS BOUND.
        IF t1175->has = abap_true.
          t1174 = xsdbool( t1175->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1173 = t1174.
      IF t1174 = abap_true.
        t1173 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_if ).
      ENDIF.
      IF t1173 = abap_true.
        DATA t1179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1179.
        DATA(t1181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
        t1179 = t17->find_all_expressions( i_type_9913 = t1181 ).
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
            t1186 = t1185->as_ref( ).
            t1182 ?= t1186.
          ELSE.
            t1182 ?= t1183.
          ENDIF.
          DATA t1187 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1187.
          t1187 = t1182->find_direct_token_by_text( i_text = |REQUESTED| ).
          IF xsdbool( t1187 IS BOUND ) = abap_true.
            DATA t1194 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1194.
            t1194 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t1187 i_text = |SUPPLIED| ).
            DATA t1200 TYPE REF TO zcl_lnt_issue.
            CLEAR t1200.
            DATA t1202 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1202.
            t1202 = t1187.
            DATA(t1205) = VALUE string( ).
            DATA t1206 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t1213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1213.
            DATA t1217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1217.
            t1217->load( ).
            APPEND |SingleFile| TO t1217->items.
            t1217->save( ).
            t1217->load( ).
            APPEND |Styleguide| TO t1217->items.
            t1217->save( ).
            t1217->load( ).
            APPEND |Quickfix| TO t1217->items.
            t1217->save( ).
            t1213 = t1217.
            DATA t1227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1227.
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
            t1227 = t1231.
            DATA t1233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1233.
            DATA(t1236) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1236 = t1236 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1237->has = abap_true.
            t1237->value = t1236.
            t1233 = t1237.
            DATA t1239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1239.
            CLEAR t1239.
            DATA t1241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1241.
            CLEAR t1241.
            DATA t1243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1243.
            CLEAR t1243.
            t1206 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1233 i_good_example = t1239 i_extended_information = t1227 i_tags = t1213 i_pragma = t1241 i_pseudo_comment = t1243 ).
            CREATE OBJECT t1206->zlnt_view_ownkeys_b0e8086400eb.
            t1206->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1245.
            t1206->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1245 ).
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
            DATA t1252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1252.
            t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1252 ).
            DATA t1254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1254.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1254 ).
            ENDIF.
            DATA t1256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1256.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1256 ).
            ENDIF.
            DATA t1258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1258.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1258 ).
            ENDIF.
            DATA t1260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1260.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1260 ).
            ENDIF.
            DATA t1262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1262.
            IF t1206->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1206->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1262 ).
            ENDIF.
            t1205 = t1206->key.
            t1200 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t1202 i_message_26cb = |IS REQUESTED is obsolete| i_key = t1205 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t1194 ).
            t2->load( ).
            APPEND t1200 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
      DATA(t1271) = VALUE abap_bool( ).
      DATA t1272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1272 = me->conf->zlnt_view_read_sr_9564c57a9817( ).
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
        t1277 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_describe ).
        t1276 = t1277.
        IF t1277 = abap_false.
          t1276 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_ranges ).
        ENDIF.
        t1275 = t1276.
        IF t1276 = abap_false.
          t1275 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_data_begin ).
        ENDIF.
        t1274 = t1275.
        IF t1275 = abap_false.
          t1274 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_type_begin ).
        ENDIF.
        IF t1274 = abap_true.
          DATA t1285 TYPE REF TO zcl_lnt_abstract_token.
          t1285 = t17->find_direct_token_by_text( i_text = |OCCURS| ).
          IF xsdbool( t1285 IS BOUND ) = abap_true.
            DATA t1292 TYPE REF TO zcl_lnt_issue.
            CLEAR t1292.
            DATA t1294 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1294.
            t1294 = t1285.
            DATA(t1297) = VALUE string( ).
            DATA t1298 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t1305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1305.
            DATA t1309 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1309.
            t1309->load( ).
            APPEND |SingleFile| TO t1309->items.
            t1309->save( ).
            t1309->load( ).
            APPEND |Styleguide| TO t1309->items.
            t1309->save( ).
            t1309->load( ).
            APPEND |Quickfix| TO t1309->items.
            t1309->save( ).
            t1305 = t1309.
            DATA t1319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1319.
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
            t1319 = t1323.
            DATA t1325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1325.
            DATA(t1328) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1328 = t1328 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1329->has = abap_true.
            t1329->value = t1328.
            t1325 = t1329.
            DATA t1331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1331.
            CLEAR t1331.
            DATA t1333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1333.
            CLEAR t1333.
            DATA t1335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1335.
            CLEAR t1335.
            t1298 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1325 i_good_example = t1331 i_extended_information = t1319 i_tags = t1305 i_pragma = t1333 i_pseudo_comment = t1335 ).
            CREATE OBJECT t1298->zlnt_view_ownkeys_b0e8086400eb.
            t1298->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1337.
            t1298->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1337 ).
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
            DATA t1344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1344.
            t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1344 ).
            DATA t1346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1346.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1346 ).
            ENDIF.
            DATA t1348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1348.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1348 ).
            ENDIF.
            DATA t1350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1350.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1350 ).
            ENDIF.
            DATA t1352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1352.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1352 ).
            ENDIF.
            DATA t1354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1354.
            IF t1298->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1298->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1354 ).
            ENDIF.
            t1297 = t1298->key.
            DATA t1355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1355.
            t1355 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t1357 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1357.
            t1292 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t1294 i_message_26cb = |OCCURS is obsolete| i_key = t1297 i_severity = t1355 i_fix = t1357 ).
            t2->load( ).
            APPEND t1292 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
        DATA t1360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1360.
        DATA(t1362) = zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df.
        t1360 = t17->find_all_expressions( i_type_9913 = t1362 ).
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
            t1367 = t1366->as_ref( ).
            t1363 ?= t1367.
          ELSE.
            t1363 ?= t1364.
          ENDIF.
          DATA t1368 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1368.
          DATA t1370 TYPE REF TO zcl_lnt_expression_node.
          DATA(t1373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
          t1370 = t1363->find_direct_expression( i_type_9913 = t1373 ).
          DATA t1374 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1374.
          IF xsdbool( t1370 IS INITIAL ) = abap_true.
            CLEAR t1374.
          ELSE.
            t1374 = t1370->find_direct_token_by_text( i_text = |OCCURS| ).
          ENDIF.
          t1368 = t1374.
          IF xsdbool( t1368 IS BOUND ) = abap_true.
            DATA t1385 TYPE REF TO zcl_lnt_issue.
            CLEAR t1385.
            DATA t1387 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1387.
            t1387 = t1368.
            DATA(t1390) = VALUE string( ).
            DATA t1391 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t1398 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1398.
            DATA t1402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1402.
            t1402->load( ).
            APPEND |SingleFile| TO t1402->items.
            t1402->save( ).
            t1402->load( ).
            APPEND |Styleguide| TO t1402->items.
            t1402->save( ).
            t1402->load( ).
            APPEND |Quickfix| TO t1402->items.
            t1402->save( ).
            t1398 = t1402.
            DATA t1412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1412.
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
            t1412 = t1416.
            DATA t1418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1418.
            DATA(t1421) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1421 = t1421 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1422->has = abap_true.
            t1422->value = t1421.
            t1418 = t1422.
            DATA t1424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1424.
            CLEAR t1424.
            DATA t1426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1426.
            CLEAR t1426.
            DATA t1428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1428.
            CLEAR t1428.
            t1391 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1418 i_good_example = t1424 i_extended_information = t1412 i_tags = t1398 i_pragma = t1426 i_pseudo_comment = t1428 ).
            CREATE OBJECT t1391->zlnt_view_ownkeys_b0e8086400eb.
            t1391->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1430.
            t1391->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1430 ).
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
            DATA t1437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1437.
            t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1437 ).
            DATA t1439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1439.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1439 ).
            ENDIF.
            DATA t1441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1441.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1441 ).
            ENDIF.
            DATA t1443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1443.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1443 ).
            ENDIF.
            DATA t1445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1445.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1445 ).
            ENDIF.
            DATA t1447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1447.
            IF t1391->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1391->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1447 ).
            ENDIF.
            t1390 = t1391->key.
            DATA t1448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1448.
            t1448 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t1450 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1450.
            t1385 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t1387 i_message_26cb = |OCCURS is obsolete| i_key = t1390 i_severity = t1448 i_fix = t1450 ).
            t2->load( ).
            APPEND t1385 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDDO.
      ENDIF.
      DATA(t1453) = VALUE abap_bool( ).
      DATA(t1454) = VALUE abap_bool( ).
      DATA(t1455) = VALUE abap_bool( ).
      t1455 = me->conf->zlnt_view_read_sr_5ab84e52ca26( ).
      t1454 = xsdbool( t1455 = abap_true ).
      t1453 = t1454.
      IF t1454 = abap_true.
        t1453 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_data ).
      ENDIF.
      IF t1453 = abap_true.
        DATA(t1461) = VALUE i( ).
        DATA(t1462) = VALUE string( ).
        DATA(t1463) = VALUE string( ).
        t1463 = t17->concat_tokens( ).
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
        IF xsdbool( t1461 >= 0 ) = abap_true.
          DATA t1469 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1469.
          DATA t1471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1471.
          t1471 = t17->get_tokens( ).
          DATA(t1474) = VALUE i( ).
          t1471->load( ).
          t1474 = lines( t1471->items ).
          DATA(t1477) = VALUE i( ).
          t1477 = 0.
          DATA t1479 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1479.
          CLEAR t1479.
          DO.
            IF xsdbool( t1477 < t1474 ) = abap_false.
              EXIT.
            ENDIF.
            DATA t1484 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1484.
            DATA t1486 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1486.
            DATA t1489 TYPE REF TO object.
            t1489 = t1471->get( p0 = t1477 ).
            DATA t1490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1490.
            CLEAR t1486.
            IF t1489 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t1490 ?= t1489.
              DATA t1491 TYPE REF TO object.
              t1491 = t1490->as_ref( ).
              t1486 ?= t1491.
            ELSE.
              t1486 ?= t1489.
            ENDIF.
            t1484 = t1486.
            DATA(t1493) = VALUE string( ).
            DATA(t1494) = VALUE string( ).
            t1494 = t1484->str.
            DATA(t1499) = strlen( t1494 ).
            t1493 = t1494.
            IF t1493 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t1493 TO UPPER CASE.
            ELSE.
              t1493 = zlnt_runtime_uppe_91169605024d=>full( t1493 ).
            ENDIF.
            IF xsdbool( t1493 = |WITH| ) = abap_true.
              t1479 = t1484.
              EXIT.
            ENDIF.
            DATA(t1507) = 1.
            t1477 = t1477 + t1507.
          ENDDO.
          t1469 = t1479.
          IF xsdbool( t1469 IS BOUND ) = abap_true.
            DATA t1512 TYPE REF TO zcl_lnt_issue.
            CLEAR t1512.
            DATA t1514 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t1514.
            t1514 = t1469.
            DATA(t1517) = VALUE string( ).
            DATA t1518 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t1525 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t1525.
            DATA t1529 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t1529.
            t1529->load( ).
            APPEND |SingleFile| TO t1529->items.
            t1529->save( ).
            t1529->load( ).
            APPEND |Styleguide| TO t1529->items.
            t1529->save( ).
            t1529->load( ).
            APPEND |Quickfix| TO t1529->items.
            t1529->save( ).
            t1525 = t1529.
            DATA t1539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1539.
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
            t1539 = t1543.
            DATA t1545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1545.
            DATA(t1548) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t1548 = t1548 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t1549) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1549->has = abap_true.
            t1549->value = t1548.
            t1545 = t1549.
            DATA t1551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1551.
            CLEAR t1551.
            DATA t1553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1553.
            CLEAR t1553.
            DATA t1555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1555.
            CLEAR t1555.
            t1518 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1545 i_good_example = t1551 i_extended_information = t1539 i_tags = t1525 i_pragma = t1553 i_pseudo_comment = t1555 ).
            CREATE OBJECT t1518->zlnt_view_ownkeys_b0e8086400eb.
            t1518->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1557.
            t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1557 ).
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
            DATA t1564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1564.
            t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1564 ).
            DATA t1566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1566.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1566 ).
            ENDIF.
            DATA t1568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1568.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1568 ).
            ENDIF.
            DATA t1570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1570.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1570 ).
            ENDIF.
            DATA t1572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1572.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1572 ).
            ENDIF.
            DATA t1574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t1574.
            IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1574 ).
            ENDIF.
            t1517 = t1518->key.
            DATA t1575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t1575.
            t1575 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t1577 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t1577.
            t1512 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t1514 i_message_26cb = |WITH HEADER LINE is obsolete| i_key = t1517 i_severity = t1575 i_fix = t1577 ).
            t2->load( ).
            APPEND t1512 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t1580) = VALUE abap_bool( ).
      DATA(t1581) = VALUE abap_bool( ).
      DATA t1582 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1582 = me->conf->zlnt_view_read_sr_74010c810334( ).
      IF t1582 IS BOUND.
        IF t1582->has = abap_true.
          t1581 = xsdbool( t1582->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1580 = t1581.
      IF t1581 = abap_true.
        t1580 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_statem_field_symbol ).
      ENDIF.
      IF t1580 = abap_true.
        DATA t1586 TYPE REF TO zcl_lnt_abstract_token.
        t1586 = t17->find_direct_token_by_text( i_text = |STRUCTURE| ).
        IF xsdbool( t1586 IS BOUND ) = abap_true.
          DATA t1593 TYPE REF TO zcl_lnt_issue.
          CLEAR t1593.
          DATA t1595 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t1595.
          t1595 = t1586.
          DATA(t1598) = VALUE string( ).
          DATA t1599 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t1606 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1606.
          DATA t1610 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1610.
          t1610->load( ).
          APPEND |SingleFile| TO t1610->items.
          t1610->save( ).
          t1610->load( ).
          APPEND |Styleguide| TO t1610->items.
          t1610->save( ).
          t1610->load( ).
          APPEND |Quickfix| TO t1610->items.
          t1610->save( ).
          t1606 = t1610.
          DATA t1620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1620.
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
          t1620 = t1624.
          DATA t1626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1626.
          DATA(t1629) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t1629 = t1629 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t1630) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1630->has = abap_true.
          t1630->value = t1629.
          t1626 = t1630.
          DATA t1632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1632.
          CLEAR t1632.
          DATA t1634 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1634.
          CLEAR t1634.
          DATA t1636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1636.
          CLEAR t1636.
          t1599 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1626 i_good_example = t1632 i_extended_information = t1620 i_tags = t1606 i_pragma = t1634 i_pseudo_comment = t1636 ).
          CREATE OBJECT t1599->zlnt_view_ownkeys_b0e8086400eb.
          t1599->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1638.
          t1599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1638 ).
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
          DATA t1645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1645.
          t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1645 ).
          DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1647.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1647 ).
          ENDIF.
          DATA t1649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1649.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1649 ).
          ENDIF.
          DATA t1651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1651.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1651 ).
          ENDIF.
          DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1653.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1653 ).
          ENDIF.
          DATA t1655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1655.
          IF t1599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1655 ).
          ENDIF.
          t1598 = t1599->key.
          DATA t1656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1656.
          t1656 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t1658 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1658.
          t1593 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t1595 i_message_26cb = |FIELD-SYMBOLS ... STRUCTURE is obsolete| i_key = t1598 i_severity = t1656 i_fix = t1658 ).
          t2->load( ).
          APPEND t1593 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t1661) = VALUE abap_bool( ).
      DATA(t1662) = VALUE abap_bool( ).
      DATA(t1663) = VALUE abap_bool( ).
      DATA t1664 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1664 = me->conf->zlnt_view_read_sr_e7ae581b8c54( ).
      IF t1664 IS BOUND.
        IF t1664->has = abap_true.
          t1663 = xsdbool( t1664->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1662 = t1663.
      IF t1663 = abap_true.
        t1662 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_type_pools ).
      ENDIF.
      t1661 = t1662.
      IF t1662 = abap_true.
        DATA t1672 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t1672.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t1672 = zcl_lnt_version_module=>release_b8cd.
        t1661 = zcl_lnt_version_module=>release_at_least( i_running = t12 i_required = t1672->get( p0 = |v702| ) ).
      ENDIF.
      IF t1661 = abap_true.
        DATA t1675 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t1675 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t17 ).
        DATA t1679 TYPE REF TO zcl_lnt_issue.
        CLEAR t1679.
        DATA(t1683) = VALUE string( ).
        DATA t1684 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t1691 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t1691.
        DATA t1695 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t1695.
        t1695->load( ).
        APPEND |SingleFile| TO t1695->items.
        t1695->save( ).
        t1695->load( ).
        APPEND |Styleguide| TO t1695->items.
        t1695->save( ).
        t1695->load( ).
        APPEND |Quickfix| TO t1695->items.
        t1695->save( ).
        t1691 = t1695.
        DATA t1705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1705.
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
        t1705 = t1709.
        DATA t1711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1711.
        DATA(t1714) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t1714 = t1714 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t1715) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1715->has = abap_true.
        t1715->value = t1714.
        t1711 = t1715.
        DATA t1717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1717.
        CLEAR t1717.
        DATA t1719 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1719.
        CLEAR t1719.
        DATA t1721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1721.
        CLEAR t1721.
        t1684 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1711 i_good_example = t1717 i_extended_information = t1705 i_tags = t1691 i_pragma = t1719 i_pseudo_comment = t1721 ).
        CREATE OBJECT t1684->zlnt_view_ownkeys_b0e8086400eb.
        t1684->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1723.
        t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1723 ).
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
        DATA t1730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1730.
        t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1730 ).
        DATA t1732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1732.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1732 ).
        ENDIF.
        DATA t1734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1734.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1734 ).
        ENDIF.
        DATA t1736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1736.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1736 ).
        ENDIF.
        DATA t1738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1738.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1738 ).
        ENDIF.
        DATA t1740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t1740.
        IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1740 ).
        ENDIF.
        t1683 = t1684->key.
        DATA t1741 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1741.
        t1741 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t1743 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1743.
        t1743 = t1675.
        DATA t1747 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1747.
        t1679 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Statement "TYPE-POOLS" is obsolete| i_key = t1683 i_severity = t1741 i_fix = t1743 i_alternative_fixes = t1747 ).
        t2->load( ).
        APPEND t1679 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t1750) = VALUE abap_bool( ).
      DATA(t1751) = VALUE abap_bool( ).
      DATA t1752 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1752 = me->conf->zlnt_view_read_sr_f913da31cb26( ).
      IF t1752 IS BOUND.
        IF t1752->has = abap_true.
          t1751 = xsdbool( t1752->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1750 = t1751.
      IF t1751 = abap_true.
        t1750 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_free_memory ).
      ENDIF.
      IF t1750 = abap_true.
        DATA(t1757) = VALUE string( ).
        DATA(t1758) = VALUE string( ).
        t1758 = t17->concat_tokens( ).
        DATA(t1760) = strlen( t1758 ).
        t1757 = t1758.
        IF t1757 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1757 TO UPPER CASE.
        ELSE.
          t1757 = zlnt_runtime_uppe_91169605024d=>full( t1757 ).
        ENDIF.
        IF xsdbool( t1757 = |FREE MEMORY.| ) = abap_true.
          DATA t1765 TYPE REF TO zcl_lnt_issue.
          CLEAR t1765.
          DATA(t1769) = VALUE string( ).
          DATA t1770 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t1777 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1777.
          DATA t1781 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1781.
          t1781->load( ).
          APPEND |SingleFile| TO t1781->items.
          t1781->save( ).
          t1781->load( ).
          APPEND |Styleguide| TO t1781->items.
          t1781->save( ).
          t1781->load( ).
          APPEND |Quickfix| TO t1781->items.
          t1781->save( ).
          t1777 = t1781.
          DATA t1791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1791.
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
          t1791 = t1795.
          DATA t1797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1797.
          DATA(t1800) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t1800 = t1800 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t1801) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1801->has = abap_true.
          t1801->value = t1800.
          t1797 = t1801.
          DATA t1803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1803.
          CLEAR t1803.
          DATA t1805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1805.
          CLEAR t1805.
          DATA t1807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1807.
          CLEAR t1807.
          t1770 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1797 i_good_example = t1803 i_extended_information = t1791 i_tags = t1777 i_pragma = t1805 i_pseudo_comment = t1807 ).
          CREATE OBJECT t1770->zlnt_view_ownkeys_b0e8086400eb.
          t1770->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1809.
          t1770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1809 ).
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
          DATA t1816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1816.
          t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1816 ).
          DATA t1818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1818.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1818 ).
          ENDIF.
          DATA t1820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1820.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1820 ).
          ENDIF.
          DATA t1822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1822.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1822 ).
          ENDIF.
          DATA t1824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1824.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1824 ).
          ENDIF.
          DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1826.
          IF t1770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1826 ).
          ENDIF.
          t1769 = t1770->key.
          DATA t1827 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1827.
          t1827 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t1829 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1829.
          DATA t1830 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1830.
          t1765 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Statement "FREE MEMORY" without ID is obsolete| i_key = t1769 i_severity = t1827 i_fix = t1829 i_alternative_fixes = t1830 ).
          t2->load( ).
          APPEND t1765 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t1833) = VALUE abap_bool( ).
      DATA(t1834) = VALUE abap_bool( ).
      DATA t1835 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1835 = me->conf->zlnt_view_read_sr_6a5fcc262012( ).
      IF t1835 IS BOUND.
        IF t1835->has = abap_true.
          t1834 = xsdbool( t1835->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1833 = t1834.
      IF t1834 = abap_true.
        t1833 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_exit ).
      ENDIF.
      IF t1833 = abap_true.
        DATA(t1840) = VALUE string( ).
        DATA(t1841) = VALUE string( ).
        t1841 = t17->concat_tokens( ).
        DATA(t1843) = strlen( t1841 ).
        t1840 = t1841.
        IF t1840 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1840 TO UPPER CASE.
        ELSE.
          t1840 = zlnt_runtime_uppe_91169605024d=>full( t1840 ).
        ENDIF.
        IF xsdbool( t1840 = |EXIT FROM SQL.| ) = abap_true.
          DATA t1848 TYPE REF TO zcl_lnt_issue.
          CLEAR t1848.
          DATA(t1852) = VALUE string( ).
          DATA t1853 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t1860 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1860.
          DATA t1864 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1864.
          t1864->load( ).
          APPEND |SingleFile| TO t1864->items.
          t1864->save( ).
          t1864->load( ).
          APPEND |Styleguide| TO t1864->items.
          t1864->save( ).
          t1864->load( ).
          APPEND |Quickfix| TO t1864->items.
          t1864->save( ).
          t1860 = t1864.
          DATA t1874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1874.
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
          t1874 = t1878.
          DATA t1880 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1880.
          DATA(t1883) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t1883 = t1883 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t1884) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1884->has = abap_true.
          t1884->value = t1883.
          t1880 = t1884.
          DATA t1886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1886.
          CLEAR t1886.
          DATA t1888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1888.
          CLEAR t1888.
          DATA t1890 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1890.
          CLEAR t1890.
          t1853 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1880 i_good_example = t1886 i_extended_information = t1874 i_tags = t1860 i_pragma = t1888 i_pseudo_comment = t1890 ).
          CREATE OBJECT t1853->zlnt_view_ownkeys_b0e8086400eb.
          t1853->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1892.
          t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1892 ).
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
          DATA t1899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1899.
          t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1899 ).
          DATA t1901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1901.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1901 ).
          ENDIF.
          DATA t1903 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1903.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1903 ).
          ENDIF.
          DATA t1905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1905.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1905 ).
          ENDIF.
          DATA t1907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1907.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1907 ).
          ENDIF.
          DATA t1909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1909.
          IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1909 ).
          ENDIF.
          t1852 = t1853->key.
          DATA t1910 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1910.
          t1910 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t1912 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1912.
          DATA t1913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1913.
          t1848 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Statement "EXIT FROM SQL" is obsolete| i_key = t1852 i_severity = t1910 i_fix = t1912 i_alternative_fixes = t1913 ).
          t2->load( ).
          APPEND t1848 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t1916) = VALUE abap_bool( ).
      DATA(t1917) = VALUE abap_bool( ).
      DATA t1918 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t1918 = me->conf->zlnt_view_read_sr_8bc7f98b4ab7( ).
      IF t1918 IS BOUND.
        IF t1918->has = abap_true.
          t1917 = xsdbool( t1918->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t1916 = t1917.
      IF t1917 = abap_true.
        t1916 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_sort ).
      ENDIF.
      IF t1916 = abap_true.
        DATA t1922 TYPE REF TO zcl_lnt_expression_node.
        t1922 = t17->find_expression_after_token( i_text = |BY| ).
        DATA(t1926) = VALUE abap_bool( ).
        DATA(t1927) = VALUE abap_bool( ).
        t1927 = xsdbool( t1922 IS BOUND AND t1922 IS INSTANCE OF zcl_lnt_expression_node ).
        t1926 = t1927.
        IF t1927 = abap_true.
          DATA t1930 TYPE REF TO zif_lnt_statement_runnable.
          t1930 = t1922->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t1926 = xsdbool( t1930 IS BOUND AND t1930 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
        ENDIF.
        IF t1926 = abap_true.
          DATA t1934 TYPE REF TO zcl_lnt_issue.
          CLEAR t1934.
          DATA(t1938) = VALUE string( ).
          DATA t1939 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t1946 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t1946.
          DATA t1950 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t1950.
          t1950->load( ).
          APPEND |SingleFile| TO t1950->items.
          t1950->save( ).
          t1950->load( ).
          APPEND |Styleguide| TO t1950->items.
          t1950->save( ).
          t1950->load( ).
          APPEND |Quickfix| TO t1950->items.
          t1950->save( ).
          t1946 = t1950.
          DATA t1960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1960.
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
          t1960 = t1964.
          DATA t1966 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1966.
          DATA(t1969) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t1969 = t1969 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t1970) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1970->has = abap_true.
          t1970->value = t1969.
          t1966 = t1970.
          DATA t1972 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1972.
          CLEAR t1972.
          DATA t1974 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1974.
          CLEAR t1974.
          DATA t1976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1976.
          CLEAR t1976.
          t1939 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t1966 i_good_example = t1972 i_extended_information = t1960 i_tags = t1946 i_pragma = t1974 i_pseudo_comment = t1976 ).
          CREATE OBJECT t1939->zlnt_view_ownkeys_b0e8086400eb.
          t1939->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t1978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1978.
          t1939->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1978 ).
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
          DATA t1985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1985.
          t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1985 ).
          DATA t1987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1987.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1987 ).
          ENDIF.
          DATA t1989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1989.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1989 ).
          ENDIF.
          DATA t1991 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1991.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1991 ).
          ENDIF.
          DATA t1993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1993.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1993 ).
          ENDIF.
          DATA t1995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t1995.
          IF t1939->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t1939->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t1995 ).
          ENDIF.
          t1938 = t1939->key.
          DATA t1996 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1996.
          t1996 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t1998 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t1998.
          DATA t1999 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t1999.
          t1934 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Statement "SORT itab BY <fs>" is obsolete| i_key = t1938 i_severity = t1996 i_fix = t1998 i_alternative_fixes = t1999 ).
          t2->load( ).
          APPEND t1934 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t2002) = VALUE abap_bool( ).
      DATA(t2003) = VALUE abap_bool( ).
      DATA t2004 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t2004 = me->conf->zlnt_view_read_sr_2a70a957561f( ).
      IF t2004 IS BOUND.
        IF t2004->has = abap_true.
          t2003 = xsdbool( t2004->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2002 = t2003.
      IF t2003 = abap_true.
        t2002 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_call_transformation ).
      ENDIF.
      IF t2002 = abap_true.
        DATA t2009 TYPE REF TO zcl_lnt_expression_node.
        t2009 = t17->find_expression_after_token( i_text = |OBJECTS| ).
        IF xsdbool( t2009 IS BOUND ) = abap_true.
          DATA t2015 TYPE REF TO zcl_lnt_issue.
          CLEAR t2015.
          DATA(t2019) = VALUE string( ).
          DATA t2020 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t2027 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2027.
          DATA t2031 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t2031.
          t2031->load( ).
          APPEND |SingleFile| TO t2031->items.
          t2031->save( ).
          t2031->load( ).
          APPEND |Styleguide| TO t2031->items.
          t2031->save( ).
          t2031->load( ).
          APPEND |Quickfix| TO t2031->items.
          t2031->save( ).
          t2027 = t2031.
          DATA t2041 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2041.
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
          t2041 = t2045.
          DATA t2047 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2047.
          DATA(t2050) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t2050 = t2050 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t2051) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2051->has = abap_true.
          t2051->value = t2050.
          t2047 = t2051.
          DATA t2053 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2053.
          CLEAR t2053.
          DATA t2055 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2055.
          CLEAR t2055.
          DATA t2057 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2057.
          CLEAR t2057.
          t2020 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2047 i_good_example = t2053 i_extended_information = t2041 i_tags = t2027 i_pragma = t2055 i_pseudo_comment = t2057 ).
          CREATE OBJECT t2020->zlnt_view_ownkeys_b0e8086400eb.
          t2020->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2059.
          t2020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2059 ).
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
          DATA t2066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2066.
          t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2066 ).
          DATA t2068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2068.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2068 ).
          ENDIF.
          DATA t2070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2070.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2070 ).
          ENDIF.
          DATA t2072 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2072.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2072 ).
          ENDIF.
          DATA t2074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2074.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2074 ).
          ENDIF.
          DATA t2076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2076.
          IF t2020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2020->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2076 ).
          ENDIF.
          t2019 = t2020->key.
          DATA t2077 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2077.
          t2077 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t2079 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2079.
          DATA t2080 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2080.
          t2015 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Use PARAMETERS instead of OBJECTS| i_key = t2019 i_severity = t2077 i_fix = t2079 i_alternative_fixes = t2080 ).
          t2->load( ).
          APPEND t2015 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t2083) = VALUE abap_bool( ).
      DATA(t2084) = VALUE abap_bool( ).
      DATA t2085 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t2085 = me->conf->zlnt_view_read_sr_3922bd87722d( ).
      IF t2085 IS BOUND.
        IF t2085->has = abap_true.
          t2084 = xsdbool( t2085->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2083 = t2084.
      IF t2084 = abap_true.
        t2083 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_replace ).
      ENDIF.
      IF t2083 = abap_true.
        DATA(t2089) = VALUE string( ).
        DATA(t2090) = VALUE string( ).
        DATA(t2091) = VALUE string( ).
        t2091 = t17->concat_tokens( ).
        DATA(t2093) = strlen( t2091 ).
        t2090 = t2091.
        IF t2090 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t2090 TO UPPER CASE.
        ELSE.
          t2090 = zlnt_runtime_uppe_91169605024d=>full( t2090 ).
        ENDIF.
        t2089 = t2090.
        DATA(t2095) = VALUE i( ).
        DATA(t2097) = | OCCURENCES |.
        DATA(t2098) = strlen( t2089 ).
        IF t2097 IS INITIAL.
          t2095 = 0.
        ELSE.
          FIND t2097 IN t2089 MATCH OFFSET t2095.
          IF sy-subrc <> 0.
            t2095 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t2095 >= 0 ) = abap_true.
          DATA t2101 TYPE REF TO zcl_lnt_issue.
          CLEAR t2101.
          DATA(t2105) = VALUE string( ).
          DATA t2106 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t2113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2113.
          DATA t2117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t2117.
          t2117->load( ).
          APPEND |SingleFile| TO t2117->items.
          t2117->save( ).
          t2117->load( ).
          APPEND |Styleguide| TO t2117->items.
          t2117->save( ).
          t2117->load( ).
          APPEND |Quickfix| TO t2117->items.
          t2117->save( ).
          t2113 = t2117.
          DATA t2127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2127.
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
          t2127 = t2131.
          DATA t2133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2133.
          DATA(t2136) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t2136 = t2136 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t2137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2137->has = abap_true.
          t2137->value = t2136.
          t2133 = t2137.
          DATA t2139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2139.
          CLEAR t2139.
          DATA t2141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2141.
          CLEAR t2141.
          DATA t2143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2143.
          CLEAR t2143.
          t2106 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2133 i_good_example = t2139 i_extended_information = t2127 i_tags = t2113 i_pragma = t2141 i_pseudo_comment = t2143 ).
          CREATE OBJECT t2106->zlnt_view_ownkeys_b0e8086400eb.
          t2106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2145.
          t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2145 ).
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
          DATA t2152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2152.
          t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2152 ).
          DATA t2154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2154.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2154 ).
          ENDIF.
          DATA t2156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2156.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2156 ).
          ENDIF.
          DATA t2158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2158.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2158 ).
          ENDIF.
          DATA t2160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2160.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2160 ).
          ENDIF.
          DATA t2162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2162.
          IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2162 ).
          ENDIF.
          t2105 = t2106->key.
          DATA t2163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2163.
          t2163 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t2165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2165.
          DATA t2166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2166.
          t2101 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Use "OCCURRENCES"| i_key = t2105 i_severity = t2163 i_fix = t2165 i_alternative_fixes = t2166 ).
          t2->load( ).
          APPEND t2101 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t2169) = VALUE abap_bool( ).
      DATA(t2170) = VALUE abap_bool( ).
      DATA t2171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t2171 = me->conf->zlnt_view_read_sr_07dfda9b4838( ).
      IF t2171 IS BOUND.
        IF t2171->has = abap_true.
          t2170 = xsdbool( t2171->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2169 = t2170.
      IF t2170 = abap_true.
        t2169 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_form_definition ).
      ENDIF.
      IF t2169 = abap_true.
        DATA t2176 TYPE REF TO zcl_lnt_issue.
        CLEAR t2176.
        DATA(t2180) = VALUE string( ).
        DATA t2181 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t2188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2188.
        DATA t2192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t2192.
        t2192->load( ).
        APPEND |SingleFile| TO t2192->items.
        t2192->save( ).
        t2192->load( ).
        APPEND |Styleguide| TO t2192->items.
        t2192->save( ).
        t2192->load( ).
        APPEND |Quickfix| TO t2192->items.
        t2192->save( ).
        t2188 = t2192.
        DATA t2202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2202.
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
        t2202 = t2206.
        DATA t2208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2208.
        DATA(t2211) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t2211 = t2211 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t2212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t2212->has = abap_true.
        t2212->value = t2211.
        t2208 = t2212.
        DATA t2214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2214.
        CLEAR t2214.
        DATA t2216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2216.
        CLEAR t2216.
        DATA t2218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2218.
        CLEAR t2218.
        t2181 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2208 i_good_example = t2214 i_extended_information = t2202 i_tags = t2188 i_pragma = t2216 i_pseudo_comment = t2218 ).
        CREATE OBJECT t2181->zlnt_view_ownkeys_b0e8086400eb.
        t2181->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t2220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2220.
        t2181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2220 ).
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
        DATA t2227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2227.
        t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2227 ).
        DATA t2229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2229.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2229 ).
        ENDIF.
        DATA t2231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2231.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2231 ).
        ENDIF.
        DATA t2233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2233.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2233 ).
        ENDIF.
        DATA t2235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2235.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2235 ).
        ENDIF.
        DATA t2237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2237.
        IF t2181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2237 ).
        ENDIF.
        t2180 = t2181->key.
        DATA t2238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2238.
        t2238 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t2240 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t2240.
        DATA t2241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2241.
        t2176 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |FORM DEFINITION| i_key = t2180 i_severity = t2238 i_fix = t2240 i_alternative_fixes = t2241 ).
        t2->load( ).
        APPEND t2176 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t2244) = VALUE abap_bool( ).
      DATA(t2245) = VALUE abap_bool( ).
      DATA t2246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t2246 = me->conf->zlnt_view_read_sr_a82fd91e3e4c( ).
      IF t2246 IS BOUND.
        IF t2246->has = abap_true.
          t2245 = xsdbool( t2246->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2244 = t2245.
      IF t2245 = abap_true.
        t2244 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_form ).
      ENDIF.
      IF t2244 = abap_true.
        DATA t2251 TYPE REF TO zcl_lnt_abstract_token.
        t2251 = t17->find_direct_token_by_text( i_text = |IMPLEMENTATION| ).
        IF xsdbool( t2251 IS BOUND ) = abap_true.
          DATA t2255 TYPE REF TO zcl_lnt_issue.
          CLEAR t2255.
          DATA(t2259) = VALUE string( ).
          DATA t2260 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t2267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2267.
          DATA t2271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t2271.
          t2271->load( ).
          APPEND |SingleFile| TO t2271->items.
          t2271->save( ).
          t2271->load( ).
          APPEND |Styleguide| TO t2271->items.
          t2271->save( ).
          t2271->load( ).
          APPEND |Quickfix| TO t2271->items.
          t2271->save( ).
          t2267 = t2271.
          DATA t2281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2281.
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
          t2281 = t2285.
          DATA t2287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2287.
          DATA(t2290) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t2290 = t2290 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t2291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2291->has = abap_true.
          t2291->value = t2290.
          t2287 = t2291.
          DATA t2293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2293.
          CLEAR t2293.
          DATA t2295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2295.
          CLEAR t2295.
          DATA t2297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2297.
          CLEAR t2297.
          t2260 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2287 i_good_example = t2293 i_extended_information = t2281 i_tags = t2267 i_pragma = t2295 i_pseudo_comment = t2297 ).
          CREATE OBJECT t2260->zlnt_view_ownkeys_b0e8086400eb.
          t2260->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2299.
          t2260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2299 ).
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
          DATA t2306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2306.
          t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2306 ).
          DATA t2308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2308.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2308 ).
          ENDIF.
          DATA t2310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2310.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2310 ).
          ENDIF.
          DATA t2312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2312.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2312 ).
          ENDIF.
          DATA t2314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2314.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2314 ).
          ENDIF.
          DATA t2316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2316.
          IF t2260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2260->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2316 ).
          ENDIF.
          t2259 = t2260->key.
          DATA t2317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2317.
          t2317 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t2319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2319.
          DATA t2320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2320.
          t2255 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |FORM IMPLEMENTATION| i_key = t2259 i_severity = t2317 i_fix = t2319 i_alternative_fixes = t2320 ).
          t2->load( ).
          APPEND t2255 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t2323) = VALUE abap_bool( ).
      DATA(t2324) = VALUE abap_bool( ).
      DATA t2325 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t2325 = me->conf->zlnt_view_read_sr_2b4baa7f3ded( ).
      IF t2325 IS BOUND.
        IF t2325->has = abap_true.
          t2324 = xsdbool( t2325->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2323 = t2324.
      IF t2324 = abap_true.
        t2323 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_loop_extract ).
      ENDIF.
      IF t2323 = abap_true.
        DATA t2330 TYPE REF TO zcl_lnt_issue.
        CLEAR t2330.
        DATA(t2334) = VALUE string( ).
        DATA t2335 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t2342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2342.
        DATA t2346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t2346.
        t2346->load( ).
        APPEND |SingleFile| TO t2346->items.
        t2346->save( ).
        t2346->load( ).
        APPEND |Styleguide| TO t2346->items.
        t2346->save( ).
        t2346->load( ).
        APPEND |Quickfix| TO t2346->items.
        t2346->save( ).
        t2342 = t2346.
        DATA t2356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2356.
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
        t2356 = t2360.
        DATA t2362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2362.
        DATA(t2365) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t2365 = t2365 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t2366) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t2366->has = abap_true.
        t2366->value = t2365.
        t2362 = t2366.
        DATA t2368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2368.
        CLEAR t2368.
        DATA t2370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2370.
        CLEAR t2370.
        DATA t2372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2372.
        CLEAR t2372.
        t2335 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2362 i_good_example = t2368 i_extended_information = t2356 i_tags = t2342 i_pragma = t2370 i_pseudo_comment = t2372 ).
        CREATE OBJECT t2335->zlnt_view_ownkeys_b0e8086400eb.
        t2335->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t2374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2374.
        t2335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2374 ).
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
        DATA t2381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2381.
        t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2381 ).
        DATA t2383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2383.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2383 ).
        ENDIF.
        DATA t2385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2385.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2385 ).
        ENDIF.
        DATA t2387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2387.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2387 ).
        ENDIF.
        DATA t2389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2389.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2389 ).
        ENDIF.
        DATA t2391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2391.
        IF t2335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2391 ).
        ENDIF.
        t2334 = t2335->key.
        DATA t2392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2392.
        t2392 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t2394 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t2394.
        DATA t2395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2395.
        t2330 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |LOOP extract| i_key = t2334 i_severity = t2392 i_fix = t2394 i_alternative_fixes = t2395 ).
        t2->load( ).
        APPEND t2330 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t2398) = VALUE abap_bool( ).
      DATA(t2399) = VALUE abap_bool( ).
      DATA(t2400) = VALUE abap_bool( ).
      DATA t2401 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t2401 = me->conf->zlnt_view_read_sr_285c76f87f81( ).
      IF t2401 IS BOUND.
        IF t2401->has = abap_true.
          t2400 = xsdbool( t2401->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t2399 = t2400.
      IF t2400 = abap_true.
        t2399 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_sort_dataset ).
      ENDIF.
      t2398 = t2399.
      IF t2399 = abap_true.
        DATA t2407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2407.
        DATA t2409 TYPE REF TO zcl_lnt_abstract_node.
        t2409 = t17.
        t2407 ?= t2409->children.
        t2407->load( ).
        t2398 = xsdbool( lines( t2407->items ) = 2 ).
      ENDIF.
      IF t2398 = abap_true.
        DATA t2415 TYPE REF TO zcl_lnt_issue.
        CLEAR t2415.
        DATA(t2419) = VALUE string( ).
        DATA t2420 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t2427 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2427.
        DATA t2431 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t2431.
        t2431->load( ).
        APPEND |SingleFile| TO t2431->items.
        t2431->save( ).
        t2431->load( ).
        APPEND |Styleguide| TO t2431->items.
        t2431->save( ).
        t2431->load( ).
        APPEND |Quickfix| TO t2431->items.
        t2431->save( ).
        t2427 = t2431.
        DATA t2441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2441.
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
        t2441 = t2445.
        DATA t2447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2447.
        DATA(t2450) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
        t2450 = t2450 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
        DATA(t2451) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t2451->has = abap_true.
        t2451->value = t2450.
        t2447 = t2451.
        DATA t2453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2453.
        CLEAR t2453.
        DATA t2455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2455.
        CLEAR t2455.
        DATA t2457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2457.
        CLEAR t2457.
        t2420 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2447 i_good_example = t2453 i_extended_information = t2441 i_tags = t2427 i_pragma = t2455 i_pseudo_comment = t2457 ).
        CREATE OBJECT t2420->zlnt_view_ownkeys_b0e8086400eb.
        t2420->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t2459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2459.
        t2420->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2459 ).
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
        DATA t2466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2466.
        t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2466 ).
        DATA t2468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2468.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2468 ).
        ENDIF.
        DATA t2470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2470.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2470 ).
        ENDIF.
        DATA t2472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2472.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2472 ).
        ENDIF.
        DATA t2474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2474.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2474 ).
        ENDIF.
        DATA t2476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t2476.
        IF t2420->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t2420->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2476 ).
        ENDIF.
        t2419 = t2420->key.
        DATA t2477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2477.
        t2477 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t2479 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t2479.
        DATA t2480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t2480.
        t2415 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |SORT extract| i_key = t2419 i_severity = t2477 i_fix = t2479 i_alternative_fixes = t2480 ).
        t2->load( ).
        APPEND t2415 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t2483) = VALUE abap_bool( ).
      DATA(t2484) = VALUE abap_bool( ).
      DATA(t2485) = VALUE abap_bool( ).
      DATA t2489 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2489.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2489 = zcl_lnt_version_module=>release_b8cd.
      t2485 = zcl_lnt_version_module=>release_at_least( i_running = t12 i_required = t2489->get( p0 = |v754| ) ).
      t2484 = t2485.
      IF t2485 = abap_true.
        t2484 = me->conf->zlnt_view_read_sr_76df01b8d502( ).
      ENDIF.
      t2483 = t2484.
      IF t2484 = abap_true.
        DATA(t2493) = VALUE abap_bool( ).
        DATA(t2494) = VALUE abap_bool( ).
        DATA(t2495) = VALUE abap_bool( ).
        DATA(t2496) = VALUE abap_bool( ).
        DATA(t2497) = VALUE abap_bool( ).
        DATA(t2498) = VALUE abap_bool( ).
        t2498 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t2497 = t2498.
        IF t2498 = abap_false.
          t2497 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_select_loop ).
        ENDIF.
        t2496 = t2497.
        IF t2497 = abap_false.
          t2496 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_delete_database ).
        ENDIF.
        t2495 = t2496.
        IF t2496 = abap_false.
          t2495 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_insert_database ).
        ENDIF.
        t2494 = t2495.
        IF t2495 = abap_false.
          t2494 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_modify_database ).
        ENDIF.
        t2493 = t2494.
        IF t2494 = abap_false.
          t2493 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_update_database ).
        ENDIF.
        t2483 = t2493.
      ENDIF.
      IF t2483 = abap_true.
        DATA(t2510) = VALUE string( ).
        DATA(t2511) = VALUE string( ).
        DATA(t2512) = VALUE string( ).
        t2512 = t17->concat_tokens( ).
        DATA(t2514) = strlen( t2512 ).
        t2511 = t2512.
        IF t2511 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t2511 TO UPPER CASE.
        ELSE.
          t2511 = zlnt_runtime_uppe_91169605024d=>full( t2511 ).
        ENDIF.
        t2510 = t2511.
        DATA(t2516) = VALUE i( ).
        DATA(t2518) = | CLIENT SPECIFIED|.
        DATA(t2519) = strlen( t2510 ).
        IF t2518 IS INITIAL.
          t2516 = 0.
        ELSE.
          FIND t2518 IN t2510 MATCH OFFSET t2516.
          IF sy-subrc <> 0.
            t2516 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t2516 >= 0 ) = abap_true.
          DATA t2522 TYPE REF TO zcl_lnt_issue.
          CLEAR t2522.
          DATA(t2526) = VALUE string( ).
          DATA t2527 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t2534 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t2534.
          DATA t2538 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t2538.
          t2538->load( ).
          APPEND |SingleFile| TO t2538->items.
          t2538->save( ).
          t2538->load( ).
          APPEND |Styleguide| TO t2538->items.
          t2538->save( ).
          t2538->load( ).
          APPEND |Quickfix| TO t2538->items.
          t2538->save( ).
          t2534 = t2538.
          DATA t2548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2548.
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
          t2548 = t2552.
          DATA t2554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2554.
          DATA(t2557) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
          t2557 = t2557 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
          DATA(t2558) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2558->has = abap_true.
          t2558->value = t2557.
          t2554 = t2558.
          DATA t2560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2560.
          CLEAR t2560.
          DATA t2562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2562.
          CLEAR t2562.
          DATA t2564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2564.
          CLEAR t2564.
          t2527 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2554 i_good_example = t2560 i_extended_information = t2548 i_tags = t2534 i_pragma = t2562 i_pseudo_comment = t2564 ).
          CREATE OBJECT t2527->zlnt_view_ownkeys_b0e8086400eb.
          t2527->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2566.
          t2527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2566 ).
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
          DATA t2573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2573.
          t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2573 ).
          DATA t2575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2575.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2575 ).
          ENDIF.
          DATA t2577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2577.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2577 ).
          ENDIF.
          DATA t2579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2579.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2579 ).
          ENDIF.
          DATA t2581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2581.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2581 ).
          ENDIF.
          DATA t2583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2583.
          IF t2527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t2527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2583 ).
          ENDIF.
          t2526 = t2527->key.
          DATA t2584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2584.
          t2584 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t2586 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t2586.
          DATA t2587 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t2587.
          t2522 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |Use USING CLIENT| i_key = t2526 i_severity = t2584 i_fix = t2586 i_alternative_fixes = t2587 ).
          t2->load( ).
          APPEND t2522 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA(t2590) = VALUE abap_bool( ).
      DATA(t2591) = VALUE abap_bool( ).
      DATA t2595 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2595.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2595 = zcl_lnt_version_module=>release_b8cd.
      t2591 = zcl_lnt_version_module=>release_at_least( i_running = t12 i_required = t2595->get( p0 = |v756| ) ).
      t2590 = t2591.
      IF t2591 = abap_true.
        t2590 = me->conf->zlnt_view_read_sr_1e511c9f8d04( ).
      ENDIF.
      IF t2590 = abap_true.
        DATA(t2599) = VALUE abap_bool( ).
        DATA(t2600) = VALUE abap_bool( ).
        t2600 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_find ).
        t2599 = t2600.
        IF t2600 = abap_false.
          t2599 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_replace ).
        ENDIF.
        IF t2599 = abap_true.
          DATA(t2604) = VALUE abap_bool( ).
          DATA t2605 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t2605.
          DATA t2606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2606.
          DATA t2608 TYPE REF TO zcl_lnt_expression_node.
          DATA(t2611) = zlnt_runtime_desc_78196487750d=>zlnt_member_d176_70730c0e7184.
          t2608 = t17->find_first_expression( i_type_9913 = t2611 ).
          DATA t2612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t2612.
          IF xsdbool( t2608 IS INITIAL ) = abap_true.
            CLEAR t2612.
          ELSE.
            DATA(t2616) = VALUE string( ).
            t2616 = t2608->concat_tokens( ).
            DATA(t2619) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2619->has = abap_true.
            t2619->value = t2616.
            t2612 = t2619.
          ENDIF.
          t2606 = t2612.
          DATA t2620 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t2620.
          DATA(t2621) = VALUE abap_bool( ).
          IF t2606 IS INITIAL.
            t2621 = abap_true.
          ELSEIF t2606->has = abap_false.
            t2621 = abap_true.
          ENDIF.
          IF t2621 = abap_true.
            CLEAR t2620.
          ELSE.
            DATA(t2624) = VALUE abap_bool( ).
            DATA(t2625) = VALUE i( ).
            DATA(t2626) = VALUE string( ).
            t2626 = t2606->value.
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
            t2624 = xsdbool( t2625 >= 0 ).
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
            DATA t2633 TYPE REF TO zcl_lnt_issue.
            CLEAR t2633.
            DATA(t2637) = VALUE string( ).
            DATA t2638 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t2645 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t2645.
            DATA t2649 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t2649.
            t2649->load( ).
            APPEND |SingleFile| TO t2649->items.
            t2649->save( ).
            t2649->load( ).
            APPEND |Styleguide| TO t2649->items.
            t2649->save( ).
            t2649->load( ).
            APPEND |Quickfix| TO t2649->items.
            t2649->save( ).
            t2645 = t2649.
            DATA t2659 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2659.
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
            t2659 = t2663.
            DATA t2665 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2665.
            DATA(t2668) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
            t2668 = t2668 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
            DATA(t2669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t2669->has = abap_true.
            t2669->value = t2668.
            t2665 = t2669.
            DATA t2671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2671.
            CLEAR t2671.
            DATA t2673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2673.
            CLEAR t2673.
            DATA t2675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2675.
            CLEAR t2675.
            t2638 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2665 i_good_example = t2671 i_extended_information = t2659 i_tags = t2645 i_pragma = t2673 i_pseudo_comment = t2675 ).
            CREATE OBJECT t2638->zlnt_view_ownkeys_b0e8086400eb.
            t2638->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2677.
            t2638->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2677 ).
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
            DATA t2684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2684.
            t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2684 ).
            DATA t2686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2686.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2686 ).
            ENDIF.
            DATA t2688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2688.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2688 ).
            ENDIF.
            DATA t2690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2690.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2690 ).
            ENDIF.
            DATA t2692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2692.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2692 ).
            ENDIF.
            DATA t2694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2694.
            IF t2638->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t2638->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2694 ).
            ENDIF.
            t2637 = t2638->key.
            DATA t2695 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t2695.
            t2695 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t2697 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t2697.
            DATA t2698 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t2698.
            t2633 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |REGEX obsolete, use PCRE| i_key = t2637 i_severity = t2695 i_fix = t2697 i_alternative_fixes = t2698 ).
            t2->load( ).
            APPEND t2633 TO t2->items.
            t2->save( ).
          ENDIF.
        ELSE.
          DATA t2701 TYPE REF TO zcl_lnt_expression_node.
          DATA(t2704) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
          t2701 = t17->find_first_expression( i_type_9913 = t2704 ).
          DATA t2705 TYPE REF TO zcl_lnt_expression_node.
          DATA(t2708) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
          t2705 = t17->find_first_expression( i_type_9913 = t2708 ).
          DATA(t2709) = VALUE abap_bool( ).
          DATA(t2710) = VALUE abap_bool( ).
          t2710 = xsdbool( t2701 IS BOUND ).
          t2709 = t2710.
          IF t2710 = abap_true.
            t2709 = xsdbool( t2705 IS BOUND ).
          ENDIF.
          IF t2709 = abap_true.
            DATA(t2714) = VALUE string( ).
            t2714 = t2701->concat_tokens( ).
            DATA(t2718) = VALUE string( ).
            t2718 = t2705->concat_tokens( ).
            IF xsdbool( t2714 = |cl_abap_regex| ) = abap_true.
              IF xsdbool( t2718 = |create_posix| ) = abap_true.
                DATA t2729 TYPE REF TO zcl_lnt_issue.
                CLEAR t2729.
                DATA(t2733) = VALUE string( ).
                DATA t2734 TYPE REF TO zcl_lnt_irule_metadata.
                DATA t2741 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t2741.
                DATA t2745 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t2745.
                t2745->load( ).
                APPEND |SingleFile| TO t2745->items.
                t2745->save( ).
                t2745->load( ).
                APPEND |Styleguide| TO t2745->items.
                t2745->save( ).
                t2745->load( ).
                APPEND |Quickfix| TO t2745->items.
                t2745->save( ).
                t2741 = t2745.
                DATA t2755 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2755.
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
                t2755 = t2759.
                DATA t2761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2761.
                DATA(t2764) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
                t2764 = t2764 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
                DATA(t2765) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t2765->has = abap_true.
                t2765->value = t2764.
                t2761 = t2765.
                DATA t2767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2767.
                CLEAR t2767.
                DATA t2769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2769.
                CLEAR t2769.
                DATA t2771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2771.
                CLEAR t2771.
                t2734 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2761 i_good_example = t2767 i_extended_information = t2755 i_tags = t2741 i_pragma = t2769 i_pseudo_comment = t2771 ).
                CREATE OBJECT t2734->zlnt_view_ownkeys_b0e8086400eb.
                t2734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t2773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2773.
                t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2773 ).
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
                DATA t2780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2780.
                t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2780 ).
                DATA t2782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2782.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2782 ).
                ENDIF.
                DATA t2784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2784.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2784 ).
                ENDIF.
                DATA t2786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2786.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2786 ).
                ENDIF.
                DATA t2788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2788.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2788 ).
                ENDIF.
                DATA t2790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t2790.
                IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2790 ).
                ENDIF.
                t2733 = t2734->key.
                DATA t2791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t2791.
                t2791 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                DATA t2793 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t2793.
                DATA t2794 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t2794.
                t2729 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |create_posix obsolete, use create_pcre| i_key = t2733 i_severity = t2791 i_fix = t2793 i_alternative_fixes = t2794 ).
                t2->load( ).
                APPEND t2729 TO t2->items.
                t2->save( ).
              ENDIF.
            ELSE.
              IF xsdbool( t2714 = |cl_abap_matcher| ) = abap_true.
                DATA(t2801) = VALUE i( ).
                DATA(t2803) = |posix|.
                DATA(t2804) = strlen( t2718 ).
                IF t2803 IS INITIAL.
                  t2801 = 0.
                ELSE.
                  FIND t2803 IN t2718 MATCH OFFSET t2801.
                  IF sy-subrc <> 0.
                    t2801 = -1.
                  ENDIF.
                ENDIF.
                IF xsdbool( t2801 >= 0 ) = abap_true.
                  DATA t2807 TYPE REF TO zcl_lnt_issue.
                  CLEAR t2807.
                  DATA(t2811) = VALUE string( ).
                  DATA t2812 TYPE REF TO zcl_lnt_irule_metadata.
                  DATA t2819 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t2819.
                  DATA t2823 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t2823.
                  t2823->load( ).
                  APPEND |SingleFile| TO t2823->items.
                  t2823->save( ).
                  t2823->load( ).
                  APPEND |Styleguide| TO t2823->items.
                  t2823->save( ).
                  t2823->load( ).
                  APPEND |Quickfix| TO t2823->items.
                  t2823->save( ).
                  t2819 = t2823.
                  DATA t2833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2833.
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
                  t2833 = t2837.
                  DATA t2839 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2839.
                  DATA(t2842) = |REFRESH itab.\n\nCOMPUTE foo = 2 + 2.\n\nMULTIPLY lv_foo BY 2.\n\n|.
                  t2842 = t2842 && |INTERFACE intf LOAD.\n\nIF foo IS SUPPLIED.\nENDIF.|.
                  DATA(t2843) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t2843->has = abap_true.
                  t2843->value = t2842.
                  t2839 = t2843.
                  DATA t2845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2845.
                  CLEAR t2845.
                  DATA t2847 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2847.
                  CLEAR t2847.
                  DATA t2849 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2849.
                  CLEAR t2849.
                  t2812 = NEW zcl_lnt_irule_metadata( i_key = |obsolete_statement| i_title = |Obsolete statements| i_short_description = |Checks for usages of certain obsolete statements| i_bad_example = t2839 i_good_example = t2845 i_extended_information = t2833 i_tags = t2819 i_pragma = t2847 i_pseudo_comment = t2849 ).
                  CREATE OBJECT t2812->zlnt_view_ownkeys_b0e8086400eb.
                  t2812->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t2851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2851.
                  t2812->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t2851 ).
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
                  DATA t2858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2858.
                  t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t2858 ).
                  DATA t2860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2860.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t2860 ).
                  ENDIF.
                  DATA t2862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2862.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t2862 ).
                  ENDIF.
                  DATA t2864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2864.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t2864 ).
                  ENDIF.
                  DATA t2866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2866.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t2866 ).
                  ENDIF.
                  DATA t2868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t2868.
                  IF t2812->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t2812->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t2868 ).
                  ENDIF.
                  t2811 = t2812->key.
                  DATA t2869 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t2869.
                  t2869 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                  DATA t2871 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t2871.
                  DATA t2872 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t2872.
                  t2807 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t17 i_message_26cb = |posix methods obsolete, use pcre methods| i_key = t2811 i_severity = t2869 i_fix = t2871 i_alternative_fixes = t2872 ).
                  t2->load( ).
                  APPEND t2807 TO t2->items.
                  t2->save( ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_statement_node.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_refresh ) = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_abstract_node.
      t10 = t3.
      t8 ?= t10->children.
      t8->load( ).
      IF xsdbool( lines( t8->items ) = 6 ) = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
      result = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t3->get_first_token( ) i_text = |CLEAR| ).
      RETURN.
    ENDIF.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_compute ) = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_abstract_node.
      t29 = t3.
      t27 ?= t29->children.
      t26 = t27.
      t26->load( ).
      IF xsdbool( lines( t26->items ) = 5 ) = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        t37 = t3->get_first_token( ).
        DATA t40 TYPE REF TO zcl_lnt_position.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        t42 = t37.
        DATA(t45) = VALUE f( ).
        t45 = t42->start->row.
        DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t52 = t42->start->col.
        DATA(t58) = VALUE f( ).
        t58 = strlen( t42->str ).
        DATA(t63) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t63->has = abap_true.
        t63->value = t58.
        t40 = NEW zcl_lnt_position( i_row = t45 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t52 right = t63 op = `+` ) ).
        DATA(t65) = VALUE f( ).
        t65 = t40->row.
        DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t71 = t40->col.
        DATA(t77) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t77->has = abap_true.
        t77->value = CONV f( 1 ).
        t40 = NEW zcl_lnt_position( i_row = t65 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t71 right = t77 op = `+` ) ).
        DATA t82 TYPE REF TO zcl_lnt_position.
        t82 = t37->start.
        result = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t82 i_end = t40 ).
        RETURN.
      ELSE.
        DATA(t89) = VALUE string( ).
        DATA t91 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t93 TYPE REF TO object.
        t26->load( ).
        READ TABLE t26->items INDEX 3 INTO t93.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t94 ?= t93.
          DATA t95 TYPE REF TO object.
          t95 = t94->as_ref( ).
          t91 ?= t95.
        ELSE.
          t91 ?= t93.
        ENDIF.
        t89 = t91->concat_tokens( ).
        DATA(t96) = VALUE string( ).
        DATA t98 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t100 TYPE REF TO object.
        t26->load( ).
        READ TABLE t26->items INDEX 5 INTO t100.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t101 ?= t100.
          DATA t102 TYPE REF TO object.
          t102 = t101->as_ref( ).
          t98 ?= t102.
        ELSE.
          t98 ?= t100.
        ENDIF.
        t96 = t98->concat_tokens( ).
        DATA(t103) = VALUE string( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA(t109) = strlen( t89 ).
        t106 = |{ t89 }{ | = EXACT #( | }|.
        DATA(t111) = strlen( t106 ).
        t105 = |{ t106 }{ t96 }|.
        DATA(t113) = strlen( t105 ).
        t103 = |{ t105 }{ | ).| }|.
        DATA t118 TYPE REF TO zcl_lnt_position.
        t118 = t3->get_first_token( )->start.
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        t135 = t3->get_last_token( ).
        DATA(t138) = VALUE f( ).
        t138 = t135->start->row.
        DATA t145 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t145 = t135->start->col.
        DATA(t151) = VALUE f( ).
        t151 = strlen( t135->str ).
        DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t156->has = abap_true.
        t156->value = t151.
        result = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t118 i_end = NEW zcl_lnt_position( i_row = t138 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t145 right = t156 op = `+` ) ) i_text = t103 ).
        RETURN.
      ENDIF.
    ELSE.
      DATA(t159) = VALUE abap_bool( ).
      DATA(t160) = VALUE abap_bool( ).
      t160 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_add ).
      t159 = t160.
      IF t160 = abap_false.
        t159 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_subtract ).
      ENDIF.
      IF t159 = abap_true.
        DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t167 TYPE REF TO zcl_lnt_abstract_node.
        t167 = t3.
        t165 ?= t167->children.
        t164 = t165.
        DATA(t171) = VALUE string( ).
        DATA t173 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t175 TYPE REF TO object.
        t164->load( ).
        READ TABLE t164->items INDEX 2 INTO t175.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t175 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t176 ?= t175.
          DATA t177 TYPE REF TO object.
          t177 = t176->as_ref( ).
          t173 ?= t177.
        ELSE.
          t173 ?= t175.
        ENDIF.
        t171 = t173->concat_tokens( ).
        DATA(t178) = VALUE string( ).
        DATA t180 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t182 TYPE REF TO object.
        t164->load( ).
        READ TABLE t164->items INDEX 4 INTO t182.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t182 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t183 ?= t182.
          DATA t184 TYPE REF TO object.
          t184 = t183->as_ref( ).
          t180 ?= t184.
        ELSE.
          t180 ?= t182.
        ENDIF.
        t178 = t180->concat_tokens( ).
        DATA(t185) = VALUE string( ).
        t185 = ||.
        IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_add ) = abap_true.
          DATA(t190) = VALUE string( ).
          DATA(t191) = VALUE string( ).
          DATA(t192) = VALUE string( ).
          DATA(t193) = VALUE string( ).
          DATA(t196) = strlen( t178 ).
          t193 = |{ t178 }{ | = | }|.
          DATA(t198) = strlen( t193 ).
          t192 = |{ t193 }{ t178 }|.
          DATA(t200) = strlen( t192 ).
          t191 = |{ t192 }{ | + | }|.
          DATA(t202) = strlen( t191 ).
          t190 = |{ t191 }{ t171 }|.
          DATA(t204) = strlen( t190 ).
          t185 = |{ t190 }{ |.| }|.
        ELSE.
          IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_subtract ) = abap_true.
            DATA(t208) = VALUE string( ).
            DATA(t209) = VALUE string( ).
            DATA(t210) = VALUE string( ).
            DATA(t211) = VALUE string( ).
            DATA(t214) = strlen( t178 ).
            t211 = |{ t178 }{ | = | }|.
            DATA(t216) = strlen( t211 ).
            t210 = |{ t211 }{ t178 }|.
            DATA(t218) = strlen( t210 ).
            t209 = |{ t210 }{ | - | }|.
            DATA(t220) = strlen( t209 ).
            t208 = |{ t209 }{ t171 }|.
            DATA(t222) = strlen( t208 ).
            t185 = |{ t208 }{ |.| }|.
          ENDIF.
        ENDIF.
        DATA t227 TYPE REF TO zcl_lnt_position.
        t227 = t3->get_first_token( )->start.
        DATA t244 TYPE REF TO zcl_lnt_abstract_token.
        t244 = t3->get_last_token( ).
        DATA(t247) = VALUE f( ).
        t247 = t244->start->row.
        DATA t254 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t254 = t244->start->col.
        DATA(t260) = VALUE f( ).
        t260 = strlen( t244->str ).
        DATA(t265) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t265->has = abap_true.
        t265->value = t260.
        result = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t227 i_end = NEW zcl_lnt_position( i_row = t247 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t254 right = t265 op = `+` ) ) i_text = t185 ).
        RETURN.
      ELSE.
        DATA(t268) = VALUE abap_bool( ).
        DATA(t269) = VALUE abap_bool( ).
        t269 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_multiply ).
        t268 = t269.
        IF t269 = abap_false.
          t268 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_divide ).
        ENDIF.
        IF t268 = abap_true.
          DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t276 TYPE REF TO zcl_lnt_abstract_node.
          t276 = t3.
          t274 ?= t276->children.
          t273 = t274.
          DATA(t280) = VALUE string( ).
          DATA t282 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA t284 TYPE REF TO object.
          t273->load( ).
          READ TABLE t273->items INDEX 2 INTO t284.
          DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t284 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t285 ?= t284.
            DATA t286 TYPE REF TO object.
            t286 = t285->as_ref( ).
            t282 ?= t286.
          ELSE.
            t282 ?= t284.
          ENDIF.
          t280 = t282->concat_tokens( ).
          DATA(t287) = VALUE string( ).
          DATA t289 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA t291 TYPE REF TO object.
          t273->load( ).
          READ TABLE t273->items INDEX 4 INTO t291.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t291 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t292 ?= t291.
            DATA t293 TYPE REF TO object.
            t293 = t292->as_ref( ).
            t289 ?= t293.
          ELSE.
            t289 ?= t291.
          ENDIF.
          t287 = t289->concat_tokens( ).
          DATA(t294) = VALUE string( ).
          t294 = ||.
          IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_multiply ) = abap_true.
            DATA(t299) = VALUE string( ).
            DATA(t300) = VALUE string( ).
            DATA(t301) = VALUE string( ).
            DATA(t302) = VALUE string( ).
            DATA(t305) = strlen( t280 ).
            t302 = |{ t280 }{ | = | }|.
            DATA(t307) = strlen( t302 ).
            t301 = |{ t302 }{ t280 }|.
            DATA(t309) = strlen( t301 ).
            t300 = |{ t301 }{ | * | }|.
            DATA(t311) = strlen( t300 ).
            t299 = |{ t300 }{ t287 }|.
            DATA(t313) = strlen( t299 ).
            t294 = |{ t299 }{ |.| }|.
          ELSE.
            IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_divide ) = abap_true.
              DATA(t317) = VALUE string( ).
              DATA(t318) = VALUE string( ).
              DATA(t319) = VALUE string( ).
              DATA(t320) = VALUE string( ).
              DATA(t323) = strlen( t280 ).
              t320 = |{ t280 }{ | = | }|.
              DATA(t325) = strlen( t320 ).
              t319 = |{ t320 }{ t280 }|.
              DATA(t327) = strlen( t319 ).
              t318 = |{ t319 }{ | / | }|.
              DATA(t329) = strlen( t318 ).
              t317 = |{ t318 }{ t287 }|.
              DATA(t331) = strlen( t317 ).
              t294 = |{ t317 }{ |.| }|.
            ENDIF.
          ENDIF.
          DATA t336 TYPE REF TO zcl_lnt_position.
          t336 = t3->get_first_token( )->start.
          DATA t353 TYPE REF TO zcl_lnt_abstract_token.
          t353 = t3->get_last_token( ).
          DATA(t356) = VALUE f( ).
          t356 = t353->start->row.
          DATA t363 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t363 = t353->start->col.
          DATA(t369) = VALUE f( ).
          t369 = strlen( t353->str ).
          DATA(t374) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t374->has = abap_true.
          t374->value = t369.
          result = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t336 i_end = NEW zcl_lnt_position( i_row = t356 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t363 right = t374 op = `+` ) ) i_text = t294 ).
          RETURN.
        ELSE.
          IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_move ) = abap_true.
            DATA t384 TYPE REF TO zcl_lnt_abstract_token.
            t384 = t3->colon.
            DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF xsdbool( xsdbool( t384 IS INITIAL ) = abap_false ) = abap_true.
              CLEAR result.
              RETURN.
            ENDIF.
            DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t395 TYPE REF TO zcl_lnt_abstract_node.
            t395 = t3.
            t393 ?= t395->children.
            t392 = t393.
            DATA(t399) = VALUE string( ).
            DATA t401 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t403 TYPE REF TO object.
            t392->load( ).
            READ TABLE t392->items INDEX 2 INTO t403.
            DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t403 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t404 ?= t403.
              DATA t405 TYPE REF TO object.
              t405 = t404->as_ref( ).
              t401 ?= t405.
            ELSE.
              t401 ?= t403.
            ENDIF.
            t399 = t401->concat_tokens( ).
            DATA(t406) = VALUE string( ).
            DATA t408 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t410 TYPE REF TO object.
            t392->load( ).
            READ TABLE t392->items INDEX 4 INTO t410.
            DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t410 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t411 ?= t410.
              DATA t412 TYPE REF TO object.
              t412 = t411->as_ref( ).
              t408 ?= t412.
            ELSE.
              t408 ?= t410.
            ENDIF.
            t406 = t408->concat_tokens( ).
            DATA(t413) = VALUE string( ).
            DATA(t414) = VALUE string( ).
            DATA(t415) = VALUE string( ).
            DATA t416 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t418 TYPE REF TO object.
            t392->load( ).
            READ TABLE t392->items INDEX 3 INTO t418.
            DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t418 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t419 ?= t418.
              DATA t420 TYPE REF TO object.
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
            IF xsdbool( t413 = |TO| ) = abap_true.
              t413 = | = |.
            ELSE.
              t413 = | ?= |.
            ENDIF.
            DATA(t427) = VALUE string( ).
            DATA(t429) = VALUE string( ).
            DATA(t430) = VALUE string( ).
            DATA(t433) = strlen( t406 ).
            t430 = |{ t406 }{ t413 }|.
            DATA(t435) = strlen( t430 ).
            t429 = |{ t430 }{ t399 }|.
            DATA(t437) = strlen( t429 ).
            t427 = |{ t429 }{ |.| }|.
            DATA t442 TYPE REF TO zcl_lnt_position.
            t442 = t3->get_first_token( )->start.
            DATA t459 TYPE REF TO zcl_lnt_abstract_token.
            t459 = t3->get_last_token( ).
            DATA(t462) = VALUE f( ).
            t462 = t459->start->row.
            DATA t469 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t469 = t459->start->col.
            DATA(t475) = VALUE f( ).
            t475 = strlen( t459->str ).
            DATA(t480) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t480->has = abap_true.
            t480->value = t475.
            result = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t442 i_end = NEW zcl_lnt_position( i_row = t462 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t469 right = t480 op = `+` ) ) i_text = t427 ).
            RETURN.
          ELSE.
            DATA(t483) = VALUE abap_bool( ).
            DATA(t484) = VALUE abap_bool( ).
            t484 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class_definition_load ).
            t483 = t484.
            IF t484 = abap_false.
              t483 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_interface_load ).
            ENDIF.
            IF t483 = abap_true.
              DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class_definition_load ) = abap_true.
                DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t495 TYPE REF TO zcl_lnt_abstract_token.
                DATA t496 TYPE REF TO zif_lnt_union_4cf1d054.
                DATA t497 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t499 TYPE REF TO zcl_lnt_abstract_node.
                t499 = t3.
                t497 ?= t499->children.
                DATA t503 TYPE REF TO object.
                t497->load( ).
                READ TABLE t497->items INDEX 4 INTO t503.
                DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t503 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t504 ?= t503.
                  DATA t505 TYPE REF TO object.
                  t505 = t504->as_ref( ).
                  t496 ?= t505.
                ELSE.
                  t496 ?= t503.
                ENDIF.
                t495 = t496->get_first_token( ).
                IF t495 IS BOUND.
                  DATA t506 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  DATA t507 TYPE REF TO object.
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
                t488 = t494.
              ELSE.
                DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t512 TYPE REF TO zcl_lnt_abstract_token.
                DATA t513 TYPE REF TO zif_lnt_union_4cf1d054.
                DATA t514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t516 TYPE REF TO zcl_lnt_abstract_node.
                t516 = t3.
                t514 ?= t516->children.
                DATA t520 TYPE REF TO object.
                t514->load( ).
                READ TABLE t514->items INDEX 3 INTO t520.
                DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t520 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t521 ?= t520.
                  DATA t522 TYPE REF TO object.
                  t522 = t521->as_ref( ).
                  t513 ?= t522.
                ELSE.
                  t513 ?= t520.
                ENDIF.
                t512 = t513->get_first_token( ).
                IF t512 IS BOUND.
                  DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  DATA t524 TYPE REF TO object.
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
                t488 = t511.
              ENDIF.
              DATA t526 TYPE REF TO zcl_lnt_position.
              DATA t529 TYPE REF TO zcl_lnt_abstract_token.
              DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t530 = t488.
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
              t526 = t529->start.
              DATA(t535) = VALUE f( ).
              t535 = t526->row.
              DATA t541 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t541 = t526->col.
              DATA(t547) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t547->has = abap_true.
              t547->value = CONV f( 1 ).
              t526 = NEW zcl_lnt_position( i_row = t535 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t541 right = t547 op = `-` ) ).
              DATA t554 TYPE REF TO zcl_lnt_abstract_token.
              DATA t555 TYPE REF TO zcl_lnt_abstract_token.
              DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t556 = t488.
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
              DATA(t559) = VALUE f( ).
              t559 = t554->start->row.
              DATA t566 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t566 = t554->start->col.
              DATA(t572) = VALUE f( ).
              t572 = strlen( t554->str ).
              DATA(t577) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t577->has = abap_true.
              t577->value = t572.
              result = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t526 i_end = NEW zcl_lnt_position( i_row = t559 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t566 right = t577 op = `+` ) ) ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

    CLEAR result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_obslt_sttmnt_cnf( me->gt_cn_in_sr_rl_ob_st_ts_ob_stt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_obslt_sttmnt_cnf( me->gt_cn_in_sr_rl_ob_st_ts_ob_stt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_obslt_sttmnt_cnf.
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
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ob_st_ts_ob_stt( i_file = i_file ) ).

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
