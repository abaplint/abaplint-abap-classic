* TS: src/rules/when_others_last.ts:12:1 WhenOthersLast
CLASS zcl_lnt_when_others_last DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_when_others_last_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS r_p_i_s_r_wh_ot_ls_ts_wh_ot_ls IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls RETURNING VALUE(result) TYPE REF TO zcl_lnt_when_others_last_conf.
    METHODS s_c_i_s_r_wh_ot_ls_ts_wh_ot_ls IMPORTING i_conf TYPE REF TO zcl_lnt_when_others_last_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_when_others_last IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_when_others_last_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |when_others_last|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |WHEN OTHERS last|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that WHEN OTHERS is placed the last within a CASE sta|.
    t7 = t7 && |tement.|.
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
      DATA(t21) = |CASE bar.\n  WHEN OTHERS.\n  WHEN 2.\nENDCASE.|.
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
      DATA(t27) = |CASE bar.\n  WHEN 2.\n  WHEN OTHERS.\nENDCASE.|.
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
    DATA(t1) = |WHEN OTHERS should be the last branch in a CASE statement.|.
    result = t1.

  ENDMETHOD.

  METHOD r_p_i_s_r_wh_ot_ls_ts_wh_ot_ls.
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
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = t4.
    t20 = t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t19 = t20->find_all_structures( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t23) = t18.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t23->load( ).
      IF t26 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t23->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t24.
      DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
      t30 = t31->find_direct_structures( i_type_9913 = t32 ).
      t29 = t30.
      DATA t33 TYPE i.
      DATA(t34) = 0.
      t33 = t34.
      DO.
        DATA t35 TYPE abap_bool.
        DATA(t36) = t33.
        DATA t37 TYPE i.
        DATA t38 TYPE i.
        DATA(t39) = t29.
        t39->load( ).
        t38 = lines( t39->items ).
        DATA(t40) = 1.
        t37 = t38 - t40.
        t35 = xsdbool( t36 < t37 ).
        IF t35 = abap_false.
          EXIT.
        ENDIF.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t44.
        DATA(t45) = t29.
        DATA(t46) = t33.
        t46 = t46 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t45->load( ).
        CLEAR t47.
        READ TABLE t45->items INDEX t46 INTO t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t44.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t47.
          DATA t49 TYPE REF TO object.
          t49 = t48->as_ref( ).
          t44 ?= t49.
        ELSE.
          t44 ?= t47.
        ENDIF.
        DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d679_3af40033658c.
        t43 = t44->find_direct_statements( i_type_9913 = t50 ).
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t52.
        DATA(t53) = t29.
        DATA(t54) = t33.
        t54 = t54 + 1.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t53->load( ).
        CLEAR t55.
        READ TABLE t53->items INDEX t54 INTO t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t52.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t52 ?= t57.
        ELSE.
          t52 ?= t55.
        ENDIF.
        DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d680_7b1b0c92e5ad.
        t51 = t52->find_direct_statements( i_type_9913 = t58 ).
        t42 = t43->concat( p0 = t51 ).
        t41 = t42.
        DATA(t59) = t41.
        DATA t60 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t60.
        DATA t61 TYPE REF TO object.
        CLEAR t61.
        DATA(t62) = VALUE i( ).
        DO.
          t59->load( ).
          IF t62 >= lines( t59->items ).
            EXIT.
          ENDIF.
          CLEAR t61.
          READ TABLE t59->items INDEX t62 + 1 INTO t61.
          t62 = t62 + 1.
          DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t63.
          CLEAR t60.
          IF t61 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t63 ?= t61.
            DATA t64 TYPE REF TO object.
            t64 = t63->as_ref( ).
            t60 ?= t64.
          ELSE.
            t60 ?= t61.
          ENDIF.
          DATA t65 TYPE abap_bool.
          DATA t66 TYPE REF TO zif_lnt_statement.
          DATA(t67) = t60.
          t66 = t67->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_when_others ).
          IF t65 = abap_true.
            DATA t68 TYPE REF TO zcl_lnt_position.
            DATA t69 TYPE REF TO zcl_lnt_position.
            DATA t70 TYPE REF TO zcl_lnt_abstract_token.
            DATA t71 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t72) = t60.
            t71 = t72->get_first_token( ).
            t70 = t71.
            DATA t73 TYPE REF TO zcl_lnt_position.
            DATA(t74) = t70.
            t73 = t74->start.
            t69 = t73.
            t68 = t69.
            DATA t75 TYPE REF TO zcl_lnt_issue.
            CLEAR t75.
            DATA t76 TYPE REF TO zcl_lnt_issue.
            CLEAR t76.
            DATA(t77) = t1.
            DATA(t78) = t68.
            DATA(t79) = |WHEN OTHERS should be the last branch in a CASE statement.|.
            DATA(t80) = VALUE string( ).
            DATA t81 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t81.
            DATA t82 TYPE string.
            DATA(t83) = |when_others_last|.
            t82 = t83.
            DATA t84 TYPE string.
            DATA(t85) = |WHEN OTHERS last|.
            t84 = t85.
            DATA t86 TYPE string.
            DATA(t87) = |Checks that WHEN OTHERS is placed the last within a CASE sta|.
            t87 = t87 && |tement.|.
            t86 = t87.
            DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t88.
            DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t89.
            DATA(t90) = abap_true.
            IF t90 = abap_true.
              DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t93.
              t92 = t93.
              DATA(t94) = t92.
              DATA(t95) = |SingleFile|.
              t94->load( ).
              APPEND t95 TO t94->items.
              t94->save( ).
              DATA(t96) = t92.
              t91 = t96.
              t89 = t91.
            ELSE.
              DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t97.
              t89 = t97.
            ENDIF.
            t88 = t89.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            DATA(t100) = abap_true.
            IF t100 = abap_true.
              DATA(t101) = |CASE bar.\n  WHEN OTHERS.\n  WHEN 2.\nENDCASE.|.
              DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t102->has = abap_true.
              t102->value = t101.
              t99 = t102.
            ELSE.
              DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t103.
              t99 = t103.
            ENDIF.
            t98 = t99.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            DATA(t106) = abap_true.
            IF t106 = abap_true.
              DATA(t107) = |CASE bar.\n  WHEN 2.\n  WHEN OTHERS.\nENDCASE.|.
              DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t108->has = abap_true.
              t108->value = t107.
              t105 = t108.
            ELSE.
              DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t109.
              t105 = t109.
            ENDIF.
            t104 = t105.
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
            t81 = NEW zcl_lnt_irule_metadata( i_key = t82 i_title = t84 i_short_description = t86 i_bad_example = t98 i_good_example = t104 i_extended_information = t110 i_tags = t88 i_pragma = t112 i_pseudo_comment = t114 ).
            CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
            t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
            ENDIF.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
            ENDIF.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
            ENDIF.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t119 ).
            ENDIF.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t120 ).
            ENDIF.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t121 ).
            ENDIF.
            CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
            t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t122) = |key|.
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t123.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
            ENDIF.
            DATA(t124) = |title|.
            DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t125.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
            ENDIF.
            DATA(t126) = |shortDescription|.
            DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t127.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
            ENDIF.
            DATA(t128) = |tags|.
            DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t129.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
            ENDIF.
            DATA(t130) = |badExample|.
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
            ENDIF.
            DATA(t132) = |goodExample|.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
            ENDIF.
            t80 = t81->key.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t135) = me->conf.
            t134 = t135->zlnt_view_read_sr_15c06369f827( ).
            DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t136.
            t76 = zcl_lnt_issue=>at_position( i_file = t77 i_start = t78 i_message_26cb = t79 i_key = t80 i_severity = t134 i_fix = t136 ).
            t75 = t76.
            DATA(t137) = t2.
            DATA(t138) = t75.
            t137->load( ).
            APPEND t138 TO t137->items.
            t137->save( ).
          ENDIF.
        ENDDO.
        DATA t139 TYPE i.
        DATA(t140) = t33.
        DATA(t141) = 1.
        t139 = t140 + t141.
        t33 = t139.
      ENDDO.
    ENDDO.
    DATA(t142) = t2.
    result = t142.

  ENDMETHOD.

  METHOD g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_wh_ot_ls_ts_wh_ot_ls.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_wh_ot_ls_ts_wh_ot_ls( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_when_others_last_conf( me->g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_when_others_last_conf( me->g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_when_others_last_conf.
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
        t1 = NEW zcl_lnt_when_others_last_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_wh_ot_ls_ts_wh_ot_ls( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1773_77e382a8afbc.
  ENDMETHOD.
ENDCLASS.
