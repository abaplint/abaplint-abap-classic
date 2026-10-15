* TS: src/rules/many_parentheses.ts:14:1 ManyParentheses
CLASS zcl_lnt_many_parentheses DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_many_parentheses_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_mn_pr_ts_mn_prn RETURNING VALUE(result) TYPE REF TO zcl_lnt_many_parentheses_conf.
    METHODS st_cn_in_sr_rl_mn_pr_ts_mn_prn IMPORTING i_conf TYPE REF TO zcl_lnt_many_parentheses_conf.
    METHODS rn_pr_in_sr_rl_mn_pr_ts_mn_prn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_into IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_m TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_move IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_m TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_condition IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_comparator IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_many_parentheses IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_many_parentheses_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |many_parentheses|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Too many parentheses|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Searches for expressions where extra parentheses can safely |.
    t7 = t7 && |be removed|.
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
      DATA(t23) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
      t23 = t23 && |r = lar AND moo = loo ).\nENDIF.\n|.
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
      DATA(t29) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
      t29 = t29 && |r AND moo = loo.\nENDIF.\n|.
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

  METHOD gt_cn_in_sr_rl_mn_pr_ts_mn_prn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mn_pr_ts_mn_prn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_mn_pr_ts_mn_prn.
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
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t4.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA(t24) = t22.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t24->load( ).
    APPEND t25 TO t24->items.
    t24->save( ).
    DATA(t26) = t22.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t28) = t22.
    t21 = t28.
    t18 = t19->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t21 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t18->load( ).
      IF t31 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t18->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA(t34) = VALUE i( ).
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t36) = t1.
      DATA(t37) = t29.
      t35 = me->analyze_condition( i_file = t36 i_cond = t37 ).
      DATA t38 TYPE REF TO zcl_lnt_issue.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      DATA(t40) = VALUE i( ).
      DO.
        t35->load( ).
        IF t40 >= lines( t35->items ).
          EXIT.
        ENDIF.
        CLEAR t39.
        READ TABLE t35->items INDEX t40 + 1 INTO t39.
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
        DATA(t43) = t2.
        DATA(t44) = t38.
        t43->load( ).
        APPEND t44 TO t43->items.
        t43->save( ).
      ENDDO.
      DATA t45 TYPE i.
      DATA(t46) = t2.
      t46->load( ).
      t45 = lines( t46->items ).
      t34 = t45.
    ENDDO.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zcl_lnt_structure_node.
    DATA(t49) = t4.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t51 = t52.
    DATA(t53) = t51.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t55) = t51.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b.
    t55->load( ).
    APPEND t56 TO t55->items.
    t55->save( ).
    DATA(t57) = t51.
    t50 = t57.
    t47 = t48->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t50 ).
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t58.
    DATA t59 TYPE REF TO object.
    CLEAR t59.
    DATA(t60) = VALUE i( ).
    DO.
      t47->load( ).
      IF t60 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t59.
      READ TABLE t47->items INDEX t60 + 1 INTO t59.
      t60 = t60 + 1.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      CLEAR t58.
      IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t61 ?= t59.
        DATA t62 TYPE REF TO object.
        t62 = t61->as_ref( ).
        t58 ?= t62.
      ELSE.
        t58 ?= t59.
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t64.
      t63 = t64.
      DATA t65 TYPE abap_bool.
      DATA t66 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t67) = t58.
      t66 = t67->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_cond_sub ).
      IF t65 = abap_true.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t69) = t58.
        DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
        t68 = t69->find_direct_expressions( i_type_9913 = t70 ).
        t63 = t68.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t72) = t58.
        DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
        t71 = t72->find_direct_expressions( i_type_9913 = t73 ).
        t63 = t71.
      ENDIF.
      DATA t74 TYPE abap_bool.
      DATA t75 TYPE i.
      DATA(t76) = t63.
      t76->load( ).
      t75 = lines( t76->items ).
      DATA(t77) = 1.
      t74 = xsdbool( t75 <> t77 ).
      IF t74 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = VALUE i( ).
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t82.
      DATA t83 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t83.
      DATA(t84) = t63.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      t84->load( ).
      CLEAR t85.
      READ TABLE t84->items INDEX 1 INTO t85.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      CLEAR t83.
      IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t86 ?= t85.
        DATA t87 TYPE REF TO object.
        t87 = t86->as_ref( ).
        t83 ?= t87.
      ELSE.
        t83 ?= t85.
      ENDIF.
      t82 = t83.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t89) = t82.
      t88 = t89->children.
      t81 = t88.
      t80 ?= t81.
      t80->load( ).
      t79 = lines( t80->items ).
      DATA(t90) = 1.
      t78 = xsdbool( t79 = t90 ).
      IF t78 = abap_true.
        DATA t91 TYPE string.
        DATA(t92) = |Too many parentheses, simple|.
        t91 = t92.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t96 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t97) = t58.
        t96 = t97.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t99) = t96.
        t98 = t99->children.
        t95 = t98.
        t94 ?= t95.
        t93 = t94.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t102) = t58.
        t101 = t102->get_first_token( ).
        t100 = t101.
        DATA(t103) = VALUE string( ).
        DATA(t104) = VALUE string( ).
        DATA t105 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t108 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t109) = t58.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t111) = t108.
        t110 = t111->children.
        t107 = t110.
        t106 ?= t107.
        DATA t112 TYPE REF TO object.
        CLEAR t112.
        t106->load( ).
        CLEAR t112.
        READ TABLE t106->items INDEX 2 INTO t112.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        CLEAR t105.
        IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t113 ?= t112.
          DATA t114 TYPE REF TO object.
          t114 = t113->as_ref( ).
          t105 ?= t114.
        ELSE.
          t105 ?= t112.
        ENDIF.
        t104 = t105->concat_tokens( ).
        t103 = t104.
        DATA(t115) = VALUE abap_bool( ).
        DATA t116 TYPE string.
        DATA t117 TYPE string.
        DATA t118 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t119) = t100.
        t118 = t119.
        DATA t120 TYPE string.
        DATA(t121) = t118.
        t120 = t121->str.
        t117 = t120.
        DATA(t122) = strlen( t117 ).
        t116 = t117.
        IF t116 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t116 TO UPPER CASE.
        ELSE.
          t116 = zlnt_runtime_uppe_91169605024d=>full( t116 ).
        ENDIF.
        DATA(t123) = |NOT|.
        t115 = xsdbool( t116 = t123 ).
        IF t115 = abap_true.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t124.
          DATA t125 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t125.
          DATA(t126) = t93.
          DATA t127 TYPE REF TO object.
          CLEAR t127.
          t126->load( ).
          CLEAR t127.
          READ TABLE t126->items INDEX 2 INTO t127.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          CLEAR t125.
          IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t128 ?= t127.
            DATA t129 TYPE REF TO object.
            t129 = t128->as_ref( ).
            t125 ?= t129.
          ELSE.
            t125 ?= t127.
          ENDIF.
          t124 = t125->get_first_token( ).
          t100 = t124.
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t134 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t135) = t58.
          t134 = t135.
          DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t137) = t134.
          t136 = t137->children.
          t133 = t136.
          t132 ?= t133.
          DATA t138 TYPE REF TO object.
          CLEAR t138.
          t132->load( ).
          CLEAR t138.
          READ TABLE t132->items INDEX 3 INTO t138.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          CLEAR t131.
          IF t138 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t139 ?= t138.
            DATA t140 TYPE REF TO object.
            t140 = t139->as_ref( ).
            t131 ?= t140.
          ELSE.
            t131 ?= t138.
          ENDIF.
          t130 = t131->concat_tokens( ).
          t103 = t130.
        ENDIF.
        DATA t141 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t142 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t143) = t1.
        DATA t144 TYPE REF TO zcl_lnt_position.
        DATA t145 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t146) = t100.
        t145 = t146.
        DATA t147 TYPE REF TO zcl_lnt_position.
        DATA(t148) = t145.
        t147 = t148->start.
        t144 = t147.
        DATA t149 TYPE REF TO zcl_lnt_position.
        DATA t150 TYPE REF TO zcl_lnt_abstract_token.
        DATA t151 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t152) = t58.
        t151 = t152->get_last_token( ).
        t150 = t151.
        DATA t153 TYPE REF TO zcl_lnt_position.
        DATA t154 TYPE f.
        DATA t155 TYPE REF TO zcl_lnt_position.
        DATA t156 TYPE REF TO zcl_lnt_position.
        DATA(t157) = t150.
        t156 = t157->start.
        t155 = t156.
        DATA t158 TYPE f.
        DATA(t159) = t155.
        t158 = t159->row.
        t154 = t158.
        DATA t160 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t161 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t162 TYPE REF TO zcl_lnt_position.
        DATA t163 TYPE REF TO zcl_lnt_position.
        DATA(t164) = t150.
        t163 = t164->start.
        t162 = t163.
        DATA t165 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t166) = t162.
        t165 = t166->col.
        t161 = t165.
        DATA t167 TYPE f.
        DATA t168 TYPE i.
        DATA t169 TYPE string.
        DATA(t170) = t150.
        t169 = t170->str.
        DATA(t171) = strlen( t169 ).
        t168 = t171.
        t167 = t168.
        DATA(t172) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t172->has = abap_true.
        t172->value = t167.
        t160 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t161 right = t172 op = `+` ).
        t153 = NEW zcl_lnt_position( i_row = t154 i_col = t160 ).
        t149 = t153.
        DATA(t173) = t103.
        t142 = zcl_lnt_edit_helper=>replace_range( i_file = t143 i_start = t144 i_end = t149 i_text = t173 ).
        t141 = t142.
        DATA t174 TYPE REF TO zcl_lnt_issue.
        CLEAR t174.
        DATA t175 TYPE REF TO zcl_lnt_issue.
        CLEAR t175.
        DATA(t176) = t1.
        DATA(t177) = t100.
        DATA(t178) = t91.
        DATA(t179) = VALUE string( ).
        DATA t180 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t180.
        DATA t181 TYPE string.
        DATA(t182) = |many_parentheses|.
        t181 = t182.
        DATA t183 TYPE string.
        DATA(t184) = |Too many parentheses|.
        t183 = t184.
        DATA t185 TYPE string.
        DATA(t186) = |Searches for expressions where extra parentheses can safely |.
        t186 = t186 && |be removed|.
        t185 = t186.
        DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t187.
        DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t188.
        DATA(t189) = abap_true.
        IF t189 = abap_true.
          DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t192.
          t191 = t192.
          DATA(t193) = t191.
          DATA(t194) = |SingleFile|.
          t193->load( ).
          APPEND t194 TO t193->items.
          t193->save( ).
          DATA(t195) = t191.
          DATA(t196) = |Quickfix|.
          t195->load( ).
          APPEND t196 TO t195->items.
          t195->save( ).
          DATA(t197) = t191.
          t190 = t197.
          t188 = t190.
        ELSE.
          DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t198.
          t188 = t198.
        ENDIF.
        t187 = t188.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t200.
        DATA(t201) = abap_true.
        IF t201 = abap_true.
          DATA(t202) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
          t202 = t202 && |r = lar AND moo = loo ).\nENDIF.\n|.
          DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t203->has = abap_true.
          t203->value = t202.
          t200 = t203.
        ELSE.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          t200 = t204.
        ENDIF.
        t199 = t200.
        DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t205.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA(t207) = abap_true.
        IF t207 = abap_true.
          DATA(t208) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
          t208 = t208 && |r AND moo = loo.\nENDIF.\n|.
          DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t209->has = abap_true.
          t209->value = t208.
          t206 = t209.
        ELSE.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t210.
          t206 = t210.
        ENDIF.
        t205 = t206.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        t211 = t212.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t214.
        t213 = t214.
        DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t216.
        t215 = t216.
        t180 = NEW zcl_lnt_irule_metadata( i_key = t181 i_title = t183 i_short_description = t185 i_bad_example = t199 i_good_example = t205 i_extended_information = t211 i_tags = t187 i_pragma = t213 i_pseudo_comment = t215 ).
        CREATE OBJECT t180->zlnt_view_ownkeys_b0e8086400eb.
        t180->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t217 ).
        ENDIF.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t218 ).
        ENDIF.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t219 ).
        ENDIF.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t220 ).
        ENDIF.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t221 ).
        ENDIF.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t222 ).
        ENDIF.
        CREATE OBJECT t180->zlnt_json_ownkeys_70e5fd461788.
        t180->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t223) = |key|.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
        ENDIF.
        DATA(t225) = |title|.
        DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t226.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
        ENDIF.
        DATA(t227) = |shortDescription|.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
        ENDIF.
        DATA(t229) = |tags|.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
        ENDIF.
        DATA(t231) = |badExample|.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
        ENDIF.
        DATA(t233) = |goodExample|.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
        ENDIF.
        t179 = t180->key.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t236) = me->conf.
        t235 = t236->zlnt_view_read_sr_15c06369f827( ).
        DATA t237 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t237.
        DATA(t238) = abap_true.
        IF t238 = abap_true.
          DATA(t239) = t141.
          t237 = t239.
        ELSE.
          DATA t240 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t240.
          t237 = t240.
        ENDIF.
        t175 = zcl_lnt_issue=>at_token( i_file = t176 i_token = t177 i_message_26cb = t178 i_key = t179 i_severity = t235 i_fix = t237 ).
        t174 = t175.
        DATA(t241) = t2.
        DATA(t242) = t174.
        t241->load( ).
        APPEND t242 TO t241->items.
        t241->save( ).
      ENDIF.
    ENDDO.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t244 TYPE REF TO zcl_lnt_structure_node.
    DATA(t245) = t4.
    t244 = t245.
    DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d561_0fa14d6404b6.
    t243 = t244->find_all_statements( i_type_9913 = t246 ).
    DATA t247 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t247.
    DATA t248 TYPE REF TO object.
    CLEAR t248.
    DATA(t249) = VALUE i( ).
    DO.
      t243->load( ).
      IF t249 >= lines( t243->items ).
        EXIT.
      ENDIF.
      CLEAR t248.
      READ TABLE t243->items INDEX t249 + 1 INTO t248.
      t249 = t249 + 1.
      DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t250.
      CLEAR t247.
      IF t248 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t250 ?= t248.
        DATA t251 TYPE REF TO object.
        t251 = t250->as_ref( ).
        t247 ?= t251.
      ELSE.
        t247 ?= t248.
      ENDIF.
      DATA(t252) = VALUE i( ).
      DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t254) = t1.
      DATA(t255) = t247.
      t253 = me->analyze_move( i_file = t254 i_m = t255 ).
      DATA t256 TYPE REF TO zcl_lnt_issue.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      DATA(t258) = VALUE i( ).
      DO.
        t253->load( ).
        IF t258 >= lines( t253->items ).
          EXIT.
        ENDIF.
        CLEAR t257.
        READ TABLE t253->items INDEX t258 + 1 INTO t257.
        t258 = t258 + 1.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        CLEAR t256.
        IF t257 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t259 ?= t257.
          DATA t260 TYPE REF TO object.
          t260 = t259->as_ref( ).
          t256 ?= t260.
        ELSE.
          t256 ?= t257.
        ENDIF.
        DATA(t261) = t2.
        DATA(t262) = t256.
        t261->load( ).
        APPEND t262 TO t261->items.
        t261->save( ).
      ENDDO.
      DATA t263 TYPE i.
      DATA(t264) = t2.
      t264->load( ).
      t263 = lines( t264->items ).
      t252 = t263.
    ENDDO.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t266 TYPE REF TO zcl_lnt_structure_node.
    DATA(t267) = t4.
    t266 = t267.
    DATA(t268) = zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316.
    t265 = t266->find_all_statements( i_type_9913 = t268 ).
    DATA t269 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t269.
    DATA t270 TYPE REF TO object.
    CLEAR t270.
    DATA(t271) = VALUE i( ).
    DO.
      t265->load( ).
      IF t271 >= lines( t265->items ).
        EXIT.
      ENDIF.
      CLEAR t270.
      READ TABLE t265->items INDEX t271 + 1 INTO t270.
      t271 = t271 + 1.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      CLEAR t269.
      IF t270 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t272 ?= t270.
        DATA t273 TYPE REF TO object.
        t273 = t272->as_ref( ).
        t269 ?= t273.
      ELSE.
        t269 ?= t270.
      ENDIF.
      DATA(t274) = VALUE i( ).
      DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t276) = t1.
      DATA(t277) = t269.
      t275 = me->analyze_into( i_file = t276 i_m = t277 ).
      DATA t278 TYPE REF TO zcl_lnt_issue.
      CLEAR t278.
      DATA t279 TYPE REF TO object.
      CLEAR t279.
      DATA(t280) = VALUE i( ).
      DO.
        t275->load( ).
        IF t280 >= lines( t275->items ).
          EXIT.
        ENDIF.
        CLEAR t279.
        READ TABLE t275->items INDEX t280 + 1 INTO t279.
        t280 = t280 + 1.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        CLEAR t278.
        IF t279 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t281 ?= t279.
          DATA t282 TYPE REF TO object.
          t282 = t281->as_ref( ).
          t278 ?= t282.
        ELSE.
          t278 ?= t279.
        ENDIF.
        DATA(t283) = t2.
        DATA(t284) = t278.
        t283->load( ).
        APPEND t284 TO t283->items.
        t283->save( ).
      ENDDO.
      DATA t285 TYPE i.
      DATA(t286) = t2.
      t286->load( ).
      t285 = lines( t286->items ).
      t274 = t285.
    ENDDO.
    DATA(t287) = t2.
    result = t287.

  ENDMETHOD.

  METHOD analyze_into.
    DATA(t1) = i_file.
    DATA(t2) = i_m.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t2.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    IF t7 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t19) = t3.
    t18 = t19.
    t17 = t18->get_all_tokens( ).
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    t17->load( ).
    CLEAR t20.
    READ TABLE t17->items INDEX 2 INTO t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    CLEAR t16.
    IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t21 ?= t20.
      DATA t22 TYPE REF TO object.
      t22 = t21->as_ref( ).
      t16 ?= t22.
    ELSE.
      t16 ?= t20.
    ENDIF.
    t15 = t16.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t26) = t15.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t25.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    t24 = t29.
    t23 = t24.
    IF t24 = abap_false.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE string.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = t15.
      t33 = t34.
      DATA t35 TYPE string.
      DATA(t36) = t33.
      t35 = t36->str.
      t32 = t35.
      DATA(t37) = |(|.
      t31 = xsdbool( t32 <> t37 ).
      t23 = t31.
    ENDIF.
    IF t23 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      result = t38.
      RETURN.
    ENDIF.
    DATA t39 TYPE string.
    DATA t40 TYPE string.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    DATA(t42) = t3.
    t41 = t42.
    t40 = t41->concat_tokens( ).
    t39 = t40.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t39.
    DATA(t47) = |)|.
    DATA(t48) = strlen( t46 ).
    DATA t49 TYPE i.
    DATA(t50) = VALUE i( ).
    DATA(t51) = VALUE string( ).
    t49 = strlen( t47 ).
    IF t49 = 0.
      t45 = abap_true.
    ELSEIF t49 <= t48.
      t50 = 0.
      t50 = t48 - t49.
      t51 = t46+t50(t49).
      IF t51 = t47.
        t45 = abap_true.
      ENDIF.
    ENDIF.
    DATA(t52) = abap_true.
    t44 = xsdbool( t45 = t52 ).
    t43 = t44.
    IF t44 = abap_true.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE i( ).
      DATA(t56) = t39.
      DATA(t57) = |,|.
      DATA(t58) = strlen( t56 ).
      IF t57 IS INITIAL.
        t55 = 0.
      ELSE.
        FIND t57 IN t56 MATCH OFFSET t55.
        IF sy-subrc <> 0.
          t55 = -1.
        ENDIF.
      ENDIF.
      DATA(t59) = 0.
      t54 = xsdbool( t55 >= t59 ).
      DATA(t60) = abap_false.
      t53 = xsdbool( t54 = t60 ).
      t43 = t53.
    ENDIF.
    IF t43 = abap_true.
      DATA t61 TYPE REF TO zcl_lnt_issue.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_issue.
      CLEAR t62.
      DATA(t63) = t1.
      DATA(t64) = t2.
      DATA(t65) = |Too many parentheses|.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t67.
      DATA t68 TYPE string.
      DATA(t69) = |many_parentheses|.
      t68 = t69.
      DATA t70 TYPE string.
      DATA(t71) = |Too many parentheses|.
      t70 = t71.
      DATA t72 TYPE string.
      DATA(t73) = |Searches for expressions where extra parentheses can safely |.
      t73 = t73 && |be removed|.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t75.
      DATA(t76) = abap_true.
      IF t76 = abap_true.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t79.
        t78 = t79.
        DATA(t80) = t78.
        DATA(t81) = |SingleFile|.
        t80->load( ).
        APPEND t81 TO t80->items.
        t80->save( ).
        DATA(t82) = t78.
        DATA(t83) = |Quickfix|.
        t82->load( ).
        APPEND t83 TO t82->items.
        t82->save( ).
        DATA(t84) = t78.
        t77 = t84.
        t75 = t77.
      ELSE.
        DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t85.
        t75 = t85.
      ENDIF.
      t74 = t75.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      DATA(t88) = abap_true.
      IF t88 = abap_true.
        DATA(t89) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
        t89 = t89 && |r = lar AND moo = loo ).\nENDIF.\n|.
        DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t90->has = abap_true.
        t90->value = t89.
        t87 = t90.
      ELSE.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        t87 = t91.
      ENDIF.
      t86 = t87.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA(t94) = abap_true.
      IF t94 = abap_true.
        DATA(t95) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
        t95 = t95 && |r AND moo = loo.\nENDIF.\n|.
        DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t96->has = abap_true.
        t96->value = t95.
        t93 = t96.
      ELSE.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t93 = t97.
      ENDIF.
      t92 = t93.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      t98 = t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      t100 = t101.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      t102 = t103.
      t67 = NEW zcl_lnt_irule_metadata( i_key = t68 i_title = t70 i_short_description = t72 i_bad_example = t86 i_good_example = t92 i_extended_information = t98 i_tags = t74 i_pragma = t100 i_pseudo_comment = t102 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t104 ).
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t105 ).
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t106 ).
      ENDIF.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t108 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t109 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t110) = |key|.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
      ENDIF.
      DATA(t112) = |title|.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
      ENDIF.
      DATA(t114) = |shortDescription|.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
      ENDIF.
      DATA(t116) = |tags|.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
      ENDIF.
      DATA(t118) = |badExample|.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
      ENDIF.
      DATA(t120) = |goodExample|.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
      ENDIF.
      t66 = t67->key.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t123) = me->conf.
      t122 = t123->zlnt_view_read_sr_15c06369f827( ).
      DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t124.
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t125.
      t62 = zcl_lnt_issue=>at_statement( i_file = t63 i_statement = t64 i_message_26cb = t65 i_key = t66 i_severity = t122 i_fix = t124 i_alternative_fixes = t125 ).
      t61 = t62.
      DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t128.
      t127 = t128.
      DATA(t129) = t127.
      DATA(t130) = t61.
      t129->load( ).
      APPEND t130 TO t129->items.
      t129->save( ).
      DATA(t131) = t127.
      t126 = t131.
      result = t126.
      RETURN.
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    result = t132.

  ENDMETHOD.

  METHOD analyze_move.
    DATA(t1) = i_file.
    DATA(t2) = i_m.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t2.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t5 = t6->find_all_expressions_recursive( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t17) = t8.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = t16.
      t18 = t19->children.
      t15 = t18.
      t14 ?= t15.
      t13 = t14.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE i.
      DATA(t26) = t13.
      t26->load( ).
      t25 = lines( t26->items ).
      DATA(t27) = 3.
      t24 = xsdbool( t25 = t27 ).
      t23 = t24.
      IF t24 = abap_true.
        DATA(t28) = VALUE abap_bool( ).
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t31.
        DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t32.
        DATA(t33) = t13.
        DATA t34 TYPE REF TO object.
        CLEAR t34.
        t33->load( ).
        CLEAR t34.
        READ TABLE t33->items INDEX 1 INTO t34.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t34.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t34.
        ENDIF.
        t31 = t32->get_first_token( ).
        t30 = t31.
        DATA t37 TYPE string.
        DATA(t38) = t30.
        t37 = t38->str.
        t29 = t37.
        DATA(t39) = |(|.
        t28 = xsdbool( t29 = t39 ).
        t23 = t28.
      ENDIF.
      t22 = t23.
      IF t23 = abap_true.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE i( ).
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t42.
        DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t43.
        DATA(t44) = t13.
        DATA t45 TYPE REF TO object.
        CLEAR t45.
        t44->load( ).
        CLEAR t45.
        READ TABLE t44->items INDEX 2 INTO t45.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t45.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t45.
        ENDIF.
        t42 = t43->get_children( ).
        t42->load( ).
        t41 = lines( t42->items ).
        DATA(t48) = 1.
        t40 = xsdbool( t41 = t48 ).
        t22 = t40.
      ENDIF.
      t21 = t22.
      IF t22 = abap_true.
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = VALUE string( ).
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t53.
        DATA t54 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t54.
        DATA(t55) = t13.
        DATA t56 TYPE REF TO object.
        CLEAR t56.
        t55->load( ).
        CLEAR t56.
        READ TABLE t55->items INDEX 2 INTO t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        CLEAR t54.
        IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t57 ?= t56.
          DATA t58 TYPE REF TO object.
          t58 = t57->as_ref( ).
          t54 ?= t58.
        ELSE.
          t54 ?= t56.
        ENDIF.
        t53 = t54->get_first_token( ).
        t52 = t53.
        DATA t59 TYPE string.
        DATA(t60) = t52.
        t59 = t60->str.
        t51 = t59.
        DATA(t61) = |-|.
        DATA(t62) = strlen( t51 ).
        DATA t63 TYPE i.
        DATA(t64) = VALUE i( ).
        DATA(t65) = VALUE string( ).
        t63 = strlen( t61 ).
        IF t63 = 0.
          t50 = abap_true.
        ELSEIF t63 <= t62.
          t64 = 0.
          t65 = t51+t64(t63).
          IF t65 = t61.
            t50 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t66) = abap_false.
        t49 = xsdbool( t50 = t66 ).
        t21 = t49.
      ENDIF.
      t20 = t21.
      IF t21 = abap_true.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE string( ).
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t70.
        DATA t71 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t71.
        DATA(t72) = t13.
        DATA t73 TYPE REF TO object.
        CLEAR t73.
        t72->load( ).
        CLEAR t73.
        READ TABLE t72->items INDEX 3 INTO t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t71.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t73.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t71 ?= t75.
        ELSE.
          t71 ?= t73.
        ENDIF.
        t70 = t71->get_first_token( ).
        t69 = t70.
        DATA t76 TYPE string.
        DATA(t77) = t69.
        t76 = t77->str.
        t68 = t76.
        DATA(t78) = |)|.
        t67 = xsdbool( t68 = t78 ).
        t20 = t67.
      ENDIF.
      IF t20 = abap_true.
        DATA t79 TYPE REF TO zcl_lnt_issue.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_issue.
        CLEAR t80.
        DATA(t81) = t1.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t82.
        DATA t83 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t83.
        DATA(t84) = t13.
        DATA t85 TYPE REF TO object.
        CLEAR t85.
        t84->load( ).
        CLEAR t85.
        READ TABLE t84->items INDEX 1 INTO t85.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t83.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t86 ?= t85.
          DATA t87 TYPE REF TO object.
          t87 = t86->as_ref( ).
          t83 ?= t87.
        ELSE.
          t83 ?= t85.
        ENDIF.
        t82 = t83->get_first_token( ).
        DATA(t88) = |Too many parentheses|.
        DATA(t89) = VALUE string( ).
        DATA t90 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t90.
        DATA t91 TYPE string.
        DATA(t92) = |many_parentheses|.
        t91 = t92.
        DATA t93 TYPE string.
        DATA(t94) = |Too many parentheses|.
        t93 = t94.
        DATA t95 TYPE string.
        DATA(t96) = |Searches for expressions where extra parentheses can safely |.
        t96 = t96 && |be removed|.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t97.
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t102.
          t101 = t102.
          DATA(t103) = t101.
          DATA(t104) = |SingleFile|.
          t103->load( ).
          APPEND t104 TO t103->items.
          t103->save( ).
          DATA(t105) = t101.
          DATA(t106) = |Quickfix|.
          t105->load( ).
          APPEND t106 TO t105->items.
          t105->save( ).
          DATA(t107) = t101.
          t100 = t107.
          t98 = t100.
        ELSE.
          DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t108.
          t98 = t108.
        ENDIF.
        t97 = t98.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        DATA(t111) = abap_true.
        IF t111 = abap_true.
          DATA(t112) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
          t112 = t112 && |r = lar AND moo = loo ).\nENDIF.\n|.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t112.
          t110 = t113.
        ELSE.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t110 = t114.
        ENDIF.
        t109 = t110.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA(t117) = abap_true.
        IF t117 = abap_true.
          DATA(t118) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
          t118 = t118 && |r AND moo = loo.\nENDIF.\n|.
          DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t119->has = abap_true.
          t119->value = t118.
          t116 = t119.
        ELSE.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t120.
          t116 = t120.
        ENDIF.
        t115 = t116.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        t121 = t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        t123 = t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t125 = t126.
        t90 = NEW zcl_lnt_irule_metadata( i_key = t91 i_title = t93 i_short_description = t95 i_bad_example = t109 i_good_example = t115 i_extended_information = t121 i_tags = t97 i_pragma = t123 i_pseudo_comment = t125 ).
        CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
        t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t127 ).
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t128 ).
        ENDIF.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t129 ).
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t130 ).
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t132 ).
        ENDIF.
        CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
        t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t133) = |key|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |title|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA(t137) = |shortDescription|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        DATA(t139) = |tags|.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        ENDIF.
        DATA(t141) = |badExample|.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
        ENDIF.
        DATA(t143) = |goodExample|.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
        ENDIF.
        t89 = t90->key.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t146) = me->conf.
        t145 = t146->zlnt_view_read_sr_15c06369f827( ).
        DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t147.
        t80 = zcl_lnt_issue=>at_token( i_file = t81 i_token = t82 i_message_26cb = t88 i_key = t89 i_severity = t145 i_fix = t147 ).
        t79 = t80.
        DATA(t148) = t3.
        DATA(t149) = t79.
        t148->load( ).
        APPEND t149 TO t148->items.
        t148->save( ).
      ENDIF.
    ENDDO.
    DATA(t150) = t3.
    result = t150.

  ENDMETHOD.

  METHOD analyze_condition.
    DATA(t1) = i_file.
    DATA(t2) = i_cond.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE string.
    DATA(t6) = ||.
    t5 = t6.
    DATA t7 TYPE abap_bool.
    DATA(t8) = abap_false.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t12) = t2.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t11.
    t13 = t14->children.
    t10 = t13.
    t9 ?= t10.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t9->load( ).
      IF t17 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t9->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE string.
      DATA(t21) = ||.
      t20 = t21.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t15.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_token_node ).
      IF t22 = abap_true.
        DATA t24 TYPE string.
        DATA t25 TYPE string.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zcl_lnt_token_node.
        DATA(t29) = t15.
        DATA t30 TYPE REF TO object.
        t30 = t29.
        t28 ?= t30.
        t27 = t28->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t26 = t27.
        DATA t31 TYPE string.
        DATA(t32) = t26.
        t31 = t32->str.
        t25 = t31.
        DATA(t33) = strlen( t25 ).
        t24 = t25.
        IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t24 TO UPPER CASE.
        ELSE.
          t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
        ENDIF.
        t20 = t24.
      ELSE.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE abap_bool.
        DATA(t36) = t15.
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_expression_node ).
        t34 = t35.
        IF t35 = abap_true.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE abap_bool.
          DATA t39 TYPE REF TO zif_lnt_statement_runnable.
          DATA t40 TYPE REF TO zcl_lnt_expression_node.
          DATA(t41) = t15.
          DATA t42 TYPE REF TO object.
          t42 = t41.
          t40 ?= t42.
          t39 = t40->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_cond_sub ).
          t37 = t38.
          IF t38 = abap_false.
            DATA t43 TYPE abap_bool.
            DATA t44 TYPE REF TO zif_lnt_statement_runnable.
            DATA t45 TYPE REF TO zcl_lnt_expression_node.
            DATA(t46) = t15.
            DATA t47 TYPE REF TO object.
            t47 = t46.
            t45 ?= t47.
            t44 = t45->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_component_cond_sub ).
            t37 = t43.
          ENDIF.
          t34 = t37.
        ENDIF.
        IF t34 = abap_true.
          DATA(t48) = VALUE abap_bool( ).
          DATA t49 TYPE string.
          DATA t50 TYPE string.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          DATA t53 TYPE REF TO zcl_lnt_expression_node.
          DATA(t54) = t15.
          DATA t55 TYPE REF TO object.
          t55 = t54.
          t53 ?= t55.
          t52 = t53->get_first_token( ).
          t51 = t52.
          DATA t56 TYPE string.
          DATA(t57) = t51.
          t56 = t57->str.
          t50 = t56.
          DATA(t58) = strlen( t50 ).
          t49 = t50.
          IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t49 TO UPPER CASE.
          ELSE.
            t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
          ENDIF.
          DATA(t59) = |NOT|.
          t48 = xsdbool( t49 = t59 ).
          IF t48 = abap_true.
            DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t60.
            result = t60.
            RETURN.
          ENDIF.
          DATA t61 TYPE REF TO zcl_lnt_expression_node.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          DATA t63 TYPE REF TO zcl_lnt_expression_node.
          DATA(t64) = t15.
          DATA t65 TYPE REF TO object.
          t65 = t64.
          t63 ?= t65.
          DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
          t62 = t63->find_direct_expression( i_type_9913 = t66 ).
          t61 = t62.
          DATA(t67) = VALUE abap_bool( ).
          DATA t68 TYPE REF TO zcl_lnt_expression_node.
          DATA(t69) = t61.
          t68 = t69.
          DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t71.
          t70 = t71.
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = t68.
          IF t73 IS INITIAL.
            t72 = abap_true.
          ENDIF.
          t67 = t72.
          IF t67 = abap_true.
            DATA t74 TYPE REF TO zcl_lnt_expression_node.
            DATA t75 TYPE REF TO zcl_lnt_expression_node.
            DATA(t76) = t15.
            DATA t77 TYPE REF TO object.
            t77 = t76.
            t75 ?= t77.
            DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
            t74 = t75->find_direct_expression( i_type_9913 = t78 ).
            t61 = t74.
          ENDIF.
          DATA(t79) = VALUE abap_bool( ).
          DATA t80 TYPE REF TO zcl_lnt_expression_node.
          DATA(t81) = t61.
          t80 = t81.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          t82 = t83.
          DATA(t84) = VALUE abap_bool( ).
          DATA(t85) = t80.
          IF t85 IS INITIAL.
            t84 = abap_true.
          ENDIF.
          t79 = t84.
          IF t79 = abap_true.
            DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t86.
            result = t86.
            RETURN.
          ENDIF.
          DATA t87 TYPE string.
          DATA t88 TYPE REF TO zcl_lnt_expression_node.
          DATA(t89) = t61.
          t88 = t89.
          t87 = me->find_comparator( i_cond = t88 ).
          t20 = t87.
          DATA t90 TYPE abap_bool.
          DATA(t91) = t20.
          DATA(t92) = ||.
          t90 = xsdbool( t91 <> t92 ).
          IF t90 = abap_true.
            DATA(t93) = abap_true.
            t7 = t93.
          ENDIF.
        ELSE.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = VALUE abap_bool( ).
          DATA t96 TYPE abap_bool.
          DATA t97 TYPE abap_bool.
          DATA(t98) = t15.
          t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_expression_node ).
          t96 = t97.
          IF t97 = abap_true.
            DATA t99 TYPE abap_bool.
            DATA t100 TYPE REF TO zif_lnt_statement_runnable.
            DATA t101 TYPE REF TO zcl_lnt_expression_node.
            DATA(t102) = t15.
            DATA t103 TYPE REF TO object.
            t103 = t102.
            t101 ?= t103.
            t100 = t101->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t99 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_st_compare ).
            t96 = t99.
          ENDIF.
          t95 = t96.
          IF t96 = abap_true.
            DATA(t104) = VALUE abap_bool( ).
            DATA t105 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t105.
            DATA t106 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t106.
            DATA t107 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t107.
            DATA t108 TYPE REF TO zif_lnt_node.
            CLEAR t108.
            DATA t109 TYPE REF TO zcl_lnt_abstract_node.
            DATA t110 TYPE REF TO zcl_lnt_expression_node.
            DATA(t111) = t15.
            DATA t112 TYPE REF TO object.
            t112 = t111.
            t110 ?= t112.
            t109 = t110.
            DATA t113 TYPE REF TO zif_lnt_node.
            CLEAR t113.
            DATA(t114) = abap_true.
            IF t114 = abap_true.
              DATA t115 TYPE REF TO zif_lnt_node.
              CLEAR t115.
              DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t117) = t109.
              t116 = t117->children.
              DATA t118 TYPE REF TO object.
              CLEAR t118.
              t116->load( ).
              CLEAR t118.
              READ TABLE t116->items INDEX 1 INTO t118.
              DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t119.
              CLEAR t115.
              IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t119 ?= t118.
                DATA t120 TYPE REF TO object.
                t120 = t119->as_ref( ).
                t115 ?= t120.
              ELSE.
                t115 ?= t118.
              ENDIF.
              t113 = t115.
            ELSE.
              DATA t121 TYPE REF TO zif_lnt_node.
              CLEAR t121.
              t113 = t121.
            ENDIF.
            t108 = t113.
            t107 ?= t108.
            t106 = t107.
            DATA t122 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t122.
            DATA(t123) = VALUE abap_bool( ).
            DATA(t124) = t106.
            IF t124 IS INITIAL.
              t123 = abap_true.
            ENDIF.
            IF t123 = abap_true.
              DATA t125 TYPE REF TO zif_lnt_union_daf022d4.
              CLEAR t125.
              t122 = t125.
            ELSE.
              DATA t126 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t127 TYPE REF TO object.
              DATA t128 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t129) = t106.
              t128 = t129.
              t127 = t128->get_db65( ).
              DATA t130 TYPE REF TO object.
              t130 = t127.
              t126 ?= t130.
              t122 = t126.
            ENDIF.
            t105 = t122.
            t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_st_source ).
            t95 = t104.
          ENDIF.
          t94 = t95.
          IF t95 = abap_true.
            DATA t131 TYPE abap_bool.
            DATA t132 TYPE i.
            DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t135 TYPE REF TO zcl_lnt_abstract_node.
            DATA t136 TYPE REF TO zcl_lnt_expression_node.
            DATA(t137) = t15.
            DATA t138 TYPE REF TO object.
            t138 = t137.
            t136 ?= t138.
            t135 = t136.
            DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t140) = t135.
            t139 = t140->children.
            t134 = t139.
            t133 ?= t134.
            t133->load( ).
            t132 = lines( t133->items ).
            DATA(t141) = 3.
            t131 = xsdbool( t132 = t141 ).
            t94 = t131.
          ENDIF.
          IF t94 = abap_true.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t142.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t144.
            DATA t145 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t145.
            DATA t146 TYPE REF TO zif_lnt_node.
            CLEAR t146.
            DATA t147 TYPE REF TO zcl_lnt_abstract_node.
            DATA t148 TYPE REF TO zcl_lnt_expression_node.
            DATA(t149) = t15.
            DATA t150 TYPE REF TO object.
            t150 = t149.
            t148 ?= t150.
            t147 = t148.
            DATA t151 TYPE REF TO zif_lnt_node.
            CLEAR t151.
            DATA(t152) = abap_true.
            IF t152 = abap_true.
              DATA t153 TYPE REF TO zif_lnt_node.
              CLEAR t153.
              DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t155) = t147.
              t154 = t155->children.
              DATA t156 TYPE REF TO object.
              CLEAR t156.
              t154->load( ).
              CLEAR t156.
              READ TABLE t154->items INDEX 1 INTO t156.
              DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t157.
              CLEAR t153.
              IF t156 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t157 ?= t156.
                DATA t158 TYPE REF TO object.
                t158 = t157->as_ref( ).
                t153 ?= t158.
              ELSE.
                t153 ?= t156.
              ENDIF.
              t151 = t153.
            ELSE.
              DATA t159 TYPE REF TO zif_lnt_node.
              CLEAR t159.
              t151 = t159.
            ENDIF.
            t146 = t151.
            t145 ?= t146.
            t144 = t145.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            DATA(t161) = VALUE abap_bool( ).
            DATA(t162) = t144.
            IF t162 IS INITIAL.
              t161 = abap_true.
            ENDIF.
            IF t161 = abap_true.
              DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t163.
              t160 = t163.
            ELSE.
              DATA t164 TYPE string.
              DATA t165 TYPE REF TO zif_lnt_union_4cf1d054.
              DATA(t166) = t144.
              t165 = t166.
              t164 = t165->concat_tokens( ).
              DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t167->has = abap_true.
              t167->value = t164.
              t160 = t167.
            ENDIF.
            t143 = t160.
            t142 = t143.
            DATA(t168) = VALUE abap_bool( ).
            DATA(t169) = VALUE abap_bool( ).
            DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t170.
            DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t172) = t142.
            t171 = t172.
            DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t173.
            DATA(t174) = VALUE abap_bool( ).
            DATA(t175) = t171.
            IF t175 IS INITIAL.
              t174 = abap_true.
            ELSEIF t175->has = abap_false.
              t174 = abap_true.
            ENDIF.
            IF t174 = abap_true.
              DATA t176 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t176.
              t173 = t176.
            ELSE.
              DATA(t177) = VALUE abap_bool( ).
              DATA t178 TYPE string.
              DATA(t179) = t171.
              t178 = t179->value.
              DATA(t180) = |(|.
              DATA(t181) = strlen( t178 ).
              DATA t182 TYPE i.
              DATA(t183) = VALUE i( ).
              DATA(t184) = VALUE string( ).
              t182 = strlen( t180 ).
              IF t182 = 0.
                t177 = abap_true.
              ELSEIF t182 <= t181.
                t183 = 0.
                t184 = t178+t183(t182).
                IF t184 = t180.
                  t177 = abap_true.
                ENDIF.
              ENDIF.
              DATA(t185) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t185->has = abap_true.
              t185->value = t177.
              t173 = t185.
            ENDIF.
            t170 = t173.
            IF t170 IS BOUND.
              IF t170->has = abap_true.
                t169 = xsdbool( t170->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
            t168 = t169.
            IF t169 = abap_true.
              DATA(t186) = VALUE abap_bool( ).
              DATA t187 TYPE string.
              DATA(t188) = t142.
              t187 = t188->value.
              DATA(t189) = |)|.
              DATA(t190) = strlen( t187 ).
              DATA t191 TYPE i.
              DATA(t192) = VALUE i( ).
              DATA(t193) = VALUE string( ).
              t191 = strlen( t189 ).
              IF t191 = 0.
                t186 = abap_true.
              ELSEIF t191 <= t190.
                t192 = 0.
                t192 = t190 - t191.
                t193 = t187+t192(t191).
                IF t193 = t189.
                  t186 = abap_true.
                ENDIF.
              ENDIF.
              t168 = t186.
            ENDIF.
            IF t168 = abap_true.
              DATA t194 TYPE string.
              DATA(t195) = |Parentheses can be removed|.
              t194 = t195.
              DATA t196 TYPE REF TO zcl_lnt_issue.
              CLEAR t196.
              DATA t197 TYPE REF TO zcl_lnt_issue.
              CLEAR t197.
              DATA(t198) = t1.
              DATA t199 TYPE REF TO zcl_lnt_abstract_token.
              DATA t200 TYPE REF TO zcl_lnt_expression_node.
              DATA(t201) = t15.
              DATA t202 TYPE REF TO object.
              t202 = t201.
              t200 ?= t202.
              t199 = t200->get_first_token( ).
              DATA(t203) = t194.
              DATA(t204) = VALUE string( ).
              DATA t205 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t205.
              DATA t206 TYPE string.
              DATA(t207) = |many_parentheses|.
              t206 = t207.
              DATA t208 TYPE string.
              DATA(t209) = |Too many parentheses|.
              t208 = t209.
              DATA t210 TYPE string.
              DATA(t211) = |Searches for expressions where extra parentheses can safely |.
              t211 = t211 && |be removed|.
              t210 = t211.
              DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t212.
              DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t213.
              DATA(t214) = abap_true.
              IF t214 = abap_true.
                DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t217.
                t216 = t217.
                DATA(t218) = t216.
                DATA(t219) = |SingleFile|.
                t218->load( ).
                APPEND t219 TO t218->items.
                t218->save( ).
                DATA(t220) = t216.
                DATA(t221) = |Quickfix|.
                t220->load( ).
                APPEND t221 TO t220->items.
                t220->save( ).
                DATA(t222) = t216.
                t215 = t222.
                t213 = t215.
              ELSE.
                DATA t223 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t223.
                t213 = t223.
              ENDIF.
              t212 = t213.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t224.
              DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t225.
              DATA(t226) = abap_true.
              IF t226 = abap_true.
                DATA(t227) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
                t227 = t227 && |r = lar AND moo = loo ).\nENDIF.\n|.
                DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t228->has = abap_true.
                t228->value = t227.
                t225 = t228.
              ELSE.
                DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t229.
                t225 = t229.
              ENDIF.
              t224 = t225.
              DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t230.
              DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t231.
              DATA(t232) = abap_true.
              IF t232 = abap_true.
                DATA(t233) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
                t233 = t233 && |r AND moo = loo.\nENDIF.\n|.
                DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t234->has = abap_true.
                t234->value = t233.
                t231 = t234.
              ELSE.
                DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t235.
                t231 = t235.
              ENDIF.
              t230 = t231.
              DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t237.
              t236 = t237.
              DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t239.
              t238 = t239.
              DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t241.
              t240 = t241.
              t205 = NEW zcl_lnt_irule_metadata( i_key = t206 i_title = t208 i_short_description = t210 i_bad_example = t224 i_good_example = t230 i_extended_information = t236 i_tags = t212 i_pragma = t238 i_pseudo_comment = t240 ).
              CREATE OBJECT t205->zlnt_view_ownkeys_b0e8086400eb.
              t205->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t242.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t242 ).
              ENDIF.
              DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t243.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t243 ).
              ENDIF.
              DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t244.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t244 ).
              ENDIF.
              DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t245.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t245 ).
              ENDIF.
              DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t246.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t246 ).
              ENDIF.
              DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t247.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t247 ).
              ENDIF.
              CREATE OBJECT t205->zlnt_json_ownkeys_70e5fd461788.
              t205->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t248) = |key|.
              DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t249.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
              ENDIF.
              DATA(t250) = |title|.
              DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t251.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t250 p1 = t251 ).
              ENDIF.
              DATA(t252) = |shortDescription|.
              DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t253.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
              ENDIF.
              DATA(t254) = |tags|.
              DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t255.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
              ENDIF.
              DATA(t256) = |badExample|.
              DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t257.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
              ENDIF.
              DATA(t258) = |goodExample|.
              DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t259.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
              ENDIF.
              t204 = t205->key.
              DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t261) = me->conf.
              t260 = t261->zlnt_view_read_sr_15c06369f827( ).
              DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t262.
              t197 = zcl_lnt_issue=>at_token( i_file = t198 i_token = t199 i_message_26cb = t203 i_key = t204 i_severity = t260 i_fix = t262 ).
              t196 = t197.
              DATA(t263) = t3.
              DATA(t264) = t196.
              t263->load( ).
              APPEND t264 TO t263->items.
              t263->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t265 TYPE abap_bool.
      DATA(t266) = t5.
      DATA(t267) = ||.
      t265 = xsdbool( t266 = t267 ).
      IF t265 = abap_true.
        DATA(t268) = t20.
        t5 = t268.
      ELSE.
        DATA(t269) = VALUE abap_bool( ).
        DATA t270 TYPE abap_bool.
        DATA t271 TYPE abap_bool.
        DATA(t272) = t5.
        DATA(t273) = ||.
        t271 = xsdbool( t272 <> t273 ).
        t270 = t271.
        IF t271 = abap_true.
          DATA t274 TYPE abap_bool.
          DATA(t275) = t20.
          DATA(t276) = ||.
          t274 = xsdbool( t275 <> t276 ).
          t270 = t274.
        ENDIF.
        t269 = t270.
        IF t270 = abap_true.
          DATA t277 TYPE abap_bool.
          DATA(t278) = t5.
          DATA(t279) = t20.
          t277 = xsdbool( t278 <> t279 ).
          t269 = t277.
        ENDIF.
        IF t269 = abap_true.
          DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t280.
          result = t280.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t281) = VALUE abap_bool( ).
    DATA t282 TYPE abap_bool.
    DATA t283 TYPE abap_bool.
    DATA(t284) = t5.
    DATA(t285) = ||.
    t283 = xsdbool( t284 <> t285 ).
    t282 = t283.
    IF t283 = abap_true.
      DATA t286 TYPE abap_bool.
      DATA(t287) = t5.
      DATA(t288) = |MIXED|.
      t286 = xsdbool( t287 <> t288 ).
      t282 = t286.
    ENDIF.
    t281 = t282.
    IF t282 = abap_true.
      DATA t289 TYPE abap_bool.
      DATA(t290) = t7.
      DATA(t291) = abap_true.
      t289 = xsdbool( t290 = t291 ).
      t281 = t289.
    ENDIF.
    IF t281 = abap_true.
      DATA t292 TYPE string.
      DATA(t293) = |Too many parentheses, complex|.
      t292 = t293.
      DATA t294 TYPE REF TO zcl_lnt_issue.
      CLEAR t294.
      DATA t295 TYPE REF TO zcl_lnt_issue.
      CLEAR t295.
      DATA(t296) = t1.
      DATA t297 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t298) = t2.
      t297 = t298->get_first_token( ).
      DATA(t299) = t292.
      DATA(t300) = VALUE string( ).
      DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t301.
      DATA t302 TYPE string.
      DATA(t303) = |many_parentheses|.
      t302 = t303.
      DATA t304 TYPE string.
      DATA(t305) = |Too many parentheses|.
      t304 = t305.
      DATA t306 TYPE string.
      DATA(t307) = |Searches for expressions where extra parentheses can safely |.
      t307 = t307 && |be removed|.
      t306 = t307.
      DATA t308 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t308.
      DATA t309 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t309.
      DATA(t310) = abap_true.
      IF t310 = abap_true.
        DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t312 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t313 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t313.
        t312 = t313.
        DATA(t314) = t312.
        DATA(t315) = |SingleFile|.
        t314->load( ).
        APPEND t315 TO t314->items.
        t314->save( ).
        DATA(t316) = t312.
        DATA(t317) = |Quickfix|.
        t316->load( ).
        APPEND t317 TO t316->items.
        t316->save( ).
        DATA(t318) = t312.
        t311 = t318.
        t309 = t311.
      ELSE.
        DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t319.
        t309 = t319.
      ENDIF.
      t308 = t309.
      DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t320.
      DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t321.
      DATA(t322) = abap_true.
      IF t322 = abap_true.
        DATA(t323) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
        t323 = t323 && |r = lar AND moo = loo ).\nENDIF.\n|.
        DATA(t324) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t324->has = abap_true.
        t324->value = t323.
        t321 = t324.
      ELSE.
        DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t325.
        t321 = t325.
      ENDIF.
      t320 = t321.
      DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t326.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t327.
      DATA(t328) = abap_true.
      IF t328 = abap_true.
        DATA(t329) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
        t329 = t329 && |r AND moo = loo.\nENDIF.\n|.
        DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t330->has = abap_true.
        t330->value = t329.
        t327 = t330.
      ELSE.
        DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t331.
        t327 = t331.
      ENDIF.
      t326 = t327.
      DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t333.
      t332 = t333.
      DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t335.
      t334 = t335.
      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t337.
      t336 = t337.
      t301 = NEW zcl_lnt_irule_metadata( i_key = t302 i_title = t304 i_short_description = t306 i_bad_example = t320 i_good_example = t326 i_extended_information = t332 i_tags = t308 i_pragma = t334 i_pseudo_comment = t336 ).
      CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
      t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t338.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t338 ).
      ENDIF.
      DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t339.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t339 ).
      ENDIF.
      DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t340.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t340 ).
      ENDIF.
      DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t341.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t341 ).
      ENDIF.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t342.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t342 ).
      ENDIF.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t343.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t343 ).
      ENDIF.
      CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
      t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t344) = |key|.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t345.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
      ENDIF.
      DATA(t346) = |title|.
      DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t347.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t346 p1 = t347 ).
      ENDIF.
      DATA(t348) = |shortDescription|.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t349.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
      ENDIF.
      DATA(t350) = |tags|.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
      ENDIF.
      DATA(t352) = |badExample|.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
      ENDIF.
      DATA(t354) = |goodExample|.
      DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t355.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
      ENDIF.
      t300 = t301->key.
      DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t357) = me->conf.
      t356 = t357->zlnt_view_read_sr_15c06369f827( ).
      DATA t358 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t358.
      t295 = zcl_lnt_issue=>at_token( i_file = t296 i_token = t297 i_message_26cb = t299 i_key = t300 i_severity = t356 i_fix = t358 ).
      t294 = t295.
      DATA(t359) = t3.
      DATA(t360) = t294.
      t359->load( ).
      APPEND t360 TO t359->items.
      t359->save( ).
    ENDIF.
    DATA(t361) = t3.
    result = t361.

  ENDMETHOD.

  METHOD find_comparator.
    DATA(t1) = i_cond.
    DATA t2 TYPE string.
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t7.
    t9 = t10->children.
    t6 = t9.
    t5 ?= t6.
    t4 = t5.
    DATA(t11) = t4.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t12.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_token_node ).
      IF t17 = abap_true.
        DATA(t19) = VALUE string( ).
        DATA t20 TYPE string.
        DATA t21 TYPE string.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        DATA t24 TYPE REF TO zcl_lnt_token_node.
        DATA(t25) = t12.
        DATA t26 TYPE REF TO object.
        t26 = t25.
        t24 ?= t26.
        t23 = t24->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t22 = t23.
        DATA t27 TYPE string.
        DATA(t28) = t22.
        t27 = t28->str.
        t21 = t27.
        DATA(t29) = strlen( t21 ).
        t20 = t21.
        IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t20 TO UPPER CASE.
        ELSE.
          t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
        ENDIF.
        t19 = t20.
        DATA t30 TYPE abap_bool.
        DATA(t31) = t2.
        DATA(t32) = ||.
        t30 = xsdbool( t31 = t32 ).
        IF t30 = abap_true.
          DATA(t33) = t19.
          t2 = t33.
        ELSE.
          DATA t34 TYPE abap_bool.
          DATA(t35) = t19.
          DATA(t36) = t2.
          t34 = xsdbool( t35 <> t36 ).
          IF t34 = abap_true.
            DATA(t37) = |MIXED|.
            result = t37.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t38) = t2.
    result = t38.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_many_parentheses_conf( me->gt_cn_in_sr_rl_mn_pr_ts_mn_prn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_many_parentheses_conf( me->gt_cn_in_sr_rl_mn_pr_ts_mn_prn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_many_parentheses_conf.
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
        t1 = NEW zcl_lnt_many_parentheses_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mn_pr_ts_mn_prn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_mn_pr_ts_mn_prn( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1577_46edd72fe47d.
  ENDMETHOD.
ENDCLASS.
