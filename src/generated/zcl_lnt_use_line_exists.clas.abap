* TS: src/rules/use_line_exists.ts:16:1 UseLineExists
CLASS zcl_lnt_use_line_exists DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_use_line_exists_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_us_ln_ex_ts_us_ln_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_use_line_exists_conf.
    METHODS s_c_i_s_r_us_ln_ex_ts_us_ln_ex IMPORTING i_conf TYPE REF TO zcl_lnt_use_line_exists_conf.
    METHODS run_parsed REDEFINITION.
    METHODS checks_subrc IMPORTING i_index TYPE i i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS uses_tabix IMPORTING i_index TYPE i i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_use_line_exists IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_use_line_exists_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |use_line_exists|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Use line_exists|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Use line_exists, from 740sp02 and up|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
      t11 = t11 && |anABAP.md#prefer-line_exists-to-read-table-or-loop-at\n\nNot r|.
      t11 = t11 && |eported if the READ TABLE statement contains BINARY SEARCH.|.
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
      DATA(t31) = |READ TABLE my_table TRANSPORTING NO FIELDS WITH KEY key = 'A|.
      t31 = t31 && |'.\nIF sy-subrc = 0.\nENDIF.|.
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
      DATA(t37) = |IF line_exists( my_table[ key = 'A' ] ).\nENDIF.|.
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

  METHOD g_c_i_s_r_us_ln_ex_ts_us_ln_ex.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_us_ln_ex_ts_us_ln_ex.
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
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->get_type( ).
    DATA(t8) = |INTF|.
    t5 = xsdbool( t6 = t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
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
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE REF TO zif_lnt_configuration.
    DATA(t20) = me->reg.
    t19 = t20->get_config( ).
    t18 = t19->is_open_abap( ).
    IF t18 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      result = t21.
      RETURN.
    ELSE.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t10.
      DATA t26 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t28.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t28 = zcl_lnt_version_module=>release_b8cd.
      DATA(t29) = |v740sp02|.
      t27 = t28->get( p0 = t29 ).
      t26 = t27.
      t24 = zcl_lnt_version_module=>release_at_least( i_running = t25 i_required = t26 ).
      t23 = xsdbool( t24 = abap_false ).
      t22 = t23.
      IF t23 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA(t31) = t14.
        DATA(t32) = |Cloud|.
        t30 = xsdbool( t31 <> t32 ).
        t22 = t30.
      ENDIF.
      IF t22 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t33.
        result = t33.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zcl_lnt_abap_file.
    DATA(t37) = t1.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t39) = t36.
    t38 = t39->statements.
    t35 = t38.
    t34 = t35.
    DATA t40 TYPE i.
    DATA(t41) = 0.
    t40 = t41.
    DO.
      DATA t42 TYPE abap_bool.
      DATA(t43) = t40.
      DATA t44 TYPE i.
      DATA(t45) = t34.
      t45->load( ).
      t44 = lines( t45->items ).
      t42 = xsdbool( t43 < t44 ).
      IF t42 = abap_false.
        EXIT.
      ENDIF.
      DATA t46 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t47.
      DATA(t48) = t34.
      DATA(t49) = t40.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      t48->load( ).
      CLEAR t50.
      READ TABLE t48->items INDEX t49 INTO t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      CLEAR t47.
      IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t51 ?= t50.
        DATA t52 TYPE REF TO object.
        t52 = t51->as_ref( ).
        t47 ?= t52.
      ELSE.
        t47 ?= t50.
      ENDIF.
      t46 = t47.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE REF TO zif_lnt_statement.
      DATA(t56) = t46.
      t55 = t56->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_st_read_table ).
      t53 = xsdbool( t54 = abap_false ).
      IF t53 = abap_true.
        DATA t57 TYPE i.
        DATA(t58) = t40.
        DATA(t59) = 1.
        t57 = t58 + t59.
        t40 = t57.
        CONTINUE.
      ENDIF.
      DATA(t60) = VALUE string( ).
      DATA t61 TYPE string.
      DATA t62 TYPE string.
      DATA(t63) = t46.
      t62 = t63->concat_tokens( ).
      DATA(t64) = strlen( t62 ).
      t61 = t62.
      IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t61 TO UPPER CASE.
      ELSE.
        t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
      ENDIF.
      t60 = t61.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE i( ).
      DATA(t71) = t60.
      DATA(t72) = | TRANSPORTING NO FIELDS|.
      DATA(t73) = strlen( t71 ).
      IF t72 IS INITIAL.
        t70 = 0.
      ELSE.
        FIND t72 IN t71 MATCH OFFSET t70.
        IF sy-subrc <> 0.
          t70 = -1.
        ENDIF.
      ENDIF.
      DATA(t74) = 0.
      t69 = xsdbool( t70 >= t74 ).
      DATA(t75) = abap_true.
      t68 = xsdbool( t69 = t75 ).
      t67 = t68.
      IF t68 = abap_true.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = VALUE i( ).
        DATA(t79) = t60.
        DATA(t80) = | BINARY SEARCH|.
        DATA(t81) = strlen( t79 ).
        IF t80 IS INITIAL.
          t78 = 0.
        ELSE.
          FIND t80 IN t79 MATCH OFFSET t78.
          IF sy-subrc <> 0.
            t78 = -1.
          ENDIF.
        ENDIF.
        DATA(t82) = 0.
        t77 = xsdbool( t78 >= t82 ).
        DATA(t83) = abap_false.
        t76 = xsdbool( t77 = t83 ).
        t67 = t76.
      ENDIF.
      t66 = t67.
      IF t67 = abap_true.
        DATA t84 TYPE abap_bool.
        DATA t85 TYPE abap_bool.
        DATA(t86) = t40.
        DATA(t87) = t34.
        t85 = me->checks_subrc( i_index = t86 i_statements = t87 ).
        DATA(t88) = abap_true.
        t84 = xsdbool( t85 = t88 ).
        t66 = t84.
      ENDIF.
      t65 = t66.
      IF t66 = abap_true.
        DATA t89 TYPE abap_bool.
        DATA t90 TYPE abap_bool.
        DATA(t91) = t40.
        DATA(t92) = t34.
        t90 = me->uses_tabix( i_index = t91 i_statements = t92 ).
        DATA(t93) = abap_false.
        t89 = xsdbool( t90 = t93 ).
        t65 = t89.
      ENDIF.
      IF t65 = abap_true.
        DATA(t94) = t3.
        DATA t95 TYPE REF TO zcl_lnt_issue.
        CLEAR t95.
        DATA(t96) = t1.
        DATA(t97) = t46.
        DATA(t98) = |Use line_exists|.
        DATA(t99) = VALUE string( ).
        DATA t100 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t100.
        DATA t101 TYPE string.
        DATA(t102) = |use_line_exists|.
        t101 = t102.
        DATA t103 TYPE string.
        DATA(t104) = |Use line_exists|.
        t103 = t104.
        DATA t105 TYPE string.
        DATA(t106) = |Use line_exists, from 740sp02 and up|.
        t105 = t106.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA(t109) = abap_true.
        IF t109 = abap_true.
          DATA(t110) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t110 = t110 && |anABAP.md#prefer-line_exists-to-read-table-or-loop-at\n\nNot r|.
          t110 = t110 && |eported if the READ TABLE statement contains BINARY SEARCH.|.
          DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t111->has = abap_true.
          t111->value = t110.
          t108 = t111.
        ELSE.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          t108 = t112.
        ENDIF.
        t107 = t108.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t113.
        DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t118.
          t117 = t118.
          DATA(t119) = t117.
          DATA(t120) = |Upport|.
          t119->load( ).
          APPEND t120 TO t119->items.
          t119->save( ).
          DATA(t121) = t117.
          DATA(t122) = |Styleguide|.
          t121->load( ).
          APPEND t122 TO t121->items.
          t121->save( ).
          DATA(t123) = t117.
          DATA(t124) = |SingleFile|.
          t123->load( ).
          APPEND t124 TO t123->items.
          t123->save( ).
          DATA(t125) = t117.
          t116 = t125.
          t114 = t116.
        ELSE.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t126.
          t114 = t126.
        ENDIF.
        t113 = t114.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = |READ TABLE my_table TRANSPORTING NO FIELDS WITH KEY key = 'A|.
          t130 = t130 && |'.\nIF sy-subrc = 0.\nENDIF.|.
          DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t131->has = abap_true.
          t131->value = t130.
          t128 = t131.
        ELSE.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          t128 = t132.
        ENDIF.
        t127 = t128.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA(t136) = |IF line_exists( my_table[ key = 'A' ] ).\nENDIF.|.
          DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t137->has = abap_true.
          t137->value = t136.
          t134 = t137.
        ELSE.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          t134 = t138.
        ENDIF.
        t133 = t134.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        t139 = t140.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t141 = t142.
        t100 = NEW zcl_lnt_irule_metadata( i_key = t101 i_title = t103 i_short_description = t105 i_bad_example = t127 i_good_example = t133 i_extended_information = t107 i_tags = t113 i_pragma = t139 i_pseudo_comment = t141 ).
        CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
        t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t143 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t144 ).
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t145 ).
        ENDIF.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t146 ).
        ENDIF.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t147 ).
        ENDIF.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t148 ).
        ENDIF.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t149 ).
        ENDIF.
        CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
        t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t150) = |key|.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
        ENDIF.
        DATA(t152) = |title|.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
        ENDIF.
        DATA(t154) = |shortDescription|.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
        ENDIF.
        DATA(t156) = |extendedInformation|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA(t158) = |tags|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        DATA(t160) = |badExample|.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
        ENDIF.
        DATA(t162) = |goodExample|.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
        ENDIF.
        t99 = t100->key.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t165) = me->conf.
        t164 = t165->zlnt_view_read_sr_15c06369f827( ).
        DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t166.
        DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t167.
        t95 = zcl_lnt_issue=>at_statement( i_file = t96 i_statement = t97 i_message_26cb = t98 i_key = t99 i_severity = t164 i_fix = t166 i_alternative_fixes = t167 ).
        t94->load( ).
        APPEND t95 TO t94->items.
        t94->save( ).
      ENDIF.
      DATA t168 TYPE i.
      DATA(t169) = t40.
      DATA(t170) = 1.
      t168 = t169 + t170.
      t40 = t168.
    ENDDO.
    DATA(t171) = t3.
    result = t171.

  ENDMETHOD.

  METHOD checks_subrc.
    DATA(t1) = i_index.
    DATA(t2) = i_statements.
    DATA t3 TYPE i.
    DATA t4 TYPE i.
    DATA(t5) = t1.
    DATA(t6) = 1.
    t4 = t5 + t6.
    t3 = t4.
    DO.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t3.
      DATA t9 TYPE i.
      DATA(t10) = t2.
      t10->load( ).
      t9 = lines( t10->items ).
      t7 = xsdbool( t8 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t12.
      DATA(t13) = t2.
      DATA(t14) = t3.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      t13->load( ).
      CLEAR t15.
      READ TABLE t13->items INDEX t14 INTO t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t12.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t15.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t12 ?= t17.
      ELSE.
        t12 ?= t15.
      ENDIF.
      t11 = t12.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE REF TO zif_lnt_statement.
      DATA(t20) = t11.
      t19 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_comment ).
      IF t18 = abap_true.
        DATA t21 TYPE i.
        DATA(t22) = t3.
        DATA(t23) = 1.
        t21 = t22 + t23.
        t3 = t21.
        CONTINUE.
      ENDIF.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = t11.
      DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
      t24 = t25->find_all_expressions( i_type_9913 = t26 ).
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      DATA(t29) = VALUE i( ).
      DO.
        t24->load( ).
        IF t29 >= lines( t24->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t24->items INDEX t29 + 1 INTO t28.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        CLEAR t27.
        IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t30 ?= t28.
          DATA t31 TYPE REF TO object.
          t31 = t30->as_ref( ).
          t27 ?= t31.
        ELSE.
          t27 ?= t28.
        ENDIF.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t33) = t27.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t32 = t33->find_all_expressions( i_type_9913 = t34 ).
        DATA t35 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        DATA(t37) = VALUE i( ).
        DO.
          t32->load( ).
          IF t37 >= lines( t32->items ).
            EXIT.
          ENDIF.
          CLEAR t36.
          READ TABLE t32->items INDEX t37 + 1 INTO t36.
          t37 = t37 + 1.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t38.
          CLEAR t35.
          IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t38 ?= t36.
            DATA t39 TYPE REF TO object.
            t39 = t38->as_ref( ).
            t35 ?= t39.
          ELSE.
            t35 ?= t36.
          ENDIF.
          DATA(t40) = VALUE abap_bool( ).
          DATA t41 TYPE string.
          DATA t42 TYPE string.
          DATA(t43) = t35.
          t42 = t43->concat_tokens( ).
          DATA(t44) = strlen( t42 ).
          t41 = t42.
          IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t41 TO UPPER CASE.
          ELSE.
            t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
          ENDIF.
          DATA(t45) = |SY-SUBRC|.
          t40 = xsdbool( t41 = t45 ).
          IF t40 = abap_true.
            DATA(t46) = abap_true.
            result = t46.
            RETURN.
          ENDIF.
        ENDDO.
      ENDDO.
      DATA(t47) = abap_false.
      result = t47.
      RETURN.
      DATA t48 TYPE i.
      DATA(t49) = t3.
      DATA(t50) = 1.
      t48 = t49 + t50.
      t3 = t48.
    ENDDO.
    DATA(t51) = abap_false.
    result = t51.

  ENDMETHOD.

  METHOD uses_tabix.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_index.
    DATA(t2) = i_statements.
    DATA t3 TYPE int8.
    DATA t4 TYPE int8.
    DATA t5 TYPE i.
    DATA(t6) = t1.
    DATA(t7) = 1.
    t5 = t6 + t7.
    t4 = t5.
    t3 = t4.
    DO.
      DATA t8 TYPE abap_bool.
      DATA(t9) = t3.
      DATA t10 TYPE int8.
      DATA t11 TYPE int8.
      DATA(t12) = t1.
      t11 = t12.
      DATA(t13) = CONV int8( 5 ).
      t10 = t11 + t13.
      t8 = xsdbool( t9 < t10 ).
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t15.
      DATA(t16) = t2.
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE f.
      DATA(t19) = t3.
      t18 = t19.
      IF t18 > range_i32_upper.
        t17 = range_i32_upper.
      ELSEIF t18 < range_i32_lower.
        t17 = range_i32_lower.
      ELSE.
        t17 = trunc( t18 ).
      ENDIF.
      t17 = t17 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t16->load( ).
      CLEAR t20.
      READ TABLE t16->items INDEX t17 INTO t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t15.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t20.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t15 ?= t22.
      ELSE.
        t15 ?= t20.
      ENDIF.
      t14 = t15.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zcl_lnt_statement_node.
      DATA(t25) = t14.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      t26 = t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t24.
      IF t29 IS INITIAL.
        t28 = abap_true.
      ENDIF.
      t23 = t28.
      IF t23 = abap_true.
        EXIT.
      ELSE.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE REF TO zif_lnt_statement.
        DATA(t32) = t14.
        t31 = t32->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t30 = abap_true.
          DATA t33 TYPE int8.
          DATA(t34) = t3.
          DATA(t35) = CONV int8( 1 ).
          t33 = t34 + t35.
          t3 = t33.
          CONTINUE.
        ELSE.
          DATA(t36) = VALUE abap_bool( ).
          DATA(t37) = VALUE i( ).
          DATA t38 TYPE string.
          DATA t39 TYPE string.
          DATA(t40) = t14.
          t39 = t40->concat_tokens( ).
          DATA(t41) = strlen( t39 ).
          t38 = t39.
          IF t38 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t38 TO UPPER CASE.
          ELSE.
            t38 = zlnt_runtime_uppe_91169605024d=>full( t38 ).
          ENDIF.
          DATA(t42) = | SY-TABIX|.
          DATA(t43) = strlen( t38 ).
          IF t42 IS INITIAL.
            t37 = 0.
          ELSE.
            FIND t42 IN t38 MATCH OFFSET t37.
            IF sy-subrc <> 0.
              t37 = -1.
            ENDIF.
          ENDIF.
          DATA(t44) = 0.
          t36 = xsdbool( t37 >= t44 ).
          IF t36 = abap_true.
            DATA(t45) = abap_true.
            result = t45.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t46 TYPE int8.
      DATA(t47) = t3.
      DATA(t48) = CONV int8( 1 ).
      t46 = t47 + t48.
      t3 = t46.
    ENDDO.
    DATA(t49) = abap_false.
    result = t49.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_use_line_exists_conf( me->g_c_i_s_r_us_ln_ex_ts_us_ln_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_use_line_exists_conf( me->g_c_i_s_r_us_ln_ex_ts_us_ln_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_use_line_exists_conf.
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
        t1 = NEW zcl_lnt_use_line_exists_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_us_ln_ex_ts_us_ln_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1769_b5baf18a4c69.
  ENDMETHOD.
ENDCLASS.
