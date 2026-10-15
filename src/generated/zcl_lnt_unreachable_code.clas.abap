* TS: src/rules/unreachable_code.ts:14:1 UnreachableCode
CLASS zcl_lnt_unreachable_code DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_un_cd_ts_unr_cd RETURNING VALUE(result) TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS st_cn_in_sr_rl_un_cd_ts_unr_cd IMPORTING i_conf TYPE REF TO zcl_lnt_unreachable_code_conf.
    METHODS rn_pr_in_sr_rl_un_cd_ts_unr_cd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_exit IMPORTING i_n_0c97 TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_structure IMPORTING i_s TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unreachable_code IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_unreachable_code_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unreachable_code|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unreachable code|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for unreachable code.|.
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
      DATA(t21) = |RETURN.\nWRITE 'hello'.|.
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
      DATA(t27) = |WRITE 'hello'.\nRETURN.|.
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

  METHOD get_message.
    DATA(t1) = |Unreachable code|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_cd_ts_unr_cd.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_cd_ts_unr_cd.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_un_cd_ts_unr_cd.
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
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE REF TO zif_lnt_statement.
      DATA(t20) = t11.
      t19 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_comment ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE REF TO zif_lnt_statement.
        DATA(t23) = t11.
        t22 = t23->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_macro_content ).
        t17 = t21.
      ENDIF.
      t16 = t17.
      IF t17 = abap_false.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE REF TO zif_lnt_statement.
        DATA(t26) = t11.
        t25 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_empty ).
        t16 = t24.
      ENDIF.
      IF t16 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t27) = VALUE abap_bool( ).
        DATA t28 TYPE REF TO zif_lnt_statement.
        DATA t29 TYPE REF TO zif_lnt_statement.
        DATA(t30) = t11.
        t29 = t30->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t28 = t29.
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = VALUE abap_bool( ).
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        DATA(t53) = t28.
        t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_end_if ).
        t51 = t52.
        IF t52 = abap_false.
          DATA t54 TYPE abap_bool.
          DATA(t55) = t28.
          t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_st_else ).
          t51 = t54.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA t56 TYPE abap_bool.
          DATA(t57) = t28.
          t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_end_loop ).
          t50 = t56.
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          DATA t58 TYPE abap_bool.
          DATA(t59) = t28.
          t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_end_try ).
          t49 = t58.
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          DATA t60 TYPE abap_bool.
          DATA(t61) = t28.
          t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_end_method ).
          t48 = t60.
        ENDIF.
        t47 = t48.
        IF t48 = abap_false.
          DATA t62 TYPE abap_bool.
          DATA(t63) = t28.
          t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_end_module ).
          t47 = t62.
        ENDIF.
        t46 = t47.
        IF t47 = abap_false.
          DATA t64 TYPE abap_bool.
          DATA(t65) = t28.
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_end_form ).
          t46 = t64.
        ENDIF.
        t45 = t46.
        IF t46 = abap_false.
          DATA t66 TYPE abap_bool.
          DATA(t67) = t28.
          t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_end_test_seam ).
          t45 = t66.
        ENDIF.
        t44 = t45.
        IF t45 = abap_false.
          DATA t68 TYPE abap_bool.
          DATA(t69) = t28.
          t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_end_at ).
          t44 = t68.
        ENDIF.
        t43 = t44.
        IF t44 = abap_false.
          DATA t70 TYPE abap_bool.
          DATA(t71) = t28.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_end_select ).
          t43 = t70.
        ENDIF.
        t42 = t43.
        IF t43 = abap_false.
          DATA t72 TYPE abap_bool.
          DATA(t73) = t28.
          t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
          t42 = t72.
        ENDIF.
        t41 = t42.
        IF t42 = abap_false.
          DATA t74 TYPE abap_bool.
          DATA(t75) = t28.
          t74 = xsdbool( t75 IS BOUND AND t75 IS INSTANCE OF zcl_lnt_end_function ).
          t41 = t74.
        ENDIF.
        t40 = t41.
        IF t41 = abap_false.
          DATA t76 TYPE abap_bool.
          DATA(t77) = t28.
          t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_end_case ).
          t40 = t76.
        ENDIF.
        t39 = t40.
        IF t40 = abap_false.
          DATA t78 TYPE abap_bool.
          DATA(t79) = t28.
          t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_end_while ).
          t39 = t78.
        ENDIF.
        t38 = t39.
        IF t39 = abap_false.
          DATA t80 TYPE abap_bool.
          DATA(t81) = t28.
          t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_end_do ).
          t38 = t80.
        ENDIF.
        t37 = t38.
        IF t38 = abap_false.
          DATA t82 TYPE abap_bool.
          DATA(t83) = t28.
          t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_st_cleanup ).
          t37 = t82.
        ENDIF.
        t36 = t37.
        IF t37 = abap_false.
          DATA t84 TYPE abap_bool.
          DATA(t85) = t28.
          t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_st_when ).
          t36 = t84.
        ENDIF.
        t35 = t36.
        IF t36 = abap_false.
          DATA t86 TYPE abap_bool.
          DATA(t87) = t28.
          t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_when_others ).
          t35 = t86.
        ENDIF.
        t34 = t35.
        IF t35 = abap_false.
          DATA t88 TYPE abap_bool.
          DATA(t89) = t28.
          t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_st_when_type ).
          t34 = t88.
        ENDIF.
        t33 = t34.
        IF t34 = abap_false.
          DATA t90 TYPE abap_bool.
          DATA(t91) = t28.
          t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_st_catch ).
          t33 = t90.
        ENDIF.
        t32 = t33.
        IF t33 = abap_false.
          DATA t92 TYPE abap_bool.
          DATA(t93) = t28.
          t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_st_else_if ).
          t32 = t92.
        ENDIF.
        IF t32 = abap_true.
          DATA(t94) = abap_true.
          t31 = t94.
        ELSE.
          DATA(t95) = abap_false.
          t31 = t95.
        ENDIF.
        t27 = t31.
        IF t27 = abap_true.
          DATA(t96) = abap_false.
          t4 = t96.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t97 TYPE abap_bool.
      DATA(t98) = t4.
      DATA(t99) = abap_true.
      t97 = xsdbool( t98 = t99 ).
      IF t97 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_issue.
        CLEAR t101.
        DATA(t102) = t1.
        DATA(t103) = t11.
        DATA(t104) = |Unreachable code|.
        DATA(t105) = VALUE string( ).
        DATA t106 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t106.
        DATA t107 TYPE string.
        DATA(t108) = |unreachable_code|.
        t107 = t108.
        DATA t109 TYPE string.
        DATA(t110) = |Unreachable code|.
        t109 = t110.
        DATA t111 TYPE string.
        DATA(t112) = |Checks for unreachable code.|.
        t111 = t112.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t113.
        DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t118.
          t117 = t118.
          DATA(t119) = t117.
          DATA(t120) = |SingleFile|.
          t119->load( ).
          APPEND t120 TO t119->items.
          t119->save( ).
          DATA(t121) = t117.
          t116 = t121.
          t114 = t116.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t122.
          t114 = t122.
        ENDIF.
        t113 = t114.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA(t126) = |RETURN.\nWRITE 'hello'.|.
          DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t127->has = abap_true.
          t127->value = t126.
          t124 = t127.
        ELSE.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          t124 = t128.
        ENDIF.
        t123 = t124.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        DATA(t131) = abap_true.
        IF t131 = abap_true.
          DATA(t132) = |WRITE 'hello'.\nRETURN.|.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t132.
          t130 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t130 = t134.
        ENDIF.
        t129 = t130.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        t135 = t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        t137 = t138.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        t139 = t140.
        t106 = NEW zcl_lnt_irule_metadata( i_key = t107 i_title = t109 i_short_description = t111 i_bad_example = t123 i_good_example = t129 i_extended_information = t135 i_tags = t113 i_pragma = t137 i_pseudo_comment = t139 ).
        CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
        t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t141 ).
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t142 ).
        ENDIF.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t143 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t144 ).
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t145 ).
        ENDIF.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t146 ).
        ENDIF.
        CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
        t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t147) = |key|.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
        ENDIF.
        DATA(t149) = |title|.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
        ENDIF.
        DATA(t151) = |shortDescription|.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
        ENDIF.
        DATA(t153) = |tags|.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
        ENDIF.
        DATA(t155) = |badExample|.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
        ENDIF.
        DATA(t157) = |goodExample|.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        ENDIF.
        t105 = t106->key.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t160) = me->conf.
        t159 = t160->zlnt_view_read_sr_15c06369f827( ).
        DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t161.
        DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t162.
        t101 = zcl_lnt_issue=>at_statement( i_file = t102 i_statement = t103 i_message_26cb = t104 i_key = t105 i_severity = t159 i_fix = t161 i_alternative_fixes = t162 ).
        t100 = t101.
        DATA(t163) = t2.
        DATA(t164) = t100.
        t163->load( ).
        APPEND t164 TO t163->items.
        t163->save( ).
        DATA(t165) = abap_false.
        t4 = t165.
        CONTINUE.
      ELSE.
        DATA t166 TYPE abap_bool.
        DATA(t167) = t11.
        t166 = me->is_exit( i_n_0c97 = t167 ).
        IF t166 = abap_true.
          DATA(t168) = abap_true.
          t4 = t168.
          CONTINUE.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t169) = t2.
    result = t169.

  ENDMETHOD.

  METHOD is_exit.
    DATA(t1) = i_n_0c97.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t2.
    t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_st_submit ).
    t5 = t6.
    IF t6 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = t1.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d90_ea4359cbebf3c6.
      t10 = t11->find_first_expression( i_type_9913 = t12 ).
      t9 = t10.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t9.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      t8 = t15.
      t5 = t8.
    ENDIF.
    IF t5 = abap_true.
      DATA(t17) = abap_true.
      result = t17.
      RETURN.
    ELSE.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t2.
      t19 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_leave ).
      t18 = t19.
      IF t19 = abap_true.
        DATA(t21) = VALUE abap_bool( ).
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = t1.
        DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d90_ea4359cbebf3c6.
        t23 = t24->find_first_expression( i_type_9913 = t25 ).
        t22 = t23.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t27.
        t26 = t27.
        DATA(t28) = VALUE abap_bool( ).
        DATA(t29) = t22.
        IF t29 IS INITIAL.
          t28 = abap_true.
        ENDIF.
        t21 = t28.
        t18 = t21.
      ENDIF.
      IF t18 = abap_true.
        DATA t30 TYPE string.
        DATA t31 TYPE string.
        DATA(t32) = t1.
        t31 = t32->concat_tokens( ).
        t30 = t31.
        DATA(t33) = VALUE abap_bool( ).
        DATA(t34) = VALUE i( ).
        DATA(t35) = t30.
        DATA(t36) = | TO LIST-PROCESSING|.
        DATA(t37) = strlen( t35 ).
        IF t36 IS INITIAL.
          t34 = 0.
        ELSE.
          FIND t36 IN t35 MATCH OFFSET t34.
          IF sy-subrc <> 0.
            t34 = -1.
          ENDIF.
        ENDIF.
        DATA(t38) = 0.
        t33 = xsdbool( t34 >= t38 ).
        IF t33 = abap_true.
          DATA(t39) = abap_false.
          result = t39.
          RETURN.
        ENDIF.
        DATA(t40) = abap_true.
        result = t40.
        RETURN.
      ELSE.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE abap_bool.
        DATA(t45) = t2.
        t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_st_return ).
        t43 = t44.
        IF t44 = abap_false.
          DATA t46 TYPE abap_bool.
          DATA(t47) = t2.
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_continue ).
          t43 = t46.
        ENDIF.
        t42 = t43.
        IF t43 = abap_false.
          DATA t48 TYPE abap_bool.
          DATA(t49) = t2.
          t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_exit ).
          t42 = t48.
        ENDIF.
        t41 = t42.
        IF t42 = abap_false.
          DATA t50 TYPE abap_bool.
          DATA(t51) = t2.
          t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_raise ).
          t41 = t50.
        ENDIF.
        IF t41 = abap_true.
          DATA(t52) = abap_true.
          result = t52.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t53) = abap_false.
    result = t53.

  ENDMETHOD.

  METHOD is_structure.
    DATA(t1) = i_s.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t1.
    t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_end_if ).
    t21 = t22.
    IF t22 = abap_false.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t1.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_else ).
      t21 = t24.
    ENDIF.
    t20 = t21.
    IF t21 = abap_false.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t1.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_end_loop ).
      t20 = t26.
    ENDIF.
    t19 = t20.
    IF t20 = abap_false.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t1.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_end_try ).
      t19 = t28.
    ENDIF.
    t18 = t19.
    IF t19 = abap_false.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t1.
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_end_method ).
      t18 = t30.
    ENDIF.
    t17 = t18.
    IF t18 = abap_false.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t1.
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_end_module ).
      t17 = t32.
    ENDIF.
    t16 = t17.
    IF t17 = abap_false.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t1.
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_end_form ).
      t16 = t34.
    ENDIF.
    t15 = t16.
    IF t16 = abap_false.
      DATA t36 TYPE abap_bool.
      DATA(t37) = t1.
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_end_test_seam ).
      t15 = t36.
    ENDIF.
    t14 = t15.
    IF t15 = abap_false.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t1.
      t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_end_at ).
      t14 = t38.
    ENDIF.
    t13 = t14.
    IF t14 = abap_false.
      DATA t40 TYPE abap_bool.
      DATA(t41) = t1.
      t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_end_select ).
      t13 = t40.
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      DATA t42 TYPE abap_bool.
      DATA(t43) = t1.
      t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
      t12 = t42.
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t44 TYPE abap_bool.
      DATA(t45) = t1.
      t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_end_function ).
      t11 = t44.
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      DATA t46 TYPE abap_bool.
      DATA(t47) = t1.
      t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_end_case ).
      t10 = t46.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA t48 TYPE abap_bool.
      DATA(t49) = t1.
      t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_end_while ).
      t9 = t48.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t1.
      t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_end_do ).
      t8 = t50.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t52 TYPE abap_bool.
      DATA(t53) = t1.
      t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_st_cleanup ).
      t7 = t52.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t54 TYPE abap_bool.
      DATA(t55) = t1.
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_st_when ).
      t6 = t54.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t56 TYPE abap_bool.
      DATA(t57) = t1.
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_when_others ).
      t5 = t56.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t58 TYPE abap_bool.
      DATA(t59) = t1.
      t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_st_when_type ).
      t4 = t58.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t1.
      t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_st_catch ).
      t3 = t60.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t62 TYPE abap_bool.
      DATA(t63) = t1.
      t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_st_else_if ).
      t2 = t62.
    ENDIF.
    IF t2 = abap_true.
      DATA(t64) = abap_true.
      result = t64.
      RETURN.
    ENDIF.
    DATA(t65) = abap_false.
    result = t65.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unreachable_code_conf( me->gt_cn_in_sr_rl_un_cd_ts_unr_cd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unreachable_code_conf( me->gt_cn_in_sr_rl_un_cd_ts_unr_cd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unreachable_code_conf.
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
        t1 = NEW zcl_lnt_unreachable_code_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_cd_ts_unr_cd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_cd_ts_unr_cd( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1748_4da847978c11.
  ENDMETHOD.
ENDCLASS.
