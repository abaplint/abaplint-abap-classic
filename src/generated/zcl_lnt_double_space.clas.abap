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
    DATA(t1) = NEW zcl_lnt_double_space_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |double_space|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Double space|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that only a single space follows certain common state|.
    t7 = t7 && |ments.|.
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
      DATA(t15) = |Whitespace|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Quickfix|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |SingleFile|.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t12.
      t11 = t20.
      t9 = t11.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t8 = t9.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |DATA  foo TYPE i.|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    t22 = t23.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |DATA foo TYPE i.|.
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
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Remove double space|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_db_sp_ts_db_spc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_db_sp_ts_db_spc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_b77f70a074af( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
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
      DATA t15 TYPE REF TO zif_lnt_statement.
      DATA(t16) = t9.
      t15 = t16->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
      DATA(t24) = me->conf.
      t23 = t24->zlnt_view_read_sr_abd40c6b7e93( ).
      DATA(t25) = abap_true.
      t22 = xsdbool( t23 = t25 ).
      t21 = t22.
      IF t22 = abap_true.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE REF TO zif_lnt_statement.
        DATA(t29) = t9.
        t28 = t29->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_unknown ).
        t26 = xsdbool( t27 = abap_false ).
        t21 = t26.
      ENDIF.
      t20 = t21.
      IF t21 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE REF TO zif_lnt_statement.
        DATA(t33) = t9.
        t32 = t33->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_method_def ).
        t30 = xsdbool( t31 = abap_false ).
        t20 = t30.
      ENDIF.
      t19 = t20.
      IF t20 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE REF TO zif_lnt_statement.
        DATA(t37) = t9.
        t36 = t37->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_macro_call ).
        t34 = xsdbool( t35 = abap_false ).
        t19 = t34.
      ENDIF.
      t18 = t19.
      IF t19 = abap_true.
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE REF TO zif_lnt_statement.
        DATA(t41) = t9.
        t40 = t41->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_events ).
        t38 = xsdbool( t39 = abap_false ).
        t18 = t38.
      ENDIF.
      t17 = t18.
      IF t18 = abap_true.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE REF TO zif_lnt_statement.
        DATA(t45) = t9.
        t44 = t45->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_macro_content ).
        t42 = xsdbool( t43 = abap_false ).
        t17 = t42.
      ENDIF.
      IF t17 = abap_true.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t47) = t2.
        DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t49) = t9.
        DATA(t50) = t1.
        t48 = me->check_keywords( i_s = t49 i_file = t50 ).
        t46 = t47->concat( p0 = t48 ).
        t2 = t46.
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = t2.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t54) = t9.
      DATA(t55) = t1.
      t53 = me->check_paren( i_s = t54 i_file = t55 ).
      t51 = t52->concat( p0 = t53 ).
      t2 = t51.
    ENDDO.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t57) = t2.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t59) = t1.
    t58 = me->check_after_colon( i_file = t59 ).
    t56 = t57->concat( p0 = t58 ).
    t2 = t56.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t60 = t61.
    DATA(t62) = t2.
    DATA t63 TYPE REF TO zcl_lnt_issue.
    CLEAR t63.
    DATA t64 TYPE REF TO object.
    CLEAR t64.
    DATA(t65) = VALUE i( ).
    DO.
      t62->load( ).
      IF t65 >= lines( t62->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t62->items INDEX t65 + 1 INTO t64.
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
      DATA(t74) = t60.
      DATA t75 TYPE REF TO zcl_lnt_issue.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      DATA(t77) = VALUE i( ).
      DO.
        t74->load( ).
        IF t77 >= lines( t74->items ).
          EXIT.
        ENDIF.
        CLEAR t76.
        READ TABLE t74->items INDEX t77 + 1 INTO t76.
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
        DATA(t81) = t70.
        DATA(t82) = CONV f( 1 ).
        t80 = t81 + t82.
        t70 = t80.
        DATA t83 TYPE abap_bool.
        DATA t84 TYPE REF TO zcl_lnt_position.
        DATA t85 TYPE REF TO zcl_lnt_issue.
        DATA(t86) = t75.
        t85 = t86.
        DATA t87 TYPE REF TO zcl_lnt_position.
        DATA t88 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t89) = t85.
        t88 = t89->data_56cc.
        t87 = t88->start.
        t84 = t87.
        DATA t90 TYPE REF TO zcl_lnt_position.
        DATA t91 TYPE REF TO zcl_lnt_issue.
        DATA(t92) = t63.
        t91 = t92.
        DATA t93 TYPE REF TO zcl_lnt_position.
        DATA t94 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t95) = t91.
        t94 = t95->data_56cc.
        t93 = t94->start.
        t90 = t93.
        t83 = t84->equals( i_p = t90 ).
        IF t83 = abap_true.
          DATA(t96) = t70.
          t72 = t96.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t97) = t72.
      t69 = t97.
      DATA(t98) = CONV f( -1 ).
      t68 = xsdbool( t69 = t98 ).
      IF t68 = abap_true.
        DATA(t99) = t60.
        DATA(t100) = t63.
        t99->load( ).
        APPEND t100 TO t99->items.
        t99->save( ).
      ENDIF.
    ENDDO.
    DATA(t101) = t60.
    result = t101.

  ENDMETHOD.

  METHOD check_after_colon.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_position.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t8) = me->conf.
    t7 = t8->zlnt_view_read_sr_d1ea83d4ea4d( ).
    DATA(t9) = abap_true.
    t6 = xsdbool( t7 <> t9 ).
    IF t6 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t12.
    t14 = t15->statements.
    t11 = t14.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
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
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_statement_node.
      DATA(t24) = t16.
      t23 = t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t26) = t23.
      t25 = t26->colon.
      t22 = t25.
      t21 = t22.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t29) = t21.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t30 = t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t28.
      IF t33 IS INITIAL.
        t32 = abap_true.
      ENDIF.
      t27 = t32.
      IF t27 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zcl_lnt_position.
        DATA(t37) = t4.
        t36 = t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        t38 = t39.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = t36.
        IF t42 IS INITIAL.
          t41 = abap_true.
        ENDIF.
        t40 = xsdbool( t41 = abap_false ).
        t35 = t40.
        t34 = t35.
        IF t35 = abap_true.
          DATA t43 TYPE abap_bool.
          DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t45 TYPE REF TO zcl_lnt_position.
          DATA t46 TYPE REF TO zcl_lnt_position.
          DATA(t47) = t4.
          t46 = t47.
          t45 = t46.
          DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t49) = t45.
          t48 = t49->col.
          t44 = t48.
          DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t53) = t21.
          t52 = t53.
          t51 = t52.
          DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t55 TYPE REF TO zcl_lnt_position.
          DATA t56 TYPE REF TO zcl_lnt_position.
          DATA(t57) = t51.
          t56 = t57->start.
          t55 = t56.
          DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t59) = t55.
          t58 = t59->col.
          t54 = t58.
          t50 = t54.
          t43 = zlnt_runtime_numb_290eb04a9758=>compare( left = t44 right = t50 op = `==` ).
          t34 = t43.
        ENDIF.
        IF t34 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t60 TYPE REF TO zcl_lnt_position.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_position.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t65) = t21.
        t64 = t65.
        t63 = t64.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA(t67) = t63.
        t66 = t67->start.
        t62 = t66.
        t60 = t62.
      ELSE.
        DATA t68 TYPE REF TO zcl_lnt_position.
        CLEAR t68.
        t60 = t68.
      ENDIF.
      t4 = t60.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t70) = t16.
      t69 = t70->get_tokens( ).
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
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t79) = t71.
        t78 = t79.
        DATA t80 TYPE f.
        DATA t81 TYPE REF TO zcl_lnt_position.
        DATA t82 TYPE REF TO zcl_lnt_position.
        DATA(t83) = t78.
        t82 = t83->start.
        t81 = t82.
        DATA t84 TYPE f.
        DATA(t85) = t81.
        t84 = t85->row.
        t80 = t84.
        t77 = t80.
        DATA t86 TYPE f.
        DATA t87 TYPE REF TO zcl_lnt_position.
        DATA t88 TYPE REF TO zcl_lnt_position.
        DATA(t89) = t4.
        t88 = t89.
        t87 = t88.
        DATA t90 TYPE f.
        DATA(t91) = t87.
        t90 = t91->row.
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
          DATA t95 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t96) = t71.
          t95 = t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t98 TYPE REF TO zcl_lnt_position.
          DATA t99 TYPE REF TO zcl_lnt_position.
          DATA(t100) = t95.
          t99 = t100->start.
          t98 = t99.
          DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t102) = t98.
          t101 = t102->col.
          t97 = t101.
          t94 = t97.
          DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t104 TYPE REF TO zcl_lnt_position.
          DATA t105 TYPE REF TO zcl_lnt_position.
          DATA(t106) = t4.
          t105 = t106.
          t104 = t105.
          DATA t107 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t108) = t104.
          t107 = t108->col.
          t103 = t107.
          t93 = zlnt_runtime_numb_290eb04a9758=>compare( left = t94 right = t103 op = `<` ).
          IF t93 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t109 TYPE abap_bool.
        DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t111 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t112) = t71.
        t111 = t112.
        DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t114 TYPE REF TO zcl_lnt_position.
        DATA t115 TYPE REF TO zcl_lnt_position.
        DATA(t116) = t111.
        t115 = t116->start.
        t114 = t115.
        DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t118) = t114.
        t117 = t118->col.
        t113 = t117.
        t110 = t113.
        DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t121 TYPE REF TO zcl_lnt_position.
        DATA t122 TYPE REF TO zcl_lnt_position.
        DATA(t123) = t4.
        t122 = t123.
        t121 = t122.
        DATA t124 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t125) = t121.
        t124 = t125->col.
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
          DATA t131 TYPE REF TO zcl_lnt_position.
          DATA t132 TYPE REF TO zcl_lnt_position.
          DATA(t133) = t4.
          t132 = t133.
          t131 = t132.
          DATA t134 TYPE f.
          DATA(t135) = t131.
          t134 = t135->row.
          t130 = t134.
          DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t138 TYPE REF TO zcl_lnt_position.
          DATA t139 TYPE REF TO zcl_lnt_position.
          DATA(t140) = t4.
          t139 = t140.
          t138 = t139.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t142) = t138.
          t141 = t142->col.
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
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t149) = t71.
          t148 = t149.
          DATA t150 TYPE f.
          DATA t151 TYPE REF TO zcl_lnt_position.
          DATA t152 TYPE REF TO zcl_lnt_position.
          DATA(t153) = t148.
          t152 = t153->start.
          t151 = t152.
          DATA t154 TYPE f.
          DATA(t155) = t151.
          t154 = t155->row.
          t150 = t154.
          t147 = t150.
          DATA t156 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t157 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t158) = t71.
          t157 = t158.
          DATA t159 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t160 TYPE REF TO zcl_lnt_position.
          DATA t161 TYPE REF TO zcl_lnt_position.
          DATA(t162) = t157.
          t161 = t162->start.
          t160 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t164) = t160.
          t163 = t164->col.
          t159 = t163.
          t156 = t159.
          t146 = NEW zcl_lnt_position( i_row = t147 i_col = t156 ).
          t145 = t146.
          DATA t165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t167) = t1.
          DATA(t168) = t128.
          DATA(t169) = t145.
          t166 = zcl_lnt_edit_helper=>delete_range( i_file = t167 i_start = t168 i_end = t169 ).
          t165 = t166.
          DATA(t170) = t2.
          DATA t171 TYPE REF TO zcl_lnt_issue.
          CLEAR t171.
          DATA(t172) = t1.
          DATA(t173) = t128.
          DATA(t174) = t145.
          DATA(t175) = |Remove double space|.
          DATA(t176) = VALUE string( ).
          DATA t177 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t177.
          DATA t178 TYPE string.
          DATA(t179) = |double_space|.
          t178 = t179.
          DATA t180 TYPE string.
          DATA(t181) = |Double space|.
          t180 = t181.
          DATA t182 TYPE string.
          DATA(t183) = |Checks that only a single space follows certain common state|.
          t183 = t183 && |ments.|.
          t182 = t183.
          DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t184.
          DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t185.
          DATA(t186) = abap_true.
          IF t186 = abap_true.
            DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t189 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t189.
            t188 = t189.
            DATA(t190) = t188.
            DATA(t191) = |Whitespace|.
            t190->load( ).
            APPEND t191 TO t190->items.
            t190->save( ).
            DATA(t192) = t188.
            DATA(t193) = |Quickfix|.
            t192->load( ).
            APPEND t193 TO t192->items.
            t192->save( ).
            DATA(t194) = t188.
            DATA(t195) = |SingleFile|.
            t194->load( ).
            APPEND t195 TO t194->items.
            t194->save( ).
            DATA(t196) = t188.
            t187 = t196.
            t185 = t187.
          ELSE.
            DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t197.
            t185 = t197.
          ENDIF.
          t184 = t185.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t198.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          DATA(t200) = abap_true.
          IF t200 = abap_true.
            DATA(t201) = |DATA  foo TYPE i.|.
            DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t202->has = abap_true.
            t202->value = t201.
            t199 = t202.
          ELSE.
            DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t203.
            t199 = t203.
          ENDIF.
          t198 = t199.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          DATA(t206) = abap_true.
          IF t206 = abap_true.
            DATA(t207) = |DATA foo TYPE i.|.
            DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t208->has = abap_true.
            t208->value = t207.
            t205 = t208.
          ELSE.
            DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t209.
            t205 = t209.
          ENDIF.
          t204 = t205.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t211.
          t210 = t211.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t213.
          t212 = t213.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          t214 = t215.
          t177 = NEW zcl_lnt_irule_metadata( i_key = t178 i_title = t180 i_short_description = t182 i_bad_example = t198 i_good_example = t204 i_extended_information = t210 i_tags = t184 i_pragma = t212 i_pseudo_comment = t214 ).
          CREATE OBJECT t177->zlnt_view_ownkeys_b0e8086400eb.
          t177->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t216 ).
          ENDIF.
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
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
          ENDIF.
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
          DATA(t235) = me->conf.
          t234 = t235->zlnt_view_read_sr_15c06369f827( ).
          DATA t236 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t236.
          DATA(t237) = abap_true.
          IF t237 = abap_true.
            DATA(t238) = t165.
            t236 = t238.
          ELSE.
            DATA t239 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t239.
            t236 = t239.
          ENDIF.
          DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t240.
          t171 = zcl_lnt_issue=>at_range( i_file = t172 i_start = t173 i_end = t174 i_message_26cb = t175 i_key = t176 i_severity = t234 i_fix = t236 i_alternative_fixes = t240 ).
          t170->load( ).
          APPEND t171 TO t170->items.
          t170->save( ).
        ENDIF.
        EXIT.
      ENDDO.
    ENDDO.
    DATA(t241) = t2.
    result = t241.

  ENDMETHOD.

  METHOD check_paren.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t1.
    t7 = t8->get_tokens( ).
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
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
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = t5.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t15.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t14 = t19.
      IF t14 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t21.
        DATA(t22) = abap_true.
        IF t22 = abap_true.
          DATA(t23) = t9.
          t21 = t23.
        ELSE.
          DATA t24 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t24.
          t21 = t24.
        ENDIF.
        t5 = t21.
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
      DATA(t32) = abap_true.
      t29 = xsdbool( t30 = t32 ).
      t28 = t29.
      IF t29 = abap_true.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE f.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t37) = t5.
        t36 = t37.
        t35 = t36.
        DATA t38 TYPE f.
        DATA t39 TYPE REF TO zcl_lnt_position.
        DATA t40 TYPE REF TO zcl_lnt_position.
        DATA(t41) = t35.
        t40 = t41->start.
        t39 = t40.
        DATA t42 TYPE f.
        DATA(t43) = t39.
        t42 = t43->row.
        t38 = t42.
        t34 = t38.
        DATA t44 TYPE f.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t46) = t9.
        t45 = t46.
        DATA t47 TYPE f.
        DATA t48 TYPE REF TO zcl_lnt_position.
        DATA t49 TYPE REF TO zcl_lnt_position.
        DATA(t50) = t45.
        t49 = t50->start.
        t48 = t49.
        DATA t51 TYPE f.
        DATA(t52) = t48.
        t51 = t52->row.
        t47 = t51.
        t44 = t47.
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
        DATA(t57) = t9.
        t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_lx_comment ).
        t55 = xsdbool( t56 = abap_false ).
        t26 = t55.
      ENDIF.
      t25 = t26.
      IF t26 = abap_true.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t61 TYPE REF TO zcl_lnt_position.
        DATA t62 TYPE REF TO zcl_lnt_position.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA t64 TYPE REF TO zcl_lnt_paren_left_w.
        DATA(t65) = t5.
        t64 ?= t65.
        t63 = t64.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA t67 TYPE f.
        DATA t68 TYPE REF TO zcl_lnt_position.
        DATA t69 TYPE REF TO zcl_lnt_position.
        DATA(t70) = t63.
        t69 = t70->start.
        t68 = t69.
        DATA t71 TYPE f.
        DATA(t72) = t68.
        t71 = t72->row.
        t67 = t71.
        DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t75 TYPE REF TO zcl_lnt_position.
        DATA t76 TYPE REF TO zcl_lnt_position.
        DATA(t77) = t63.
        t76 = t77->start.
        t75 = t76.
        DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t79) = t75.
        t78 = t79->col.
        t74 = t78.
        DATA t80 TYPE f.
        DATA t81 TYPE i.
        DATA t82 TYPE string.
        DATA(t83) = t63.
        t82 = t83->str.
        DATA(t84) = strlen( t82 ).
        t81 = t84.
        t80 = t81.
        DATA(t85) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t85->has = abap_true.
        t85->value = t80.
        t73 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t74 right = t85 op = `+` ).
        t66 = NEW zcl_lnt_position( i_row = t67 i_col = t73 ).
        t62 = t66.
        t61 = t62.
        DATA t86 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t87) = t61.
        t86 = t87->col.
        t60 = t86.
        DATA(t88) = CONV f( 1 ).
        DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t89->has = abap_true.
        t89->value = t88.
        t59 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t60 right = t89 op = `+` ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t92) = t9.
        t91 = t92.
        DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t94 TYPE REF TO zcl_lnt_position.
        DATA t95 TYPE REF TO zcl_lnt_position.
        DATA(t96) = t91.
        t95 = t96->start.
        t94 = t95.
        DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t98) = t94.
        t97 = t98->col.
        t93 = t97.
        t90 = t93.
        t58 = zlnt_runtime_numb_290eb04a9758=>compare( left = t59 right = t90 op = `<` ).
        t25 = t58.
      ENDIF.
      IF t25 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_position.
        DATA t100 TYPE REF TO zcl_lnt_position.
        DATA t101 TYPE f.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_paren_left_w.
        DATA(t104) = t5.
        t103 ?= t104.
        t102 = t103.
        DATA t105 TYPE f.
        DATA t106 TYPE REF TO zcl_lnt_position.
        DATA t107 TYPE REF TO zcl_lnt_position.
        DATA(t108) = t102.
        t107 = t108->start.
        t106 = t107.
        DATA t109 TYPE f.
        DATA(t110) = t106.
        t109 = t110->row.
        t105 = t109.
        t101 = t105.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        DATA t114 TYPE REF TO zcl_lnt_paren_left_w.
        DATA(t115) = t5.
        t114 ?= t115.
        t113 = t114.
        DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t117 TYPE REF TO zcl_lnt_position.
        DATA t118 TYPE REF TO zcl_lnt_position.
        DATA(t119) = t113.
        t118 = t119->start.
        t117 = t118.
        DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t121) = t117.
        t120 = t121->col.
        t116 = t120.
        t112 = t116.
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
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t128) = t9.
        t127 = t128.
        DATA t129 TYPE f.
        DATA t130 TYPE REF TO zcl_lnt_position.
        DATA t131 TYPE REF TO zcl_lnt_position.
        DATA(t132) = t127.
        t131 = t132->start.
        t130 = t131.
        DATA t133 TYPE f.
        DATA(t134) = t130.
        t133 = t134->row.
        t129 = t133.
        t126 = t129.
        DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t137) = t9.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t139 TYPE REF TO zcl_lnt_position.
        DATA t140 TYPE REF TO zcl_lnt_position.
        DATA(t141) = t136.
        t140 = t141->start.
        t139 = t140.
        DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t143) = t139.
        t142 = t143->col.
        t138 = t142.
        t135 = t138.
        t125 = NEW zcl_lnt_position( i_row = t126 i_col = t135 ).
        t124 = t125.
        DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t146) = t2.
        DATA(t147) = t99.
        DATA(t148) = t124.
        t145 = zcl_lnt_edit_helper=>delete_range( i_file = t146 i_start = t147 i_end = t148 ).
        t144 = t145.
        DATA t149 TYPE abap_bool.
        DATA t150 TYPE abap_bool.
        DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t152 TYPE REF TO zcl_lnt_statement_node.
        DATA(t153) = t1.
        t152 = t153.
        DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t155) = t152.
        t154 = t155->pragmas.
        t151 = t154.
        DATA(t156) = t99.
        DATA(t157) = t124.
        t150 = me->pragma_in_range( i_pragmas = t151 i_start = t156 i_end = t157 ).
        DATA(t158) = abap_false.
        t149 = xsdbool( t150 = t158 ).
        IF t149 = abap_true.
          DATA(t159) = t3.
          DATA t160 TYPE REF TO zcl_lnt_issue.
          CLEAR t160.
          DATA(t161) = t2.
          DATA(t162) = t99.
          DATA(t163) = t124.
          DATA(t164) = |Remove double space|.
          DATA(t165) = VALUE string( ).
          DATA t166 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t166.
          DATA t167 TYPE string.
          DATA(t168) = |double_space|.
          t167 = t168.
          DATA t169 TYPE string.
          DATA(t170) = |Double space|.
          t169 = t170.
          DATA t171 TYPE string.
          DATA(t172) = |Checks that only a single space follows certain common state|.
          t172 = t172 && |ments.|.
          t171 = t172.
          DATA t173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t173.
          DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t174.
          DATA(t175) = abap_true.
          IF t175 = abap_true.
            DATA t176 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t178.
            t177 = t178.
            DATA(t179) = t177.
            DATA(t180) = |Whitespace|.
            t179->load( ).
            APPEND t180 TO t179->items.
            t179->save( ).
            DATA(t181) = t177.
            DATA(t182) = |Quickfix|.
            t181->load( ).
            APPEND t182 TO t181->items.
            t181->save( ).
            DATA(t183) = t177.
            DATA(t184) = |SingleFile|.
            t183->load( ).
            APPEND t184 TO t183->items.
            t183->save( ).
            DATA(t185) = t177.
            t176 = t185.
            t174 = t176.
          ELSE.
            DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t186.
            t174 = t186.
          ENDIF.
          t173 = t174.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t188.
          DATA(t189) = abap_true.
          IF t189 = abap_true.
            DATA(t190) = |DATA  foo TYPE i.|.
            DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t191->has = abap_true.
            t191->value = t190.
            t188 = t191.
          ELSE.
            DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t192.
            t188 = t192.
          ENDIF.
          t187 = t188.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t194.
          DATA(t195) = abap_true.
          IF t195 = abap_true.
            DATA(t196) = |DATA foo TYPE i.|.
            DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t197->has = abap_true.
            t197->value = t196.
            t194 = t197.
          ELSE.
            DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t198.
            t194 = t198.
          ENDIF.
          t193 = t194.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t200.
          t199 = t200.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t202.
          t201 = t202.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          t203 = t204.
          t166 = NEW zcl_lnt_irule_metadata( i_key = t167 i_title = t169 i_short_description = t171 i_bad_example = t187 i_good_example = t193 i_extended_information = t199 i_tags = t173 i_pragma = t201 i_pseudo_comment = t203 ).
          CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
          t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t205 ).
          ENDIF.
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
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
          ENDIF.
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
          DATA(t224) = me->conf.
          t223 = t224->zlnt_view_read_sr_15c06369f827( ).
          DATA t225 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t225.
          DATA(t226) = abap_true.
          IF t226 = abap_true.
            DATA(t227) = t144.
            t225 = t227.
          ELSE.
            DATA t228 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t228.
            t225 = t228.
          ENDIF.
          DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t229.
          t160 = zcl_lnt_issue=>at_range( i_file = t161 i_start = t162 i_end = t163 i_message_26cb = t164 i_key = t165 i_severity = t223 i_fix = t225 i_alternative_fixes = t229 ).
          t159->load( ).
          APPEND t160 TO t159->items.
          t159->save( ).
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
      DATA(t237) = abap_true.
      t234 = xsdbool( t235 = t237 ).
      t233 = t234.
      IF t234 = abap_true.
        DATA t238 TYPE abap_bool.
        DATA t239 TYPE f.
        DATA t240 TYPE REF TO zcl_lnt_abstract_token.
        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t242) = t5.
        t241 = t242.
        t240 = t241.
        DATA t243 TYPE f.
        DATA t244 TYPE REF TO zcl_lnt_position.
        DATA t245 TYPE REF TO zcl_lnt_position.
        DATA(t246) = t240.
        t245 = t246->start.
        t244 = t245.
        DATA t247 TYPE f.
        DATA(t248) = t244.
        t247 = t248->row.
        t243 = t247.
        t239 = t243.
        DATA t249 TYPE f.
        DATA t250 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t251) = t9.
        t250 = t251.
        DATA t252 TYPE f.
        DATA t253 TYPE REF TO zcl_lnt_position.
        DATA t254 TYPE REF TO zcl_lnt_position.
        DATA(t255) = t250.
        t254 = t255->start.
        t253 = t254.
        DATA t256 TYPE f.
        DATA(t257) = t253.
        t256 = t257->row.
        t252 = t256.
        t249 = t252.
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
        DATA(t263) = t9.
        t262 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_w_paren_right_w ).
        t261 = t262.
        IF t262 = abap_false.
          DATA t264 TYPE abap_bool.
          DATA(t265) = t9.
          t264 = xsdbool( t265 IS BOUND AND t265 IS INSTANCE OF zcl_lnt_w_paren_right ).
          t261 = t264.
        ENDIF.
        t231 = t261.
      ENDIF.
      t230 = t231.
      IF t231 = abap_true.
        DATA t266 TYPE abap_bool.
        DATA t267 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t268 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t269 TYPE REF TO zcl_lnt_position.
        DATA t270 TYPE REF TO zcl_lnt_position.
        DATA t271 TYPE REF TO zcl_lnt_abstract_token.
        DATA t272 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t273) = t5.
        t272 = t273.
        t271 = t272.
        DATA t274 TYPE REF TO zcl_lnt_position.
        DATA t275 TYPE f.
        DATA t276 TYPE REF TO zcl_lnt_position.
        DATA t277 TYPE REF TO zcl_lnt_position.
        DATA(t278) = t271.
        t277 = t278->start.
        t276 = t277.
        DATA t279 TYPE f.
        DATA(t280) = t276.
        t279 = t280->row.
        t275 = t279.
        DATA t281 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t282 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t283 TYPE REF TO zcl_lnt_position.
        DATA t284 TYPE REF TO zcl_lnt_position.
        DATA(t285) = t271.
        t284 = t285->start.
        t283 = t284.
        DATA t286 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t287) = t283.
        t286 = t287->col.
        t282 = t286.
        DATA t288 TYPE f.
        DATA t289 TYPE i.
        DATA t290 TYPE string.
        DATA(t291) = t271.
        t290 = t291->str.
        DATA(t292) = strlen( t290 ).
        t289 = t292.
        t288 = t289.
        DATA(t293) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t293->has = abap_true.
        t293->value = t288.
        t281 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t282 right = t293 op = `+` ).
        t274 = NEW zcl_lnt_position( i_row = t275 i_col = t281 ).
        t270 = t274.
        t269 = t270.
        DATA t294 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t295) = t269.
        t294 = t295->col.
        t268 = t294.
        DATA(t296) = CONV f( 1 ).
        DATA(t297) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t297->has = abap_true.
        t297->value = t296.
        t267 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t268 right = t297 op = `+` ).
        DATA t298 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t299 TYPE REF TO zif_lnt_union_24b9bfb5.
        DATA(t300) = t9.
        t299 ?= t300.
        t298 = t299->get_col( ).
        t266 = zlnt_runtime_numb_290eb04a9758=>compare( left = t267 right = t298 op = `<` ).
        t230 = t266.
      ENDIF.
      IF t230 = abap_true.
        DATA t301 TYPE REF TO zcl_lnt_position.
        DATA t302 TYPE REF TO zcl_lnt_position.
        DATA t303 TYPE f.
        DATA t304 TYPE REF TO zcl_lnt_position.
        DATA t305 TYPE REF TO zcl_lnt_position.
        DATA t306 TYPE REF TO zcl_lnt_abstract_token.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t308) = t5.
        t307 = t308.
        t306 = t307.
        DATA t309 TYPE REF TO zcl_lnt_position.
        DATA t310 TYPE f.
        DATA t311 TYPE REF TO zcl_lnt_position.
        DATA t312 TYPE REF TO zcl_lnt_position.
        DATA(t313) = t306.
        t312 = t313->start.
        t311 = t312.
        DATA t314 TYPE f.
        DATA(t315) = t311.
        t314 = t315->row.
        t310 = t314.
        DATA t316 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t317 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t318 TYPE REF TO zcl_lnt_position.
        DATA t319 TYPE REF TO zcl_lnt_position.
        DATA(t320) = t306.
        t319 = t320->start.
        t318 = t319.
        DATA t321 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t322) = t318.
        t321 = t322->col.
        t317 = t321.
        DATA t323 TYPE f.
        DATA t324 TYPE i.
        DATA t325 TYPE string.
        DATA(t326) = t306.
        t325 = t326->str.
        DATA(t327) = strlen( t325 ).
        t324 = t327.
        t323 = t324.
        DATA(t328) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t328->has = abap_true.
        t328->value = t323.
        t316 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t317 right = t328 op = `+` ).
        t309 = NEW zcl_lnt_position( i_row = t310 i_col = t316 ).
        t305 = t309.
        t304 = t305.
        DATA t329 TYPE f.
        DATA(t330) = t304.
        t329 = t330->row.
        t303 = t329.
        DATA t331 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t332 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t333 TYPE REF TO zcl_lnt_position.
        DATA t334 TYPE REF TO zcl_lnt_position.
        DATA t335 TYPE REF TO zcl_lnt_abstract_token.
        DATA t336 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t337) = t5.
        t336 = t337.
        t335 = t336.
        DATA t338 TYPE REF TO zcl_lnt_position.
        DATA t339 TYPE f.
        DATA t340 TYPE REF TO zcl_lnt_position.
        DATA t341 TYPE REF TO zcl_lnt_position.
        DATA(t342) = t335.
        t341 = t342->start.
        t340 = t341.
        DATA t343 TYPE f.
        DATA(t344) = t340.
        t343 = t344->row.
        t339 = t343.
        DATA t345 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t346 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t347 TYPE REF TO zcl_lnt_position.
        DATA t348 TYPE REF TO zcl_lnt_position.
        DATA(t349) = t335.
        t348 = t349->start.
        t347 = t348.
        DATA t350 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t351) = t347.
        t350 = t351->col.
        t346 = t350.
        DATA t352 TYPE f.
        DATA t353 TYPE i.
        DATA t354 TYPE string.
        DATA(t355) = t335.
        t354 = t355->str.
        DATA(t356) = strlen( t354 ).
        t353 = t356.
        t352 = t353.
        DATA(t357) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t357->has = abap_true.
        t357->value = t352.
        t345 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t346 right = t357 op = `+` ).
        t338 = NEW zcl_lnt_position( i_row = t339 i_col = t345 ).
        t334 = t338.
        t333 = t334.
        DATA t358 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t359) = t333.
        t358 = t359->col.
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
        DATA(t366) = t9.
        t365 ?= t366.
        t364 = t365->get_row( ).
        DATA t367 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t368 TYPE REF TO zif_lnt_union_24b9bfb5.
        DATA(t369) = t9.
        t368 ?= t369.
        t367 = t368->get_col( ).
        t363 = NEW zcl_lnt_position( i_row = t364 i_col = t367 ).
        t362 = t363.
        DATA t370 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t371 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t372) = t2.
        DATA(t373) = t301.
        DATA(t374) = t362.
        t371 = zcl_lnt_edit_helper=>delete_range( i_file = t372 i_start = t373 i_end = t374 ).
        t370 = t371.
        DATA t375 TYPE abap_bool.
        DATA t376 TYPE abap_bool.
        DATA t377 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t378 TYPE REF TO zcl_lnt_statement_node.
        DATA(t379) = t1.
        t378 = t379.
        DATA t380 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t381) = t378.
        t380 = t381->pragmas.
        t377 = t380.
        DATA(t382) = t301.
        DATA(t383) = t362.
        t376 = me->pragma_in_range( i_pragmas = t377 i_start = t382 i_end = t383 ).
        DATA(t384) = abap_false.
        t375 = xsdbool( t376 = t384 ).
        IF t375 = abap_true.
          DATA(t385) = t3.
          DATA t386 TYPE REF TO zcl_lnt_issue.
          CLEAR t386.
          DATA(t387) = t2.
          DATA(t388) = t301.
          DATA(t389) = t362.
          DATA(t390) = |Remove double space|.
          DATA(t391) = VALUE string( ).
          DATA t392 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t392.
          DATA t393 TYPE string.
          DATA(t394) = |double_space|.
          t393 = t394.
          DATA t395 TYPE string.
          DATA(t396) = |Double space|.
          t395 = t396.
          DATA t397 TYPE string.
          DATA(t398) = |Checks that only a single space follows certain common state|.
          t398 = t398 && |ments.|.
          t397 = t398.
          DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t399.
          DATA t400 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t400.
          DATA(t401) = abap_true.
          IF t401 = abap_true.
            DATA t402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t403 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t404.
            t403 = t404.
            DATA(t405) = t403.
            DATA(t406) = |Whitespace|.
            t405->load( ).
            APPEND t406 TO t405->items.
            t405->save( ).
            DATA(t407) = t403.
            DATA(t408) = |Quickfix|.
            t407->load( ).
            APPEND t408 TO t407->items.
            t407->save( ).
            DATA(t409) = t403.
            DATA(t410) = |SingleFile|.
            t409->load( ).
            APPEND t410 TO t409->items.
            t409->save( ).
            DATA(t411) = t403.
            t402 = t411.
            t400 = t402.
          ELSE.
            DATA t412 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t412.
            t400 = t412.
          ENDIF.
          t399 = t400.
          DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t413.
          DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t414.
          DATA(t415) = abap_true.
          IF t415 = abap_true.
            DATA(t416) = |DATA  foo TYPE i.|.
            DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t417->has = abap_true.
            t417->value = t416.
            t414 = t417.
          ELSE.
            DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t418.
            t414 = t418.
          ENDIF.
          t413 = t414.
          DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t419.
          DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t420.
          DATA(t421) = abap_true.
          IF t421 = abap_true.
            DATA(t422) = |DATA foo TYPE i.|.
            DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t423->has = abap_true.
            t423->value = t422.
            t420 = t423.
          ELSE.
            DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t424.
            t420 = t424.
          ENDIF.
          t419 = t420.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t426.
          t425 = t426.
          DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t428.
          t427 = t428.
          DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t430.
          t429 = t430.
          t392 = NEW zcl_lnt_irule_metadata( i_key = t393 i_title = t395 i_short_description = t397 i_bad_example = t413 i_good_example = t419 i_extended_information = t425 i_tags = t399 i_pragma = t427 i_pseudo_comment = t429 ).
          CREATE OBJECT t392->zlnt_view_ownkeys_b0e8086400eb.
          t392->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t431.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t431 ).
          ENDIF.
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
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t437 p1 = t438 ).
          ENDIF.
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
          DATA(t450) = me->conf.
          t449 = t450->zlnt_view_read_sr_15c06369f827( ).
          DATA t451 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t451.
          DATA(t452) = abap_true.
          IF t452 = abap_true.
            DATA(t453) = t370.
            t451 = t453.
          ELSE.
            DATA t454 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t454.
            t451 = t454.
          ENDIF.
          DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t455.
          t386 = zcl_lnt_issue=>at_range( i_file = t387 i_start = t388 i_end = t389 i_message_26cb = t390 i_key = t391 i_severity = t449 i_fix = t451 i_alternative_fixes = t455 ).
          t385->load( ).
          APPEND t386 TO t385->items.
          t385->save( ).
        ENDIF.
      ENDIF.
      DATA t456 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t456.
      DATA(t457) = abap_true.
      IF t457 = abap_true.
        DATA(t458) = t9.
        t456 = t458.
      ELSE.
        DATA t459 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t459.
        t456 = t459.
      ENDIF.
      t5 = t456.
    ENDDO.
    DATA(t460) = t3.
    result = t460.

  ENDMETHOD.

  METHOD pragma_in_range.
    DATA(t1) = i_pragmas.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_false.
    t4 = t5.
    DATA(t6) = t1.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t6->load( ).
      IF t9 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t6->items INDEX t9 + 1 INTO t8.
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
      DATA t14 TYPE REF TO zcl_lnt_position.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = t7.
      t15 = t16.
      DATA t17 TYPE REF TO zcl_lnt_position.
      DATA(t18) = t15.
      t17 = t18->start.
      t14 = t17.
      t13 = t14.
      DATA t19 TYPE REF TO zcl_lnt_position.
      DATA(t20) = t2.
      t19 = t20.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA(t22) = t3.
      t21 = t22.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t13.
      DATA(t26) = t19.
      t24 = t25->is_after( i_p = t26 ).
      t23 = t24.
      IF t24 = abap_true.
        DATA(t27) = VALUE abap_bool( ).
        DATA t28 TYPE REF TO zcl_lnt_position.
        DATA(t29) = t21.
        t28 = t29.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE f.
        DATA(t33) = t13.
        t32 = t33->row.
        DATA t34 TYPE f.
        DATA(t35) = t28.
        t34 = t35->row.
        t31 = xsdbool( t32 < t34 ).
        t30 = t31.
        IF t31 = abap_false.
          DATA t36 TYPE abap_bool.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE f.
          DATA(t39) = t13.
          t38 = t39->row.
          DATA t40 TYPE f.
          DATA(t41) = t28.
          t40 = t41->row.
          t37 = xsdbool( t38 = t40 ).
          t36 = t37.
          IF t37 = abap_true.
            DATA t42 TYPE abap_bool.
            DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t44) = t13.
            t43 = t44->col.
            DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t46) = t28.
            t45 = t46->col.
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
        DATA(t47) = abap_true.
        t4 = t47.
      ENDIF.
    ENDDO.
    DATA(t48) = t4.
    result = t48.

  ENDMETHOD.

  METHOD check_keywords.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_token_node.
    DATA t6 TYPE REF TO zcl_lnt_token_node.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = t11.
    t13 = t14->colon.
    t10 = t13.
    t9 = t10.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t9.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t17 = xsdbool( t18 = abap_false ).
    t8 = t17.
    t7 = t8.
    IF t8 = abap_false.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE i.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zcl_lnt_statement_node.
      DATA(t24) = t1.
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = t23.
      t25 = t26->pragmas.
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
    DATA(t30) = t1.
    t29 = t30->get_token_nodes( ).
    DATA t31 TYPE REF TO zcl_lnt_token_node.
    CLEAR t31.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
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
      DATA t37 TYPE REF TO zcl_lnt_token_node.
      DATA(t38) = t5.
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      t39 = t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t37.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ENDIF.
      t36 = t41.
      IF t36 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_token_node.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
          DATA(t45) = t31.
          t43 = t45.
        ELSE.
          DATA t46 TYPE REF TO zcl_lnt_token_node.
          CLEAR t46.
          t43 = t46.
        ENDIF.
        t5 = t43.
        CONTINUE.
      ENDIF.
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE string.
      DATA t49 TYPE string.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t52 TYPE REF TO zcl_lnt_token_node.
      DATA(t53) = t5.
      t52 = t53.
      t51 = t52->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      t50 = t51.
      DATA t54 TYPE string.
      DATA(t55) = t50.
      t54 = t55->str.
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
        DATA(t63) = t47.
        DATA(t64) = |(|.
        t62 = xsdbool( t63 = t64 ).
        t59 = t62.
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        DATA t65 TYPE abap_bool.
        DATA(t66) = t47.
        DATA(t67) = |)|.
        t65 = xsdbool( t66 = t67 ).
        t58 = t65.
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE abap_bool.
        DATA(t70) = abap_false.
        t69 = t70.
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
          DATA(t78) = t74.
          DATA(t79) = strlen( t78 ).
          t77 = t78.
          IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t77 TO UPPER CASE.
          ELSE.
            t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
          ENDIF.
          DATA(t80) = t47.
          t76 = xsdbool( t77 = t80 ).
          IF t76 = abap_true.
            DATA(t81) = abap_true.
            t69 = t81.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t82) = t69.
        t68 = t82.
        t57 = t68.
      ENDIF.
      IF t57 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_token_node.
        CLEAR t83.
        DATA(t84) = abap_true.
        IF t84 = abap_true.
          DATA(t85) = t31.
          t83 = t85.
        ELSE.
          DATA t86 TYPE REF TO zcl_lnt_token_node.
          CLEAR t86.
          t83 = t86.
        ENDIF.
        t5 = t83.
        CONTINUE.
      ENDIF.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE f.
      DATA t90 TYPE REF TO zcl_lnt_position.
      DATA t91 TYPE REF TO zcl_lnt_position.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      DATA t93 TYPE REF TO zcl_lnt_abstract_token.
      DATA t94 TYPE REF TO zcl_lnt_token_node.
      DATA(t95) = t5.
      t94 = t95.
      t93 = t94->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      t92 = t93.
      DATA t96 TYPE REF TO zcl_lnt_position.
      DATA(t97) = t92.
      t96 = t97->start.
      t91 = t96.
      t90 = t91.
      DATA t98 TYPE f.
      DATA(t99) = t90.
      t98 = t99->row.
      t89 = t98.
      DATA t100 TYPE f.
      DATA t101 TYPE REF TO zcl_lnt_position.
      DATA t102 TYPE REF TO zcl_lnt_position.
      DATA t103 TYPE REF TO zcl_lnt_abstract_token.
      DATA t104 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t105) = t31.
      t104 = t105->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
      t103 = t104.
      DATA t106 TYPE REF TO zcl_lnt_position.
      DATA(t107) = t103.
      t106 = t107->start.
      t102 = t106.
      t101 = t102.
      DATA t108 TYPE f.
      DATA(t109) = t101.
      t108 = t109->row.
      t100 = t108.
      t88 = xsdbool( t89 = t100 ).
      t87 = t88.
      IF t88 = abap_true.
        DATA t110 TYPE abap_bool.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zcl_lnt_position.
        DATA t114 TYPE REF TO zcl_lnt_position.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        DATA t116 TYPE REF TO zcl_lnt_abstract_token.
        DATA t117 TYPE REF TO zcl_lnt_token_node.
        DATA(t118) = t5.
        t117 = t118.
        t116 = t117->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t115 = t116.
        DATA t119 TYPE REF TO zcl_lnt_position.
        DATA t120 TYPE f.
        DATA t121 TYPE REF TO zcl_lnt_position.
        DATA t122 TYPE REF TO zcl_lnt_position.
        DATA(t123) = t115.
        t122 = t123->start.
        t121 = t122.
        DATA t124 TYPE f.
        DATA(t125) = t121.
        t124 = t125->row.
        t120 = t124.
        DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t128 TYPE REF TO zcl_lnt_position.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = t115.
        t129 = t130->start.
        t128 = t129.
        DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t132) = t128.
        t131 = t132->col.
        t127 = t131.
        DATA t133 TYPE f.
        DATA t134 TYPE i.
        DATA t135 TYPE string.
        DATA(t136) = t115.
        t135 = t136->str.
        DATA(t137) = strlen( t135 ).
        t134 = t137.
        t133 = t134.
        DATA(t138) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t138->has = abap_true.
        t138->value = t133.
        t126 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t127 right = t138 op = `+` ).
        t119 = NEW zcl_lnt_position( i_row = t120 i_col = t126 ).
        t114 = t119.
        t113 = t114.
        DATA t139 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t140) = t113.
        t139 = t140->col.
        t112 = t139.
        DATA(t141) = CONV f( 1 ).
        DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t142->has = abap_true.
        t142->value = t141.
        t111 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t112 right = t142 op = `+` ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t144 TYPE REF TO zcl_lnt_position.
        DATA t145 TYPE REF TO zcl_lnt_position.
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t148) = t31.
        t147 = t148->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t146 = t147.
        DATA t149 TYPE REF TO zcl_lnt_position.
        DATA(t150) = t146.
        t149 = t150->start.
        t145 = t149.
        t144 = t145.
        DATA t151 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t152) = t144.
        t151 = t152->col.
        t143 = t151.
        t110 = zlnt_runtime_numb_290eb04a9758=>compare( left = t111 right = t143 op = `<` ).
        t87 = t110.
      ENDIF.
      IF t87 = abap_true.
        DATA t153 TYPE REF TO zcl_lnt_position.
        DATA t154 TYPE REF TO zcl_lnt_position.
        DATA t155 TYPE f.
        DATA t156 TYPE REF TO zcl_lnt_position.
        DATA t157 TYPE REF TO zcl_lnt_position.
        DATA t158 TYPE REF TO zcl_lnt_abstract_token.
        DATA t159 TYPE REF TO zcl_lnt_abstract_token.
        DATA t160 TYPE REF TO zcl_lnt_token_node.
        DATA(t161) = t5.
        t160 = t161.
        t159 = t160->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t158 = t159.
        DATA t162 TYPE REF TO zcl_lnt_position.
        DATA t163 TYPE f.
        DATA t164 TYPE REF TO zcl_lnt_position.
        DATA t165 TYPE REF TO zcl_lnt_position.
        DATA(t166) = t158.
        t165 = t166->start.
        t164 = t165.
        DATA t167 TYPE f.
        DATA(t168) = t164.
        t167 = t168->row.
        t163 = t167.
        DATA t169 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t171 TYPE REF TO zcl_lnt_position.
        DATA t172 TYPE REF TO zcl_lnt_position.
        DATA(t173) = t158.
        t172 = t173->start.
        t171 = t172.
        DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t175) = t171.
        t174 = t175->col.
        t170 = t174.
        DATA t176 TYPE f.
        DATA t177 TYPE i.
        DATA t178 TYPE string.
        DATA(t179) = t158.
        t178 = t179->str.
        DATA(t180) = strlen( t178 ).
        t177 = t180.
        t176 = t177.
        DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t181->has = abap_true.
        t181->value = t176.
        t169 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ).
        t162 = NEW zcl_lnt_position( i_row = t163 i_col = t169 ).
        t157 = t162.
        t156 = t157.
        DATA t182 TYPE f.
        DATA(t183) = t156.
        t182 = t183->row.
        t155 = t182.
        DATA t184 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t185 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t186 TYPE REF TO zcl_lnt_position.
        DATA t187 TYPE REF TO zcl_lnt_position.
        DATA t188 TYPE REF TO zcl_lnt_abstract_token.
        DATA t189 TYPE REF TO zcl_lnt_abstract_token.
        DATA t190 TYPE REF TO zcl_lnt_token_node.
        DATA(t191) = t5.
        t190 = t191.
        t189 = t190->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t188 = t189.
        DATA t192 TYPE REF TO zcl_lnt_position.
        DATA t193 TYPE f.
        DATA t194 TYPE REF TO zcl_lnt_position.
        DATA t195 TYPE REF TO zcl_lnt_position.
        DATA(t196) = t188.
        t195 = t196->start.
        t194 = t195.
        DATA t197 TYPE f.
        DATA(t198) = t194.
        t197 = t198->row.
        t193 = t197.
        DATA t199 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t201 TYPE REF TO zcl_lnt_position.
        DATA t202 TYPE REF TO zcl_lnt_position.
        DATA(t203) = t188.
        t202 = t203->start.
        t201 = t202.
        DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t205) = t201.
        t204 = t205->col.
        t200 = t204.
        DATA t206 TYPE f.
        DATA t207 TYPE i.
        DATA t208 TYPE string.
        DATA(t209) = t188.
        t208 = t209->str.
        DATA(t210) = strlen( t208 ).
        t207 = t210.
        t206 = t207.
        DATA(t211) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t211->has = abap_true.
        t211->value = t206.
        t199 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t200 right = t211 op = `+` ).
        t192 = NEW zcl_lnt_position( i_row = t193 i_col = t199 ).
        t187 = t192.
        t186 = t187.
        DATA t212 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t213) = t186.
        t212 = t213->col.
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
        DATA t219 TYPE REF TO zcl_lnt_abstract_token.
        DATA t220 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t221) = t31.
        t220 = t221->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t219 = t220.
        DATA t222 TYPE f.
        DATA t223 TYPE REF TO zcl_lnt_position.
        DATA t224 TYPE REF TO zcl_lnt_position.
        DATA(t225) = t219.
        t224 = t225->start.
        t223 = t224.
        DATA t226 TYPE f.
        DATA(t227) = t223.
        t226 = t227->row.
        t222 = t226.
        t218 = t222.
        DATA t228 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t229 TYPE REF TO zcl_lnt_abstract_token.
        DATA t230 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t231) = t31.
        t230 = t231->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        t229 = t230.
        DATA t232 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t233 TYPE REF TO zcl_lnt_position.
        DATA t234 TYPE REF TO zcl_lnt_position.
        DATA(t235) = t229.
        t234 = t235->start.
        t233 = t234.
        DATA t236 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t237) = t233.
        t236 = t237->col.
        t232 = t236.
        t228 = t232.
        t217 = NEW zcl_lnt_position( i_row = t218 i_col = t228 ).
        t216 = t217.
        DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t239 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t240) = t2.
        DATA(t241) = t153.
        DATA(t242) = t216.
        t239 = zcl_lnt_edit_helper=>delete_range( i_file = t240 i_start = t241 i_end = t242 ).
        t238 = t239.
        DATA(t243) = t3.
        DATA t244 TYPE REF TO zcl_lnt_issue.
        CLEAR t244.
        DATA(t245) = t2.
        DATA(t246) = t153.
        DATA(t247) = t216.
        DATA(t248) = |Remove double space|.
        DATA(t249) = VALUE string( ).
        DATA t250 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t250.
        DATA t251 TYPE string.
        DATA(t252) = |double_space|.
        t251 = t252.
        DATA t253 TYPE string.
        DATA(t254) = |Double space|.
        t253 = t254.
        DATA t255 TYPE string.
        DATA(t256) = |Checks that only a single space follows certain common state|.
        t256 = t256 && |ments.|.
        t255 = t256.
        DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t257.
        DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t258.
        DATA(t259) = abap_true.
        IF t259 = abap_true.
          DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t262.
          t261 = t262.
          DATA(t263) = t261.
          DATA(t264) = |Whitespace|.
          t263->load( ).
          APPEND t264 TO t263->items.
          t263->save( ).
          DATA(t265) = t261.
          DATA(t266) = |Quickfix|.
          t265->load( ).
          APPEND t266 TO t265->items.
          t265->save( ).
          DATA(t267) = t261.
          DATA(t268) = |SingleFile|.
          t267->load( ).
          APPEND t268 TO t267->items.
          t267->save( ).
          DATA(t269) = t261.
          t260 = t269.
          t258 = t260.
        ELSE.
          DATA t270 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t270.
          t258 = t270.
        ENDIF.
        t257 = t258.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA(t273) = abap_true.
        IF t273 = abap_true.
          DATA(t274) = |DATA  foo TYPE i.|.
          DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t275->has = abap_true.
          t275->value = t274.
          t272 = t275.
        ELSE.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          t272 = t276.
        ENDIF.
        t271 = t272.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t278.
        DATA(t279) = abap_true.
        IF t279 = abap_true.
          DATA(t280) = |DATA foo TYPE i.|.
          DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t281->has = abap_true.
          t281->value = t280.
          t278 = t281.
        ELSE.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t282.
          t278 = t282.
        ENDIF.
        t277 = t278.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t284.
        t283 = t284.
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t286.
        t285 = t286.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        t287 = t288.
        t250 = NEW zcl_lnt_irule_metadata( i_key = t251 i_title = t253 i_short_description = t255 i_bad_example = t271 i_good_example = t277 i_extended_information = t283 i_tags = t257 i_pragma = t285 i_pseudo_comment = t287 ).
        CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
        t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t289 ).
        ENDIF.
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
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t295 p1 = t296 ).
        ENDIF.
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
        DATA(t308) = me->conf.
        t307 = t308->zlnt_view_read_sr_15c06369f827( ).
        DATA t309 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t309.
        DATA(t310) = abap_true.
        IF t310 = abap_true.
          DATA(t311) = t238.
          t309 = t311.
        ELSE.
          DATA t312 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t312.
          t309 = t312.
        ENDIF.
        DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t313.
        t244 = zcl_lnt_issue=>at_range( i_file = t245 i_start = t246 i_end = t247 i_message_26cb = t248 i_key = t249 i_severity = t307 i_fix = t309 i_alternative_fixes = t313 ).
        t243->load( ).
        APPEND t244 TO t243->items.
        t243->save( ).
        DATA(t314) = t3.
        result = t314.
        RETURN.
      ENDIF.
      DATA t315 TYPE REF TO zcl_lnt_token_node.
      CLEAR t315.
      DATA(t316) = abap_true.
      IF t316 = abap_true.
        DATA(t317) = t31.
        t315 = t317.
      ELSE.
        DATA t318 TYPE REF TO zcl_lnt_token_node.
        CLEAR t318.
        t315 = t318.
      ENDIF.
      t5 = t315.
    ENDDO.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t319.
    result = t319.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_double_space_conf.
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
        t1 = NEW zcl_lnt_double_space_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_db_sp_ts_db_spc( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_db_sp_ts_db_spc( i_file = i_file ) ).
    result = t1.

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
