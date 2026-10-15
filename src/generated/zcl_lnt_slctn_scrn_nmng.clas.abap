* TS: src/rules/selection_screen_naming.ts:21:1 SelectionScreenNaming
CLASS zcl_lnt_slctn_scrn_nmng DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm IMPORTING i_conf TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_pattern_for_statement IMPORTING i_statement TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE string.
    METHODS get_field_for_statement_node IMPORTING i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slctn_scrn_nmng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_slctn_scrn_nmng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |selection_screen_naming|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Selection screen naming conventions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for selec|.
    t7 = t7 && |tion-screen variable names.|.
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
      DATA(t15) = |Naming|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t8 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |key|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |title|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |shortDescription|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |required|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t12 = t5->has.
    ENDIF.
    IF t7 IS BOUND.
      t13 = t7->has.
    ENDIF.
    IF t12 = t13.
      IF t12 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t7->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    IF t4 = abap_true.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA(t18) = |Selection-Screen variable name does not match pattern |.
      DATA(t19) = t1.
      DATA(t20) = strlen( t18 ).
      t17 = |{ t18 }{ t19 }|.
      DATA(t21) = |: |.
      DATA(t22) = strlen( t17 ).
      t16 = |{ t17 }{ t21 }|.
      DATA(t23) = t2.
      DATA(t24) = strlen( t16 ).
      t15 = |{ t16 }{ t23 }|.
      DATA(t25) = ||.
      DATA(t26) = strlen( t15 ).
      t14 = |{ t15 }{ t25 }|.
      t3 = t14.
    ELSE.
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA(t31) = |Selection-Screen variable name must not match pattern |.
      DATA(t32) = t1.
      DATA(t33) = strlen( t31 ).
      t30 = |{ t31 }{ t32 }|.
      DATA(t34) = |: |.
      DATA(t35) = strlen( t30 ).
      t29 = |{ t30 }{ t34 }|.
      DATA(t36) = t2.
      DATA(t37) = strlen( t29 ).
      t28 = |{ t29 }{ t36 }|.
      DATA(t38) = ||.
      DATA(t39) = strlen( t28 ).
      t27 = |{ t28 }{ t38 }|.
      t3 = t27.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = me->conf.
    t6 = t7->zlnt_view_read_sr_ef452f77fd06( ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t4 = t10.
    IF t4 = abap_true.
      DATA(t12) = me->conf.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = |required|.
        DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t13 ).
    ENDIF.
    DATA t18 TYPE abap_bool.
    DATA(t19) = abap_false.
    t18 = t19.
    DATA t20 TYPE abap_bool.
    DATA(t21) = abap_false.
    t20 = t21.
    DATA t22 TYPE abap_bool.
    DATA(t23) = abap_false.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = me->conf.
    t27 = t28->zlnt_view_read_sr_75544672d945( ).
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t26.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ELSEIF t32->has = abap_false.
      t31 = abap_true.
    ENDIF.
    t25 = t31.
    t24 = t25.
    IF t25 = abap_false.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE i.
      DATA t35 TYPE string.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t37) = me->conf.
      t36 = t37->zlnt_view_read_sr_75544672d945( ).
      t35 = t36->value.
      DATA(t38) = strlen( t35 ).
      t34 = t38.
      DATA(t39) = 0.
      t33 = xsdbool( t34 = t39 ).
      t24 = t33.
    ENDIF.
    IF t24 = abap_true.
      DATA(t40) = abap_true.
      t18 = t40.
    ENDIF.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t45) = me->conf.
    t44 = t45->zlnt_view_read_sr_6d5a5cea1316( ).
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    t46 = t47.
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = t43.
    IF t49 IS INITIAL.
      t48 = abap_true.
    ELSEIF t49->has = abap_false.
      t48 = abap_true.
    ENDIF.
    t42 = t48.
    t41 = t42.
    IF t42 = abap_false.
      DATA t50 TYPE abap_bool.
      DATA t51 TYPE i.
      DATA t52 TYPE string.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t54) = me->conf.
      t53 = t54->zlnt_view_read_sr_6d5a5cea1316( ).
      t52 = t53->value.
      DATA(t55) = strlen( t52 ).
      t51 = t55.
      DATA(t56) = 0.
      t50 = xsdbool( t51 = t56 ).
      t41 = t50.
    ENDIF.
    IF t41 = abap_true.
      DATA(t57) = abap_true.
      t20 = t57.
    ENDIF.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = VALUE abap_bool( ).
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t62) = me->conf.
    t61 = t62->zlnt_view_read_sr_8f2e2a5ebfb2( ).
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    t63 = t64.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = t60.
    IF t66 IS INITIAL.
      t65 = abap_true.
    ELSEIF t66->has = abap_false.
      t65 = abap_true.
    ENDIF.
    t59 = t65.
    t58 = t59.
    IF t59 = abap_false.
      DATA t67 TYPE abap_bool.
      DATA t68 TYPE i.
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t71) = me->conf.
      t70 = t71->zlnt_view_read_sr_8f2e2a5ebfb2( ).
      t69 = t70->value.
      DATA(t72) = strlen( t69 ).
      t68 = t72.
      DATA(t73) = 0.
      t67 = xsdbool( t68 = t73 ).
      t58 = t67.
    ENDIF.
    IF t58 = abap_true.
      DATA(t74) = abap_true.
      t22 = t74.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zcl_lnt_abap_file.
    DATA(t77) = t1.
    t76 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t79) = t76.
    t78 = t79->statements.
    t75 = t78.
    DATA t80 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t80.
    DATA t81 TYPE REF TO object.
    CLEAR t81.
    DATA(t82) = VALUE i( ).
    DO.
      t75->load( ).
      IF t82 >= lines( t75->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t75->items INDEX t82 + 1 INTO t81.
      t82 = t82 + 1.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t80.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t81.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t80 ?= t84.
      ELSE.
        t80 ?= t81.
      ENDIF.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE REF TO zif_lnt_statement.
      DATA(t90) = t80.
      t89 = t90->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_st_parameter ).
      t87 = t88.
      IF t88 = abap_true.
        DATA t91 TYPE abap_bool.
        DATA(t92) = t18.
        t91 = xsdbool( t92 = abap_false ).
        t87 = t91.
      ENDIF.
      t86 = t87.
      IF t87 = abap_false.
        DATA t93 TYPE abap_bool.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE REF TO zif_lnt_statement.
        DATA(t96) = t80.
        t95 = t96->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_st_select_option ).
        t93 = t94.
        IF t94 = abap_true.
          DATA t97 TYPE abap_bool.
          DATA(t98) = t20.
          t97 = xsdbool( t98 = abap_false ).
          t93 = t97.
        ENDIF.
        t86 = t93.
      ENDIF.
      t85 = t86.
      IF t86 = abap_false.
        DATA t99 TYPE abap_bool.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE REF TO zif_lnt_statement.
        DATA(t102) = t80.
        t101 = t102->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_st_selection_screen ).
        t99 = t100.
        IF t100 = abap_true.
          DATA t103 TYPE abap_bool.
          DATA(t104) = t22.
          t103 = xsdbool( t104 = abap_false ).
          t99 = t103.
        ENDIF.
        t85 = t99.
      ENDIF.
      IF t85 = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t105.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_statement_node.
        DATA(t108) = t80.
        t107 = t108.
        DATA t109 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t109.
        DATA t110 TYPE abap_bool.
        DATA t111 TYPE REF TO zif_lnt_statement.
        DATA(t112) = t107.
        t111 = t112->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t110 = xsdbool( t111 IS BOUND AND t111 IS INSTANCE OF zcl_lnt_st_parameter ).
        IF t110 = abap_true.
          DATA t113 TYPE REF TO zcl_lnt_expression_node.
          DATA(t114) = t107.
          DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
          t113 = t114->find_first_expression( i_type_9913 = t115 ).
          t109 = t113.
        ELSE.
          DATA t116 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t116.
          DATA t117 TYPE abap_bool.
          DATA t118 TYPE REF TO zif_lnt_statement.
          DATA(t119) = t107.
          t118 = t119->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_st_select_option ).
          IF t117 = abap_true.
            DATA t120 TYPE REF TO zcl_lnt_expression_node.
            DATA(t121) = t107.
            DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
            t120 = t121->find_first_expression( i_type_9913 = t122 ).
            t116 = t120.
          ELSE.
            DATA t123 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t123.
            DATA t124 TYPE abap_bool.
            DATA t125 TYPE REF TO zif_lnt_statement.
            DATA(t126) = t107.
            t125 = t126->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t124 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_selection_screen ).
            IF t124 = abap_true.
              DATA t127 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t127.
              DATA t128 TYPE REF TO zcl_lnt_expression_node.
              DATA t129 TYPE REF TO zcl_lnt_expression_node.
              DATA(t130) = t107.
              DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604.
              t129 = t130->find_first_expression( i_type_9913 = t131 ).
              t128 = t129.
              DATA(t132) = VALUE abap_bool( ).
              DATA(t133) = VALUE abap_bool( ).
              DATA t134 TYPE REF TO zcl_lnt_expression_node.
              DATA(t135) = t128.
              t134 = t135.
              DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t137.
              t136 = t137.
              DATA(t138) = VALUE abap_bool( ).
              DATA(t139) = t134.
              IF t139 IS INITIAL.
                t138 = abap_true.
              ENDIF.
              t133 = t138.
              t132 = t133.
              IF t133 = abap_true.
                DATA(t140) = VALUE abap_bool( ).
                DATA(t141) = VALUE i( ).
                DATA t142 TYPE string.
                DATA t143 TYPE string.
                DATA(t144) = t107.
                t143 = t144->concat_tokens( ).
                DATA(t145) = strlen( t143 ).
                t142 = t143.
                IF t142 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t142 TO UPPER CASE.
                ELSE.
                  t142 = zlnt_runtime_uppe_91169605024d=>full( t142 ).
                ENDIF.
                DATA(t146) = | BEGIN OF TABBED BLOCK|.
                DATA(t147) = strlen( t142 ).
                IF t146 IS INITIAL.
                  t141 = 0.
                ELSE.
                  FIND t146 IN t142 MATCH OFFSET t141.
                  IF sy-subrc <> 0.
                    t141 = -1.
                  ENDIF.
                ENDIF.
                DATA(t148) = 0.
                t140 = xsdbool( t141 >= t148 ).
                t132 = t140.
              ENDIF.
              IF t132 = abap_true.
                DATA t149 TYPE REF TO zcl_lnt_expression_node.
                DATA(t150) = t107.
                DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
                t149 = t150->find_first_expression( i_type_9913 = t151 ).
                t128 = t149.
              ENDIF.
              DATA(t152) = t128.
              t127 = t152.
              t123 = t127.
            ELSE.
              DATA t153 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t153.
              t123 = t153.
            ENDIF.
            t116 = t123.
          ENDIF.
          t109 = t116.
        ENDIF.
        t106 = t109.
        t105 = t106.
        DATA t154 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t154.
        DATA t155 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t155.
        DATA(t156) = VALUE string( ).
        DATA t157 TYPE REF TO zif_lnt_statement.
        DATA t158 TYPE REF TO zif_lnt_statement.
        DATA(t159) = t80.
        t158 = t159->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t157 = t158.
        DATA(t160) = VALUE string( ).
        DATA t161 TYPE string.
        DATA(t162) = ||.
        t161 = t162.
        DATA t163 TYPE abap_bool.
        DATA(t164) = t157.
        t163 = xsdbool( t164 IS BOUND AND t164 IS INSTANCE OF zcl_lnt_st_parameter ).
        IF t163 = abap_true.
          DATA t165 TYPE string.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t167) = me->conf.
          t166 = t167->zlnt_view_read_sr_75544672d945( ).
          t165 = t166->value.
          t161 = t165.
        ELSE.
          DATA t168 TYPE abap_bool.
          DATA(t169) = t157.
          t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_st_select_option ).
          IF t168 = abap_true.
            DATA t170 TYPE string.
            DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t172) = me->conf.
            t171 = t172->zlnt_view_read_sr_6d5a5cea1316( ).
            t170 = t171->value.
            t161 = t170.
          ELSE.
            DATA t173 TYPE abap_bool.
            DATA(t174) = t157.
            t173 = xsdbool( t174 IS BOUND AND t174 IS INSTANCE OF zcl_lnt_st_selection_screen ).
            IF t173 = abap_true.
              DATA t175 TYPE string.
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t177) = me->conf.
              t176 = t177->zlnt_view_read_sr_8f2e2a5ebfb2( ).
              t175 = t176->value.
              t161 = t175.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t178) = t161.
        t160 = t178.
        t156 = t160.
        DATA(t179) = |i|.
        CREATE OBJECT t155 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t156 flags = t179.
        t154 = t155.
        DATA t180 TYPE abap_bool.
        DATA t181 TYPE abap_bool.
        DATA(t182) = t105.
        t181 = xsdbool( t182 IS BOUND ).
        t180 = t181.
        IF t181 = abap_true.
          DATA(t183) = VALUE abap_bool( ).
          DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t184.
          DATA(t185) = abap_true.
          IF t185 = abap_true.
            DATA t186 TYPE string.
            DATA t187 TYPE REF TO zcl_lnt_abstract_token.
            DATA t188 TYPE REF TO zcl_lnt_abstract_token.
            DATA t189 TYPE REF TO zcl_lnt_expression_node.
            DATA(t190) = t105.
            t189 = t190.
            t188 = t189->get_first_token( ).
            t187 = t188.
            DATA t191 TYPE string.
            DATA(t192) = t187.
            t191 = t192->str.
            t186 = t191.
            DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t193->has = abap_true.
            t193->value = t186.
            t184 = t193.
          ELSE.
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t194.
            t184 = t194.
          ENDIF.
          DATA(t195) = t154.
          DATA(t196) = me->conf.
          t183 = zcl_lnt_name_validator=>violates_rule( i_name = t184 i_pattern = t195 i_params_4c59 = t196 ).
          t180 = t183.
        ENDIF.
        IF t180 = abap_true.
          DATA(t197) = t2.
          DATA t198 TYPE REF TO zcl_lnt_issue.
          CLEAR t198.
          DATA(t199) = t1.
          DATA t200 TYPE REF TO zcl_lnt_abstract_token.
          DATA t201 TYPE REF TO zcl_lnt_expression_node.
          DATA(t202) = t105.
          t201 = t202.
          t200 = t201->get_first_token( ).
          DATA(t203) = VALUE string( ).
          DATA(t204) = VALUE string( ).
          DATA(t205) = VALUE string( ).
          DATA t206 TYPE REF TO zif_lnt_statement.
          DATA t207 TYPE REF TO zif_lnt_statement.
          DATA(t208) = t80.
          t207 = t208->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t206 = t207.
          DATA(t209) = VALUE string( ).
          DATA t210 TYPE string.
          DATA(t211) = ||.
          t210 = t211.
          DATA t212 TYPE abap_bool.
          DATA(t213) = t206.
          t212 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_st_parameter ).
          IF t212 = abap_true.
            DATA t214 TYPE string.
            DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t216) = me->conf.
            t215 = t216->zlnt_view_read_sr_75544672d945( ).
            t214 = t215->value.
            t210 = t214.
          ELSE.
            DATA t217 TYPE abap_bool.
            DATA(t218) = t206.
            t217 = xsdbool( t218 IS BOUND AND t218 IS INSTANCE OF zcl_lnt_st_select_option ).
            IF t217 = abap_true.
              DATA t219 TYPE string.
              DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t221) = me->conf.
              t220 = t221->zlnt_view_read_sr_6d5a5cea1316( ).
              t219 = t220->value.
              t210 = t219.
            ELSE.
              DATA t222 TYPE abap_bool.
              DATA(t223) = t206.
              t222 = xsdbool( t223 IS BOUND AND t223 IS INSTANCE OF zcl_lnt_st_selection_screen ).
              IF t222 = abap_true.
                DATA t224 TYPE string.
                DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t226) = me->conf.
                t225 = t226->zlnt_view_read_sr_8f2e2a5ebfb2( ).
                t224 = t225->value.
                t210 = t224.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA(t227) = t210.
          t209 = t227.
          t205 = t209.
          t204 = t205.
          DATA t228 TYPE string.
          DATA t229 TYPE string.
          DATA t230 TYPE REF TO zcl_lnt_abstract_token.
          DATA t231 TYPE REF TO zcl_lnt_abstract_token.
          DATA t232 TYPE REF TO zcl_lnt_expression_node.
          DATA(t233) = t105.
          t232 = t233.
          t231 = t232->get_first_token( ).
          t230 = t231.
          DATA t234 TYPE string.
          DATA(t235) = t230.
          t234 = t235->str.
          t229 = t234.
          t228 = t229.
          DATA(t236) = VALUE string( ).
          DATA(t237) = VALUE abap_bool( ).
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t239) = me->conf.
          t238 = t239->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t240.
          DATA(t241) = abap_true.
          IF t241 = abap_true.
            DATA(t242) = |required|.
            DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t243->has = abap_true.
            t243->value = t242.
            t240 = t243.
          ELSE.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            t240 = t244.
          ENDIF.
          DATA(t245) = VALUE abap_bool( ).
          DATA(t246) = VALUE abap_bool( ).
          IF t238 IS BOUND.
            t245 = t238->has.
          ENDIF.
          IF t240 IS BOUND.
            t246 = t240->has.
          ENDIF.
          IF t245 = t246.
            IF t245 = abap_false.
              t237 = abap_true.
            ELSEIF t238->value = t240->value.
              t237 = abap_true.
            ENDIF.
          ENDIF.
          IF t237 = abap_true.
            DATA t247 TYPE string.
            DATA t248 TYPE string.
            DATA t249 TYPE string.
            DATA t250 TYPE string.
            DATA(t251) = |Selection-Screen variable name does not match pattern |.
            DATA(t252) = t204.
            DATA(t253) = strlen( t251 ).
            t250 = |{ t251 }{ t252 }|.
            DATA(t254) = |: |.
            DATA(t255) = strlen( t250 ).
            t249 = |{ t250 }{ t254 }|.
            DATA(t256) = t228.
            DATA(t257) = strlen( t249 ).
            t248 = |{ t249 }{ t256 }|.
            DATA(t258) = ||.
            DATA(t259) = strlen( t248 ).
            t247 = |{ t248 }{ t258 }|.
            t236 = t247.
          ELSE.
            DATA t260 TYPE string.
            DATA t261 TYPE string.
            DATA t262 TYPE string.
            DATA t263 TYPE string.
            DATA(t264) = |Selection-Screen variable name must not match pattern |.
            DATA(t265) = t204.
            DATA(t266) = strlen( t264 ).
            t263 = |{ t264 }{ t265 }|.
            DATA(t267) = |: |.
            DATA(t268) = strlen( t263 ).
            t262 = |{ t263 }{ t267 }|.
            DATA(t269) = t228.
            DATA(t270) = strlen( t262 ).
            t261 = |{ t262 }{ t269 }|.
            DATA(t271) = ||.
            DATA(t272) = strlen( t261 ).
            t260 = |{ t261 }{ t271 }|.
            t236 = t260.
          ENDIF.
          t203 = t236.
          DATA(t273) = VALUE string( ).
          DATA t274 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t274.
          DATA t275 TYPE string.
          DATA(t276) = |selection_screen_naming|.
          t275 = t276.
          DATA t277 TYPE string.
          DATA(t278) = |Selection screen naming conventions|.
          t277 = t278.
          DATA t279 TYPE string.
          DATA(t280) = |Allows you to enforce a pattern, such as a prefix, for selec|.
          t280 = t280 && |tion-screen variable names.|.
          t279 = t280.
          DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t281.
          DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t282.
          DATA(t283) = abap_true.
          IF t283 = abap_true.
            DATA t284 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t285 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t286 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t286.
            t285 = t286.
            DATA(t287) = t285.
            DATA(t288) = |Naming|.
            t287->load( ).
            APPEND t288 TO t287->items.
            t287->save( ).
            DATA(t289) = t285.
            DATA(t290) = |SingleFile|.
            t289->load( ).
            APPEND t290 TO t289->items.
            t289->save( ).
            DATA(t291) = t285.
            t284 = t291.
            t282 = t284.
          ELSE.
            DATA t292 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t292.
            t282 = t292.
          ENDIF.
          t281 = t282.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          t293 = t294.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          t295 = t296.
          DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t298.
          t297 = t298.
          DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          t299 = t300.
          DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t302.
          t301 = t302.
          t274 = NEW zcl_lnt_irule_metadata( i_key = t275 i_title = t277 i_short_description = t279 i_bad_example = t293 i_good_example = t295 i_extended_information = t297 i_tags = t281 i_pragma = t299 i_pseudo_comment = t301 ).
          CREATE OBJECT t274->zlnt_view_ownkeys_b0e8086400eb.
          t274->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t303 ).
          ENDIF.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t304 ).
          ENDIF.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t305 ).
          ENDIF.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t306 ).
          ENDIF.
          CREATE OBJECT t274->zlnt_json_ownkeys_70e5fd461788.
          t274->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t307) = |key|.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
          ENDIF.
          DATA(t309) = |title|.
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
          ENDIF.
          DATA(t311) = |shortDescription|.
          DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t312.
          IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = t311 p1 = t312 ).
          ENDIF.
          DATA(t313) = |tags|.
          DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t314.
          IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
          ENDIF.
          t273 = t274->key.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t316) = me->conf.
          t315 = t316->zlnt_view_read_sr_15c06369f827( ).
          DATA t317 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t317.
          t198 = zcl_lnt_issue=>at_token( i_file = t199 i_token = t200 i_message_26cb = t203 i_key = t273 i_severity = t315 i_fix = t317 ).
          t197->load( ).
          APPEND t198 TO t197->items.
          t197->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t318) = t2.
    result = t318.

  ENDMETHOD.

  METHOD get_pattern_for_statement.
    DATA(t1) = i_statement.
    DATA t2 TYPE string.
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_parameter ).
    IF t4 = abap_true.
      DATA t6 TYPE string.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t8) = me->conf.
      t7 = t8->zlnt_view_read_sr_75544672d945( ).
      t6 = t7->value.
      t2 = t6.
    ELSE.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_st_select_option ).
      IF t9 = abap_true.
        DATA t11 TYPE string.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t13) = me->conf.
        t12 = t13->zlnt_view_read_sr_6d5a5cea1316( ).
        t11 = t12->value.
        t2 = t11.
      ELSE.
        DATA t14 TYPE abap_bool.
        DATA(t15) = t1.
        t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_selection_screen ).
        IF t14 = abap_true.
          DATA t16 TYPE string.
          DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t18) = me->conf.
          t17 = t18->zlnt_view_read_sr_8f2e2a5ebfb2( ).
          t16 = t17->value.
          t2 = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t19) = t2.
    result = t19.

  ENDMETHOD.

  METHOD get_field_for_statement_node.
    DATA(t1) = i_stat_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_parameter ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_expression_node.
      DATA(t6) = t1.
      DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
      t5 = t6->find_first_expression( i_type_9913 = t7 ).
      result = t5.
      RETURN.
    ELSE.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE REF TO zif_lnt_statement.
      DATA(t10) = t1.
      t9 = t10->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_st_select_option ).
      IF t8 = abap_true.
        DATA t11 TYPE REF TO zcl_lnt_expression_node.
        DATA(t12) = t1.
        DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t11 = t12->find_first_expression( i_type_9913 = t13 ).
        result = t11.
        RETURN.
      ELSE.
        DATA t14 TYPE abap_bool.
        DATA t15 TYPE REF TO zif_lnt_statement.
        DATA(t16) = t1.
        t15 = t16->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_selection_screen ).
        IF t14 = abap_true.
          DATA t17 TYPE REF TO zcl_lnt_expression_node.
          DATA t18 TYPE REF TO zcl_lnt_expression_node.
          DATA(t19) = t1.
          DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604.
          t18 = t19->find_first_expression( i_type_9913 = t20 ).
          t17 = t18.
          DATA(t21) = VALUE abap_bool( ).
          DATA(t22) = VALUE abap_bool( ).
          DATA t23 TYPE REF TO zcl_lnt_expression_node.
          DATA(t24) = t17.
          t23 = t24.
          DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t26.
          t25 = t26.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = t23.
          IF t28 IS INITIAL.
            t27 = abap_true.
          ENDIF.
          t22 = t27.
          t21 = t22.
          IF t22 = abap_true.
            DATA(t29) = VALUE abap_bool( ).
            DATA(t30) = VALUE i( ).
            DATA t31 TYPE string.
            DATA t32 TYPE string.
            DATA(t33) = t1.
            t32 = t33->concat_tokens( ).
            DATA(t34) = strlen( t32 ).
            t31 = t32.
            IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t31 TO UPPER CASE.
            ELSE.
              t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
            ENDIF.
            DATA(t35) = | BEGIN OF TABBED BLOCK|.
            DATA(t36) = strlen( t31 ).
            IF t35 IS INITIAL.
              t30 = 0.
            ELSE.
              FIND t35 IN t31 MATCH OFFSET t30.
              IF sy-subrc <> 0.
                t30 = -1.
              ENDIF.
            ENDIF.
            DATA(t37) = 0.
            t29 = xsdbool( t30 >= t37 ).
            t21 = t29.
          ENDIF.
          IF t21 = abap_true.
            DATA t38 TYPE REF TO zcl_lnt_expression_node.
            DATA(t39) = t1.
            DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
            t38 = t39->find_first_expression( i_type_9913 = t40 ).
            t17 = t38.
          ENDIF.
          DATA(t41) = t17.
          result = t41.
          RETURN.
        ELSE.
          DATA t42 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t42.
          result = t42.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_slctn_scrn_nmng_cnf( me->g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slctn_scrn_nmng_cnf( me->g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
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
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_slctn_scrn_nmng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1692_29dfda0dd844.
  ENDMETHOD.
ENDCLASS.
