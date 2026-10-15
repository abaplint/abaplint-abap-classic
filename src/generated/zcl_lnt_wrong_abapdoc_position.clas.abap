* TS: src/rules/wrong_abapdoc_position.ts:13:1 WrongAbapdocPosition
CLASS zcl_lnt_wrong_abapdoc_position DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps RETURNING VALUE(result) TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps IMPORTING i_conf TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
    METHODS r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_abapdoc IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_bf6e IMPORTING i_abapdoc TYPE REF TO zcl_lnt_statement_node i_next TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_wrong_abapdoc_position IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_wrng_abpdc_pstn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |wrong_abapdoc_position|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Wrong ABAP Doc position|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |ABAP Doc must be placed directly in front of the declaration|.
    t7 = t7 && | it documents.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |ABAP Doc documents the single declaration following it, an A|.
      t11 = t11 && |BAP Doc block placed\nelsewhere is silently ignored, leaving |.
      t11 = t11 && |the declaration undocumented.\n\nThe following positions are r|.
      t11 = t11 && |eported,\n* in front of a chained keyword, ie. before "CONSTA|.
      t11 = t11 && |NTS:" instead of after the colon,\n* in the middle of a state|.
      t11 = t11 && |ment, ie. between the parameters of a METHODS definition,\n* |.
      t11 = t11 && |directly in front of ENDCLASS, ENDINTERFACE or a SECTION sta|.
      t11 = t11 && |tement.\n\nOnly checks ABAP Doc inside class definitions and i|.
      t11 = t11 && |nterfaces.|.
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
      DATA(t27) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    "! Na|.
      t27 = t27 && |vigation modes\n    CONSTANTS:\n      BEGIN OF cs_nav_mode,\n  |.
      t27 = t27 && |      back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCLAS|.
      t27 = t27 && |S.|.
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
      DATA(t33) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    CONST|.
      t33 = t33 && |ANTS:\n      "! Navigation modes\n      BEGIN OF cs_nav_mode,\n|.
      t33 = t33 && |        back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCL|.
      t33 = t33 && |ASS.|.
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

  METHOD g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->statements.
    t5 = t8.
    t4 = t5.
    DATA t10 TYPE abap_bool.
    DATA(t11) = abap_false.
    t10 = t11.
    DATA t12 TYPE i.
    DATA(t13) = 0.
    t12 = t13.
    DO.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t12.
      DATA t16 TYPE i.
      DATA(t17) = t4.
      t17->load( ).
      t16 = lines( t17->items ).
      t14 = xsdbool( t15 < t16 ).
      IF t14 = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t19.
      DATA(t20) = t4.
      DATA(t21) = t12.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      t20->load( ).
      CLEAR t22.
      READ TABLE t20->items INDEX t21 INTO t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t19.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t22.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t19 ?= t24.
      ELSE.
        t19 ?= t22.
      ENDIF.
      t18 = t19.
      DATA t25 TYPE REF TO zif_lnt_statement.
      DATA t26 TYPE REF TO zif_lnt_statement.
      DATA(t27) = t18.
      t26 = t27->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t25 = t26.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA(t30) = t25.
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t28 = t29.
      IF t29 = abap_false.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t25.
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_interface ).
        t28 = t31.
      ENDIF.
      IF t28 = abap_true.
        DATA(t33) = abap_true.
        t10 = t33.
        DATA t34 TYPE i.
        DATA(t35) = t12.
        DATA(t36) = 1.
        t34 = t35 + t36.
        t12 = t34.
        CONTINUE.
      ELSE.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE abap_bool.
        DATA(t39) = t25.
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_end_class ).
        t37 = t38.
        IF t38 = abap_false.
          DATA t40 TYPE abap_bool.
          DATA(t41) = t25.
          t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_end_interface ).
          t37 = t40.
        ENDIF.
        IF t37 = abap_true.
          DATA(t42) = abap_false.
          t10 = t42.
          DATA t43 TYPE i.
          DATA(t44) = t12.
          DATA(t45) = 1.
          t43 = t44 + t45.
          t12 = t43.
          CONTINUE.
        ELSE.
          DATA t46 TYPE abap_bool.
          DATA t47 TYPE abap_bool.
          DATA(t48) = t10.
          DATA(t49) = abap_false.
          t47 = xsdbool( t48 = t49 ).
          t46 = t47.
          IF t47 = abap_false.
            DATA(t50) = VALUE abap_bool( ).
            DATA(t51) = VALUE abap_bool( ).
            DATA t52 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t52.
            DATA t53 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t53.
            DATA(t54) = abap_true.
            IF t54 = abap_true.
              DATA(t55) = t18.
              t53 = t55.
            ELSE.
              DATA t56 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t56.
              t53 = t56.
            ENDIF.
            t52 = t53.
            DATA(t57) = VALUE abap_bool( ).
            DATA(t58) = VALUE abap_bool( ).
            DATA t59 TYPE REF TO zif_lnt_statement.
            CLEAR t59.
            DATA t60 TYPE REF TO zcl_lnt_statement_node.
            DATA(t61) = t52.
            t60 = t61.
            DATA t62 TYPE REF TO zif_lnt_statement.
            CLEAR t62.
            DATA(t63) = VALUE abap_bool( ).
            DATA(t64) = t60.
            IF t64 IS INITIAL.
              t63 = abap_true.
            ENDIF.
            IF t63 = abap_true.
              DATA t65 TYPE REF TO zif_lnt_statement.
              CLEAR t65.
              t62 = t65.
            ELSE.
              DATA t66 TYPE REF TO zif_lnt_statement.
              DATA t67 TYPE REF TO zcl_lnt_statement_node.
              DATA(t68) = t60.
              t67 = t68.
              t66 = t67->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t62 = t66.
            ENDIF.
            t59 = t62.
            t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_st_comment ).
            t57 = t58.
            IF t58 = abap_true.
              DATA(t69) = VALUE abap_bool( ).
              DATA t70 TYPE string.
              DATA t71 TYPE REF TO zcl_lnt_abstract_token.
              DATA t72 TYPE REF TO zcl_lnt_abstract_token.
              DATA t73 TYPE REF TO zcl_lnt_statement_node.
              DATA(t74) = t52.
              t73 = t74.
              t72 = t73->get_first_token( ).
              t71 = t72.
              DATA t75 TYPE string.
              DATA(t76) = t71.
              t75 = t76->str.
              t70 = t75.
              DATA(t77) = |"!|.
              DATA(t78) = strlen( t70 ).
              DATA t79 TYPE i.
              DATA(t80) = VALUE i( ).
              DATA(t81) = VALUE string( ).
              t79 = strlen( t77 ).
              IF t79 = 0.
                t69 = abap_true.
              ELSEIF t79 <= t78.
                t80 = 0.
                t81 = t70+t80(t79).
                IF t81 = t77.
                  t69 = abap_true.
                ENDIF.
              ENDIF.
              t57 = t69.
            ENDIF.
            t51 = t57.
            DATA(t82) = abap_false.
            t50 = xsdbool( t51 = t82 ).
            t46 = t50.
          ENDIF.
          IF t46 = abap_true.
            DATA t83 TYPE i.
            DATA(t84) = t12.
            DATA(t85) = 1.
            t83 = t84 + t85.
            t12 = t83.
            CONTINUE.
          ELSE.
            DATA(t86) = VALUE abap_bool( ).
            DATA(t87) = VALUE abap_bool( ).
            DATA(t88) = VALUE abap_bool( ).
            DATA t89 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t89.
            DATA t90 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t90.
            DATA(t91) = abap_true.
            IF t91 = abap_true.
              DATA t92 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t92.
              DATA(t93) = t4.
              DATA t94 TYPE i.
              DATA(t95) = t12.
              DATA(t96) = 1.
              t94 = t95 - t96.
              t94 = t94 + 1.
              DATA t97 TYPE REF TO object.
              CLEAR t97.
              t93->load( ).
              CLEAR t97.
              READ TABLE t93->items INDEX t94 INTO t97.
              DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t98.
              CLEAR t92.
              IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t98 ?= t97.
                DATA t99 TYPE REF TO object.
                t99 = t98->as_ref( ).
                t92 ?= t99.
              ELSE.
                t92 ?= t97.
              ENDIF.
              t90 = t92.
            ELSE.
              DATA t100 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t100.
              t90 = t100.
            ENDIF.
            t89 = t90.
            DATA(t101) = VALUE abap_bool( ).
            DATA(t102) = VALUE abap_bool( ).
            DATA t103 TYPE REF TO zif_lnt_statement.
            CLEAR t103.
            DATA t104 TYPE REF TO zcl_lnt_statement_node.
            DATA(t105) = t89.
            t104 = t105.
            DATA t106 TYPE REF TO zif_lnt_statement.
            CLEAR t106.
            DATA(t107) = VALUE abap_bool( ).
            DATA(t108) = t104.
            IF t108 IS INITIAL.
              t107 = abap_true.
            ENDIF.
            IF t107 = abap_true.
              DATA t109 TYPE REF TO zif_lnt_statement.
              CLEAR t109.
              t106 = t109.
            ELSE.
              DATA t110 TYPE REF TO zif_lnt_statement.
              DATA t111 TYPE REF TO zcl_lnt_statement_node.
              DATA(t112) = t104.
              t111 = t112.
              t110 = t111->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t106 = t110.
            ENDIF.
            t103 = t106.
            t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_st_comment ).
            t101 = t102.
            IF t102 = abap_true.
              DATA(t113) = VALUE abap_bool( ).
              DATA t114 TYPE string.
              DATA t115 TYPE REF TO zcl_lnt_abstract_token.
              DATA t116 TYPE REF TO zcl_lnt_abstract_token.
              DATA t117 TYPE REF TO zcl_lnt_statement_node.
              DATA(t118) = t89.
              t117 = t118.
              t116 = t117->get_first_token( ).
              t115 = t116.
              DATA t119 TYPE string.
              DATA(t120) = t115.
              t119 = t120->str.
              t114 = t119.
              DATA(t121) = |"!|.
              DATA(t122) = strlen( t114 ).
              DATA t123 TYPE i.
              DATA(t124) = VALUE i( ).
              DATA(t125) = VALUE string( ).
              t123 = strlen( t121 ).
              IF t123 = 0.
                t113 = abap_true.
              ELSEIF t123 <= t122.
                t124 = 0.
                t125 = t114+t124(t123).
                IF t125 = t121.
                  t113 = abap_true.
                ENDIF.
              ENDIF.
              t101 = t113.
            ENDIF.
            t88 = t101.
            DATA(t126) = abap_true.
            t87 = xsdbool( t88 = t126 ).
            t86 = t87.
            IF t87 = abap_true.
              DATA(t127) = VALUE abap_bool( ).
              DATA(t128) = VALUE f( ).
              DATA(t129) = VALUE f( ).
              DATA t130 TYPE REF TO zcl_lnt_position.
              CLEAR t130.
              DATA t131 TYPE REF TO zcl_lnt_position.
              CLEAR t131.
              DATA t132 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t132.
              DATA t133 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t133.
              DATA(t134) = t4.
              DATA t135 TYPE i.
              DATA(t136) = t12.
              DATA(t137) = 1.
              t135 = t136 - t137.
              t135 = t135 + 1.
              DATA t138 TYPE REF TO object.
              CLEAR t138.
              t134->load( ).
              CLEAR t138.
              READ TABLE t134->items INDEX t135 INTO t138.
              DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t139.
              CLEAR t133.
              IF t138 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t139 ?= t138.
                DATA t140 TYPE REF TO object.
                t140 = t139->as_ref( ).
                t133 ?= t140.
              ELSE.
                t133 ?= t138.
              ENDIF.
              t132 = t133.
              DATA t141 TYPE REF TO zcl_lnt_position.
              DATA t142 TYPE REF TO zcl_lnt_abstract_token.
              DATA t143 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t144) = t132.
              t143 = t144->get_first_token( ).
              t142 = t143.
              DATA t145 TYPE REF TO zcl_lnt_position.
              DATA(t146) = t142.
              t145 = t146->start.
              t141 = t145.
              t131 = t141.
              t130 = t131.
              DATA t147 TYPE f.
              DATA(t148) = t130.
              t147 = t148->row.
              t129 = t147.
              DATA(t149) = CONV f( 1 ).
              t128 = t129 + t149.
              DATA t150 TYPE f.
              DATA t151 TYPE REF TO zcl_lnt_position.
              DATA t152 TYPE REF TO zcl_lnt_position.
              DATA t153 TYPE REF TO zcl_lnt_statement_node.
              DATA(t154) = t18.
              t153 = t154.
              DATA t155 TYPE REF TO zcl_lnt_position.
              DATA t156 TYPE REF TO zcl_lnt_abstract_token.
              DATA t157 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t158) = t153.
              t157 = t158->get_first_token( ).
              t156 = t157.
              DATA t159 TYPE REF TO zcl_lnt_position.
              DATA(t160) = t156.
              t159 = t160->start.
              t155 = t159.
              t152 = t155.
              t151 = t152.
              DATA t161 TYPE f.
              DATA(t162) = t151.
              t161 = t162->row.
              t150 = t161.
              t127 = xsdbool( t128 = t150 ).
              t86 = t127.
            ENDIF.
            IF t86 = abap_true.
              DATA t163 TYPE i.
              DATA(t164) = t12.
              DATA(t165) = 1.
              t163 = t164 + t165.
              t12 = t163.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t166 TYPE REF TO zcl_lnt_statement_node.
      DATA t167 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t167.
      t166 = t167.
      DATA t168 TYPE i.
      DATA t169 TYPE i.
      DATA(t170) = t12.
      DATA(t171) = 1.
      t169 = t170 + t171.
      t168 = t169.
      DO.
        DATA t172 TYPE abap_bool.
        DATA(t173) = t168.
        DATA t174 TYPE i.
        DATA(t175) = t4.
        t175->load( ).
        t174 = lines( t175->items ).
        t172 = xsdbool( t173 < t174 ).
        IF t172 = abap_false.
          EXIT.
        ENDIF.
        DATA(t176) = VALUE abap_bool( ).
        DATA t177 TYPE REF TO zif_lnt_statement.
        CLEAR t177.
        DATA t178 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t178.
        DATA(t179) = t4.
        DATA(t180) = t168.
        t180 = t180 + 1.
        DATA t181 TYPE REF TO object.
        CLEAR t181.
        t179->load( ).
        CLEAR t181.
        READ TABLE t179->items INDEX t180 INTO t181.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        CLEAR t178.
        IF t181 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t182 ?= t181.
          DATA t183 TYPE REF TO object.
          t183 = t182->as_ref( ).
          t178 ?= t183.
        ELSE.
          t178 ?= t181.
        ENDIF.
        t177 = t178->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t176 = abap_true.
          DATA t184 TYPE i.
          DATA(t185) = t168.
          DATA(t186) = 1.
          t184 = t185 + t186.
          t168 = t184.
          CONTINUE.
        ENDIF.
        DATA t187 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t187.
        DATA(t188) = abap_true.
        IF t188 = abap_true.
          DATA t189 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t189.
          DATA(t190) = t4.
          DATA(t191) = t168.
          t191 = t191 + 1.
          DATA t192 TYPE REF TO object.
          CLEAR t192.
          t190->load( ).
          CLEAR t192.
          READ TABLE t190->items INDEX t191 INTO t192.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          CLEAR t189.
          IF t192 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t193 ?= t192.
            DATA t194 TYPE REF TO object.
            t194 = t193->as_ref( ).
            t189 ?= t194.
          ELSE.
            t189 ?= t192.
          ENDIF.
          t187 = t189.
        ELSE.
          DATA t195 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t195.
          t187 = t195.
        ENDIF.
        t166 = t187.
        EXIT.
        DATA t196 TYPE i.
        DATA(t197) = t168.
        DATA(t198) = 1.
        t196 = t197 + t198.
        t168 = t196.
      ENDDO.
      DATA(t199) = VALUE abap_bool( ).
      DATA t200 TYPE REF TO zcl_lnt_statement_node.
      DATA(t201) = t166.
      t200 = t201.
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      t202 = t203.
      DATA(t204) = VALUE abap_bool( ).
      DATA(t205) = t200.
      IF t205 IS INITIAL.
        t204 = abap_true.
      ENDIF.
      t199 = t204.
      IF t199 = abap_true.
        DATA t206 TYPE i.
        DATA(t207) = t12.
        DATA(t208) = 1.
        t206 = t207 + t208.
        t12 = t206.
        CONTINUE.
      ENDIF.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t211) = t18.
      DATA t212 TYPE REF TO zcl_lnt_statement_node.
      DATA(t213) = t166.
      t212 = t213.
      t210 = me->check_bf6e( i_abapdoc = t211 i_next = t212 ).
      t209 = t210.
      DATA(t214) = VALUE abap_bool( ).
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t216) = t209.
      t215 = t216.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t218.
      t217 = t218.
      DATA(t219) = VALUE abap_bool( ).
      DATA(t220) = VALUE abap_bool( ).
      DATA(t221) = t215.
      IF t221 IS INITIAL.
        t220 = abap_true.
      ELSEIF t221->has = abap_false.
        t220 = abap_true.
      ENDIF.
      t219 = xsdbool( t220 = abap_false ).
      t214 = t219.
      IF t214 = abap_true.
        DATA(t222) = t2.
        DATA t223 TYPE REF TO zcl_lnt_issue.
        CLEAR t223.
        DATA(t224) = t1.
        DATA(t225) = t18.
        DATA t226 TYPE string.
        DATA(t227) = t209.
        t226 = t227->value.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t229.
        DATA t230 TYPE string.
        DATA(t231) = |wrong_abapdoc_position|.
        t230 = t231.
        DATA t232 TYPE string.
        DATA(t233) = |Wrong ABAP Doc position|.
        t232 = t233.
        DATA t234 TYPE string.
        DATA(t235) = |ABAP Doc must be placed directly in front of the declaration|.
        t235 = t235 && | it documents.|.
        t234 = t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        DATA(t238) = abap_true.
        IF t238 = abap_true.
          DATA(t239) = |ABAP Doc documents the single declaration following it, an A|.
          t239 = t239 && |BAP Doc block placed\nelsewhere is silently ignored, leaving |.
          t239 = t239 && |the declaration undocumented.\n\nThe following positions are r|.
          t239 = t239 && |eported,\n* in front of a chained keyword, ie. before "CONSTA|.
          t239 = t239 && |NTS:" instead of after the colon,\n* in the middle of a state|.
          t239 = t239 && |ment, ie. between the parameters of a METHODS definition,\n* |.
          t239 = t239 && |directly in front of ENDCLASS, ENDINTERFACE or a SECTION sta|.
          t239 = t239 && |tement.\n\nOnly checks ABAP Doc inside class definitions and i|.
          t239 = t239 && |nterfaces.|.
          DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t240->has = abap_true.
          t240->value = t239.
          t237 = t240.
        ELSE.
          DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t241.
          t237 = t241.
        ENDIF.
        t236 = t237.
        DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t242.
        DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t243.
        DATA(t244) = abap_true.
        IF t244 = abap_true.
          DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t247.
          t246 = t247.
          DATA(t248) = t246.
          DATA(t249) = |SingleFile|.
          t248->load( ).
          APPEND t249 TO t248->items.
          t248->save( ).
          DATA(t250) = t246.
          t245 = t250.
          t243 = t245.
        ELSE.
          DATA t251 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t251.
          t243 = t251.
        ENDIF.
        t242 = t243.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA(t254) = abap_true.
        IF t254 = abap_true.
          DATA(t255) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    "! Na|.
          t255 = t255 && |vigation modes\n    CONSTANTS:\n      BEGIN OF cs_nav_mode,\n  |.
          t255 = t255 && |      back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCLAS|.
          t255 = t255 && |S.|.
          DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t256->has = abap_true.
          t256->value = t255.
          t253 = t256.
        ELSE.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          t253 = t257.
        ENDIF.
        t252 = t253.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        DATA(t260) = abap_true.
        IF t260 = abap_true.
          DATA(t261) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    CONST|.
          t261 = t261 && |ANTS:\n      "! Navigation modes\n      BEGIN OF cs_nav_mode,\n|.
          t261 = t261 && |        back TYPE i VALUE 1,\n      END OF cs_nav_mode.\nENDCL|.
          t261 = t261 && |ASS.|.
          DATA(t262) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t262->has = abap_true.
          t262->value = t261.
          t259 = t262.
        ELSE.
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t263.
          t259 = t263.
        ENDIF.
        t258 = t259.
        DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        t264 = t265.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t267.
        t266 = t267.
        t229 = NEW zcl_lnt_irule_metadata( i_key = t230 i_title = t232 i_short_description = t234 i_bad_example = t252 i_good_example = t258 i_extended_information = t236 i_tags = t242 i_pragma = t264 i_pseudo_comment = t266 ).
        CREATE OBJECT t229->zlnt_view_ownkeys_b0e8086400eb.
        t229->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t268 ).
        ENDIF.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t269 ).
        ENDIF.
        DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t270.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t270 ).
        ENDIF.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t271 ).
        ENDIF.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t272 ).
        ENDIF.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t273 ).
        ENDIF.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t274 ).
        ENDIF.
        CREATE OBJECT t229->zlnt_json_ownkeys_70e5fd461788.
        t229->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t275) = |key|.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t275 p1 = t276 ).
        ENDIF.
        DATA(t277) = |title|.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t277 p1 = t278 ).
        ENDIF.
        DATA(t279) = |shortDescription|.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
        ENDIF.
        DATA(t281) = |extendedInformation|.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
        ENDIF.
        DATA(t283) = |tags|.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
        ENDIF.
        DATA(t285) = |badExample|.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
        ENDIF.
        DATA(t287) = |goodExample|.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
        ENDIF.
        t228 = t229->key.
        DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t290) = me->conf.
        t289 = t290->zlnt_view_read_sr_15c06369f827( ).
        DATA t291 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t291.
        DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t292.
        t223 = zcl_lnt_issue=>at_statement( i_file = t224 i_statement = t225 i_message_26cb = t226 i_key = t228 i_severity = t289 i_fix = t291 i_alternative_fixes = t292 ).
        t222->load( ).
        APPEND t223 TO t222->items.
        t222->save( ).
      ENDIF.
      DATA t293 TYPE i.
      DATA(t294) = t12.
      DATA(t295) = 1.
      t293 = t294 + t295.
      t12 = t293.
    ENDDO.
    DATA(t296) = t2.
    result = t296.

  ENDMETHOD.

  METHOD is_abapdoc.
    DATA(t1) = i_statement.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_statement.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zif_lnt_statement.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zif_lnt_statement.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zif_lnt_statement.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      DATA(t13) = t5.
      t12 = t13.
      t11 = t12->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t7 = t11.
    ENDIF.
    t4 = t7.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_st_comment ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      DATA(t19) = t1.
      t18 = t19.
      t17 = t18->get_first_token( ).
      t16 = t17.
      DATA t20 TYPE string.
      DATA(t21) = t16.
      t20 = t21->str.
      t15 = t20.
      DATA(t22) = |"!|.
      DATA(t23) = strlen( t15 ).
      DATA t24 TYPE i.
      DATA(t25) = VALUE i( ).
      DATA(t26) = VALUE string( ).
      t24 = strlen( t22 ).
      IF t24 = 0.
        t14 = abap_true.
      ELSEIF t24 <= t23.
        t25 = 0.
        t26 = t15+t25(t24).
        IF t26 = t22.
          t14 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t14.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_abapdoc.
    DATA(t2) = i_next.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA t4 TYPE REF TO zif_lnt_statement.
    DATA(t5) = t2.
    t4 = t5->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t3.
    t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_end_class ).
    t9 = t10.
    IF t10 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t3.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_end_interface ).
      t9 = t12.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t3.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_public ).
      t8 = t14.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t3.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_protected ).
      t7 = t16.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t3.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_private ).
      t6 = t18.
    ENDIF.
    IF t6 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = |ABAP Doc does not document anything, move or delete it|.
        DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t23->has = abap_true.
        t23->value = t22.
        t20 = t23.
      ELSE.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        t20 = t24.
      ENDIF.
      result = t20.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_position.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    DATA(t28) = t1.
    t27 = t28.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t32) = t27.
    t31 = t32->get_first_token( ).
    t30 = t31.
    DATA t33 TYPE REF TO zcl_lnt_position.
    DATA(t34) = t30.
    t33 = t34->start.
    t29 = t33.
    t26 = t29.
    t25 = t26.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    DATA t37 TYPE REF TO zcl_lnt_statement_node.
    DATA(t38) = t2.
    t37 = t38.
    DATA t39 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t40) = t37.
    t39 = t40->colon.
    t36 = t39.
    t35 = t36.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t43) = t35.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t42.
    IF t47 IS INITIAL.
      t46 = abap_true.
    ENDIF.
    t41 = t46.
    IF t41 = abap_true.
      DATA t48 TYPE abap_bool.
      DATA t49 TYPE abap_bool.
      DATA(t50) = t25.
      DATA t51 TYPE REF TO zcl_lnt_position.
      DATA t52 TYPE REF TO zcl_lnt_statement_node.
      DATA(t53) = t2.
      t52 = t53.
      DATA t54 TYPE REF TO zcl_lnt_position.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t57) = t52.
      t56 = t57->get_first_token( ).
      t55 = t56.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA(t59) = t55.
      t58 = t59->start.
      t54 = t58.
      t51 = t54.
      t49 = t50->is_after( i_p = t51 ).
      DATA(t60) = abap_true.
      t48 = xsdbool( t49 = t60 ).
      IF t48 = abap_true.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = abap_true.
        IF t62 = abap_true.
          DATA(t63) = |ABAP Doc inside statement, move it in front of the statement|.
          DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t64->has = abap_true.
          t64->value = t63.
          t61 = t64.
        ELSE.
          DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t65.
          t61 = t65.
        ENDIF.
        result = t61.
        RETURN.
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      result = t66.
      RETURN.
    ENDIF.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zcl_lnt_position.
    DATA(t70) = t25.
    t69 = t70.
    DATA t71 TYPE REF TO zcl_lnt_position.
    DATA t72 TYPE REF TO zcl_lnt_position.
    DATA t73 TYPE REF TO zcl_lnt_abstract_token.
    DATA t74 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t75) = t35.
    t74 = t75.
    t73 = t74.
    DATA t76 TYPE REF TO zcl_lnt_position.
    DATA(t77) = t73.
    t76 = t77->start.
    t72 = t76.
    t71 = t72.
    DATA t78 TYPE abap_bool.
    DATA t79 TYPE abap_bool.
    DATA t80 TYPE f.
    DATA(t81) = t69.
    t80 = t81->row.
    DATA t82 TYPE f.
    DATA(t83) = t71.
    t82 = t83->row.
    t79 = xsdbool( t80 < t82 ).
    t78 = t79.
    IF t79 = abap_false.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE abap_bool.
      DATA t86 TYPE f.
      DATA(t87) = t69.
      t86 = t87->row.
      DATA t88 TYPE f.
      DATA(t89) = t71.
      t88 = t89->row.
      t85 = xsdbool( t86 = t88 ).
      t84 = t85.
      IF t85 = abap_true.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t92) = t69.
        t91 = t92->col.
        DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t94) = t71.
        t93 = t94->col.
        t90 = zlnt_runtime_numb_290eb04a9758=>compare( left = t91 right = t93 op = `<` ).
        t84 = t90.
      ENDIF.
      t78 = t84.
    ENDIF.
    t68 = t78.
    DATA(t95) = abap_true.
    t67 = xsdbool( t68 = t95 ).
    IF t67 = abap_true.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA(t97) = abap_true.
      IF t97 = abap_true.
        DATA(t98) = |ABAP Doc in front of chained statement, move it after the co|.
        t98 = t98 && |lon|.
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = t98.
        t96 = t99.
      ELSE.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        t96 = t100.
      ENDIF.
      result = t96.
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t105) = t2.
    t104 = t105->get_tokens( ).
    t103 = t104.
    DATA t106 TYPE i.
    DATA t107 TYPE i.
    DATA(t108) = t103.
    t108->load( ).
    t107 = lines( t108->items ).
    t106 = t107.
    DATA t109 TYPE i.
    DATA(t110) = 0.
    t109 = t110.
    DATA t111 TYPE REF TO zcl_lnt_abstract_token.
    DATA t112 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t112.
    t111 = t112.
    DO.
      DATA t113 TYPE abap_bool.
      DATA(t114) = t109.
      DATA(t115) = t106.
      t113 = xsdbool( t114 < t115 ).
      IF t113 = abap_false.
        EXIT.
      ENDIF.
      DATA t116 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t116.
      DATA t117 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t117.
      DATA t118 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t118.
      DATA(t119) = t103.
      DATA(t120) = t109.
      DATA t121 TYPE REF TO object.
      t121 = t119->get( p0 = t120 ).
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      CLEAR t118.
      IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t122 ?= t121.
        DATA t123 TYPE REF TO object.
        t123 = t122->as_ref( ).
        t118 ?= t123.
      ELSE.
        t118 ?= t121.
      ENDIF.
      t117 = t118.
      t116 = t117.
      DATA t124 TYPE abap_bool.
      DATA t125 TYPE REF TO zcl_lnt_position.
      DATA t126 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t127) = t116.
      t126 = t127.
      DATA t128 TYPE REF TO zcl_lnt_position.
      DATA(t129) = t126.
      t128 = t129->start.
      t125 = t128.
      DATA t130 TYPE REF TO zcl_lnt_position.
      DATA t131 TYPE REF TO zcl_lnt_abstract_token.
      DATA t132 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t133) = t35.
      t132 = t133.
      t131 = t132.
      DATA t134 TYPE REF TO zcl_lnt_position.
      DATA(t135) = t131.
      t134 = t135->start.
      t130 = t134.
      t124 = t125->is_after( i_p = t130 ).
      IF t124 = abap_true.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t136.
        DATA(t137) = abap_true.
        IF t137 = abap_true.
          DATA(t138) = t116.
          t136 = t138.
        ELSE.
          DATA t139 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t139.
          t136 = t139.
        ENDIF.
        t111 = t136.
        EXIT.
      ENDIF.
      DATA t140 TYPE i.
      DATA(t141) = t109.
      DATA(t142) = 1.
      t140 = t141 + t142.
      t109 = t140.
    ENDDO.
    DATA(t143) = t111.
    t102 = t143.
    t101 = t102.
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = VALUE abap_bool( ).
    DATA t146 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t147) = t101.
    t146 = t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    t148 = t149.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = VALUE abap_bool( ).
    DATA(t152) = t146.
    IF t152 IS INITIAL.
      t151 = abap_true.
    ENDIF.
    t150 = xsdbool( t151 = abap_false ).
    t145 = t150.
    t144 = t145.
    IF t145 = abap_true.
      DATA t153 TYPE abap_bool.
      DATA t154 TYPE abap_bool.
      DATA(t155) = t25.
      DATA t156 TYPE REF TO zcl_lnt_position.
      DATA t157 TYPE REF TO zcl_lnt_abstract_token.
      DATA t158 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t159) = t101.
      t158 = t159.
      t157 = t158.
      DATA t160 TYPE REF TO zcl_lnt_position.
      DATA(t161) = t157.
      t160 = t161->start.
      t156 = t160.
      t154 = t155->is_after( i_p = t156 ).
      DATA(t162) = abap_true.
      t153 = xsdbool( t154 = t162 ).
      t144 = t153.
    ENDIF.
    IF t144 = abap_true.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      DATA(t164) = abap_true.
      IF t164 = abap_true.
        DATA(t165) = |ABAP Doc inside statement, move it in front of the chained d|.
        t165 = t165 && |eclaration|.
        DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t166->has = abap_true.
        t166->value = t165.
        t163 = t166.
      ELSE.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t167.
        t163 = t167.
      ENDIF.
      result = t163.
      RETURN.
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t168.
    result = t168.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_wrng_abpdc_pstn_cnf( me->g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_wrng_abpdc_pstn_cnf( me->g_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_wrng_abpdc_pstn_cnf.
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
        t1 = NEW zcl_lnt_wrng_abpdc_pstn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_wr_ab_ps_ts_wr_ab_ps( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_wr_ab_ps_ts_wr_ab_ps( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1777_73e9da6ece7a.
  ENDMETHOD.
ENDCLASS.
