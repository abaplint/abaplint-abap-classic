* TS: src/rules/ambiguous_statement.ts:16:1 AmbiguousStatement
CLASS zcl_lnt_ambiguous_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_am_st_ts_am_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
    METHODS st_cn_in_sr_rl_am_st_ts_am_stt IMPORTING i_conf TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
    METHODS rn_pr_in_sr_rl_am_st_ts_am_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_bare_statement IMPORTING i_st TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS try_match IMPORTING i_st TYPE REF TO zcl_lnt_statement_node i_reg_f149 TYPE REF TO zif_lnt_registry i_type1 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ambiguous_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_ambgs_sttmnt_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |ambiguous_statement|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check for ambigious statements|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for ambiguity between deleting or modifying from inte|.
    t7 = t7 && |rnal and database table\nAdd "TABLE" keyword or "@" for escap|.
    t7 = t7 && |ing SQL variables\n\nOnly works if the target version is 740sp|.
    t7 = t7 && |05 or above|.
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
      DATA(t21) = |DELETE foo FROM bar.\nMODIFY foo FROM bar.|.
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
      DATA(t27) = |DELETE foo FROM @bar.\nDELETE TABLE itab FROM 2.\nMODIFY zfoo |.
      t27 = t27 && |FROM @wa.\nMODIFY TABLE foo FROM bar.|.
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
    DATA(t1) = |Ambiguous statement. Use explicit syntax.|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_am_st_ts_am_stt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_am_st_ts_am_stt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_am_st_ts_am_stt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    DATA t7 TYPE REF TO zif_lnt_configuration.
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
    DATA(t12) = |v740sp05|.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    t5 = zcl_lnt_version_module=>release_at_least( i_running = t6 i_required = t9 ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      result = t13.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = t1.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = t15.
    t17 = t18->statements.
    t14 = t17.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t19.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    DATA(t21) = VALUE i( ).
    DO.
      t14->load( ).
      IF t21 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t20.
      READ TABLE t14->items INDEX t21 + 1 INTO t20.
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
      DATA t24 TYPE abap_bool.
      DATA(t25) = abap_false.
      t24 = t25.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE REF TO zif_lnt_statement.
      DATA(t28) = t19.
      t27 = t28->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_st_delete_database ).
      IF t26 = abap_true.
        DATA(t29) = VALUE abap_bool( ).
        DATA t30 TYPE REF TO zcl_lnt_statement_node.
        DATA(t31) = t19.
        t30 = t31.
        DATA t32 TYPE REF TO zif_lnt_registry.
        DATA(t33) = me->reg.
        t32 = t33.
        DATA t34 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d445_c8667ee83c64.
        t34 = t35.
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE string.
        DATA t38 TYPE string.
        DATA t39 TYPE REF TO zif_lnt_configuration.
        DATA(t40) = t32.
        t39 = t40->get_config( ).
        t38 = t39->get_version( ).
        t37 = t38.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t44) = t30.
        t43 = t44->get_tokens( ).
        DATA(t45) = 0.
        t42 = t43->slice1( p0 = t45 ).
        t41 = t42.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t46.
        DATA(t47) = t41.
        DATA t48 TYPE REF TO object.
        t48 = t47->pop( ).
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t46.
        IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t48.
          DATA t50 TYPE REF TO object.
          t50 = t49->as_ref( ).
          t46 ?= t50.
        ELSE.
          t46 ?= t48.
        ENDIF.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t53 TYPE REF TO zif_lnt_statement_runnable.
        DATA t54 TYPE REF TO zif_lnt_statement.
        DATA(t55) = t34.
        DATA t56 TYPE REF TO object.
        t56 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t55 ).
        t54 ?= t56.
        t53 = t54->get_matcher( ).
        DATA(t57) = t41.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        DATA(t59) = t37.
        CLEAR t58.
        CREATE OBJECT t58.
        t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t58->sval = t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t52 = zcl_lnt_combi=>run( i_runnable = t53 i_tokens = t57 i_version_or_release = t58 i_language_version_0e1d = t60 ).
        t51 = t52.
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t63) = t51.
        t62 = t63.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        t64 = t65.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t62.
        IF t68 IS INITIAL.
          t67 = abap_true.
        ENDIF.
        t66 = xsdbool( t67 = abap_false ).
        t61 = t66.
        t36 = t61.
        t29 = t36.
        t24 = t29.
      ELSE.
        DATA t69 TYPE abap_bool.
        DATA t70 TYPE REF TO zif_lnt_statement.
        DATA(t71) = t19.
        t70 = t71->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_st_delete_internal ).
        IF t69 = abap_true.
          DATA(t72) = VALUE abap_bool( ).
          DATA t73 TYPE REF TO zcl_lnt_statement_node.
          DATA(t74) = t19.
          t73 = t74.
          DATA t75 TYPE REF TO zif_lnt_registry.
          DATA(t76) = me->reg.
          t75 = t76.
          DATA t77 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d442_7bcff8928bf7.
          t77 = t78.
          DATA(t79) = VALUE abap_bool( ).
          DATA t80 TYPE string.
          DATA t81 TYPE string.
          DATA t82 TYPE REF TO zif_lnt_configuration.
          DATA(t83) = t75.
          t82 = t83->get_config( ).
          t81 = t82->get_version( ).
          t80 = t81.
          DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t87) = t73.
          t86 = t87->get_tokens( ).
          DATA(t88) = 0.
          t85 = t86->slice1( p0 = t88 ).
          t84 = t85.
          DATA t89 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t89.
          DATA(t90) = t84.
          DATA t91 TYPE REF TO object.
          t91 = t90->pop( ).
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          CLEAR t89.
          IF t91 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t92 ?= t91.
            DATA t93 TYPE REF TO object.
            t93 = t92->as_ref( ).
            t89 ?= t93.
          ELSE.
            t89 ?= t91.
          ENDIF.
          DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t96 TYPE REF TO zif_lnt_statement_runnable.
          DATA t97 TYPE REF TO zif_lnt_statement.
          DATA(t98) = t77.
          DATA t99 TYPE REF TO object.
          t99 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t98 ).
          t97 ?= t99.
          t96 = t97->get_matcher( ).
          DATA(t100) = t84.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          DATA(t102) = t80.
          CLEAR t101.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t101->sval = t102.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          t95 = zcl_lnt_combi=>run( i_runnable = t96 i_tokens = t100 i_version_or_release = t101 i_language_version_0e1d = t103 ).
          t94 = t95.
          DATA(t104) = VALUE abap_bool( ).
          DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t106) = t94.
          t105 = t106.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          t107 = t108.
          DATA(t109) = VALUE abap_bool( ).
          DATA(t110) = VALUE abap_bool( ).
          DATA(t111) = t105.
          IF t111 IS INITIAL.
            t110 = abap_true.
          ENDIF.
          t109 = xsdbool( t110 = abap_false ).
          t104 = t109.
          t79 = t104.
          t72 = t79.
          t24 = t72.
        ELSE.
          DATA t112 TYPE abap_bool.
          DATA t113 TYPE REF TO zif_lnt_statement.
          DATA(t114) = t19.
          t113 = t114->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_st_modify_internal ).
          IF t112 = abap_true.
            DATA(t115) = VALUE abap_bool( ).
            DATA(t116) = VALUE abap_bool( ).
            DATA t117 TYPE REF TO zcl_lnt_statement_node.
            DATA(t118) = t19.
            t117 = t118.
            DATA t119 TYPE REF TO zif_lnt_registry.
            DATA(t120) = me->reg.
            t119 = t120.
            DATA t121 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d555_4421dfbe5302.
            t121 = t122.
            DATA(t123) = VALUE abap_bool( ).
            DATA t124 TYPE string.
            DATA t125 TYPE string.
            DATA t126 TYPE REF TO zif_lnt_configuration.
            DATA(t127) = t119.
            t126 = t127->get_config( ).
            t125 = t126->get_version( ).
            t124 = t125.
            DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t131) = t117.
            t130 = t131->get_tokens( ).
            DATA(t132) = 0.
            t129 = t130->slice1( p0 = t132 ).
            t128 = t129.
            DATA t133 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t133.
            DATA(t134) = t128.
            DATA t135 TYPE REF TO object.
            t135 = t134->pop( ).
            DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t136.
            CLEAR t133.
            IF t135 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t136 ?= t135.
              DATA t137 TYPE REF TO object.
              t137 = t136->as_ref( ).
              t133 ?= t137.
            ELSE.
              t133 ?= t135.
            ENDIF.
            DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t140 TYPE REF TO zif_lnt_statement_runnable.
            DATA t141 TYPE REF TO zif_lnt_statement.
            DATA(t142) = t121.
            DATA t143 TYPE REF TO object.
            t143 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t142 ).
            t141 ?= t143.
            t140 = t141->get_matcher( ).
            DATA(t144) = t128.
            DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t145.
            DATA(t146) = t124.
            CLEAR t145.
            CREATE OBJECT t145.
            t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t145->sval = t146.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            t139 = zcl_lnt_combi=>run( i_runnable = t140 i_tokens = t144 i_version_or_release = t145 i_language_version_0e1d = t147 ).
            t138 = t139.
            DATA(t148) = VALUE abap_bool( ).
            DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t150) = t138.
            t149 = t150.
            DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t152.
            t151 = t152.
            DATA(t153) = VALUE abap_bool( ).
            DATA(t154) = VALUE abap_bool( ).
            DATA(t155) = t149.
            IF t155 IS INITIAL.
              t154 = abap_true.
            ENDIF.
            t153 = xsdbool( t154 = abap_false ).
            t148 = t153.
            t123 = t148.
            t116 = t123.
            t115 = t116.
            IF t116 = abap_false.
              DATA(t156) = VALUE abap_bool( ).
              DATA t157 TYPE REF TO zcl_lnt_statement_node.
              DATA(t158) = t19.
              t157 = t158.
              DATA(t159) = VALUE abap_bool( ).
              DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t163) = t157.
              t162 = t163->get_tokens( ).
              DATA(t164) = 0.
              t161 = t162->slice1( p0 = t164 ).
              t160 = t161.
              DATA t165 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t165.
              DATA(t166) = t160.
              DATA t167 TYPE REF TO object.
              t167 = t166->pop( ).
              DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t168.
              CLEAR t165.
              IF t167 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t168 ?= t167.
                DATA t169 TYPE REF TO object.
                t169 = t168->as_ref( ).
                t165 ?= t169.
              ELSE.
                t165 ?= t167.
              ENDIF.
              DATA t170 TYPE abap_bool.
              DATA t171 TYPE i.
              DATA(t172) = t160.
              t172->load( ).
              t171 = lines( t172->items ).
              DATA(t173) = 2.
              t170 = xsdbool( t171 = t173 ).
              t159 = t170.
              t156 = t159.
              t115 = t156.
            ENDIF.
            t24 = t115.
          ELSE.
            DATA t174 TYPE abap_bool.
            DATA t175 TYPE REF TO zif_lnt_statement.
            DATA(t176) = t19.
            t175 = t176->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_st_modify_database ).
            IF t174 = abap_true.
              DATA(t177) = VALUE abap_bool( ).
              DATA t178 TYPE REF TO zcl_lnt_statement_node.
              DATA(t179) = t19.
              t178 = t179.
              DATA t180 TYPE REF TO zif_lnt_registry.
              DATA(t181) = me->reg.
              t180 = t181.
              DATA t182 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d557_3b89d313f054.
              t182 = t183.
              DATA(t184) = VALUE abap_bool( ).
              DATA t185 TYPE string.
              DATA t186 TYPE string.
              DATA t187 TYPE REF TO zif_lnt_configuration.
              DATA(t188) = t180.
              t187 = t188->get_config( ).
              t186 = t187->get_version( ).
              t185 = t186.
              DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t192) = t178.
              t191 = t192->get_tokens( ).
              DATA(t193) = 0.
              t190 = t191->slice1( p0 = t193 ).
              t189 = t190.
              DATA t194 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t194.
              DATA(t195) = t189.
              DATA t196 TYPE REF TO object.
              t196 = t195->pop( ).
              DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t197.
              CLEAR t194.
              IF t196 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t197 ?= t196.
                DATA t198 TYPE REF TO object.
                t198 = t197->as_ref( ).
                t194 ?= t198.
              ELSE.
                t194 ?= t196.
              ENDIF.
              DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t201 TYPE REF TO zif_lnt_statement_runnable.
              DATA t202 TYPE REF TO zif_lnt_statement.
              DATA(t203) = t182.
              DATA t204 TYPE REF TO object.
              t204 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t203 ).
              t202 ?= t204.
              t201 = t202->get_matcher( ).
              DATA(t205) = t189.
              DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t206.
              DATA(t207) = t185.
              CLEAR t206.
              CREATE OBJECT t206.
              t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t206->sval = t207.
              DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t208.
              t200 = zcl_lnt_combi=>run( i_runnable = t201 i_tokens = t205 i_version_or_release = t206 i_language_version_0e1d = t208 ).
              t199 = t200.
              DATA(t209) = VALUE abap_bool( ).
              DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t211) = t199.
              t210 = t211.
              DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t213.
              t212 = t213.
              DATA(t214) = VALUE abap_bool( ).
              DATA(t215) = VALUE abap_bool( ).
              DATA(t216) = t210.
              IF t216 IS INITIAL.
                t215 = abap_true.
              ENDIF.
              t214 = xsdbool( t215 = abap_false ).
              t209 = t214.
              t184 = t209.
              t177 = t184.
              t24 = t177.
            ELSE.
              DATA t217 TYPE abap_bool.
              DATA t218 TYPE REF TO zif_lnt_statement.
              DATA(t219) = t19.
              t218 = t219->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t217 = xsdbool( t218 IS BOUND AND t218 IS INSTANCE OF zcl_lnt_st_insert_database ).
              IF t217 = abap_true.
                DATA(t220) = VALUE abap_bool( ).
                DATA t221 TYPE REF TO zcl_lnt_statement_node.
                DATA(t222) = t19.
                t221 = t222.
                DATA(t223) = VALUE abap_bool( ).
                DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t227) = t221.
                t226 = t227->get_tokens( ).
                DATA(t228) = 0.
                t225 = t226->slice1( p0 = t228 ).
                t224 = t225.
                DATA t229 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t229.
                DATA(t230) = t224.
                DATA t231 TYPE REF TO object.
                t231 = t230->pop( ).
                DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t232.
                CLEAR t229.
                IF t231 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t232 ?= t231.
                  DATA t233 TYPE REF TO object.
                  t233 = t232->as_ref( ).
                  t229 ?= t233.
                ELSE.
                  t229 ?= t231.
                ENDIF.
                DATA t234 TYPE abap_bool.
                DATA t235 TYPE i.
                DATA(t236) = t224.
                t236->load( ).
                t235 = lines( t236->items ).
                DATA(t237) = 2.
                t234 = xsdbool( t235 = t237 ).
                t223 = t234.
                t220 = t223.
                t24 = t220.
              ELSE.
                DATA t238 TYPE abap_bool.
                DATA t239 TYPE REF TO zif_lnt_statement.
                DATA(t240) = t19.
                t239 = t240->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                t238 = xsdbool( t239 IS BOUND AND t239 IS INSTANCE OF zcl_lnt_st_update_database ).
                IF t238 = abap_true.
                  DATA(t241) = VALUE abap_bool( ).
                  DATA t242 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t243) = t19.
                  t242 = t243.
                  DATA(t244) = VALUE abap_bool( ).
                  DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t248) = t242.
                  t247 = t248->get_tokens( ).
                  DATA(t249) = 0.
                  t246 = t247->slice1( p0 = t249 ).
                  t245 = t246.
                  DATA t250 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t250.
                  DATA(t251) = t245.
                  DATA t252 TYPE REF TO object.
                  t252 = t251->pop( ).
                  DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t253.
                  CLEAR t250.
                  IF t252 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t253 ?= t252.
                    DATA t254 TYPE REF TO object.
                    t254 = t253->as_ref( ).
                    t250 ?= t254.
                  ELSE.
                    t250 ?= t252.
                  ENDIF.
                  DATA t255 TYPE abap_bool.
                  DATA t256 TYPE i.
                  DATA(t257) = t245.
                  t257->load( ).
                  t256 = lines( t257->items ).
                  DATA(t258) = 2.
                  t255 = xsdbool( t256 = t258 ).
                  t244 = t255.
                  t241 = t244.
                  t24 = t241.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t259) = t24.
      IF t259 = abap_true.
        DATA t260 TYPE REF TO zcl_lnt_issue.
        CLEAR t260.
        DATA t261 TYPE REF TO zcl_lnt_issue.
        CLEAR t261.
        DATA(t262) = t1.
        DATA(t263) = t19.
        DATA(t264) = |Ambiguous statement. Use explicit syntax.|.
        DATA(t265) = VALUE string( ).
        DATA t266 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t266.
        DATA t267 TYPE string.
        DATA(t268) = |ambiguous_statement|.
        t267 = t268.
        DATA t269 TYPE string.
        DATA(t270) = |Check for ambigious statements|.
        t269 = t270.
        DATA t271 TYPE string.
        DATA(t272) = |Checks for ambiguity between deleting or modifying from inte|.
        t272 = t272 && |rnal and database table\nAdd "TABLE" keyword or "@" for escap|.
        t272 = t272 && |ing SQL variables\n\nOnly works if the target version is 740sp|.
        t272 = t272 && |05 or above|.
        t271 = t272.
        DATA t273 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t273.
        DATA t274 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t274.
        DATA(t275) = abap_true.
        IF t275 = abap_true.
          DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t278.
          t277 = t278.
          DATA(t279) = t277.
          DATA(t280) = |SingleFile|.
          t279->load( ).
          APPEND t280 TO t279->items.
          t279->save( ).
          DATA(t281) = t277.
          t276 = t281.
          t274 = t276.
        ELSE.
          DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t282.
          t274 = t282.
        ENDIF.
        t273 = t274.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t283.
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t284.
        DATA(t285) = abap_true.
        IF t285 = abap_true.
          DATA(t286) = |DELETE foo FROM bar.\nMODIFY foo FROM bar.|.
          DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t287->has = abap_true.
          t287->value = t286.
          t284 = t287.
        ELSE.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t288.
          t284 = t288.
        ENDIF.
        t283 = t284.
        DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t289.
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t290.
        DATA(t291) = abap_true.
        IF t291 = abap_true.
          DATA(t292) = |DELETE foo FROM @bar.\nDELETE TABLE itab FROM 2.\nMODIFY zfoo |.
          t292 = t292 && |FROM @wa.\nMODIFY TABLE foo FROM bar.|.
          DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t293->has = abap_true.
          t293->value = t292.
          t290 = t293.
        ELSE.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          t290 = t294.
        ENDIF.
        t289 = t290.
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
        t266 = NEW zcl_lnt_irule_metadata( i_key = t267 i_title = t269 i_short_description = t271 i_bad_example = t283 i_good_example = t289 i_extended_information = t295 i_tags = t273 i_pragma = t297 i_pseudo_comment = t299 ).
        CREATE OBJECT t266->zlnt_view_ownkeys_b0e8086400eb.
        t266->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t301.
        IF t266->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t266->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t301 ).
        ENDIF.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        IF t266->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t266->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t302 ).
        ENDIF.
        DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t303.
        IF t266->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t266->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t303 ).
        ENDIF.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        IF t266->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t266->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t304 ).
        ENDIF.
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t305.
        IF t266->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t266->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t305 ).
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        IF t266->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t266->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t306 ).
        ENDIF.
        CREATE OBJECT t266->zlnt_json_ownkeys_70e5fd461788.
        t266->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t307) = |key|.
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        IF t266->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t266->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
        ENDIF.
        DATA(t309) = |title|.
        DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t310.
        IF t266->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t266->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
        ENDIF.
        DATA(t311) = |shortDescription|.
        DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t312.
        IF t266->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t266->zlnt_json_ownkeys_70e5fd461788->put( p0 = t311 p1 = t312 ).
        ENDIF.
        DATA(t313) = |tags|.
        DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t314.
        IF t266->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t266->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
        ENDIF.
        DATA(t315) = |badExample|.
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t316.
        IF t266->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t266->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
        ENDIF.
        DATA(t317) = |goodExample|.
        DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t318.
        IF t266->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t266->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
        ENDIF.
        t265 = t266->key.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t320) = me->conf.
        t319 = t320->zlnt_view_read_sr_15c06369f827( ).
        DATA t321 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t321.
        DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t322.
        t261 = zcl_lnt_issue=>at_statement( i_file = t262 i_statement = t263 i_message_26cb = t264 i_key = t265 i_severity = t319 i_fix = t321 i_alternative_fixes = t322 ).
        t260 = t261.
        DATA(t323) = t2.
        DATA(t324) = t260.
        t323->load( ).
        APPEND t324 TO t323->items.
        t323->save( ).
      ENDIF.
    ENDDO.
    DATA(t325) = t2.
    result = t325.

  ENDMETHOD.

  METHOD is_bare_statement.
    DATA(t1) = i_st.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->get_tokens( ).
    DATA(t6) = 0.
    t3 = t4->slice1( p0 = t6 ).
    t2 = t3.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA(t8) = t2.
    DATA t9 TYPE REF TO object.
    t9 = t8->pop( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    CLEAR t7.
    IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t10 ?= t9.
      DATA t11 TYPE REF TO object.
      t11 = t10->as_ref( ).
      t7 ?= t11.
    ELSE.
      t7 ?= t9.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE i.
    DATA(t14) = t2.
    t14->load( ).
    t13 = lines( t14->items ).
    DATA(t15) = 2.
    t12 = xsdbool( t13 = t15 ).
    result = t12.

  ENDMETHOD.

  METHOD try_match.
    DATA(t1) = i_st.
    DATA(t2) = i_reg_f149.
    DATA(t3) = i_type1.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zif_lnt_configuration.
    DATA(t7) = t2.
    t6 = t7->get_config( ).
    t5 = t6->get_version( ).
    t4 = t5.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    t10 = t11->get_tokens( ).
    DATA(t12) = 0.
    t9 = t10->slice1( p0 = t12 ).
    t8 = t9.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t13.
    DATA(t14) = t8.
    DATA t15 TYPE REF TO object.
    t15 = t14->pop( ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    CLEAR t13.
    IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t16 ?= t15.
      DATA t17 TYPE REF TO object.
      t17 = t16->as_ref( ).
      t13 ?= t17.
    ELSE.
      t13 ?= t15.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zif_lnt_statement.
    DATA(t22) = t3.
    DATA t23 TYPE REF TO object.
    t23 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t22 ).
    t21 ?= t23.
    t20 = t21->get_matcher( ).
    DATA(t24) = t8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = t4.
    CLEAR t25.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t19 = zcl_lnt_combi=>run( i_runnable = t20 i_tokens = t24 i_version_or_release = t25 i_language_version_0e1d = t27 ).
    t18 = t19.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = t18.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t29.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t33 = xsdbool( t34 = abap_false ).
    t28 = t33.
    result = t28.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_ambgs_sttmnt_cnf( me->gt_cn_in_sr_rl_am_st_ts_am_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_ambgs_sttmnt_cnf( me->gt_cn_in_sr_rl_am_st_ts_am_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_ambgs_sttmnt_cnf.
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
        t1 = NEW zcl_lnt_ambgs_sttmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_am_st_ts_am_stt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_am_st_ts_am_stt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1404_8827727f45d8.
  ENDMETHOD.
ENDCLASS.
