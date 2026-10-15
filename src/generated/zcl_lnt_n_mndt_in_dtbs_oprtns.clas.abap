* TS: src/rules/no_mandt_in_database_operations.ts:13:1 NoMandtInDatabaseOperations
CLASS zcl_lnt_n_mndt_in_dtbs_oprtns DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_mnd_in_dtbs_oprt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_n_m_i_d_o_t_n_m_i_d RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_mnd_in_dtbs_oprt_cnf.
    METHODS s_c_i_s_r_n_m_i_d_o_t_n_m_i_d IMPORTING i_conf TYPE REF TO zcl_lnt_n_mnd_in_dtbs_oprt_cnf.
    METHODS r_p_i_s_r_n_m_i_d_o_t_n_m_i_d IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_database_operation IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_mandt_in_condition IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS find_explicit_client IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_token.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_n_mndt_in_dtbs_oprtns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_n_mnd_in_dtbs_oprt_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_mandt_in_database_operations|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No MANDT in database operations|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Do not specify the client in database operations; the ABAP r|.
    t7 = t7 && |untime handles it automatically.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Only check for the name MANDT, not for the field type. The r|.
      t11 = t11 && |ule does not check for dynamic SQL.|.
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
      DATA(t23) = |Syntax|.
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
      DATA(t29) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
      t29 = t29 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
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
      DATA(t35) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
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

  METHOD g_c_i_s_r_n_m_i_d_o_t_n_m_i_d.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_m_i_d_o_t_n_m_i_d.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_m_i_d_o_t_n_m_i_d.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zcl_lnt_statement_node.
      DATA(t17) = t9.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zif_lnt_statement.
      DATA t20 TYPE REF TO zif_lnt_statement.
      DATA(t21) = t16.
      t20 = t21->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t19 = t20.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE abap_bool.
      DATA(t32) = t19.
      t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_delete_database ).
      t30 = t31.
      IF t31 = abap_false.
        DATA t33 TYPE abap_bool.
        DATA(t34) = t19.
        t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_insert_database ).
        t30 = t33.
      ENDIF.
      t29 = t30.
      IF t30 = abap_false.
        DATA t35 TYPE abap_bool.
        DATA(t36) = t19.
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_merge_database ).
        t29 = t35.
      ENDIF.
      t28 = t29.
      IF t29 = abap_false.
        DATA t37 TYPE abap_bool.
        DATA(t38) = t19.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_st_modify_database ).
        t28 = t37.
      ENDIF.
      t27 = t28.
      IF t28 = abap_false.
        DATA t39 TYPE abap_bool.
        DATA(t40) = t19.
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_open_cursor ).
        t27 = t39.
      ENDIF.
      t26 = t27.
      IF t27 = abap_false.
        DATA t41 TYPE abap_bool.
        DATA(t42) = t19.
        t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t26 = t41.
      ENDIF.
      t25 = t26.
      IF t26 = abap_false.
        DATA t43 TYPE abap_bool.
        DATA(t44) = t19.
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t25 = t43.
      ENDIF.
      t24 = t25.
      IF t25 = abap_false.
        DATA t45 TYPE abap_bool.
        DATA(t46) = t19.
        t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_st_update_database ).
        t24 = t45.
      ENDIF.
      t23 = t24.
      IF t24 = abap_false.
        DATA t47 TYPE abap_bool.
        DATA(t48) = t19.
        t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_with ).
        t23 = t47.
      ENDIF.
      t22 = t23.
      IF t23 = abap_false.
        DATA t49 TYPE abap_bool.
        DATA(t50) = t19.
        t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_st_with_loop ).
        t22 = t49.
      ENDIF.
      t18 = t22.
      t15 = t18.
      DATA(t51) = abap_false.
      t14 = xsdbool( t15 = t51 ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      DATA(t54) = t9.
      t53 = me->find_mandt_in_condition( i_statement = t54 ).
      t52 = t53.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = t52.
      t56 = t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      t58 = t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = t56.
      IF t62 IS INITIAL.
        t61 = abap_true.
      ENDIF.
      t60 = xsdbool( t61 = abap_false ).
      t55 = t60.
      IF t55 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_issue.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_issue.
        CLEAR t64.
        DATA(t65) = t1.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        DATA(t68) = t52.
        t67 = t68.
        t66 = t67->get_first_token( ).
        DATA(t69) = VALUE string( ).
        DATA t70 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t70.
        DATA t71 TYPE string.
        DATA(t72) = |no_mandt_in_database_operations|.
        t71 = t72.
        DATA t73 TYPE string.
        DATA(t74) = |No MANDT in database operations|.
        t73 = t74.
        DATA t75 TYPE string.
        DATA(t76) = |Do not specify the client in database operations; the ABAP r|.
        t76 = t76 && |untime handles it automatically.|.
        t75 = t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA(t80) = |Only check for the name MANDT, not for the field type. The r|.
          t80 = t80 && |ule does not check for dynamic SQL.|.
          DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t81->has = abap_true.
          t81->value = t80.
          t78 = t81.
        ELSE.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          t78 = t82.
        ENDIF.
        t77 = t78.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t83.
        DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t84.
        DATA(t85) = abap_true.
        IF t85 = abap_true.
          DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t88.
          t87 = t88.
          DATA(t89) = t87.
          DATA(t90) = |SingleFile|.
          t89->load( ).
          APPEND t90 TO t89->items.
          t89->save( ).
          DATA(t91) = t87.
          DATA(t92) = |Syntax|.
          t91->load( ).
          APPEND t92 TO t91->items.
          t91->save( ).
          DATA(t93) = t87.
          t86 = t93.
          t84 = t86.
        ELSE.
          DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t94.
          t84 = t94.
        ENDIF.
        t83 = t84.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA(t97) = abap_true.
        IF t97 = abap_true.
          DATA(t98) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
          t98 = t98 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
          DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t99->has = abap_true.
          t99->value = t98.
          t96 = t99.
        ELSE.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t96 = t100.
        ENDIF.
        t95 = t96.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA(t104) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
          DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t105->has = abap_true.
          t105->value = t104.
          t102 = t105.
        ELSE.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          t102 = t106.
        ENDIF.
        t101 = t102.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        t107 = t108.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        t109 = t110.
        t70 = NEW zcl_lnt_irule_metadata( i_key = t71 i_title = t73 i_short_description = t75 i_bad_example = t95 i_good_example = t101 i_extended_information = t77 i_tags = t83 i_pragma = t107 i_pseudo_comment = t109 ).
        CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
        t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t111 ).
        ENDIF.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t112 ).
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t113 ).
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t114 ).
        ENDIF.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t115 ).
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t116 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t117 ).
        ENDIF.
        CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
        t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t118) = |key|.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
        ENDIF.
        DATA(t120) = |title|.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
        ENDIF.
        DATA(t122) = |shortDescription|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        ENDIF.
        DATA(t124) = |extendedInformation|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        DATA(t126) = |tags|.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
        ENDIF.
        DATA(t128) = |badExample|.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
        ENDIF.
        DATA(t130) = |goodExample|.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
        ENDIF.
        t69 = t70->title.
        DATA(t132) = VALUE string( ).
        DATA t133 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t133.
        DATA t134 TYPE string.
        DATA(t135) = |no_mandt_in_database_operations|.
        t134 = t135.
        DATA t136 TYPE string.
        DATA(t137) = |No MANDT in database operations|.
        t136 = t137.
        DATA t138 TYPE string.
        DATA(t139) = |Do not specify the client in database operations; the ABAP r|.
        t139 = t139 && |untime handles it automatically.|.
        t138 = t139.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA(t143) = |Only check for the name MANDT, not for the field type. The r|.
          t143 = t143 && |ule does not check for dynamic SQL.|.
          DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t144->has = abap_true.
          t144->value = t143.
          t141 = t144.
        ELSE.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t141 = t145.
        ENDIF.
        t140 = t141.
        DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t146.
        DATA t147 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t147.
        DATA(t148) = abap_true.
        IF t148 = abap_true.
          DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t151.
          t150 = t151.
          DATA(t152) = t150.
          DATA(t153) = |SingleFile|.
          t152->load( ).
          APPEND t153 TO t152->items.
          t152->save( ).
          DATA(t154) = t150.
          DATA(t155) = |Syntax|.
          t154->load( ).
          APPEND t155 TO t154->items.
          t154->save( ).
          DATA(t156) = t150.
          t149 = t156.
          t147 = t149.
        ELSE.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t157.
          t147 = t157.
        ENDIF.
        t146 = t147.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        DATA(t160) = abap_true.
        IF t160 = abap_true.
          DATA(t161) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
          t161 = t161 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
          DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t162->has = abap_true.
          t162->value = t161.
          t159 = t162.
        ELSE.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          t159 = t163.
        ENDIF.
        t158 = t159.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t164.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        DATA(t166) = abap_true.
        IF t166 = abap_true.
          DATA(t167) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
          DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t168->has = abap_true.
          t168->value = t167.
          t165 = t168.
        ELSE.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          t165 = t169.
        ENDIF.
        t164 = t165.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        t170 = t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t172 = t173.
        t133 = NEW zcl_lnt_irule_metadata( i_key = t134 i_title = t136 i_short_description = t138 i_bad_example = t158 i_good_example = t164 i_extended_information = t140 i_tags = t146 i_pragma = t170 i_pseudo_comment = t172 ).
        CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
        t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t174 ).
        ENDIF.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t175 ).
        ENDIF.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t176 ).
        ENDIF.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t177 ).
        ENDIF.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t180 ).
        ENDIF.
        CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
        t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t181) = |key|.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
        ENDIF.
        DATA(t183) = |title|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        ENDIF.
        DATA(t185) = |shortDescription|.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
        ENDIF.
        DATA(t187) = |extendedInformation|.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
        ENDIF.
        DATA(t189) = |tags|.
        DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t190.
        IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
        ENDIF.
        DATA(t191) = |badExample|.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
        ENDIF.
        DATA(t193) = |goodExample|.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
        ENDIF.
        t132 = t133->key.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t196) = me->conf.
        t195 = t196->zlnt_view_read_sr_15c06369f827( ).
        DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t197.
        t64 = zcl_lnt_issue=>at_token( i_file = t65 i_token = t66 i_message_26cb = t69 i_key = t132 i_severity = t195 i_fix = t197 ).
        t63 = t64.
        DATA(t198) = t2.
        DATA(t199) = t63.
        t198->load( ).
        APPEND t199 TO t198->items.
        t198->save( ).
        CONTINUE.
      ENDIF.
      DATA t200 TYPE REF TO zcl_lnt_abstract_token.
      DATA t201 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t202) = t9.
      t201 = me->find_explicit_client( i_statement = t202 ).
      t200 = t201.
      DATA(t203) = VALUE abap_bool( ).
      DATA t204 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t205) = t200.
      t204 = t205.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      t206 = t207.
      DATA(t208) = VALUE abap_bool( ).
      DATA(t209) = VALUE abap_bool( ).
      DATA(t210) = t204.
      IF t210 IS INITIAL.
        t209 = abap_true.
      ENDIF.
      t208 = xsdbool( t209 = abap_false ).
      t203 = t208.
      IF t203 = abap_true.
        DATA t211 TYPE REF TO zcl_lnt_issue.
        CLEAR t211.
        DATA t212 TYPE REF TO zcl_lnt_issue.
        CLEAR t212.
        DATA(t213) = t1.
        DATA t214 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t215) = t200.
        t214 = t215.
        DATA(t216) = VALUE string( ).
        DATA t217 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t217.
        DATA t218 TYPE string.
        DATA(t219) = |no_mandt_in_database_operations|.
        t218 = t219.
        DATA t220 TYPE string.
        DATA(t221) = |No MANDT in database operations|.
        t220 = t221.
        DATA t222 TYPE string.
        DATA(t223) = |Do not specify the client in database operations; the ABAP r|.
        t223 = t223 && |untime handles it automatically.|.
        t222 = t223.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        DATA(t226) = abap_true.
        IF t226 = abap_true.
          DATA(t227) = |Only check for the name MANDT, not for the field type. The r|.
          t227 = t227 && |ule does not check for dynamic SQL.|.
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
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t230.
        DATA t231 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t231.
        DATA(t232) = abap_true.
        IF t232 = abap_true.
          DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t235.
          t234 = t235.
          DATA(t236) = t234.
          DATA(t237) = |SingleFile|.
          t236->load( ).
          APPEND t237 TO t236->items.
          t236->save( ).
          DATA(t238) = t234.
          DATA(t239) = |Syntax|.
          t238->load( ).
          APPEND t239 TO t238->items.
          t238->save( ).
          DATA(t240) = t234.
          t233 = t240.
          t231 = t233.
        ELSE.
          DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t241.
          t231 = t241.
        ENDIF.
        t230 = t231.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t242.
        DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t243.
        DATA(t244) = abap_true.
        IF t244 = abap_true.
          DATA(t245) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
          t245 = t245 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
          DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t246->has = abap_true.
          t246->value = t245.
          t243 = t246.
        ELSE.
          DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t247.
          t243 = t247.
        ENDIF.
        t242 = t243.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        DATA(t250) = abap_true.
        IF t250 = abap_true.
          DATA(t251) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
          DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t252->has = abap_true.
          t252->value = t251.
          t249 = t252.
        ELSE.
          DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t253.
          t249 = t253.
        ENDIF.
        t248 = t249.
        DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t255.
        t254 = t255.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t257.
        t256 = t257.
        t217 = NEW zcl_lnt_irule_metadata( i_key = t218 i_title = t220 i_short_description = t222 i_bad_example = t242 i_good_example = t248 i_extended_information = t224 i_tags = t230 i_pragma = t254 i_pseudo_comment = t256 ).
        CREATE OBJECT t217->zlnt_view_ownkeys_b0e8086400eb.
        t217->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t258 ).
        ENDIF.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t259 ).
        ENDIF.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t260 ).
        ENDIF.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t261 ).
        ENDIF.
        DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t262.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t262 ).
        ENDIF.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t263.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t263 ).
        ENDIF.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        IF t217->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t264 ).
        ENDIF.
        CREATE OBJECT t217->zlnt_json_ownkeys_70e5fd461788.
        t217->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t265) = |key|.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
        ENDIF.
        DATA(t267) = |title|.
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
        ENDIF.
        DATA(t269) = |shortDescription|.
        DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t270.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t269 p1 = t270 ).
        ENDIF.
        DATA(t271) = |extendedInformation|.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
        ENDIF.
        DATA(t273) = |tags|.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
        ENDIF.
        DATA(t275) = |badExample|.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t275 p1 = t276 ).
        ENDIF.
        DATA(t277) = |goodExample|.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t217->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t277 p1 = t278 ).
        ENDIF.
        t216 = t217->title.
        DATA(t279) = VALUE string( ).
        DATA t280 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t280.
        DATA t281 TYPE string.
        DATA(t282) = |no_mandt_in_database_operations|.
        t281 = t282.
        DATA t283 TYPE string.
        DATA(t284) = |No MANDT in database operations|.
        t283 = t284.
        DATA t285 TYPE string.
        DATA(t286) = |Do not specify the client in database operations; the ABAP r|.
        t286 = t286 && |untime handles it automatically.|.
        t285 = t286.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        DATA(t289) = abap_true.
        IF t289 = abap_true.
          DATA(t290) = |Only check for the name MANDT, not for the field type. The r|.
          t290 = t290 && |ule does not check for dynamic SQL.|.
          DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t291->has = abap_true.
          t291->value = t290.
          t288 = t291.
        ELSE.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t292.
          t288 = t292.
        ENDIF.
        t287 = t288.
        DATA t293 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t293.
        DATA t294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t294.
        DATA(t295) = abap_true.
        IF t295 = abap_true.
          DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t297 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t298 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t298.
          t297 = t298.
          DATA(t299) = t297.
          DATA(t300) = |SingleFile|.
          t299->load( ).
          APPEND t300 TO t299->items.
          t299->save( ).
          DATA(t301) = t297.
          DATA(t302) = |Syntax|.
          t301->load( ).
          APPEND t302 TO t301->items.
          t301->save( ).
          DATA(t303) = t297.
          t296 = t303.
          t294 = t296.
        ELSE.
          DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t304.
          t294 = t304.
        ENDIF.
        t293 = t294.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t305.
        DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t306.
        DATA(t307) = abap_true.
        IF t307 = abap_true.
          DATA(t308) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
          t308 = t308 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
          DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t309->has = abap_true.
          t309->value = t308.
          t306 = t309.
        ELSE.
          DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t310.
          t306 = t310.
        ENDIF.
        t305 = t306.
        DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t311.
        DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t312.
        DATA(t313) = abap_true.
        IF t313 = abap_true.
          DATA(t314) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
          DATA(t315) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t315->has = abap_true.
          t315->value = t314.
          t312 = t315.
        ELSE.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          t312 = t316.
        ENDIF.
        t311 = t312.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t318.
        t317 = t318.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t320.
        t319 = t320.
        t280 = NEW zcl_lnt_irule_metadata( i_key = t281 i_title = t283 i_short_description = t285 i_bad_example = t305 i_good_example = t311 i_extended_information = t287 i_tags = t293 i_pragma = t317 i_pseudo_comment = t319 ).
        CREATE OBJECT t280->zlnt_view_ownkeys_b0e8086400eb.
        t280->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t321.
        IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t321 ).
        ENDIF.
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t322.
        IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t322 ).
        ENDIF.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t323 ).
        ENDIF.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t324.
        IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t324 ).
        ENDIF.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t325.
        IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t325 ).
        ENDIF.
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t326.
        IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t326 ).
        ENDIF.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t327.
        IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t327 ).
        ENDIF.
        CREATE OBJECT t280->zlnt_json_ownkeys_70e5fd461788.
        t280->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t328) = |key|.
        DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t329.
        IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
        ENDIF.
        DATA(t330) = |title|.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t331.
        IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
        ENDIF.
        DATA(t332) = |shortDescription|.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t333.
        IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
        ENDIF.
        DATA(t334) = |extendedInformation|.
        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t335.
        IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t334 p1 = t335 ).
        ENDIF.
        DATA(t336) = |tags|.
        DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t337.
        IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
        ENDIF.
        DATA(t338) = |badExample|.
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t339.
        IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t338 p1 = t339 ).
        ENDIF.
        DATA(t340) = |goodExample|.
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t341.
        IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
        ENDIF.
        t279 = t280->key.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t343) = me->conf.
        t342 = t343->zlnt_view_read_sr_15c06369f827( ).
        DATA t344 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t344.
        t212 = zcl_lnt_issue=>at_token( i_file = t213 i_token = t214 i_message_26cb = t216 i_key = t279 i_severity = t342 i_fix = t344 ).
        t211 = t212.
        DATA(t345) = t2.
        DATA(t346) = t211.
        t345->load( ).
        APPEND t346 TO t345->items.
        t345->save( ).
      ENDIF.
    ENDDO.
    DATA(t347) = t2.
    result = t347.

  ENDMETHOD.

  METHOD is_database_operation.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE abap_bool.
    DATA(t15) = t2.
    t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_delete_database ).
    t13 = t14.
    IF t14 = abap_false.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t2.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_insert_database ).
      t13 = t16.
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t2.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_merge_database ).
      t12 = t18.
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t2.
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_st_modify_database ).
      t11 = t20.
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t2.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_open_cursor ).
      t10 = t22.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t2.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_statem_select ).
      t9 = t24.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t2.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_st_select_loop ).
      t8 = t26.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t2.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_update_database ).
      t7 = t28.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t2.
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_with ).
      t6 = t30.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t2.
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_st_with_loop ).
      t5 = t32.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD find_mandt_in_condition.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t2 = t3->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t12) = t5.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      t14 = t15.
      DATA(t16) = t14.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t14.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d285_443a2a1b82f8.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t14.
      t13 = t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t21.
      t11 = t12->find_all_expressions_multi( i_type_9913 = t13 i_recursive = t21 ).
      t10 = t11.
      DATA(t22) = t10.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t22->load( ).
        IF t25 >= lines( t22->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t22->items INDEX t25 + 1 INTO t24.
        t25 = t25 + 1.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        CLEAR t23.
        IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t26 ?= t24.
          DATA t27 TYPE REF TO object.
          t27 = t26->as_ref( ).
          t23 ?= t27.
        ELSE.
          t23 ?= t24.
        ENDIF.
        DATA(t28) = VALUE string( ).
        DATA t29 TYPE string.
        DATA t30 TYPE string.
        DATA(t31) = t23.
        t30 = t31->concat_tokens( ).
        DATA(t32) = strlen( t30 ).
        t29 = t30.
        IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t29 TO UPPER CASE.
        ELSE.
          t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
        ENDIF.
        t28 = t29.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE abap_bool.
        DATA(t35) = t28.
        DATA(t36) = |MANDT|.
        t34 = xsdbool( t35 = t36 ).
        t33 = t34.
        IF t34 = abap_false.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t28.
          DATA(t39) = |~MANDT|.
          DATA(t40) = strlen( t38 ).
          DATA t41 TYPE i.
          DATA(t42) = VALUE i( ).
          DATA(t43) = VALUE string( ).
          t41 = strlen( t39 ).
          IF t41 = 0.
            t37 = abap_true.
          ELSEIF t41 <= t40.
            t42 = 0.
            t42 = t40 - t41.
            t43 = t38+t42(t41).
            IF t43 = t39.
              t37 = abap_true.
            ENDIF.
          ENDIF.
          t33 = t37.
        ENDIF.
        IF t33 = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t44.
          DATA(t45) = abap_true.
          IF t45 = abap_true.
            DATA(t46) = t23.
            t44 = t46.
          ELSE.
            DATA t47 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t47.
            t44 = t47.
          ENDIF.
          result = t44.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t48.
    result = t48.

  ENDMETHOD.

  METHOD find_explicit_client.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4->get_tokens( ).
    t2 = t3.
    DATA t5 TYPE i.
    DATA(t6) = 0.
    t5 = t6.
    DO.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t5.
      DATA t9 TYPE i.
      DATA(t10) = t2.
      t10->load( ).
      t9 = lines( t10->items ).
      t7 = xsdbool( t8 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE string( ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t15.
      DATA(t16) = t2.
      DATA(t17) = t5.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      t16->load( ).
      CLEAR t18.
      READ TABLE t16->items INDEX t17 INTO t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t15.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t18.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t15 ?= t20.
      ELSE.
        t15 ?= t18.
      ENDIF.
      t14 = t15.
      DATA t21 TYPE string.
      DATA(t22) = t14.
      t21 = t22->str.
      t13 = t21.
      DATA(t23) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      t11 = t12.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA(t30) = t2.
      DATA t31 TYPE i.
      DATA(t32) = t5.
      DATA(t33) = 1.
      t31 = t32 + t33.
      DATA t34 TYPE REF TO object.
      t34 = t30->get( p0 = t31 ).
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t29.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t34.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t29 ?= t36.
      ELSE.
        t29 ?= t34.
      ENDIF.
      t28 = t29.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t28.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t37 = t40.
      ELSE.
        DATA t41 TYPE string.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t44) = t28.
        t43 = t44.
        t42 = t43.
        DATA t45 TYPE string.
        DATA(t46) = t42.
        t45 = t46->str.
        t41 = t45.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t41.
        t37 = t47.
      ENDIF.
      t27 = t37.
      t26 = t27.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t26.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ELSEIF t50->has = abap_false.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = t26.
        t53 = t54->value.
        DATA(t55) = strlen( t53 ).
        t52 = t53.
        IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t52 TO UPPER CASE.
        ELSE.
          t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
        ENDIF.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t52.
        t48 = t56.
      ENDIF.
      t25 = t48.
      t24 = t25.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t62.
      DATA(t63) = t2.
      DATA(t64) = VALUE i( ).
      DATA t65 TYPE f.
      DATA t66 TYPE int8.
      DATA t67 TYPE int8.
      DATA(t68) = t5.
      t67 = t68.
      DATA(t69) = CONV int8( 2 ).
      t66 = t67 + t69.
      t65 = t66.
      IF t65 > range_i32_upper.
        t64 = range_i32_upper.
      ELSEIF t65 < range_i32_lower.
        t64 = range_i32_lower.
      ELSE.
        t64 = trunc( t65 ).
      ENDIF.
      DATA t70 TYPE REF TO object.
      t70 = t63->get( p0 = t64 ).
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      CLEAR t62.
      IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t71 ?= t70.
        DATA t72 TYPE REF TO object.
        t72 = t71->as_ref( ).
        t62 ?= t72.
      ELSE.
        t62 ?= t70.
      ENDIF.
      t61 = t62.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = t61.
      IF t75 IS INITIAL.
        t74 = abap_true.
      ENDIF.
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        t73 = t76.
      ELSE.
        DATA t77 TYPE string.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        DATA t79 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t80) = t61.
        t79 = t80.
        t78 = t79.
        DATA t81 TYPE string.
        DATA(t82) = t78.
        t81 = t82->str.
        t77 = t81.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t77.
        t73 = t83.
      ENDIF.
      t60 = t73.
      t59 = t60.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t59.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ELSEIF t86->has = abap_false.
        t85 = abap_true.
      ENDIF.
      IF t85 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t84 = t87.
      ELSE.
        DATA t88 TYPE string.
        DATA t89 TYPE string.
        DATA(t90) = t59.
        t89 = t90->value.
        DATA(t91) = strlen( t89 ).
        t88 = t89.
        IF t88 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t88 TO UPPER CASE.
        ELSE.
          t88 = zlnt_runtime_uppe_91169605024d=>full( t88 ).
        ENDIF.
        DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t92->has = abap_true.
        t92->value = t88.
        t84 = t92.
      ENDIF.
      t58 = t84.
      t57 = t58.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      DATA(t97) = t11.
      DATA(t98) = |CLIENT|.
      t96 = xsdbool( t97 = t98 ).
      t95 = t96.
      IF t96 = abap_true.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = t24.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA(t102) = abap_true.
        IF t102 = abap_true.
          DATA(t103) = |SPECIFIED|.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t103.
          t101 = t104.
        ELSE.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          t101 = t105.
        ENDIF.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = VALUE abap_bool( ).
        IF t100 IS BOUND.
          t106 = t100->has.
        ENDIF.
        IF t101 IS BOUND.
          t107 = t101->has.
        ENDIF.
        IF t106 = t107.
          IF t106 = abap_false.
            t99 = abap_true.
          ELSEIF t100->value = t101->value.
            t99 = abap_true.
          ENDIF.
        ENDIF.
        t95 = t99.
      ENDIF.
      t94 = t95.
      IF t95 = abap_false.
        DATA t108 TYPE abap_bool.
        DATA t109 TYPE abap_bool.
        DATA(t110) = t11.
        DATA(t111) = |USING|.
        t109 = xsdbool( t110 = t111 ).
        t108 = t109.
        IF t109 = abap_true.
          DATA(t112) = VALUE abap_bool( ).
          DATA(t113) = VALUE abap_bool( ).
          DATA(t114) = t24.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t116) = abap_true.
          IF t116 = abap_true.
            DATA(t117) = |CLIENT|.
            DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t118->has = abap_true.
            t118->value = t117.
            t115 = t118.
          ELSE.
            DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t119.
            t115 = t119.
          ENDIF.
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = VALUE abap_bool( ).
          IF t114 IS BOUND.
            t120 = t114->has.
          ENDIF.
          IF t115 IS BOUND.
            t121 = t115->has.
          ENDIF.
          IF t120 = t121.
            IF t120 = abap_false.
              t113 = abap_true.
            ELSEIF t114->value = t115->value.
              t113 = abap_true.
            ENDIF.
          ENDIF.
          t112 = t113.
          IF t113 = abap_false.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = t24.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            DATA(t125) = abap_true.
            IF t125 = abap_true.
              DATA(t126) = |CLIENTS|.
              DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t127->has = abap_true.
              t127->value = t126.
              t124 = t127.
            ELSE.
              DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t128.
              t124 = t128.
            ENDIF.
            DATA(t129) = VALUE abap_bool( ).
            DATA(t130) = VALUE abap_bool( ).
            IF t123 IS BOUND.
              t129 = t123->has.
            ENDIF.
            IF t124 IS BOUND.
              t130 = t124->has.
            ENDIF.
            IF t129 = t130.
              IF t129 = abap_false.
                t122 = abap_true.
              ELSEIF t123->value = t124->value.
                t122 = abap_true.
              ENDIF.
            ENDIF.
            t112 = t122.
          ENDIF.
          t108 = t112.
        ENDIF.
        t94 = t108.
      ENDIF.
      t93 = t94.
      IF t94 = abap_false.
        DATA(t131) = VALUE abap_bool( ).
        DATA t132 TYPE abap_bool.
        DATA t133 TYPE abap_bool.
        DATA(t134) = t11.
        DATA(t135) = |USING|.
        t133 = xsdbool( t134 = t135 ).
        t132 = t133.
        IF t133 = abap_true.
          DATA(t136) = VALUE abap_bool( ).
          DATA(t137) = t24.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA(t139) = abap_true.
          IF t139 = abap_true.
            DATA(t140) = |ALL|.
            DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t141->has = abap_true.
            t141->value = t140.
            t138 = t141.
          ELSE.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t142.
            t138 = t142.
          ENDIF.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = VALUE abap_bool( ).
          IF t137 IS BOUND.
            t143 = t137->has.
          ENDIF.
          IF t138 IS BOUND.
            t144 = t138->has.
          ENDIF.
          IF t143 = t144.
            IF t143 = abap_false.
              t136 = abap_true.
            ELSEIF t137->value = t138->value.
              t136 = abap_true.
            ENDIF.
          ENDIF.
          t132 = t136.
        ENDIF.
        t131 = t132.
        IF t132 = abap_true.
          DATA(t145) = VALUE abap_bool( ).
          DATA(t146) = t57.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA(t148) = abap_true.
          IF t148 = abap_true.
            DATA(t149) = |CLIENTS|.
            DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t150->has = abap_true.
            t150->value = t149.
            t147 = t150.
          ELSE.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t151.
            t147 = t151.
          ENDIF.
          DATA(t152) = VALUE abap_bool( ).
          DATA(t153) = VALUE abap_bool( ).
          IF t146 IS BOUND.
            t152 = t146->has.
          ENDIF.
          IF t147 IS BOUND.
            t153 = t147->has.
          ENDIF.
          IF t152 = t153.
            IF t152 = abap_false.
              t145 = abap_true.
            ELSEIF t146->value = t147->value.
              t145 = abap_true.
            ENDIF.
          ENDIF.
          t131 = t145.
        ENDIF.
        t93 = t131.
      ENDIF.
      IF t93 = abap_true.
        DATA t154 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t154.
        DATA(t155) = abap_true.
        IF t155 = abap_true.
          DATA t156 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t156.
          DATA t157 TYPE abap_bool.
          DATA(t158) = t11.
          DATA(t159) = |CLIENT|.
          t157 = xsdbool( t158 = t159 ).
          IF t157 = abap_true.
            DATA t160 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t160.
            DATA(t161) = t2.
            DATA(t162) = t5.
            t162 = t162 + 1.
            DATA t163 TYPE REF TO object.
            CLEAR t163.
            t161->load( ).
            CLEAR t163.
            READ TABLE t161->items INDEX t162 INTO t163.
            DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t164.
            CLEAR t160.
            IF t163 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t164 ?= t163.
              DATA t165 TYPE REF TO object.
              t165 = t164->as_ref( ).
              t160 ?= t165.
            ELSE.
              t160 ?= t163.
            ENDIF.
            t156 = t160.
          ELSE.
            DATA t166 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t166.
            DATA(t167) = t2.
            DATA(t168) = VALUE i( ).
            DATA(t169) = VALUE f( ).
            DATA(t170) = VALUE int8( ).
            DATA t171 TYPE int8.
            DATA(t172) = t5.
            t171 = t172.
            DATA(t173) = VALUE int8( ).
            DATA(t174) = VALUE i( ).
            DATA(t175) = VALUE abap_bool( ).
            DATA(t176) = t24.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            DATA(t178) = abap_true.
            IF t178 = abap_true.
              DATA(t179) = |ALL|.
              DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t180->has = abap_true.
              t180->value = t179.
              t177 = t180.
            ELSE.
              DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t181.
              t177 = t181.
            ENDIF.
            DATA(t182) = VALUE abap_bool( ).
            DATA(t183) = VALUE abap_bool( ).
            IF t176 IS BOUND.
              t182 = t176->has.
            ENDIF.
            IF t177 IS BOUND.
              t183 = t177->has.
            ENDIF.
            IF t182 = t183.
              IF t182 = abap_false.
                t175 = abap_true.
              ELSEIF t176->value = t177->value.
                t175 = abap_true.
              ENDIF.
            ENDIF.
            IF t175 = abap_true.
              DATA(t184) = 2.
              t174 = t184.
            ELSE.
              DATA(t185) = 1.
              t174 = t185.
            ENDIF.
            t173 = t174.
            t170 = t171 + t173.
            t169 = t170.
            IF t169 > range_i32_upper.
              t168 = range_i32_upper.
            ELSEIF t169 < range_i32_lower.
              t168 = range_i32_lower.
            ELSE.
              t168 = trunc( t169 ).
            ENDIF.
            t168 = t168 + 1.
            DATA t186 TYPE REF TO object.
            CLEAR t186.
            t167->load( ).
            CLEAR t186.
            READ TABLE t167->items INDEX t168 INTO t186.
            DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t187.
            CLEAR t166.
            IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t187 ?= t186.
              DATA t188 TYPE REF TO object.
              t188 = t187->as_ref( ).
              t166 ?= t188.
            ELSE.
              t166 ?= t186.
            ENDIF.
            t156 = t166.
          ENDIF.
          t154 = t156.
        ELSE.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t189.
          t154 = t189.
        ENDIF.
        result = t154.
        RETURN.
      ENDIF.
      DATA t190 TYPE i.
      DATA(t191) = t5.
      DATA(t192) = 1.
      t190 = t191 + t192.
      t5 = t190.
    ENDDO.
    DATA t193 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t193.
    result = t193.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_mnd_in_dtbs_oprt_cnf( me->g_c_i_s_r_n_m_i_d_o_t_n_m_i_d( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_mnd_in_dtbs_oprt_cnf( me->g_c_i_s_r_n_m_i_d_o_t_n_m_i_d( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_mnd_in_dtbs_oprt_cnf.
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
        t1 = NEW zcl_lnt_n_mnd_in_dtbs_oprt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_n_m_i_d_o_t_n_m_i_d( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_m_i_d_o_t_n_m_i_d( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1621_47ead010eef6.
  ENDMETHOD.
ENDCLASS.
