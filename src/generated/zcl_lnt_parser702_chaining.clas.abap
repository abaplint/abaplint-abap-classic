* TS: src/rules/parser_702_chaining.ts:14:1 Parser702Chaining
CLASS zcl_lnt_parser702_chaining DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_in_sr_rl_pr_70_ch_ts_pr_ch RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS s_c_in_sr_rl_pr_70_ch_ts_pr_ch IMPORTING i_conf TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
    METHODS r_p_in_sr_rl_pr_70_ch_ts_pr_ch IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS ensr_src_hs_n_prcdrl_kywrds IMPORTING i_source_75cf TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS push_issue IMPORTING i_message_26cb TYPE string i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser702_chaining IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prsr702_chnng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |parser_702_chaining|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Parser Error, bad chaining on 702|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
    t7 = t7 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
    t7 = t7 && |orts errors.\nOnly active on target version 702 and below.|.
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
      DATA(t15) = |Syntax|.
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

  METHOD g_c_in_sr_rl_pr_70_ch_ts_pr_ch.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_in_sr_rl_pr_70_ch_ts_pr_ch.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_in_sr_rl_pr_70_ch_ts_pr_ch.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_configuration.
    CLEAR t7.
    DATA(t8) = me->reg.
    t7 = t8->get_config( ).
    t6 = t7->get_release( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t11.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t11 = zcl_lnt_version_module=>release_b8cd.
    DATA(t12) = |v702|.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    CLEAR t13.
    IF t6 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      CLEAR t15.
      t16 = t6.
      TRY.
          t13 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t15 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t13 = t15->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t14.
    IF t9 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      CLEAR t17.
      t18 = t9.
      TRY.
          t14 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t17 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t14 = t17->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t13 IS BOUND.
      t5 = t13->strict_equals( t14 ).
    ELSE.
      t5 = xsdbool( t14 IS NOT BOUND ).
    ENDIF.
    t5 = xsdbool( t5 = abap_false ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_configuration.
      CLEAR t21.
      DATA(t22) = me->reg.
      t21 = t22->get_config( ).
      t20 = t21->get_release( ).
      DATA t23 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t25.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t25 = zcl_lnt_version_module=>release_b8cd.
      DATA(t26) = |v700|.
      t24 = t25->get( p0 = t26 ).
      t23 = t24.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t27.
      IF t20 IS BOUND.
        DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t29.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        CLEAR t29.
        t30 = t20.
        TRY.
            t27 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS NOT BOUND.
          TRY.
              t29 ?= t20.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t29 IS BOUND.
            t27 = t29->source( ).
          ENDIF.
          IF t27 IS NOT BOUND.
            CREATE OBJECT t27.
            t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t27->oval = t20.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t28.
      IF t23 IS BOUND.
        DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t31.
        DATA t32 TYPE REF TO object.
        CLEAR t32.
        CLEAR t31.
        t32 = t23.
        TRY.
            t28 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS NOT BOUND.
          TRY.
              t31 ?= t23.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t31 IS BOUND.
            t28 = t31->source( ).
          ENDIF.
          IF t28 IS NOT BOUND.
            CREATE OBJECT t28.
            t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t28->oval = t23.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t27 IS BOUND.
        t19 = t27->strict_equals( t28 ).
      ELSE.
        t19 = xsdbool( t28 IS NOT BOUND ).
      ENDIF.
      t19 = xsdbool( t19 = abap_false ).
      t4 = t19.
    ENDIF.
    IF t4 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      CREATE OBJECT t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t36.
    DATA(t37) = t1.
    t36 = t37.
    DATA t38 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t38.
    DATA(t39) = t36.
    t38 = t39->structure.
    t35 = t38.
    t34 = t35.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t41.
    DATA(t42) = t34.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    t43 = t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t41.
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    t40 = t45.
    IF t40 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      CREATE OBJECT t47.
      result = t47.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t49.
    DATA(t50) = t34.
    t49 = t50.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e.
    t48 = t49->find_all_expressions( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t52.
    DATA t53 TYPE REF TO object.
    CLEAR t53.
    DATA(t54) = VALUE i( ).
    DO.
      t48->load( ).
      IF t54 >= lines( t48->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t48->items INDEX t54 + 1 INTO t53.
      t54 = t54 + 1.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      CLEAR t52.
      IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t55 ?= t53.
        DATA t56 TYPE REF TO object.
        CLEAR t56.
        t56 = t55->as_ref( ).
        t52 ?= t56.
      ELSE.
        t52 ?= t53.
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      DATA(t59) = t52.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
      t58 = t59->find_direct_expressions( i_type_9913 = t60 ).
      t57 = t58.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE i( ).
      DATA(t63) = t57.
      t63->load( ).
      t62 = lines( t63->items ).
      DATA(t64) = 2.
      t61 = xsdbool( t62 < t64 ).
      IF t61 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t65) = t57.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      DATA(t68) = VALUE i( ).
      DO.
        t65->load( ).
        IF t68 >= lines( t65->items ).
          EXIT.
        ENDIF.
        CLEAR t67.
        READ TABLE t65->items INDEX t68 + 1 INTO t67.
        t68 = t68 + 1.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        CLEAR t66.
        IF t67 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t69 ?= t67.
          DATA t70 TYPE REF TO object.
          CLEAR t70.
          t70 = t69->as_ref( ).
          t66 ?= t70.
        ELSE.
          t66 ?= t67.
        ENDIF.
        DATA t71 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t71.
        DATA t72 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t72.
        DATA(t73) = t66.
        DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
        t72 = t73->find_direct_expression( i_type_9913 = t74 ).
        t71 = t72.
        DATA(t75) = VALUE abap_bool( ).
        DATA t76 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t76.
        DATA(t77) = t71.
        t76 = t77.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        t78 = t79.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = t76.
        IF t81 IS INITIAL.
          t80 = abap_true.
        ENDIF.
        t75 = t80.
        IF t75 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t84.
        DATA(t85) = t71.
        t84 = t85.
        DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
        t83 = t84->find_direct_expression( i_type_9913 = t86 ).
        t82 = t83.
        DATA(t87) = VALUE abap_bool( ).
        DATA t88 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t88.
        DATA(t89) = t82.
        t88 = t89.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        t90 = t91.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = t88.
        IF t93 IS INITIAL.
          t92 = abap_true.
        ENDIF.
        t87 = t92.
        IF t87 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = VALUE abap_bool( ).
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t98.
        DATA(t99) = t82.
        t98 = t99.
        DATA(t100) = |IMPORTING|.
        t97 = t98->find_direct_token_by_text( i_text = t100 ).
        t96 = xsdbool( t97 IS BOUND ).
        t95 = t96.
        IF t96 = abap_false.
          DATA(t101) = VALUE abap_bool( ).
          DATA t102 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t102.
          DATA t103 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t103.
          DATA(t104) = t82.
          t103 = t104.
          DATA(t105) = |CHANGING|.
          t102 = t103->find_direct_token_by_text( i_text = t105 ).
          t101 = xsdbool( t102 IS BOUND ).
          t95 = t101.
        ENDIF.
        t94 = t95.
        IF t95 = abap_false.
          DATA(t106) = VALUE abap_bool( ).
          DATA t107 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t107.
          DATA t108 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t108.
          DATA(t109) = t82.
          t108 = t109.
          DATA(t110) = |EXCEPTIONS|.
          t107 = t108->find_direct_token_by_text( i_text = t110 ).
          t106 = xsdbool( t107 IS BOUND ).
          t94 = t106.
        ENDIF.
        IF t94 = abap_true.
          DATA(t111) = VALUE string( ).
          DATA(t112) = |This kind of method chaining not possible in 702|.
          t111 = t112.
          DATA(t113) = VALUE string( ).
          DATA(t114) = t111.
          t113 = t114.
          DATA t115 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t115.
          DATA(t116) = t1.
          t115 = t116.
          DATA t117 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t117.
          DATA t118 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t118.
          DATA(t119) = t82.
          t118 = t119.
          t117 = t118.
          DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t120.
          DATA(t121) = t2.
          t120 = t121.
          DATA t122 TYPE REF TO zcl_lnt_issue.
          CLEAR t122.
          DATA t123 TYPE REF TO zcl_lnt_issue.
          CLEAR t123.
          DATA(t124) = t115.
          DATA t125 TYPE REF TO zcl_lnt_position.
          CLEAR t125.
          DATA t126 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t126.
          DATA t127 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t127.
          DATA(t128) = t117.
          t127 = t128->get_first_token( ).
          t126 = t127.
          DATA t129 TYPE REF TO zcl_lnt_position.
          CLEAR t129.
          DATA(t130) = t126.
          t129 = t130->start.
          t125 = t129.
          DATA(t131) = t113.
          DATA(t132) = VALUE string( ).
          DATA t133 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t133.
          DATA(t134) = VALUE string( ).
          DATA(t135) = |parser_702_chaining|.
          t134 = t135.
          DATA(t136) = VALUE string( ).
          DATA(t137) = |Parser Error, bad chaining on 702|.
          t136 = t137.
          DATA(t138) = VALUE string( ).
          DATA(t139) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
          t139 = t139 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
          t139 = t139 && |orts errors.\nOnly active on target version 702 and below.|.
          t138 = t139.
          DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t140.
          DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t141.
          DATA(t142) = abap_true.
          IF t142 = abap_true.
            DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t143.
            DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t144.
            DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t145.
            CREATE OBJECT t145.
            t144 = t145.
            DATA(t146) = t144.
            DATA(t147) = |Syntax|.
            t146->load( ).
            APPEND t147 TO t146->items.
            t146->save( ).
            DATA(t148) = t144.
            DATA(t149) = |SingleFile|.
            t148->load( ).
            APPEND t149 TO t148->items.
            t148->save( ).
            DATA(t150) = t144.
            t143 = t150.
            t141 = t143.
          ELSE.
            DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t151.
            t141 = t151.
          ENDIF.
          t140 = t141.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t153.
          t152 = t153.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t154 = t155.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          t156 = t157.
          DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t158.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          t158 = t159.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          t160 = t161.
          t133 = NEW zcl_lnt_irule_metadata( i_key = t134 i_title = t136 i_short_description = t138 i_bad_example = t152 i_good_example = t154 i_extended_information = t156 i_tags = t140 i_pragma = t158 i_pseudo_comment = t160 ).
          CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
          t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t162 ).
          ENDIF.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t163 ).
          ENDIF.
          DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t164.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t164 ).
          ENDIF.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t165 ).
          ENDIF.
          CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
          t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t166) = |key|.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
          ENDIF.
          DATA(t168) = |title|.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
          ENDIF.
          DATA(t170) = |shortDescription|.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
          ENDIF.
          DATA(t172) = |tags|.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
          ENDIF.
          t132 = t133->key.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA(t175) = me->conf.
          t174 = t175->zlnt_view_read_sr_15c06369f827( ).
          DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t176.
          t123 = zcl_lnt_issue=>at_position( i_file = t124 i_start = t125 i_message_26cb = t131 i_key = t132 i_severity = t174 i_fix = t176 ).
          t122 = t123.
          DATA(t177) = t120.
          DATA(t178) = t122.
          t177->load( ).
          APPEND t178 TO t177->items.
          t177->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t179.
    DATA t180 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t180.
    DATA(t181) = t1.
    t180 = t181.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t182.
    DATA(t183) = t180.
    t182 = t183->statements.
    t179 = t182.
    DATA t184 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t184.
    DATA t185 TYPE REF TO object.
    CLEAR t185.
    DATA(t186) = VALUE i( ).
    DO.
      t179->load( ).
      IF t186 >= lines( t179->items ).
        EXIT.
      ENDIF.
      CLEAR t185.
      READ TABLE t179->items INDEX t186 + 1 INTO t185.
      t186 = t186 + 1.
      DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t187.
      CLEAR t184.
      IF t185 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t187 ?= t185.
        DATA t188 TYPE REF TO object.
        CLEAR t188.
        t188 = t187->as_ref( ).
        t184 ?= t188.
      ELSE.
        t184 ?= t185.
      ENDIF.
      DATA(t189) = VALUE abap_bool( ).
      DATA(t190) = VALUE abap_bool( ).
      DATA t191 TYPE REF TO zif_lnt_statement.
      CLEAR t191.
      DATA(t192) = t184.
      t191 = t192->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_st_move ).
      t189 = xsdbool( t190 = abap_false ).
      IF t189 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t193 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t193.
      DATA t194 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t194.
      DATA(t195) = t184.
      DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t194 = t195->find_direct_expression( i_type_9913 = t196 ).
      t193 = t194.
      DATA(t197) = VALUE abap_bool( ).
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t198.
      DATA(t199) = t193.
      t198 = t199.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      t200 = t201.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = t198.
      IF t203 IS INITIAL.
        t202 = abap_true.
      ENDIF.
      t197 = t202.
      IF t197 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t204 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t204.
      DATA(t205) = t193.
      t204 = t205.
      DATA(t206) = t1.
      DATA(t207) = t2.
      me->ensr_src_hs_n_prcdrl_kywrds( i_source_75cf = t204 i_file = t206 i_issues = t207 ).
    ENDDO.
    DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t208.
    DATA t209 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t209.
    DATA(t210) = t34.
    t209 = t210.
    DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t208 = t209->find_all_expressions( i_type_9913 = t211 ).
    DATA t212 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t212.
    DATA t213 TYPE REF TO object.
    CLEAR t213.
    DATA(t214) = VALUE i( ).
    DO.
      t208->load( ).
      IF t214 >= lines( t208->items ).
        EXIT.
      ENDIF.
      CLEAR t213.
      READ TABLE t208->items INDEX t214 + 1 INTO t213.
      t214 = t214 + 1.
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t215.
      CLEAR t212.
      IF t213 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t215 ?= t213.
        DATA t216 TYPE REF TO object.
        CLEAR t216.
        t216 = t215->as_ref( ).
        t212 ?= t216.
      ELSE.
        t212 ?= t213.
      ENDIF.
      DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t217.
      DATA(t218) = t212.
      DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
      t217 = t218->find_all_expressions( i_type_9913 = t219 ).
      DATA t220 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      DATA(t222) = VALUE i( ).
      DO.
        t217->load( ).
        IF t222 >= lines( t217->items ).
          EXIT.
        ENDIF.
        CLEAR t221.
        READ TABLE t217->items INDEX t222 + 1 INTO t221.
        t222 = t222 + 1.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        CLEAR t220.
        IF t221 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t223 ?= t221.
          DATA t224 TYPE REF TO object.
          CLEAR t224.
          t224 = t223->as_ref( ).
          t220 ?= t224.
        ELSE.
          t220 ?= t221.
        ENDIF.
        DATA t225 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t225.
        DATA t226 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t226.
        DATA(t227) = t220.
        DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t226 = t227->find_direct_expression( i_type_9913 = t228 ).
        t225 = t226.
        DATA(t229) = VALUE abap_bool( ).
        DATA t230 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t230.
        DATA(t231) = t225.
        t230 = t231.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        t232 = t233.
        DATA(t234) = VALUE abap_bool( ).
        DATA(t235) = t230.
        IF t235 IS INITIAL.
          t234 = abap_true.
        ENDIF.
        t229 = t234.
        IF t229 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t236 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t236.
        DATA(t237) = t225.
        t236 = t237.
        DATA(t238) = t1.
        DATA(t239) = t2.
        me->ensr_src_hs_n_prcdrl_kywrds( i_source_75cf = t236 i_file = t238 i_issues = t239 ).
      ENDDO.
    ENDDO.
    DATA(t240) = t2.
    result = t240.

  ENDMETHOD.

  METHOD ensr_src_hs_n_prcdrl_kywrds.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_file.
    DATA(t3) = i_issues.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t6.
    DATA(t9) = |EXPORTING|.
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA(t10) = t6.
    DATA(t11) = |IMPORTING|.
    t10->load( ).
    APPEND t11 TO t10->items.
    t10->save( ).
    DATA(t12) = t6.
    DATA(t13) = |CHANGING|.
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
    DATA(t14) = t6.
    DATA(t15) = |EXCEPTIONS|.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t16) = t6.
    t5 = t16.
    t4 = t5.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = t1.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t17 = t18->find_all_expressions( i_type_9913 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    DATA(t22) = VALUE i( ).
    DO.
      t17->load( ).
      IF t22 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t17->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t28) = t4.
      t27 = t28.
      DATA t29 TYPE i.
      DATA t30 TYPE i.
      DATA(t31) = t27.
      t31->load( ).
      t30 = lines( t31->items ).
      t29 = t30.
      DATA t32 TYPE i.
      DATA(t33) = 0.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t34 = t35.
      DO.
        DATA t36 TYPE abap_bool.
        DATA(t37) = t32.
        DATA(t38) = t29.
        t36 = xsdbool( t37 < t38 ).
        IF t36 = abap_false.
          EXIT.
        ENDIF.
        DATA t39 TYPE string.
        DATA t40 TYPE string.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t42) = t27.
        DATA(t43) = t32.
        t41 = t42->get( p0 = t43 ).
        t40 = t41->value.
        t39 = t40.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t46) = t20.
        DATA(t47) = t39.
        t45 = t46->find_direct_token_by_text( i_text = t47 ).
        t44 = xsdbool( t45 IS BOUND ).
        IF t44 = abap_true.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          DATA(t49) = abap_true.
          IF t49 = abap_true.
            DATA(t50) = t39.
            DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t51->has = abap_true.
            t51->value = t50.
            t48 = t51.
          ELSE.
            DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t52.
            t48 = t52.
          ENDIF.
          t34 = t48.
          EXIT.
        ENDIF.
        DATA t53 TYPE i.
        DATA(t54) = t32.
        DATA(t55) = 1.
        t53 = t54 + t55.
        t32 = t53.
      ENDDO.
      DATA(t56) = t34.
      t26 = t56.
      t25 = t26.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t25.
      IF t58 IS BOUND.
        IF t58->has = abap_true.
          t57 = xsdbool( strlen( t58->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t57 = abap_true.
        DATA t59 TYPE string.
        DATA t60 TYPE string.
        DATA t61 TYPE string.
        DATA(t62) = |Unexpected word |.
        DATA t63 TYPE string.
        DATA(t64) = t25.
        t63 = t64->value.
        DATA(t65) = strlen( t62 ).
        t61 = |{ t62 }{ t63 }|.
        DATA(t66) = | in functional method call|.
        DATA(t67) = strlen( t61 ).
        t60 = |{ t61 }{ t66 }|.
        t59 = t60.
        DATA t68 TYPE string.
        DATA(t69) = t59.
        t68 = t69.
        DATA t70 TYPE REF TO zcl_lnt_abap_file.
        DATA(t71) = t2.
        t70 = t71.
        DATA t72 TYPE REF TO zcl_lnt_expression_node.
        DATA(t73) = t20.
        t72 = t73.
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t75) = t3.
        t74 = t75.
        DATA t76 TYPE REF TO zcl_lnt_issue.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        CLEAR t77.
        DATA(t78) = t70.
        DATA t79 TYPE REF TO zcl_lnt_position.
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        DATA t81 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t82) = t72.
        t81 = t82->get_first_token( ).
        t80 = t81.
        DATA t83 TYPE REF TO zcl_lnt_position.
        DATA(t84) = t80.
        t83 = t84->start.
        t79 = t83.
        DATA(t85) = t68.
        DATA(t86) = VALUE string( ).
        DATA t87 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t87.
        DATA t88 TYPE string.
        DATA(t89) = |parser_702_chaining|.
        t88 = t89.
        DATA t90 TYPE string.
        DATA(t91) = |Parser Error, bad chaining on 702|.
        t90 = t91.
        DATA t92 TYPE string.
        DATA(t93) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
        t93 = t93 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
        t93 = t93 && |orts errors.\nOnly active on target version 702 and below.|.
        t92 = t93.
        DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t94.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t95.
        DATA(t96) = abap_true.
        IF t96 = abap_true.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t99.
          t98 = t99.
          DATA(t100) = t98.
          DATA(t101) = |Syntax|.
          t100->load( ).
          APPEND t101 TO t100->items.
          t100->save( ).
          DATA(t102) = t98.
          DATA(t103) = |SingleFile|.
          t102->load( ).
          APPEND t103 TO t102->items.
          t102->save( ).
          DATA(t104) = t98.
          t97 = t104.
          t95 = t97.
        ELSE.
          DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t105.
          t95 = t105.
        ENDIF.
        t94 = t95.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        t106 = t107.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        t110 = t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t112 = t113.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t114 = t115.
        t87 = NEW zcl_lnt_irule_metadata( i_key = t88 i_title = t90 i_short_description = t92 i_bad_example = t106 i_good_example = t108 i_extended_information = t110 i_tags = t94 i_pragma = t112 i_pseudo_comment = t114 ).
        CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
        t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t119 ).
        ENDIF.
        CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
        t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t120) = |key|.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
        ENDIF.
        DATA(t122) = |title|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        ENDIF.
        DATA(t124) = |shortDescription|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        DATA(t126) = |tags|.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
        ENDIF.
        t86 = t87->key.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t129) = me->conf.
        t128 = t129->zlnt_view_read_sr_15c06369f827( ).
        DATA t130 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t130.
        t77 = zcl_lnt_issue=>at_position( i_file = t78 i_start = t79 i_message_26cb = t85 i_key = t86 i_severity = t128 i_fix = t130 ).
        t76 = t77.
        DATA(t131) = t74.
        DATA(t132) = t76.
        t131->load( ).
        APPEND t132 TO t131->items.
        t131->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD push_issue.
    DATA(t1) = i_message_26cb.
    DATA(t2) = i_file.
    DATA(t3) = i_node.
    DATA(t4) = i_issues.
    DATA t5 TYPE REF TO zcl_lnt_issue.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_issue.
    CLEAR t6.
    DATA(t7) = t2.
    DATA t8 TYPE REF TO zcl_lnt_position.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t11) = t3.
    t10 = t11->get_first_token( ).
    t9 = t10.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA(t13) = t9.
    t12 = t13->start.
    t8 = t12.
    DATA(t14) = t1.
    DATA(t15) = VALUE string( ).
    DATA t16 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t16.
    DATA t17 TYPE string.
    DATA(t18) = |parser_702_chaining|.
    t17 = t18.
    DATA t19 TYPE string.
    DATA(t20) = |Parser Error, bad chaining on 702|.
    t19 = t20.
    DATA t21 TYPE string.
    DATA(t22) = |ABAP on 702 does not allow for method chaining with IMPORTIN|.
    t22 = t22 && |G/EXPORTING/CHANGING keywords,\nthis rule finds these and rep|.
    t22 = t22 && |orts errors.\nOnly active on target version 702 and below.|.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t28.
      t27 = t28.
      DATA(t29) = t27.
      DATA(t30) = |Syntax|.
      t29->load( ).
      APPEND t30 TO t29->items.
      t29->save( ).
      DATA(t31) = t27.
      DATA(t32) = |SingleFile|.
      t31->load( ).
      APPEND t32 TO t31->items.
      t31->save( ).
      DATA(t33) = t27.
      t26 = t33.
      t24 = t26.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t34.
      t24 = t34.
    ENDIF.
    t23 = t24.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t42.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    t43 = t44.
    t16 = NEW zcl_lnt_irule_metadata( i_key = t17 i_title = t19 i_short_description = t21 i_bad_example = t35 i_good_example = t37 i_extended_information = t39 i_tags = t23 i_pragma = t41 i_pseudo_comment = t43 ).
    CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
    t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
    t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    t15 = t16->key.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t58) = me->conf.
    t57 = t58->zlnt_view_read_sr_15c06369f827( ).
    DATA t59 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t59.
    t6 = zcl_lnt_issue=>at_position( i_file = t7 i_start = t8 i_message_26cb = t14 i_key = t15 i_severity = t57 i_fix = t59 ).
    t5 = t6.
    DATA(t60) = t4.
    DATA(t61) = t5.
    t60->load( ).
    APPEND t61 TO t60->items.
    t60->save( ).
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prsr702_chnng_cnf( me->g_c_in_sr_rl_pr_70_ch_ts_pr_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prsr702_chnng_cnf( me->g_c_in_sr_rl_pr_70_ch_ts_pr_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr702_chnng_cnf.
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
        t1 = NEW zcl_lnt_prsr702_chnng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_in_sr_rl_pr_70_ch_ts_pr_ch( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_in_sr_rl_pr_70_ch_ts_pr_ch( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1641_3230ed7ae965.
  ENDMETHOD.
ENDCLASS.
