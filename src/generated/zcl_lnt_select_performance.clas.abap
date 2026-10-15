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
    DATA(t1) = NEW zcl_lnt_slct_prfrmnc_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |select_performance|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |SELECT performance|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Various checks regarding SELECT performance.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |ENDSELECT: not reported when the corresponding SELECT has PA|.
      t11 = t11 && |CKAGE SIZE\n\nSELECT *: not reported if using INTO/APPENDING C|.
      t11 = t11 && |ORRESPONDING FIELDS OF|.
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
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Performance|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |SELECT field1, field2 FROM table\n    INTO @DATA(structure) U|.
      t29 = t29 && |P TO 1 ROWS ORDER BY field3 DESCENDING.\nENDSELECT.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |SELECT field1, field2 FROM table UP TO 1 ROWS\n  INTO TABLE @|.
      t35 = t35 && |DATA(table) ORDER BY field3 DESCENDING|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_slc_prf_ts_slc_prf.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sl_pr_ts_sl_prf.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t3 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t4) = me->conf.
    t3 = t4->zlnt_view_read_sr_ab290707774e( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t1 = t7.
    IF t1 = abap_true.
      DATA(t9) = me->conf.
      DATA t10 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA t12 TYPE f.
        DATA(t13) = CONV i( zcl_lnt_slct_prfrmnc_mdl=>default_columns ).
        t12 = t13.
        DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t14->has = abap_true.
        t14->value = t12.
        t10 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t15.
        t10 = t15.
      ENDIF.
      t9->zlnt_view_write_s_4a7271f88713( p0 = t10 ).
    ENDIF.
    DATA(t16) = me->conf.
    result = t16.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sl_pr_ts_sl_prf.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_abap_object.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    DATA(t11) = t1.
    DATA t12 TYPE REF TO object.
    t12 = t11.
    t10 ?= t12.
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t9.
    t13 = t14->parsed.
    t8 = t13.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
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
      DATA t21 TYPE REF TO zcl_lnt_structure_node.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      DATA(t23) = t15.
      t22 = t23.
      DATA t24 TYPE REF TO zcl_lnt_structure_node.
      DATA(t25) = t22.
      t24 = t25->structure.
      t21 = t24.
      t20 = t21.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      DATA(t28) = t20.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      t29 = t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t27.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      t26 = t31.
      IF t26 = abap_true.
        DATA(t33) = t6.
        result = t33.
        RETURN.
      ENDIF.
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t36) = me->conf.
      t35 = t36->zlnt_view_read_sr_88b195cbd2e8( ).
      IF t35 IS BOUND.
        IF t35->has = abap_true.
          t34 = xsdbool( t35->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t34 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t40 TYPE REF TO zcl_lnt_structure_node.
        DATA(t41) = t20.
        t40 = t41.
        DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
        t39 = t40->find_all_structures( i_type_9913 = t42 ).
        t38 = t39.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t43.
        DATA t44 TYPE abap_bool.
        DATA(t45) = t38.
        t44 = xsdbool( t45 IS BOUND ).
        IF t44 = abap_true.
          DATA(t46) = t38.
          t43 = t46.
        ELSE.
          DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t47.
          t43 = t47.
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
          DATA t54 TYPE REF TO zcl_lnt_statement_node.
          DATA(t55) = t48.
          DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d612_458d252c73b7.
          t54 = t55->find_direct_statement( i_type_9913 = t56 ).
          t53 = t54.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA t59 TYPE REF TO zcl_lnt_statement_node.
          DATA(t60) = t53.
          t59 = t60.
          DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t62.
          t61 = t62.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = t59.
          IF t64 IS INITIAL.
            t63 = abap_true.
          ENDIF.
          t58 = t63.
          t57 = t58.
          IF t58 = abap_false.
            DATA(t65) = VALUE abap_bool( ).
            DATA(t66) = VALUE i( ).
            DATA t67 TYPE string.
            DATA t68 TYPE string.
            DATA t69 TYPE REF TO zcl_lnt_statement_node.
            DATA(t70) = t53.
            t69 = t70.
            t68 = t69->concat_tokens( ).
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
            DATA(t74) = 0.
            t65 = xsdbool( t66 >= t74 ).
            t57 = t65.
          ENDIF.
          IF t57 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t75 TYPE string.
          DATA(t76) = |Avoid use of ENDSELECT|.
          t75 = t76.
          DATA(t77) = t6.
          DATA t78 TYPE REF TO zcl_lnt_issue.
          CLEAR t78.
          DATA(t79) = t15.
          DATA t80 TYPE REF TO zcl_lnt_statement_node.
          DATA(t81) = t53.
          t80 = t81.
          DATA(t82) = t75.
          DATA(t83) = VALUE string( ).
          DATA t84 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t84.
          DATA t85 TYPE string.
          DATA(t86) = |select_performance|.
          t85 = t86.
          DATA t87 TYPE string.
          DATA(t88) = |SELECT performance|.
          t87 = t88.
          DATA t89 TYPE string.
          DATA(t90) = |Various checks regarding SELECT performance.|.
          t89 = t90.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA(t94) = |ENDSELECT: not reported when the corresponding SELECT has PA|.
            t94 = t94 && |CKAGE SIZE\n\nSELECT *: not reported if using INTO/APPENDING C|.
            t94 = t94 && |ORRESPONDING FIELDS OF|.
            DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t95->has = abap_true.
            t95->value = t94.
            t92 = t95.
          ELSE.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t96.
            t92 = t96.
          ENDIF.
          t91 = t92.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t97.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t102.
            t101 = t102.
            DATA(t103) = t101.
            DATA(t104) = |SingleFile|.
            t103->load( ).
            APPEND t104 TO t103->items.
            t103->save( ).
            DATA(t105) = t101.
            DATA(t106) = |Performance|.
            t105->load( ).
            APPEND t106 TO t105->items.
            t105->save( ).
            DATA(t107) = t101.
            t100 = t107.
            t98 = t100.
          ELSE.
            DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t108.
            t98 = t108.
          ENDIF.
          t97 = t98.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          DATA(t111) = abap_true.
          IF t111 = abap_true.
            DATA(t112) = |SELECT field1, field2 FROM table\n    INTO @DATA(structure) U|.
            t112 = t112 && |P TO 1 ROWS ORDER BY field3 DESCENDING.\nENDSELECT.|.
            DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t113->has = abap_true.
            t113->value = t112.
            t110 = t113.
          ELSE.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            t110 = t114.
          ENDIF.
          t109 = t110.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA(t118) = |SELECT field1, field2 FROM table UP TO 1 ROWS\n  INTO TABLE @|.
            t118 = t118 && |DATA(table) ORDER BY field3 DESCENDING|.
            DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t119->has = abap_true.
            t119->value = t118.
            t116 = t119.
          ELSE.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            t116 = t120.
          ENDIF.
          t115 = t116.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t121 = t122.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          t123 = t124.
          t84 = NEW zcl_lnt_irule_metadata( i_key = t85 i_title = t87 i_short_description = t89 i_bad_example = t109 i_good_example = t115 i_extended_information = t91 i_tags = t97 i_pragma = t121 i_pseudo_comment = t123 ).
          CREATE OBJECT t84->zlnt_view_ownkeys_b0e8086400eb.
          t84->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t125 ).
          ENDIF.
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
          DATA(t132) = |key|.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
          ENDIF.
          DATA(t134) = |title|.
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
          ENDIF.
          DATA(t136) = |shortDescription|.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
          ENDIF.
          DATA(t138) = |extendedInformation|.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
          ENDIF.
          DATA(t140) = |tags|.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
          ENDIF.
          DATA(t142) = |badExample|.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
          ENDIF.
          DATA(t144) = |goodExample|.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
          ENDIF.
          t83 = t84->key.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t147) = me->conf.
          t146 = t147->zlnt_view_read_sr_15c06369f827( ).
          DATA t148 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t148.
          DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t149.
          t78 = zcl_lnt_issue=>at_statement( i_file = t79 i_statement = t80 i_message_26cb = t82 i_key = t83 i_severity = t146 i_fix = t148 i_alternative_fixes = t149 ).
          t77->load( ).
          APPEND t78 TO t77->items.
          t77->save( ).
        ENDDO.
      ENDIF.
      DATA(t150) = VALUE abap_bool( ).
      DATA t151 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t152) = me->conf.
      t151 = t152->zlnt_view_read_sr_c8e927fc70bf( ).
      IF t151 IS BOUND.
        IF t151->has = abap_true.
          t150 = xsdbool( t151->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t150 = abap_true.
        DATA t153 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA t154 TYPE REF TO zif_lnt_spaghetti_scope.
        DATA t155 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t156 TYPE REF TO zcl_lnt_syntax_logic.
        DATA(t157) = me->reg.
        DATA t158 TYPE REF TO zcl_lnt_abap_object.
        DATA(t159) = t1.
        DATA t160 TYPE REF TO object.
        t160 = t159.
        t158 ?= t160.
        t156 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t157 i_object_19cd = t158 ).
        t155 = t156->run( ).
        t154 = t155->zlnt_view_read_sr_b6b1d9e0c93e( ).
        t153 = t154.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t163 TYPE REF TO zcl_lnt_structure_node.
        DATA(t164) = t20.
        t163 = t164.
        DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316.
        t162 = t163->find_all_statements( i_type_9913 = t165 ).
        t161 = t162.
        DATA(t166) = VALUE i( ).
        DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t168 TYPE REF TO zcl_lnt_structure_node.
        DATA(t169) = t20.
        t168 = t169.
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
          DATA(t176) = t161.
          DATA(t177) = t171.
          t176->load( ).
          APPEND t177 TO t176->items.
          t176->save( ).
        ENDDO.
        DATA t178 TYPE i.
        DATA(t179) = t161.
        t179->load( ).
        t178 = lines( t179->items ).
        t166 = t178.
        DATA(t180) = t161.
        DATA t181 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t181.
        DATA t182 TYPE REF TO object.
        CLEAR t182.
        DATA(t183) = VALUE i( ).
        DO.
          t180->load( ).
          IF t183 >= lines( t180->items ).
            EXIT.
          ENDIF.
          CLEAR t182.
          READ TABLE t180->items INDEX t183 + 1 INTO t182.
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
          DATA(t189) = t181.
          t188 = t189->concat_tokens( ).
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
          DATA(t194) = t186.
          DATA(t195) = |SELECT * |.
          DATA(t196) = strlen( t194 ).
          DATA t197 TYPE i.
          DATA(t198) = VALUE i( ).
          DATA(t199) = VALUE string( ).
          t197 = strlen( t195 ).
          IF t197 = 0.
            t193 = abap_true.
          ELSEIF t197 <= t196.
            t198 = 0.
            t199 = t194+t198(t197).
            IF t199 = t195.
              t193 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t200) = abap_false.
          t192 = xsdbool( t193 = t200 ).
          t191 = t192.
          IF t192 = abap_true.
            DATA(t201) = VALUE abap_bool( ).
            DATA(t202) = VALUE abap_bool( ).
            DATA(t203) = t186.
            DATA(t204) = |SELECT SINGLE * |.
            DATA(t205) = strlen( t203 ).
            DATA t206 TYPE i.
            DATA(t207) = VALUE i( ).
            DATA(t208) = VALUE string( ).
            t206 = strlen( t204 ).
            IF t206 = 0.
              t202 = abap_true.
            ELSEIF t206 <= t205.
              t207 = 0.
              t208 = t203+t207(t206).
              IF t208 = t204.
                t202 = abap_true.
              ENDIF.
            ENDIF.
            DATA(t209) = abap_false.
            t201 = xsdbool( t202 = t209 ).
            t191 = t201.
          ENDIF.
          IF t191 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t210) = VALUE abap_bool( ).
            DATA(t211) = VALUE abap_bool( ).
            DATA(t212) = VALUE i( ).
            DATA(t213) = t186.
            DATA(t214) = | INTO CORRESPONDING FIELDS OF |.
            DATA(t215) = strlen( t213 ).
            IF t214 IS INITIAL.
              t212 = 0.
            ELSE.
              FIND t214 IN t213 MATCH OFFSET t212.
              IF sy-subrc <> 0.
                t212 = -1.
              ENDIF.
            ENDIF.
            DATA(t216) = 0.
            t211 = xsdbool( t212 >= t216 ).
            t210 = t211.
            IF t211 = abap_false.
              DATA(t217) = VALUE abap_bool( ).
              DATA(t218) = VALUE i( ).
              DATA(t219) = t186.
              DATA(t220) = | APPENDING CORRESPONDING FIELDS OF |.
              DATA(t221) = strlen( t219 ).
              IF t220 IS INITIAL.
                t218 = 0.
              ELSE.
                FIND t220 IN t219 MATCH OFFSET t218.
                IF sy-subrc <> 0.
                  t218 = -1.
                ENDIF.
              ENDIF.
              DATA(t222) = 0.
              t217 = xsdbool( t218 >= t222 ).
              t210 = t217.
            ENDIF.
            IF t210 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
          DATA t223 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t224 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t225) = t181.
          DATA(t226) = t15.
          DATA(t227) = t153.
          t224 = me->find_number_of_columns( i_s = t225 i_file = t226 i_spaghetti = t227 ).
          t223 = t224.
          DATA(t228) = VALUE abap_bool( ).
          DATA(t229) = VALUE abap_bool( ).
          DATA(t230) = t223.
          IF t230 IS BOUND.
            IF t230->has = abap_true.
              IF t230->number_special <> 0.
                t229 = xsdbool( t230->number_special <> 1 ).
              ELSE.
                t229 = xsdbool( t230->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
          ENDIF.
          t228 = t229.
          IF t229 = abap_true.
            DATA(t231) = VALUE abap_bool( ).
            DATA(t232) = VALUE f( ).
            DATA(t233) = VALUE f( ).
            DATA(t234) = t223.
            IF t234->number_special <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t233 = t234->value.
            t232 = t233.
            DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t236 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t237) = CAST zcl_lnt_slct_prfrmnc_cnf( me->gt_cn_in_sr_rl_sl_pr_ts_sl_prf( ) ).
            t236 = t237->zlnt_view_read_sr_ab290707774e( ).
            t235 = t236.
            DATA(t238) = VALUE abap_bool( ).
            DATA(t239) = VALUE abap_bool( ).
            DATA(t240) = VALUE abap_bool( ).
            DATA(t241) = t235.
            IF t241 IS INITIAL.
              t240 = abap_true.
            ELSEIF t241->has = abap_false.
              t240 = abap_true.
            ENDIF.
            t239 = xsdbool( t240 = abap_false ).
            t238 = t239.
            IF t239 = abap_true.
              DATA(t242) = VALUE abap_bool( ).
              DATA(t243) = t232.
              DATA(t244) = VALUE f( ).
              DATA(t245) = t235.
              IF t245->number_special <> 0.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t244 = t245->value.
              t242 = xsdbool( t243 <= t244 ).
              t238 = t242.
            ENDIF.
            t231 = t238.
            t228 = t231.
          ENDIF.
          IF t228 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t246 TYPE string.
          DATA(t247) = |Avoid use of SELECT *|.
          t246 = t247.
          DATA(t248) = t6.
          DATA t249 TYPE REF TO zcl_lnt_issue.
          CLEAR t249.
          DATA(t250) = t15.
          DATA t251 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t252) = t181.
          t251 = t252->get_first_token( ).
          DATA(t253) = t246.
          DATA(t254) = VALUE string( ).
          DATA t255 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t255.
          DATA t256 TYPE string.
          DATA(t257) = |select_performance|.
          t256 = t257.
          DATA t258 TYPE string.
          DATA(t259) = |SELECT performance|.
          t258 = t259.
          DATA t260 TYPE string.
          DATA(t261) = |Various checks regarding SELECT performance.|.
          t260 = t261.
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t263.
          DATA(t264) = abap_true.
          IF t264 = abap_true.
            DATA(t265) = |ENDSELECT: not reported when the corresponding SELECT has PA|.
            t265 = t265 && |CKAGE SIZE\n\nSELECT *: not reported if using INTO/APPENDING C|.
            t265 = t265 && |ORRESPONDING FIELDS OF|.
            DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t266->has = abap_true.
            t266->value = t265.
            t263 = t266.
          ELSE.
            DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t267.
            t263 = t267.
          ENDIF.
          t262 = t263.
          DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t268.
          DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t269.
          DATA(t270) = abap_true.
          IF t270 = abap_true.
            DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t273 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t273.
            t272 = t273.
            DATA(t274) = t272.
            DATA(t275) = |SingleFile|.
            t274->load( ).
            APPEND t275 TO t274->items.
            t274->save( ).
            DATA(t276) = t272.
            DATA(t277) = |Performance|.
            t276->load( ).
            APPEND t277 TO t276->items.
            t276->save( ).
            DATA(t278) = t272.
            t271 = t278.
            t269 = t271.
          ELSE.
            DATA t279 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t279.
            t269 = t279.
          ENDIF.
          t268 = t269.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          DATA(t282) = abap_true.
          IF t282 = abap_true.
            DATA(t283) = |SELECT field1, field2 FROM table\n    INTO @DATA(structure) U|.
            t283 = t283 && |P TO 1 ROWS ORDER BY field3 DESCENDING.\nENDSELECT.|.
            DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t284->has = abap_true.
            t284->value = t283.
            t281 = t284.
          ELSE.
            DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t285.
            t281 = t285.
          ENDIF.
          t280 = t281.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          DATA(t288) = abap_true.
          IF t288 = abap_true.
            DATA(t289) = |SELECT field1, field2 FROM table UP TO 1 ROWS\n  INTO TABLE @|.
            t289 = t289 && |DATA(table) ORDER BY field3 DESCENDING|.
            DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t290->has = abap_true.
            t290->value = t289.
            t287 = t290.
          ELSE.
            DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t291.
            t287 = t291.
          ENDIF.
          t286 = t287.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          t292 = t293.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          t294 = t295.
          t255 = NEW zcl_lnt_irule_metadata( i_key = t256 i_title = t258 i_short_description = t260 i_bad_example = t280 i_good_example = t286 i_extended_information = t262 i_tags = t268 i_pragma = t292 i_pseudo_comment = t294 ).
          CREATE OBJECT t255->zlnt_view_ownkeys_b0e8086400eb.
          t255->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          IF t255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t296 ).
          ENDIF.
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
          DATA(t303) = |key|.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t303 p1 = t304 ).
          ENDIF.
          DATA(t305) = |title|.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t305 p1 = t306 ).
          ENDIF.
          DATA(t307) = |shortDescription|.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
          ENDIF.
          DATA(t309) = |extendedInformation|.
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
          ENDIF.
          DATA(t311) = |tags|.
          DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t312.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t311 p1 = t312 ).
          ENDIF.
          DATA(t313) = |badExample|.
          DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t314.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
          ENDIF.
          DATA(t315) = |goodExample|.
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t316.
          IF t255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
          ENDIF.
          t254 = t255->key.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t318) = me->conf.
          t317 = t318->zlnt_view_read_sr_15c06369f827( ).
          DATA t319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t319.
          t249 = zcl_lnt_issue=>at_token( i_file = t250 i_token = t251 i_message_26cb = t253 i_key = t254 i_severity = t317 i_fix = t319 ).
          t248->load( ).
          APPEND t249 TO t248->items.
          t248->save( ).
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t320) = t6.
    result = t320.

  ENDMETHOD.

  METHOD find_number_of_columns.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA(t3) = i_spaghetti.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t5 = t6->find_all_expressions( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE i.
    DATA(t10) = t4.
    t10->load( ).
    t9 = lines( t10->items ).
    DATA(t11) = 1.
    t8 = xsdbool( t9 = t11 ).
    IF t8 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_position.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_position.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t16.
      DATA(t17) = t4.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      t17->load( ).
      CLEAR t18.
      READ TABLE t17->items INDEX 1 INTO t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t18.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t18.
      ENDIF.
      t15 = t16->get_first_token( ).
      t14 = t15.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA(t22) = t14.
      t21 = t22->start.
      t13 = t21.
      t12 = t13.
      DATA t23 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t24.
      DATA(t25) = t3.
      DATA t26 TYPE REF TO zcl_lnt_position.
      CLEAR t26.
      DATA(t27) = abap_true.
      IF t27 = abap_true.
        DATA(t28) = t12.
        t26 = t28.
      ELSE.
        DATA t29 TYPE REF TO zcl_lnt_position.
        CLEAR t29.
        t26 = t29.
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA t32 TYPE string.
        DATA(t33) = t2.
        t32 = t33->get_filename( ).
        DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t34->has = abap_true.
        t34->value = t32.
        t30 = t34.
      ELSE.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        t30 = t35.
      ENDIF.
      t24 = t25->lookup_position( i_p = t26 i_filename = t30 ).
      t23 = t24.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t39) = t23.
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t38.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t40 = t43.
      ELSE.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t45 TYPE REF TO zif_lnt_spaghetti_scope_node.
        DATA(t46) = t38.
        t45 = t46.
        DATA(t47) = t12.
        t44 = t45->find_table_reference( i_pos = t47 ).
        t40 = t44.
      ENDIF.
      t37 = t40.
      t36 = t37.
      DATA t48 TYPE REF TO zcl_lnt_table.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_table.
      CLEAR t49.
      DATA t50 TYPE REF TO zif_lnt_object.
      CLEAR t50.
      DATA(t51) = me->reg.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA(t54) = |TABL|.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t54.
        t52 = t55.
      ELSE.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        t52 = t56.
      ENDIF.
      DATA(t57) = t36.
      t50 = t51->get_object( i_type_9913 = t52 i_name = t57 ).
      DATA t58 TYPE REF TO object.
      t58 = t50.
      t49 ?= t58.
      t48 = t49.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_table.
      DATA(t62) = t48.
      t61 = t62.
      DATA t63 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t61.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE REF TO zcl_lnt_abstract_type.
        DATA t68 TYPE REF TO zcl_lnt_table.
        DATA(t69) = t61.
        t68 = t69.
        DATA(t70) = me->reg.
        t67 = t68->prs_typ_ins_src_obj_tbl_ts_tbl( i_reg_f149 = t70 ).
        t63 = t67.
      ENDIF.
      t60 = t63.
      t59 = t60.
      DATA t71 TYPE abap_bool.
      DATA(t72) = t59.
      t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t71 = abap_true.
        DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t73.
        DATA(t74) = abap_true.
        IF t74 = abap_true.
          DATA t75 TYPE f.
          DATA t76 TYPE i.
          DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t78 TYPE REF TO zcl_lnt_structure_type.
          DATA t79 TYPE REF TO zcl_lnt_structure_type.
          DATA(t80) = t59.
          t79 ?= t80.
          t78 = t79.
          DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t82) = t78.
          t81 = t82->components.
          t77 = t81.
          t77->load( ).
          t76 = lines( t77->items ).
          t75 = t76.
          DATA(t83) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t83->has = abap_true.
          t83->value = t75.
          t73 = t83.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t84.
          t73 = t84.
        ENDIF.
        result = t73.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t85.
    result = t85.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_select_performance.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_slc_prf_ts_slc_prf( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_slct_prfrmnc_cnf( me->gt_cn_in_sr_rl_sl_pr_ts_sl_prf( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slct_prfrmnc_cnf( me->gt_cn_in_sr_rl_sl_pr_ts_sl_prf( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slct_prfrmnc_cnf.
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
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t2 = NEW zcl_lnt_slct_prfrmnc_cnf( view_source = t3 ).
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
