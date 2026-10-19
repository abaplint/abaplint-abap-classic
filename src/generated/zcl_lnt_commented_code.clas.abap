* TS: src/rules/commented_code.ts:20:1 CommentedCode
CLASS zcl_lnt_commented_code DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_commented_code_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_cm_cd_ts_cmm_cd RETURNING VALUE(result) TYPE REF TO zcl_lnt_commented_code_conf.
    METHODS st_cn_in_sr_rl_cm_cd_ts_cmm_cd IMPORTING i_conf TYPE REF TO zcl_lnt_commented_code_conf.
    METHODS run_parsed REDEFINITION.
    METHODS check_bf6e IMPORTING i_code TYPE string i_file TYPE REF TO zcl_lnt_abap_file i_pos_start TYPE REF TO zcl_lnt_position i_pos_end TYPE REF TO zcl_lnt_position i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE
    REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_comment_line IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_6fdde2a7fb2f TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_commented_code IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_commented_code_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |commented_code|.
    DATA t4 TYPE string.
    t4 = |Find commented code|.
    DATA t6 TYPE string.
    t6 = |Detects usage of commented out code.|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#delete-code-instead-of-commenting-it\nhttps://docs.a|.
    t11 = t11 && |bapopenchecks.org/checks/14/|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Styleguide|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |SingleFile|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |* WRITE 'hello world'.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
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
    DATA(t52) = |extendedInformation|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |tags|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |badExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Commented code|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cm_cd_ts_cmm_cd.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cm_cd_ts_cmm_cd.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zif_lnt_file.
    t10 = t1->file.
    t9 = t10->get_raw_rows( ).
    t5 = t9.
    DATA t12 TYPE string.
    t12 = ||.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE i.
    t18 = 0.
    DO.
      DATA t20 TYPE abap_bool.
      DATA t22 TYPE i.
      t5->load( ).
      t22 = lines( t5->items ).
      t20 = xsdbool( t18 < t22 ).
      IF t20 = abap_false.
        EXIT.
      ENDIF.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE string( ).
      DATA(t26) = VALUE string( ).
      DATA(t28) = t18.
      t28 = t28 + 1.
      IF t5->has( t28 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t5->load( ).
      CLEAR t26.
      READ TABLE t5->items INDEX t28 INTO t26.
      t25 = t26.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE string( ).
      DATA(t33) = 0.
      DATA(t34) = 1.
      DATA(t35) = strlen( t25 ).
      IF t33 < 0.
        t33 = t33 + t35.
        IF t33 < 0.
          t33 = 0.
        ENDIF.
      ENDIF.
      IF t33 > t35 OR t34 <= 0.
        CLEAR t31.
      ELSE.
        IF t34 > t35 - t33.
          t34 = t35 - t33.
        ENDIF.
        t31 = t25+t33(t34).
      ENDIF.
      DATA(t36) = |*|.
      t30 = xsdbool( t31 = t36 ).
      t29 = t30.
      IF t30 = abap_false.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        DATA(t42) = strlen( t25 ).
        DATA t43 TYPE i.
        DATA t44 TYPE i.
        t43 = 0.
        t44 = t42.
        DATA(t45) = VALUE i( ).
        DATA(t46) = VALUE i( ).
        DATA(t47) = VALUE string( ).
        WHILE t43 < t44.
          t46 = t43.
          t47 = t25+t46(1).
          DATA t48 TYPE c LENGTH 1.
          CLEAR t48.
          DATA(t49) = VALUE xstring( ).
          DATA t50 TYPE x LENGTH 1.
          CLEAR t50.
          DATA t51 TYPE x LENGTH 1.
          CLEAR t51.
          DATA(t52) = VALUE i( ).
          t48 = t47.
          t45 = cl_abap_conv_out_ce=>uccpi( t48 ).
          IF t45 >= 255.
            IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
              zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t47 IMPORTING buffer = t49 ).
            t50 = t49(1).
            t51 = t49+1(1).
            t45 = t50.
            t52 = t51.
            t45 = t45 + t52 * 256.
          ENDIF.
          IF t45 = 9 OR t45 = 10 OR t45 = 11 OR t45 = 12 OR t45 = 13 OR t45 = 32 OR t45 = 160 OR t45 = 5760 OR t45 = 8232 OR t45 = 8233 OR t45 = 8239 OR t45 = 8287 OR t45 = 12288 OR t45 = 65279 OR t45 >= 8192 AND t45 <= 8202.
            t43 = t43 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t53) = VALUE i( ).
        DATA(t54) = VALUE i( ).
        DATA(t55) = VALUE string( ).
        WHILE t44 > t43.
          t54 = t44 - 1.
          t55 = t25+t54(1).
          DATA t56 TYPE c LENGTH 1.
          CLEAR t56.
          DATA(t57) = VALUE xstring( ).
          DATA t58 TYPE x LENGTH 1.
          CLEAR t58.
          DATA t59 TYPE x LENGTH 1.
          CLEAR t59.
          DATA(t60) = VALUE i( ).
          t56 = t55.
          t53 = cl_abap_conv_out_ce=>uccpi( t56 ).
          IF t53 >= 255.
            IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
              zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t55 IMPORTING buffer = t57 ).
            t58 = t57(1).
            t59 = t57+1(1).
            t53 = t58.
            t60 = t59.
            t53 = t53 + t60 * 256.
          ENDIF.
          IF t53 = 9 OR t53 = 10 OR t53 = 11 OR t53 = 12 OR t53 = 13 OR t53 = 32 OR t53 = 160 OR t53 = 5760 OR t53 = 8232 OR t53 = 8233 OR t53 = 8239 OR t53 = 8287 OR t53 = 12288 OR t53 = 65279 OR t53 >= 8192 AND t53 <= 8202.
            t44 = t44 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t44 > t43.
          t42 = t44 - t43.
          t40 = t25+t43(t42).
        ELSE.
          CLEAR t40.
        ENDIF.
        DATA(t61) = 0.
        DATA(t62) = 1.
        DATA(t63) = strlen( t40 ).
        IF t61 < 0.
          t61 = t61 + t63.
          IF t61 < 0.
            t61 = 0.
          ENDIF.
        ENDIF.
        IF t61 > t63 OR t62 <= 0.
          CLEAR t39.
        ELSE.
          IF t62 > t63 - t61.
            t62 = t63 - t61.
          ENDIF.
          t39 = t40+t61(t62).
        ENDIF.
        DATA(t64) = |"|.
        t38 = xsdbool( t39 = t64 ).
        t37 = t38.
        IF t38 = abap_true.
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = VALUE string( ).
          DATA(t67) = VALUE string( ).
          DATA(t69) = strlen( t25 ).
          DATA t70 TYPE i.
          DATA t71 TYPE i.
          t70 = 0.
          t71 = t69.
          DATA(t72) = VALUE i( ).
          DATA(t73) = VALUE i( ).
          DATA(t74) = VALUE string( ).
          WHILE t70 < t71.
            t73 = t70.
            t74 = t25+t73(1).
            DATA t75 TYPE c LENGTH 1.
            CLEAR t75.
            DATA(t76) = VALUE xstring( ).
            DATA t77 TYPE x LENGTH 1.
            CLEAR t77.
            DATA t78 TYPE x LENGTH 1.
            CLEAR t78.
            DATA(t79) = VALUE i( ).
            t75 = t74.
            t72 = cl_abap_conv_out_ce=>uccpi( t75 ).
            IF t72 >= 255.
              IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
                zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t74 IMPORTING buffer = t76 ).
              t77 = t76(1).
              t78 = t76+1(1).
              t72 = t77.
              t79 = t78.
              t72 = t72 + t79 * 256.
            ENDIF.
            IF t72 = 9 OR t72 = 10 OR t72 = 11 OR t72 = 12 OR t72 = 13 OR t72 = 32 OR t72 = 160 OR t72 = 5760 OR t72 = 8232 OR t72 = 8233 OR t72 = 8239 OR t72 = 8287 OR t72 = 12288 OR t72 = 65279 OR t72 >= 8192 AND t72 <= 8202.
              t70 = t70 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          DATA(t80) = VALUE i( ).
          DATA(t81) = VALUE i( ).
          DATA(t82) = VALUE string( ).
          WHILE t71 > t70.
            t81 = t71 - 1.
            t82 = t25+t81(1).
            DATA t83 TYPE c LENGTH 1.
            CLEAR t83.
            DATA(t84) = VALUE xstring( ).
            DATA t85 TYPE x LENGTH 1.
            CLEAR t85.
            DATA t86 TYPE x LENGTH 1.
            CLEAR t86.
            DATA(t87) = VALUE i( ).
            t83 = t82.
            t80 = cl_abap_conv_out_ce=>uccpi( t83 ).
            IF t80 >= 255.
              IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
                zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t82 IMPORTING buffer = t84 ).
              t85 = t84(1).
              t86 = t84+1(1).
              t80 = t85.
              t87 = t86.
              t80 = t80 + t87 * 256.
            ENDIF.
            IF t80 = 9 OR t80 = 10 OR t80 = 11 OR t80 = 12 OR t80 = 13 OR t80 = 32 OR t80 = 160 OR t80 = 5760 OR t80 = 8232 OR t80 = 8233 OR t80 = 8239 OR t80 = 8287 OR t80 = 12288 OR t80 = 65279 OR t80 >= 8192 AND t80 <= 8202.
              t71 = t71 - 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t71 > t70.
            t69 = t71 - t70.
            t67 = t25+t70(t69).
          ELSE.
            CLEAR t67.
          ENDIF.
          DATA(t88) = 1.
          DATA(t89) = 1.
          DATA(t90) = strlen( t67 ).
          IF t88 < 0.
            t88 = t88 + t90.
            IF t88 < 0.
              t88 = 0.
            ENDIF.
          ENDIF.
          IF t88 > t90 OR t89 <= 0.
            CLEAR t66.
          ELSE.
            IF t89 > t90 - t88.
              t89 = t90 - t88.
            ENDIF.
            t66 = t67+t88(t89).
          ENDIF.
          DATA(t91) = |!|.
          t65 = xsdbool( t66 <> t91 ).
          t37 = t65.
        ENDIF.
        t29 = t37.
      ENDIF.
      t24 = t29.
      IF t24 = abap_true.
        DATA t92 TYPE abap_bool.
        DATA(t94) = ||.
        t92 = xsdbool( t12 = t94 ).
        IF t92 = abap_true.
          DATA t97 TYPE REF TO zcl_lnt_position.
          DATA t98 TYPE f.
          DATA t99 TYPE i.
          DATA(t101) = 1.
          t99 = t18 + t101.
          t98 = t99.
          DATA(t102) = CONV f( 1 ).
          DATA(t103) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t103->has = abap_true.
          t103->value = t102.
          t97 = NEW zcl_lnt_position( i_row = t98 i_col = t103 ).
          t16 = t97.
        ENDIF.
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA(t107) = t12.
        DATA(t108) = VALUE string( ).
        DATA(t109) = VALUE string( ).
        DATA(t110) = VALUE string( ).
        DATA(t111) = VALUE string( ).
        DATA(t113) = t18.
        t113 = t113 + 1.
        IF t5->has( t113 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t5->load( ).
        CLEAR t111.
        READ TABLE t5->items INDEX t113 INTO t111.
        DATA(t114) = strlen( t111 ).
        DATA t115 TYPE i.
        DATA t116 TYPE i.
        t115 = 0.
        t116 = t114.
        DATA(t117) = VALUE i( ).
        DATA(t118) = VALUE i( ).
        DATA(t119) = VALUE string( ).
        WHILE t115 < t116.
          t118 = t115.
          t119 = t111+t118(1).
          DATA t120 TYPE c LENGTH 1.
          CLEAR t120.
          DATA(t121) = VALUE xstring( ).
          DATA t122 TYPE x LENGTH 1.
          CLEAR t122.
          DATA t123 TYPE x LENGTH 1.
          CLEAR t123.
          DATA(t124) = VALUE i( ).
          t120 = t119.
          t117 = cl_abap_conv_out_ce=>uccpi( t120 ).
          IF t117 >= 255.
            IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
              zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t119 IMPORTING buffer = t121 ).
            t122 = t121(1).
            t123 = t121+1(1).
            t117 = t122.
            t124 = t123.
            t117 = t117 + t124 * 256.
          ENDIF.
          IF t117 = 9 OR t117 = 10 OR t117 = 11 OR t117 = 12 OR t117 = 13 OR t117 = 32 OR t117 = 160 OR t117 = 5760 OR t117 = 8232 OR t117 = 8233 OR t117 = 8239 OR t117 = 8287 OR t117 = 12288 OR t117 = 65279 OR t117 >= 8192 AND t117 <= 8202.
            t115 = t115 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t125) = VALUE i( ).
        DATA(t126) = VALUE i( ).
        DATA(t127) = VALUE string( ).
        WHILE t116 > t115.
          t126 = t116 - 1.
          t127 = t111+t126(1).
          DATA t128 TYPE c LENGTH 1.
          CLEAR t128.
          DATA(t129) = VALUE xstring( ).
          DATA t130 TYPE x LENGTH 1.
          CLEAR t130.
          DATA t131 TYPE x LENGTH 1.
          CLEAR t131.
          DATA(t132) = VALUE i( ).
          t128 = t127.
          t125 = cl_abap_conv_out_ce=>uccpi( t128 ).
          IF t125 >= 255.
            IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
              zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t127 IMPORTING buffer = t129 ).
            t130 = t129(1).
            t131 = t129+1(1).
            t125 = t130.
            t132 = t131.
            t125 = t125 + t132 * 256.
          ENDIF.
          IF t125 = 9 OR t125 = 10 OR t125 = 11 OR t125 = 12 OR t125 = 13 OR t125 = 32 OR t125 = 160 OR t125 = 5760 OR t125 = 8232 OR t125 = 8233 OR t125 = 8239 OR t125 = 8287 OR t125 = 12288 OR t125 = 65279 OR t125 >= 8192 AND t125 <= 8202.
            t116 = t116 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t116 > t115.
          t114 = t116 - t115.
          t110 = t111+t115(t114).
        ELSE.
          CLEAR t110.
        ENDIF.
        t109 = t110.
        DATA(t133) = VALUE string( ).
        DATA(t135) = 1.
        DATA t136 TYPE i.
        t136 = strlen( t109 ).
        DATA(t139) = strlen( t109 ).
        IF t135 < 0.
          t135 = t135 + t139.
          IF t135 < 0.
            t135 = 0.
          ENDIF.
        ENDIF.
        IF t135 > t139 OR t136 <= 0.
          CLEAR t133.
        ELSE.
          IF t136 > t139 - t135.
            t136 = t139 - t135.
          ENDIF.
          t133 = t109+t135(t136).
        ENDIF.
        t108 = t133.
        DATA(t140) = strlen( t107 ).
        t106 = |{ t107 }{ t108 }|.
        DATA(t141) = |\n|.
        DATA(t142) = strlen( t106 ).
        t105 = |{ t106 }{ t141 }|.
        t12 = t105.
        DATA t145 TYPE REF TO zcl_lnt_position.
        CLEAR t145.
        DATA t146 TYPE f.
        DATA t147 TYPE i.
        DATA(t149) = 1.
        t147 = t18 + t149.
        t146 = t147.
        DATA(t150) = VALUE f( ).
        DATA(t151) = VALUE int8( ).
        DATA(t152) = VALUE int8( ).
        DATA(t153) = VALUE i( ).
        DATA(t154) = VALUE string( ).
        DATA(t156) = t18.
        t156 = t156 + 1.
        IF t5->has( t156 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t5->load( ).
        CLEAR t154.
        READ TABLE t5->items INDEX t156 INTO t154.
        t153 = strlen( t154 ).
        t152 = t153.
        DATA(t158) = CONV int8( 1 ).
        t151 = t152 + t158.
        t150 = t151.
        DATA(t159) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t159->has = abap_true.
        t159->value = t150.
        t145 = NEW zcl_lnt_position( i_row = t146 i_col = t159 ).
        t14 = t145.
      ELSE.
        DATA(t161) = VALUE abap_bool( ).
        DATA t162 TYPE abap_bool.
        DATA t163 TYPE abap_bool.
        DATA(t165) = ||.
        t163 = xsdbool( t12 <> t165 ).
        t162 = t163.
        IF t163 = abap_true.
          DATA t166 TYPE abap_bool.
          t166 = xsdbool( t16 IS BOUND ).
          t162 = t166.
        ENDIF.
        t161 = t162.
        IF t162 = abap_true.
          DATA t168 TYPE abap_bool.
          t168 = xsdbool( t14 IS BOUND ).
          t161 = t168.
        ENDIF.
        IF t161 = abap_true.
          DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t170.
          DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t172.
          DATA(t173) = VALUE string( ).
          DATA(t174) = t12.
          DATA(t175) = strlen( t174 ).
          DATA t176 TYPE i.
          DATA t177 TYPE i.
          t176 = 0.
          t177 = t175.
          DATA(t178) = VALUE i( ).
          DATA(t179) = VALUE i( ).
          DATA(t180) = VALUE string( ).
          WHILE t176 < t177.
            t179 = t176.
            t180 = t174+t179(1).
            DATA t181 TYPE c LENGTH 1.
            CLEAR t181.
            DATA(t182) = VALUE xstring( ).
            DATA t183 TYPE x LENGTH 1.
            CLEAR t183.
            DATA t184 TYPE x LENGTH 1.
            CLEAR t184.
            DATA(t185) = VALUE i( ).
            t181 = t180.
            t178 = cl_abap_conv_out_ce=>uccpi( t181 ).
            IF t178 >= 255.
              IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
                zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t180 IMPORTING buffer = t182 ).
              t183 = t182(1).
              t184 = t182+1(1).
              t178 = t183.
              t185 = t184.
              t178 = t178 + t185 * 256.
            ENDIF.
            IF t178 = 9 OR t178 = 10 OR t178 = 11 OR t178 = 12 OR t178 = 13 OR t178 = 32 OR t178 = 160 OR t178 = 5760 OR t178 = 8232 OR t178 = 8233 OR t178 = 8239 OR t178 = 8287 OR t178 = 12288 OR t178 = 65279 OR t178 >= 8192 AND t178 <= 8202.
              t176 = t176 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          DATA(t186) = VALUE i( ).
          DATA(t187) = VALUE i( ).
          DATA(t188) = VALUE string( ).
          WHILE t177 > t176.
            t187 = t177 - 1.
            t188 = t174+t187(1).
            DATA t189 TYPE c LENGTH 1.
            CLEAR t189.
            DATA(t190) = VALUE xstring( ).
            DATA t191 TYPE x LENGTH 1.
            CLEAR t191.
            DATA t192 TYPE x LENGTH 1.
            CLEAR t192.
            DATA(t193) = VALUE i( ).
            t189 = t188.
            t186 = cl_abap_conv_out_ce=>uccpi( t189 ).
            IF t186 >= 255.
              IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
                zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t188 IMPORTING buffer = t190 ).
              t191 = t190(1).
              t192 = t190+1(1).
              t186 = t191.
              t193 = t192.
              t186 = t186 + t193 * 256.
            ENDIF.
            IF t186 = 9 OR t186 = 10 OR t186 = 11 OR t186 = 12 OR t186 = 13 OR t186 = 32 OR t186 = 160 OR t186 = 5760 OR t186 = 8232 OR t186 = 8233 OR t186 = 8239 OR t186 = 8287 OR t186 = 12288 OR t186 = 65279 OR t186 >= 8192 AND t186 <= 8202.
              t177 = t177 - 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t177 > t176.
            t175 = t177 - t176.
            t173 = t174+t176(t175).
          ELSE.
            CLEAR t173.
          ENDIF.
          DATA t195 TYPE REF TO zcl_lnt_position.
          t195 = t16.
          DATA t197 TYPE REF TO zcl_lnt_position.
          t197 = t14.
          t172 = me->check_bf6e( i_code = t173 i_file = t1 i_pos_start = t195 i_pos_end = t197 i_obj_1ed0 = t2 ).
          t170 = t3->concat( p0 = t172 ).
          t3 = t170.
          t12 = ||.
        ENDIF.
      ENDIF.
      DATA t201 TYPE i.
      DATA(t203) = 1.
      t201 = t18 + t203.
      t18 = t201.
    ENDDO.
    DATA t204 TYPE abap_bool.
    DATA t205 TYPE abap_bool.
    t205 = xsdbool( t16 IS BOUND ).
    t204 = t205.
    IF t205 = abap_true.
      DATA t207 TYPE abap_bool.
      t207 = xsdbool( t14 IS BOUND ).
      t204 = t207.
    ENDIF.
    IF t204 = abap_true.
      DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t212) = VALUE string( ).
      DATA(t214) = strlen( t12 ).
      DATA t215 TYPE i.
      DATA t216 TYPE i.
      t215 = 0.
      t216 = t214.
      DATA(t217) = VALUE i( ).
      DATA(t218) = VALUE i( ).
      DATA(t219) = VALUE string( ).
      WHILE t215 < t216.
        t218 = t215.
        t219 = t12+t218(1).
        DATA t220 TYPE c LENGTH 1.
        CLEAR t220.
        DATA(t221) = VALUE xstring( ).
        DATA t222 TYPE x LENGTH 1.
        CLEAR t222.
        DATA t223 TYPE x LENGTH 1.
        CLEAR t223.
        DATA(t224) = VALUE i( ).
        t220 = t219.
        t217 = cl_abap_conv_out_ce=>uccpi( t220 ).
        IF t217 >= 255.
          IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
            zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t219 IMPORTING buffer = t221 ).
          t222 = t221(1).
          t223 = t221+1(1).
          t217 = t222.
          t224 = t223.
          t217 = t217 + t224 * 256.
        ENDIF.
        IF t217 = 9 OR t217 = 10 OR t217 = 11 OR t217 = 12 OR t217 = 13 OR t217 = 32 OR t217 = 160 OR t217 = 5760 OR t217 = 8232 OR t217 = 8233 OR t217 = 8239 OR t217 = 8287 OR t217 = 12288 OR t217 = 65279 OR t217 >= 8192 AND t217 <= 8202.
          t215 = t215 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t225) = VALUE i( ).
      DATA(t226) = VALUE i( ).
      DATA(t227) = VALUE string( ).
      WHILE t216 > t215.
        t226 = t216 - 1.
        t227 = t12+t226(1).
        DATA t228 TYPE c LENGTH 1.
        CLEAR t228.
        DATA(t229) = VALUE xstring( ).
        DATA t230 TYPE x LENGTH 1.
        CLEAR t230.
        DATA t231 TYPE x LENGTH 1.
        CLEAR t231.
        DATA(t232) = VALUE i( ).
        t228 = t227.
        t225 = cl_abap_conv_out_ce=>uccpi( t228 ).
        IF t225 >= 255.
          IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
            zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t227 IMPORTING buffer = t229 ).
          t230 = t229(1).
          t231 = t229+1(1).
          t225 = t230.
          t232 = t231.
          t225 = t225 + t232 * 256.
        ENDIF.
        IF t225 = 9 OR t225 = 10 OR t225 = 11 OR t225 = 12 OR t225 = 13 OR t225 = 32 OR t225 = 160 OR t225 = 5760 OR t225 = 8232 OR t225 = 8233 OR t225 = 8239 OR t225 = 8287 OR t225 = 12288 OR t225 = 65279 OR t225 >= 8192 AND t225 <= 8202.
          t216 = t216 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t216 > t215.
        t214 = t216 - t215.
        t212 = t12+t215(t214).
      ELSE.
        CLEAR t212.
      ENDIF.
      DATA t234 TYPE REF TO zcl_lnt_position.
      t234 = t16.
      DATA t236 TYPE REF TO zcl_lnt_position.
      t236 = t14.
      t211 = me->check_bf6e( i_code = t212 i_file = t1 i_pos_start = t234 i_pos_end = t236 i_obj_1ed0 = t2 ).
      t209 = t3->concat( p0 = t211 ).
      t3 = t209.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_code.
    DATA(t2) = i_file.
    DATA(t3) = i_pos_start.
    DATA(t4) = i_pos_end.
    DATA(t5) = i_obj_1ed0.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t9) = ||.
    t7 = xsdbool( t1 = t9 ).
    t6 = t7.
    IF t7 = abap_false.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE string( ).
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      t14 = strlen( t1 ).
      DATA(t17) = 1.
      t13 = t14 - t17.
      DATA(t18) = strlen( t1 ).
      IF t13 < 0 OR t13 >= t18.
        CLEAR t11.
      ELSE.
        t11 = t1+t13(1).
      ENDIF.
      DATA(t19) = |.|.
      t10 = xsdbool( t11 <> t19 ).
      t6 = t10.
    ENDIF.
    IF t6 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t20.
      result = t20.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zcl_lnt_memory_file.
    DATA(t23) = |_foobar.prog.abap|.
    t22 = NEW zcl_lnt_memory_file( i_filename = t23 i_raw = t1 ).
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_iabapparser_result.
    DATA t30 TYPE REF TO zcl_lnt_abap_parser.
    DATA t31 TYPE REF TO zif_lnt_union_0eeefcfe.
    DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t33 TYPE REF TO zif_lnt_registry.
    t30 = NEW zcl_lnt_abap_parser( i_options_or_release = t31 i_global_macros_5535 = t32 i_reg_f149 = t33 ).
    DATA t34 TYPE REF TO zif_lnt_file.
    t34 = t22.
    DATA t36 TYPE REF TO zcl_lnt_iabapparser_result.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    t39->load( ).
    APPEND t34 TO t39->items.
    t39->save( ).
    t38 = t39.
    t36 = t30->parse( i_files = t38 ).
    t28 = t36.
    t27 = t28->output.
    DATA t44 TYPE REF TO object.
    t27->load( ).
    READ TABLE t27->items INDEX 1 INTO t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t45 ?= t44.
      DATA t46 TYPE REF TO object.
      t46 = t45->as_ref( ).
      t26 ?= t46.
    ELSE.
      t26 ?= t44.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t51 = t26->statements.
    t47 = t51.
    DATA t53 TYPE abap_bool.
    DATA t54 TYPE i.
    t47->load( ).
    t54 = lines( t47->items ).
    DATA(t56) = 0.
    t53 = xsdbool( t54 = t56 ).
    IF t53 = abap_true.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t57.
      result = t57.
      RETURN.
    ENDIF.
    DATA t58 TYPE abap_bool.
    t58 = abap_false.
    DATA t61 TYPE REF TO zcl_lnt_statement_node.
    DATA t62 TYPE REF TO object.
    DATA(t63) = VALUE i( ).
    DO.
      t47->load( ).
      IF t63 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t62.
      READ TABLE t47->items INDEX t63 + 1 INTO t62.
      t63 = t63 + 1.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      CLEAR t61.
      IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t64 ?= t62.
        DATA t65 TYPE REF TO object.
        t65 = t64->as_ref( ).
        t61 ?= t65.
      ELSE.
        t61 ?= t62.
      ENDIF.
      DATA t66 TYPE REF TO zif_lnt_statement.
      DATA t67 TYPE REF TO zif_lnt_statement.
      t67 = t61->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t66 = t67.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      DATA t72 TYPE abap_bool.
      DATA(t73) = CAST zcl_lnt_commented_code_conf( me->gt_cn_in_sr_rl_cm_cd_ts_cmm_cd( ) ).
      t72 = t73->zlnt_view_read_sr_77c0cb4e3d06( ).
      t71 = xsdbool( t72 = abap_true ).
      t70 = t71.
      IF t71 = abap_true.
        DATA t75 TYPE abap_bool.
        t75 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_function_group ).
        t70 = t75.
      ENDIF.
      t69 = t70.
      IF t70 = abap_true.
        DATA t77 TYPE abap_bool.
        t77 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_include ).
        t69 = t77.
      ENDIF.
      IF t69 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = VALUE abap_bool( ).
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE abap_bool.
      t82 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_unknown ).
      t81 = t82.
      IF t82 = abap_false.
        DATA t84 TYPE abap_bool.
        t84 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_empty ).
        t81 = t84.
      ENDIF.
      t80 = t81.
      IF t81 = abap_false.
        DATA t86 TYPE abap_bool.
        t86 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_st_comment ).
        t80 = t86.
      ENDIF.
      t79 = xsdbool( t80 = abap_false ).
      IF t79 = abap_true.
        t58 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t89 TYPE abap_bool.
    t89 = xsdbool( t58 = abap_false ).
    IF t89 = abap_true.
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t91.
      result = t91.
      RETURN.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t93 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t3 i_end = t4 ).
    DATA t98 TYPE REF TO zcl_lnt_issue.
    DATA(t102) = |Commented code|.
    DATA(t103) = VALUE string( ).
    DATA t104 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t105 TYPE string.
    t105 = |commented_code|.
    DATA t107 TYPE string.
    t107 = |Find commented code|.
    DATA t109 TYPE string.
    t109 = |Detects usage of commented out code.|.
    DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t114) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t114 = t114 && |nABAP.md#delete-code-instead-of-commenting-it\nhttps://docs.a|.
    t114 = t114 && |bapopenchecks.org/checks/14/|.
    DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t115->has = abap_true.
    t115->value = t114.
    t111 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t122.
    t121 = t122.
    DATA(t124) = |Styleguide|.
    t121->load( ).
    APPEND t124 TO t121->items.
    t121->save( ).
    DATA(t126) = |Quickfix|.
    t121->load( ).
    APPEND t126 TO t121->items.
    t121->save( ).
    DATA(t128) = |SingleFile|.
    t121->load( ).
    APPEND t128 TO t121->items.
    t121->save( ).
    t117 = t121.
    DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t134) = |* WRITE 'hello world'.|.
    DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t135->has = abap_true.
    t135->value = t134.
    t131 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t104 = NEW zcl_lnt_irule_metadata( i_key = t105 i_title = t107 i_short_description = t109 i_bad_example = t131 i_good_example = t137 i_extended_information = t111 i_tags = t117 i_pragma = t139 i_pseudo_comment = t141 ).
    CREATE OBJECT t104->zlnt_view_ownkeys_b0e8086400eb.
    t104->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t143 ).
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t144 ).
    ENDIF.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t145 ).
    ENDIF.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t146 ).
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t147 ).
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t148 ).
    ENDIF.
    CREATE OBJECT t104->zlnt_json_ownkeys_70e5fd461788.
    t104->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t149) = |key|.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
    DATA(t151) = |title|.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
    ENDIF.
    DATA(t153) = |shortDescription|.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
    ENDIF.
    DATA(t155) = |extendedInformation|.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
    ENDIF.
    DATA(t157) = |tags|.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
    ENDIF.
    DATA(t159) = |badExample|.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
    ENDIF.
    t103 = t104->key.
    DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t161 = me->conf->zlnt_view_read_sr_15c06369f827( ).
    DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t163 = t93.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t98 = zcl_lnt_issue=>at_range( i_file = t2 i_start = t3 i_end = t4 i_message_26cb = t102 i_key = t103 i_severity = t161 i_fix = t163 i_alternative_fixes = t167 ).
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    t169 = t170.
    t169->load( ).
    APPEND t98 TO t169->items.
    t169->save( ).
    result = t169.

  ENDMETHOD.

  METHOD is_comment_line.
    DATA(t1) = i_text.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE string( ).
    DATA(t6) = 0.
    DATA(t7) = 1.
    DATA(t8) = strlen( t1 ).
    IF t6 < 0.
      t6 = t6 + t8.
      IF t6 < 0.
        t6 = 0.
      ENDIF.
    ENDIF.
    IF t6 > t8 OR t7 <= 0.
      CLEAR t4.
    ELSE.
      IF t7 > t8 - t6.
        t7 = t8 - t6.
      ENDIF.
      t4 = t1+t6(t7).
    ENDIF.
    DATA(t9) = |*|.
    t3 = xsdbool( t4 = t9 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE string( ).
      DATA(t15) = strlen( t1 ).
      DATA t16 TYPE i.
      DATA t17 TYPE i.
      t16 = 0.
      t17 = t15.
      DATA(t18) = VALUE i( ).
      DATA(t19) = VALUE i( ).
      DATA(t20) = VALUE string( ).
      WHILE t16 < t17.
        t19 = t16.
        t20 = t1+t19(1).
        DATA t21 TYPE c LENGTH 1.
        CLEAR t21.
        DATA(t22) = VALUE xstring( ).
        DATA t23 TYPE x LENGTH 1.
        CLEAR t23.
        DATA t24 TYPE x LENGTH 1.
        CLEAR t24.
        DATA(t25) = VALUE i( ).
        t21 = t20.
        t18 = cl_abap_conv_out_ce=>uccpi( t21 ).
        IF t18 >= 255.
          IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
            zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t20 IMPORTING buffer = t22 ).
          t23 = t22(1).
          t24 = t22+1(1).
          t18 = t23.
          t25 = t24.
          t18 = t18 + t25 * 256.
        ENDIF.
        IF t18 = 9 OR t18 = 10 OR t18 = 11 OR t18 = 12 OR t18 = 13 OR t18 = 32 OR t18 = 160 OR t18 = 5760 OR t18 = 8232 OR t18 = 8233 OR t18 = 8239 OR t18 = 8287 OR t18 = 12288 OR t18 = 65279 OR t18 >= 8192 AND t18 <= 8202.
          t16 = t16 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t26) = VALUE i( ).
      DATA(t27) = VALUE i( ).
      DATA(t28) = VALUE string( ).
      WHILE t17 > t16.
        t27 = t17 - 1.
        t28 = t1+t27(1).
        DATA t29 TYPE c LENGTH 1.
        CLEAR t29.
        DATA(t30) = VALUE xstring( ).
        DATA t31 TYPE x LENGTH 1.
        CLEAR t31.
        DATA t32 TYPE x LENGTH 1.
        CLEAR t32.
        DATA(t33) = VALUE i( ).
        t29 = t28.
        t26 = cl_abap_conv_out_ce=>uccpi( t29 ).
        IF t26 >= 255.
          IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
            zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t28 IMPORTING buffer = t30 ).
          t31 = t30(1).
          t32 = t30+1(1).
          t26 = t31.
          t33 = t32.
          t26 = t26 + t33 * 256.
        ENDIF.
        IF t26 = 9 OR t26 = 10 OR t26 = 11 OR t26 = 12 OR t26 = 13 OR t26 = 32 OR t26 = 160 OR t26 = 5760 OR t26 = 8232 OR t26 = 8233 OR t26 = 8239 OR t26 = 8287 OR t26 = 12288 OR t26 = 65279 OR t26 >= 8192 AND t26 <= 8202.
          t17 = t17 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t17 > t16.
        t15 = t17 - t16.
        t13 = t1+t16(t15).
      ELSE.
        CLEAR t13.
      ENDIF.
      DATA(t34) = 0.
      DATA(t35) = 1.
      DATA(t36) = strlen( t13 ).
      IF t34 < 0.
        t34 = t34 + t36.
        IF t34 < 0.
          t34 = 0.
        ENDIF.
      ENDIF.
      IF t34 > t36 OR t35 <= 0.
        CLEAR t12.
      ELSE.
        IF t35 > t36 - t34.
          t35 = t36 - t34.
        ENDIF.
        t12 = t13+t34(t35).
      ENDIF.
      DATA(t37) = |"|.
      t11 = xsdbool( t12 = t37 ).
      t10 = t11.
      IF t11 = abap_true.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        DATA(t42) = strlen( t1 ).
        DATA t43 TYPE i.
        DATA t44 TYPE i.
        t43 = 0.
        t44 = t42.
        DATA(t45) = VALUE i( ).
        DATA(t46) = VALUE i( ).
        DATA(t47) = VALUE string( ).
        WHILE t43 < t44.
          t46 = t43.
          t47 = t1+t46(1).
          DATA t48 TYPE c LENGTH 1.
          CLEAR t48.
          DATA(t49) = VALUE xstring( ).
          DATA t50 TYPE x LENGTH 1.
          CLEAR t50.
          DATA t51 TYPE x LENGTH 1.
          CLEAR t51.
          DATA(t52) = VALUE i( ).
          t48 = t47.
          t45 = cl_abap_conv_out_ce=>uccpi( t48 ).
          IF t45 >= 255.
            IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
              zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t47 IMPORTING buffer = t49 ).
            t50 = t49(1).
            t51 = t49+1(1).
            t45 = t50.
            t52 = t51.
            t45 = t45 + t52 * 256.
          ENDIF.
          IF t45 = 9 OR t45 = 10 OR t45 = 11 OR t45 = 12 OR t45 = 13 OR t45 = 32 OR t45 = 160 OR t45 = 5760 OR t45 = 8232 OR t45 = 8233 OR t45 = 8239 OR t45 = 8287 OR t45 = 12288 OR t45 = 65279 OR t45 >= 8192 AND t45 <= 8202.
            t43 = t43 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t53) = VALUE i( ).
        DATA(t54) = VALUE i( ).
        DATA(t55) = VALUE string( ).
        WHILE t44 > t43.
          t54 = t44 - 1.
          t55 = t1+t54(1).
          DATA t56 TYPE c LENGTH 1.
          CLEAR t56.
          DATA(t57) = VALUE xstring( ).
          DATA t58 TYPE x LENGTH 1.
          CLEAR t58.
          DATA t59 TYPE x LENGTH 1.
          CLEAR t59.
          DATA(t60) = VALUE i( ).
          t56 = t55.
          t53 = cl_abap_conv_out_ce=>uccpi( t56 ).
          IF t53 >= 255.
            IF zlnt_builtin_code_6fdde2a7fb2f IS NOT BOUND.
              zlnt_builtin_code_6fdde2a7fb2f = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_6fdde2a7fb2f->convert( EXPORTING data = t55 IMPORTING buffer = t57 ).
            t58 = t57(1).
            t59 = t57+1(1).
            t53 = t58.
            t60 = t59.
            t53 = t53 + t60 * 256.
          ENDIF.
          IF t53 = 9 OR t53 = 10 OR t53 = 11 OR t53 = 12 OR t53 = 13 OR t53 = 32 OR t53 = 160 OR t53 = 5760 OR t53 = 8232 OR t53 = 8233 OR t53 = 8239 OR t53 = 8287 OR t53 = 12288 OR t53 = 65279 OR t53 >= 8192 AND t53 <= 8202.
            t44 = t44 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t44 > t43.
          t42 = t44 - t43.
          t40 = t1+t43(t42).
        ELSE.
          CLEAR t40.
        ENDIF.
        DATA(t61) = 1.
        DATA(t62) = 1.
        DATA(t63) = strlen( t40 ).
        IF t61 < 0.
          t61 = t61 + t63.
          IF t61 < 0.
            t61 = 0.
          ENDIF.
        ENDIF.
        IF t61 > t63 OR t62 <= 0.
          CLEAR t39.
        ELSE.
          IF t62 > t63 - t61.
            t62 = t63 - t61.
          ENDIF.
          t39 = t40+t61(t62).
        ENDIF.
        DATA(t64) = |!|.
        t38 = xsdbool( t39 <> t64 ).
        t10 = t38.
      ENDIF.
      t2 = t10.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_commented_code_conf( me->gt_cn_in_sr_rl_cm_cd_ts_cmm_cd( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_commented_code_conf( me->gt_cn_in_sr_rl_cm_cd_ts_cmm_cd( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_commented_code_conf.
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
        t1 = NEW zcl_lnt_commented_code_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_cm_cd_ts_cmm_cd( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1460_b7c291d392b9.
  ENDMETHOD.
ENDCLASS.
