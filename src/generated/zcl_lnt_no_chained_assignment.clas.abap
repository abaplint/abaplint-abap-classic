* TS: src/rules/no_chained_assignment.ts:14:1 NoChainedAssignment
CLASS zcl_lnt_no_chained_assignment DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_chnd_assgnmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_sr_rl_n_ch_as_ts_n_ch_as RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_chnd_assgnmnt_cnf.
    METHODS s_c_i_sr_rl_n_ch_as_ts_n_ch_as IMPORTING i_conf TYPE REF TO zcl_lnt_n_chnd_assgnmnt_cnf.
    METHODS r_p_i_sr_rl_n_ch_as_ts_n_ch_as IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_e8b6ad3e9ab4 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_no_chained_assignment IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_n_chnd_assgnmnt_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |no_chained_assignment|.
    DATA t4 TYPE string.
    t4 = |No chained assignment|.
    DATA t6 TYPE string.
    t6 = |Find chained assingments and reports issues|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#dont-chain-assignments|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Styleguide|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |Quickfix|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |var1 = var2 = var3.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t37) = |var2 = var3.\nvar1 = var2.|.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = t37.
    t34 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_sr_rl_n_ch_as_ts_n_ch_as.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_ch_as_ts_n_ch_as.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_ch_as_ts_n_ch_as.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
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
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zif_lnt_statement.
      t16 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_move ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE i.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t20 = t9->find_direct_expressions( i_type_9913 = t22 ).
      t20->load( ).
      t19 = lines( t20->items ).
      DATA(t23) = 2.
      t18 = xsdbool( t19 >= t23 ).
      IF t18 = abap_true.
        DATA(t25) = |No chained assignment|.
        DATA t27 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t27 = me->build_fix( i_file = t1 i_node = t9 ).
        DATA t31 TYPE REF TO zcl_lnt_issue.
        CLEAR t31.
        DATA(t35) = VALUE string( ).
        DATA t36 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t36.
        DATA t37 TYPE string.
        t37 = |no_chained_assignment|.
        DATA t39 TYPE string.
        t39 = |No chained assignment|.
        DATA t41 TYPE string.
        t41 = |Find chained assingments and reports issues|.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA(t46) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t46 = t46 && |nABAP.md#dont-chain-assignments|.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t46.
        t43 = t47.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t49.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t54.
        t53 = t54.
        DATA(t56) = |SingleFile|.
        t53->load( ).
        APPEND t56 TO t53->items.
        t53->save( ).
        DATA(t58) = |Styleguide|.
        t53->load( ).
        APPEND t58 TO t53->items.
        t53->save( ).
        DATA(t60) = |Quickfix|.
        t53->load( ).
        APPEND t60 TO t53->items.
        t53->save( ).
        t49 = t53.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t66) = |var1 = var2 = var3.|.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t66.
        t63 = t67.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA(t72) = |var2 = var3.\nvar1 = var2.|.
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = t72.
        t69 = t73.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        t36 = NEW zcl_lnt_irule_metadata( i_key = t37 i_title = t39 i_short_description = t41 i_bad_example = t63 i_good_example = t69 i_extended_information = t43 i_tags = t49 i_pragma = t75 i_pseudo_comment = t77 ).
        CREATE OBJECT t36->zlnt_view_ownkeys_b0e8086400eb.
        t36->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t79 ).
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t80 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t81 ).
        ENDIF.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t82 ).
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t83 ).
        ENDIF.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t84 ).
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t85 ).
        ENDIF.
        CREATE OBJECT t36->zlnt_json_ownkeys_70e5fd461788.
        t36->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t86) = |key|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        DATA(t88) = |title|.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
        ENDIF.
        DATA(t90) = |shortDescription|.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
        ENDIF.
        DATA(t92) = |extendedInformation|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        ENDIF.
        DATA(t94) = |tags|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        DATA(t96) = |badExample|.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
        ENDIF.
        DATA(t98) = |goodExample|.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
        ENDIF.
        t35 = t36->key.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t101) = CAST zcl_lnt_n_chnd_assgnmnt_cnf( me->g_c_i_sr_rl_n_ch_as_ts_n_ch_as( ) ).
        t100 = t101->zlnt_view_read_sr_15c06369f827( ).
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t103.
        t31 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t9 i_message_26cb = t25 i_key = t35 i_severity = t100 i_fix = t27 i_alternative_fixes = t103 ).
        t2->load( ).
        APPEND t31 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = t2.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
    t4 ?= t5.
    t3 = t4.
    DATA t10 TYPE string.
    t10 = ||.
    DATA t12 TYPE i.
    DATA t13 TYPE i.
    DATA t14 TYPE i.
    t3->load( ).
    t14 = lines( t3->items ).
    DATA(t16) = 4.
    t13 = t14 - t16.
    t12 = t13.
    DO.
      DATA t17 TYPE abap_bool.
      DATA(t19) = 0.
      t17 = xsdbool( t12 >= t19 ).
      IF t17 = abap_false.
        EXIT.
      ENDIF.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA(t22) = VALUE string( ).
      DATA(t23) = VALUE string( ).
      DATA(t24) = VALUE string( ).
      DATA(t25) = VALUE string( ).
      DATA t26 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t26.
      DATA(t28) = t12.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      t3->load( ).
      CLEAR t29.
      READ TABLE t3->items INDEX t28 INTO t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t26.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t29.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t26 ?= t31.
      ELSE.
        t26 ?= t29.
      ENDIF.
      t25 = t26->concat_tokens( ).
      DATA(t32) = | |.
      DATA(t33) = strlen( t25 ).
      t24 = |{ t25 }{ t32 }|.
      DATA(t34) = VALUE string( ).
      DATA t35 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t35.
      DATA t37 TYPE i.
      DATA(t39) = 1.
      t37 = t12 + t39.
      t37 = t37 + 1.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      t3->load( ).
      CLEAR t40.
      READ TABLE t3->items INDEX t37 INTO t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t35.
      IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t40.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t35 ?= t42.
      ELSE.
        t35 ?= t40.
      ENDIF.
      t34 = t35->concat_tokens( ).
      DATA(t43) = strlen( t24 ).
      t23 = |{ t24 }{ t34 }|.
      DATA(t44) = | |.
      DATA(t45) = strlen( t23 ).
      t22 = |{ t23 }{ t44 }|.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t47.
      DATA t49 TYPE i.
      DATA(t51) = 2.
      t49 = t12 + t51.
      t49 = t49 + 1.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      t3->load( ).
      CLEAR t52.
      READ TABLE t3->items INDEX t49 INTO t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t47.
      IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t52.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t47 ?= t54.
      ELSE.
        t47 ?= t52.
      ENDIF.
      t46 = t47->concat_tokens( ).
      DATA(t55) = strlen( t22 ).
      t21 = |{ t22 }{ t46 }|.
      t20 = t21.
      DATA t56 TYPE string.
      DATA(t57) = t10.
      DATA t58 TYPE string.
      DATA(t60) = |.\n|.
      DATA(t61) = strlen( t20 ).
      t58 = |{ t20 }{ t60 }|.
      DATA(t62) = strlen( t57 ).
      t56 = |{ t57 }{ t58 }|.
      t10 = t56.
      DATA t63 TYPE i.
      DATA(t65) = 2.
      t63 = t12 - t65.
      t12 = t63.
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t70 TYPE REF TO zcl_lnt_position.
    DATA t75 TYPE REF TO zcl_lnt_abstract_token.
    t75 = t2->get_first_token( ).
    DATA t77 TYPE REF TO zcl_lnt_position.
    t77 = t75->start.
    t70 = t77.
    DATA t79 TYPE REF TO zcl_lnt_position.
    DATA t84 TYPE REF TO zcl_lnt_abstract_token.
    t84 = t2->get_last_token( ).
    DATA t87 TYPE REF TO zcl_lnt_abstract_token.
    t87 = t84.
    DATA t89 TYPE REF TO zcl_lnt_position.
    DATA t90 TYPE f.
    DATA t92 TYPE REF TO zcl_lnt_position.
    t92 = t87->start.
    DATA t94 TYPE f.
    t94 = t92->row.
    t90 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t99 TYPE REF TO zcl_lnt_position.
    t99 = t87->start.
    DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t101 = t99->col.
    t97 = t101.
    DATA t103 TYPE f.
    DATA t105 TYPE string.
    t105 = t87->str.
    t103 = strlen( t105 ).
    DATA(t108) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t108->has = abap_true.
    t108->value = t103.
    t96 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t97 right = t108 op = `+` ).
    t89 = NEW zcl_lnt_position( i_row = t90 i_col = t96 ).
    t79 = t89.
    DATA(t109) = VALUE string( ).
    DATA(t111) = strlen( t10 ).
    DATA t112 TYPE i.
    DATA t113 TYPE i.
    t112 = 0.
    t113 = t111.
    DATA(t114) = VALUE i( ).
    DATA(t115) = VALUE i( ).
    DATA(t116) = VALUE string( ).
    WHILE t113 > t112.
      t115 = t113 - 1.
      t116 = t10+t115(1).
      DATA t117 TYPE c LENGTH 1.
      CLEAR t117.
      DATA(t118) = VALUE xstring( ).
      DATA t119 TYPE x LENGTH 1.
      CLEAR t119.
      DATA t120 TYPE x LENGTH 1.
      CLEAR t120.
      DATA(t121) = VALUE i( ).
      t117 = t116.
      t114 = cl_abap_conv_out_ce=>uccpi( t117 ).
      IF t114 >= 255.
        IF zlnt_builtin_code_e8b6ad3e9ab4 IS NOT BOUND.
          zlnt_builtin_code_e8b6ad3e9ab4 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_e8b6ad3e9ab4->convert( EXPORTING data = t116 IMPORTING buffer = t118 ).
        t119 = t118(1).
        t120 = t118+1(1).
        t114 = t119.
        t121 = t120.
        t114 = t114 + t121 * 256.
      ENDIF.
      IF t114 = 9 OR t114 = 10 OR t114 = 11 OR t114 = 12 OR t114 = 13 OR t114 = 32 OR t114 = 160 OR t114 = 5760 OR t114 = 8232 OR t114 = 8233 OR t114 = 8239 OR t114 = 8287 OR t114 = 12288 OR t114 = 65279 OR t114 >= 8192 AND t114 <= 8202.
        t113 = t113 - 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    IF t113 > t112.
      t111 = t113 - t112.
      t109 = t10+t112(t111).
    ELSE.
      CLEAR t109.
    ENDIF.
    t68 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t70 i_end = t79 i_text = t109 ).
    result = t68.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_n_chnd_assgnmnt_cnf( me->g_c_i_sr_rl_n_ch_as_ts_n_ch_as( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_n_chnd_assgnmnt_cnf( me->g_c_i_sr_rl_n_ch_as_ts_n_ch_as( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_chnd_assgnmnt_cnf.
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
        t1 = NEW zcl_lnt_n_chnd_assgnmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_ch_as_ts_n_ch_as( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_ch_as_ts_n_ch_as( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1607_00ba045497ec.
  ENDMETHOD.
ENDCLASS.
