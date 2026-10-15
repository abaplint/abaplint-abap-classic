* TS: src/rules/superfluous_value.ts:13:1 SuperfluousValue
CLASS zcl_lnt_superfluous_value DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_superfluous_value_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_sp_vl_ts_spr_vl RETURNING VALUE(result) TYPE REF TO zcl_lnt_superfluous_value_conf.
    METHODS st_cn_in_sr_rl_sp_vl_ts_spr_vl IMPORTING i_conf TYPE REF TO zcl_lnt_superfluous_value_conf.
    METHODS rn_pr_in_sr_rl_sp_vl_ts_spr_vl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_superfluous_value IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_superfluous_value_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |superfluous_value|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Superfluous VALUE|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Find superfluous VALUE expressions|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Left hand side is inline, VALUE is inferred, value body is s|.
      t11 = t11 && |imple, from v740sp02 and up|.
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
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |DATA(message_entry) = VALUE #( message_table[ msgno = msgno |.
      t27 = t27 && |] ).|.
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
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |DATA(message_entry) = message_table[ msgno = msgno ].|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sp_vl_ts_spr_vl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sp_vl_ts_spr_vl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_sp_vl_ts_spr_vl.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    DATA t8 TYPE REF TO zif_lnt_configuration.
    DATA(t9) = me->reg.
    t8 = t9->get_config( ).
    t7 = t8->get_release( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t12.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd.
    DATA(t13) = |v740sp02|.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    t6 = zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t10 ).
    t5 = xsdbool( t6 = abap_false ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zif_lnt_configuration.
      DATA(t17) = me->reg.
      t16 = t17->get_config( ).
      t15 = t16->get_language_version( ).
      DATA(t18) = |Cloud|.
      t14 = xsdbool( t15 <> t18 ).
      t4 = t14.
    ENDIF.
    IF t4 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA t21 TYPE REF TO zcl_lnt_structure_node.
    DATA t22 TYPE REF TO zcl_lnt_abap_file.
    DATA(t23) = t1.
    t22 = t23.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA(t25) = t22.
    t24 = t25->structure.
    t21 = t24.
    t20 = t21.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    DATA(t28) = t20.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zcl_lnt_structure_node.
    DATA(t36) = t20.
    t35 = t36.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d561_0fa14d6404b6.
    t34 = t35->find_all_statements( i_type_9913 = t37 ).
    DATA t38 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t38.
    DATA t39 TYPE REF TO object.
    CLEAR t39.
    DATA(t40) = VALUE i( ).
    DO.
      t34->load( ).
      IF t40 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t39.
      READ TABLE t34->items INDEX t40 + 1 INTO t39.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t38.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t39.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t38 ?= t42.
      ELSE.
        t38 ?= t39.
      ENDIF.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      DATA(t48) = t38.
      DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t47 = t48->find_direct_expression( i_type_9913 = t49 ).
      t46 = t47.
      DATA t50 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t50.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t46.
      IF t52 IS INITIAL.
        t51 = abap_true.
      ENDIF.
      IF t51 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        t50 = t53.
      ELSE.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA(t56) = t46.
        t55 = t56.
        DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t54 = t55->find_direct_expression( i_type_9913 = t57 ).
        t50 = t54.
      ENDIF.
      t45 = t50.
      t44 = t45.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      t58 = t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t44.
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      t43 = t60.
      IF t43 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA t63 TYPE REF TO zcl_lnt_expression_node.
      DATA(t64) = t38.
      DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t63 = t64->find_direct_expression( i_type_9913 = t65 ).
      t62 = t63.
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      DATA(t68) = t62.
      t67 = t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t69 = t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = t67.
      IF t72 IS INITIAL.
        t71 = abap_true.
      ENDIF.
      t66 = t71.
      IF t66 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_expression_node.
      DATA t76 TYPE REF TO zcl_lnt_expression_node.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      DATA(t78) = t62.
      t77 = t78.
      DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
      t76 = t77->find_direct_expression( i_type_9913 = t79 ).
      t75 = t76.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t75.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t80 = t83.
      ELSE.
        DATA t84 TYPE string.
        DATA t85 TYPE REF TO zcl_lnt_expression_node.
        DATA(t86) = t75.
        t85 = t86.
        t84 = t85->concat_tokens( ).
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t84.
        t80 = t87.
      ENDIF.
      t74 = t80.
      t73 = t74.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = t73.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA(t91) = abap_true.
      IF t91 = abap_true.
        DATA(t92) = |#|.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t92.
        t90 = t93.
      ELSE.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        t90 = t94.
      ENDIF.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      IF t89 IS BOUND.
        t95 = t89->has.
      ENDIF.
      IF t90 IS BOUND.
        t96 = t90->has.
      ENDIF.
      IF t95 = t96.
        IF t95 = abap_false.
          t88 = abap_true.
        ELSEIF t89->value = t90->value.
          t88 = abap_true.
        ENDIF.
      ENDIF.
      IF t88 = abap_true.
        t88 = abap_false.
      ELSE.
        t88 = abap_true.
      ENDIF.
      IF t88 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      DATA t98 TYPE REF TO zcl_lnt_expression_node.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      DATA(t100) = t62.
      t99 = t100.
      DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
      t98 = t99->find_direct_expression( i_type_9913 = t101 ).
      t97 = t98.
      DATA(t102) = VALUE abap_bool( ).
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      DATA(t104) = t97.
      t103 = t104.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      t105 = t106.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = t103.
      IF t108 IS INITIAL.
        t107 = abap_true.
      ENDIF.
      t102 = t107.
      IF t102 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t109 TYPE abap_bool.
      DATA t110 TYPE i.
      DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t113 TYPE REF TO zcl_lnt_abstract_node.
      DATA t114 TYPE REF TO zcl_lnt_expression_node.
      DATA(t115) = t97.
      t114 = t115.
      t113 = t114.
      DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t117) = t113.
      t116 = t117->children.
      t112 = t116.
      t111 ?= t112.
      t111->load( ).
      t110 = lines( t111->items ).
      DATA(t118) = 1.
      t109 = xsdbool( t110 = t118 ).
      IF t109 = abap_true.
        DATA t119 TYPE string.
        DATA(t120) = |Superfluous VALUE expression|.
        t119 = t120.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        CLEAR t121.
        DATA t122 TYPE REF TO zcl_lnt_issue.
        CLEAR t122.
        DATA(t123) = t1.
        DATA(t124) = t38.
        DATA(t125) = t119.
        DATA(t126) = VALUE string( ).
        DATA t127 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t127.
        DATA t128 TYPE string.
        DATA(t129) = |superfluous_value|.
        t128 = t129.
        DATA t130 TYPE string.
        DATA(t131) = |Superfluous VALUE|.
        t130 = t131.
        DATA t132 TYPE string.
        DATA(t133) = |Find superfluous VALUE expressions|.
        t132 = t133.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA(t137) = |Left hand side is inline, VALUE is inferred, value body is s|.
          t137 = t137 && |imple, from v740sp02 and up|.
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
        DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t140.
        DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t145.
          t144 = t145.
          DATA(t146) = t144.
          DATA(t147) = |SingleFile|.
          t146->load( ).
          APPEND t147 TO t146->items.
          t146->save( ).
          DATA(t148) = t144.
          t143 = t148.
          t141 = t143.
        ELSE.
          DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t149.
          t141 = t149.
        ENDIF.
        t140 = t141.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        DATA(t152) = abap_true.
        IF t152 = abap_true.
          DATA(t153) = |DATA(message_entry) = VALUE #( message_table[ msgno = msgno |.
          t153 = t153 && |] ).|.
          DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t154->has = abap_true.
          t154->value = t153.
          t151 = t154.
        ELSE.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          t151 = t155.
        ENDIF.
        t150 = t151.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        DATA(t158) = abap_true.
        IF t158 = abap_true.
          DATA(t159) = |DATA(message_entry) = message_table[ msgno = msgno ].|.
          DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t160->has = abap_true.
          t160->value = t159.
          t157 = t160.
        ELSE.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t161.
          t157 = t161.
        ENDIF.
        t156 = t157.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t163.
        t162 = t163.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        t164 = t165.
        t127 = NEW zcl_lnt_irule_metadata( i_key = t128 i_title = t130 i_short_description = t132 i_bad_example = t150 i_good_example = t156 i_extended_information = t134 i_tags = t140 i_pragma = t162 i_pseudo_comment = t164 ).
        CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
        t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t166 ).
        ENDIF.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t167 ).
        ENDIF.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t168 ).
        ENDIF.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t169 ).
        ENDIF.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t170 ).
        ENDIF.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t171 ).
        ENDIF.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t172 ).
        ENDIF.
        CREATE OBJECT t127->zlnt_json_ownkeys_70e5fd461788.
        t127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t173) = |key|.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
        ENDIF.
        DATA(t175) = |title|.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
        ENDIF.
        DATA(t177) = |shortDescription|.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
        ENDIF.
        DATA(t179) = |extendedInformation|.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
        ENDIF.
        DATA(t181) = |tags|.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
        ENDIF.
        DATA(t183) = |badExample|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        ENDIF.
        DATA(t185) = |goodExample|.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
        ENDIF.
        t126 = t127->key.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t188) = me->conf.
        t187 = t188->zlnt_view_read_sr_15c06369f827( ).
        DATA t189 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t189.
        DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t190.
        t122 = zcl_lnt_issue=>at_statement( i_file = t123 i_statement = t124 i_message_26cb = t125 i_key = t126 i_severity = t187 i_fix = t189 i_alternative_fixes = t190 ).
        t121 = t122.
        DATA(t191) = t2.
        DATA(t192) = t121.
        t191->load( ).
        APPEND t192 TO t191->items.
        t191->save( ).
      ENDIF.
    ENDDO.
    DATA(t193) = t2.
    result = t193.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_superfluous_value_conf( me->gt_cn_in_sr_rl_sp_vl_ts_spr_vl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_superfluous_value_conf( me->gt_cn_in_sr_rl_sp_vl_ts_spr_vl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_superfluous_value_conf.
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
        t1 = NEW zcl_lnt_superfluous_value_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sp_vl_ts_spr_vl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_sp_vl_ts_spr_vl( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1722_d48601ff42b1.
  ENDMETHOD.
ENDCLASS.
