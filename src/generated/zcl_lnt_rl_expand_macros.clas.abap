* TS: src/rules/expand_macros.ts:14:1 ExpandMacros
CLASS zcl_lnt_rl_expand_macros DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_expand_macros_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ex_mc_ts_ex_mcr RETURNING VALUE(result) TYPE REF TO zcl_lnt_expand_macros_conf.
    METHODS st_cn_in_sr_rl_ex_mc_ts_ex_mcr IMPORTING i_conf TYPE REF TO zcl_lnt_expand_macros_conf.
    METHODS rn_pr_in_sr_rl_ex_mc_ts_ex_mcr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_expand_macros IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_expand_macros_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |expand_macros|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Expand Macros|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Allows expanding macro calls with quick fixes|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Macros: https://help.sap.com/doc/abapdocu_latest_index_htm/l|.
      t11 = t11 && |atest/en-US/abenmacros_guidl.html\n\nNote that macros/DEFINE c|.
      t11 = t11 && |annot be used in the ABAP Cloud programming model|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |DEFINE _hello.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n_hello.|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |WRITE 'hello'.|.
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
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = t30.
      DATA(t33) = |Styleguide|.
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA(t34) = t30.
      DATA(t35) = |Quickfix|.
      t34->load( ).
      APPEND t35 TO t34->items.
      t34->save( ).
      DATA(t36) = t30.
      DATA(t37) = |Upport|.
      t36->load( ).
      APPEND t37 TO t36->items.
      t36->save( ).
      DATA(t38) = t30.
      t29 = t38.
      t27 = t29.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      t27 = t39.
    ENDIF.
    t26 = t27.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t26 i_pragma = t40 i_pseudo_comment = t42 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
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
    DATA(t63) = |tags|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ex_mc_ts_ex_mcr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ex_mc_ts_ex_mcr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ex_mc_ts_ex_mcr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Expand macro call|.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t8.
    t10 = t11->statements.
    t7 = t10.
    t6 = t7.
    DATA t12 TYPE i.
    DATA(t13) = 0.
    t12 = t13.
    DO.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t12.
      DATA t16 TYPE i.
      DATA(t17) = t6.
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
      DATA(t20) = t6.
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
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_macro_call ).
      t28 = xsdbool( t29 = abap_false ).
      IF t28 = abap_true.
        DATA t31 TYPE i.
        DATA(t32) = t12.
        DATA(t33) = 1.
        t31 = t32 + t33.
        t12 = t31.
        CONTINUE.
      ENDIF.
      DATA t34 TYPE string.
      DATA(t35) = ||.
      t34 = t35.
      DATA t36 TYPE i.
      DATA t37 TYPE i.
      DATA(t38) = t12.
      DATA(t39) = 1.
      t37 = t38 + t39.
      t36 = t37.
      DO.
        DATA t40 TYPE abap_bool.
        DATA(t41) = t36.
        DATA t42 TYPE i.
        DATA(t43) = t6.
        t43->load( ).
        t42 = lines( t43->items ).
        t40 = xsdbool( t41 < t42 ).
        IF t40 = abap_false.
          EXIT.
        ENDIF.
        DATA t44 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t45.
        DATA(t46) = t6.
        DATA(t47) = t36.
        t47 = t47 + 1.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        t46->load( ).
        CLEAR t48.
        READ TABLE t46->items INDEX t47 INTO t48.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t45.
        IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t48.
          DATA t50 TYPE REF TO object.
          t50 = t49->as_ref( ).
          t45 ?= t50.
        ELSE.
          t45 ?= t48.
        ENDIF.
        t44 = t45.
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE REF TO zcl_lnt_position.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA t54 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t55) = t44.
        t54 = t55->get_first_token( ).
        t53 = t54.
        DATA t56 TYPE REF TO zcl_lnt_position.
        DATA(t57) = t53.
        t56 = t57->start.
        t52 = t56.
        t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_virtual_position ).
        IF t51 = abap_true.
          DATA t58 TYPE abap_bool.
          DATA t59 TYPE REF TO zif_lnt_statement.
          DATA(t60) = t44.
          t59 = t60->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_macro_call ).
          IF t58 = abap_true.
            DATA t61 TYPE i.
            DATA(t62) = t36.
            DATA(t63) = 1.
            t61 = t62 + t63.
            t36 = t61.
            CONTINUE.
          ENDIF.
          DATA t64 TYPE abap_bool.
          DATA(t65) = t34.
          DATA(t66) = ||.
          t64 = xsdbool( t65 <> t66 ).
          IF t64 = abap_true.
            DATA t67 TYPE string.
            DATA(t68) = t34.
            DATA(t69) = |\n|.
            DATA(t70) = strlen( t68 ).
            t67 = |{ t68 }{ t69 }|.
            t34 = t67.
          ENDIF.
          DATA t71 TYPE string.
          DATA(t72) = t34.
          DATA t73 TYPE string.
          DATA(t74) = t44.
          t73 = t74->concat_tokens_virtual( ).
          DATA(t75) = strlen( t72 ).
          t71 = |{ t72 }{ t73 }|.
          t34 = t71.
        ELSE.
          EXIT.
        ENDIF.
        DATA t76 TYPE i.
        DATA(t77) = t36.
        DATA(t78) = 1.
        t76 = t77 + t78.
        t36 = t76.
      ENDDO.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      DATA t81 TYPE REF TO zcl_lnt_statement_node.
      DATA(t82) = t18.
      t81 = t82.
      DATA t83 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t84) = t81.
      t83 = t84->colon.
      t80 = t83.
      t79 = xsdbool( t80 IS BOUND ).
      IF t79 = abap_true.
        DATA t85 TYPE string.
        DATA(t86) = t34.
        DATA(t87) = |\n|.
        DATA(t88) = strlen( t86 ).
        t85 = |{ t86 }{ t87 }|.
        t34 = t85.
      ENDIF.
      DATA t89 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t91) = t1.
      DATA(t92) = t18.
      t90 = zcl_lnt_edit_helper=>delete_statement( i_file = t91 i_statement = t92 ).
      t89 = t90.
      DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t95) = t1.
      DATA t96 TYPE REF TO zcl_lnt_position.
      DATA t97 TYPE REF TO zcl_lnt_statement_node.
      DATA(t98) = t18.
      t97 = t98.
      DATA t99 TYPE REF TO zcl_lnt_position.
      DATA t100 TYPE REF TO zcl_lnt_abstract_token.
      DATA t101 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t102) = t97.
      t101 = t102->get_first_token( ).
      t100 = t101.
      DATA t103 TYPE REF TO zcl_lnt_position.
      DATA(t104) = t100.
      t103 = t104->start.
      t99 = t103.
      t96 = t99.
      DATA(t105) = t34.
      t94 = zcl_lnt_edit_helper=>insert_at( i_file = t95 i_pos = t96 i_text = t105 ).
      t93 = t94.
      DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t107 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t108) = t89.
      DATA(t109) = t93.
      t107 = zcl_lnt_edit_helper=>merge( i_fix1 = t108 i_fix2 = t109 ).
      t106 = t107.
      DATA(t110) = t2.
      DATA t111 TYPE REF TO zcl_lnt_issue.
      CLEAR t111.
      DATA(t112) = t1.
      DATA(t113) = t18.
      DATA(t114) = t4.
      DATA(t115) = VALUE string( ).
      DATA t116 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t116.
      DATA t117 TYPE string.
      DATA(t118) = |expand_macros|.
      t117 = t118.
      DATA t119 TYPE string.
      DATA(t120) = |Expand Macros|.
      t119 = t120.
      DATA t121 TYPE string.
      DATA(t122) = |Allows expanding macro calls with quick fixes|.
      t121 = t122.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t124.
      DATA(t125) = abap_true.
      IF t125 = abap_true.
        DATA(t126) = |Macros: https://help.sap.com/doc/abapdocu_latest_index_htm/l|.
        t126 = t126 && |atest/en-US/abenmacros_guidl.html\n\nNote that macros/DEFINE c|.
        t126 = t126 && |annot be used in the ABAP Cloud programming model|.
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
        DATA(t132) = |DEFINE _hello.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n_hello.|.
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
      CLEAR t135.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      DATA(t137) = abap_true.
      IF t137 = abap_true.
        DATA(t138) = |WRITE 'hello'.|.
        DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t139->has = abap_true.
        t139->value = t138.
        t136 = t139.
      ELSE.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        t136 = t140.
      ENDIF.
      t135 = t136.
      DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t142.
      DATA(t143) = abap_true.
      IF t143 = abap_true.
        DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t146.
        t145 = t146.
        DATA(t147) = t145.
        DATA(t148) = |Styleguide|.
        t147->load( ).
        APPEND t148 TO t147->items.
        t147->save( ).
        DATA(t149) = t145.
        DATA(t150) = |Quickfix|.
        t149->load( ).
        APPEND t150 TO t149->items.
        t149->save( ).
        DATA(t151) = t145.
        DATA(t152) = |Upport|.
        t151->load( ).
        APPEND t152 TO t151->items.
        t151->save( ).
        DATA(t153) = t145.
        t144 = t153.
        t142 = t144.
      ELSE.
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t154.
        t142 = t154.
      ENDIF.
      t141 = t142.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t156.
      t155 = t156.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      t157 = t158.
      t116 = NEW zcl_lnt_irule_metadata( i_key = t117 i_title = t119 i_short_description = t121 i_bad_example = t129 i_good_example = t135 i_extended_information = t123 i_tags = t141 i_pragma = t155 i_pseudo_comment = t157 ).
      CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
      t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
      ENDIF.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
      ENDIF.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t162 ).
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t163 ).
      ENDIF.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t164 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t165 ).
      ENDIF.
      CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
      t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t166) = |key|.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
      ENDIF.
      DATA(t168) = |title|.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
      ENDIF.
      DATA(t170) = |shortDescription|.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
      ENDIF.
      DATA(t172) = |extendedInformation|.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
      ENDIF.
      DATA(t174) = |badExample|.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
      ENDIF.
      DATA(t176) = |goodExample|.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
      ENDIF.
      DATA(t178) = |tags|.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
      ENDIF.
      t115 = t116->key.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t181) = me->conf.
      t180 = t181->zlnt_view_read_sr_15c06369f827( ).
      DATA t182 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t182.
      DATA(t183) = abap_true.
      IF t183 = abap_true.
        DATA(t184) = t106.
        t182 = t184.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t185.
        t182 = t185.
      ENDIF.
      DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t186.
      t111 = zcl_lnt_issue=>at_statement( i_file = t112 i_statement = t113 i_message_26cb = t114 i_key = t115 i_severity = t180 i_fix = t182 i_alternative_fixes = t186 ).
      t110->load( ).
      APPEND t111 TO t110->items.
      t110->save( ).
      EXIT.
      DATA t187 TYPE i.
      DATA(t188) = t12.
      DATA(t189) = 1.
      t187 = t188 + t189.
      t12 = t187.
    ENDDO.
    DATA(t190) = t2.
    result = t190.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_expand_macros_conf( me->gt_cn_in_sr_rl_ex_mc_ts_ex_mcr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_expand_macros_conf( me->gt_cn_in_sr_rl_ex_mc_ts_ex_mcr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_expand_macros_conf.
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
        t1 = NEW zcl_lnt_expand_macros_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ex_mc_ts_ex_mcr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ex_mc_ts_ex_mcr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1500_b8c567c52dfd.
  ENDMETHOD.
ENDCLASS.
