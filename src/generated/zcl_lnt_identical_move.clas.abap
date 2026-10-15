* TS: src/rules/identical_move.ts:13:1 IdenticalMove
CLASS zcl_lnt_identical_move DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_identical_move_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_id_mv_ts_idn_mv RETURNING VALUE(result) TYPE REF TO zcl_lnt_identical_move_conf.
    METHODS st_cn_in_sr_rl_id_mv_ts_idn_mv IMPORTING i_conf TYPE REF TO zcl_lnt_identical_move_conf.
    METHODS rn_pr_in_sr_rl_id_mv_ts_idn_mv IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_ac26 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_identical_move IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_identical_move_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |identical_move|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Identical move|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Moving the same value from left to right or right to left is|.
    t7 = t7 && | redundant.|.
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
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |DATA lv_value TYPE i.\nlv_value = lv_value.|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    t18 = t19.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |DATA lv_value TYPE i.\nlv_value = 5.|.
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
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_mv_ts_idn_mv.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_mv_ts_idn_mv.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_id_mv_ts_idn_mv.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_ac26.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->statements.
    t5 = t8.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t5->load( ).
      IF t12 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t5->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_statement.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA(t17) = t10.
      t16 = t17->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t15 = t16.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t15.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_move ).
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA t25 TYPE REF TO zcl_lnt_expression_node.
        DATA(t26) = t10.
        DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t25 = t26->find_direct_expression( i_type_9913 = t27 ).
        t24 = t25.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = t24.
        IF t30 IS INITIAL.
          t29 = abap_true.
        ENDIF.
        IF t29 = abap_true.
          DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t31.
          t28 = t31.
        ELSE.
          DATA t32 TYPE string.
          DATA t33 TYPE REF TO zcl_lnt_expression_node.
          DATA(t34) = t24.
          t33 = t34.
          t32 = t33->concat_tokens( ).
          DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t35->has = abap_true.
          t35->value = t32.
          t28 = t35.
        ENDIF.
        t23 = t28.
        t22 = t23.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = t22.
        IF t38 IS INITIAL.
          t37 = abap_true.
        ELSEIF t38->has = abap_false.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_true.
          DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t39.
          t36 = t39.
        ELSE.
          DATA t40 TYPE string.
          DATA t41 TYPE string.
          DATA(t42) = t22.
          t41 = t42->value.
          DATA(t43) = strlen( t41 ).
          t40 = t41.
          IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t40 TO UPPER CASE.
          ELSE.
            t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
          ENDIF.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t40.
          t36 = t44.
        ENDIF.
        t21 = t36.
        t20 = t21.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        DATA(t51) = t10.
        DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
        t50 = t51->find_direct_expression( i_type_9913 = t52 ).
        t49 = t50.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t49.
        IF t55 IS INITIAL.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          t53 = t56.
        ELSE.
          DATA t57 TYPE string.
          DATA t58 TYPE REF TO zcl_lnt_expression_node.
          DATA(t59) = t49.
          t58 = t59.
          t57 = t58->concat_tokens( ).
          DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t60->has = abap_true.
          t60->value = t57.
          t53 = t60.
        ENDIF.
        t48 = t53.
        t47 = t48.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = t47.
        IF t63 IS INITIAL.
          t62 = abap_true.
        ELSEIF t63->has = abap_false.
          t62 = abap_true.
        ENDIF.
        IF t62 = abap_true.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t61 = t64.
        ELSE.
          DATA t65 TYPE string.
          DATA t66 TYPE string.
          DATA(t67) = t47.
          t66 = t67->value.
          DATA(t68) = strlen( t66 ).
          t65 = t66.
          IF t65 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t65 TO UPPER CASE.
          ELSE.
            t65 = zlnt_runtime_uppe_91169605024d=>full( t65 ).
          ENDIF.
          DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t69->has = abap_true.
          t69->value = t65.
          t61 = t69.
        ENDIF.
        t46 = t61.
        t45 = t46.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = t20.
        DATA(t73) = t45.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = VALUE abap_bool( ).
        IF t72 IS BOUND.
          t74 = t72->has.
        ENDIF.
        IF t73 IS BOUND.
          t75 = t73->has.
        ENDIF.
        IF t74 = t75.
          IF t74 = abap_false.
            t71 = abap_true.
          ELSEIF t72->value = t73->value.
            t71 = abap_true.
          ENDIF.
        ENDIF.
        t70 = t71.
        IF t71 = abap_true.
          DATA(t76) = VALUE abap_bool( ).
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t78) = t20.
          t77 = t78.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          t79 = t80.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = VALUE abap_bool( ).
          DATA(t83) = t77.
          IF t83 IS INITIAL.
            t82 = abap_true.
          ELSEIF t83->has = abap_false.
            t82 = abap_true.
          ENDIF.
          t81 = xsdbool( t82 = abap_false ).
          t76 = t81.
          t70 = t76.
        ENDIF.
        IF t70 = abap_true.
          DATA(t84) = VALUE string( ).
          DATA(t85) = VALUE string( ).
          DATA(t86) = VALUE string( ).
          DATA t87 TYPE string.
          DATA t88 TYPE string.
          DATA(t89) = |Identical MOVE from "|.
          DATA t90 TYPE string.
          DATA(t91) = t20.
          t90 = t91->value.
          DATA(t92) = strlen( t89 ).
          t88 = |{ t89 }{ t90 }|.
          DATA(t93) = |" to "|.
          DATA(t94) = strlen( t88 ).
          t87 = |{ t88 }{ t93 }|.
          DATA(t95) = VALUE string( ).
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t97) = t45.
          t96 = t97.
          DATA(t98) = VALUE string( ).
          DATA(t99) = VALUE abap_bool( ).
          DATA(t100) = t96.
          IF t100 IS INITIAL.
            t99 = abap_true.
          ELSEIF t100->has = abap_false.
            t99 = abap_true.
          ENDIF.
          IF t99 = abap_true.
            DATA(t101) = |undefined|.
            t98 = t101.
          ELSE.
            DATA t102 TYPE string.
            DATA(t103) = t96.
            t102 = t103->value.
            t98 = t102.
          ENDIF.
          t95 = t98.
          DATA(t104) = strlen( t87 ).
          t86 = |{ t87 }{ t95 }|.
          DATA(t105) = |"|.
          DATA(t106) = strlen( t86 ).
          t85 = |{ t86 }{ t105 }|.
          t84 = t85.
          DATA(t107) = t3.
          DATA t108 TYPE REF TO zcl_lnt_issue.
          CLEAR t108.
          DATA(t109) = t1.
          DATA(t110) = t10.
          DATA(t111) = t84.
          DATA(t112) = VALUE string( ).
          DATA t113 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t113.
          DATA t114 TYPE string.
          DATA(t115) = |identical_move|.
          t114 = t115.
          DATA t116 TYPE string.
          DATA(t117) = |Identical move|.
          t116 = t117.
          DATA t118 TYPE string.
          DATA(t119) = |Moving the same value from left to right or right to left is|.
          t119 = t119 && | redundant.|.
          t118 = t119.
          DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t120.
          DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t121.
          DATA(t122) = abap_true.
          IF t122 = abap_true.
            DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t125.
            t124 = t125.
            DATA(t126) = t124.
            DATA(t127) = |SingleFile|.
            t126->load( ).
            APPEND t127 TO t126->items.
            t126->save( ).
            DATA(t128) = t124.
            t123 = t128.
            t121 = t123.
          ELSE.
            DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t129.
            t121 = t129.
          ENDIF.
          t120 = t121.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA(t132) = abap_true.
          IF t132 = abap_true.
            DATA(t133) = |DATA lv_value TYPE i.\nlv_value = lv_value.|.
            DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t134->has = abap_true.
            t134->value = t133.
            t131 = t134.
          ELSE.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t135.
            t131 = t135.
          ENDIF.
          t130 = t131.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA(t138) = abap_true.
          IF t138 = abap_true.
            DATA(t139) = |DATA lv_value TYPE i.\nlv_value = 5.|.
            DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t140->has = abap_true.
            t140->value = t139.
            t137 = t140.
          ELSE.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            t137 = t141.
          ENDIF.
          t136 = t137.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          t142 = t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t144 = t145.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t146 = t147.
          t113 = NEW zcl_lnt_irule_metadata( i_key = t114 i_title = t116 i_short_description = t118 i_bad_example = t130 i_good_example = t136 i_extended_information = t142 i_tags = t120 i_pragma = t144 i_pseudo_comment = t146 ).
          CREATE OBJECT t113->zlnt_view_ownkeys_b0e8086400eb.
          t113->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t148 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t149 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t150 ).
          ENDIF.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t151 ).
          ENDIF.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t152 ).
          ENDIF.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t153 ).
          ENDIF.
          CREATE OBJECT t113->zlnt_json_ownkeys_70e5fd461788.
          t113->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t154) = |key|.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
          ENDIF.
          DATA(t156) = |title|.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
          ENDIF.
          DATA(t158) = |shortDescription|.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
          ENDIF.
          DATA(t160) = |tags|.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
          ENDIF.
          DATA(t162) = |badExample|.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
          ENDIF.
          DATA(t164) = |goodExample|.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
          ENDIF.
          t112 = t113->key.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t167) = me->conf.
          t166 = t167->zlnt_view_read_sr_15c06369f827( ).
          DATA t168 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t168.
          DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t169.
          t108 = zcl_lnt_issue=>at_statement( i_file = t109 i_statement = t110 i_message_26cb = t111 i_key = t112 i_severity = t166 i_fix = t168 i_alternative_fixes = t169 ).
          t107->load( ).
          APPEND t108 TO t107->items.
          t107->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t170) = t3.
    result = t170.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_identical_move_conf( me->gt_cn_in_sr_rl_id_mv_ts_idn_mv( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_identical_move_conf( me->gt_cn_in_sr_rl_id_mv_ts_idn_mv( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_identical_move_conf.
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
        t1 = NEW zcl_lnt_identical_move_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_mv_ts_idn_mv( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_id_mv_ts_idn_mv( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1533_8526610ab6ad.
  ENDMETHOD.
ENDCLASS.
