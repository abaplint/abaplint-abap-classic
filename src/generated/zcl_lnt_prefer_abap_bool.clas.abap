* TS: src/rules/prefer_abap_bool.ts:15:1 PreferAbapBool
CLASS zcl_lnt_prefer_abap_bool DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
    METHODS s_c_i_s_r_pr_ab_bl_ts_pr_ab_bl IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
    METHODS r_p_i_s_r_pr_ab_bl_ts_pr_ab_bl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_abap_bool IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prefer_abap_bool_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |prefer_abap_bool|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Prefer abap_bool|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Use abap_bool instead of XFELD, SAP_BOOL, BOOLE_D, FLAG for |.
    t7 = t7 && |boolean variables|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#use-abap_bool-for-booleans|.
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
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |DATA foo TYPE xfeld.|.
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
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |DATA foo TYPE abap_bool.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
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
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_ab_bl_ts_pr_ab_bl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_pr_ab_bl_ts_pr_ab_bl.
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
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = t20.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    DATA(t27) = t4.
    t26 = t27.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t25 = t26->find_all_statements( i_type_9913 = t28 ).
    t23 = t24->concat( p0 = t25 ).
    t22 = t23.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = t22.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = t4.
    t33 = t34.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d407_dfd1462d93da.
    t32 = t33->find_all_statements( i_type_9913 = t35 ).
    t30 = t31->concat( p0 = t32 ).
    t29 = t30.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t38) = t29.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zcl_lnt_structure_node.
    DATA(t41) = t4.
    t40 = t41.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t39 = t40->find_all_statements( i_type_9913 = t42 ).
    t37 = t38->concat( p0 = t39 ).
    t36 = t37.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t45) = t36.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zcl_lnt_structure_node.
    DATA(t48) = t4.
    t47 = t48.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t46 = t47->find_all_statements( i_type_9913 = t49 ).
    t44 = t45->concat( p0 = t46 ).
    t43 = t44.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t52) = t43.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zcl_lnt_structure_node.
    DATA(t55) = t4.
    t54 = t55.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
    t53 = t54->find_all_statements( i_type_9913 = t56 ).
    t51 = t52->concat( p0 = t53 ).
    t50 = t51.
    DATA(t57) = t50.
    t19 = t57.
    t18 = t19.
    DATA(t58) = t18.
    DATA t59 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t59.
    DATA t60 TYPE REF TO object.
    CLEAR t60.
    DATA(t61) = VALUE i( ).
    DO.
      t58->load( ).
      IF t61 >= lines( t58->items ).
        EXIT.
      ENDIF.
      CLEAR t60.
      READ TABLE t58->items INDEX t61 + 1 INTO t60.
      t61 = t61 + 1.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      CLEAR t59.
      IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t62 ?= t60.
        DATA t63 TYPE REF TO object.
        t63 = t62->as_ref( ).
        t59 ?= t63.
      ELSE.
        t59 ?= t60.
      ENDIF.
      DATA t64 TYPE REF TO zcl_lnt_expression_node.
      DATA t65 TYPE REF TO zcl_lnt_expression_node.
      DATA(t66) = t59.
      DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
      t65 = t66->find_first_expression( i_type_9913 = t67 ).
      t64 = t65.
      DATA(t68) = VALUE abap_bool( ).
      DATA t69 TYPE REF TO zcl_lnt_expression_node.
      DATA(t70) = t64.
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t71 = t72.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = t69.
      IF t74 IS INITIAL.
        t73 = abap_true.
      ENDIF.
      t68 = t73.
      IF t68 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t75) = VALUE string( ).
      DATA t76 TYPE string.
      DATA t77 TYPE string.
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      DATA(t79) = t64.
      t78 = t79.
      t77 = t78->concat_tokens( ).
      DATA(t80) = strlen( t77 ).
      t76 = t77.
      IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t76 TO UPPER CASE.
      ELSE.
        t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
      ENDIF.
      t75 = t76.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t83.
      IF zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_c96b25bbd049 = abap_false.
        zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_3838d3e910b3( ).
      ENDIF.
      t83 = zcl_lnt_prfr_abp_bl_mdl=>forbidden_types.
      DATA(t84) = t75.
      t82 = t83->has( p0 = t84 ).
      DATA(t85) = abap_false.
      t81 = xsdbool( t82 = t85 ).
      IF t81 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      DATA t88 TYPE REF TO zcl_lnt_expression_node.
      DATA(t89) = t64.
      t88 = t89.
      t87 = t88->get_first_token( ).
      t86 = t87.
      DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t91 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t92) = t1.
      DATA(t93) = t86.
      DATA(t94) = |abap_bool|.
      t91 = zcl_lnt_edit_helper=>replace_token( i_file = t92 i_token = t93 i_text = t94 ).
      t90 = t91.
      DATA(t95) = t2.
      DATA t96 TYPE REF TO zcl_lnt_issue.
      CLEAR t96.
      DATA(t97) = t1.
      DATA(t98) = t86.
      DATA t99 TYPE string.
      DATA t100 TYPE string.
      DATA(t101) = |Use abap_bool instead of |.
      DATA(t102) = t75.
      DATA(t103) = strlen( t101 ).
      t100 = |{ t101 }{ t102 }|.
      DATA(t104) = ||.
      DATA(t105) = strlen( t100 ).
      t99 = |{ t100 }{ t104 }|.
      DATA(t106) = VALUE string( ).
      DATA t107 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t107.
      DATA t108 TYPE string.
      DATA(t109) = |prefer_abap_bool|.
      t108 = t109.
      DATA t110 TYPE string.
      DATA(t111) = |Prefer abap_bool|.
      t110 = t111.
      DATA t112 TYPE string.
      DATA(t113) = |Use abap_bool instead of XFELD, SAP_BOOL, BOOLE_D, FLAG for |.
      t113 = t113 && |boolean variables|.
      t112 = t113.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      DATA(t116) = abap_true.
      IF t116 = abap_true.
        DATA(t117) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t117 = t117 && |nABAP.md#use-abap_bool-for-booleans|.
        DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t118->has = abap_true.
        t118->value = t117.
        t115 = t118.
      ELSE.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t115 = t119.
      ENDIF.
      t114 = t115.
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
        DATA(t127) = |Styleguide|.
        t126->load( ).
        APPEND t127 TO t126->items.
        t126->save( ).
        DATA(t128) = t124.
        DATA(t129) = |SingleFile|.
        t128->load( ).
        APPEND t129 TO t128->items.
        t128->save( ).
        DATA(t130) = t124.
        DATA(t131) = |Quickfix|.
        t130->load( ).
        APPEND t131 TO t130->items.
        t130->save( ).
        DATA(t132) = t124.
        t123 = t132.
        t121 = t123.
      ELSE.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t133.
        t121 = t133.
      ENDIF.
      t120 = t121.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t135.
      DATA(t136) = abap_true.
      IF t136 = abap_true.
        DATA(t137) = |DATA foo TYPE xfeld.|.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t137.
        t135 = t138.
      ELSE.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t135 = t139.
      ENDIF.
      t134 = t135.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t140.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      DATA(t142) = abap_true.
      IF t142 = abap_true.
        DATA(t143) = |DATA foo TYPE abap_bool.|.
        DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t144->has = abap_true.
        t144->value = t143.
        t141 = t144.
      ELSE.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        t141 = t145.
      ENDIF.
      t140 = t141.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t147.
      t146 = t147.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t149.
      t148 = t149.
      t107 = NEW zcl_lnt_irule_metadata( i_key = t108 i_title = t110 i_short_description = t112 i_bad_example = t134 i_good_example = t140 i_extended_information = t114 i_tags = t120 i_pragma = t146 i_pseudo_comment = t148 ).
      CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
      t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t151 ).
      ENDIF.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t152 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t153 ).
      ENDIF.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t154 ).
      ENDIF.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t155 ).
      ENDIF.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t156 ).
      ENDIF.
      CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
      t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t157) = |key|.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
      ENDIF.
      DATA(t159) = |title|.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
      ENDIF.
      DATA(t161) = |shortDescription|.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
      ENDIF.
      DATA(t163) = |extendedInformation|.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
      ENDIF.
      DATA(t165) = |tags|.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
      ENDIF.
      DATA(t167) = |badExample|.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
      ENDIF.
      DATA(t169) = |goodExample|.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
      ENDIF.
      t106 = t107->key.
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t172) = me->conf.
      t171 = t172->zlnt_view_read_sr_15c06369f827( ).
      DATA t173 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t173.
      DATA(t174) = abap_true.
      IF t174 = abap_true.
        DATA(t175) = t90.
        t173 = t175.
      ELSE.
        DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t176.
        t173 = t176.
      ENDIF.
      t96 = zcl_lnt_issue=>at_token( i_file = t97 i_token = t98 i_message_26cb = t99 i_key = t106 i_severity = t171 i_fix = t173 ).
      t95->load( ).
      APPEND t96 TO t95->items.
      t95->save( ).
    ENDDO.
    DATA(t177) = t2.
    result = t177.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prefer_abap_bool_conf( me->g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prefer_abap_bool_conf( me->g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
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
        t1 = NEW zcl_lnt_prefer_abap_bool_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_ab_bl_ts_pr_ab_bl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_ab_bl_ts_pr_ab_bl( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1651_101f61389241.
  ENDMETHOD.
ENDCLASS.
