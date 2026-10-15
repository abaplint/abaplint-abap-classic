* TS: src/rules/call_transaction_authority_check.ts:12:1 CallTransactionAuthorityCheck
CLASS zcl_lnt_cll_trnsct_athrty_chck DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
    DATA minimum_version TYPE REF TO zcl_lnt_abap_release.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_c_t_a_c_t_c_tr_at_ch RETURNING VALUE(result) TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
    METHODS s_c_i_s_r_c_t_a_c_t_c_tr_at_ch IMPORTING i_conf TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cll_trnsct_athrty_chck IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_cll_trns_athr_chck_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t4.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>release_b8cd.
    DATA(t5) = |v740sp02|.
    t3 = t4->get( p0 = t5 ).
    t2 = t3.
    me->minimum_version = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `MINIMUM_VERSION`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |call_transaction_authority_check|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Call Transaction Authority-Check|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that usages of CALL TRANSACTION contain an authority-|.
    t7 = t7 && |check.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://docs.abapopenchecks.org/checks/54/|.
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
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Security|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |CALL TRANSACTION 'FOO'.|.
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
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |TRY.\n    CALL TRANSACTION 'FOO' WITH AUTHORITY-CHECK.\n  CATC|.
      t37 = t37 && |H cx_sy_authorization_error.\nENDTRY.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Add an authority check to CALL TRANSACTION|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_c_t_a_c_t_c_tr_at_ch.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_c_t_a_c_t_c_tr_at_ch.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    DATA t7 TYPE REF TO zif_lnt_configuration.
    DATA(t8) = me->reg.
    t7 = t8->get_config( ).
    t6 = t7->get_release( ).
    DATA(t9) = me->minimum_version.
    t5 = zcl_lnt_version_module=>release_at_least( i_running = t6 i_required = t9 ).
    t4 = xsdbool( t5 = abap_false ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zif_lnt_configuration.
      DATA(t13) = me->reg.
      t12 = t13->get_config( ).
      t11 = t12->get_language_version( ).
      DATA(t14) = |Cloud|.
      t10 = xsdbool( t11 = t14 ).
      t3 = t10.
    ENDIF.
    IF t3 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE string.
    DATA(t20) = t2.
    t19 = t20->get_type( ).
    DATA(t21) = |INTF|.
    t18 = xsdbool( t19 = t21 ).
    IF t18 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t22.
      result = t22.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zcl_lnt_abap_file.
    DATA(t25) = t1.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t27) = t24.
    t26 = t27->statements.
    t23 = t26.
    DATA t28 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t23->load( ).
      IF t30 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t23->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zif_lnt_statement.
      DATA t34 TYPE REF TO zif_lnt_statement.
      DATA(t35) = t28.
      t34 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t33 = t34.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      DATA(t38) = t33.
      t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_st_call_transaction ).
      t36 = t37.
      IF t37 = abap_true.
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE i( ).
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA(t44) = t28.
        t43 = t44->cnct_tkns_wtht_strng_and_cmmnt( ).
        DATA(t45) = strlen( t43 ).
        t42 = t43.
        IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t42 TO UPPER CASE.
        ELSE.
          t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
        ENDIF.
        DATA(t46) = |WITH AUTHORITY-CHECK|.
        DATA(t47) = strlen( t42 ).
        IF t46 IS INITIAL.
          t41 = 0.
        ELSE.
          FIND t46 IN t42 MATCH OFFSET t41.
          IF sy-subrc <> 0.
            t41 = -1.
          ENDIF.
        ENDIF.
        DATA(t48) = 0.
        t40 = xsdbool( t41 >= t48 ).
        t39 = xsdbool( t40 = abap_false ).
        t36 = t39.
      ENDIF.
      IF t36 = abap_true.
        DATA(t49) = t16.
        DATA t50 TYPE REF TO zcl_lnt_issue.
        CLEAR t50.
        DATA(t51) = t1.
        DATA(t52) = t28.
        DATA(t53) = |Add an authority check to CALL TRANSACTION|.
        DATA(t54) = VALUE string( ).
        DATA t55 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t55.
        DATA t56 TYPE string.
        DATA(t57) = |call_transaction_authority_check|.
        t56 = t57.
        DATA t58 TYPE string.
        DATA(t59) = |Call Transaction Authority-Check|.
        t58 = t59.
        DATA t60 TYPE string.
        DATA(t61) = |Checks that usages of CALL TRANSACTION contain an authority-|.
        t61 = t61 && |check.|.
        t60 = t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = |https://docs.abapopenchecks.org/checks/54/|.
          DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t66->has = abap_true.
          t66->value = t65.
          t63 = t66.
        ELSE.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          t63 = t67.
        ENDIF.
        t62 = t63.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t68.
        DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t69.
        DATA(t70) = abap_true.
        IF t70 = abap_true.
          DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t73.
          t72 = t73.
          DATA(t74) = t72.
          DATA(t75) = |Styleguide|.
          t74->load( ).
          APPEND t75 TO t74->items.
          t74->save( ).
          DATA(t76) = t72.
          DATA(t77) = |SingleFile|.
          t76->load( ).
          APPEND t77 TO t76->items.
          t76->save( ).
          DATA(t78) = t72.
          DATA(t79) = |Security|.
          t78->load( ).
          APPEND t79 TO t78->items.
          t78->save( ).
          DATA(t80) = t72.
          t71 = t80.
          t69 = t71.
        ELSE.
          DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t81.
          t69 = t81.
        ENDIF.
        t68 = t69.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA(t84) = abap_true.
        IF t84 = abap_true.
          DATA(t85) = |CALL TRANSACTION 'FOO'.|.
          DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t86->has = abap_true.
          t86->value = t85.
          t83 = t86.
        ELSE.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          t83 = t87.
        ENDIF.
        t82 = t83.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA(t90) = abap_true.
        IF t90 = abap_true.
          DATA(t91) = |TRY.\n    CALL TRANSACTION 'FOO' WITH AUTHORITY-CHECK.\n  CATC|.
          t91 = t91 && |H cx_sy_authorization_error.\nENDTRY.|.
          DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t92->has = abap_true.
          t92->value = t91.
          t89 = t92.
        ELSE.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          t89 = t93.
        ENDIF.
        t88 = t89.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        t94 = t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t96 = t97.
        t55 = NEW zcl_lnt_irule_metadata( i_key = t56 i_title = t58 i_short_description = t60 i_bad_example = t82 i_good_example = t88 i_extended_information = t62 i_tags = t68 i_pragma = t94 i_pseudo_comment = t96 ).
        CREATE OBJECT t55->zlnt_view_ownkeys_b0e8086400eb.
        t55->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t98 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t102 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t104 ).
        ENDIF.
        CREATE OBJECT t55->zlnt_json_ownkeys_70e5fd461788.
        t55->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t105) = |key|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |title|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |shortDescription|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        DATA(t111) = |extendedInformation|.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
        ENDIF.
        DATA(t113) = |tags|.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
        ENDIF.
        DATA(t115) = |badExample|.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
        ENDIF.
        DATA(t117) = |goodExample|.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
        ENDIF.
        t54 = t55->key.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t120) = CAST zcl_lnt_cll_trns_athr_chck_cnf( me->g_c_i_s_r_c_t_a_c_t_c_tr_at_ch( ) ).
        t119 = t120->zlnt_view_read_sr_15c06369f827( ).
        DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t122.
        t50 = zcl_lnt_issue=>at_statement( i_file = t51 i_statement = t52 i_message_26cb = t53 i_key = t54 i_severity = t119 i_fix = t121 i_alternative_fixes = t122 ).
        t49->load( ).
        APPEND t50 TO t49->items.
        t49->save( ).
      ENDIF.
    ENDDO.
    DATA(t123) = t16.
    result = t123.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cll_trns_athr_chck_cnf( me->g_c_i_s_r_c_t_a_c_t_c_tr_at_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cll_trns_athr_chck_cnf( me->g_c_i_s_r_c_t_a_c_t_c_tr_at_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
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
        t1 = NEW zcl_lnt_cll_trns_athr_chck_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_c_t_a_c_t_c_tr_at_ch( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1412_36b5ee023dfc.
  ENDMETHOD.
ENDCLASS.
