* TS: src/rules/use_bool_expression.ts:18:1 UseBoolExpression
CLASS zcl_lnt_use_bool_expression DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_us_bl_ex_ts_us_bl_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
    METHODS s_c_i_s_r_us_bl_ex_ts_us_bl_ex IMPORTING i_conf TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
    METHODS r_p_i_s_r_us_bl_ex_ts_us_bl_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_use_bool_expression IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_us_bl_exprssn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |use_bool_expression|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Use boolean expression|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Use boolean expression, xsdbool from 740sp08 and up, boolc f|.
    t7 = t7 && |rom 702 and up|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#use-xsdbool-to-set-boolean-variables|.
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
      DATA(t21) = |Upport|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Styleguide|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |SingleFile|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |IF line IS INITIAL.\n  has_entries = abap_false.\nELSE.\n  has_|.
      t33 = t33 && |entries = abap_true.\nENDIF.\n\nDATA(fsdf) = COND #( WHEN foo <|.
      t33 = t33 && |> bar THEN abap_true ELSE abap_false ).|.
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
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |DATA(has_entries) = xsdbool( line IS NOT INITIAL ).\n\nDATA(fs|.
      t39 = t39 && |df) = xsdbool( foo <> bar ).|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
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
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_us_bl_ex_ts_us_bl_ex.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_us_bl_ex_ts_us_bl_ex.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_us_bl_ex_ts_us_bl_ex.
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
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    DATA t12 TYPE REF TO zif_lnt_configuration.
    DATA(t13) = me->reg.
    t12 = t13->get_config( ).
    t11 = t12->get_release( ).
    t10 = t11.
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zif_lnt_configuration.
    DATA(t17) = me->reg.
    t16 = t17->get_config( ).
    t15 = t16->get_language_version( ).
    t14 = t15.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = t4.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    t18 = t19.
    IF t19 = abap_false.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t10.
      DATA t30 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t32.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t32 = zcl_lnt_version_module=>release_b8cd.
      DATA(t33) = |v702|.
      t31 = t32->get( p0 = t33 ).
      t30 = t31.
      t28 = zcl_lnt_version_module=>release_at_least( i_running = t29 i_required = t30 ).
      t27 = xsdbool( t28 = abap_false ).
      t26 = t27.
      IF t27 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA(t35) = t14.
        DATA(t36) = |Cloud|.
        t34 = xsdbool( t35 <> t36 ).
        t26 = t34.
      ENDIF.
      t18 = t26.
    ENDIF.
    IF t18 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t37.
      result = t37.
      RETURN.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zcl_lnt_structure_node.
    DATA(t40) = t4.
    t39 = t40.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t38 = t39->find_all_structures( i_type_9913 = t41 ).
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t42.
    DATA t43 TYPE REF TO object.
    CLEAR t43.
    DATA(t44) = VALUE i( ).
    DO.
      t38->load( ).
      IF t44 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t43.
      READ TABLE t38->items INDEX t44 + 1 INTO t43.
      t44 = t44 + 1.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      CLEAR t42.
      IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t45 ?= t43.
        DATA t46 TYPE REF TO object.
        t46 = t45->as_ref( ).
        t42 ?= t46.
      ELSE.
        t42 ?= t43.
      ENDIF.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zcl_lnt_structure_node.
      DATA t49 TYPE REF TO zcl_lnt_structure_node.
      DATA(t50) = t42.
      DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
      t49 = t50->find_direct_structure( i_type_9913 = t51 ).
      t48 = t49.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      t52 = t53.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = t48.
      IF t56 IS INITIAL.
        t55 = abap_true.
      ENDIF.
      t54 = xsdbool( t55 = abap_false ).
      t47 = t54.
      IF t47 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_structure_node.
      DATA t60 TYPE REF TO zcl_lnt_structure_node.
      DATA(t61) = t42.
      DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
      t60 = t61->find_direct_structure( i_type_9913 = t62 ).
      t59 = t60.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t59.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t68 TYPE REF TO zcl_lnt_structure_node.
        DATA(t69) = t59.
        t68 = t69.
        t67 = t68->find_all_statement_nodes( ).
        t63 = t67.
      ENDIF.
      t58 = t63.
      t57 = t58.
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t73) = t57.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = t72.
      IF t77 IS INITIAL.
        t76 = abap_true.
      ENDIF.
      t71 = t76.
      t70 = t71.
      IF t71 = abap_false.
        DATA t78 TYPE abap_bool.
        DATA t79 TYPE i.
        DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t81) = t57.
        t80 = t81.
        t80->load( ).
        t79 = lines( t80->items ).
        DATA(t82) = 1.
        t78 = xsdbool( t79 <> t82 ).
        t70 = t78.
      ENDIF.
      IF t70 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t83 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t83.
      DATA t84 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t84.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t86) = t57.
      t85 = t86.
      DATA t87 TYPE REF TO object.
      CLEAR t87.
      t85->load( ).
      CLEAR t87.
      READ TABLE t85->items INDEX 1 INTO t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      CLEAR t84.
      IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t88 ?= t87.
        DATA t89 TYPE REF TO object.
        t89 = t88->as_ref( ).
        t84 ?= t89.
      ELSE.
        t84 ?= t87.
      ENDIF.
      t83 = t84.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA t92 TYPE REF TO zif_lnt_statement.
      DATA(t93) = t83.
      t92 = t93->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_move ).
      t90 = xsdbool( t91 = abap_false ).
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t95.
      DATA t96 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t96.
      DATA t97 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_structure_node.
      DATA t99 TYPE REF TO zcl_lnt_structure_node.
      DATA(t100) = t42.
      DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
      t99 = t100->find_direct_structure( i_type_9913 = t101 ).
      t98 = t99.
      DATA t102 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t102.
      DATA(t103) = VALUE abap_bool( ).
      DATA(t104) = t98.
      IF t104 IS INITIAL.
        t103 = abap_true.
      ENDIF.
      IF t103 = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t105.
        t102 = t105.
      ELSE.
        DATA t106 TYPE REF TO zcl_lnt_structure_node.
        DATA t107 TYPE REF TO zcl_lnt_structure_node.
        DATA(t108) = t98.
        t107 = t108.
        DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t106 = t107->find_direct_structure( i_type_9913 = t109 ).
        t102 = t106.
      ENDIF.
      t97 = t102.
      t96 = t97.
      DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t110.
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = t96.
      IF t112 IS INITIAL.
        t111 = abap_true.
      ENDIF.
      IF t111 = abap_true.
        DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t113.
        t110 = t113.
      ELSE.
        DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t115 TYPE REF TO zcl_lnt_structure_node.
        DATA(t116) = t96.
        t115 = t116.
        t114 = t115->find_all_statement_nodes( ).
        t110 = t114.
      ENDIF.
      t95 = t110.
      t94 = t95.
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = VALUE abap_bool( ).
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t120) = t94.
      t119 = t120.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      t121 = t122.
      DATA(t123) = VALUE abap_bool( ).
      DATA(t124) = t119.
      IF t124 IS INITIAL.
        t123 = abap_true.
      ENDIF.
      t118 = t123.
      t117 = t118.
      IF t118 = abap_false.
        DATA t125 TYPE abap_bool.
        DATA t126 TYPE i.
        DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t128) = t94.
        t127 = t128.
        t127->load( ).
        t126 = lines( t127->items ).
        DATA(t129) = 1.
        t125 = xsdbool( t126 <> t129 ).
        t117 = t125.
      ENDIF.
      IF t117 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t130 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t130.
      DATA t131 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t131.
      DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t133) = t94.
      t132 = t133.
      DATA t134 TYPE REF TO object.
      CLEAR t134.
      t132->load( ).
      CLEAR t134.
      READ TABLE t132->items INDEX 1 INTO t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      CLEAR t131.
      IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t135 ?= t134.
        DATA t136 TYPE REF TO object.
        t136 = t135->as_ref( ).
        t131 ?= t136.
      ELSE.
        t131 ?= t134.
      ENDIF.
      t130 = t131.
      DATA t137 TYPE abap_bool.
      DATA t138 TYPE abap_bool.
      DATA t139 TYPE REF TO zif_lnt_statement.
      DATA(t140) = t130.
      t139 = t140->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t138 = xsdbool( t139 IS BOUND AND t139 IS INSTANCE OF zcl_lnt_st_move ).
      t137 = xsdbool( t138 = abap_false ).
      IF t137 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      DATA(t145) = t83.
      DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t144 = t145->find_first_expression( i_type_9913 = t146 ).
      t143 = t144.
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t147.
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = t143.
      IF t149 IS INITIAL.
        t148 = abap_true.
      ENDIF.
      IF t148 = abap_true.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        t147 = t150.
      ELSE.
        DATA t151 TYPE string.
        DATA t152 TYPE REF TO zcl_lnt_expression_node.
        DATA(t153) = t143.
        t152 = t153.
        t151 = t152->concat_tokens( ).
        DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t154->has = abap_true.
        t154->value = t151.
        t147 = t154.
      ENDIF.
      t142 = t147.
      t141 = t142.
      DATA(t155) = VALUE abap_bool( ).
      DATA t156 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t156.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t158) = t141.
      t157 = t158.
      DATA t159 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t159.
      DATA(t160) = VALUE abap_bool( ).
      DATA(t161) = t157.
      IF t161 IS INITIAL.
        t160 = abap_true.
      ELSEIF t161->has = abap_false.
        t160 = abap_true.
      ENDIF.
      IF t160 = abap_true.
        DATA t162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t162.
        t159 = t162.
      ELSE.
        DATA(t163) = VALUE abap_bool( ).
        DATA t164 TYPE string.
        DATA(t165) = t157.
        t164 = t165->value.
        DATA(t166) = |DATA(|.
        DATA(t167) = strlen( t164 ).
        DATA t168 TYPE i.
        DATA(t169) = VALUE i( ).
        DATA(t170) = VALUE string( ).
        t168 = strlen( t166 ).
        IF t168 = 0.
          t163 = abap_true.
        ELSEIF t168 <= t167.
          t169 = 0.
          t170 = t164+t169(t168).
          IF t170 = t166.
            t163 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t171) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t171->has = abap_true.
        t171->value = t163.
        t159 = t171.
      ENDIF.
      t156 = t159.
      IF t156 IS BOUND.
        IF t156->has = abap_true.
          t155 = xsdbool( t156->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t155 = abap_true.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA(t173) = abap_true.
        IF t173 = abap_true.
          DATA(t174) = VALUE string( ).
          DATA t175 TYPE string.
          DATA(t176) = t141.
          t175 = t176->value.
          DATA(t177) = 5.
          DATA t178 TYPE i.
          DATA t179 TYPE i.
          DATA t180 TYPE string.
          DATA(t181) = t141.
          t180 = t181->value.
          DATA(t182) = strlen( t180 ).
          t179 = t182.
          DATA(t183) = 6.
          t178 = t179 - t183.
          DATA(t184) = strlen( t175 ).
          IF t177 < 0.
            t177 = t177 + t184.
            IF t177 < 0.
              t177 = 0.
            ENDIF.
          ENDIF.
          IF t177 > t184 OR t178 <= 0.
            CLEAR t174.
          ELSE.
            IF t178 > t184 - t177.
              t178 = t184 - t177.
            ENDIF.
            t174 = t175+t177(t178).
          ENDIF.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = t174.
          t172 = t185.
        ELSE.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          t172 = t186.
        ENDIF.
        t141 = t172.
      ENDIF.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      DATA t189 TYPE REF TO zcl_lnt_expression_node.
      DATA t190 TYPE REF TO zcl_lnt_expression_node.
      DATA(t191) = t130.
      DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t190 = t191->find_first_expression( i_type_9913 = t192 ).
      t189 = t190.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = t189.
      IF t195 IS INITIAL.
        t194 = abap_true.
      ENDIF.
      IF t194 = abap_true.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t196.
        t193 = t196.
      ELSE.
        DATA t197 TYPE string.
        DATA t198 TYPE REF TO zcl_lnt_expression_node.
        DATA(t199) = t189.
        t198 = t199.
        t197 = t198->concat_tokens( ).
        DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t200->has = abap_true.
        t200->value = t197.
        t193 = t200.
      ENDIF.
      t188 = t193.
      t187 = t188.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = VALUE abap_bool( ).
      DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t205) = t141.
      t204 = t205.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      t206 = t207.
      DATA(t208) = VALUE abap_bool( ).
      DATA(t209) = t204.
      IF t209 IS INITIAL.
        t208 = abap_true.
      ELSEIF t209->has = abap_false.
        t208 = abap_true.
      ENDIF.
      t203 = t208.
      t202 = t203.
      IF t203 = abap_false.
        DATA(t210) = VALUE abap_bool( ).
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t212) = t187.
        t211 = t212.
        DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        t213 = t214.
        DATA(t215) = VALUE abap_bool( ).
        DATA(t216) = t211.
        IF t216 IS INITIAL.
          t215 = abap_true.
        ELSEIF t216->has = abap_false.
          t215 = abap_true.
        ENDIF.
        t210 = t215.
        t202 = t210.
      ENDIF.
      t201 = t202.
      IF t202 = abap_false.
        DATA(t217) = VALUE abap_bool( ).
        DATA t218 TYPE string.
        DATA t219 TYPE string.
        DATA(t220) = t141.
        t219 = t220->value.
        DATA(t221) = strlen( t219 ).
        t218 = t219.
        IF t218 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t218 TO UPPER CASE.
        ELSE.
          t218 = zlnt_runtime_uppe_91169605024d=>full( t218 ).
        ENDIF.
        DATA t222 TYPE string.
        DATA t223 TYPE string.
        DATA(t224) = t187.
        t223 = t224->value.
        DATA(t225) = strlen( t223 ).
        t222 = t223.
        IF t222 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t222 TO UPPER CASE.
        ELSE.
          t222 = zlnt_runtime_uppe_91169605024d=>full( t222 ).
        ENDIF.
        t217 = xsdbool( t218 <> t222 ).
        t201 = t217.
      ENDIF.
      IF t201 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t226.
      DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t227.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t229.
      DATA t230 TYPE REF TO zcl_lnt_expression_node.
      DATA t231 TYPE REF TO zcl_lnt_expression_node.
      DATA(t232) = t83.
      DATA(t233) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t231 = t232->find_first_expression( i_type_9913 = t233 ).
      t230 = t231.
      DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t234.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = t230.
      IF t236 IS INITIAL.
        t235 = abap_true.
      ENDIF.
      IF t235 = abap_true.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        t234 = t237.
      ELSE.
        DATA t238 TYPE string.
        DATA t239 TYPE REF TO zcl_lnt_expression_node.
        DATA(t240) = t230.
        t239 = t240.
        t238 = t239->concat_tokens( ).
        DATA(t241) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t241->has = abap_true.
        t241->value = t238.
        t234 = t241.
      ENDIF.
      t229 = t234.
      t228 = t229.
      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t242.
      DATA(t243) = VALUE abap_bool( ).
      DATA(t244) = t228.
      IF t244 IS INITIAL.
        t243 = abap_true.
      ELSEIF t244->has = abap_false.
        t243 = abap_true.
      ENDIF.
      IF t243 = abap_true.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t245.
        t242 = t245.
      ELSE.
        DATA t246 TYPE string.
        DATA t247 TYPE string.
        DATA(t248) = t228.
        t247 = t248->value.
        DATA(t249) = strlen( t247 ).
        t246 = t247.
        IF t246 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t246 TO UPPER CASE.
        ELSE.
          t246 = zlnt_runtime_uppe_91169605024d=>full( t246 ).
        ENDIF.
        DATA(t250) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t250->has = abap_true.
        t250->value = t246.
        t242 = t250.
      ENDIF.
      t227 = t242.
      t226 = t227.
      DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t251.
      DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t252.
      DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t253.
      DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t254.
      DATA t255 TYPE REF TO zcl_lnt_expression_node.
      DATA t256 TYPE REF TO zcl_lnt_expression_node.
      DATA(t257) = t130.
      DATA(t258) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t256 = t257->find_first_expression( i_type_9913 = t258 ).
      t255 = t256.
      DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t259.
      DATA(t260) = VALUE abap_bool( ).
      DATA(t261) = t255.
      IF t261 IS INITIAL.
        t260 = abap_true.
      ENDIF.
      IF t260 = abap_true.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        t259 = t262.
      ELSE.
        DATA t263 TYPE string.
        DATA t264 TYPE REF TO zcl_lnt_expression_node.
        DATA(t265) = t255.
        t264 = t265.
        t263 = t264->concat_tokens( ).
        DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t266->has = abap_true.
        t266->value = t263.
        t259 = t266.
      ENDIF.
      t254 = t259.
      t253 = t254.
      DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t267.
      DATA(t268) = VALUE abap_bool( ).
      DATA(t269) = t253.
      IF t269 IS INITIAL.
        t268 = abap_true.
      ELSEIF t269->has = abap_false.
        t268 = abap_true.
      ENDIF.
      IF t268 = abap_true.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        t267 = t270.
      ELSE.
        DATA t271 TYPE string.
        DATA t272 TYPE string.
        DATA(t273) = t253.
        t272 = t273->value.
        DATA(t274) = strlen( t272 ).
        t271 = t272.
        IF t271 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t271 TO UPPER CASE.
        ELSE.
          t271 = zlnt_runtime_uppe_91169605024d=>full( t271 ).
        ENDIF.
        DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t275->has = abap_true.
        t275->value = t271.
        t267 = t275.
      ENDIF.
      t252 = t267.
      t251 = t252.
      DATA(t276) = VALUE abap_bool( ).
      DATA(t277) = VALUE abap_bool( ).
      DATA(t278) = VALUE abap_bool( ).
      DATA(t279) = t226.
      DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t280.
      DATA(t281) = abap_true.
      IF t281 = abap_true.
        DATA(t282) = |ABAP_TRUE|.
        DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t283->has = abap_true.
        t283->value = t282.
        t280 = t283.
      ELSE.
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t284.
        t280 = t284.
      ENDIF.
      DATA(t285) = VALUE abap_bool( ).
      DATA(t286) = VALUE abap_bool( ).
      IF t279 IS BOUND.
        t285 = t279->has.
      ENDIF.
      IF t280 IS BOUND.
        t286 = t280->has.
      ENDIF.
      IF t285 = t286.
        IF t285 = abap_false.
          t278 = abap_true.
        ELSEIF t279->value = t280->value.
          t278 = abap_true.
        ENDIF.
      ENDIF.
      t277 = t278.
      IF t278 = abap_true.
        DATA(t287) = VALUE abap_bool( ).
        DATA(t288) = t251.
        DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t289.
        DATA(t290) = abap_true.
        IF t290 = abap_true.
          DATA(t291) = |ABAP_FALSE|.
          DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t292->has = abap_true.
          t292->value = t291.
          t289 = t292.
        ELSE.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          t289 = t293.
        ENDIF.
        DATA(t294) = VALUE abap_bool( ).
        DATA(t295) = VALUE abap_bool( ).
        IF t288 IS BOUND.
          t294 = t288->has.
        ENDIF.
        IF t289 IS BOUND.
          t295 = t289->has.
        ENDIF.
        IF t294 = t295.
          IF t294 = abap_false.
            t287 = abap_true.
          ELSEIF t288->value = t289->value.
            t287 = abap_true.
          ENDIF.
        ENDIF.
        t277 = t287.
      ENDIF.
      t276 = t277.
      IF t277 = abap_false.
        DATA(t296) = VALUE abap_bool( ).
        DATA(t297) = VALUE abap_bool( ).
        DATA(t298) = t226.
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t299.
        DATA(t300) = abap_true.
        IF t300 = abap_true.
          DATA(t301) = |ABAP_FALSE|.
          DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t302->has = abap_true.
          t302->value = t301.
          t299 = t302.
        ELSE.
          DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t303.
          t299 = t303.
        ENDIF.
        DATA(t304) = VALUE abap_bool( ).
        DATA(t305) = VALUE abap_bool( ).
        IF t298 IS BOUND.
          t304 = t298->has.
        ENDIF.
        IF t299 IS BOUND.
          t305 = t299->has.
        ENDIF.
        IF t304 = t305.
          IF t304 = abap_false.
            t297 = abap_true.
          ELSEIF t298->value = t299->value.
            t297 = abap_true.
          ENDIF.
        ENDIF.
        t296 = t297.
        IF t297 = abap_true.
          DATA(t306) = VALUE abap_bool( ).
          DATA(t307) = t251.
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t308.
          DATA(t309) = abap_true.
          IF t309 = abap_true.
            DATA(t310) = |ABAP_TRUE|.
            DATA(t311) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t311->has = abap_true.
            t311->value = t310.
            t308 = t311.
          ELSE.
            DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t312.
            t308 = t312.
          ENDIF.
          DATA(t313) = VALUE abap_bool( ).
          DATA(t314) = VALUE abap_bool( ).
          IF t307 IS BOUND.
            t313 = t307->has.
          ENDIF.
          IF t308 IS BOUND.
            t314 = t308->has.
          ENDIF.
          IF t313 = t314.
            IF t313 = abap_false.
              t306 = abap_true.
            ELSEIF t307->value = t308->value.
              t306 = abap_true.
            ENDIF.
          ENDIF.
          t296 = t306.
        ENDIF.
        t276 = t296.
      ENDIF.
      IF t276 = abap_true.
        DATA(t315) = VALUE string( ).
        DATA(t316) = VALUE string( ).
        DATA(t317) = VALUE abap_bool( ).
        DATA(t318) = VALUE abap_bool( ).
        DATA t319 TYPE REF TO zcl_lnt_abap_release.
        DATA t320 TYPE REF TO zif_lnt_configuration.
        DATA(t321) = me->reg.
        t320 = t321->get_config( ).
        t319 = t320->get_release( ).
        DATA t322 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t322.
        DATA t323 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t323.
        DATA t324 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t324.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t324 = zcl_lnt_version_module=>release_b8cd.
        DATA(t325) = |v740sp08|.
        t323 = t324->get( p0 = t325 ).
        t322 = t323.
        t318 = zcl_lnt_version_module=>release_at_least( i_running = t319 i_required = t322 ).
        t317 = t318.
        IF t318 = abap_false.
          DATA t326 TYPE abap_bool.
          DATA t327 TYPE string.
          DATA t328 TYPE REF TO zif_lnt_configuration.
          DATA(t329) = me->reg.
          t328 = t329->get_config( ).
          t327 = t328->get_language_version( ).
          DATA(t330) = |Cloud|.
          t326 = xsdbool( t327 = t330 ).
          t317 = t326.
        ENDIF.
        IF t317 = abap_true.
          DATA(t331) = |xsdbool|.
          t316 = t331.
        ELSE.
          DATA(t332) = |boolc|.
          t316 = t332.
        ENDIF.
        t315 = t316.
        DATA t333 TYPE abap_bool.
        DATA t334 TYPE abap_bool.
        DATA t335 TYPE string.
        DATA(t336) = t226.
        t335 = t336->value.
        DATA(t337) = |ABAP_FALSE|.
        t334 = xsdbool( t335 = t337 ).
        t333 = t334.
        DATA(t338) = VALUE string( ).
        DATA(t339) = VALUE string( ).
        DATA t340 TYPE string.
        DATA t341 TYPE string.
        DATA(t342) = |Use |.
        DATA(t343) = t315.
        DATA(t344) = strlen( t342 ).
        t341 = |{ t342 }{ t343 }|.
        DATA(t345) = | instead of IF|.
        DATA(t346) = strlen( t341 ).
        t340 = |{ t341 }{ t345 }|.
        DATA(t347) = VALUE string( ).
        DATA(t348) = t333.
        IF t348 = abap_true.
          DATA(t349) = |, negate expression|.
          t347 = t349.
        ELSE.
          DATA(t350) = ||.
          t347 = t350.
        ENDIF.
        DATA(t351) = strlen( t340 ).
        t339 = |{ t340 }{ t347 }|.
        t338 = t339.
        DATA t352 TYPE REF TO zcl_lnt_position.
        DATA t353 TYPE REF TO zcl_lnt_position.
        DATA t354 TYPE REF TO zcl_lnt_abstract_token.
        DATA t355 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t356) = t42.
        t355 = t356->get_first_token( ).
        t354 = t355.
        DATA t357 TYPE REF TO zcl_lnt_position.
        DATA(t358) = t354.
        t357 = t358->start.
        t353 = t357.
        t352 = t353.
        DATA t359 TYPE REF TO zcl_lnt_position.
        DATA t360 TYPE REF TO zcl_lnt_position.
        DATA t361 TYPE REF TO zcl_lnt_abstract_token.
        DATA t362 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t363) = t42.
        t362 = t363->get_last_token( ).
        t361 = t362.
        DATA t364 TYPE REF TO zcl_lnt_position.
        DATA t365 TYPE f.
        DATA t366 TYPE REF TO zcl_lnt_position.
        DATA t367 TYPE REF TO zcl_lnt_position.
        DATA(t368) = t361.
        t367 = t368->start.
        t366 = t367.
        DATA t369 TYPE f.
        DATA(t370) = t366.
        t369 = t370->row.
        t365 = t369.
        DATA t371 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t372 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t373 TYPE REF TO zcl_lnt_position.
        DATA t374 TYPE REF TO zcl_lnt_position.
        DATA(t375) = t361.
        t374 = t375->start.
        t373 = t374.
        DATA t376 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t377) = t373.
        t376 = t377->col.
        t372 = t376.
        DATA t378 TYPE f.
        DATA t379 TYPE i.
        DATA t380 TYPE string.
        DATA(t381) = t361.
        t380 = t381->str.
        DATA(t382) = strlen( t380 ).
        t379 = t382.
        t378 = t379.
        DATA(t383) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t383->has = abap_true.
        t383->value = t378.
        t371 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t372 right = t383 op = `+` ).
        t364 = NEW zcl_lnt_position( i_row = t365 i_col = t371 ).
        t360 = t364.
        t359 = t360.
        DATA(t384) = VALUE string( ).
        DATA(t385) = VALUE string( ).
        DATA(t386) = VALUE string( ).
        DATA(t387) = VALUE string( ).
        DATA(t388) = VALUE string( ).
        DATA t389 TYPE string.
        DATA t390 TYPE string.
        DATA t391 TYPE string.
        DATA t392 TYPE string.
        DATA(t393) = t141.
        t392 = t393->value.
        DATA(t394) = | = |.
        DATA(t395) = strlen( t392 ).
        t391 = |{ t392 }{ t394 }|.
        DATA(t396) = t315.
        DATA(t397) = strlen( t391 ).
        t390 = |{ t391 }{ t396 }|.
        DATA(t398) = |( |.
        DATA(t399) = strlen( t390 ).
        t389 = |{ t390 }{ t398 }|.
        DATA(t400) = VALUE string( ).
        DATA(t401) = t333.
        IF t401 = abap_true.
          DATA(t402) = |NOT ( |.
          t400 = t402.
        ELSE.
          DATA(t403) = ||.
          t400 = t403.
        ENDIF.
        DATA(t404) = strlen( t389 ).
        t388 = |{ t389 }{ t400 }|.
        DATA(t405) = VALUE string( ).
        DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t406.
        DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t407.
        DATA t408 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t408.
        DATA t409 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t409.
        DATA t410 TYPE REF TO zcl_lnt_statement_node.
        DATA t411 TYPE REF TO zcl_lnt_statement_node.
        DATA(t412) = t42.
        DATA(t413) = zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b.
        t411 = t412->find_first_statement( i_type_9913 = t413 ).
        t410 = t411.
        DATA t414 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t414.
        DATA(t415) = VALUE abap_bool( ).
        DATA(t416) = t410.
        IF t416 IS INITIAL.
          t415 = abap_true.
        ENDIF.
        IF t415 = abap_true.
          DATA t417 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t417.
          t414 = t417.
        ELSE.
          DATA t418 TYPE REF TO zcl_lnt_expression_node.
          DATA t419 TYPE REF TO zcl_lnt_statement_node.
          DATA(t420) = t410.
          t419 = t420.
          DATA(t421) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
          t418 = t419->find_first_expression( i_type_9913 = t421 ).
          t414 = t418.
        ENDIF.
        t409 = t414.
        t408 = t409.
        DATA t422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t422.
        DATA(t423) = VALUE abap_bool( ).
        DATA(t424) = t408.
        IF t424 IS INITIAL.
          t423 = abap_true.
        ENDIF.
        IF t423 = abap_true.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t425.
          t422 = t425.
        ELSE.
          DATA t426 TYPE string.
          DATA t427 TYPE REF TO zcl_lnt_expression_node.
          DATA(t428) = t408.
          t427 = t428.
          t426 = t427->concat_tokens( ).
          DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t429->has = abap_true.
          t429->value = t426.
          t422 = t429.
        ENDIF.
        t407 = t422.
        t406 = t407.
        DATA(t430) = VALUE string( ).
        DATA(t431) = VALUE abap_bool( ).
        DATA(t432) = t406.
        IF t432 IS INITIAL.
          t431 = abap_true.
        ELSEIF t432->has = abap_false.
          t431 = abap_true.
        ENDIF.
        IF t431 = abap_true.
          DATA(t433) = |undefined|.
          t430 = t433.
        ELSE.
          DATA t434 TYPE string.
          DATA(t435) = t406.
          t434 = t435->value.
          t430 = t434.
        ENDIF.
        t405 = t430.
        DATA(t436) = strlen( t388 ).
        t387 = |{ t388 }{ t405 }|.
        DATA(t437) = VALUE string( ).
        DATA(t438) = t333.
        IF t438 = abap_true.
          DATA(t439) = | )|.
          t437 = t439.
        ELSE.
          DATA(t440) = ||.
          t437 = t440.
        ENDIF.
        DATA(t441) = strlen( t387 ).
        t386 = |{ t387 }{ t437 }|.
        DATA(t442) = | ).|.
        DATA(t443) = strlen( t386 ).
        t385 = |{ t386 }{ t442 }|.
        t384 = t385.
        DATA t444 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t445 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t446) = t1.
        DATA(t447) = t352.
        DATA(t448) = t359.
        DATA(t449) = t384.
        t445 = zcl_lnt_edit_helper=>replace_range( i_file = t446 i_start = t447 i_end = t448 i_text = t449 ).
        t444 = t445.
        DATA(t450) = t2.
        DATA t451 TYPE REF TO zcl_lnt_issue.
        CLEAR t451.
        DATA(t452) = t1.
        DATA(t453) = t352.
        DATA(t454) = t359.
        DATA(t455) = t338.
        DATA(t456) = VALUE string( ).
        DATA t457 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t457.
        DATA t458 TYPE string.
        DATA(t459) = |use_bool_expression|.
        t458 = t459.
        DATA t460 TYPE string.
        DATA(t461) = |Use boolean expression|.
        t460 = t461.
        DATA t462 TYPE string.
        DATA(t463) = |Use boolean expression, xsdbool from 740sp08 and up, boolc f|.
        t463 = t463 && |rom 702 and up|.
        t462 = t463.
        DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t464.
        DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t465.
        DATA(t466) = abap_true.
        IF t466 = abap_true.
          DATA(t467) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t467 = t467 && |nABAP.md#use-xsdbool-to-set-boolean-variables|.
          DATA(t468) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t468->has = abap_true.
          t468->value = t467.
          t465 = t468.
        ELSE.
          DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t469.
          t465 = t469.
        ENDIF.
        t464 = t465.
        DATA t470 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t470.
        DATA t471 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t471.
        DATA(t472) = abap_true.
        IF t472 = abap_true.
          DATA t473 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t474 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t475 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t475.
          t474 = t475.
          DATA(t476) = t474.
          DATA(t477) = |Upport|.
          t476->load( ).
          APPEND t477 TO t476->items.
          t476->save( ).
          DATA(t478) = t474.
          DATA(t479) = |Styleguide|.
          t478->load( ).
          APPEND t479 TO t478->items.
          t478->save( ).
          DATA(t480) = t474.
          DATA(t481) = |Quickfix|.
          t480->load( ).
          APPEND t481 TO t480->items.
          t480->save( ).
          DATA(t482) = t474.
          DATA(t483) = |SingleFile|.
          t482->load( ).
          APPEND t483 TO t482->items.
          t482->save( ).
          DATA(t484) = t474.
          t473 = t484.
          t471 = t473.
        ELSE.
          DATA t485 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t485.
          t471 = t485.
        ENDIF.
        t470 = t471.
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t486.
        DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t487.
        DATA(t488) = abap_true.
        IF t488 = abap_true.
          DATA(t489) = |IF line IS INITIAL.\n  has_entries = abap_false.\nELSE.\n  has_|.
          t489 = t489 && |entries = abap_true.\nENDIF.\n\nDATA(fsdf) = COND #( WHEN foo <|.
          t489 = t489 && |> bar THEN abap_true ELSE abap_false ).|.
          DATA(t490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t490->has = abap_true.
          t490->value = t489.
          t487 = t490.
        ELSE.
          DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t491.
          t487 = t491.
        ENDIF.
        t486 = t487.
        DATA t492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t492.
        DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t493.
        DATA(t494) = abap_true.
        IF t494 = abap_true.
          DATA(t495) = |DATA(has_entries) = xsdbool( line IS NOT INITIAL ).\n\nDATA(fs|.
          t495 = t495 && |df) = xsdbool( foo <> bar ).|.
          DATA(t496) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t496->has = abap_true.
          t496->value = t495.
          t493 = t496.
        ELSE.
          DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t497.
          t493 = t497.
        ENDIF.
        t492 = t493.
        DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t499.
        t498 = t499.
        DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t501.
        t500 = t501.
        t457 = NEW zcl_lnt_irule_metadata( i_key = t458 i_title = t460 i_short_description = t462 i_bad_example = t486 i_good_example = t492 i_extended_information = t464 i_tags = t470 i_pragma = t498 i_pseudo_comment = t500 ).
        CREATE OBJECT t457->zlnt_view_ownkeys_b0e8086400eb.
        t457->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t502.
        IF t457->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t457->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t502 ).
        ENDIF.
        DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t503.
        IF t457->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t457->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t503 ).
        ENDIF.
        DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t504.
        IF t457->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t457->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t504 ).
        ENDIF.
        DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t505.
        IF t457->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t457->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t505 ).
        ENDIF.
        DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t506.
        IF t457->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t457->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t506 ).
        ENDIF.
        DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t507.
        IF t457->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t457->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t507 ).
        ENDIF.
        DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t508.
        IF t457->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t457->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t508 ).
        ENDIF.
        CREATE OBJECT t457->zlnt_json_ownkeys_70e5fd461788.
        t457->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t509) = |key|.
        DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t510.
        IF t457->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t457->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
        ENDIF.
        DATA(t511) = |title|.
        DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t512.
        IF t457->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t457->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
        ENDIF.
        DATA(t513) = |shortDescription|.
        DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t514.
        IF t457->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t457->zlnt_json_ownkeys_70e5fd461788->put( p0 = t513 p1 = t514 ).
        ENDIF.
        DATA(t515) = |extendedInformation|.
        DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t516.
        IF t457->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t457->zlnt_json_ownkeys_70e5fd461788->put( p0 = t515 p1 = t516 ).
        ENDIF.
        DATA(t517) = |tags|.
        DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t518.
        IF t457->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t457->zlnt_json_ownkeys_70e5fd461788->put( p0 = t517 p1 = t518 ).
        ENDIF.
        DATA(t519) = |badExample|.
        DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t520.
        IF t457->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t457->zlnt_json_ownkeys_70e5fd461788->put( p0 = t519 p1 = t520 ).
        ENDIF.
        DATA(t521) = |goodExample|.
        DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t522.
        IF t457->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t457->zlnt_json_ownkeys_70e5fd461788->put( p0 = t521 p1 = t522 ).
        ENDIF.
        t456 = t457->key.
        DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t524) = me->conf.
        t523 = t524->zlnt_view_read_sr_15c06369f827( ).
        DATA t525 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t525.
        DATA(t526) = abap_true.
        IF t526 = abap_true.
          DATA(t527) = t444.
          t525 = t527.
        ELSE.
          DATA t528 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t528.
          t525 = t528.
        ENDIF.
        DATA t529 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t529.
        t451 = zcl_lnt_issue=>at_range( i_file = t452 i_start = t453 i_end = t454 i_message_26cb = t455 i_key = t456 i_severity = t523 i_fix = t525 i_alternative_fixes = t529 ).
        t450->load( ).
        APPEND t451 TO t450->items.
        t450->save( ).
      ENDIF.
    ENDDO.
    DATA(t530) = VALUE abap_bool( ).
    DATA(t531) = VALUE abap_bool( ).
    DATA(t532) = t10.
    DATA t533 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t533.
    DATA t534 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t535.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t535 = zcl_lnt_version_module=>release_b8cd.
    DATA(t536) = |v740sp08|.
    t534 = t535->get( p0 = t536 ).
    t533 = t534.
    t531 = zcl_lnt_version_module=>release_at_least( i_running = t532 i_required = t533 ).
    t530 = t531.
    IF t531 = abap_false.
      DATA t537 TYPE abap_bool.
      DATA(t538) = t14.
      DATA(t539) = |Cloud|.
      t537 = xsdbool( t538 = t539 ).
      t530 = t537.
    ENDIF.
    IF t530 = abap_true.
      DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t541 TYPE REF TO zcl_lnt_structure_node.
      DATA(t542) = t4.
      t541 = t542.
      DATA(t543) = zlnt_runtime_desc_78196487750d=>zlnt_member_d138_55fd16dd4da4.
      t540 = t541->find_all_expressions( i_type_9913 = t543 ).
      DATA t544 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t544.
      DATA t545 TYPE REF TO object.
      CLEAR t545.
      DATA(t546) = VALUE i( ).
      DO.
        t540->load( ).
        IF t546 >= lines( t540->items ).
          EXIT.
        ENDIF.
        CLEAR t545.
        READ TABLE t540->items INDEX t546 + 1 INTO t545.
        t546 = t546 + 1.
        DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t547.
        CLEAR t544.
        IF t545 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t547 ?= t545.
          DATA t548 TYPE REF TO object.
          t548 = t547->as_ref( ).
          t544 ?= t548.
        ELSE.
          t544 ?= t545.
        ENDIF.
        DATA(t549) = VALUE string( ).
        DATA t550 TYPE string.
        DATA t551 TYPE string.
        DATA(t552) = t544.
        t551 = t552->concat_tokens( ).
        DATA(t553) = strlen( t551 ).
        t550 = t551.
        IF t550 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t550 TO UPPER CASE.
        ELSE.
          t550 = zlnt_runtime_uppe_91169605024d=>full( t550 ).
        ENDIF.
        t549 = t550.
        DATA(t554) = VALUE abap_bool( ).
        DATA(t555) = VALUE abap_bool( ).
        DATA(t556) = VALUE abap_bool( ).
        DATA(t557) = t549.
        DATA(t558) = | THEN ABAP_TRUE ELSE ABAP_FALSE|.
        DATA(t559) = strlen( t557 ).
        DATA t560 TYPE i.
        DATA(t561) = VALUE i( ).
        DATA(t562) = VALUE string( ).
        t560 = strlen( t558 ).
        IF t560 = 0.
          t556 = abap_true.
        ELSEIF t560 <= t559.
          t561 = 0.
          t561 = t559 - t560.
          t562 = t557+t561(t560).
          IF t562 = t558.
            t556 = abap_true.
          ENDIF.
        ENDIF.
        t555 = t556.
        IF t556 = abap_false.
          DATA(t563) = VALUE abap_bool( ).
          DATA(t564) = t549.
          DATA(t565) = | THEN ABAP_TRUE|.
          DATA(t566) = strlen( t564 ).
          DATA t567 TYPE i.
          DATA(t568) = VALUE i( ).
          DATA(t569) = VALUE string( ).
          t567 = strlen( t565 ).
          IF t567 = 0.
            t563 = abap_true.
          ELSEIF t567 <= t566.
            t568 = 0.
            t568 = t566 - t567.
            t569 = t564+t568(t567).
            IF t569 = t565.
              t563 = abap_true.
            ENDIF.
          ENDIF.
          t555 = t563.
        ENDIF.
        t554 = t555.
        IF t555 = abap_false.
          DATA(t570) = VALUE abap_bool( ).
          DATA(t571) = t549.
          DATA(t572) = | THEN ABAP_FALSE ELSE ABAP_TRUE|.
          DATA(t573) = strlen( t571 ).
          DATA t574 TYPE i.
          DATA(t575) = VALUE i( ).
          DATA(t576) = VALUE string( ).
          t574 = strlen( t572 ).
          IF t574 = 0.
            t570 = abap_true.
          ELSEIF t574 <= t573.
            t575 = 0.
            t575 = t573 - t574.
            t576 = t571+t575(t574).
            IF t576 = t572.
              t570 = abap_true.
            ENDIF.
          ENDIF.
          t554 = t570.
        ENDIF.
        IF t554 = abap_true.
          DATA t577 TYPE string.
          DATA(t578) = |Use xsdbool|.
          t577 = t578.
          DATA(t579) = t2.
          DATA t580 TYPE REF TO zcl_lnt_issue.
          CLEAR t580.
          DATA(t581) = t1.
          DATA t582 TYPE REF TO zcl_lnt_position.
          DATA t583 TYPE REF TO zcl_lnt_abstract_token.
          DATA t584 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t585) = t544.
          t584 = t585->get_first_token( ).
          t583 = t584.
          DATA t586 TYPE REF TO zcl_lnt_position.
          DATA(t587) = t583.
          t586 = t587->start.
          t582 = t586.
          DATA t588 TYPE REF TO zcl_lnt_position.
          DATA t589 TYPE REF TO zcl_lnt_abstract_token.
          DATA t590 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t591) = t544.
          t590 = t591->get_last_token( ).
          t589 = t590.
          DATA t592 TYPE REF TO zcl_lnt_position.
          DATA t593 TYPE f.
          DATA t594 TYPE REF TO zcl_lnt_position.
          DATA t595 TYPE REF TO zcl_lnt_position.
          DATA(t596) = t589.
          t595 = t596->start.
          t594 = t595.
          DATA t597 TYPE f.
          DATA(t598) = t594.
          t597 = t598->row.
          t593 = t597.
          DATA t599 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t600 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t601 TYPE REF TO zcl_lnt_position.
          DATA t602 TYPE REF TO zcl_lnt_position.
          DATA(t603) = t589.
          t602 = t603->start.
          t601 = t602.
          DATA t604 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t605) = t601.
          t604 = t605->col.
          t600 = t604.
          DATA t606 TYPE f.
          DATA t607 TYPE i.
          DATA t608 TYPE string.
          DATA(t609) = t589.
          t608 = t609->str.
          DATA(t610) = strlen( t608 ).
          t607 = t610.
          t606 = t607.
          DATA(t611) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t611->has = abap_true.
          t611->value = t606.
          t599 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t600 right = t611 op = `+` ).
          t592 = NEW zcl_lnt_position( i_row = t593 i_col = t599 ).
          t588 = t592.
          DATA(t612) = t577.
          DATA(t613) = VALUE string( ).
          DATA t614 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t614.
          DATA t615 TYPE string.
          DATA(t616) = |use_bool_expression|.
          t615 = t616.
          DATA t617 TYPE string.
          DATA(t618) = |Use boolean expression|.
          t617 = t618.
          DATA t619 TYPE string.
          DATA(t620) = |Use boolean expression, xsdbool from 740sp08 and up, boolc f|.
          t620 = t620 && |rom 702 and up|.
          t619 = t620.
          DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t621.
          DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t622.
          DATA(t623) = abap_true.
          IF t623 = abap_true.
            DATA(t624) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t624 = t624 && |nABAP.md#use-xsdbool-to-set-boolean-variables|.
            DATA(t625) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t625->has = abap_true.
            t625->value = t624.
            t622 = t625.
          ELSE.
            DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t626.
            t622 = t626.
          ENDIF.
          t621 = t622.
          DATA t627 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t627.
          DATA t628 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t628.
          DATA(t629) = abap_true.
          IF t629 = abap_true.
            DATA t630 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t631 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t632 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t632.
            t631 = t632.
            DATA(t633) = t631.
            DATA(t634) = |Upport|.
            t633->load( ).
            APPEND t634 TO t633->items.
            t633->save( ).
            DATA(t635) = t631.
            DATA(t636) = |Styleguide|.
            t635->load( ).
            APPEND t636 TO t635->items.
            t635->save( ).
            DATA(t637) = t631.
            DATA(t638) = |Quickfix|.
            t637->load( ).
            APPEND t638 TO t637->items.
            t637->save( ).
            DATA(t639) = t631.
            DATA(t640) = |SingleFile|.
            t639->load( ).
            APPEND t640 TO t639->items.
            t639->save( ).
            DATA(t641) = t631.
            t630 = t641.
            t628 = t630.
          ELSE.
            DATA t642 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t642.
            t628 = t642.
          ENDIF.
          t627 = t628.
          DATA t643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t643.
          DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t644.
          DATA(t645) = abap_true.
          IF t645 = abap_true.
            DATA(t646) = |IF line IS INITIAL.\n  has_entries = abap_false.\nELSE.\n  has_|.
            t646 = t646 && |entries = abap_true.\nENDIF.\n\nDATA(fsdf) = COND #( WHEN foo <|.
            t646 = t646 && |> bar THEN abap_true ELSE abap_false ).|.
            DATA(t647) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t647->has = abap_true.
            t647->value = t646.
            t644 = t647.
          ELSE.
            DATA t648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t648.
            t644 = t648.
          ENDIF.
          t643 = t644.
          DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t649.
          DATA t650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t650.
          DATA(t651) = abap_true.
          IF t651 = abap_true.
            DATA(t652) = |DATA(has_entries) = xsdbool( line IS NOT INITIAL ).\n\nDATA(fs|.
            t652 = t652 && |df) = xsdbool( foo <> bar ).|.
            DATA(t653) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t653->has = abap_true.
            t653->value = t652.
            t650 = t653.
          ELSE.
            DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t654.
            t650 = t654.
          ENDIF.
          t649 = t650.
          DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t656.
          t655 = t656.
          DATA t657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t658.
          t657 = t658.
          t614 = NEW zcl_lnt_irule_metadata( i_key = t615 i_title = t617 i_short_description = t619 i_bad_example = t643 i_good_example = t649 i_extended_information = t621 i_tags = t627 i_pragma = t655 i_pseudo_comment = t657 ).
          CREATE OBJECT t614->zlnt_view_ownkeys_b0e8086400eb.
          t614->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t659.
          IF t614->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t614->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t659 ).
          ENDIF.
          DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t660.
          IF t614->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t614->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t660 ).
          ENDIF.
          DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t661.
          IF t614->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t614->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t661 ).
          ENDIF.
          DATA t662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t662.
          IF t614->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t614->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t662 ).
          ENDIF.
          DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t663.
          IF t614->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t614->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t663 ).
          ENDIF.
          DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t664.
          IF t614->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t614->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t664 ).
          ENDIF.
          DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t665.
          IF t614->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t614->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t665 ).
          ENDIF.
          CREATE OBJECT t614->zlnt_json_ownkeys_70e5fd461788.
          t614->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t666) = |key|.
          DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t667.
          IF t614->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t614->zlnt_json_ownkeys_70e5fd461788->put( p0 = t666 p1 = t667 ).
          ENDIF.
          DATA(t668) = |title|.
          DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t669.
          IF t614->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t614->zlnt_json_ownkeys_70e5fd461788->put( p0 = t668 p1 = t669 ).
          ENDIF.
          DATA(t670) = |shortDescription|.
          DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t671.
          IF t614->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t614->zlnt_json_ownkeys_70e5fd461788->put( p0 = t670 p1 = t671 ).
          ENDIF.
          DATA(t672) = |extendedInformation|.
          DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t673.
          IF t614->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t614->zlnt_json_ownkeys_70e5fd461788->put( p0 = t672 p1 = t673 ).
          ENDIF.
          DATA(t674) = |tags|.
          DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t675.
          IF t614->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t614->zlnt_json_ownkeys_70e5fd461788->put( p0 = t674 p1 = t675 ).
          ENDIF.
          DATA(t676) = |badExample|.
          DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t677.
          IF t614->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t614->zlnt_json_ownkeys_70e5fd461788->put( p0 = t676 p1 = t677 ).
          ENDIF.
          DATA(t678) = |goodExample|.
          DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t679.
          IF t614->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t614->zlnt_json_ownkeys_70e5fd461788->put( p0 = t678 p1 = t679 ).
          ENDIF.
          t613 = t614->key.
          DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t681) = me->conf.
          t680 = t681->zlnt_view_read_sr_15c06369f827( ).
          DATA t682 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t682.
          DATA t683 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t683.
          t580 = zcl_lnt_issue=>at_range( i_file = t581 i_start = t582 i_end = t588 i_message_26cb = t612 i_key = t613 i_severity = t680 i_fix = t682 i_alternative_fixes = t683 ).
          t579->load( ).
          APPEND t580 TO t579->items.
          t579->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t684) = t2.
    result = t684.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_us_bl_exprssn_cnf( me->g_c_i_s_r_us_bl_ex_ts_us_bl_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_us_bl_exprssn_cnf( me->g_c_i_s_r_us_bl_ex_ts_us_bl_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_us_bl_exprssn_cnf.
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
        t1 = NEW zcl_lnt_us_bl_exprssn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_us_bl_ex_ts_us_bl_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_us_bl_ex_ts_us_bl_ex( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1765_8a352a038d7a.
  ENDMETHOD.
ENDCLASS.
