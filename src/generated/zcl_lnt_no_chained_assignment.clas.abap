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
    DATA(t1) = NEW zcl_lnt_n_chnd_assgnmnt_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_chained_assignment|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No chained assignment|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Find chained assingments and reports issues|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#dont-chain-assignments|.
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
      DATA(t31) = |var1 = var2 = var3.|.
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
      DATA(t37) = |var2 = var3.\nvar1 = var2.|.
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

  METHOD g_c_i_sr_rl_n_ch_as_ts_n_ch_as.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_ch_as_ts_n_ch_as.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_ch_as_ts_n_ch_as.
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
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA(t17) = t9.
      t16 = t17->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_move ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE i.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = t9.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t20 = t21->find_direct_expressions( i_type_9913 = t22 ).
      t20->load( ).
      t19 = lines( t20->items ).
      DATA(t23) = 2.
      t18 = xsdbool( t19 >= t23 ).
      IF t18 = abap_true.
        DATA t24 TYPE string.
        DATA(t25) = |No chained assignment|.
        t24 = t25.
        DATA t26 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t27 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t28) = t1.
        DATA(t29) = t9.
        t27 = me->build_fix( i_file = t28 i_node = t29 ).
        t26 = t27.
        DATA t30 TYPE REF TO zcl_lnt_issue.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_issue.
        CLEAR t31.
        DATA(t32) = t1.
        DATA(t33) = t9.
        DATA(t34) = t24.
        DATA(t35) = VALUE string( ).
        DATA t36 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t36.
        DATA t37 TYPE string.
        DATA(t38) = |no_chained_assignment|.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = |No chained assignment|.
        t39 = t40.
        DATA t41 TYPE string.
        DATA(t42) = |Find chained assingments and reports issues|.
        t41 = t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA(t46) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t46 = t46 && |nABAP.md#dont-chain-assignments|.
          DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t47->has = abap_true.
          t47->value = t46.
          t44 = t47.
        ELSE.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          t44 = t48.
        ENDIF.
        t43 = t44.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t54.
          t53 = t54.
          DATA(t55) = t53.
          DATA(t56) = |SingleFile|.
          t55->load( ).
          APPEND t56 TO t55->items.
          t55->save( ).
          DATA(t57) = t53.
          DATA(t58) = |Styleguide|.
          t57->load( ).
          APPEND t58 TO t57->items.
          t57->save( ).
          DATA(t59) = t53.
          DATA(t60) = |Quickfix|.
          t59->load( ).
          APPEND t60 TO t59->items.
          t59->save( ).
          DATA(t61) = t53.
          t52 = t61.
          t50 = t52.
        ELSE.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t62.
          t50 = t62.
        ENDIF.
        t49 = t50.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA(t66) = |var1 = var2 = var3.|.
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t66.
          t64 = t67.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t64 = t68.
        ENDIF.
        t63 = t64.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA(t71) = abap_true.
        IF t71 = abap_true.
          DATA(t72) = |var2 = var3.\nvar1 = var2.|.
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t72.
          t70 = t73.
        ELSE.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          t70 = t74.
        ENDIF.
        t69 = t70.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        t75 = t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        t77 = t78.
        t36 = NEW zcl_lnt_irule_metadata( i_key = t37 i_title = t39 i_short_description = t41 i_bad_example = t63 i_good_example = t69 i_extended_information = t43 i_tags = t49 i_pragma = t75 i_pseudo_comment = t77 ).
        CREATE OBJECT t36->zlnt_view_ownkeys_b0e8086400eb.
        t36->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t79 ).
        ENDIF.
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
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
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
        DATA(t102) = t26.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t103.
        t31 = zcl_lnt_issue=>at_statement( i_file = t32 i_statement = t33 i_message_26cb = t34 i_key = t35 i_severity = t100 i_fix = t102 i_alternative_fixes = t103 ).
        t30 = t31.
        DATA(t104) = t2.
        DATA(t105) = t30.
        t104->load( ).
        APPEND t105 TO t104->items.
        t104->save( ).
      ENDIF.
    ENDDO.
    DATA(t106) = t2.
    result = t106.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = t2.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    t3 = t4.
    DATA t10 TYPE string.
    DATA(t11) = ||.
    t10 = t11.
    DATA t12 TYPE i.
    DATA t13 TYPE i.
    DATA t14 TYPE i.
    DATA(t15) = t3.
    t15->load( ).
    t14 = lines( t15->items ).
    DATA(t16) = 4.
    t13 = t14 - t16.
    t12 = t13.
    DO.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t12.
      DATA(t19) = 0.
      t17 = xsdbool( t18 >= t19 ).
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
      DATA(t27) = t3.
      DATA(t28) = t12.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      t27->load( ).
      CLEAR t29.
      READ TABLE t27->items INDEX t28 INTO t29.
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
      DATA(t36) = t3.
      DATA t37 TYPE i.
      DATA(t38) = t12.
      DATA(t39) = 1.
      t37 = t38 + t39.
      t37 = t37 + 1.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      t36->load( ).
      CLEAR t40.
      READ TABLE t36->items INDEX t37 INTO t40.
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
      DATA(t48) = t3.
      DATA t49 TYPE i.
      DATA(t50) = t12.
      DATA(t51) = 2.
      t49 = t50 + t51.
      t49 = t49 + 1.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      t48->load( ).
      CLEAR t52.
      READ TABLE t48->items INDEX t49 INTO t52.
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
      DATA(t59) = t20.
      DATA(t60) = |.\n|.
      DATA(t61) = strlen( t59 ).
      t58 = |{ t59 }{ t60 }|.
      DATA(t62) = strlen( t57 ).
      t56 = |{ t57 }{ t58 }|.
      t10 = t56.
      DATA t63 TYPE i.
      DATA(t64) = t12.
      DATA(t65) = 2.
      t63 = t64 - t65.
      t12 = t63.
    ENDDO.
    DATA t66 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t66.
    DATA(t67) = abap_true.
    IF t67 = abap_true.
      DATA t68 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t68.
      DATA(t69) = t1.
      DATA t70 TYPE REF TO zcl_lnt_position.
      DATA t71 TYPE REF TO zcl_lnt_statement_node.
      DATA(t72) = t2.
      t71 = t72.
      DATA t73 TYPE REF TO zcl_lnt_position.
      DATA t74 TYPE REF TO zcl_lnt_abstract_token.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t76) = t71.
      t75 = t76->get_first_token( ).
      t74 = t75.
      DATA t77 TYPE REF TO zcl_lnt_position.
      DATA(t78) = t74.
      t77 = t78->start.
      t73 = t77.
      t70 = t73.
      DATA t79 TYPE REF TO zcl_lnt_position.
      DATA t80 TYPE REF TO zcl_lnt_statement_node.
      DATA(t81) = t2.
      t80 = t81.
      DATA t82 TYPE REF TO zcl_lnt_position.
      DATA t83 TYPE REF TO zcl_lnt_abstract_token.
      DATA t84 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t85) = t80.
      t84 = t85->get_last_token( ).
      t83 = t84.
      DATA t86 TYPE REF TO zcl_lnt_position.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t88) = t83.
      t87 = t88.
      DATA t89 TYPE REF TO zcl_lnt_position.
      DATA t90 TYPE f.
      DATA t91 TYPE REF TO zcl_lnt_position.
      DATA t92 TYPE REF TO zcl_lnt_position.
      DATA(t93) = t87.
      t92 = t93->start.
      t91 = t92.
      DATA t94 TYPE f.
      DATA(t95) = t91.
      t94 = t95->row.
      t90 = t94.
      DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t98 TYPE REF TO zcl_lnt_position.
      DATA t99 TYPE REF TO zcl_lnt_position.
      DATA(t100) = t87.
      t99 = t100->start.
      t98 = t99.
      DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t102) = t98.
      t101 = t102->col.
      t97 = t101.
      DATA t103 TYPE f.
      DATA t104 TYPE i.
      DATA t105 TYPE string.
      DATA(t106) = t87.
      t105 = t106->str.
      DATA(t107) = strlen( t105 ).
      t104 = t107.
      t103 = t104.
      DATA(t108) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t108->has = abap_true.
      t108->value = t103.
      t96 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t97 right = t108 op = `+` ).
      t89 = NEW zcl_lnt_position( i_row = t90 i_col = t96 ).
      t86 = t89.
      t82 = t86.
      t79 = t82.
      DATA(t109) = VALUE string( ).
      DATA(t110) = t10.
      DATA(t111) = strlen( t110 ).
      DATA t112 TYPE i.
      DATA t113 TYPE i.
      t112 = 0.
      t113 = t111.
      DATA(t114) = VALUE i( ).
      DATA(t115) = VALUE i( ).
      DATA(t116) = VALUE string( ).
      WHILE t113 > t112.
        t115 = t113 - 1.
        t116 = t110+t115(1).
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
        t109 = t110+t112(t111).
      ELSE.
        CLEAR t109.
      ENDIF.
      t68 = zcl_lnt_edit_helper=>replace_range( i_file = t69 i_start = t70 i_end = t79 i_text = t109 ).
      t66 = t68.
    ELSE.
      DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t122.
      t66 = t122.
    ENDIF.
    result = t66.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_chnd_assgnmnt_cnf( me->g_c_i_sr_rl_n_ch_as_ts_n_ch_as( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_chnd_assgnmnt_cnf( me->g_c_i_sr_rl_n_ch_as_ts_n_ch_as( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_chnd_assgnmnt_cnf.
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
        t1 = NEW zcl_lnt_n_chnd_assgnmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_ch_as_ts_n_ch_as( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_ch_as_ts_n_ch_as( i_file = i_file ) ).
    result = t1.

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
