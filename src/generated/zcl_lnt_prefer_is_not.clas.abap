* TS: src/rules/prefer_is_not.ts:14:1 PreferIsNot
CLASS zcl_lnt_prefer_is_not DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prefer_is_not_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_pr_is_nt_ts_pr_is_nt RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_is_not_conf.
    METHODS s_c_i_s_r_pr_is_nt_ts_pr_is_nt IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_is_not_conf.
    METHODS r_p_i_s_r_pr_is_nt_ts_pr_is_nt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_c TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_is_not IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prefer_is_not_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |prefer_is_not|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Prefer IS NOT to NOT IS|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Prefer IS NOT to NOT IS|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
      t11 = t11 && |anABAP.md#prefer-is-not-to-not-is\n\n"if not is_valid( )." exa|.
      t11 = t11 && |mples are skipped|.
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
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |SingleFile|.
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
      DATA(t31) = |IF variable IS NOT INITIAL.\nIF variable NP 'TODO*'.\nIF varia|.
      t31 = t31 && |ble <> 42.\nIF variable CO 'hello'.|.
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
      DATA(t37) = |IF NOT variable IS INITIAL.\nIF NOT variable CP 'TODO*'.\nIF N|.
      t37 = t37 && |OT variable = 42.\nIF NOT variable CA 'hello'.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t34 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t50 ).
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
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_pr_is_nt_ts_pr_is_nt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_is_nt_ts_pr_is_nt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_pr_is_nt_ts_pr_is_nt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = t9.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
      t14 = t15->find_all_expressions( i_type_9913 = t16 ).
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      DATA(t19) = VALUE i( ).
      DO.
        t14->load( ).
        IF t19 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t18.
        READ TABLE t14->items INDEX t19 + 1 INTO t18.
        t19 = t19 + 1.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t20.
        CLEAR t17.
        IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t20 ?= t18.
          DATA t21 TYPE REF TO object.
          t21 = t20->as_ref( ).
          t17 ?= t21.
        ELSE.
          t17 ?= t18.
        ENDIF.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE string.
        DATA t25 TYPE string.
        DATA(t26) = t17.
        t25 = t26->concat_tokens( ).
        DATA(t27) = strlen( t25 ).
        t24 = t25.
        IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t24 TO UPPER CASE.
        ELSE.
          t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
        ENDIF.
        DATA(t28) = |NOT |.
        DATA(t29) = strlen( t24 ).
        DATA t30 TYPE i.
        DATA(t31) = VALUE i( ).
        DATA(t32) = VALUE string( ).
        t30 = strlen( t28 ).
        IF t30 = 0.
          t23 = abap_true.
        ELSEIF t30 <= t29.
          t31 = 0.
          t32 = t24+t31(t30).
          IF t32 = t28.
            t23 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t33) = abap_false.
        t22 = xsdbool( t23 = t33 ).
        IF t22 = abap_true.
          CONTINUE.
        ELSE.
          DATA t34 TYPE abap_bool.
          DATA t35 TYPE abap_bool.
          DATA t36 TYPE i.
          DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t39 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t40) = t17.
          t39 = t40.
          DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t42) = t39.
          t41 = t42->children.
          t38 = t41.
          t37 ?= t38.
          t37->load( ).
          t36 = lines( t37->items ).
          DATA(t43) = 2.
          t35 = xsdbool( t36 = t43 ).
          t34 = t35.
          IF t35 = abap_true.
            DATA(t44) = VALUE abap_bool( ).
            DATA t45 TYPE REF TO object.
            CLEAR t45.
            DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t46.
            DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t49 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t50) = t17.
            t49 = t50.
            DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t52) = t49.
            t51 = t52->children.
            t48 = t51.
            t47 ?= t48.
            DATA t53 TYPE REF TO object.
            CLEAR t53.
            t47->load( ).
            CLEAR t53.
            READ TABLE t47->items INDEX 2 INTO t53.
            DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t54.
            CLEAR t46.
            IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t54 ?= t53.
              DATA t55 TYPE REF TO object.
              t55 = t54->as_ref( ).
              t46 ?= t55.
            ELSE.
              t46 ?= t53.
            ENDIF.
            t45 = t46->get_db65( ).
            t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_st_method_call_chain ).
            t34 = t44.
          ENDIF.
          IF t34 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t56 TYPE string.
        DATA(t57) = |Prefer IS NOT to NOT IS|.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t59 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t60) = t1.
        DATA(t61) = t17.
        t59 = me->get_fix( i_file = t60 i_c = t61 ).
        t58 = t59.
        DATA(t62) = t2.
        DATA t63 TYPE REF TO zcl_lnt_issue.
        CLEAR t63.
        DATA(t64) = t1.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t66) = t17.
        t65 = t66->get_first_token( ).
        DATA(t67) = t56.
        DATA(t68) = VALUE string( ).
        DATA t69 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t69.
        DATA t70 TYPE string.
        DATA(t71) = |prefer_is_not|.
        t70 = t71.
        DATA t72 TYPE string.
        DATA(t73) = |Prefer IS NOT to NOT IS|.
        t72 = t73.
        DATA t74 TYPE string.
        DATA(t75) = |Prefer IS NOT to NOT IS|.
        t74 = t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t78) = abap_true.
        IF t78 = abap_true.
          DATA(t79) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t79 = t79 && |anABAP.md#prefer-is-not-to-not-is\n\n"if not is_valid( )." exa|.
          t79 = t79 && |mples are skipped|.
          DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t80->has = abap_true.
          t80->value = t79.
          t77 = t80.
        ELSE.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          t77 = t81.
        ENDIF.
        t76 = t77.
        DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t83.
        DATA(t84) = abap_true.
        IF t84 = abap_true.
          DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t87.
          t86 = t87.
          DATA(t88) = t86.
          DATA(t89) = |Styleguide|.
          t88->load( ).
          APPEND t89 TO t88->items.
          t88->save( ).
          DATA(t90) = t86.
          DATA(t91) = |Quickfix|.
          t90->load( ).
          APPEND t91 TO t90->items.
          t90->save( ).
          DATA(t92) = t86.
          DATA(t93) = |SingleFile|.
          t92->load( ).
          APPEND t93 TO t92->items.
          t92->save( ).
          DATA(t94) = t86.
          t85 = t94.
          t83 = t85.
        ELSE.
          DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t95.
          t83 = t95.
        ENDIF.
        t82 = t83.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA(t98) = abap_true.
        IF t98 = abap_true.
          DATA(t99) = |IF variable IS NOT INITIAL.\nIF variable NP 'TODO*'.\nIF varia|.
          t99 = t99 && |ble <> 42.\nIF variable CO 'hello'.|.
          DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t100->has = abap_true.
          t100->value = t99.
          t97 = t100.
        ELSE.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          t97 = t101.
        ENDIF.
        t96 = t97.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        DATA(t104) = abap_true.
        IF t104 = abap_true.
          DATA(t105) = |IF NOT variable IS INITIAL.\nIF NOT variable CP 'TODO*'.\nIF N|.
          t105 = t105 && |OT variable = 42.\nIF NOT variable CA 'hello'.|.
          DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t106->has = abap_true.
          t106->value = t105.
          t103 = t106.
        ELSE.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t107.
          t103 = t107.
        ENDIF.
        t102 = t103.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        t110 = t111.
        t69 = NEW zcl_lnt_irule_metadata( i_key = t70 i_title = t72 i_short_description = t74 i_bad_example = t102 i_good_example = t96 i_extended_information = t76 i_tags = t82 i_pragma = t108 i_pseudo_comment = t110 ).
        CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
        t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t112 ).
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t113 ).
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t114 ).
        ENDIF.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t115 ).
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t116 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t118 ).
        ENDIF.
        CREATE OBJECT t69->zlnt_json_ownkeys_70e5fd461788.
        t69->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t119) = |key|.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
        ENDIF.
        DATA(t121) = |title|.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
        ENDIF.
        DATA(t123) = |shortDescription|.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
        ENDIF.
        DATA(t125) = |extendedInformation|.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
        ENDIF.
        DATA(t127) = |tags|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        DATA(t129) = |goodExample|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        DATA(t131) = |badExample|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        t68 = t69->key.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t134) = me->conf.
        t133 = t134->zlnt_view_read_sr_15c06369f827( ).
        DATA(t135) = t58.
        t63 = zcl_lnt_issue=>at_token( i_file = t64 i_token = t65 i_message_26cb = t67 i_key = t68 i_severity = t133 i_fix = t135 ).
        t62->load( ).
        APPEND t63 TO t62->items.
        t62->save( ).
      ENDDO.
    ENDDO.
    DATA(t136) = t2.
    result = t136.

  ENDMETHOD.

  METHOD get_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_c.
    DATA t3 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = VALUE string( ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t13) = t2.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t12.
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    t10->load( ).
    CLEAR t16.
    READ TABLE t10->items INDEX 3 INTO t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    CLEAR t9.
    IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t17 ?= t16.
      DATA t18 TYPE REF TO object.
      t18 = t17->as_ref( ).
      t9 ?= t18.
    ELSE.
      t9 ?= t16.
    ENDIF.
    t8 = t9->get_first_token( ).
    t7 = t8.
    DATA t19 TYPE string.
    DATA(t20) = t7.
    t19 = t20->str.
    t6 = t19.
    DATA(t21) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    DATA(t22) = |IS|.
    t4 = xsdbool( t5 = t22 ).
    IF t4 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_position.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_position.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t31) = t2.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = t30.
      t32 = t33->children.
      t29 = t32.
      t28 ?= t29.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      t28->load( ).
      CLEAR t34.
      READ TABLE t28->items INDEX 3 INTO t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t27.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t34.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t27 ?= t36.
      ELSE.
        t27 ?= t34.
      ENDIF.
      t26 = t27->get_last_token( ).
      t25 = t26.
      DATA t37 TYPE REF TO zcl_lnt_position.
      DATA t38 TYPE f.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_position.
      DATA(t41) = t25.
      t40 = t41->start.
      t39 = t40.
      DATA t42 TYPE f.
      DATA(t43) = t39.
      t42 = t43->row.
      t38 = t42.
      DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = t25.
      t47 = t48->start.
      t46 = t47.
      DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t50) = t46.
      t49 = t50->col.
      t45 = t49.
      DATA t51 TYPE f.
      DATA t52 TYPE i.
      DATA t53 TYPE string.
      DATA(t54) = t25.
      t53 = t54->str.
      DATA(t55) = strlen( t53 ).
      t52 = t55.
      t51 = t52.
      DATA(t56) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t56->has = abap_true.
      t56->value = t51.
      t44 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t45 right = t56 op = `+` ).
      t37 = NEW zcl_lnt_position( i_row = t38 i_col = t44 ).
      t24 = t37.
      t23 = t24.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA t59 TYPE f.
      DATA t60 TYPE REF TO zcl_lnt_position.
      DATA(t61) = t23.
      t60 = t61.
      DATA t62 TYPE f.
      DATA(t63) = t60.
      t62 = t63->row.
      t59 = t62.
      DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t66 TYPE REF TO zcl_lnt_position.
      DATA(t67) = t23.
      t66 = t67.
      DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t69) = t66.
      t68 = t69->col.
      t65 = t68.
      DATA(t70) = CONV f( 1 ).
      DATA(t71) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t71->has = abap_true.
      t71->value = t70.
      t64 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t65 right = t71 op = `+` ).
      t58 = NEW zcl_lnt_position( i_row = t59 i_col = t64 ).
      t57 = t58.
      DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t73) = t1.
      DATA(t74) = t57.
      DATA(t75) = |NOT |.
      t72 = zcl_lnt_edit_helper=>insert_at( i_file = t73 i_pos = t74 i_text = t75 ).
      t3 = t72.
    ELSE.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE string( ).
      DATA(t79) = VALUE string( ).
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t81.
      DATA t82 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t82.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t85 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t86) = t2.
      t85 = t86.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t88) = t85.
      t87 = t88->children.
      t84 = t87.
      t83 ?= t84.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      t83->load( ).
      CLEAR t89.
      READ TABLE t83->items INDEX 3 INTO t89.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      CLEAR t82.
      IF t89 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t90 ?= t89.
        DATA t91 TYPE REF TO object.
        t91 = t90->as_ref( ).
        t82 ?= t91.
      ELSE.
        t82 ?= t89.
      ENDIF.
      t81 = t82->get_first_token( ).
      t80 = t81.
      DATA t92 TYPE string.
      DATA(t93) = t80.
      t92 = t93->str.
      t79 = t92.
      DATA(t94) = strlen( t79 ).
      t78 = t79.
      IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t78 TO UPPER CASE.
      ELSE.
        t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
      ENDIF.
      DATA(t95) = |IN|.
      t77 = xsdbool( t78 = t95 ).
      t76 = t77.
      IF t77 = abap_false.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = VALUE string( ).
        DATA(t98) = VALUE string( ).
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t99.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t100.
        DATA t101 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t101.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t104 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t105) = t2.
        t104 = t105.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t107) = t104.
        t106 = t107->children.
        t103 = t106.
        t102 ?= t103.
        DATA t108 TYPE REF TO object.
        CLEAR t108.
        t102->load( ).
        CLEAR t108.
        READ TABLE t102->items INDEX 3 INTO t108.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        CLEAR t101.
        IF t108 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t109 ?= t108.
          DATA t110 TYPE REF TO object.
          t110 = t109->as_ref( ).
          t101 ?= t110.
        ELSE.
          t101 ?= t108.
        ENDIF.
        t100 = t101->get_first_token( ).
        t99 = t100.
        DATA t111 TYPE string.
        DATA(t112) = t99.
        t111 = t112->str.
        t98 = t111.
        DATA(t113) = strlen( t98 ).
        t97 = t98.
        IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t97 TO UPPER CASE.
        ELSE.
          t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
        ENDIF.
        DATA(t114) = |BETWEEN|.
        t96 = xsdbool( t97 = t114 ).
        t76 = t96.
      ENDIF.
      IF t76 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_position.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_position.
        CLEAR t116.
        DATA t117 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t117.
        DATA t118 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t118.
        DATA t119 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t119.
        DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t122 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t123) = t2.
        t122 = t123.
        DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t125) = t122.
        t124 = t125->children.
        t121 = t124.
        t120 ?= t121.
        DATA t126 TYPE REF TO object.
        CLEAR t126.
        t120->load( ).
        CLEAR t126.
        READ TABLE t120->items INDEX 2 INTO t126.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        CLEAR t119.
        IF t126 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t127 ?= t126.
          DATA t128 TYPE REF TO object.
          t128 = t127->as_ref( ).
          t119 ?= t128.
        ELSE.
          t119 ?= t126.
        ENDIF.
        t118 = t119->get_last_token( ).
        t117 = t118.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA t130 TYPE f.
        DATA t131 TYPE REF TO zcl_lnt_position.
        DATA t132 TYPE REF TO zcl_lnt_position.
        DATA(t133) = t117.
        t132 = t133->start.
        t131 = t132.
        DATA t134 TYPE f.
        DATA(t135) = t131.
        t134 = t135->row.
        t130 = t134.
        DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t138 TYPE REF TO zcl_lnt_position.
        DATA t139 TYPE REF TO zcl_lnt_position.
        DATA(t140) = t117.
        t139 = t140->start.
        t138 = t139.
        DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t142) = t138.
        t141 = t142->col.
        t137 = t141.
        DATA t143 TYPE f.
        DATA t144 TYPE i.
        DATA t145 TYPE string.
        DATA(t146) = t117.
        t145 = t146->str.
        DATA(t147) = strlen( t145 ).
        t144 = t147.
        t143 = t144.
        DATA(t148) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t148->has = abap_true.
        t148->value = t143.
        t136 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t137 right = t148 op = `+` ).
        t129 = NEW zcl_lnt_position( i_row = t130 i_col = t136 ).
        t116 = t129.
        t115 = t116.
        DATA t149 TYPE REF TO zcl_lnt_position.
        DATA t150 TYPE REF TO zcl_lnt_position.
        DATA t151 TYPE f.
        DATA t152 TYPE REF TO zcl_lnt_position.
        DATA(t153) = t115.
        t152 = t153.
        DATA t154 TYPE f.
        DATA(t155) = t152.
        t154 = t155->row.
        t151 = t154.
        DATA t156 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t157 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t158 TYPE REF TO zcl_lnt_position.
        DATA(t159) = t115.
        t158 = t159.
        DATA t160 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t161) = t158.
        t160 = t161->col.
        t157 = t160.
        DATA(t162) = CONV f( 1 ).
        DATA(t163) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t163->has = abap_true.
        t163->value = t162.
        t156 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t157 right = t163 op = `+` ).
        t150 = NEW zcl_lnt_position( i_row = t151 i_col = t156 ).
        t149 = t150.
        DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t165) = t1.
        DATA(t166) = t149.
        DATA(t167) = |NOT |.
        t164 = zcl_lnt_edit_helper=>insert_at( i_file = t165 i_pos = t166 i_text = t167 ).
        t3 = t164.
      ELSE.
        DATA(t168) = VALUE abap_bool( ).
        DATA(t169) = VALUE string( ).
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t170.
        DATA t171 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t171.
        DATA t172 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t172.
        DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t175 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t176) = t2.
        t175 = t176.
        DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t178) = t175.
        t177 = t178->children.
        t174 = t177.
        t173 ?= t174.
        DATA t179 TYPE REF TO object.
        CLEAR t179.
        t173->load( ).
        CLEAR t179.
        READ TABLE t173->items INDEX 3 INTO t179.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        CLEAR t172.
        IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t180 ?= t179.
          DATA t181 TYPE REF TO object.
          t181 = t180->as_ref( ).
          t172 ?= t181.
        ELSE.
          t172 ?= t179.
        ENDIF.
        t171 = t172->get_first_token( ).
        t170 = t171.
        DATA t182 TYPE string.
        DATA(t183) = t170.
        t182 = t183->str.
        t169 = t182.
        DATA(t184) = |=|.
        t168 = xsdbool( t169 = t184 ).
        IF t168 = abap_true.
          DATA t185 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t185.
          DATA(t186) = t1.
          DATA t187 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t187.
          DATA t188 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t188.
          DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t191 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t192) = t2.
          t191 = t192.
          DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t194) = t191.
          t193 = t194->children.
          t190 = t193.
          t189 ?= t190.
          DATA t195 TYPE REF TO object.
          CLEAR t195.
          t189->load( ).
          CLEAR t195.
          READ TABLE t189->items INDEX 3 INTO t195.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          CLEAR t188.
          IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t196 ?= t195.
            DATA t197 TYPE REF TO object.
            t197 = t196->as_ref( ).
            t188 ?= t197.
          ELSE.
            t188 ?= t195.
          ENDIF.
          t187 = t188->get_last_token( ).
          DATA(t198) = |<>|.
          t185 = zcl_lnt_edit_helper=>replace_token( i_file = t186 i_token = t187 i_text = t198 ).
          t3 = t185.
        ELSE.
          DATA(t199) = VALUE abap_bool( ).
          DATA(t200) = VALUE string( ).
          DATA t201 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t201.
          DATA t202 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t202.
          DATA t203 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t203.
          DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t206 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t207) = t2.
          t206 = t207.
          DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t209) = t206.
          t208 = t209->children.
          t205 = t208.
          t204 ?= t205.
          DATA t210 TYPE REF TO object.
          CLEAR t210.
          t204->load( ).
          CLEAR t210.
          READ TABLE t204->items INDEX 3 INTO t210.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          CLEAR t203.
          IF t210 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t211 ?= t210.
            DATA t212 TYPE REF TO object.
            t212 = t211->as_ref( ).
            t203 ?= t212.
          ELSE.
            t203 ?= t210.
          ENDIF.
          t202 = t203->get_first_token( ).
          t201 = t202.
          DATA t213 TYPE string.
          DATA(t214) = t201.
          t213 = t214->str.
          t200 = t213.
          DATA(t215) = |<>|.
          t199 = xsdbool( t200 = t215 ).
          IF t199 = abap_true.
            DATA t216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t216.
            DATA(t217) = t1.
            DATA t218 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t218.
            DATA t219 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t219.
            DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t222 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t223) = t2.
            t222 = t223.
            DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t225) = t222.
            t224 = t225->children.
            t221 = t224.
            t220 ?= t221.
            DATA t226 TYPE REF TO object.
            CLEAR t226.
            t220->load( ).
            CLEAR t226.
            READ TABLE t220->items INDEX 3 INTO t226.
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t227.
            CLEAR t219.
            IF t226 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t227 ?= t226.
              DATA t228 TYPE REF TO object.
              t228 = t227->as_ref( ).
              t219 ?= t228.
            ELSE.
              t219 ?= t226.
            ENDIF.
            t218 = t219->get_last_token( ).
            DATA(t229) = |=|.
            t216 = zcl_lnt_edit_helper=>replace_token( i_file = t217 i_token = t218 i_text = t229 ).
            t3 = t216.
          ELSE.
            DATA(t230) = VALUE abap_bool( ).
            DATA(t231) = VALUE string( ).
            DATA t232 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t232.
            DATA t233 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t233.
            DATA t234 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t234.
            DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t237 TYPE REF TO zcl_lnt_abstract_node.
            DATA(t238) = t2.
            t237 = t238.
            DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t240) = t237.
            t239 = t240->children.
            t236 = t239.
            t235 ?= t236.
            DATA t241 TYPE REF TO object.
            CLEAR t241.
            t235->load( ).
            CLEAR t241.
            READ TABLE t235->items INDEX 3 INTO t241.
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            CLEAR t234.
            IF t241 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t242 ?= t241.
              DATA t243 TYPE REF TO object.
              t243 = t242->as_ref( ).
              t234 ?= t243.
            ELSE.
              t234 ?= t241.
            ENDIF.
            t233 = t234->get_first_token( ).
            t232 = t233.
            DATA t244 TYPE string.
            DATA(t245) = t232.
            t244 = t245->str.
            t231 = t244.
            DATA(t246) = |<|.
            t230 = xsdbool( t231 = t246 ).
            IF t230 = abap_true.
              DATA t247 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t247.
              DATA(t248) = t1.
              DATA t249 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t249.
              DATA t250 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t250.
              DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t253 TYPE REF TO zcl_lnt_abstract_node.
              DATA(t254) = t2.
              t253 = t254.
              DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t256) = t253.
              t255 = t256->children.
              t252 = t255.
              t251 ?= t252.
              DATA t257 TYPE REF TO object.
              CLEAR t257.
              t251->load( ).
              CLEAR t257.
              READ TABLE t251->items INDEX 3 INTO t257.
              DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t258.
              CLEAR t250.
              IF t257 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t258 ?= t257.
                DATA t259 TYPE REF TO object.
                t259 = t258->as_ref( ).
                t250 ?= t259.
              ELSE.
                t250 ?= t257.
              ENDIF.
              t249 = t250->get_last_token( ).
              DATA(t260) = |>|.
              t247 = zcl_lnt_edit_helper=>replace_token( i_file = t248 i_token = t249 i_text = t260 ).
              t3 = t247.
            ELSE.
              DATA(t261) = VALUE abap_bool( ).
              DATA(t262) = VALUE string( ).
              DATA t263 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t263.
              DATA t264 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t264.
              DATA t265 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t265.
              DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t268 TYPE REF TO zcl_lnt_abstract_node.
              DATA(t269) = t2.
              t268 = t269.
              DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t271) = t268.
              t270 = t271->children.
              t267 = t270.
              t266 ?= t267.
              DATA t272 TYPE REF TO object.
              CLEAR t272.
              t266->load( ).
              CLEAR t272.
              READ TABLE t266->items INDEX 3 INTO t272.
              DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t273.
              CLEAR t265.
              IF t272 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t273 ?= t272.
                DATA t274 TYPE REF TO object.
                t274 = t273->as_ref( ).
                t265 ?= t274.
              ELSE.
                t265 ?= t272.
              ENDIF.
              t264 = t265->get_first_token( ).
              t263 = t264.
              DATA t275 TYPE string.
              DATA(t276) = t263.
              t275 = t276->str.
              t262 = t275.
              DATA(t277) = |>|.
              t261 = xsdbool( t262 = t277 ).
              IF t261 = abap_true.
                DATA t278 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t278.
                DATA(t279) = t1.
                DATA t280 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t280.
                DATA t281 TYPE REF TO zif_lnt_union_4cf1d054.
                CLEAR t281.
                DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t283 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t284 TYPE REF TO zcl_lnt_abstract_node.
                DATA(t285) = t2.
                t284 = t285.
                DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t287) = t284.
                t286 = t287->children.
                t283 = t286.
                t282 ?= t283.
                DATA t288 TYPE REF TO object.
                CLEAR t288.
                t282->load( ).
                CLEAR t288.
                READ TABLE t282->items INDEX 3 INTO t288.
                DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t289.
                CLEAR t281.
                IF t288 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t289 ?= t288.
                  DATA t290 TYPE REF TO object.
                  t290 = t289->as_ref( ).
                  t281 ?= t290.
                ELSE.
                  t281 ?= t288.
                ENDIF.
                t280 = t281->get_last_token( ).
                DATA(t291) = |<|.
                t278 = zcl_lnt_edit_helper=>replace_token( i_file = t279 i_token = t280 i_text = t291 ).
                t3 = t278.
              ELSE.
                DATA(t292) = VALUE abap_bool( ).
                DATA(t293) = VALUE string( ).
                DATA t294 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t294.
                DATA t295 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t295.
                DATA t296 TYPE REF TO zif_lnt_union_4cf1d054.
                CLEAR t296.
                DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t299 TYPE REF TO zcl_lnt_abstract_node.
                DATA(t300) = t2.
                t299 = t300.
                DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t302) = t299.
                t301 = t302->children.
                t298 = t301.
                t297 ?= t298.
                DATA t303 TYPE REF TO object.
                CLEAR t303.
                t297->load( ).
                CLEAR t303.
                READ TABLE t297->items INDEX 3 INTO t303.
                DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t304.
                CLEAR t296.
                IF t303 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t304 ?= t303.
                  DATA t305 TYPE REF TO object.
                  t305 = t304->as_ref( ).
                  t296 ?= t305.
                ELSE.
                  t296 ?= t303.
                ENDIF.
                t295 = t296->get_first_token( ).
                t294 = t295.
                DATA t306 TYPE string.
                DATA(t307) = t294.
                t306 = t307->str.
                t293 = t306.
                DATA(t308) = |<=|.
                t292 = xsdbool( t293 = t308 ).
                IF t292 = abap_true.
                  DATA t309 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t309.
                  DATA(t310) = t1.
                  DATA t311 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t311.
                  DATA t312 TYPE REF TO zif_lnt_union_4cf1d054.
                  CLEAR t312.
                  DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t315 TYPE REF TO zcl_lnt_abstract_node.
                  DATA(t316) = t2.
                  t315 = t316.
                  DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t318) = t315.
                  t317 = t318->children.
                  t314 = t317.
                  t313 ?= t314.
                  DATA t319 TYPE REF TO object.
                  CLEAR t319.
                  t313->load( ).
                  CLEAR t319.
                  READ TABLE t313->items INDEX 3 INTO t319.
                  DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t320.
                  CLEAR t312.
                  IF t319 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t320 ?= t319.
                    DATA t321 TYPE REF TO object.
                    t321 = t320->as_ref( ).
                    t312 ?= t321.
                  ELSE.
                    t312 ?= t319.
                  ENDIF.
                  t311 = t312->get_last_token( ).
                  DATA(t322) = |>=|.
                  t309 = zcl_lnt_edit_helper=>replace_token( i_file = t310 i_token = t311 i_text = t322 ).
                  t3 = t309.
                ELSE.
                  DATA(t323) = VALUE abap_bool( ).
                  DATA(t324) = VALUE string( ).
                  DATA t325 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t325.
                  DATA t326 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t326.
                  DATA t327 TYPE REF TO zif_lnt_union_4cf1d054.
                  CLEAR t327.
                  DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t330 TYPE REF TO zcl_lnt_abstract_node.
                  DATA(t331) = t2.
                  t330 = t331.
                  DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t333) = t330.
                  t332 = t333->children.
                  t329 = t332.
                  t328 ?= t329.
                  DATA t334 TYPE REF TO object.
                  CLEAR t334.
                  t328->load( ).
                  CLEAR t334.
                  READ TABLE t328->items INDEX 3 INTO t334.
                  DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t335.
                  CLEAR t327.
                  IF t334 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t335 ?= t334.
                    DATA t336 TYPE REF TO object.
                    t336 = t335->as_ref( ).
                    t327 ?= t336.
                  ELSE.
                    t327 ?= t334.
                  ENDIF.
                  t326 = t327->get_first_token( ).
                  t325 = t326.
                  DATA t337 TYPE string.
                  DATA(t338) = t325.
                  t337 = t338->str.
                  t324 = t337.
                  DATA(t339) = |>=|.
                  t323 = xsdbool( t324 = t339 ).
                  IF t323 = abap_true.
                    DATA t340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t340.
                    DATA(t341) = t1.
                    DATA t342 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t342.
                    DATA t343 TYPE REF TO zif_lnt_union_4cf1d054.
                    CLEAR t343.
                    DATA t344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t345 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t346 TYPE REF TO zcl_lnt_abstract_node.
                    DATA(t347) = t2.
                    t346 = t347.
                    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t349) = t346.
                    t348 = t349->children.
                    t345 = t348.
                    t344 ?= t345.
                    DATA t350 TYPE REF TO object.
                    CLEAR t350.
                    t344->load( ).
                    CLEAR t350.
                    READ TABLE t344->items INDEX 3 INTO t350.
                    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t351.
                    CLEAR t343.
                    IF t350 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                      t351 ?= t350.
                      DATA t352 TYPE REF TO object.
                      t352 = t351->as_ref( ).
                      t343 ?= t352.
                    ELSE.
                      t343 ?= t350.
                    ENDIF.
                    t342 = t343->get_last_token( ).
                    DATA(t353) = |<=|.
                    t340 = zcl_lnt_edit_helper=>replace_token( i_file = t341 i_token = t342 i_text = t353 ).
                    t3 = t340.
                  ELSE.
                    DATA t354 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t354.
                    result = t354.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t355 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t355.
    DATA t356 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t357.
    DATA t358 TYPE REF TO zcl_lnt_position.
    CLEAR t358.
    DATA t359 TYPE REF TO zcl_lnt_position.
    CLEAR t359.
    DATA t360 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t360.
    DATA t361 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t361.
    DATA t362 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t365 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t366) = t2.
    t365 = t366.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t368) = t365.
    t367 = t368->children.
    t364 = t367.
    t363 ?= t364.
    DATA t369 TYPE REF TO object.
    CLEAR t369.
    t363->load( ).
    CLEAR t369.
    READ TABLE t363->items INDEX 1 INTO t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    CLEAR t362.
    IF t369 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t370 ?= t369.
      DATA t371 TYPE REF TO object.
      t371 = t370->as_ref( ).
      t362 ?= t371.
    ELSE.
      t362 ?= t369.
    ENDIF.
    t361 = t362->get_first_token( ).
    t360 = t361.
    DATA t372 TYPE REF TO zcl_lnt_position.
    DATA t373 TYPE f.
    DATA t374 TYPE REF TO zcl_lnt_position.
    DATA t375 TYPE REF TO zcl_lnt_position.
    DATA(t376) = t360.
    t375 = t376->start.
    t374 = t375.
    DATA t377 TYPE f.
    DATA(t378) = t374.
    t377 = t378->row.
    t373 = t377.
    DATA t379 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t380 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t381 TYPE REF TO zcl_lnt_position.
    DATA t382 TYPE REF TO zcl_lnt_position.
    DATA(t383) = t360.
    t382 = t383->start.
    t381 = t382.
    DATA t384 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t385) = t381.
    t384 = t385->col.
    t380 = t384.
    DATA t386 TYPE f.
    DATA t387 TYPE i.
    DATA t388 TYPE string.
    DATA(t389) = t360.
    t388 = t389->str.
    DATA(t390) = strlen( t388 ).
    t387 = t390.
    t386 = t387.
    DATA(t391) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t391->has = abap_true.
    t391->value = t386.
    t379 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t380 right = t391 op = `+` ).
    t372 = NEW zcl_lnt_position( i_row = t373 i_col = t379 ).
    t359 = t372.
    t358 = t359.
    DATA t392 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t393) = t358.
    t392 = t393->col.
    t357 = t392.
    DATA(t394) = CONV f( 1 ).
    DATA(t395) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t395->has = abap_true.
    t395->value = t394.
    t356 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t357 right = t395 op = `+` ).
    t355 = t356.
    DATA t396 TYPE REF TO zcl_lnt_position.
    CLEAR t396.
    DATA t397 TYPE REF TO zcl_lnt_position.
    CLEAR t397.
    DATA(t398) = VALUE f( ).
    DATA t399 TYPE REF TO zcl_lnt_position.
    CLEAR t399.
    DATA t400 TYPE REF TO zcl_lnt_position.
    CLEAR t400.
    DATA t401 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t401.
    DATA t402 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t402.
    DATA t403 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t406 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t407) = t2.
    t406 = t407.
    DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t409) = t406.
    t408 = t409->children.
    t405 = t408.
    t404 ?= t405.
    DATA t410 TYPE REF TO object.
    CLEAR t410.
    t404->load( ).
    CLEAR t410.
    READ TABLE t404->items INDEX 1 INTO t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    CLEAR t403.
    IF t410 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t411 ?= t410.
      DATA t412 TYPE REF TO object.
      t412 = t411->as_ref( ).
      t403 ?= t412.
    ELSE.
      t403 ?= t410.
    ENDIF.
    t402 = t403->get_first_token( ).
    t401 = t402.
    DATA t413 TYPE REF TO zcl_lnt_position.
    DATA t414 TYPE f.
    DATA t415 TYPE REF TO zcl_lnt_position.
    DATA t416 TYPE REF TO zcl_lnt_position.
    DATA(t417) = t401.
    t416 = t417->start.
    t415 = t416.
    DATA t418 TYPE f.
    DATA(t419) = t415.
    t418 = t419->row.
    t414 = t418.
    DATA t420 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t421 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t422 TYPE REF TO zcl_lnt_position.
    DATA t423 TYPE REF TO zcl_lnt_position.
    DATA(t424) = t401.
    t423 = t424->start.
    t422 = t423.
    DATA t425 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t426) = t422.
    t425 = t426->col.
    t421 = t425.
    DATA t427 TYPE f.
    DATA t428 TYPE i.
    DATA t429 TYPE string.
    DATA(t430) = t401.
    t429 = t430->str.
    DATA(t431) = strlen( t429 ).
    t428 = t431.
    t427 = t428.
    DATA(t432) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t432->has = abap_true.
    t432->value = t427.
    t420 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t421 right = t432 op = `+` ).
    t413 = NEW zcl_lnt_position( i_row = t414 i_col = t420 ).
    t400 = t413.
    t399 = t400.
    DATA t433 TYPE f.
    DATA(t434) = t399.
    t433 = t434->row.
    t398 = t433.
    DATA(t435) = t355.
    t397 = NEW zcl_lnt_position( i_row = t398 i_col = t435 ).
    t396 = t397.
    DATA t436 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t436.
    DATA t437 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t437.
    DATA(t438) = t1.
    DATA t439 TYPE REF TO zcl_lnt_position.
    CLEAR t439.
    DATA t440 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t440.
    DATA t441 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t441.
    DATA t442 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t445 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t446) = t2.
    t445 = t446.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t448) = t445.
    t447 = t448->children.
    t444 = t447.
    t443 ?= t444.
    DATA t449 TYPE REF TO object.
    CLEAR t449.
    t443->load( ).
    CLEAR t449.
    READ TABLE t443->items INDEX 1 INTO t449.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t450.
    CLEAR t442.
    IF t449 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t450 ?= t449.
      DATA t451 TYPE REF TO object.
      t451 = t450->as_ref( ).
      t442 ?= t451.
    ELSE.
      t442 ?= t449.
    ENDIF.
    t441 = t442->get_first_token( ).
    t440 = t441.
    DATA t452 TYPE REF TO zcl_lnt_position.
    DATA(t453) = t440.
    t452 = t453->start.
    t439 = t452.
    DATA(t454) = t396.
    t437 = zcl_lnt_edit_helper=>delete_range( i_file = t438 i_start = t439 i_end = t454 ).
    t436 = t437.
    DATA t455 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t456 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t457) = t3.
    DATA(t458) = t436.
    t456 = zcl_lnt_edit_helper=>merge( i_fix1 = t457 i_fix2 = t458 ).
    t455 = t456.
    DATA t459 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t459.
    DATA(t460) = abap_true.
    IF t460 = abap_true.
      DATA(t461) = t455.
      t459 = t461.
    ELSE.
      DATA t462 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t462.
      t459 = t462.
    ENDIF.
    result = t459.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prefer_is_not_conf( me->g_c_i_s_r_pr_is_nt_ts_pr_is_nt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prefer_is_not_conf( me->g_c_i_s_r_pr_is_nt_ts_pr_is_nt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prefer_is_not_conf.
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
        t1 = NEW zcl_lnt_prefer_is_not_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_is_nt_ts_pr_is_nt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_is_nt_ts_pr_is_nt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1660_247f14586271.
  ENDMETHOD.
ENDCLASS.
