* TS: src/rules/unnecessary_return.ts:15:1 UnnecessaryReturn
CLASS zcl_lnt_unnecessary_return DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_rt_ts_un_rtr RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS st_cn_in_sr_rl_un_rt_ts_un_rtr IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
    METHODS rn_pr_in_sr_rl_un_rt_ts_un_rtr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_return IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_unncssry_rtrn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unnecessary_return|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unnecessary Return|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Finds unnecessary RETURN statements|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Finds unnecessary RETURN statements|.
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
      DATA(t23) = |Quickfix|.
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
      DATA(t29) = |FORM hello1.\n  WRITE 'world'.\n  RETURN.\nENDFORM.\n\nFORM foo.\n|.
      t29 = t29 && |  IF 1 = 2.\n    RETURN.\n  ENDIF.\nENDFORM.|.
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
      DATA(t35) = |FORM hello2.\n  WRITE 'world'.\nENDFORM.|.
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

  METHOD gt_cn_in_sr_rl_un_rt_ts_un_rtr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_rt_ts_un_rtr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_un_rt_ts_un_rtr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE string.
    DATA(t19) = |Unnecessary RETURN|.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abap_file.
    DATA(t23) = t1.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t25) = t22.
    t24 = t25->statements.
    t21 = t24.
    t20 = t21.
    DATA t26 TYPE f.
    DATA(t27) = CONV f( 0 ).
    t26 = t27.
    DATA t28 TYPE i.
    DATA(t29) = 0.
    t28 = t29.
    DO.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t28.
      DATA t32 TYPE i.
      DATA(t33) = t20.
      t33->load( ).
      t32 = lines( t33->items ).
      t30 = xsdbool( t31 < t32 ).
      IF t30 = abap_false.
        EXIT.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t35.
      DATA(t36) = t20.
      DATA(t37) = t28.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      t36->load( ).
      CLEAR t38.
      READ TABLE t36->items INDEX t37 INTO t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t35.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t38.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t35 ?= t40.
      ELSE.
        t35 ?= t38.
      ENDIF.
      t34 = t35.
      DATA t41 TYPE REF TO zif_lnt_statement.
      DATA t42 TYPE REF TO zif_lnt_statement.
      DATA(t43) = t34.
      t42 = t43->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t41 = t42.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE abap_bool.
      DATA(t47) = t41.
      t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
      t45 = t46.
      IF t46 = abap_false.
        DATA t48 TYPE abap_bool.
        DATA(t49) = t41.
        t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_st_form ).
        t45 = t48.
      ENDIF.
      t44 = t45.
      IF t45 = abap_false.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t41.
        t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_function_module ).
        t44 = t50.
      ENDIF.
      IF t44 = abap_true.
        DATA(t52) = CONV f( 0 ).
        t26 = t52.
        DATA t53 TYPE i.
        DATA(t54) = t28.
        DATA(t55) = 1.
        t53 = t54 + t55.
        t28 = t53.
        CONTINUE.
      ENDIF.
      DATA t56 TYPE abap_bool.
      DATA t57 TYPE abap_bool.
      DATA(t58) = t41.
      t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_st_comment ).
      t56 = xsdbool( t57 = abap_false ).
      IF t56 = abap_true.
        DATA t59 TYPE f.
        DATA(t60) = t26.
        DATA(t61) = CONV f( 1 ).
        t59 = t60 + t61.
        t26 = t59.
      ENDIF.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = VALUE abap_bool( ).
      DATA t64 TYPE abap_bool.
      DATA t65 TYPE abap_bool.
      DATA(t66) = t41.
      t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_end_method ).
      t64 = t65.
      IF t65 = abap_false.
        DATA t67 TYPE abap_bool.
        DATA(t68) = t41.
        t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_end_form ).
        t64 = t67.
      ENDIF.
      t63 = t64.
      IF t64 = abap_false.
        DATA t69 TYPE abap_bool.
        DATA(t70) = t41.
        t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_end_function ).
        t63 = t69.
      ENDIF.
      t62 = xsdbool( t63 = abap_false ).
      IF t62 = abap_true.
        DATA t71 TYPE i.
        DATA(t72) = t28.
        DATA(t73) = 1.
        t71 = t72 + t73.
        t28 = t71.
        CONTINUE.
      ENDIF.
      DATA t74 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t75.
      DATA(t76) = t20.
      DATA t77 TYPE i.
      DATA(t78) = t28.
      DATA(t79) = 1.
      t77 = t78 - t79.
      t77 = t77 + 1.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      t76->load( ).
      CLEAR t80.
      READ TABLE t76->items INDEX t77 INTO t80.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t75.
      IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t80.
        DATA t82 TYPE REF TO object.
        t82 = t81->as_ref( ).
        t75 ?= t82.
      ELSE.
        t75 ?= t80.
      ENDIF.
      t74 = t75.
      DATA(t83) = VALUE abap_bool( ).
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE abap_bool.
      DATA(t86) = t74.
      t85 = xsdbool( t86 IS BOUND ).
      t84 = t85.
      IF t85 = abap_true.
        DATA t87 TYPE abap_bool.
        DATA t88 TYPE REF TO zif_lnt_statement.
        DATA(t89) = t74.
        t88 = t89->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_st_return ).
        t84 = t87.
      ENDIF.
      t83 = t84.
      IF t84 = abap_true.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE i.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t94 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t95) = t74.
        t94 = t95.
        DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t97) = t94.
        t96 = t97->children.
        t93 = t96.
        t92 ?= t93.
        t92->load( ).
        t91 = lines( t92->items ).
        DATA(t98) = 2.
        t90 = xsdbool( t91 = t98 ).
        t83 = t90.
      ENDIF.
      IF t83 = abap_true.
        DATA t99 TYPE abap_bool.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE abap_bool.
        DATA(t102) = me->conf.
        t101 = t102->zlnt_view_read_sr_b8269287eadd( ).
        DATA(t103) = abap_true.
        t100 = xsdbool( t101 = t103 ).
        t99 = t100.
        IF t100 = abap_true.
          DATA t104 TYPE abap_bool.
          DATA(t105) = t26.
          DATA(t106) = CONV f( 2 ).
          t104 = xsdbool( t105 = t106 ).
          t99 = t104.
        ENDIF.
        IF t99 = abap_true.
          DATA t107 TYPE i.
          DATA(t108) = t28.
          DATA(t109) = 1.
          t107 = t108 + t109.
          t28 = t107.
          CONTINUE.
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t112) = t1.
        DATA(t113) = t74.
        t111 = zcl_lnt_edit_helper=>delete_statement( i_file = t112 i_statement = t113 ).
        t110 = t111.
        DATA(t114) = t2.
        DATA t115 TYPE REF TO zcl_lnt_issue.
        CLEAR t115.
        DATA(t116) = t1.
        DATA(t117) = t74.
        DATA(t118) = t18.
        DATA(t119) = VALUE string( ).
        DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t120.
        DATA t121 TYPE string.
        DATA(t122) = |unnecessary_return|.
        t121 = t122.
        DATA t123 TYPE string.
        DATA(t124) = |Unnecessary Return|.
        t123 = t124.
        DATA t125 TYPE string.
        DATA(t126) = |Finds unnecessary RETURN statements|.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = |Finds unnecessary RETURN statements|.
          DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t131->has = abap_true.
          t131->value = t130.
          t128 = t131.
        ELSE.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          t128 = t132.
        ENDIF.
        t127 = t128.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t133.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t138.
          t137 = t138.
          DATA(t139) = t137.
          DATA(t140) = |SingleFile|.
          t139->load( ).
          APPEND t140 TO t139->items.
          t139->save( ).
          DATA(t141) = t137.
          DATA(t142) = |Quickfix|.
          t141->load( ).
          APPEND t142 TO t141->items.
          t141->save( ).
          DATA(t143) = t137.
          t136 = t143.
          t134 = t136.
        ELSE.
          DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t144.
          t134 = t144.
        ENDIF.
        t133 = t134.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        DATA(t147) = abap_true.
        IF t147 = abap_true.
          DATA(t148) = |FORM hello1.\n  WRITE 'world'.\n  RETURN.\nENDFORM.\n\nFORM foo.\n|.
          t148 = t148 && |  IF 1 = 2.\n    RETURN.\n  ENDIF.\nENDFORM.|.
          DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t149->has = abap_true.
          t149->value = t148.
          t146 = t149.
        ELSE.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          t146 = t150.
        ENDIF.
        t145 = t146.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA(t153) = abap_true.
        IF t153 = abap_true.
          DATA(t154) = |FORM hello2.\n  WRITE 'world'.\nENDFORM.|.
          DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t155->has = abap_true.
          t155->value = t154.
          t152 = t155.
        ELSE.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          t152 = t156.
        ENDIF.
        t151 = t152.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t157 = t158.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t159 = t160.
        t120 = NEW zcl_lnt_irule_metadata( i_key = t121 i_title = t123 i_short_description = t125 i_bad_example = t145 i_good_example = t151 i_extended_information = t127 i_tags = t133 i_pragma = t157 i_pseudo_comment = t159 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t165 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t166 ).
        ENDIF.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t167 ).
        ENDIF.
        CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
        t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t168) = |key|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        DATA(t170) = |title|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |shortDescription|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |extendedInformation|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |tags|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        DATA(t178) = |badExample|.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
        ENDIF.
        DATA(t180) = |goodExample|.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
        ENDIF.
        t119 = t120->key.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t183) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
        t182 = t183->zlnt_view_read_sr_15c06369f827( ).
        DATA t184 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t184.
        DATA(t185) = abap_true.
        IF t185 = abap_true.
          DATA(t186) = t110.
          t184 = t186.
        ELSE.
          DATA t187 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t187.
          t184 = t187.
        ENDIF.
        DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t188.
        t115 = zcl_lnt_issue=>at_statement( i_file = t116 i_statement = t117 i_message_26cb = t118 i_key = t119 i_severity = t182 i_fix = t184 i_alternative_fixes = t188 ).
        t114->load( ).
        APPEND t115 TO t114->items.
        t114->save( ).
      ENDIF.
      DATA t189 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t189.
      DATA t190 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t190.
      DATA(t191) = t20.
      DATA t192 TYPE i.
      DATA(t193) = t28.
      DATA(t194) = 2.
      t192 = t193 - t194.
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
      DATA(t198) = VALUE abap_bool( ).
      DATA(t199) = VALUE abap_bool( ).
      DATA(t200) = VALUE abap_bool( ).
      DATA t201 TYPE abap_bool.
      DATA t202 TYPE abap_bool.
      DATA(t203) = t74.
      t202 = xsdbool( t203 IS BOUND ).
      t201 = t202.
      IF t202 = abap_true.
        DATA t204 TYPE abap_bool.
        DATA(t205) = t189.
        t204 = xsdbool( t205 IS BOUND ).
        t201 = t204.
      ENDIF.
      t200 = t201.
      IF t201 = abap_true.
        DATA t206 TYPE abap_bool.
        DATA t207 TYPE REF TO zif_lnt_statement.
        DATA(t208) = t189.
        t207 = t208->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_st_return ).
        t200 = t206.
      ENDIF.
      t199 = t200.
      IF t200 = abap_true.
        DATA t209 TYPE abap_bool.
        DATA t210 TYPE i.
        DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t213 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t214) = t189.
        t213 = t214.
        DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t216) = t213.
        t215 = t216->children.
        t212 = t215.
        t211 ?= t212.
        t211->load( ).
        t210 = lines( t211->items ).
        DATA(t217) = 2.
        t209 = xsdbool( t210 = t217 ).
        t199 = t209.
      ENDIF.
      t198 = t199.
      IF t199 = abap_true.
        DATA t218 TYPE abap_bool.
        DATA t219 TYPE REF TO zif_lnt_statement.
        DATA(t220) = t74.
        t219 = t220->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t218 = xsdbool( t219 IS BOUND AND t219 IS INSTANCE OF zcl_lnt_end_if ).
        t198 = t218.
      ENDIF.
      IF t198 = abap_true.
        DATA t221 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t223) = t1.
        DATA(t224) = t189.
        t222 = zcl_lnt_edit_helper=>delete_statement( i_file = t223 i_statement = t224 ).
        t221 = t222.
        DATA(t225) = t2.
        DATA t226 TYPE REF TO zcl_lnt_issue.
        CLEAR t226.
        DATA(t227) = t1.
        DATA(t228) = t189.
        DATA(t229) = t18.
        DATA(t230) = VALUE string( ).
        DATA t231 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t231.
        DATA t232 TYPE string.
        DATA(t233) = |unnecessary_return|.
        t232 = t233.
        DATA t234 TYPE string.
        DATA(t235) = |Unnecessary Return|.
        t234 = t235.
        DATA t236 TYPE string.
        DATA(t237) = |Finds unnecessary RETURN statements|.
        t236 = t237.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        DATA(t240) = abap_true.
        IF t240 = abap_true.
          DATA(t241) = |Finds unnecessary RETURN statements|.
          DATA(t242) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t242->has = abap_true.
          t242->value = t241.
          t239 = t242.
        ELSE.
          DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t243.
          t239 = t243.
        ENDIF.
        t238 = t239.
        DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t244.
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t245.
        DATA(t246) = abap_true.
        IF t246 = abap_true.
          DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t249.
          t248 = t249.
          DATA(t250) = t248.
          DATA(t251) = |SingleFile|.
          t250->load( ).
          APPEND t251 TO t250->items.
          t250->save( ).
          DATA(t252) = t248.
          DATA(t253) = |Quickfix|.
          t252->load( ).
          APPEND t253 TO t252->items.
          t252->save( ).
          DATA(t254) = t248.
          t247 = t254.
          t245 = t247.
        ELSE.
          DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t255.
          t245 = t255.
        ENDIF.
        t244 = t245.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t257.
        DATA(t258) = abap_true.
        IF t258 = abap_true.
          DATA(t259) = |FORM hello1.\n  WRITE 'world'.\n  RETURN.\nENDFORM.\n\nFORM foo.\n|.
          t259 = t259 && |  IF 1 = 2.\n    RETURN.\n  ENDIF.\nENDFORM.|.
          DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t260->has = abap_true.
          t260->value = t259.
          t257 = t260.
        ELSE.
          DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t261.
          t257 = t261.
        ENDIF.
        t256 = t257.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t263.
        DATA(t264) = abap_true.
        IF t264 = abap_true.
          DATA(t265) = |FORM hello2.\n  WRITE 'world'.\nENDFORM.|.
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
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t269.
        t268 = t269.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        t270 = t271.
        t231 = NEW zcl_lnt_irule_metadata( i_key = t232 i_title = t234 i_short_description = t236 i_bad_example = t256 i_good_example = t262 i_extended_information = t238 i_tags = t244 i_pragma = t268 i_pseudo_comment = t270 ).
        CREATE OBJECT t231->zlnt_view_ownkeys_b0e8086400eb.
        t231->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t272 ).
        ENDIF.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t273 ).
        ENDIF.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t274 ).
        ENDIF.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t275 ).
        ENDIF.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t276 ).
        ENDIF.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t277 ).
        ENDIF.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t278 ).
        ENDIF.
        CREATE OBJECT t231->zlnt_json_ownkeys_70e5fd461788.
        t231->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t279) = |key|.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
        ENDIF.
        DATA(t281) = |title|.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
        ENDIF.
        DATA(t283) = |shortDescription|.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
        ENDIF.
        DATA(t285) = |extendedInformation|.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
        ENDIF.
        DATA(t287) = |tags|.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
        ENDIF.
        DATA(t289) = |badExample|.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
        ENDIF.
        DATA(t291) = |goodExample|.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t292.
        IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t291 p1 = t292 ).
        ENDIF.
        t230 = t231->key.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t294) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
        t293 = t294->zlnt_view_read_sr_15c06369f827( ).
        DATA t295 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t295.
        DATA(t296) = abap_true.
        IF t296 = abap_true.
          DATA(t297) = t221.
          t295 = t297.
        ELSE.
          DATA t298 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t298.
          t295 = t298.
        ENDIF.
        DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t299.
        t226 = zcl_lnt_issue=>at_statement( i_file = t227 i_statement = t228 i_message_26cb = t229 i_key = t230 i_severity = t293 i_fix = t295 i_alternative_fixes = t299 ).
        t225->load( ).
        APPEND t226 TO t225->items.
        t225->save( ).
      ENDIF.
      DATA t300 TYPE i.
      DATA(t301) = t28.
      DATA(t302) = 1.
      t300 = t301 + t302.
      t28 = t300.
    ENDDO.
    DATA(t303) = t2.
    result = t303.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unncssry_rtrn_cnf( me->gt_cn_in_sr_rl_un_rt_ts_un_rtr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_rtrn_cnf.
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
        t1 = NEW zcl_lnt_unncssry_rtrn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_rt_ts_un_rtr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_un_rt_ts_un_rtr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1746_707b0ebcc113.
  ENDMETHOD.
ENDCLASS.
