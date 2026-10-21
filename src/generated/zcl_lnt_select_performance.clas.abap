* TS: src/rules/select_performance.ts:30:1 SelectPerformance
CLASS zcl_lnt_select_performance DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slct_prfrmnc_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_slc_prf_ts_slc_prf IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_select_performance.
    METHODS gt_cn_in_sr_rl_sl_pr_ts_sl_prf RETURNING VALUE(result) TYPE REF TO zcl_lnt_slct_prfrmnc_cnf.
    METHODS st_cn_in_sr_rl_sl_pr_ts_sl_prf IMPORTING i_conf TYPE REF TO zcl_lnt_slct_prfrmnc_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_number_of_columns IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zif_lnt_file i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_select_performance IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_slct_prfrmnc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |ENDSELECT: not reported when the corresponding SELECT has PA|.
    t11 = t11 && |CKAGE SIZE\n\nSELECT *: not reported if using INTO/APPENDING C|.
    t11 = t11 && |ORRESPONDING FIELDS OF|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Performance| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |SELECT field1, field2 FROM table\n    INTO @DATA(structure) U|.
    t29 = t29 && |P TO 1 ROWS ORDER BY field3 DESCENDING.\nENDSELECT.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |SELECT field1, field2 FROM table UP TO 1 ROWS\n  INTO TABLE @|.
    t35 = t35 && |DATA(table) ORDER BY field3 DESCENDING|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |select_performance| i_title = |SELECT performance| i_short_description = |Various checks regarding SELECT performance.| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_slc_prf_ts_slc_prf.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sl_pr_ts_sl_prf.
    DATA t2 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t2 = me->conf->zlnt_view_read_sr_ab290707774e( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t2 IS INITIAL.
      t7 = abap_true.
    ELSEIF t2->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA(t9) = me->conf.
      DATA t12 TYPE f.
      DATA(t13) = CONV i( zcl_lnt_slct_prfrmnc_mdl=>default_columns ).
      t12 = t13.
      DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t14->has = abap_true.
      t14->value = t12.
      t9->zlnt_view_write_s_4a7271f88713( p0 = t14 ).
    ENDIF.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sl_pr_ts_sl_prf.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    t10 ?= t1.
    t8 = t10->parsed.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t8->load( ).
      IF t17 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t8->items INDEX t17 + 1 INTO t16.
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
      DATA t20 TYPE REF TO zcl_lnt_structure_node.
      t20 = t15->structure.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF xsdbool( t20 IS INITIAL ) = abap_true.
        result = t6.
        RETURN.
      ENDIF.
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t35 = me->conf->zlnt_view_read_sr_88b195cbd2e8( ).
      IF t35 IS BOUND.
        IF t35->has = abap_true.
          t34 = xsdbool( t35->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t34 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t40 TYPE REF TO zcl_lnt_structure_node.
        t40 = t20.
        DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
        t38 = t40->find_all_structures( i_type_9913 = t42 ).
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t43.
        IF xsdbool( t38 IS BOUND ) = abap_true.
          t43 = t38.
        ELSE.
          CREATE OBJECT t43.
        ENDIF.
        t37 = t43.
        DATA t48 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t48.
        DATA t49 TYPE REF TO object.
        CLEAR t49.
        DATA(t50) = VALUE i( ).
        DO.
          t37->load( ).
          IF t50 >= lines( t37->items ).
            EXIT.
          ENDIF.
          CLEAR t49.
          READ TABLE t37->items INDEX t50 + 1 INTO t49.
          t50 = t50 + 1.
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t51.
          CLEAR t48.
          IF t49 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t51 ?= t49.
            DATA t52 TYPE REF TO object.
            t52 = t51->as_ref( ).
            t48 ?= t52.
          ELSE.
            t48 ?= t49.
          ENDIF.
          DATA t53 TYPE REF TO zcl_lnt_statement_node.
          DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d612_458d252c73b7.
          t53 = t48->find_direct_statement( i_type_9913 = t56 ).
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t61.
          t58 = xsdbool( t53 IS INITIAL ).
          t57 = t58.
          IF t58 = abap_false.
            DATA(t66) = VALUE i( ).
            DATA t67 TYPE string.
            DATA t68 TYPE string.
            t68 = t53->concat_tokens( ).
            DATA(t71) = strlen( t68 ).
            t67 = t68.
            IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t67 TO UPPER CASE.
            ELSE.
              t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
            ENDIF.
            DATA(t72) = |PACKAGE SIZE|.
            DATA(t73) = strlen( t67 ).
            IF t72 IS INITIAL.
              t66 = 0.
            ELSE.
              FIND t72 IN t67 MATCH OFFSET t66.
              IF sy-subrc <> 0.
                t66 = -1.
              ENDIF.
            ENDIF.
            t57 = xsdbool( t66 >= 0 ).
          ENDIF.
          IF t57 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t78 TYPE REF TO zcl_lnt_issue.
          CLEAR t78.
          DATA t80 TYPE REF TO zcl_lnt_statement_node.
          t80 = t53.
          DATA(t83) = VALUE string( ).
          DATA t84 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA(t94) = |ENDSELECT: not reported when the corresponding SELECT has PA|.
          t94 = t94 && |CKAGE SIZE\n\nSELECT *: not reported if using INTO/APPENDING C|.
          t94 = t94 && |ORRESPONDING FIELDS OF|.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = t94.
          t91 = t95.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t97.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t101.
          t101->load( ).
          APPEND |SingleFile| TO t101->items.
          t101->save( ).
          t101->load( ).
          APPEND |Performance| TO t101->items.
          t101->save( ).
          t97 = t101.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t112) = |SELECT field1, field2 FROM table\n    INTO @DATA(structure) U|.
          t112 = t112 && |P TO 1 ROWS ORDER BY field3 DESCENDING.\nENDSELECT.|.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t112.
          t109 = t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t118) = |SELECT field1, field2 FROM table UP TO 1 ROWS\n  INTO TABLE @|.
          t118 = t118 && |DATA(table) ORDER BY field3 DESCENDING|.
          DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t119->has = abap_true.
          t119->value = t118.
          t115 = t119.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t84 = NEW zcl_lnt_irule_metadata( i_key = |select_performance| i_title = |SELECT performance| i_short_description = |Various checks regarding SELECT performance.| i_bad_example = t109 i_good_example = t115 i_extended_information = t91 i_tags = t97 i_pragma = t121 i_pseudo_comment = t123 ).
          CREATE OBJECT t84->zlnt_view_ownkeys_b0e8086400eb.
          t84->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t125 ).
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t126 ).
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t127 ).
          ENDIF.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t128 ).
          ENDIF.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t129 ).
          ENDIF.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t130 ).
          ENDIF.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t131 ).
          ENDIF.
          CREATE OBJECT t84->zlnt_json_ownkeys_70e5fd461788.
          t84->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t133 ).
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t135 ).
          ENDIF.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t137 ).
          ENDIF.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t139 ).
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t141 ).
          ENDIF.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t143 ).
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t145 ).
          ENDIF.
          t83 = t84->key.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t146 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t148.
          DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t149.
          t78 = zcl_lnt_issue=>at_statement( i_file = t15 i_statement = t80 i_message_26cb = |Avoid use of ENDSELECT| i_key = t83 i_severity = t146 i_fix = t148 i_alternative_fixes = t149 ).
          t6->load( ).
          APPEND t78 TO t6->items.
          t6->save( ).
        ENDDO.
      ENDIF.
      DATA(t150) = VALUE abap_bool( ).
      DATA t151 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t151 = me->conf->zlnt_view_read_sr_c8e927fc70bf( ).
      IF t151 IS BOUND.
        IF t151->has = abap_true.
          t150 = xsdbool( t151->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t150 = abap_true.
        DATA t153 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA(t157) = me->reg.
        DATA t158 TYPE REF TO zcl_lnt_abap_object.
        t158 ?= t1.
        t153 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t157 i_object_19cd = t158 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t163 TYPE REF TO zcl_lnt_structure_node.
        t163 = t20.
        DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316.
        t161 = t163->find_all_statements( i_type_9913 = t165 ).
        DATA(t166) = VALUE i( ).
        DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t168 TYPE REF TO zcl_lnt_structure_node.
        t168 = t20.
        DATA(t170) = zlnt_runtime_desc_78196487750d=>zlnt_member_d612_458d252c73b7.
        t167 = t168->find_all_statements( i_type_9913 = t170 ).
        DATA t171 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t171.
        DATA t172 TYPE REF TO object.
        CLEAR t172.
        DATA(t173) = VALUE i( ).
        DO.
          t167->load( ).
          IF t173 >= lines( t167->items ).
            EXIT.
          ENDIF.
          CLEAR t172.
          READ TABLE t167->items INDEX t173 + 1 INTO t172.
          t173 = t173 + 1.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          CLEAR t171.
          IF t172 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t174 ?= t172.
            DATA t175 TYPE REF TO object.
            t175 = t174->as_ref( ).
            t171 ?= t175.
          ELSE.
            t171 ?= t172.
          ENDIF.
          t161->load( ).
          APPEND t171 TO t161->items.
          t161->save( ).
        ENDDO.
        t161->load( ).
        t166 = lines( t161->items ).
        DATA t181 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t181.
        DATA t182 TYPE REF TO object.
        CLEAR t182.
        DATA(t183) = VALUE i( ).
        DO.
          t161->load( ).
          IF t183 >= lines( t161->items ).
            EXIT.
          ENDIF.
          CLEAR t182.
          READ TABLE t161->items INDEX t183 + 1 INTO t182.
          t183 = t183 + 1.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          CLEAR t181.
          IF t182 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t184 ?= t182.
            DATA t185 TYPE REF TO object.
            t185 = t184->as_ref( ).
            t181 ?= t185.
          ELSE.
            t181 ?= t182.
          ENDIF.
          DATA(t186) = VALUE string( ).
          DATA t187 TYPE string.
          DATA t188 TYPE string.
          t188 = t181->concat_tokens( ).
          DATA(t190) = strlen( t188 ).
          t187 = t188.
          IF t187 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t187 TO UPPER CASE.
          ELSE.
            t187 = zlnt_runtime_uppe_91169605024d=>full( t187 ).
          ENDIF.
          t186 = t187.
          DATA(t191) = VALUE abap_bool( ).
          DATA(t192) = VALUE abap_bool( ).
          DATA(t193) = VALUE abap_bool( ).
          DATA(t195) = |SELECT * |.
          DATA(t196) = strlen( t186 ).
          DATA t197 TYPE i.
          DATA(t198) = VALUE i( ).
          DATA(t199) = VALUE string( ).
          t197 = strlen( t195 ).
          IF t197 = 0.
            t193 = abap_true.
          ELSEIF t197 <= t196.
            t198 = 0.
            t199 = t186+t198(t197).
            IF t199 = t195.
              t193 = abap_true.
            ENDIF.
          ENDIF.
          t192 = xsdbool( t193 = abap_false ).
          t191 = t192.
          IF t192 = abap_true.
            DATA(t202) = VALUE abap_bool( ).
            DATA(t204) = |SELECT SINGLE * |.
            DATA(t205) = strlen( t186 ).
            DATA t206 TYPE i.
            DATA(t207) = VALUE i( ).
            DATA(t208) = VALUE string( ).
            t206 = strlen( t204 ).
            IF t206 = 0.
              t202 = abap_true.
            ELSEIF t206 <= t205.
              t207 = 0.
              t208 = t186+t207(t206).
              IF t208 = t204.
                t202 = abap_true.
              ENDIF.
            ENDIF.
            t191 = xsdbool( t202 = abap_false ).
          ENDIF.
          IF t191 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t210) = VALUE abap_bool( ).
            DATA(t211) = VALUE abap_bool( ).
            DATA(t212) = VALUE i( ).
            DATA(t214) = | INTO CORRESPONDING FIELDS OF |.
            DATA(t215) = strlen( t186 ).
            IF t214 IS INITIAL.
              t212 = 0.
            ELSE.
              FIND t214 IN t186 MATCH OFFSET t212.
              IF sy-subrc <> 0.
                t212 = -1.
              ENDIF.
            ENDIF.
            t211 = xsdbool( t212 >= 0 ).
            t210 = t211.
            IF t211 = abap_false.
              DATA(t218) = VALUE i( ).
              DATA(t220) = | APPENDING CORRESPONDING FIELDS OF |.
              DATA(t221) = strlen( t186 ).
              IF t220 IS INITIAL.
                t218 = 0.
              ELSE.
                FIND t220 IN t186 MATCH OFFSET t218.
                IF sy-subrc <> 0.
                  t218 = -1.
                ENDIF.
              ENDIF.
              t210 = xsdbool( t218 >= 0 ).
            ENDIF.
            IF t210 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
          DATA t223 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t223 = me->find_number_of_columns( i_s = t181 i_file = t15 i_spaghetti = t153 ).
          DATA(t228) = VALUE abap_bool( ).
          DATA(t229) = VALUE abap_bool( ).
          IF t223 IS BOUND.
            IF t223->has = abap_true.
              IF t223->number_special <> 0.
                t229 = xsdbool( t223->number_special <> 1 ).
              ELSE.
                t229 = xsdbool( t223->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
          ENDIF.
          t228 = t229.
          IF t229 = abap_true.
            DATA(t232) = VALUE f( ).
            IF t223->number_special <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t232 = t223->value.
            DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t235 = CAST zcl_lnt_slct_prfrmnc_cnf( me->gt_cn_in_sr_rl_sl_pr_ts_sl_prf( ) )->zlnt_view_read_sr_ab290707774e( ).
            DATA(t238) = VALUE abap_bool( ).
            DATA(t239) = VALUE abap_bool( ).
            DATA(t240) = VALUE abap_bool( ).
            IF t235 IS INITIAL.
              t240 = abap_true.
            ELSEIF t235->has = abap_false.
              t240 = abap_true.
            ENDIF.
            t239 = xsdbool( t240 = abap_false ).
            t238 = t239.
            IF t239 = abap_true.
              IF t235->number_special <> 0.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t238 = xsdbool( t232 <= t235->value ).
            ENDIF.
            t228 = t238.
          ENDIF.
          IF t228 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t249 TYPE REF TO zcl_lnt_issue.
          CLEAR t249.
          DATA t251 TYPE REF TO zcl_lnt_abstract_token.
          t251 = t181->get_first_token( ).
          DATA(t254) = VALUE string( ).
          DATA t255 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          DATA(t265) = |ENDSELECT: not reported when the corresponding SELECT has PA|.
          t265 = t265 && |CKAGE SIZE\n\nSELECT *: not reported if using INTO/APPENDING C|.
          t265 = t265 && |ORRESPONDING FIELDS OF|.
          DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t266->has = abap_true.
          t266->value = t265.
          t262 = t266.
          DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t268.
          DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t272.
          t272->load( ).
          APPEND |SingleFile| TO t272->items.
          t272->save( ).
          t272->load( ).
          APPEND |Performance| TO t272->items.
          t272->save( ).
          t268 = t272.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA(t283) = |SELECT field1, field2 FROM table\n    INTO @DATA(structure) U|.
          t283 = t283 && |P TO 1 ROWS ORDER BY field3 DESCENDING.\nENDSELECT.|.
          DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t284->has = abap_true.
          t284->value = t283.
          t280 = t284.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA(t289) = |SELECT field1, field2 FROM table UP TO 1 ROWS\n  INTO TABLE @|.
          t289 = t289 && |DATA(table) ORDER BY field3 DESCENDING|.
          DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t290->has = abap_true.
          t290->value = t289.
          t286 = t290.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t292.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          t255 = NEW zcl_lnt_irule_metadata( i_key = |select_performance| i_title = |SELECT performance| i_short_description = |Various checks regarding SELECT performance.| i_bad_example = t280 i_good_example = t286 i_extended_information = t262 i_tags = t268 i_pragma = t292 i_pseudo_comment = t294 ).
          CREATE OBJECT t255->zlnt_view_ownkeys_b0e8086400eb.
          t255->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t296 ).
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t297 ).
          ENDIF.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t298 ).
          ENDIF.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t299 ).
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t300 ).
          ENDIF.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t301 ).
          ENDIF.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t302 ).
          ENDIF.
          CREATE OBJECT t255->zlnt_json_ownkeys_70e5fd461788.
          t255->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t304 ).
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t306 ).
          ENDIF.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t308 ).
          ENDIF.
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t310 ).
          ENDIF.
          DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t312.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t312 ).
          ENDIF.
          DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t314.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t314 ).
          ENDIF.
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t316.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t316 ).
          ENDIF.
          t254 = t255->key.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t317 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t319.
          t249 = zcl_lnt_issue=>at_token( i_file = t15 i_token = t251 i_message_26cb = |Avoid use of SELECT *| i_key = t254 i_severity = t317 i_fix = t319 ).
          t6->load( ).
          APPEND t249 TO t6->items.
          t6->save( ).
        ENDDO.
      ENDIF.
    ENDDO.
    result = t6.

  ENDMETHOD.

  METHOD find_number_of_columns.
    DATA(t2) = i_file.
    DATA(t3) = i_spaghetti.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t4 = i_s->find_all_expressions( i_type_9913 = t7 ).
    t4->load( ).
    IF xsdbool( lines( t4->items ) = 1 ) = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_position.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA t18 TYPE REF TO object.
      t4->load( ).
      READ TABLE t4->items INDEX 1 INTO t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t18.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t18.
      ENDIF.
      t12 = t16->get_first_token( )->start.
      DATA t26 TYPE REF TO zcl_lnt_position.
      t26 = t12.
      DATA t32 TYPE string.
      t32 = t2->get_filename( ).
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t32.
      DATA t38 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t38 = t3->lookup_position( i_p = t26 i_filename = t34 ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t38 IS INITIAL ) = abap_true.
      ELSE.
        t40 = t38->find_table_reference( i_pos = t12 ).
      ENDIF.
      DATA t49 TYPE REF TO zcl_lnt_table.
      DATA(t51) = me->reg.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = |TABL|.
      DATA t58 TYPE REF TO object.
      t58 = t51->get_object( i_type_9913 = t55 i_name = t40 ).
      t49 ?= t58.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type.
      DATA t61 TYPE REF TO zcl_lnt_table.
      t61 = t49.
      DATA t63 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t61 IS INITIAL ) = abap_true.
      ELSE.
        DATA t68 TYPE REF TO zcl_lnt_table.
        t68 = t61.
        DATA(t70) = me->reg.
        t63 = t68->prs_typ_ins_src_obj_tbl_ts_tbl( i_reg_f149 = t70 ).
      ENDIF.
      t59 = t63.
      IF xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
        DATA t75 TYPE f.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t79 TYPE REF TO zcl_lnt_structure_type.
        t79 ?= t59.
        t77 = t79->components.
        t77->load( ).
        t75 = lines( t77->items ).
        DATA(t83) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t83->has = abap_true.
        t83->value = t75.
        result = t83.
        RETURN.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_slc_prf_ts_slc_prf( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_slct_prfrmnc_cnf( me->gt_cn_in_sr_rl_sl_pr_ts_sl_prf( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slct_prfrmnc_cnf( me->gt_cn_in_sr_rl_sl_pr_ts_sl_prf( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slct_prfrmnc_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t2 = NEW zcl_lnt_slct_prfrmnc_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sl_pr_ts_sl_prf( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1688_e51c7d007fbf.
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
