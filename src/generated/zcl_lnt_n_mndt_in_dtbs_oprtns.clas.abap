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
    me->conf = NEW zcl_lnt_n_mnd_in_dtbs_oprt_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |no_mandt_in_database_operations|.
    DATA t4 TYPE string.
    t4 = |No MANDT in database operations|.
    DATA t6 TYPE string.
    DATA(t7) = |Do not specify the client in database operations; the ABAP r|.
    t7 = t7 && |untime handles it automatically.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Only check for the name MANDT, not for the field type. The r|.
    t11 = t11 && |ule does not check for dynamic SQL.|.
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
    DATA(t23) = |Syntax|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
    t29 = t29 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_n_m_i_d_o_t_n_m_i_d.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_m_i_d_o_t_n_m_i_d.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_m_i_d_o_t_n_m_i_d.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zif_lnt_statement.
      DATA t20 TYPE REF TO zif_lnt_statement.
      t20 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
      t31 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_delete_database ).
      t30 = t31.
      IF t31 = abap_false.
        DATA t33 TYPE abap_bool.
        t33 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_insert_database ).
        t30 = t33.
      ENDIF.
      t29 = t30.
      IF t30 = abap_false.
        DATA t35 TYPE abap_bool.
        t35 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_merge_database ).
        t29 = t35.
      ENDIF.
      t28 = t29.
      IF t29 = abap_false.
        DATA t37 TYPE abap_bool.
        t37 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_modify_database ).
        t28 = t37.
      ENDIF.
      t27 = t28.
      IF t28 = abap_false.
        DATA t39 TYPE abap_bool.
        t39 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_open_cursor ).
        t27 = t39.
      ENDIF.
      t26 = t27.
      IF t27 = abap_false.
        DATA t41 TYPE abap_bool.
        t41 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_statem_select ).
        t26 = t41.
      ENDIF.
      t25 = t26.
      IF t26 = abap_false.
        DATA t43 TYPE abap_bool.
        t43 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t25 = t43.
      ENDIF.
      t24 = t25.
      IF t25 = abap_false.
        DATA t45 TYPE abap_bool.
        t45 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_update_database ).
        t24 = t45.
      ENDIF.
      t23 = t24.
      IF t24 = abap_false.
        DATA t47 TYPE abap_bool.
        t47 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_with ).
        t23 = t47.
      ENDIF.
      t22 = t23.
      IF t23 = abap_false.
        DATA t49 TYPE abap_bool.
        t49 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_with_loop ).
        t22 = t49.
      ENDIF.
      t18 = t22.
      t15 = t18.
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      t53 = me->find_mandt_in_condition( i_statement = t9 ).
      t52 = t53.
      DATA(t55) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = xsdbool( t52 IS INITIAL ).
      t60 = xsdbool( t61 = abap_false ).
      t55 = t60.
      IF t55 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_issue.
        CLEAR t64.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        t67 = t52.
        t66 = t67->get_first_token( ).
        DATA(t69) = VALUE string( ).
        DATA t70 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t70.
        DATA t71 TYPE string.
        t71 = |no_mandt_in_database_operations|.
        DATA t73 TYPE string.
        t73 = |No MANDT in database operations|.
        DATA t75 TYPE string.
        DATA(t76) = |Do not specify the client in database operations; the ABAP r|.
        t76 = t76 && |untime handles it automatically.|.
        t75 = t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t80) = |Only check for the name MANDT, not for the field type. The r|.
        t80 = t80 && |ule does not check for dynamic SQL.|.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t80.
        t77 = t81.
        DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t83.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t88.
        t87 = t88.
        DATA(t90) = |SingleFile|.
        t87->load( ).
        APPEND t90 TO t87->items.
        t87->save( ).
        DATA(t92) = |Syntax|.
        t87->load( ).
        APPEND t92 TO t87->items.
        t87->save( ).
        t83 = t87.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA(t98) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
        t98 = t98 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = t98.
        t95 = t99.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA(t104) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
        DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t105->has = abap_true.
        t105->value = t104.
        t101 = t105.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        t70 = NEW zcl_lnt_irule_metadata( i_key = t71 i_title = t73 i_short_description = t75 i_bad_example = t95 i_good_example = t101 i_extended_information = t77 i_tags = t83 i_pragma = t107 i_pseudo_comment = t109 ).
        CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
        t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t111 ).
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
        t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
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
        t134 = |no_mandt_in_database_operations|.
        DATA t136 TYPE string.
        t136 = |No MANDT in database operations|.
        DATA t138 TYPE string.
        DATA(t139) = |Do not specify the client in database operations; the ABAP r|.
        t139 = t139 && |untime handles it automatically.|.
        t138 = t139.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA(t143) = |Only check for the name MANDT, not for the field type. The r|.
        t143 = t143 && |ule does not check for dynamic SQL.|.
        DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t144->has = abap_true.
        t144->value = t143.
        t140 = t144.
        DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t146.
        DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t151.
        t150 = t151.
        DATA(t153) = |SingleFile|.
        t150->load( ).
        APPEND t153 TO t150->items.
        t150->save( ).
        DATA(t155) = |Syntax|.
        t150->load( ).
        APPEND t155 TO t150->items.
        t150->save( ).
        t146 = t150.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        DATA(t161) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
        t161 = t161 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
        DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t162->has = abap_true.
        t162->value = t161.
        t158 = t162.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t164.
        DATA(t167) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
        DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t168->has = abap_true.
        t168->value = t167.
        t164 = t168.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t170.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        t133 = NEW zcl_lnt_irule_metadata( i_key = t134 i_title = t136 i_short_description = t138 i_bad_example = t158 i_good_example = t164 i_extended_information = t140 i_tags = t146 i_pragma = t170 i_pseudo_comment = t172 ).
        CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
        t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t174 ).
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
        t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
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
        t195 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t197 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t197.
        t64 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t66 i_message_26cb = t69 i_key = t132 i_severity = t195 i_fix = t197 ).
        t2->load( ).
        APPEND t64 TO t2->items.
        t2->save( ).
        CONTINUE.
      ENDIF.
      DATA t200 TYPE REF TO zcl_lnt_abstract_token.
      DATA t201 TYPE REF TO zcl_lnt_abstract_token.
      t201 = me->find_explicit_client( i_statement = t9 ).
      t200 = t201.
      DATA(t203) = VALUE abap_bool( ).
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t206.
      DATA(t208) = VALUE abap_bool( ).
      DATA(t209) = xsdbool( t200 IS INITIAL ).
      t208 = xsdbool( t209 = abap_false ).
      t203 = t208.
      IF t203 = abap_true.
        DATA t212 TYPE REF TO zcl_lnt_issue.
        CLEAR t212.
        DATA t214 TYPE REF TO zcl_lnt_abstract_token.
        t214 = t200.
        DATA(t216) = VALUE string( ).
        DATA t217 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t217.
        DATA t218 TYPE string.
        t218 = |no_mandt_in_database_operations|.
        DATA t220 TYPE string.
        t220 = |No MANDT in database operations|.
        DATA t222 TYPE string.
        DATA(t223) = |Do not specify the client in database operations; the ABAP r|.
        t223 = t223 && |untime handles it automatically.|.
        t222 = t223.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA(t227) = |Only check for the name MANDT, not for the field type. The r|.
        t227 = t227 && |ule does not check for dynamic SQL.|.
        DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t228->has = abap_true.
        t228->value = t227.
        t224 = t228.
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t230.
        DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t235.
        t234 = t235.
        DATA(t237) = |SingleFile|.
        t234->load( ).
        APPEND t237 TO t234->items.
        t234->save( ).
        DATA(t239) = |Syntax|.
        t234->load( ).
        APPEND t239 TO t234->items.
        t234->save( ).
        t230 = t234.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t242.
        DATA(t245) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
        t245 = t245 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
        DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t246->has = abap_true.
        t246->value = t245.
        t242 = t246.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        DATA(t251) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
        DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t252->has = abap_true.
        t252->value = t251.
        t248 = t252.
        DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t254.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        t217 = NEW zcl_lnt_irule_metadata( i_key = t218 i_title = t220 i_short_description = t222 i_bad_example = t242 i_good_example = t248 i_extended_information = t224 i_tags = t230 i_pragma = t254 i_pseudo_comment = t256 ).
        CREATE OBJECT t217->zlnt_view_ownkeys_b0e8086400eb.
        t217->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        t217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t258 ).
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
        t217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
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
        t281 = |no_mandt_in_database_operations|.
        DATA t283 TYPE string.
        t283 = |No MANDT in database operations|.
        DATA t285 TYPE string.
        DATA(t286) = |Do not specify the client in database operations; the ABAP r|.
        t286 = t286 && |untime handles it automatically.|.
        t285 = t286.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        DATA(t290) = |Only check for the name MANDT, not for the field type. The r|.
        t290 = t290 && |ule does not check for dynamic SQL.|.
        DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t291->has = abap_true.
        t291->value = t290.
        t287 = t291.
        DATA t293 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t293.
        DATA t297 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t298 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t298.
        t297 = t298.
        DATA(t300) = |SingleFile|.
        t297->load( ).
        APPEND t300 TO t297->items.
        t297->save( ).
        DATA(t302) = |Syntax|.
        t297->load( ).
        APPEND t302 TO t297->items.
        t297->save( ).
        t293 = t297.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t305.
        DATA(t308) = |SELECT * FROM zcustomers\n  CLIENT SPECIFIED\n  WHERE mandt = |.
        t308 = t308 && |@sy-mandt\n  INTO TABLE @DATA(customers).|.
        DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t309->has = abap_true.
        t309->value = t308.
        t305 = t309.
        DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t311.
        DATA(t314) = |SELECT * FROM zcustomers\n  INTO TABLE @DATA(customers).|.
        DATA(t315) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t315->has = abap_true.
        t315->value = t314.
        t311 = t315.
        DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t317.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t319.
        t280 = NEW zcl_lnt_irule_metadata( i_key = t281 i_title = t283 i_short_description = t285 i_bad_example = t305 i_good_example = t311 i_extended_information = t287 i_tags = t293 i_pragma = t317 i_pseudo_comment = t319 ).
        CREATE OBJECT t280->zlnt_view_ownkeys_b0e8086400eb.
        t280->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t321.
        t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t321 ).
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
        t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
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
        t342 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t344 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t344.
        t212 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t214 i_message_26cb = t216 i_key = t279 i_severity = t342 i_fix = t344 ).
        t2->load( ).
        APPEND t212 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_database_operation.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA t3 TYPE REF TO zif_lnt_statement.
    t3 = i_statement->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
    t14 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_delete_database ).
    t13 = t14.
    IF t14 = abap_false.
      DATA t16 TYPE abap_bool.
      t16 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_insert_database ).
      t13 = t16.
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_merge_database ).
      t12 = t18.
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_modify_database ).
      t11 = t20.
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      DATA t22 TYPE abap_bool.
      t22 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_open_cursor ).
      t10 = t22.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA t24 TYPE abap_bool.
      t24 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_statem_select ).
      t9 = t24.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t26 TYPE abap_bool.
      t26 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_select_loop ).
      t8 = t26.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t28 TYPE abap_bool.
      t28 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_update_database ).
      t7 = t28.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t30 TYPE abap_bool.
      t30 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_with ).
      t6 = t30.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_with_loop ).
      t5 = t32.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD find_mandt_in_condition.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t2 = i_statement->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO object.
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
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      t14 = t15.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
      t14->load( ).
      APPEND t17 TO t14->items.
      t14->save( ).
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d285_443a2a1b82f8.
      t14->load( ).
      APPEND t19 TO t14->items.
      t14->save( ).
      t13 = t14.
      DATA t21 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t21.
      t11 = t5->find_all_expressions_multi( i_type_9913 = t13 i_recursive = t21 ).
      t10 = t11.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t10->load( ).
        IF t25 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t10->items INDEX t25 + 1 INTO t24.
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
        t30 = t23->concat_tokens( ).
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
        DATA(t36) = |MANDT|.
        t34 = xsdbool( t28 = t36 ).
        t33 = t34.
        IF t34 = abap_false.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t39) = |~MANDT|.
          DATA(t40) = strlen( t28 ).
          DATA t41 TYPE i.
          DATA(t42) = VALUE i( ).
          DATA(t43) = VALUE string( ).
          t41 = strlen( t39 ).
          IF t41 = 0.
            t37 = abap_true.
          ELSEIF t41 <= t40.
            t42 = 0.
            t42 = t40 - t41.
            t43 = t28+t42(t41).
            IF t43 = t39.
              t37 = abap_true.
            ENDIF.
          ENDIF.
          t33 = t37.
        ENDIF.
        IF t33 = abap_true.
          result = t23.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_explicit_client.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = i_statement->get_tokens( ).
    t2 = t3.
    DATA t5 TYPE i.
    t5 = 0.
    DO.
      DATA t7 TYPE abap_bool.
      DATA t9 TYPE i.
      t2->load( ).
      t9 = lines( t2->items ).
      t7 = xsdbool( t5 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE string( ).
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t15.
      DATA(t17) = t5.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      t2->load( ).
      CLEAR t18.
      READ TABLE t2->items INDEX t17 INTO t18.
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
      DATA t21 TYPE string.
      t21 = t15->str.
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
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA t31 TYPE i.
      DATA(t33) = 1.
      t31 = t5 + t33.
      DATA t34 TYPE REF TO object.
      t34 = t2->get( p0 = t31 ).
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
      DATA(t38) = xsdbool( t28 IS INITIAL ).
      IF t38 = abap_true.
        CLEAR t37.
      ELSE.
        DATA t45 TYPE string.
        t45 = t28->str.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t45.
        t37 = t47.
      ENDIF.
      t26 = t37.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      IF t26 IS INITIAL.
        t49 = abap_true.
      ELSEIF t26->has = abap_false.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        CLEAR t48.
      ELSE.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        t53 = t26->value.
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
      t24 = t48.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t62.
      DATA(t64) = VALUE i( ).
      DATA t65 TYPE f.
      DATA t66 TYPE int8.
      DATA t67 TYPE int8.
      t67 = t5.
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
      t70 = t2->get( p0 = t64 ).
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
      DATA(t74) = xsdbool( t61 IS INITIAL ).
      IF t74 = abap_true.
        CLEAR t73.
      ELSE.
        DATA t81 TYPE string.
        t81 = t61->str.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t81.
        t73 = t83.
      ENDIF.
      t59 = t73.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      DATA(t85) = VALUE abap_bool( ).
      IF t59 IS INITIAL.
        t85 = abap_true.
      ELSEIF t59->has = abap_false.
        t85 = abap_true.
      ENDIF.
      IF t85 = abap_true.
        CLEAR t84.
      ELSE.
        DATA t88 TYPE string.
        DATA t89 TYPE string.
        t89 = t59->value.
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
      t57 = t84.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      DATA(t98) = |CLIENT|.
      t96 = xsdbool( t11 = t98 ).
      t95 = t96.
      IF t96 = abap_true.
        DATA(t99) = VALUE abap_bool( ).
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA(t103) = |SPECIFIED|.
        DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t104->has = abap_true.
        t104->value = t103.
        t101 = t104.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = VALUE abap_bool( ).
        IF t24 IS BOUND.
          t106 = t24->has.
        ENDIF.
        IF t101 IS BOUND.
          t107 = t101->has.
        ENDIF.
        IF t106 = t107.
          IF t106 = abap_false.
            t99 = abap_true.
          ELSEIF t24->value = t101->value.
            t99 = abap_true.
          ENDIF.
        ENDIF.
        t95 = t99.
      ENDIF.
      t94 = t95.
      IF t95 = abap_false.
        DATA t108 TYPE abap_bool.
        DATA t109 TYPE abap_bool.
        DATA(t111) = |USING|.
        t109 = xsdbool( t11 = t111 ).
        t108 = t109.
        IF t109 = abap_true.
          DATA(t112) = VALUE abap_bool( ).
          DATA(t113) = VALUE abap_bool( ).
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t117) = |CLIENT|.
          DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t118->has = abap_true.
          t118->value = t117.
          t115 = t118.
          DATA(t120) = VALUE abap_bool( ).
          DATA(t121) = VALUE abap_bool( ).
          IF t24 IS BOUND.
            t120 = t24->has.
          ENDIF.
          IF t115 IS BOUND.
            t121 = t115->has.
          ENDIF.
          IF t120 = t121.
            IF t120 = abap_false.
              t113 = abap_true.
            ELSEIF t24->value = t115->value.
              t113 = abap_true.
            ENDIF.
          ENDIF.
          t112 = t113.
          IF t113 = abap_false.
            DATA(t122) = VALUE abap_bool( ).
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            DATA(t126) = |CLIENTS|.
            DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t127->has = abap_true.
            t127->value = t126.
            t124 = t127.
            DATA(t129) = VALUE abap_bool( ).
            DATA(t130) = VALUE abap_bool( ).
            IF t24 IS BOUND.
              t129 = t24->has.
            ENDIF.
            IF t124 IS BOUND.
              t130 = t124->has.
            ENDIF.
            IF t129 = t130.
              IF t129 = abap_false.
                t122 = abap_true.
              ELSEIF t24->value = t124->value.
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
        DATA(t135) = |USING|.
        t133 = xsdbool( t11 = t135 ).
        t132 = t133.
        IF t133 = abap_true.
          DATA(t136) = VALUE abap_bool( ).
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA(t140) = |ALL|.
          DATA(t141) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t141->has = abap_true.
          t141->value = t140.
          t138 = t141.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = VALUE abap_bool( ).
          IF t24 IS BOUND.
            t143 = t24->has.
          ENDIF.
          IF t138 IS BOUND.
            t144 = t138->has.
          ENDIF.
          IF t143 = t144.
            IF t143 = abap_false.
              t136 = abap_true.
            ELSEIF t24->value = t138->value.
              t136 = abap_true.
            ENDIF.
          ENDIF.
          t132 = t136.
        ENDIF.
        t131 = t132.
        IF t132 = abap_true.
          DATA(t145) = VALUE abap_bool( ).
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA(t149) = |CLIENTS|.
          DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t150->has = abap_true.
          t150->value = t149.
          t147 = t150.
          DATA(t152) = VALUE abap_bool( ).
          DATA(t153) = VALUE abap_bool( ).
          IF t57 IS BOUND.
            t152 = t57->has.
          ENDIF.
          IF t147 IS BOUND.
            t153 = t147->has.
          ENDIF.
          IF t152 = t153.
            IF t152 = abap_false.
              t145 = abap_true.
            ELSEIF t57->value = t147->value.
              t145 = abap_true.
            ENDIF.
          ENDIF.
          t131 = t145.
        ENDIF.
        t93 = t131.
      ENDIF.
      IF t93 = abap_true.
        DATA t156 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t156.
        DATA t157 TYPE abap_bool.
        DATA(t159) = |CLIENT|.
        t157 = xsdbool( t11 = t159 ).
        IF t157 = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t160.
          DATA(t162) = t5.
          t162 = t162 + 1.
          DATA t163 TYPE REF TO object.
          CLEAR t163.
          t2->load( ).
          CLEAR t163.
          READ TABLE t2->items INDEX t162 INTO t163.
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
          DATA(t168) = VALUE i( ).
          DATA(t169) = VALUE f( ).
          DATA(t170) = VALUE int8( ).
          DATA t171 TYPE int8.
          t171 = t5.
          DATA(t173) = VALUE int8( ).
          DATA(t174) = VALUE i( ).
          DATA(t175) = VALUE abap_bool( ).
          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t177.
          DATA(t179) = |ALL|.
          DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t180->has = abap_true.
          t180->value = t179.
          t177 = t180.
          DATA(t182) = VALUE abap_bool( ).
          DATA(t183) = VALUE abap_bool( ).
          IF t24 IS BOUND.
            t182 = t24->has.
          ENDIF.
          IF t177 IS BOUND.
            t183 = t177->has.
          ENDIF.
          IF t182 = t183.
            IF t182 = abap_false.
              t175 = abap_true.
            ELSEIF t24->value = t177->value.
              t175 = abap_true.
            ENDIF.
          ENDIF.
          IF t175 = abap_true.
            t174 = 2.
          ELSE.
            t174 = 1.
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
          t2->load( ).
          CLEAR t186.
          READ TABLE t2->items INDEX t168 INTO t186.
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
        result = t156.
        RETURN.
      ENDIF.
      DATA t190 TYPE i.
      DATA(t192) = 1.
      t190 = t5 + t192.
      t5 = t190.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_n_mnd_in_dtbs_oprt_cnf( me->g_c_i_s_r_n_m_i_d_o_t_n_m_i_d( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_n_mnd_in_dtbs_oprt_cnf( me->g_c_i_s_r_n_m_i_d_o_t_n_m_i_d( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_mnd_in_dtbs_oprt_cnf.
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
        t1 = NEW zcl_lnt_n_mnd_in_dtbs_oprt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_n_m_i_d_o_t_n_m_i_d( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_m_i_d_o_t_n_m_i_d( i_file = i_file ) ).

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
