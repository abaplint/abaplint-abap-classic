* TS: src/rules/max_one_statement.ts:13:1 MaxOneStatement
CLASS zcl_lnt_max_one_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_mx_on_st_ts_mx_on_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS s_c_i_s_r_mx_on_st_ts_mx_on_st IMPORTING i_conf TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS r_p_i_s_r_mx_on_st_ts_mx_on_st IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_max_one_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_max_one_statement_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |max_one_statement|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Max one statement per line|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that each line contains only a single statement.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Does not report empty statements, use rule empty_statement f|.
      t11 = t11 && |or detecting empty statements.\n\nDoes not report anything for|.
      t11 = t11 && | chained statements.\n\nhttps://github.com/SAP/styleguides/blo|.
      t11 = t11 && |b/main/clean-abap/CleanABAP.md#no-more-than-one-statement-pe|.
      t11 = t11 && |r-line\nhttps://docs.abapopenchecks.org/checks/11/|.
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
      DATA(t31) = |WRITE foo. WRITE bar.|.
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
      DATA(t37) = |WRITE foo.\nWRITE bar.|.
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

  METHOD get_message.
    DATA(t1) = |Only one statement is allowed per line|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_mx_on_st_ts_mx_on_st.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_mx_on_st_ts_mx_on_st.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_mx_on_st_ts_mx_on_st.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE f.
    DATA(t5) = CONV f( 0 ).
    t4 = t5.
    DATA t6 TYPE f.
    DATA(t7) = CONV f( 0 ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t1.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = t9.
    t11 = t12->statements.
    t8 = t11.
    DATA t13 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    DATA(t15) = VALUE i( ).
    DO.
      t8->load( ).
      IF t15 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t8->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      DATA t20 TYPE REF TO zcl_lnt_statement_node.
      DATA(t21) = t13.
      t20 = t21.
      DATA t22 TYPE string.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t25) = t20.
      t24 = t25->get_last_token( ).
      t23 = t24.
      DATA t26 TYPE string.
      DATA(t27) = t23.
      t26 = t27->str.
      t22 = t26.
      t19 = t22.
      t18 = t19.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE REF TO zif_lnt_statement.
      DATA(t32) = t13.
      t31 = t32->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_comment ).
      t29 = t30.
      IF t30 = abap_false.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE REF TO zif_lnt_statement.
        DATA(t35) = t13.
        t34 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_native_sql ).
        t29 = t33.
      ENDIF.
      t28 = t29.
      IF t29 = abap_false.
        DATA t36 TYPE abap_bool.
        DATA(t37) = t18.
        DATA(t38) = |,|.
        t36 = xsdbool( t37 = t38 ).
        t28 = t36.
      ENDIF.
      IF t28 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_position.
      DATA t40 TYPE REF TO zcl_lnt_position.
      DATA t41 TYPE REF TO zcl_lnt_statement_node.
      DATA(t42) = t13.
      t41 = t42.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t41.
      t45 = t46->get_first_token( ).
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = t44.
      t47 = t48->start.
      t43 = t47.
      t40 = t43.
      t39 = t40.
      DATA t49 TYPE abap_bool.
      DATA(t50) = t39.
      t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t49 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t51 TYPE f.
      DATA t52 TYPE f.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA(t54) = t39.
      t53 = t54.
      DATA t55 TYPE f.
      DATA(t56) = t53.
      t55 = t56->row.
      t52 = t55.
      t51 = t52.
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE abap_bool.
      DATA(t60) = t4.
      DATA(t61) = t51.
      t59 = xsdbool( t60 = t61 ).
      t58 = t59.
      IF t59 = abap_true.
        DATA t62 TYPE abap_bool.
        DATA(t63) = t51.
        DATA(t64) = t6.
        t62 = xsdbool( t63 <> t64 ).
        t58 = t62.
      ENDIF.
      t57 = t58.
      IF t58 = abap_true.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE string.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t69) = t13.
        t68 = t69->get_first_token( ).
        t67 = t68.
        DATA t70 TYPE string.
        DATA(t71) = t67.
        t70 = t71->str.
        t66 = t70.
        DATA(t72) = |.|.
        t65 = xsdbool( t66 <> t72 ).
        t57 = t65.
      ENDIF.
      IF t57 = abap_true.
        DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t74 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t75) = t1.
        DATA(t76) = t39.
        DATA(t77) = |\n|.
        t74 = zcl_lnt_edit_helper=>insert_at( i_file = t75 i_pos = t76 i_text = t77 ).
        t73 = t74.
        DATA t78 TYPE REF TO zcl_lnt_issue.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_issue.
        CLEAR t79.
        DATA(t80) = t1.
        DATA(t81) = t39.
        DATA(t82) = |Only one statement is allowed per line|.
        DATA(t83) = VALUE string( ).
        DATA t84 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t84.
        DATA t85 TYPE string.
        DATA(t86) = |max_one_statement|.
        t85 = t86.
        DATA t87 TYPE string.
        DATA(t88) = |Max one statement per line|.
        t87 = t88.
        DATA t89 TYPE string.
        DATA(t90) = |Checks that each line contains only a single statement.|.
        t89 = t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        DATA(t93) = abap_true.
        IF t93 = abap_true.
          DATA(t94) = |Does not report empty statements, use rule empty_statement f|.
          t94 = t94 && |or detecting empty statements.\n\nDoes not report anything for|.
          t94 = t94 && | chained statements.\n\nhttps://github.com/SAP/styleguides/blo|.
          t94 = t94 && |b/main/clean-abap/CleanABAP.md#no-more-than-one-statement-pe|.
          t94 = t94 && |r-line\nhttps://docs.abapopenchecks.org/checks/11/|.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = t94.
          t92 = t95.
        ELSE.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t92 = t96.
        ENDIF.
        t91 = t92.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t97.
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t102.
          t101 = t102.
          DATA(t103) = t101.
          DATA(t104) = |Styleguide|.
          t103->load( ).
          APPEND t104 TO t103->items.
          t103->save( ).
          DATA(t105) = t101.
          DATA(t106) = |Quickfix|.
          t105->load( ).
          APPEND t106 TO t105->items.
          t105->save( ).
          DATA(t107) = t101.
          DATA(t108) = |SingleFile|.
          t107->load( ).
          APPEND t108 TO t107->items.
          t107->save( ).
          DATA(t109) = t101.
          t100 = t109.
          t98 = t100.
        ELSE.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t110.
          t98 = t110.
        ENDIF.
        t97 = t98.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA(t114) = |WRITE foo. WRITE bar.|.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t114.
          t112 = t115.
        ELSE.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t112 = t116.
        ENDIF.
        t111 = t112.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA(t119) = abap_true.
        IF t119 = abap_true.
          DATA(t120) = |WRITE foo.\nWRITE bar.|.
          DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t121->has = abap_true.
          t121->value = t120.
          t118 = t121.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t118 = t122.
        ENDIF.
        t117 = t118.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        t123 = t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t125 = t126.
        t84 = NEW zcl_lnt_irule_metadata( i_key = t85 i_title = t87 i_short_description = t89 i_bad_example = t111 i_good_example = t117 i_extended_information = t91 i_tags = t97 i_pragma = t123 i_pseudo_comment = t125 ).
        CREATE OBJECT t84->zlnt_view_ownkeys_b0e8086400eb.
        t84->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t127 ).
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t128 ).
        ENDIF.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t129 ).
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t130 ).
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t132 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t133 ).
        ENDIF.
        CREATE OBJECT t84->zlnt_json_ownkeys_70e5fd461788.
        t84->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t134) = |key|.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
        ENDIF.
        DATA(t136) = |title|.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
        ENDIF.
        DATA(t138) = |shortDescription|.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
        ENDIF.
        DATA(t140) = |extendedInformation|.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
        ENDIF.
        DATA(t142) = |tags|.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
        ENDIF.
        DATA(t144) = |badExample|.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
        ENDIF.
        DATA(t146) = |goodExample|.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
        ENDIF.
        t83 = t84->key.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t149) = me->conf.
        t148 = t149->zlnt_view_read_sr_15c06369f827( ).
        DATA t150 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t150.
        DATA(t151) = abap_true.
        IF t151 = abap_true.
          DATA(t152) = t73.
          t150 = t152.
        ELSE.
          DATA t153 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t153.
          t150 = t153.
        ENDIF.
        t79 = zcl_lnt_issue=>at_position( i_file = t80 i_start = t81 i_message_26cb = t82 i_key = t83 i_severity = t148 i_fix = t150 ).
        t78 = t79.
        DATA(t154) = t2.
        DATA(t155) = t78.
        t154->load( ).
        APPEND t155 TO t154->items.
        t154->save( ).
        DATA(t156) = t51.
        t6 = t156.
      ENDIF.
      DATA(t157) = t51.
      t4 = t157.
    ENDDO.
    DATA(t158) = t2.
    result = t158.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_max_one_statement_conf( me->g_c_i_s_r_mx_on_st_ts_mx_on_st( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_max_one_statement_conf( me->g_c_i_s_r_mx_on_st_ts_mx_on_st( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_max_one_statement_conf.
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
        t1 = NEW zcl_lnt_max_one_statement_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mx_on_st_ts_mx_on_st( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_mx_on_st_ts_mx_on_st( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1581_6a63c297a6e1.
  ENDMETHOD.
ENDCLASS.
