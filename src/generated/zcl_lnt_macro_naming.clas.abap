* TS: src/rules/macro_naming.ts:16:1 MacroNaming
CLASS zcl_lnt_macro_naming DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_macro_naming_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_mc_nm_ts_mc_nmn RETURNING VALUE(result) TYPE REF TO zcl_lnt_macro_naming_conf.
    METHODS st_cn_in_sr_rl_mc_nm_ts_mc_nmn IMPORTING i_conf TYPE REF TO zcl_lnt_macro_naming_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macro_naming IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_macro_naming_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |macro_naming|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Macro naming conventions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern for macro definitions|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Use rule "avoid_use" to avoid macros altogether.|.
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
      DATA(t21) = |Naming|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
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
      DATA(t29) = |DEFINE something.\nEND-OF-DEFINITION.|.
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
      DATA(t35) = |DEFINE _something.\nEND-OF-DEFINITION.|.
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

  METHOD gt_cn_in_sr_rl_mc_nm_ts_mc_nmn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mc_nm_ts_mc_nmn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t6.
    DATA t7 TYPE string.
    DATA(t8) = me->conf.
    t7 = t8->zlnt_view_read_sr_9e75020a19aa( ).
    DATA(t9) = |i|.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t7 flags = t9.
    t5 = t6.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t2.
    t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_ob_type_pool ).
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_abap_file.
    DATA(t15) = t1.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = t14.
    t16 = t17->statements.
    t13 = t16.
    DATA t18 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t13->load( ).
      IF t20 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t13->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE REF TO zif_lnt_statement.
      DATA(t26) = t18.
      t25 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_define ).
      t23 = xsdbool( t24 = abap_false ).
      IF t23 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = t18.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d214_4a4b8612d221.
      t28 = t29->find_direct_expression( i_type_9913 = t30 ).
      t27 = t28.
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = t27.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t34 = t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t32.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ENDIF.
      t31 = t36.
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA(t41) = t27.
      t40 = t41.
      t39 = t40->get_first_token( ).
      t38 = t39.
      DATA t42 TYPE abap_bool.
      DATA(t43) = t5.
      DATA t44 TYPE string.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t38.
      t45 = t46.
      DATA t47 TYPE string.
      DATA(t48) = t45.
      t47 = t48->str.
      t44 = t47.
      t42 = t43->test( p0 = t44 ).
      IF t42 = abap_true.
        CONTINUE.
      ELSE.
        DATA t49 TYPE string.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = |Bad macro name naming, expected "|.
        DATA t55 TYPE string.
        DATA(t56) = me->conf.
        t55 = t56->zlnt_view_read_sr_9e75020a19aa( ).
        DATA(t57) = strlen( t54 ).
        t53 = |{ t54 }{ t55 }|.
        DATA(t58) = |", got "|.
        DATA(t59) = strlen( t53 ).
        t52 = |{ t53 }{ t58 }|.
        DATA t60 TYPE string.
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t62) = t38.
        t61 = t62.
        DATA t63 TYPE string.
        DATA(t64) = t61.
        t63 = t64->str.
        t60 = t63.
        DATA(t65) = strlen( t52 ).
        t51 = |{ t52 }{ t60 }|.
        DATA(t66) = |"|.
        DATA(t67) = strlen( t51 ).
        t50 = |{ t51 }{ t66 }|.
        t49 = t50.
        DATA t68 TYPE REF TO zcl_lnt_issue.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_issue.
        CLEAR t69.
        DATA(t70) = t1.
        DATA(t71) = t38.
        DATA(t72) = t49.
        DATA(t73) = VALUE string( ).
        DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t74.
        DATA t75 TYPE string.
        DATA(t76) = |macro_naming|.
        t75 = t76.
        DATA t77 TYPE string.
        DATA(t78) = |Macro naming conventions|.
        t77 = t78.
        DATA t79 TYPE string.
        DATA(t80) = |Allows you to enforce a pattern for macro definitions|.
        t79 = t80.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA(t83) = abap_true.
        IF t83 = abap_true.
          DATA(t84) = |Use rule "avoid_use" to avoid macros altogether.|.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t84.
          t82 = t85.
        ELSE.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t86.
          t82 = t86.
        ENDIF.
        t81 = t82.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t88.
        DATA(t89) = abap_true.
        IF t89 = abap_true.
          DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t92.
          t91 = t92.
          DATA(t93) = t91.
          DATA(t94) = |Naming|.
          t93->load( ).
          APPEND t94 TO t93->items.
          t93->save( ).
          DATA(t95) = t91.
          DATA(t96) = |SingleFile|.
          t95->load( ).
          APPEND t96 TO t95->items.
          t95->save( ).
          DATA(t97) = t91.
          t90 = t97.
          t88 = t90.
        ELSE.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t98.
          t88 = t98.
        ENDIF.
        t87 = t88.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA(t102) = |DEFINE something.\nEND-OF-DEFINITION.|.
          DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t103->has = abap_true.
          t103->value = t102.
          t100 = t103.
        ELSE.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          t100 = t104.
        ENDIF.
        t99 = t100.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA(t108) = |DEFINE _something.\nEND-OF-DEFINITION.|.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t108.
          t106 = t109.
        ELSE.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          t106 = t110.
        ENDIF.
        t105 = t106.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        t111 = t112.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        t113 = t114.
        t74 = NEW zcl_lnt_irule_metadata( i_key = t75 i_title = t77 i_short_description = t79 i_bad_example = t99 i_good_example = t105 i_extended_information = t81 i_tags = t87 i_pragma = t111 i_pseudo_comment = t113 ).
        CREATE OBJECT t74->zlnt_view_ownkeys_b0e8086400eb.
        t74->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t115 ).
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t116 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t120 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t121 ).
        ENDIF.
        CREATE OBJECT t74->zlnt_json_ownkeys_70e5fd461788.
        t74->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t122) = |key|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        ENDIF.
        DATA(t124) = |title|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        DATA(t126) = |shortDescription|.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
        ENDIF.
        DATA(t128) = |extendedInformation|.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
        ENDIF.
        DATA(t130) = |tags|.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
        ENDIF.
        DATA(t132) = |badExample|.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
        ENDIF.
        DATA(t134) = |goodExample|.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
        ENDIF.
        t73 = t74->key.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t137) = me->conf.
        t136 = t137->zlnt_view_read_sr_15c06369f827( ).
        DATA t138 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t138.
        t69 = zcl_lnt_issue=>at_token( i_file = t70 i_token = t71 i_message_26cb = t72 i_key = t73 i_severity = t136 i_fix = t138 ).
        t68 = t69.
        DATA(t139) = t3.
        DATA(t140) = t68.
        t139->load( ).
        APPEND t140 TO t139->items.
        t139->save( ).
      ENDIF.
    ENDDO.
    DATA(t141) = t3.
    result = t141.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_macro_naming_conf( me->gt_cn_in_sr_rl_mc_nm_ts_mc_nmn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_macro_naming_conf( me->gt_cn_in_sr_rl_mc_nm_ts_mc_nmn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_macro_naming_conf.
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
        t1 = NEW zcl_lnt_macro_naming_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mc_nm_ts_mc_nmn( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1573_992fcd7fda56.
  ENDMETHOD.
ENDCLASS.
