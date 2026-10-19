* TS: src/rules/double_space.ts:27:1 DoubleSpace
CLASS zcl_lnt_double_space DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_double_space_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_db_sp_ts_db_spc RETURNING VALUE(result) TYPE REF TO zcl_lnt_double_space_conf.
    METHODS st_cn_in_sr_rl_db_sp_ts_db_spc IMPORTING i_conf TYPE REF TO zcl_lnt_double_space_conf.
    METHODS rn_pr_in_sr_rl_db_sp_ts_db_spc IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_after_colon IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_paren IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS pragma_in_range IMPORTING i_pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_keywords IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_double_space IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_double_space_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |double_space|.
    DATA t4 TYPE string.
    t4 = |Double space|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that only a single space follows certain common state|.
    t7 = t7 && |ments.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Whitespace|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Quickfix|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    DATA(t19) = |SingleFile|.
    t12->load( ).
    APPEND t19 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = |DATA  foo TYPE i.|.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t25.
    t22 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |DATA foo TYPE i.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Remove double space|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_db_sp_ts_db_spc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_db_sp_ts_db_spc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_b77f70a074af( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t5 IS INITIAL ).
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t13) = NEW zcl_lnt_double_space_conf( ).
      t12 = t13->zlnt_view_read_sr_b77f70a074af( ).
      t11->zlnt_view_write_s_37b40751ec20( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_db_sp_ts_db_spc.
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
      DATA t15 TYPE REF TO zif_lnt_statement.
      t15 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_native_sql ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      t23 = me->conf->zlnt_view_read_sr_abd40c6b7e93( ).
      t22 = xsdbool( t23 = abap_true ).
      t21 = t22.
      IF t22 = abap_true.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE REF TO zif_lnt_statement.
        t28 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_unknown ).
        t26 = xsdbool( t27 = abap_false ).
        t21 = t26.
      ENDIF.
      t20 = t21.
      IF t21 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zif_lnt_statement.
        t32 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_method_def ).
        t30 = xsdbool( t31 = abap_false ).
        t20 = t30.
      ENDIF.
      t19 = t20.
      IF t20 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE REF TO zif_lnt_statement.
        t36 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_macro_call ).
        t34 = xsdbool( t35 = abap_false ).
        t19 = t34.
      ENDIF.
      t18 = t19.
      IF t19 = abap_true.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE REF TO zif_lnt_statement.
        t40 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_events ).
        t38 = xsdbool( t39 = abap_false ).
        t18 = t38.
      ENDIF.
      t17 = t18.
      IF t18 = abap_true.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE REF TO zif_lnt_statement.
        t44 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_macro_content ).
        t42 = xsdbool( t43 = abap_false ).
        t17 = t42.
      ENDIF.
      IF t17 = abap_true.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t48 = me->check_keywords( i_s = t9 i_file = t1 ).
        t46 = t2->concat( p0 = t48 ).
        t2 = t46.
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t53 = me->check_paren( i_s = t9 i_file = t1 ).
      t51 = t2->concat( p0 = t53 ).
      t2 = t51.
    ENDDO.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t58 = me->check_after_colon( i_file = t1 ).
    t56 = t2->concat( p0 = t58 ).
    t2 = t56.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t60 = t61.
    DATA t63 TYPE REF TO zcl_lnt_issue.
    DATA t64 TYPE REF TO object.
    DATA(t65) = VALUE i( ).
    DO.
      t2->load( ).
      IF t65 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t2->items INDEX t65 + 1 INTO t64.
      t65 = t65 + 1.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t63.
      IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t64.
        DATA t67 TYPE REF TO object.
        t67 = t66->as_ref( ).
        t63 ?= t67.
      ELSE.
        t63 ?= t64.
      ENDIF.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = VALUE f( ).
      DATA t70 TYPE f.
      DATA(t71) = CONV f( -1 ).
      t70 = t71.
      DATA t72 TYPE f.
      DATA(t73) = CONV f( -1 ).
      t72 = t73.
      DATA t75 TYPE REF TO zcl_lnt_issue.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      DATA(t77) = VALUE i( ).
      DO.
        t60->load( ).
        IF t77 >= lines( t60->items ).
          EXIT.
        ENDIF.
        CLEAR t76.
        READ TABLE t60->items INDEX t77 + 1 INTO t76.
        t77 = t77 + 1.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        CLEAR t75.
        IF t76 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t78 ?= t76.
          DATA t79 TYPE REF TO object.
          t79 = t78->as_ref( ).
          t75 ?= t79.
        ELSE.
          t75 ?= t76.
        ENDIF.
        DATA t80 TYPE f.
        DATA(t82) = CONV f( 1 ).
        t80 = t70 + t82.
        t70 = t80.
        DATA t83 TYPE abap_bool.
        DATA t84 TYPE REF TO zcl_lnt_position.
        DATA t87 TYPE REF TO zcl_lnt_position.
        DATA t88 TYPE REF TO zcl_lnt_iissue_data.
        t88 = t75->data_56cc.
        t87 = t88->start.
        t84 = t87.
        DATA t90 TYPE REF TO zcl_lnt_position.
        DATA t93 TYPE REF TO zcl_lnt_position.
        DATA t94 TYPE REF TO zcl_lnt_iissue_data.
        t94 = t63->data_56cc.
        t93 = t94->start.
        t90 = t93.
        t83 = t84->equals( i_p = t90 ).
        IF t83 = abap_true.
          t72 = t70.
          EXIT.
        ENDIF.
      ENDDO.
      t69 = t72.
      DATA(t98) = CONV f( -1 ).
      t68 = xsdbool( t69 = t98 ).
      IF t68 = abap_true.
        t60->load( ).
        APPEND t63 TO t60->items.
        t60->save( ).
      ENDIF.
    ENDDO.
    result = t60.

  ENDMETHOD.

  METHOD check_after_colon.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    t7 = me->conf->zlnt_view_read_sr_d1ea83d4ea4d( ).
    t6 = xsdbool( t7 <> abap_true ).
    IF t6 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t14 = t1->statements.
    t11 = t14.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t11->load( ).
      IF t18 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t11->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      t25 = t16->colon.
      t21 = t25.
      DATA(t27) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      t27 = xsdbool( t21 IS INITIAL ).
      IF t27 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = xsdbool( t4 IS INITIAL ).
        t40 = xsdbool( t41 = abap_false ).
        t35 = t40.
        t34 = t35.
        IF t35 = abap_true.
          DATA t43 TYPE abap_bool.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t48 = t4->col.
          t44 = t48.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t56 TYPE REF TO zcl_lnt_position.
          t56 = t21->start.
          DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t58 = t56->col.
          t50 = t58.
          t43 = zlnt_runtime_numb_290eb04a9758=>compare( left = t44 right = t50 op = `==` ).
          t34 = t43.
        ENDIF.
        IF t34 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t66 TYPE REF TO zcl_lnt_position.
      t66 = t21->start.
      t4 = t66.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t69 = t16->get_tokens( ).
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      DATA(t73) = VALUE i( ).
      DO.
        t69->load( ).
        IF t73 >= lines( t69->items ).
          EXIT.
        ENDIF.
        CLEAR t72.
        READ TABLE t69->items INDEX t73 + 1 INTO t72.
        t73 = t73 + 1.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t71.
        IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t72.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t71 ?= t75.
        ELSE.
          t71 ?= t72.
        ENDIF.
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE f.
        DATA t82 TYPE REF TO zcl_lnt_position.
        t82 = t71->start.
        DATA t84 TYPE f.
        t84 = t82->row.
        t77 = t84.
        DATA t86 TYPE f.
        DATA t90 TYPE f.
        t90 = t4->row.
        t86 = t90.
        t76 = xsdbool( t77 <> t86 ).
        IF t76 = abap_true.
          DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t92.
          result = t92.
          RETURN.
        ELSE.
          DATA t93 TYPE abap_bool.
          DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t99 TYPE REF TO zcl_lnt_position.
          t99 = t71->start.
          DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t101 = t99->col.
          t94 = t101.
          DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t107 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t107 = t4->col.
          t103 = t107.
          t93 = zlnt_runtime_numb_290eb04a9758=>compare( left = t94 right = t103 op = `<` ).
          IF t93 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t109 TYPE abap_bool.
        DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t115 TYPE REF TO zcl_lnt_position.
        t115 = t71->start.
        DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t117 = t115->col.
        t110 = t117.
        DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t124 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t124 = t4->col.
        t120 = t124.
        DATA(t126) = CONV f( 2 ).
        DATA(t127) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t127->has = abap_true.
        t127->value = t126.
        t119 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t120 right = t127 op = `+` ).
        t109 = zlnt_runtime_numb_290eb04a9758=>compare( left = t110 right = t119 op = `>` ).
        IF t109 = abap_true.
          DATA t128 TYPE REF TO zcl_lnt_position.
          DATA t129 TYPE REF TO zcl_lnt_position.
          DATA t130 TYPE f.
          DATA t134 TYPE f.
          t134 = t4->row.
          t130 = t134.
          DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t141 = t4->col.
          t137 = t141.
          DATA(t143) = CONV f( 2 ).
          DATA(t144) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t144->has = abap_true.
          t144->value = t143.
          t136 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t137 right = t144 op = `+` ).
          t129 = NEW zcl_lnt_position( i_row = t130 i_col = t136 ).
          t128 = t129.
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA t146 TYPE REF TO zcl_lnt_position.
          DATA t147 TYPE f.
          DATA t152 TYPE REF TO zcl_lnt_position.
          t152 = t71->start.
          DATA t154 TYPE f.
          t154 = t152->row.
          t147 = t154.
          DATA t156 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t161 TYPE REF TO zcl_lnt_position.
          t161 = t71->start.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t163 = t161->col.
          t156 = t163.
          t146 = NEW zcl_lnt_position( i_row = t147 i_col = t156 ).
          t145 = t146.
          DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t166 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t128 i_end = t145 ).
          DATA t171 TYPE REF TO zcl_lnt_issue.
          CLEAR t171.
          DATA(t175) = |Remove double space|.
          DATA(t176) = VALUE string( ).
          DATA t177 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t177.
          DATA t178 TYPE string.
          t178 = |double_space|.
          DATA t180 TYPE string.
          t180 = |Double space|.
          DATA t182 TYPE string.
          DATA(t183) = |Checks that only a single space follows certain common state|.
          t183 = t183 && |ments.|.
          t182 = t183.
          DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t184.
          DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t189.
          t188 = t189.
          DATA(t191) = |Whitespace|.
          t188->load( ).
          APPEND t191 TO t188->items.
          t188->save( ).
          DATA(t193) = |Quickfix|.
          t188->load( ).
          APPEND t193 TO t188->items.
          t188->save( ).
          DATA(t195) = |SingleFile|.
          t188->load( ).
          APPEND t195 TO t188->items.
          t188->save( ).
          t184 = t188.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t198.
          DATA(t201) = |DATA  foo TYPE i.|.
          DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t202->has = abap_true.
          t202->value = t201.
          t198 = t202.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          DATA(t207) = |DATA foo TYPE i.|.
          DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t208->has = abap_true.
          t208->value = t207.
          t204 = t208.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t210.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          t177 = NEW zcl_lnt_irule_metadata( i_key = t178 i_title = t180 i_short_description = t182 i_bad_example = t198 i_good_example = t204 i_extended_information = t210 i_tags = t184 i_pragma = t212 i_pseudo_comment = t214 ).
          CREATE OBJECT t177->zlnt_view_ownkeys_b0e8086400eb.
          t177->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t216 ).
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t217 ).
          ENDIF.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t218 ).
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t219 ).
          ENDIF.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t220 ).
          ENDIF.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t221 ).
          ENDIF.
          CREATE OBJECT t177->zlnt_json_ownkeys_70e5fd461788.
          t177->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t222) = |key|.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
          DATA(t224) = |title|.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
          ENDIF.
          DATA(t226) = |shortDescription|.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
          ENDIF.
          DATA(t228) = |tags|.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
          ENDIF.
          DATA(t230) = |badExample|.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
          ENDIF.
          DATA(t232) = |goodExample|.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
          ENDIF.
          t176 = t177->key.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t234 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t236 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t236.
          t236 = t166.
          DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t240.
          t171 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t128 i_end = t145 i_message_26cb = t175 i_key = t176 i_severity = t234 i_fix = t236 i_alternative_fixes = t240 ).
          t2->load( ).
          APPEND t171 TO t2->items.
          t2->save( ).
        ENDIF.
        EXIT.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_paren.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->get_tokens( ).
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t7->load( ).
      IF t11 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t7->items INDEX t11 + 1 INTO t10.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t14 = xsdbool( t5 IS INITIAL ).
      IF t14 = abap_true.
        t5 = t9.
        CONTINUE.
      ENDIF.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA(t31) = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).
      t30 = t31->zlnt_view_read_sr_35380942de4b( ).
      t29 = xsdbool( t30 = abap_true ).
      t28 = t29.
      IF t29 = abap_true.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE f.
        DATA t40 TYPE REF TO zcl_lnt_position.
        t40 = t5->start.
        DATA t42 TYPE f.
        t42 = t40->row.
        t34 = t42.
        DATA t44 TYPE f.
        DATA t49 TYPE REF TO zcl_lnt_position.
        t49 = t9->start.
        DATA t51 TYPE f.
        t51 = t49->row.
        t44 = t51.
        t33 = xsdbool( t34 = t44 ).
        t28 = t33.
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA t53 TYPE abap_bool.
        DATA(t54) = t5.
        t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_paren_left_w ).
        t27 = t53.
      ENDIF.
      t26 = t27.
      IF t27 = abap_true.
        DATA t55 TYPE abap_bool.
        DATA t56 TYPE abap_bool.
        t56 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_lx_comment ).
        t55 = xsdbool( t56 = abap_false ).
        t26 = t55.
      ENDIF.
      t25 = t26.
      IF t26 = abap_true.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA t64 TYPE REF TO zcl_lnt_paren_left_w.
        t64 ?= t5.
        t63 = t64.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA t67 TYPE f.
        DATA t69 TYPE REF TO zcl_lnt_position.
        t69 = t63->start.
        DATA t71 TYPE f.
        t71 = t69->row.
        t67 = t71.
        DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t76 TYPE REF TO zcl_lnt_position.
        t76 = t63->start.
        DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t78 = t76->col.
        t74 = t78.
        DATA t80 TYPE f.
        DATA t82 TYPE string.
        t82 = t63->str.
        t80 = strlen( t82 ).
        DATA(t85) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t85->has = abap_true.
        t85->value = t80.
        t73 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t74 right = t85 op = `+` ).
        t66 = NEW zcl_lnt_position( i_row = t67 i_col = t73 ).
        DATA t86 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t86 = t66->col.
        t60 = t86.
        DATA(t88) = CONV f( 1 ).
        DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t89->has = abap_true.
        t89->value = t88.
        t59 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t60 right = t89 op = `+` ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t95 TYPE REF TO zcl_lnt_position.
        t95 = t9->start.
        DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t97 = t95->col.
        t90 = t97.
        t58 = zlnt_runtime_numb_290eb04a9758=>compare( left = t59 right = t90 op = `<` ).
        t25 = t58.
      ENDIF.
      IF t25 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_position.
        DATA t100 TYPE REF TO zcl_lnt_position.
        DATA t101 TYPE f.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_paren_left_w.
        t103 ?= t5.
        t102 = t103.
        DATA t107 TYPE REF TO zcl_lnt_position.
        t107 = t102->start.
        DATA t109 TYPE f.
        t109 = t107->row.
        t101 = t109.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        DATA t114 TYPE REF TO zcl_lnt_paren_left_w.
        t114 ?= t5.
        t113 = t114.
        DATA t118 TYPE REF TO zcl_lnt_position.
        t118 = t113->start.
        DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t120 = t118->col.
        t112 = t120.
        DATA(t122) = CONV f( 2 ).
        DATA(t123) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t123->has = abap_true.
        t123->value = t122.
        t111 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t112 right = t123 op = `+` ).
        t100 = NEW zcl_lnt_position( i_row = t101 i_col = t111 ).
        t99 = t100.
        DATA t124 TYPE REF TO zcl_lnt_position.
        DATA t125 TYPE REF TO zcl_lnt_position.
        DATA t126 TYPE f.
        DATA t131 TYPE REF TO zcl_lnt_position.
        t131 = t9->start.
        DATA t133 TYPE f.
        t133 = t131->row.
        t126 = t133.
        DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t140 TYPE REF TO zcl_lnt_position.
        t140 = t9->start.
        DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t142 = t140->col.
        t135 = t142.
        t125 = NEW zcl_lnt_position( i_row = t126 i_col = t135 ).
        t124 = t125.
        DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t145 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t99 i_end = t124 ).
        DATA t149 TYPE abap_bool.
        DATA t150 TYPE abap_bool.
        DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t154 = t1->pragmas.
        t151 = t154.
        t150 = me->pragma_in_range( i_pragmas = t151 i_start = t99 i_end = t124 ).
        t149 = xsdbool( t150 = abap_false ).
        IF t149 = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_issue.
          CLEAR t160.
          DATA(t164) = |Remove double space|.
          DATA(t165) = VALUE string( ).
          DATA t166 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t166.
          DATA t167 TYPE string.
          t167 = |double_space|.
          DATA t169 TYPE string.
          t169 = |Double space|.
          DATA t171 TYPE string.
          DATA(t172) = |Checks that only a single space follows certain common state|.
          t172 = t172 && |ments.|.
          t171 = t172.
          DATA t173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t173.
          DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t178.
          t177 = t178.
          DATA(t180) = |Whitespace|.
          t177->load( ).
          APPEND t180 TO t177->items.
          t177->save( ).
          DATA(t182) = |Quickfix|.
          t177->load( ).
          APPEND t182 TO t177->items.
          t177->save( ).
          DATA(t184) = |SingleFile|.
          t177->load( ).
          APPEND t184 TO t177->items.
          t177->save( ).
          t173 = t177.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA(t190) = |DATA  foo TYPE i.|.
          DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t191->has = abap_true.
          t191->value = t190.
          t187 = t191.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          DATA(t196) = |DATA foo TYPE i.|.
          DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t197->has = abap_true.
          t197->value = t196.
          t193 = t197.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          t166 = NEW zcl_lnt_irule_metadata( i_key = t167 i_title = t169 i_short_description = t171 i_bad_example = t187 i_good_example = t193 i_extended_information = t199 i_tags = t173 i_pragma = t201 i_pseudo_comment = t203 ).
          CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
          t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t205 ).
          DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t206.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t206 ).
          ENDIF.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t207 ).
          ENDIF.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t208 ).
          ENDIF.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t209 ).
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t210 ).
          ENDIF.
          CREATE OBJECT t166->zlnt_json_ownkeys_70e5fd461788.
          t166->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t211) = |key|.
          DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t212.
          t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
          DATA(t213) = |title|.
          DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t214.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
          ENDIF.
          DATA(t215) = |shortDescription|.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
          ENDIF.
          DATA(t217) = |tags|.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
          ENDIF.
          DATA(t219) = |badExample|.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
          ENDIF.
          DATA(t221) = |goodExample|.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
          ENDIF.
          t165 = t166->key.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t223 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t225 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t225.
          t225 = t145.
          DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t229.
          t160 = zcl_lnt_issue=>at_range( i_file = t2 i_start = t99 i_end = t124 i_message_26cb = t164 i_key = t165 i_severity = t223 i_fix = t225 i_alternative_fixes = t229 ).
          t3->load( ).
          APPEND t160 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = VALUE abap_bool( ).
      DATA(t232) = VALUE abap_bool( ).
      DATA t233 TYPE abap_bool.
      DATA t234 TYPE abap_bool.
      DATA t235 TYPE abap_bool.
      DATA(t236) = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).
      t235 = t236->zlnt_view_read_sr_d180c0b9d146( ).
      t234 = xsdbool( t235 = abap_true ).
      t233 = t234.
      IF t234 = abap_true.
        DATA t238 TYPE abap_bool.
        DATA t239 TYPE f.
        DATA t245 TYPE REF TO zcl_lnt_position.
        t245 = t5->start.
        DATA t247 TYPE f.
        t247 = t245->row.
        t239 = t247.
        DATA t249 TYPE f.
        DATA t254 TYPE REF TO zcl_lnt_position.
        t254 = t9->start.
        DATA t256 TYPE f.
        t256 = t254->row.
        t249 = t256.
        t238 = xsdbool( t239 = t249 ).
        t233 = t238.
      ENDIF.
      t232 = t233.
      IF t233 = abap_true.
        DATA t258 TYPE abap_bool.
        DATA t259 TYPE abap_bool.
        DATA(t260) = t5.
        t259 = xsdbool( t260 IS BOUND AND t260 IS INSTANCE OF zcl_lnt_paren_left_w ).
        t258 = xsdbool( t259 = abap_false ).
        t232 = t258.
      ENDIF.
      t231 = t232.
      IF t232 = abap_true.
        DATA t261 TYPE abap_bool.
        DATA t262 TYPE abap_bool.
        t262 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_w_paren_right_w ).
        t261 = t262.
        IF t262 = abap_false.
          DATA t264 TYPE abap_bool.
          t264 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_w_paren_right ).
          t261 = t264.
        ENDIF.
        t231 = t261.
      ENDIF.
      t230 = t231.
      IF t231 = abap_true.
        DATA t266 TYPE abap_bool.
        DATA t267 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t268 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t271 TYPE REF TO zcl_lnt_abstract_token.
        t271 = t5.
        DATA t274 TYPE REF TO zcl_lnt_position.
        DATA t275 TYPE f.
        DATA t277 TYPE REF TO zcl_lnt_position.
        t277 = t271->start.
        DATA t279 TYPE f.
        t279 = t277->row.
        t275 = t279.
        DATA t281 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t282 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t284 TYPE REF TO zcl_lnt_position.
        t284 = t271->start.
        DATA t286 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t286 = t284->col.
        t282 = t286.
        DATA t288 TYPE f.
        DATA t290 TYPE string.
        t290 = t271->str.
        t288 = strlen( t290 ).
        DATA(t293) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t293->has = abap_true.
        t293->value = t288.
        t281 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t282 right = t293 op = `+` ).
        t274 = NEW zcl_lnt_position( i_row = t275 i_col = t281 ).
        DATA t294 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t294 = t274->col.
        t268 = t294.
        DATA(t296) = CONV f( 1 ).
        DATA(t297) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t297->has = abap_true.
        t297->value = t296.
        t267 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t268 right = t297 op = `+` ).
        DATA t298 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t299 TYPE REF TO zif_lnt_union_24b9bfb5.
        t299 ?= t9.
        t298 = t299->get_col( ).
        t266 = zlnt_runtime_numb_290eb04a9758=>compare( left = t267 right = t298 op = `<` ).
        t230 = t266.
      ENDIF.
      IF t230 = abap_true.
        DATA t301 TYPE REF TO zcl_lnt_position.
        DATA t302 TYPE REF TO zcl_lnt_position.
        DATA t303 TYPE f.
        DATA t306 TYPE REF TO zcl_lnt_abstract_token.
        t306 = t5.
        DATA t309 TYPE REF TO zcl_lnt_position.
        DATA t310 TYPE f.
        DATA t312 TYPE REF TO zcl_lnt_position.
        t312 = t306->start.
        DATA t314 TYPE f.
        t314 = t312->row.
        t310 = t314.
        DATA t316 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t317 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t319 TYPE REF TO zcl_lnt_position.
        t319 = t306->start.
        DATA t321 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t321 = t319->col.
        t317 = t321.
        DATA t323 TYPE f.
        DATA t325 TYPE string.
        t325 = t306->str.
        t323 = strlen( t325 ).
        DATA(t328) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t328->has = abap_true.
        t328->value = t323.
        t316 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t317 right = t328 op = `+` ).
        t309 = NEW zcl_lnt_position( i_row = t310 i_col = t316 ).
        DATA t329 TYPE f.
        t329 = t309->row.
        t303 = t329.
        DATA t331 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t332 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t335 TYPE REF TO zcl_lnt_abstract_token.
        t335 = t5.
        DATA t338 TYPE REF TO zcl_lnt_position.
        DATA t339 TYPE f.
        DATA t341 TYPE REF TO zcl_lnt_position.
        t341 = t335->start.
        DATA t343 TYPE f.
        t343 = t341->row.
        t339 = t343.
        DATA t345 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t346 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t348 TYPE REF TO zcl_lnt_position.
        t348 = t335->start.
        DATA t350 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t350 = t348->col.
        t346 = t350.
        DATA t352 TYPE f.
        DATA t354 TYPE string.
        t354 = t335->str.
        t352 = strlen( t354 ).
        DATA(t357) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t357->has = abap_true.
        t357->value = t352.
        t345 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t346 right = t357 op = `+` ).
        t338 = NEW zcl_lnt_position( i_row = t339 i_col = t345 ).
        DATA t358 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t358 = t338->col.
        t332 = t358.
        DATA(t360) = CONV f( 1 ).
        DATA(t361) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t361->has = abap_true.
        t361->value = t360.
        t331 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t332 right = t361 op = `+` ).
        t302 = NEW zcl_lnt_position( i_row = t303 i_col = t331 ).
        t301 = t302.
        DATA t362 TYPE REF TO zcl_lnt_position.
        DATA t363 TYPE REF TO zcl_lnt_position.
        DATA t364 TYPE f.
        DATA t365 TYPE REF TO zif_lnt_union_24b9bfb5.
        t365 ?= t9.
        t364 = t365->get_row( ).
        DATA t367 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t368 TYPE REF TO zif_lnt_union_24b9bfb5.
        t368 ?= t9.
        t367 = t368->get_col( ).
        t363 = NEW zcl_lnt_position( i_row = t364 i_col = t367 ).
        t362 = t363.
        DATA t371 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t371 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t301 i_end = t362 ).
        DATA t375 TYPE abap_bool.
        DATA t376 TYPE abap_bool.
        DATA t377 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t380 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t380 = t1->pragmas.
        t377 = t380.
        t376 = me->pragma_in_range( i_pragmas = t377 i_start = t301 i_end = t362 ).
        t375 = xsdbool( t376 = abap_false ).
        IF t375 = abap_true.
          DATA t386 TYPE REF TO zcl_lnt_issue.
          CLEAR t386.
          DATA(t390) = |Remove double space|.
          DATA(t391) = VALUE string( ).
          DATA t392 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t392.
          DATA t393 TYPE string.
          t393 = |double_space|.
          DATA t395 TYPE string.
          t395 = |Double space|.
          DATA t397 TYPE string.
          DATA(t398) = |Checks that only a single space follows certain common state|.
          t398 = t398 && |ments.|.
          t397 = t398.
          DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t399.
          DATA t403 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t404.
          t403 = t404.
          DATA(t406) = |Whitespace|.
          t403->load( ).
          APPEND t406 TO t403->items.
          t403->save( ).
          DATA(t408) = |Quickfix|.
          t403->load( ).
          APPEND t408 TO t403->items.
          t403->save( ).
          DATA(t410) = |SingleFile|.
          t403->load( ).
          APPEND t410 TO t403->items.
          t403->save( ).
          t399 = t403.
          DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t413.
          DATA(t416) = |DATA  foo TYPE i.|.
          DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t417->has = abap_true.
          t417->value = t416.
          t413 = t417.
          DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t419.
          DATA(t422) = |DATA foo TYPE i.|.
          DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t423->has = abap_true.
          t423->value = t422.
          t419 = t423.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t425.
          DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t427.
          DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t429.
          t392 = NEW zcl_lnt_irule_metadata( i_key = t393 i_title = t395 i_short_description = t397 i_bad_example = t413 i_good_example = t419 i_extended_information = t425 i_tags = t399 i_pragma = t427 i_pseudo_comment = t429 ).
          CREATE OBJECT t392->zlnt_view_ownkeys_b0e8086400eb.
          t392->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t431.
          t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t431 ).
          DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t432.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t432 ).
          ENDIF.
          DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t433.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t433 ).
          ENDIF.
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t434.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t434 ).
          ENDIF.
          DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t435.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t435 ).
          ENDIF.
          DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t436.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t436 ).
          ENDIF.
          CREATE OBJECT t392->zlnt_json_ownkeys_70e5fd461788.
          t392->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t437) = |key|.
          DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t438.
          t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t437 p1 = t438 ).
          DATA(t439) = |title|.
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t440.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t439 p1 = t440 ).
          ENDIF.
          DATA(t441) = |shortDescription|.
          DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t442.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t441 p1 = t442 ).
          ENDIF.
          DATA(t443) = |tags|.
          DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t444.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t443 p1 = t444 ).
          ENDIF.
          DATA(t445) = |badExample|.
          DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t446.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t445 p1 = t446 ).
          ENDIF.
          DATA(t447) = |goodExample|.
          DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t448.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t447 p1 = t448 ).
          ENDIF.
          t391 = t392->key.
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t449 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t451 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t451.
          t451 = t371.
          DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t455.
          t386 = zcl_lnt_issue=>at_range( i_file = t2 i_start = t301 i_end = t362 i_message_26cb = t390 i_key = t391 i_severity = t449 i_fix = t451 i_alternative_fixes = t455 ).
          t3->load( ).
          APPEND t386 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
      t5 = t9.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD pragma_in_range.
    DATA(t1) = i_pragmas.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zcl_lnt_position.
      DATA t17 TYPE REF TO zcl_lnt_position.
      t17 = t7->start.
      t13 = t17.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      t24 = t13->is_after( i_p = t2 ).
      t23 = t24.
      IF t24 = abap_true.
        DATA(t27) = VALUE abap_bool( ).
        DATA t28 TYPE REF TO zcl_lnt_position.
        t28 = t3.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE f.
        t32 = t13->row.
        DATA t34 TYPE f.
        t34 = t28->row.
        t31 = xsdbool( t32 < t34 ).
        t30 = t31.
        IF t31 = abap_false.
          DATA t36 TYPE abap_bool.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE f.
          t38 = t13->row.
          DATA t40 TYPE f.
          t40 = t28->row.
          t37 = xsdbool( t38 = t40 ).
          t36 = t37.
          IF t37 = abap_true.
            DATA t42 TYPE abap_bool.
            DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t43 = t13->col.
            DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t45 = t28->col.
            t42 = zlnt_runtime_numb_290eb04a9758=>compare( left = t43 right = t45 op = `<` ).
            t36 = t42.
          ENDIF.
          t30 = t36.
        ENDIF.
        t27 = t30.
        t23 = t27.
      ENDIF.
      t12 = t23.
      IF t12 = abap_true.
        t4 = abap_true.
      ENDIF.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_keywords.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_token_node.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    t13 = t1->colon.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = xsdbool( t13 IS INITIAL ).
    t17 = xsdbool( t18 = abap_false ).
    t8 = t17.
    t7 = t8.
    IF t8 = abap_false.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE i.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t25 = t1->pragmas.
      t22 = t25.
      t22->load( ).
      t21 = lines( t22->items ).
      DATA(t27) = 0.
      t20 = xsdbool( t21 > t27 ).
      t7 = t20.
    ENDIF.
    IF t7 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t28.
      result = t28.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = t1->get_token_nodes( ).
    DATA t31 TYPE REF TO zcl_lnt_token_node.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t29->load( ).
      IF t33 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t29->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA(t36) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      t36 = xsdbool( t5 IS INITIAL ).
      IF t36 = abap_true.
        t5 = t31.
        CONTINUE.
      ENDIF.
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE string.
      DATA t49 TYPE string.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t52 TYPE REF TO zcl_lnt_token_node.
      t52 = t5.
      t51 = t52->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      DATA t54 TYPE string.
      t54 = t51->str.
      t49 = t54.
      DATA(t56) = strlen( t49 ).
      t48 = t49.
      IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t48 TO UPPER CASE.
      ELSE.
        t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
      ENDIF.
      t47 = t48.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t5.
      t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_token_node_regex ).
      t59 = t60.
      IF t60 = abap_false.
        DATA t62 TYPE abap_bool.
        DATA(t64) = |(|.
        t62 = xsdbool( t47 = t64 ).
        t59 = t62.
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        DATA t65 TYPE abap_bool.
        DATA(t67) = |)|.
        t65 = xsdbool( t47 = t67 ).
        t58 = t65.
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE abap_bool.
        t69 = abap_false.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t73) = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).
        t72 = t73->zlnt_view_read_sr_b77f70a074af( ).
        t71 = t72.
        DATA(t74) = VALUE string( ).
        t71->dense( ).
        DATA(t75) = VALUE i( ).
        DO.
          t71->load( ).
          IF t75 >= lines( t71->items ).
            EXIT.
          ENDIF.
          CLEAR t74.
          READ TABLE t71->items INDEX t75 + 1 INTO t74.
          IF t71->has( t75 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t75 = t75 + 1.
          DATA(t76) = VALUE abap_bool( ).
          DATA t77 TYPE string.
          DATA(t79) = strlen( t74 ).
          t77 = t74.
          IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t77 TO UPPER CASE.
          ELSE.
            t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
          ENDIF.
          t76 = xsdbool( t77 = t47 ).
          IF t76 = abap_true.
            t69 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t68 = t69.
        t57 = t68.
      ENDIF.
      IF t57 = abap_true.
        t5 = t31.
        CONTINUE.
      ENDIF.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE f.
      DATA t93 TYPE REF TO zcl_lnt_abstract_token.
      DATA t94 TYPE REF TO zcl_lnt_token_node.
      t94 = t5.
      t93 = t94->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      DATA t96 TYPE REF TO zcl_lnt_position.
      t96 = t93->start.
      DATA t98 TYPE f.
      t98 = t96->row.
      t89 = t98.
      DATA t100 TYPE f.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      t104 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      DATA t106 TYPE REF TO zcl_lnt_position.
      t106 = t104->start.
      DATA t108 TYPE f.
      t108 = t106->row.
      t100 = t108.
      t88 = xsdbool( t89 = t100 ).
      t87 = t88.
      IF t88 = abap_true.
        DATA t110 TYPE abap_bool.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA t117 TYPE REF TO zcl_lnt_token_node.
        t117 = t5.
        t116 = t117->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t115 = t116.
        DATA t119 TYPE REF TO zcl_lnt_position.
        DATA t120 TYPE f.
        DATA t122 TYPE REF TO zcl_lnt_position.
        t122 = t115->start.
        DATA t124 TYPE f.
        t124 = t122->row.
        t120 = t124.
        DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t129 TYPE REF TO zcl_lnt_position.
        t129 = t115->start.
        DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t131 = t129->col.
        t127 = t131.
        DATA t133 TYPE f.
        DATA t135 TYPE string.
        t135 = t115->str.
        t133 = strlen( t135 ).
        DATA(t138) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t138->has = abap_true.
        t138->value = t133.
        t126 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t127 right = t138 op = `+` ).
        t119 = NEW zcl_lnt_position( i_row = t120 i_col = t126 ).
        DATA t139 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t139 = t119->col.
        t112 = t139.
        DATA(t141) = CONV f( 1 ).
        DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t142->has = abap_true.
        t142->value = t141.
        t111 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t112 right = t142 op = `+` ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        t147 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t149 TYPE REF TO zcl_lnt_position.
        t149 = t147->start.
        DATA t151 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t151 = t149->col.
        t143 = t151.
        t110 = zlnt_runtime_numb_290eb04a9758=>compare( left = t111 right = t143 op = `<` ).
        t87 = t110.
      ENDIF.
      IF t87 = abap_true.
        DATA t153 TYPE REF TO zcl_lnt_position.
        DATA t154 TYPE REF TO zcl_lnt_position.
        DATA t155 TYPE f.
        DATA t158 TYPE REF TO zcl_lnt_abstract_token.
        DATA t159 TYPE REF TO zcl_lnt_abstract_token.
        DATA t160 TYPE REF TO zcl_lnt_token_node.
        t160 = t5.
        t159 = t160->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t158 = t159.
        DATA t162 TYPE REF TO zcl_lnt_position.
        DATA t163 TYPE f.
        DATA t165 TYPE REF TO zcl_lnt_position.
        t165 = t158->start.
        DATA t167 TYPE f.
        t167 = t165->row.
        t163 = t167.
        DATA t169 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t172 TYPE REF TO zcl_lnt_position.
        t172 = t158->start.
        DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t174 = t172->col.
        t170 = t174.
        DATA t176 TYPE f.
        DATA t178 TYPE string.
        t178 = t158->str.
        t176 = strlen( t178 ).
        DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t181->has = abap_true.
        t181->value = t176.
        t169 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ).
        t162 = NEW zcl_lnt_position( i_row = t163 i_col = t169 ).
        DATA t182 TYPE f.
        t182 = t162->row.
        t155 = t182.
        DATA t184 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t185 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t188 TYPE REF TO zcl_lnt_abstract_token.
        DATA t189 TYPE REF TO zcl_lnt_abstract_token.
        DATA t190 TYPE REF TO zcl_lnt_token_node.
        t190 = t5.
        t189 = t190->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t188 = t189.
        DATA t192 TYPE REF TO zcl_lnt_position.
        DATA t193 TYPE f.
        DATA t195 TYPE REF TO zcl_lnt_position.
        t195 = t188->start.
        DATA t197 TYPE f.
        t197 = t195->row.
        t193 = t197.
        DATA t199 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t202 TYPE REF TO zcl_lnt_position.
        t202 = t188->start.
        DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t204 = t202->col.
        t200 = t204.
        DATA t206 TYPE f.
        DATA t208 TYPE string.
        t208 = t188->str.
        t206 = strlen( t208 ).
        DATA(t211) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t211->has = abap_true.
        t211->value = t206.
        t199 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t200 right = t211 op = `+` ).
        t192 = NEW zcl_lnt_position( i_row = t193 i_col = t199 ).
        DATA t212 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t212 = t192->col.
        t185 = t212.
        DATA(t214) = CONV f( 1 ).
        DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t215->has = abap_true.
        t215->value = t214.
        t184 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t185 right = t215 op = `+` ).
        t154 = NEW zcl_lnt_position( i_row = t155 i_col = t184 ).
        t153 = t154.
        DATA t216 TYPE REF TO zcl_lnt_position.
        DATA t217 TYPE REF TO zcl_lnt_position.
        DATA t218 TYPE f.
        DATA t220 TYPE REF TO zcl_lnt_abstract_token.
        t220 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t224 TYPE REF TO zcl_lnt_position.
        t224 = t220->start.
        DATA t226 TYPE f.
        t226 = t224->row.
        t218 = t226.
        DATA t228 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t230 TYPE REF TO zcl_lnt_abstract_token.
        t230 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t234 TYPE REF TO zcl_lnt_position.
        t234 = t230->start.
        DATA t236 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t236 = t234->col.
        t228 = t236.
        t217 = NEW zcl_lnt_position( i_row = t218 i_col = t228 ).
        t216 = t217.
        DATA t239 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t239 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t153 i_end = t216 ).
        DATA t244 TYPE REF TO zcl_lnt_issue.
        CLEAR t244.
        DATA(t248) = |Remove double space|.
        DATA(t249) = VALUE string( ).
        DATA t250 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t250.
        DATA t251 TYPE string.
        t251 = |double_space|.
        DATA t253 TYPE string.
        t253 = |Double space|.
        DATA t255 TYPE string.
        DATA(t256) = |Checks that only a single space follows certain common state|.
        t256 = t256 && |ments.|.
        t255 = t256.
        DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t257.
        DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t262.
        t261 = t262.
        DATA(t264) = |Whitespace|.
        t261->load( ).
        APPEND t264 TO t261->items.
        t261->save( ).
        DATA(t266) = |Quickfix|.
        t261->load( ).
        APPEND t266 TO t261->items.
        t261->save( ).
        DATA(t268) = |SingleFile|.
        t261->load( ).
        APPEND t268 TO t261->items.
        t261->save( ).
        t257 = t261.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA(t274) = |DATA  foo TYPE i.|.
        DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t275->has = abap_true.
        t275->value = t274.
        t271 = t275.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA(t280) = |DATA foo TYPE i.|.
        DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t281->has = abap_true.
        t281->value = t280.
        t277 = t281.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t283.
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t285.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        t250 = NEW zcl_lnt_irule_metadata( i_key = t251 i_title = t253 i_short_description = t255 i_bad_example = t271 i_good_example = t277 i_extended_information = t283 i_tags = t257 i_pragma = t285 i_pseudo_comment = t287 ).
        CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
        t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t289 ).
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t290 ).
        ENDIF.
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t291 ).
        ENDIF.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t292.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t292 ).
        ENDIF.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t293 ).
        ENDIF.
        DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t294.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t294 ).
        ENDIF.
        CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
        t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t295) = |key|.
        DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t296.
        t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t295 p1 = t296 ).
        DATA(t297) = |title|.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t298.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t297 p1 = t298 ).
        ENDIF.
        DATA(t299) = |shortDescription|.
        DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t300.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
        ENDIF.
        DATA(t301) = |tags|.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
        ENDIF.
        DATA(t303) = |badExample|.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t303 p1 = t304 ).
        ENDIF.
        DATA(t305) = |goodExample|.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t305 p1 = t306 ).
        ENDIF.
        t249 = t250->key.
        DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t307 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t309 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t309.
        t309 = t239.
        DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t313.
        t244 = zcl_lnt_issue=>at_range( i_file = t2 i_start = t153 i_end = t216 i_message_26cb = t248 i_key = t249 i_severity = t307 i_fix = t309 i_alternative_fixes = t313 ).
        t3->load( ).
        APPEND t244 TO t3->items.
        t3->save( ).
        result = t3.
        RETURN.
      ENDIF.
      t5 = t31.
    ENDDO.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t319.
    result = t319.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_double_space_conf.
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
        t1 = NEW zcl_lnt_double_space_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_db_sp_ts_db_spc( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_db_sp_ts_db_spc( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1481_5489e72de330.
  ENDMETHOD.
ENDCLASS.
