* TS: src/rules/dangerous_statement.ts:34:1 DangerousStatement
CLASS zcl_lnt_dangerous_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_statement TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_dn_st_ts_dn_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS st_cn_in_sr_rl_dn_st_ts_dn_stt IMPORTING i_conf TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
    METHODS rn_pr_in_sr_rl_dn_st_ts_dn_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_dynamic_sql IMPORTING i_statement_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dangerous_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_dngrs_sttmnt_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |dangerous_statement|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Dangerous statement|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects potentially dangerous statements|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
      t11 = t11 && |\ndynamic SQL can potentially create SQL injection problems|.
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
      DATA(t23) = |Security|.
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
      DATA(t29) = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
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
      DATA(t35) = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
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

  METHOD get_description.
    DATA(t1) = i_statement.
    DATA t2 TYPE string.
    DATA(t3) = |Potential dangerous statement |.
    DATA(t4) = t1.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_dn_st_ts_dn_stt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_dn_st_ts_dn_stt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_dn_st_ts_dn_stt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_false.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t7.
    t9 = t10->statements.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA t17 TYPE REF TO zif_lnt_statement.
      DATA(t18) = t11.
      t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = t17.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t16.
      t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
      IF t19 = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA t26 TYPE REF TO zcl_lnt_expression_node.
        DATA(t27) = t11.
        DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t26 = t27->find_first_expression( i_type_9913 = t28 ).
        t25 = t26.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = t25.
        IF t31 IS INITIAL.
          t30 = abap_true.
        ENDIF.
        IF t30 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t32.
          t29 = t32.
        ELSE.
          DATA t33 TYPE string.
          DATA t34 TYPE REF TO zcl_lnt_expression_node.
          DATA(t35) = t25.
          t34 = t35.
          t33 = t34->concat_tokens( ).
          DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t36->has = abap_true.
          t36->value = t33.
          t29 = t36.
        ENDIF.
        t24 = t29.
        t23 = t24.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t23.
        IF t39 IS INITIAL.
          t38 = abap_true.
        ELSEIF t39->has = abap_false.
          t38 = abap_true.
        ENDIF.
        IF t38 = abap_true.
          DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t40.
          t37 = t40.
        ELSE.
          DATA t41 TYPE string.
          DATA t42 TYPE string.
          DATA(t43) = t23.
          t42 = t43->value.
          DATA(t44) = strlen( t42 ).
          t41 = t42.
          IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t41 TO UPPER CASE.
          ELSE.
            t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
          ENDIF.
          DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t45->has = abap_true.
          t45->value = t41.
          t37 = t45.
        ENDIF.
        t22 = t37.
        t21 = t22.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        DATA(t49) = me->conf.
        t48 = t49->zlnt_view_read_sr_b2d423c99bdd( ).
        DATA(t50) = abap_true.
        t47 = xsdbool( t48 = t50 ).
        t46 = t47.
        IF t47 = abap_true.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = t21.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA(t54) = abap_true.
          IF t54 = abap_true.
            DATA(t55) = |IF_RAP_QUERY_PROVIDER~SELECT|.
            DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t56->has = abap_true.
            t56->value = t55.
            t53 = t56.
          ELSE.
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t57.
            t53 = t57.
          ENDIF.
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          IF t52 IS BOUND.
            t58 = t52->has.
          ENDIF.
          IF t53 IS BOUND.
            t59 = t53->has.
          ENDIF.
          IF t58 = t59.
            IF t58 = abap_false.
              t51 = abap_true.
            ELSEIF t52->value = t53->value.
              t51 = abap_true.
            ENDIF.
          ENDIF.
          t46 = t51.
        ENDIF.
        t4 = t46.
      ELSE.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t16.
        t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_end_method ).
        IF t60 = abap_true.
          DATA(t62) = abap_false.
          t4 = t62.
        ENDIF.
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      t63 = t64.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t68) = me->conf.
      t67 = t68->zlnt_view_read_sr_e9bcbe1faf47( ).
      IF t67 IS BOUND.
        IF t67->has = abap_true.
          t66 = xsdbool( t67->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t65 = t66.
      IF t66 = abap_true.
        DATA t69 TYPE abap_bool.
        DATA(t70) = t16.
        t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_st_exec_sql ).
        t65 = t69.
      ENDIF.
      IF t65 = abap_true.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA(t73) = |EXEC SQL|.
          DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t74->has = abap_true.
          t74->value = t73.
          t71 = t74.
        ELSE.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t71 = t75.
        ENDIF.
        t63 = t71.
      ELSE.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t79) = me->conf.
        t78 = t79->zlnt_view_read_sr_1871f229e082( ).
        IF t78 IS BOUND.
          IF t78->has = abap_true.
            t77 = xsdbool( t78->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t76 = t77.
        IF t77 = abap_true.
          DATA t80 TYPE abap_bool.
          DATA(t81) = t16.
          t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_st_call_kernel ).
          t76 = t80.
        ENDIF.
        IF t76 = abap_true.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          DATA(t83) = abap_true.
          IF t83 = abap_true.
            DATA(t84) = |KERNEL CALL|.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t84.
            t82 = t85.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t82 = t86.
          ENDIF.
          t63 = t82.
        ELSE.
          DATA(t87) = VALUE abap_bool( ).
          DATA(t88) = VALUE abap_bool( ).
          DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t90) = me->conf.
          t89 = t90->zlnt_view_read_sr_7ca471dec8c6( ).
          IF t89 IS BOUND.
            IF t89->has = abap_true.
              t88 = xsdbool( t89->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t87 = t88.
          IF t88 = abap_true.
            DATA t91 TYPE abap_bool.
            DATA(t92) = t16.
            t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_system_call ).
            t87 = t91.
          ENDIF.
          IF t87 = abap_true.
            DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t93.
            DATA(t94) = abap_true.
            IF t94 = abap_true.
              DATA(t95) = |SYSTEM-CALL|.
              DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t96->has = abap_true.
              t96->value = t95.
              t93 = t96.
            ELSE.
              DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t97.
              t93 = t97.
            ENDIF.
            t63 = t93.
          ELSE.
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = VALUE abap_bool( ).
            DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t101) = me->conf.
            t100 = t101->zlnt_view_read_sr_014bdfa86c52( ).
            IF t100 IS BOUND.
              IF t100->has = abap_true.
                t99 = xsdbool( t100->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
            t98 = t99.
            IF t99 = abap_true.
              DATA t102 TYPE abap_bool.
              DATA(t103) = t16.
              t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_st_insert_report ).
              t98 = t102.
            ENDIF.
            IF t98 = abap_true.
              DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t104.
              DATA(t105) = abap_true.
              IF t105 = abap_true.
                DATA(t106) = |INSERT REPORT|.
                DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t107->has = abap_true.
                t107->value = t106.
                t104 = t107.
              ELSE.
                DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t108.
                t104 = t108.
              ENDIF.
              t63 = t104.
            ELSE.
              DATA(t109) = VALUE abap_bool( ).
              DATA(t110) = VALUE abap_bool( ).
              DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t112) = me->conf.
              t111 = t112->zlnt_view_read_sr_16a0eb86254c( ).
              IF t111 IS BOUND.
                IF t111->has = abap_true.
                  t110 = xsdbool( t111->value IS NOT INITIAL ).
                ENDIF.
              ENDIF.
              t109 = t110.
              IF t110 = abap_true.
                DATA t113 TYPE abap_bool.
                DATA(t114) = t16.
                t113 = xsdbool( t114 IS BOUND AND t114 IS INSTANCE OF zcl_lnt_generate_dynpro ).
                t109 = t113.
              ENDIF.
              IF t109 = abap_true.
                DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t115.
                DATA(t116) = abap_true.
                IF t116 = abap_true.
                  DATA(t117) = |GENERATE DYNPRO|.
                  DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t118->has = abap_true.
                  t118->value = t117.
                  t115 = t118.
                ELSE.
                  DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t119.
                  t115 = t119.
                ENDIF.
                t63 = t115.
              ELSE.
                DATA(t120) = VALUE abap_bool( ).
                DATA(t121) = VALUE abap_bool( ).
                DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t123) = me->conf.
                t122 = t123->zlnt_view_read_sr_085be375b29e( ).
                IF t122 IS BOUND.
                  IF t122->has = abap_true.
                    t121 = xsdbool( t122->value IS NOT INITIAL ).
                  ENDIF.
                ENDIF.
                t120 = t121.
                IF t121 = abap_true.
                  DATA t124 TYPE abap_bool.
                  DATA(t125) = t16.
                  t124 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_generate_report ).
                  t120 = t124.
                ENDIF.
                IF t120 = abap_true.
                  DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t126.
                  DATA(t127) = abap_true.
                  IF t127 = abap_true.
                    DATA(t128) = |GENERATE REPORT|.
                    DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t129->has = abap_true.
                    t129->value = t128.
                    t126 = t129.
                  ELSE.
                    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t130.
                    t126 = t130.
                  ENDIF.
                  t63 = t126.
                ELSE.
                  DATA(t131) = VALUE abap_bool( ).
                  DATA(t132) = VALUE abap_bool( ).
                  DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA(t134) = me->conf.
                  t133 = t134->zlnt_view_read_sr_6b039f478731( ).
                  IF t133 IS BOUND.
                    IF t133->has = abap_true.
                      t132 = xsdbool( t133->value IS NOT INITIAL ).
                    ENDIF.
                  ENDIF.
                  t131 = t132.
                  IF t132 = abap_true.
                    DATA t135 TYPE abap_bool.
                    DATA(t136) = t16.
                    t135 = xsdbool( t136 IS BOUND AND t136 IS INSTANCE OF zcl_lnt_generate_subroutine ).
                    t131 = t135.
                  ENDIF.
                  IF t131 = abap_true.
                    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t137.
                    DATA(t138) = abap_true.
                    IF t138 = abap_true.
                      DATA(t139) = |GENERATE SUBROUTINE|.
                      DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t140->has = abap_true.
                      t140->value = t139.
                      t137 = t140.
                    ELSE.
                      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t141.
                      t137 = t141.
                    ENDIF.
                    t63 = t137.
                  ELSE.
                    DATA(t142) = VALUE abap_bool( ).
                    DATA(t143) = VALUE abap_bool( ).
                    DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA(t145) = me->conf.
                    t144 = t145->zlnt_view_read_sr_5e84d7a71798( ).
                    IF t144 IS BOUND.
                      IF t144->has = abap_true.
                        t143 = xsdbool( t144->value IS NOT INITIAL ).
                      ENDIF.
                    ENDIF.
                    t142 = t143.
                    IF t143 = abap_true.
                      DATA t146 TYPE abap_bool.
                      DATA(t147) = t16.
                      t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_st_delete_report ).
                      t142 = t146.
                    ENDIF.
                    IF t142 = abap_true.
                      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t148.
                      DATA(t149) = abap_true.
                      IF t149 = abap_true.
                        DATA(t150) = |DELETE REPORT|.
                        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t151->has = abap_true.
                        t151->value = t150.
                        t148 = t151.
                      ELSE.
                        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t152.
                        t148 = t152.
                      ENDIF.
                      t63 = t148.
                    ELSE.
                      DATA(t153) = VALUE abap_bool( ).
                      DATA(t154) = VALUE abap_bool( ).
                      DATA t155 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      DATA(t156) = me->conf.
                      t155 = t156->zlnt_view_read_sr_35e6f285754a( ).
                      IF t155 IS BOUND.
                        IF t155->has = abap_true.
                          t154 = xsdbool( t155->value IS NOT INITIAL ).
                        ENDIF.
                      ENDIF.
                      t153 = t154.
                      IF t154 = abap_true.
                        DATA t157 TYPE abap_bool.
                        DATA(t158) = t16.
                        t157 = xsdbool( t158 IS BOUND AND t158 IS INSTANCE OF zcl_lnt_delete_textpool ).
                        t153 = t157.
                      ENDIF.
                      IF t153 = abap_true.
                        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t159.
                        DATA(t160) = abap_true.
                        IF t160 = abap_true.
                          DATA(t161) = |DELETE TEXTPOOL|.
                          DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t162->has = abap_true.
                          t162->value = t161.
                          t159 = t162.
                        ELSE.
                          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t163.
                          t159 = t163.
                        ENDIF.
                        t63 = t159.
                      ELSE.
                        DATA(t164) = VALUE abap_bool( ).
                        DATA(t165) = VALUE abap_bool( ).
                        DATA t166 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        DATA(t167) = me->conf.
                        t166 = t167->zlnt_view_read_sr_407fb524ae8d( ).
                        IF t166 IS BOUND.
                          IF t166->has = abap_true.
                            t165 = xsdbool( t166->value IS NOT INITIAL ).
                          ENDIF.
                        ENDIF.
                        t164 = t165.
                        IF t165 = abap_true.
                          DATA t168 TYPE abap_bool.
                          DATA(t169) = t16.
                          t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_st_insert_textpool ).
                          t164 = t168.
                        ENDIF.
                        IF t164 = abap_true.
                          DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t170.
                          DATA(t171) = abap_true.
                          IF t171 = abap_true.
                            DATA(t172) = |INSERT TEXTPOOL|.
                            DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t173->has = abap_true.
                            t173->value = t172.
                            t170 = t173.
                          ELSE.
                            DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t174.
                            t170 = t174.
                          ENDIF.
                          t63 = t170.
                        ELSE.
                          DATA(t175) = VALUE abap_bool( ).
                          DATA(t176) = VALUE abap_bool( ).
                          DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          DATA(t178) = me->conf.
                          t177 = t178->zlnt_view_read_sr_d3488ea5ba06( ).
                          IF t177 IS BOUND.
                            IF t177->has = abap_true.
                              t176 = xsdbool( t177->value IS NOT INITIAL ).
                            ENDIF.
                          ENDIF.
                          t175 = t176.
                          IF t176 = abap_true.
                            DATA t179 TYPE abap_bool.
                            DATA(t180) = t16.
                            t179 = xsdbool( t180 IS BOUND AND t180 IS INSTANCE OF zcl_lnt_delete_dynpro ).
                            t175 = t179.
                          ENDIF.
                          IF t175 = abap_true.
                            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t181.
                            DATA(t182) = abap_true.
                            IF t182 = abap_true.
                              DATA(t183) = |DELETE DYNPRO|.
                              DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t184->has = abap_true.
                              t184->value = t183.
                              t181 = t184.
                            ELSE.
                              DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t185.
                              t181 = t185.
                            ENDIF.
                            t63 = t181.
                          ELSE.
                            DATA(t186) = VALUE abap_bool( ).
                            DATA(t187) = VALUE abap_bool( ).
                            DATA t188 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA(t189) = me->conf.
                            t188 = t189->zlnt_view_read_sr_14a64a56fa20( ).
                            IF t188 IS BOUND.
                              IF t188->has = abap_true.
                                t187 = xsdbool( t188->value IS NOT INITIAL ).
                              ENDIF.
                            ENDIF.
                            t186 = t187.
                            IF t187 = abap_true.
                              DATA t190 TYPE abap_bool.
                              DATA(t191) = t16.
                              t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_export_dynpro ).
                              t186 = t190.
                            ENDIF.
                            IF t186 = abap_true.
                              DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t192.
                              DATA(t193) = abap_true.
                              IF t193 = abap_true.
                                DATA(t194) = |EXPORT DYNPRO|.
                                DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t195->has = abap_true.
                                t195->value = t194.
                                t192 = t195.
                              ELSE.
                                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t196.
                                t192 = t196.
                              ENDIF.
                              t63 = t192.
                            ELSE.
                              DATA(t197) = VALUE abap_bool( ).
                              DATA(t198) = VALUE abap_bool( ).
                              DATA(t199) = VALUE abap_bool( ).
                              DATA t200 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              DATA(t201) = me->conf.
                              t200 = t201->zlnt_view_read_sr_fdda7544b790( ).
                              IF t200 IS BOUND.
                                IF t200->has = abap_true.
                                  t199 = xsdbool( t200->value IS NOT INITIAL ).
                                ENDIF.
                              ENDIF.
                              t198 = t199.
                              IF t199 = abap_true.
                                DATA t202 TYPE abap_bool.
                                DATA(t203) = t16.
                                t202 = xsdbool( t203 IS BOUND AND t203 IS INSTANCE OF zcl_lnt_st_editor_call ).
                                t198 = t202.
                              ENDIF.
                              t197 = t198.
                              IF t198 = abap_true.
                                DATA t204 TYPE abap_bool.
                                DATA t205 TYPE REF TO zcl_lnt_abstract_token.
                                DATA(t206) = t11.
                                DATA(t207) = |REPORT|.
                                t205 = t206->find_direct_token_by_text( i_text = t207 ).
                                t204 = xsdbool( t205 IS BOUND ).
                                t197 = t204.
                              ENDIF.
                              IF t197 = abap_true.
                                DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t208.
                                DATA(t209) = abap_true.
                                IF t209 = abap_true.
                                  DATA(t210) = |EDITOR-CALL FOR REPORT|.
                                  DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                  t211->has = abap_true.
                                  t211->value = t210.
                                  t208 = t211.
                                ELSE.
                                  DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t212.
                                  t208 = t212.
                                ENDIF.
                                t63 = t208.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t213) = VALUE abap_bool( ).
      DATA(t214) = t63.
      IF t214 IS BOUND.
        IF t214->has = abap_true.
          t213 = xsdbool( strlen( t214->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t213 = abap_true.
        DATA(t215) = t2.
        DATA t216 TYPE REF TO zcl_lnt_issue.
        CLEAR t216.
        DATA(t217) = t1.
        DATA(t218) = t11.
        DATA t219 TYPE string.
        DATA t220 TYPE string.
        DATA t221 TYPE string.
        DATA(t222) = t63.
        t221 = t222->value.
        t220 = t221.
        DATA t223 TYPE string.
        DATA(t224) = |Potential dangerous statement |.
        DATA(t225) = t220.
        DATA(t226) = strlen( t224 ).
        t223 = |{ t224 }{ t225 }|.
        t219 = t223.
        DATA(t227) = VALUE string( ).
        DATA t228 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t228.
        DATA t229 TYPE string.
        DATA(t230) = |dangerous_statement|.
        t229 = t230.
        DATA t231 TYPE string.
        DATA(t232) = |Dangerous statement|.
        t231 = t232.
        DATA t233 TYPE string.
        DATA(t234) = |Detects potentially dangerous statements|.
        t233 = t234.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA(t237) = abap_true.
        IF t237 = abap_true.
          DATA(t238) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
          t238 = t238 && |\ndynamic SQL can potentially create SQL injection problems|.
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
        DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t241.
        DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t242.
        DATA(t243) = abap_true.
        IF t243 = abap_true.
          DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t246.
          t245 = t246.
          DATA(t247) = t245.
          DATA(t248) = |SingleFile|.
          t247->load( ).
          APPEND t248 TO t247->items.
          t247->save( ).
          DATA(t249) = t245.
          DATA(t250) = |Security|.
          t249->load( ).
          APPEND t250 TO t249->items.
          t249->save( ).
          DATA(t251) = t245.
          t244 = t251.
          t242 = t244.
        ELSE.
          DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t252.
          t242 = t252.
        ENDIF.
        t241 = t242.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t254.
        DATA(t255) = abap_true.
        IF t255 = abap_true.
          DATA(t256) = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
          DATA(t257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t257->has = abap_true.
          t257->value = t256.
          t254 = t257.
        ELSE.
          DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t258.
          t254 = t258.
        ENDIF.
        t253 = t254.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t260.
        DATA(t261) = abap_true.
        IF t261 = abap_true.
          DATA(t262) = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
          DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t263->has = abap_true.
          t263->value = t262.
          t260 = t263.
        ELSE.
          DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t264.
          t260 = t264.
        ENDIF.
        t259 = t260.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        t265 = t266.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        t267 = t268.
        t228 = NEW zcl_lnt_irule_metadata( i_key = t229 i_title = t231 i_short_description = t233 i_bad_example = t253 i_good_example = t259 i_extended_information = t235 i_tags = t241 i_pragma = t265 i_pseudo_comment = t267 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t269 ).
        ENDIF.
        DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t270.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t270 ).
        ENDIF.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t271 ).
        ENDIF.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t272 ).
        ENDIF.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t273 ).
        ENDIF.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t274 ).
        ENDIF.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t275 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t276) = |key|.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
        ENDIF.
        DATA(t278) = |title|.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
        ENDIF.
        DATA(t280) = |shortDescription|.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
        ENDIF.
        DATA(t282) = |extendedInformation|.
        DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t283.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
        ENDIF.
        DATA(t284) = |tags|.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t284 p1 = t285 ).
        ENDIF.
        DATA(t286) = |badExample|.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t286 p1 = t287 ).
        ENDIF.
        DATA(t288) = |goodExample|.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t288 p1 = t289 ).
        ENDIF.
        t227 = t228->key.
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t291) = me->conf.
        t290 = t291->zlnt_view_read_sr_15c06369f827( ).
        DATA t292 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t292.
        DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t293.
        t216 = zcl_lnt_issue=>at_statement( i_file = t217 i_statement = t218 i_message_26cb = t219 i_key = t227 i_severity = t290 i_fix = t292 i_alternative_fixes = t293 ).
        t215->load( ).
        APPEND t216 TO t215->items.
        t215->save( ).
      ENDIF.
      DATA(t294) = VALUE abap_bool( ).
      DATA(t295) = VALUE abap_bool( ).
      DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t297) = me->conf.
      t296 = t297->zlnt_view_read_sr_41bb737a1000( ).
      IF t296 IS BOUND.
        IF t296->has = abap_true.
          t295 = xsdbool( t296->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t294 = t295.
      IF t295 = abap_true.
        DATA t298 TYPE abap_bool.
        DATA(t299) = t4.
        DATA(t300) = abap_false.
        t298 = xsdbool( t299 = t300 ).
        t294 = t298.
      ENDIF.
      IF t294 = abap_true.
        DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t302) = t11.
        t301 = me->find_dynamic_sql( i_statement_node = t302 ).
        t63 = t301.
        DATA(t303) = VALUE abap_bool( ).
        DATA(t304) = t63.
        IF t304 IS BOUND.
          IF t304->has = abap_true.
            t303 = xsdbool( strlen( t304->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t303 = abap_true.
          DATA(t305) = t2.
          DATA t306 TYPE REF TO zcl_lnt_issue.
          CLEAR t306.
          DATA(t307) = t1.
          DATA(t308) = t11.
          DATA t309 TYPE string.
          DATA t310 TYPE string.
          DATA t311 TYPE string.
          DATA(t312) = t63.
          t311 = t312->value.
          t310 = t311.
          DATA t313 TYPE string.
          DATA(t314) = |Potential dangerous statement |.
          DATA(t315) = t310.
          DATA(t316) = strlen( t314 ).
          t313 = |{ t314 }{ t315 }|.
          t309 = t313.
          DATA(t317) = VALUE string( ).
          DATA t318 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t318.
          DATA t319 TYPE string.
          DATA(t320) = |dangerous_statement|.
          t319 = t320.
          DATA t321 TYPE string.
          DATA(t322) = |Dangerous statement|.
          t321 = t322.
          DATA t323 TYPE string.
          DATA(t324) = |Detects potentially dangerous statements|.
          t323 = t324.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t326.
          DATA(t327) = abap_true.
          IF t327 = abap_true.
            DATA(t328) = |Dynamic SQL: Typically ABAP logic does not need dynamic SQL,|.
            t328 = t328 && |\ndynamic SQL can potentially create SQL injection problems|.
            DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t329->has = abap_true.
            t329->value = t328.
            t326 = t329.
          ELSE.
            DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t330.
            t326 = t330.
          ENDIF.
          t325 = t326.
          DATA t331 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t331.
          DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t332.
          DATA(t333) = abap_true.
          IF t333 = abap_true.
            DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t336.
            t335 = t336.
            DATA(t337) = t335.
            DATA(t338) = |SingleFile|.
            t337->load( ).
            APPEND t338 TO t337->items.
            t337->save( ).
            DATA(t339) = t335.
            DATA(t340) = |Security|.
            t339->load( ).
            APPEND t340 TO t339->items.
            t339->save( ).
            DATA(t341) = t335.
            t334 = t341.
            t332 = t334.
          ELSE.
            DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t342.
            t332 = t342.
          ENDIF.
          t331 = t332.
          DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t343.
          DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t344.
          DATA(t345) = abap_true.
          IF t345 = abap_true.
            DATA(t346) = |SELECT * FROM (lv_table_name) INTO TABLE @DATA(lt_rows).|.
            DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t347->has = abap_true.
            t347->value = t346.
            t344 = t347.
          ELSE.
            DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t348.
            t344 = t348.
          ENDIF.
          t343 = t344.
          DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t349.
          DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t350.
          DATA(t351) = abap_true.
          IF t351 = abap_true.
            DATA(t352) = |SELECT * FROM zknown_table INTO TABLE @DATA(lt_rows).|.
            DATA(t353) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t353->has = abap_true.
            t353->value = t352.
            t350 = t353.
          ELSE.
            DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t354.
            t350 = t354.
          ENDIF.
          t349 = t350.
          DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t356.
          t355 = t356.
          DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t358.
          t357 = t358.
          t318 = NEW zcl_lnt_irule_metadata( i_key = t319 i_title = t321 i_short_description = t323 i_bad_example = t343 i_good_example = t349 i_extended_information = t325 i_tags = t331 i_pragma = t355 i_pseudo_comment = t357 ).
          CREATE OBJECT t318->zlnt_view_ownkeys_b0e8086400eb.
          t318->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t359.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t359 ).
          ENDIF.
          DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t360.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t360 ).
          ENDIF.
          DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t361.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t361 ).
          ENDIF.
          DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t362.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t362 ).
          ENDIF.
          DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t363.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t363 ).
          ENDIF.
          DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t364.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t364 ).
          ENDIF.
          DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t365.
          IF t318->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t365 ).
          ENDIF.
          CREATE OBJECT t318->zlnt_json_ownkeys_70e5fd461788.
          t318->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t366) = |key|.
          DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t367.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t366 p1 = t367 ).
          ENDIF.
          DATA(t368) = |title|.
          DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t369.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t368 p1 = t369 ).
          ENDIF.
          DATA(t370) = |shortDescription|.
          DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t371.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
          ENDIF.
          DATA(t372) = |extendedInformation|.
          DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t373.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
          ENDIF.
          DATA(t374) = |tags|.
          DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t375.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
          ENDIF.
          DATA(t376) = |badExample|.
          DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t377.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
          ENDIF.
          DATA(t378) = |goodExample|.
          DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t379.
          IF t318->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t318->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
          ENDIF.
          t317 = t318->key.
          DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t381) = me->conf.
          t380 = t381->zlnt_view_read_sr_15c06369f827( ).
          DATA t382 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t382.
          DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t383.
          t306 = zcl_lnt_issue=>at_statement( i_file = t307 i_statement = t308 i_message_26cb = t309 i_key = t317 i_severity = t380 i_fix = t382 i_alternative_fixes = t383 ).
          t305->load( ).
          APPEND t306 TO t305->items.
          t305->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t384) = t2.
    result = t384.

  ENDMETHOD.

  METHOD find_dynamic_sql.
    DATA(t1) = i_statement_node.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t2.
    t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_st_update_database ).
    t9 = t10.
    IF t10 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t2.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_st_statem_select ).
      t9 = t12.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t2.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_select_loop ).
      t8 = t14.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t2.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_insert_database ).
      t7 = t16.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t2.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_modify_database ).
      t6 = t18.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t2.
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_st_delete_database ).
      t5 = t20.
    ENDIF.
    IF t5 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = t1.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      t23 = t24->find_first_expression( i_type_9913 = t25 ).
      t22 = t23.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t22.
      t27 = xsdbool( t28 IS BOUND ).
      t26 = t27.
      IF t27 = abap_true.
        DATA(t29) = VALUE abap_bool( ).
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        DATA(t33) = t22.
        t32 = t33.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
        t31 = t32->find_direct_expression( i_type_9913 = t34 ).
        t30 = t31.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        t35 = t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = t30.
        IF t38 IS INITIAL.
          t37 = abap_true.
        ENDIF.
        t29 = t37.
        t26 = t29.
      ENDIF.
      IF t26 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA(t40) = abap_true.
        IF t40 = abap_true.
          DATA(t41) = |Dynamic SQL|.
          DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t42->has = abap_true.
          t42->value = t41.
          t39 = t42.
        ELSE.
          DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t43.
          t39 = t43.
        ENDIF.
        result = t39.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    result = t44.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_dngrs_sttmnt_cnf( me->gt_cn_in_sr_rl_dn_st_ts_dn_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_dngrs_sttmnt_cnf( me->gt_cn_in_sr_rl_dn_st_ts_dn_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_dngrs_sttmnt_cnf.
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
        t1 = NEW zcl_lnt_dngrs_sttmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_dn_st_ts_dn_stt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_dn_st_ts_dn_stt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1473_330ef1d2bae6.
  ENDMETHOD.
ENDCLASS.
