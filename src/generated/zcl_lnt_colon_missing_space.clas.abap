* TS: src/rules/colon_missing_space.ts:13:1 ColonMissingSpace
CLASS zcl_lnt_colon_missing_space DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp RETURNING VALUE(result) TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
    METHODS s_c_i_s_r_cl_ms_sp_ts_cl_ms_sp IMPORTING i_conf TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
    METHODS r_p_i_s_r_cl_ms_sp_ts_cl_ms_sp IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_colon_missing_space IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_cln_mssng_spc_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |colon_missing_space|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Colon missing space|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for missing spaces after colons in chained statements|.
    t7 = t7 && |.|.
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
      DATA(t15) = |Whitespace|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Quickfix|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |SingleFile|.
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
      DATA(t25) = |WRITE:hello, world.|.
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
      DATA(t31) = |WRITE: hello, world.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
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
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Missing space after the colon|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_ms_sp_ts_cl_ms_sp.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_cl_ms_sp_ts_cl_ms_sp.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
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
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_statement_node.
      DATA(t17) = t9.
      t16 = t17.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t19) = t16.
      t18 = t19->colon.
      t15 = t18.
      t14 = t15.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t14.
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
      IF t22 = abap_false.
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE REF TO zif_lnt_statement.
        DATA(t31) = t9.
        t30 = t31->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_native_sql ).
        t21 = t29.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE REF TO zif_lnt_statement.
        DATA(t34) = t9.
        t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_st_comment ).
        t20 = t32.
      ENDIF.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = t37.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t43) = t9.
      t42 = t43->get_tokens( ).
      t40 = t41->concat( p0 = t42 ).
      t39 = t40.
      DATA(t44) = t39.
      t36 = t44.
      t35 = t36.
      DATA(t45) = t35.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t47) = t14.
      t46 = t47.
      t45->load( ).
      APPEND t46 TO t45->items.
      t45->save( ).
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t50) = t35.
      t49 = t50.
      DATA t51 TYPE i.
      DATA(t52) = 1.
      t51 = t52.
      DO.
        DATA t53 TYPE abap_bool.
        DATA(t54) = t51.
        DATA t55 TYPE i.
        DATA(t56) = t49.
        t56->load( ).
        t55 = lines( t56->items ).
        t53 = xsdbool( t54 < t55 ).
        IF t53 = abap_false.
          EXIT.
        ENDIF.
        DATA t57 TYPE i.
        DATA(t58) = t51.
        t57 = t58.
        DO.
          DATA t59 TYPE abap_bool.
          DATA(t60) = t57.
          DATA(t61) = 0.
          t59 = xsdbool( t60 > t61 ).
          IF t59 = abap_false.
            EXIT.
          ENDIF.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t62.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t63.
          DATA(t64) = t49.
          DATA t65 TYPE i.
          DATA(t66) = t57.
          DATA(t67) = 1.
          t65 = t66 - t67.
          t65 = t65 + 1.
          DATA t68 TYPE REF TO object.
          CLEAR t68.
          t64->load( ).
          CLEAR t68.
          READ TABLE t64->items INDEX t65 INTO t68.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t69.
          CLEAR t63.
          IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t69 ?= t68.
            DATA t70 TYPE REF TO object.
            t70 = t69->as_ref( ).
            t63 ?= t70.
          ELSE.
            t63 ?= t68.
          ENDIF.
          t62 = t63.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t72.
          DATA(t73) = t49.
          DATA(t74) = t57.
          t74 = t74 + 1.
          DATA t75 TYPE REF TO object.
          CLEAR t75.
          t73->load( ).
          CLEAR t75.
          READ TABLE t73->items INDEX t74 INTO t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          CLEAR t72.
          IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t76 ?= t75.
            DATA t77 TYPE REF TO object.
            t77 = t76->as_ref( ).
            t72 ?= t77.
          ELSE.
            t72 ?= t75.
          ENDIF.
          t71 = t72.
          DATA(t78) = VALUE abap_bool( ).
          DATA(t79) = VALUE i( ).
          DATA t80 TYPE abap_bool.
          DATA t81 TYPE REF TO zcl_lnt_position.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t62.
          t82 = t83.
          DATA t84 TYPE REF TO zcl_lnt_position.
          DATA(t85) = t82.
          t84 = t85->start.
          t81 = t84.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA t87 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t88) = t71.
          t87 = t88.
          DATA t89 TYPE REF TO zcl_lnt_position.
          DATA(t90) = t87.
          t89 = t90->start.
          t86 = t89.
          t80 = t81->is_after( i_p = t86 ).
          IF t80 = abap_true.
            DATA(t91) = 1.
            t79 = t91.
          ELSE.
            DATA(t92) = -1.
            t79 = t92.
          ENDIF.
          DATA(t93) = 0.
          t78 = xsdbool( t79 > t93 ).
          IF t78 = abap_true.
            DATA t94 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t94.
            DATA t95 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t95.
            DATA(t96) = t49.
            DATA t97 TYPE i.
            DATA(t98) = t57.
            DATA(t99) = 1.
            t97 = t98 - t99.
            t97 = t97 + 1.
            DATA t100 TYPE REF TO object.
            CLEAR t100.
            t96->load( ).
            CLEAR t100.
            READ TABLE t96->items INDEX t97 INTO t100.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            CLEAR t95.
            IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t101 ?= t100.
              DATA t102 TYPE REF TO object.
              t102 = t101->as_ref( ).
              t95 ?= t102.
            ELSE.
              t95 ?= t100.
            ENDIF.
            t94 = t95.
            DATA(t103) = t49.
            DATA t104 TYPE i.
            DATA(t105) = t57.
            DATA(t106) = 1.
            t104 = t105 - t106.
            DATA t107 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t107.
            DATA(t108) = t49.
            DATA(t109) = t57.
            t109 = t109 + 1.
            DATA t110 TYPE REF TO object.
            CLEAR t110.
            t108->load( ).
            CLEAR t110.
            READ TABLE t108->items INDEX t109 INTO t110.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            CLEAR t107.
            IF t110 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t111 ?= t110.
              DATA t112 TYPE REF TO object.
              t112 = t111->as_ref( ).
              t107 ?= t112.
            ELSE.
              t107 ?= t110.
            ENDIF.
            t103->put( p0 = t104 p1 = t107 ).
            DATA(t113) = t49.
            DATA(t114) = t57.
            DATA(t115) = t94.
            t113->put( p0 = t114 p1 = t115 ).
            DATA t116 TYPE i.
            DATA(t117) = t57.
            DATA(t118) = 1.
            t116 = t117 - t118.
            t57 = t116.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA t119 TYPE i.
        DATA(t120) = t51.
        DATA(t121) = 1.
        t119 = t120 + t121.
        t51 = t119.
      ENDDO.
      DATA(t122) = t49.
      t48 = t122.
      DATA t123 TYPE i.
      DATA(t124) = 0.
      t123 = t124.
      DO.
        DATA t125 TYPE abap_bool.
        DATA(t126) = t123.
        DATA t127 TYPE i.
        DATA(t128) = t35.
        t128->load( ).
        t127 = lines( t128->items ).
        t125 = xsdbool( t126 < t127 ).
        IF t125 = abap_false.
          EXIT.
        ENDIF.
        DATA t129 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t129.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t130.
        DATA(t131) = t35.
        DATA(t132) = t123.
        t132 = t132 + 1.
        DATA t133 TYPE REF TO object.
        CLEAR t133.
        t131->load( ).
        CLEAR t133.
        READ TABLE t131->items INDEX t132 INTO t133.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        CLEAR t130.
        IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t134 ?= t133.
          DATA t135 TYPE REF TO object.
          t135 = t134->as_ref( ).
          t130 ?= t135.
        ELSE.
          t130 ?= t133.
        ENDIF.
        t129 = t130.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE abap_bool.
        DATA t139 TYPE abap_bool.
        DATA t140 TYPE string.
        DATA t141 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t142) = t129.
        t141 = t142.
        DATA t143 TYPE string.
        DATA(t144) = t141.
        t143 = t144->str.
        t140 = t143.
        DATA(t145) = |:|.
        t139 = xsdbool( t140 = t145 ).
        t138 = t139.
        IF t139 = abap_true.
          DATA(t146) = VALUE abap_bool( ).
          DATA t147 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t147.
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t148.
          DATA(t149) = t35.
          DATA t150 TYPE i.
          DATA(t151) = t123.
          DATA(t152) = 1.
          t150 = t151 + t152.
          t150 = t150 + 1.
          DATA t153 TYPE REF TO object.
          CLEAR t153.
          t149->load( ).
          CLEAR t153.
          READ TABLE t149->items INDEX t150 INTO t153.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          CLEAR t148.
          IF t153 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t154 ?= t153.
            DATA t155 TYPE REF TO object.
            t155 = t154->as_ref( ).
            t148 ?= t155.
          ELSE.
            t148 ?= t153.
          ENDIF.
          t147 = t148.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          t156 = t157.
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = VALUE abap_bool( ).
          DATA(t160) = t147.
          IF t160 IS INITIAL.
            t159 = abap_true.
          ENDIF.
          t158 = xsdbool( t159 = abap_false ).
          t146 = t158.
          t138 = t146.
        ENDIF.
        t137 = t138.
        IF t138 = abap_true.
          DATA(t161) = VALUE abap_bool( ).
          DATA(t162) = VALUE f( ).
          DATA t163 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t163.
          DATA t164 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t164.
          DATA(t165) = t35.
          DATA t166 TYPE i.
          DATA(t167) = t123.
          DATA(t168) = 1.
          t166 = t167 + t168.
          t166 = t166 + 1.
          DATA t169 TYPE REF TO object.
          CLEAR t169.
          t165->load( ).
          CLEAR t169.
          READ TABLE t165->items INDEX t166 INTO t169.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          CLEAR t164.
          IF t169 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t170 ?= t169.
            DATA t171 TYPE REF TO object.
            t171 = t170->as_ref( ).
            t164 ?= t171.
          ELSE.
            t164 ?= t169.
          ENDIF.
          t163 = t164.
          DATA t172 TYPE f.
          DATA t173 TYPE REF TO zcl_lnt_position.
          DATA t174 TYPE REF TO zcl_lnt_position.
          DATA(t175) = t163.
          t174 = t175->start.
          t173 = t174.
          DATA t176 TYPE f.
          DATA(t177) = t173.
          t176 = t177->row.
          t172 = t176.
          t162 = t172.
          DATA t178 TYPE f.
          DATA t179 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t180) = t129.
          t179 = t180.
          DATA t181 TYPE f.
          DATA t182 TYPE REF TO zcl_lnt_position.
          DATA t183 TYPE REF TO zcl_lnt_position.
          DATA(t184) = t179.
          t183 = t184->start.
          t182 = t183.
          DATA t185 TYPE f.
          DATA(t186) = t182.
          t185 = t186->row.
          t181 = t185.
          t178 = t181.
          t161 = xsdbool( t162 = t178 ).
          t137 = t161.
        ENDIF.
        t136 = t137.
        IF t137 = abap_true.
          DATA(t187) = VALUE abap_bool( ).
          DATA t188 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t188.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t189.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          DATA(t191) = t35.
          DATA t192 TYPE i.
          DATA(t193) = t123.
          DATA(t194) = 1.
          t192 = t193 + t194.
          t192 = t192 + 1.
          DATA t195 TYPE REF TO object.
          CLEAR t195.
          t191->load( ).
          CLEAR t195.
          READ TABLE t191->items INDEX t192 INTO t195.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          CLEAR t190.
          IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t196 ?= t195.
            DATA t197 TYPE REF TO object.
            t197 = t196->as_ref( ).
            t190 ?= t197.
          ELSE.
            t190 ?= t195.
          ENDIF.
          t189 = t190.
          DATA t198 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t199 TYPE REF TO zcl_lnt_position.
          DATA t200 TYPE REF TO zcl_lnt_position.
          DATA(t201) = t189.
          t200 = t201->start.
          t199 = t200.
          DATA t202 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t203) = t199.
          t202 = t203->col.
          t198 = t202.
          t188 = t198.
          DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t205 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t206 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t207) = t129.
          t206 = t207.
          DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t209 TYPE REF TO zcl_lnt_position.
          DATA t210 TYPE REF TO zcl_lnt_position.
          DATA(t211) = t206.
          t210 = t211->start.
          t209 = t210.
          DATA t212 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t213) = t209.
          t212 = t213->col.
          t208 = t212.
          t205 = t208.
          DATA(t214) = CONV f( 1 ).
          DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t215->has = abap_true.
          t215->value = t214.
          t204 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t205 right = t215 op = `+` ).
          t187 = zlnt_runtime_numb_290eb04a9758=>compare( left = t188 right = t204 op = `==` ).
          t136 = t187.
        ENDIF.
        IF t136 = abap_true.
          DATA t216 TYPE REF TO zcl_lnt_position.
          DATA t217 TYPE REF TO zcl_lnt_position.
          DATA t218 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t219) = t129.
          t218 = t219.
          DATA t220 TYPE REF TO zcl_lnt_position.
          DATA(t221) = t218.
          t220 = t221->start.
          t217 = t220.
          t216 = t217.
          DATA t222 TYPE REF TO zcl_lnt_position.
          DATA t223 TYPE REF TO zcl_lnt_position.
          DATA t224 TYPE f.
          DATA t225 TYPE REF TO zcl_lnt_position.
          DATA(t226) = t216.
          t225 = t226.
          DATA t227 TYPE f.
          DATA(t228) = t225.
          t227 = t228->row.
          t224 = t227.
          DATA t229 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t230 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t231 TYPE REF TO zcl_lnt_position.
          DATA(t232) = t216.
          t231 = t232.
          DATA t233 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t234) = t231.
          t233 = t234->col.
          t230 = t233.
          DATA(t235) = CONV f( 1 ).
          DATA(t236) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t236->has = abap_true.
          t236->value = t235.
          t229 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t230 right = t236 op = `+` ).
          t223 = NEW zcl_lnt_position( i_row = t224 i_col = t229 ).
          t222 = t223.
          DATA t237 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t239) = t1.
          DATA(t240) = t222.
          DATA(t241) = | |.
          t238 = zcl_lnt_edit_helper=>insert_at( i_file = t239 i_pos = t240 i_text = t241 ).
          t237 = t238.
          DATA t242 TYPE REF TO zcl_lnt_issue.
          CLEAR t242.
          DATA t243 TYPE REF TO zcl_lnt_issue.
          CLEAR t243.
          DATA(t244) = t1.
          DATA(t245) = t216.
          DATA(t246) = t222.
          DATA(t247) = |Missing space after the colon|.
          DATA(t248) = VALUE string( ).
          DATA t249 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t249.
          DATA t250 TYPE string.
          DATA(t251) = |colon_missing_space|.
          t250 = t251.
          DATA t252 TYPE string.
          DATA(t253) = |Colon missing space|.
          t252 = t253.
          DATA t254 TYPE string.
          DATA(t255) = |Checks for missing spaces after colons in chained statements|.
          t255 = t255 && |.|.
          t254 = t255.
          DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t256.
          DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t257.
          DATA(t258) = abap_true.
          IF t258 = abap_true.
            DATA t259 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t261.
            t260 = t261.
            DATA(t262) = t260.
            DATA(t263) = |Whitespace|.
            t262->load( ).
            APPEND t263 TO t262->items.
            t262->save( ).
            DATA(t264) = t260.
            DATA(t265) = |Quickfix|.
            t264->load( ).
            APPEND t265 TO t264->items.
            t264->save( ).
            DATA(t266) = t260.
            DATA(t267) = |SingleFile|.
            t266->load( ).
            APPEND t267 TO t266->items.
            t266->save( ).
            DATA(t268) = t260.
            t259 = t268.
            t257 = t259.
          ELSE.
            DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t269.
            t257 = t269.
          ENDIF.
          t256 = t257.
          DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t270.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          DATA(t272) = abap_true.
          IF t272 = abap_true.
            DATA(t273) = |WRITE:hello, world.|.
            DATA(t274) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t274->has = abap_true.
            t274->value = t273.
            t271 = t274.
          ELSE.
            DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t275.
            t271 = t275.
          ENDIF.
          t270 = t271.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t277.
          DATA(t278) = abap_true.
          IF t278 = abap_true.
            DATA(t279) = |WRITE: hello, world.|.
            DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t280->has = abap_true.
            t280->value = t279.
            t277 = t280.
          ELSE.
            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t281.
            t277 = t281.
          ENDIF.
          t276 = t277.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t283.
          t282 = t283.
          DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t285.
          t284 = t285.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          t286 = t287.
          t249 = NEW zcl_lnt_irule_metadata( i_key = t250 i_title = t252 i_short_description = t254 i_bad_example = t270 i_good_example = t276 i_extended_information = t282 i_tags = t256 i_pragma = t284 i_pseudo_comment = t286 ).
          CREATE OBJECT t249->zlnt_view_ownkeys_b0e8086400eb.
          t249->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t288 ).
          ENDIF.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t289 ).
          ENDIF.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t290 ).
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t291 ).
          ENDIF.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t292.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t292 ).
          ENDIF.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t293 ).
          ENDIF.
          CREATE OBJECT t249->zlnt_json_ownkeys_70e5fd461788.
          t249->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t294) = |key|.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
          ENDIF.
          DATA(t296) = |title|.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
          ENDIF.
          DATA(t298) = |shortDescription|.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t298 p1 = t299 ).
          ENDIF.
          DATA(t300) = |tags|.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t300 p1 = t301 ).
          ENDIF.
          DATA(t302) = |badExample|.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t302 p1 = t303 ).
          ENDIF.
          DATA(t304) = |goodExample|.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t304 p1 = t305 ).
          ENDIF.
          t248 = t249->key.
          DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t307) = me->conf.
          t306 = t307->zlnt_view_read_sr_15c06369f827( ).
          DATA t308 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA(t310) = t237.
            t308 = t310.
          ELSE.
            DATA t311 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t311.
            t308 = t311.
          ENDIF.
          DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t312.
          t243 = zcl_lnt_issue=>at_range( i_file = t244 i_start = t245 i_end = t246 i_message_26cb = t247 i_key = t248 i_severity = t306 i_fix = t308 i_alternative_fixes = t312 ).
          t242 = t243.
          DATA(t313) = t2.
          DATA(t314) = t242.
          t313->load( ).
          APPEND t314 TO t313->items.
          t313->save( ).
        ENDIF.
        DATA t315 TYPE i.
        DATA(t316) = t123.
        DATA(t317) = 1.
        t315 = t316 + t317.
        t123 = t315.
      ENDDO.
    ENDDO.
    DATA(t318) = t2.
    result = t318.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cln_mssng_spc_cnf( me->g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cln_mssng_spc_cnf( me->g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
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
        t1 = NEW zcl_lnt_cln_mssng_spc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cl_ms_sp_ts_cl_ms_sp( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_cl_ms_sp_ts_cl_ms_sp( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1458_239f1ac51b63.
  ENDMETHOD.
ENDCLASS.
