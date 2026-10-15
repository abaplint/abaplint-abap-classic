* TS: src/rules/nesting.ts:13:1 Nesting
CLASS zcl_lnt_nesting DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_nesting_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_max TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cnf_ins_src_rls_nst_ts_nstn RETURNING VALUE(result) TYPE REF TO zcl_lnt_nesting_conf.
    METHODS st_cnf_ins_src_rls_nst_ts_nstn IMPORTING i_conf TYPE REF TO zcl_lnt_nesting_conf.
    METHODS rn_prs_ins_src_rls_nst_ts_nstn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_nesting IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_nesting_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |nesting|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check nesting depth|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for methods exceeding a maximum nesting depth|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#keep-the-nesting-depth-low\nhttps://docs.abapopenche|.
      t11 = t11 && |cks.org/checks/74/|.
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
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_max.
    DATA t2 TYPE string.
    DATA(t3) = |Reduce nesting depth to max |.
    DATA(t4) = t1.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cnf_ins_src_rls_nst_ts_nstn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cnf_ins_src_rls_nst_ts_nstn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_prs_ins_src_rls_nst_ts_nstn.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE f.
    DATA(t5) = CONV f( 0 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t7.
    t9 = t10->statements.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA t17 TYPE REF TO zif_lnt_statement.
      DATA(t18) = t11.
      t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA(t26) = t16.
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_if ).
      t24 = t25.
      IF t25 = abap_false.
        DATA t27 TYPE abap_bool.
        DATA(t28) = t16.
        t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_case ).
        t24 = t27.
      ENDIF.
      t23 = t24.
      IF t24 = abap_false.
        DATA t29 TYPE abap_bool.
        DATA(t30) = t16.
        t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_st_while ).
        t23 = t29.
      ENDIF.
      t22 = t23.
      IF t23 = abap_false.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t16.
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_loop ).
        t22 = t31.
      ENDIF.
      t21 = t22.
      IF t22 = abap_false.
        DATA t33 TYPE abap_bool.
        DATA(t34) = t16.
        t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t21 = t33.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t35 TYPE abap_bool.
        DATA(t36) = t16.
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_do ).
        t20 = t35.
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        DATA t37 TYPE abap_bool.
        DATA(t38) = t16.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_st_try ).
        t19 = t37.
      ENDIF.
      IF t19 = abap_true.
        DATA t39 TYPE f.
        DATA(t40) = t4.
        DATA(t41) = CONV f( 1 ).
        t39 = t40 + t41.
        t4 = t39.
      ELSE.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        DATA(t49) = t16.
        t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_end_if ).
        t47 = t48.
        IF t48 = abap_false.
          DATA t50 TYPE abap_bool.
          DATA(t51) = t16.
          t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_end_case ).
          t47 = t50.
        ENDIF.
        t46 = t47.
        IF t47 = abap_false.
          DATA t52 TYPE abap_bool.
          DATA(t53) = t16.
          t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_end_while ).
          t46 = t52.
        ENDIF.
        t45 = t46.
        IF t46 = abap_false.
          DATA t54 TYPE abap_bool.
          DATA(t55) = t16.
          t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_end_loop ).
          t45 = t54.
        ENDIF.
        t44 = t45.
        IF t45 = abap_false.
          DATA t56 TYPE abap_bool.
          DATA(t57) = t16.
          t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_end_select ).
          t44 = t56.
        ENDIF.
        t43 = t44.
        IF t44 = abap_false.
          DATA t58 TYPE abap_bool.
          DATA(t59) = t16.
          t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_end_do ).
          t43 = t58.
        ENDIF.
        t42 = t43.
        IF t43 = abap_false.
          DATA t60 TYPE abap_bool.
          DATA(t61) = t16.
          t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_end_try ).
          t42 = t60.
        ENDIF.
        IF t42 = abap_true.
          DATA t62 TYPE f.
          DATA(t63) = t4.
          DATA(t64) = CONV f( 1 ).
          t62 = t63 - t64.
          t4 = t62.
        ENDIF.
      ENDIF.
      DATA t65 TYPE abap_bool.
      DATA(t66) = t4.
      DATA t67 TYPE f.
      DATA(t68) = me->conf.
      t67 = t68->zlnt_view_read_sr_c2aca24d9bc4( ).
      t65 = xsdbool( t66 > t67 ).
      IF t65 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_position.
        DATA t70 TYPE REF TO zcl_lnt_position.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t73) = t11.
        t72 = t73->get_first_token( ).
        t71 = t72.
        DATA t74 TYPE REF TO zcl_lnt_position.
        DATA(t75) = t71.
        t74 = t75->start.
        t70 = t74.
        t69 = t70.
        DATA t76 TYPE REF TO zcl_lnt_issue.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        CLEAR t77.
        DATA(t78) = t1.
        DATA(t79) = t69.
        DATA(t80) = VALUE string( ).
        DATA(t81) = VALUE string( ).
        DATA(t82) = VALUE string( ).
        DATA t83 TYPE f.
        DATA(t84) = me->conf.
        t83 = t84->zlnt_view_read_sr_c2aca24d9bc4( ).
        IF t83 <> trunc( t83 ) OR t83 > range_safe_integer OR t83 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t85) = CONV int8( t83 ).
        t82 = |{ t85 }|.
        t81 = t82.
        DATA t86 TYPE string.
        DATA(t87) = |Reduce nesting depth to max |.
        DATA(t88) = t81.
        DATA(t89) = strlen( t87 ).
        t86 = |{ t87 }{ t88 }|.
        t80 = t86.
        DATA(t90) = VALUE string( ).
        DATA t91 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t91.
        DATA t92 TYPE string.
        DATA(t93) = |nesting|.
        t92 = t93.
        DATA t94 TYPE string.
        DATA(t95) = |Check nesting depth|.
        t94 = t95.
        DATA t96 TYPE string.
        DATA(t97) = |Checks for methods exceeding a maximum nesting depth|.
        t96 = t97.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA(t101) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t101 = t101 && |nABAP.md#keep-the-nesting-depth-low\nhttps://docs.abapopenche|.
          t101 = t101 && |cks.org/checks/74/|.
          DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t102->has = abap_true.
          t102->value = t101.
          t99 = t102.
        ELSE.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          t99 = t103.
        ENDIF.
        t98 = t99.
        DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t105.
        DATA(t106) = abap_true.
        IF t106 = abap_true.
          DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t109.
          t108 = t109.
          DATA(t110) = t108.
          DATA(t111) = |Styleguide|.
          t110->load( ).
          APPEND t111 TO t110->items.
          t110->save( ).
          DATA(t112) = t108.
          DATA(t113) = |SingleFile|.
          t112->load( ).
          APPEND t113 TO t112->items.
          t112->save( ).
          DATA(t114) = t108.
          t107 = t114.
          t105 = t107.
        ELSE.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          t105 = t115.
        ENDIF.
        t104 = t105.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t116 = t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t118 = t119.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        t120 = t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        t122 = t123.
        t91 = NEW zcl_lnt_irule_metadata( i_key = t92 i_title = t94 i_short_description = t96 i_bad_example = t116 i_good_example = t118 i_extended_information = t98 i_tags = t104 i_pragma = t120 i_pseudo_comment = t122 ).
        CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
        t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t124 ).
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t125 ).
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t126 ).
        ENDIF.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t127 ).
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t128 ).
        ENDIF.
        CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
        t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t129) = |key|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        DATA(t131) = |title|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        DATA(t133) = |shortDescription|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |extendedInformation|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA(t137) = |tags|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        t90 = t91->key.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t140) = me->conf.
        t139 = t140->zlnt_view_read_sr_15c06369f827( ).
        DATA t141 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t141.
        t77 = zcl_lnt_issue=>at_position( i_file = t78 i_start = t79 i_message_26cb = t80 i_key = t90 i_severity = t139 i_fix = t141 ).
        t76 = t77.
        DATA(t142) = t2.
        DATA(t143) = t76.
        t142->load( ).
        APPEND t143 TO t142->items.
        t142->save( ).
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t144) = t2.
    result = t144.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_nesting_conf( me->gt_cnf_ins_src_rls_nst_ts_nstn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_nesting_conf( me->gt_cnf_ins_src_rls_nst_ts_nstn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_nesting_conf.
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
        t1 = NEW zcl_lnt_nesting_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cnf_ins_src_rls_nst_ts_nstn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_prs_ins_src_rls_nst_ts_nstn( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1601_eee449a4fb30.
  ENDMETHOD.
ENDCLASS.
