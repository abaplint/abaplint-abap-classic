* TS: src/rules/omit_preceding_zeros.ts:13:1 OmitPrecedingZeros
CLASS zcl_lnt_omit_preceding_zeros DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_om_pr_zr_ts_om_pr_zr RETURNING VALUE(result) TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
    METHODS s_c_i_s_r_om_pr_zr_ts_om_pr_zr IMPORTING i_conf TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
    METHODS r_p_i_s_r_om_pr_zr_ts_om_pr_zr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_omit_preceding_zeros IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_omt_prcdng_zrs_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |omit_preceding_zeros|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Omit preceding zeros|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Omit preceding zeros from integer constants|.
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
      DATA(t17) = |Quickfix|.
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
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |int = -001.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |int = -1.|.
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
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_om_pr_zr_ts_om_pr_zr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_om_pr_zr_ts_om_pr_zr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_om_pr_zr_ts_om_pr_zr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Omit preceding zeros|.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = t11.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
      t16 = t17->find_all_expressions( i_type_9913 = t18 ).
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      DATA(t21) = VALUE i( ).
      DO.
        t16->load( ).
        IF t21 >= lines( t16->items ).
          EXIT.
        ENDIF.
        CLEAR t20.
        READ TABLE t16->items INDEX t21 + 1 INTO t20.
        t21 = t21 + 1.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        CLEAR t19.
        IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t22 ?= t20.
          DATA t23 TYPE REF TO object.
          t23 = t22->as_ref( ).
          t19 ?= t23.
        ELSE.
          t19 ?= t20.
        ENDIF.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t26) = t19.
        t25 = t26->get_last_token( ).
        t24 = t25.
        DATA t27 TYPE string.
        DATA t28 TYPE string.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t30) = t24.
        t29 = t30.
        DATA t31 TYPE string.
        DATA(t32) = t29.
        t31 = t32->str.
        t28 = t31.
        t27 = t28.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE i.
        DATA(t36) = t27.
        DATA(t37) = strlen( t36 ).
        t35 = t37.
        DATA(t38) = 1.
        t34 = xsdbool( t35 > t38 ).
        t33 = t34.
        IF t34 = abap_true.
          DATA(t39) = VALUE abap_bool( ).
          DATA(t40) = t27.
          DATA(t41) = |0|.
          DATA(t42) = strlen( t40 ).
          DATA t43 TYPE i.
          DATA(t44) = VALUE i( ).
          DATA(t45) = VALUE string( ).
          t43 = strlen( t41 ).
          IF t43 = 0.
            t39 = abap_true.
          ELSEIF t43 <= t42.
            t44 = 0.
            t45 = t40+t44(t43).
            IF t45 = t41.
              t39 = abap_true.
            ENDIF.
          ENDIF.
          t33 = t39.
        ENDIF.
        IF t33 = abap_true.
          DATA t46 TYPE abap_bool.
          DATA t47 TYPE abap_bool.
          DATA t48 TYPE REF TO zif_lnt_statement.
          DATA(t49) = t11.
          t48 = t49->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_call_screen ).
          t46 = t47.
          IF t47 = abap_false.
            DATA t50 TYPE abap_bool.
            DATA t51 TYPE REF TO zif_lnt_statement.
            DATA(t52) = t11.
            t51 = t52->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_set_screen ).
            t46 = t50.
          ENDIF.
          IF t46 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t53 TYPE string.
          DATA t54 TYPE string.
          DATA(t55) = t27.
          DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t56.
          DATA(t57) = |^0+|.
          DATA(t58) = ||.
          CREATE OBJECT t56 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t57 flags = t58.
          DATA(t59) = ||.
          DATA(t60) = strlen( t55 ).
          t54 = t56->replace( p0 = t55 p1 = t59 ).
          t53 = t54.
          DATA t61 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t62 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t63) = t1.
          DATA t64 TYPE REF TO zcl_lnt_position.
          DATA t65 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t66) = t24.
          t65 = t66.
          DATA t67 TYPE REF TO zcl_lnt_position.
          DATA(t68) = t65.
          t67 = t68->start.
          t64 = t67.
          DATA t69 TYPE REF TO zcl_lnt_position.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t71) = t24.
          t70 = t71.
          DATA t72 TYPE REF TO zcl_lnt_position.
          DATA t73 TYPE f.
          DATA t74 TYPE REF TO zcl_lnt_position.
          DATA t75 TYPE REF TO zcl_lnt_position.
          DATA(t76) = t70.
          t75 = t76->start.
          t74 = t75.
          DATA t77 TYPE f.
          DATA(t78) = t74.
          t77 = t78->row.
          t73 = t77.
          DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zcl_lnt_position.
          DATA t82 TYPE REF TO zcl_lnt_position.
          DATA(t83) = t70.
          t82 = t83->start.
          t81 = t82.
          DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t85) = t81.
          t84 = t85->col.
          t80 = t84.
          DATA t86 TYPE f.
          DATA t87 TYPE i.
          DATA t88 TYPE string.
          DATA(t89) = t70.
          t88 = t89->str.
          DATA(t90) = strlen( t88 ).
          t87 = t90.
          t86 = t87.
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t86.
          t79 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t80 right = t91 op = `+` ).
          t72 = NEW zcl_lnt_position( i_row = t73 i_col = t79 ).
          t69 = t72.
          DATA(t92) = t53.
          t62 = zcl_lnt_edit_helper=>replace_range( i_file = t63 i_start = t64 i_end = t69 i_text = t92 ).
          t61 = t62.
          DATA t93 TYPE REF TO zcl_lnt_issue.
          CLEAR t93.
          DATA t94 TYPE REF TO zcl_lnt_issue.
          CLEAR t94.
          DATA(t95) = t1.
          DATA(t96) = t24.
          DATA(t97) = t4.
          DATA(t98) = VALUE string( ).
          DATA t99 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t99.
          DATA t100 TYPE string.
          DATA(t101) = |omit_preceding_zeros|.
          t100 = t101.
          DATA t102 TYPE string.
          DATA(t103) = |Omit preceding zeros|.
          t102 = t103.
          DATA t104 TYPE string.
          DATA(t105) = |Omit preceding zeros from integer constants|.
          t104 = t105.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t106.
          DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t107.
          DATA(t108) = abap_true.
          IF t108 = abap_true.
            DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t111.
            t110 = t111.
            DATA(t112) = t110.
            DATA(t113) = |SingleFile|.
            t112->load( ).
            APPEND t113 TO t112->items.
            t112->save( ).
            DATA(t114) = t110.
            DATA(t115) = |Quickfix|.
            t114->load( ).
            APPEND t115 TO t114->items.
            t114->save( ).
            DATA(t116) = t110.
            t109 = t116.
            t107 = t109.
          ELSE.
            DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t117.
            t107 = t117.
          ENDIF.
          t106 = t107.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          DATA(t120) = abap_true.
          IF t120 = abap_true.
            DATA(t121) = |int = -001.|.
            DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t122->has = abap_true.
            t122->value = t121.
            t119 = t122.
          ELSE.
            DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t123.
            t119 = t123.
          ENDIF.
          t118 = t119.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          DATA(t126) = abap_true.
          IF t126 = abap_true.
            DATA(t127) = |int = -1.|.
            DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t128->has = abap_true.
            t128->value = t127.
            t125 = t128.
          ELSE.
            DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t129.
            t125 = t129.
          ENDIF.
          t124 = t125.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          t130 = t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          t132 = t133.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t135.
          t134 = t135.
          t99 = NEW zcl_lnt_irule_metadata( i_key = t100 i_title = t102 i_short_description = t104 i_bad_example = t118 i_good_example = t124 i_extended_information = t130 i_tags = t106 i_pragma = t132 i_pseudo_comment = t134 ).
          CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
          t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t136 ).
          ENDIF.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t137 ).
          ENDIF.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t138 ).
          ENDIF.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t139 ).
          ENDIF.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t140 ).
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t141 ).
          ENDIF.
          CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
          t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t142) = |key|.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
          ENDIF.
          DATA(t144) = |title|.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
          ENDIF.
          DATA(t146) = |shortDescription|.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
          ENDIF.
          DATA(t148) = |tags|.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
          ENDIF.
          DATA(t150) = |badExample|.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
          ENDIF.
          DATA(t152) = |goodExample|.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
          ENDIF.
          t98 = t99->key.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t155) = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) ).
          t154 = t155->zlnt_view_read_sr_15c06369f827( ).
          DATA t156 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t156.
          DATA(t157) = abap_true.
          IF t157 = abap_true.
            DATA(t158) = t61.
            t156 = t158.
          ELSE.
            DATA t159 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t159.
            t156 = t159.
          ENDIF.
          t94 = zcl_lnt_issue=>at_token( i_file = t95 i_token = t96 i_message_26cb = t97 i_key = t98 i_severity = t154 i_fix = t156 ).
          t93 = t94.
          DATA(t160) = t2.
          DATA(t161) = t93.
          t160->load( ).
          APPEND t161 TO t160->items.
          t160->save( ).
        ENDIF.
      ENDDO.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t163) = t11.
      DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
      t162 = t163->find_all_expressions( i_type_9913 = t164 ).
      DATA t165 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t165.
      DATA t166 TYPE REF TO object.
      CLEAR t166.
      DATA(t167) = VALUE i( ).
      DO.
        t162->load( ).
        IF t167 >= lines( t162->items ).
          EXIT.
        ENDIF.
        CLEAR t166.
        READ TABLE t162->items INDEX t167 + 1 INTO t166.
        t167 = t167 + 1.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        CLEAR t165.
        IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t168 ?= t166.
          DATA t169 TYPE REF TO object.
          t169 = t168->as_ref( ).
          t165 ?= t169.
        ELSE.
          t165 ?= t166.
        ENDIF.
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t170.
        DATA t171 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t171.
        DATA t172 TYPE REF TO zcl_lnt_expression_node.
        DATA t173 TYPE REF TO zcl_lnt_expression_node.
        DATA(t174) = t165.
        DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
        t173 = t174->find_direct_expression( i_type_9913 = t175 ).
        t172 = t173.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t176.
        DATA(t177) = VALUE abap_bool( ).
        DATA(t178) = t172.
        IF t178 IS INITIAL.
          t177 = abap_true.
        ENDIF.
        IF t177 = abap_true.
          DATA t179 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t179.
          t176 = t179.
        ELSE.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          DATA t181 TYPE REF TO zcl_lnt_expression_node.
          DATA(t182) = t172.
          t181 = t182.
          t180 = t181->get_first_token( ).
          t176 = t180.
        ENDIF.
        t171 = t176.
        t170 = t171.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t184.
        DATA t185 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t186) = t170.
        t185 = t186.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = t185.
        IF t189 IS INITIAL.
          t188 = abap_true.
        ENDIF.
        IF t188 = abap_true.
          DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t190.
          t187 = t190.
        ELSE.
          DATA t191 TYPE string.
          DATA t192 TYPE REF TO zcl_lnt_abstract_token.
          DATA t193 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t194) = t185.
          t193 = t194.
          t192 = t193.
          DATA t195 TYPE string.
          DATA(t196) = t192.
          t195 = t196->str.
          t191 = t195.
          DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t197->has = abap_true.
          t197->value = t191.
          t187 = t197.
        ENDIF.
        t184 = t187.
        t183 = t184.
        DATA(t198) = VALUE abap_bool( ).
        DATA(t199) = VALUE abap_bool( ).
        DATA t200 TYPE abap_bool.
        DATA t201 TYPE abap_bool.
        DATA(t202) = t170.
        t201 = xsdbool( t202 IS BOUND ).
        t200 = t201.
        IF t201 = abap_true.
          DATA(t203) = VALUE abap_bool( ).
          DATA(t204) = t183.
          IF t204 IS BOUND.
            IF t204->has = abap_true.
              t203 = xsdbool( strlen( t204->value ) > 0 ).
            ENDIF.
          ENDIF.
          t200 = t203.
        ENDIF.
        t199 = t200.
        IF t200 = abap_true.
          DATA t205 TYPE abap_bool.
          DATA t206 TYPE i.
          DATA t207 TYPE string.
          DATA(t208) = t183.
          t207 = t208->value.
          DATA(t209) = strlen( t207 ).
          t206 = t209.
          DATA(t210) = 1.
          t205 = xsdbool( t206 > t210 ).
          t199 = t205.
        ENDIF.
        t198 = t199.
        IF t199 = abap_true.
          DATA(t211) = VALUE abap_bool( ).
          DATA t212 TYPE string.
          DATA(t213) = t183.
          t212 = t213->value.
          DATA(t214) = |0|.
          DATA(t215) = strlen( t212 ).
          DATA t216 TYPE i.
          DATA(t217) = VALUE i( ).
          DATA(t218) = VALUE string( ).
          t216 = strlen( t214 ).
          IF t216 = 0.
            t211 = abap_true.
          ELSEIF t216 <= t215.
            t217 = 0.
            t218 = t212+t217(t216).
            IF t218 = t214.
              t211 = abap_true.
            ENDIF.
          ENDIF.
          t198 = t211.
        ENDIF.
        IF t198 = abap_true.
          DATA t219 TYPE string.
          DATA t220 TYPE string.
          DATA t221 TYPE string.
          DATA(t222) = t183.
          t221 = t222->value.
          DATA t223 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t223.
          DATA(t224) = |^0+|.
          DATA(t225) = ||.
          CREATE OBJECT t223 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t224 flags = t225.
          DATA(t226) = ||.
          DATA(t227) = strlen( t221 ).
          t220 = t223->replace( p0 = t221 p1 = t226 ).
          t219 = t220.
          DATA t228 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t229 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t230) = t1.
          DATA t231 TYPE REF TO zcl_lnt_position.
          DATA t232 TYPE REF TO zcl_lnt_abstract_token.
          DATA t233 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t234) = t170.
          t233 = t234.
          t232 = t233.
          DATA t235 TYPE REF TO zcl_lnt_position.
          DATA(t236) = t232.
          t235 = t236->start.
          t231 = t235.
          DATA t237 TYPE REF TO zcl_lnt_position.
          DATA t238 TYPE REF TO zcl_lnt_abstract_token.
          DATA t239 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t240) = t170.
          t239 = t240.
          t238 = t239.
          DATA t241 TYPE REF TO zcl_lnt_position.
          DATA t242 TYPE f.
          DATA t243 TYPE REF TO zcl_lnt_position.
          DATA t244 TYPE REF TO zcl_lnt_position.
          DATA(t245) = t238.
          t244 = t245->start.
          t243 = t244.
          DATA t246 TYPE f.
          DATA(t247) = t243.
          t246 = t247->row.
          t242 = t246.
          DATA t248 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t249 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t250 TYPE REF TO zcl_lnt_position.
          DATA t251 TYPE REF TO zcl_lnt_position.
          DATA(t252) = t238.
          t251 = t252->start.
          t250 = t251.
          DATA t253 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t254) = t250.
          t253 = t254->col.
          t249 = t253.
          DATA t255 TYPE f.
          DATA t256 TYPE i.
          DATA t257 TYPE string.
          DATA(t258) = t238.
          t257 = t258->str.
          DATA(t259) = strlen( t257 ).
          t256 = t259.
          t255 = t256.
          DATA(t260) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t260->has = abap_true.
          t260->value = t255.
          t248 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t249 right = t260 op = `+` ).
          t241 = NEW zcl_lnt_position( i_row = t242 i_col = t248 ).
          t237 = t241.
          DATA(t261) = t219.
          t229 = zcl_lnt_edit_helper=>replace_range( i_file = t230 i_start = t231 i_end = t237 i_text = t261 ).
          t228 = t229.
          DATA t262 TYPE REF TO zcl_lnt_issue.
          CLEAR t262.
          DATA t263 TYPE REF TO zcl_lnt_issue.
          CLEAR t263.
          DATA(t264) = t1.
          DATA t265 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t266) = t170.
          t265 = t266.
          DATA(t267) = t4.
          DATA(t268) = VALUE string( ).
          DATA t269 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t269.
          DATA t270 TYPE string.
          DATA(t271) = |omit_preceding_zeros|.
          t270 = t271.
          DATA t272 TYPE string.
          DATA(t273) = |Omit preceding zeros|.
          t272 = t273.
          DATA t274 TYPE string.
          DATA(t275) = |Omit preceding zeros from integer constants|.
          t274 = t275.
          DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t276.
          DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t277.
          DATA(t278) = abap_true.
          IF t278 = abap_true.
            DATA t279 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t281.
            t280 = t281.
            DATA(t282) = t280.
            DATA(t283) = |SingleFile|.
            t282->load( ).
            APPEND t283 TO t282->items.
            t282->save( ).
            DATA(t284) = t280.
            DATA(t285) = |Quickfix|.
            t284->load( ).
            APPEND t285 TO t284->items.
            t284->save( ).
            DATA(t286) = t280.
            t279 = t286.
            t277 = t279.
          ELSE.
            DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t287.
            t277 = t287.
          ENDIF.
          t276 = t277.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t288.
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t289.
          DATA(t290) = abap_true.
          IF t290 = abap_true.
            DATA(t291) = |int = -001.|.
            DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t292->has = abap_true.
            t292->value = t291.
            t289 = t292.
          ELSE.
            DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t293.
            t289 = t293.
          ENDIF.
          t288 = t289.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          DATA(t296) = abap_true.
          IF t296 = abap_true.
            DATA(t297) = |int = -1.|.
            DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t298->has = abap_true.
            t298->value = t297.
            t295 = t298.
          ELSE.
            DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t299.
            t295 = t299.
          ENDIF.
          t294 = t295.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t301.
          t300 = t301.
          DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t303.
          t302 = t303.
          DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t305.
          t304 = t305.
          t269 = NEW zcl_lnt_irule_metadata( i_key = t270 i_title = t272 i_short_description = t274 i_bad_example = t288 i_good_example = t294 i_extended_information = t300 i_tags = t276 i_pragma = t302 i_pseudo_comment = t304 ).
          CREATE OBJECT t269->zlnt_view_ownkeys_b0e8086400eb.
          t269->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t306 ).
          ENDIF.
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t307.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t307 ).
          ENDIF.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t308 ).
          ENDIF.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t309.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t309 ).
          ENDIF.
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t310 ).
          ENDIF.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t311 ).
          ENDIF.
          CREATE OBJECT t269->zlnt_json_ownkeys_70e5fd461788.
          t269->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t312) = |key|.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
          ENDIF.
          DATA(t314) = |title|.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = t314 p1 = t315 ).
          ENDIF.
          DATA(t316) = |shortDescription|.
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = t316 p1 = t317 ).
          ENDIF.
          DATA(t318) = |tags|.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = t318 p1 = t319 ).
          ENDIF.
          DATA(t320) = |badExample|.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t321.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = t320 p1 = t321 ).
          ENDIF.
          DATA(t322) = |goodExample|.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
          ENDIF.
          t268 = t269->key.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t325) = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) ).
          t324 = t325->zlnt_view_read_sr_15c06369f827( ).
          DATA t326 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t326.
          DATA(t327) = abap_true.
          IF t327 = abap_true.
            DATA(t328) = t228.
            t326 = t328.
          ELSE.
            DATA t329 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t329.
            t326 = t329.
          ENDIF.
          t263 = zcl_lnt_issue=>at_token( i_file = t264 i_token = t265 i_message_26cb = t267 i_key = t268 i_severity = t324 i_fix = t326 ).
          t262 = t263.
          DATA(t330) = t2.
          DATA(t331) = t262.
          t330->load( ).
          APPEND t331 TO t330->items.
          t330->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t332) = t2.
    result = t332.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
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
        t1 = NEW zcl_lnt_omt_prcdng_zrs_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_om_pr_zr_ts_om_pr_zr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_om_pr_zr_ts_om_pr_zr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1637_da3b12514065.
  ENDMETHOD.
ENDCLASS.
