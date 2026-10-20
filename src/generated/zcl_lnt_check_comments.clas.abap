* TS: src/rules/check_comments.ts:17:1 CheckComments
CLASS zcl_lnt_check_comments DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_check_comments_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_issue_type TYPE i RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_ch_cm_ts_ch_cmm RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_comments_conf.
    METHODS st_cn_in_sr_rl_ch_cm_ts_ch_cmm IMPORTING i_conf TYPE REF TO zcl_lnt_check_comments_conf.
    METHODS rn_pr_in_sr_rl_ch_cm_ts_ch_cmm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_1429134fdf5d TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_check_comments IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_check_comments_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nDetects end of line comments. Comments starting with "#EC" |.
    t11 = t11 && |or "##" are ignored\n\nhttps://github.com/SAP/styleguides/blob|.
    t11 = t11 && |/main/clean-abap/CleanABAP.md#put-comments-before-the-statem|.
    t11 = t11 && |ent-they-relate-to|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |WRITE 2. " descriptive comment|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |" descriptive comment\nWRITE 2.|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |check_comments| i_title = |Check Comments| i_short_description = |\nVarious checks for comment usage.| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    IF xsdbool( i_issue_type = 0 ) = abap_true.
      DATA(t5) = |Do not use end of line comments - move comment to previous r|.
      t5 = t5 && |ow instead|.
      result = t5.
      RETURN.
    ENDIF.
    result = ||.


  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_cm_ts_ch_cmm.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_cm_ts_ch_cmm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ch_cm_ts_ch_cmm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t4 = t1->file->get_raw_rows( ).
    DATA t12 TYPE abap_bool.
    t12 = me->conf->zlnt_view_read_sr_938313da583d( ).
    IF xsdbool( t12 = abap_true ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t16 = CAST zcl_lnt_check_comments_conf( me->gt_cn_in_sr_rl_ch_cm_ts_ch_cmm( ) )->zlnt_view_read_sr_ff80acbf8164( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t21 = t16.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = VALUE abap_bool( ).
    IF t21 IS INITIAL.
      t25 = abap_true.
    ELSEIF t21->has = abap_false.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    t19 = t20.
    IF t20 = abap_false.
      DATA(t29) = t16.
      IF t29->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t19 = xsdbool( t29->value < CONV f( 1 ) ).
    ENDIF.
    IF t19 = abap_true.
      DATA(t34) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t34->has = abap_true.
      t34->value = CONV f( 10 ).
      t16 = t34.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t36.
    DATA t38 TYPE i.
    t38 = 0.
    DO.
      t4->load( ).
      IF xsdbool( t38 < lines( t4->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t44) = VALUE string( ).
      DATA(t45) = VALUE string( ).
      DATA(t47) = t38.
      t47 = t47 + 1.
      IF t4->has( t47 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t4->load( ).
      READ TABLE t4->items INDEX t47 INTO t45.
      t44 = t45.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = VALUE string( ).
      DATA(t52) = strlen( t44 ).
      DATA t53 TYPE i.
      DATA t54 TYPE i.
      t53 = 0.
      t54 = t52.
      DATA(t55) = VALUE i( ).
      DATA(t56) = VALUE i( ).
      DATA(t57) = VALUE string( ).
      WHILE t53 < t54.
        t56 = t53.
        t57 = t44+t56(1).
        DATA t58 TYPE c LENGTH 1.
        CLEAR t58.
        DATA(t59) = VALUE xstring( ).
        DATA t60 TYPE x LENGTH 1.
        CLEAR t60.
        DATA t61 TYPE x LENGTH 1.
        CLEAR t61.
        DATA(t62) = VALUE i( ).
        t58 = t57.
        t55 = cl_abap_conv_out_ce=>uccpi( t58 ).
        IF t55 >= 255.
          IF zlnt_builtin_code_1429134fdf5d IS NOT BOUND.
            zlnt_builtin_code_1429134fdf5d = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_1429134fdf5d->convert( EXPORTING data = t57 IMPORTING buffer = t59 ).
          t60 = t59(1).
          t61 = t59+1(1).
          t55 = t60.
          t62 = t61.
          t55 = t55 + t62 * 256.
        ENDIF.
        IF t55 = 9 OR t55 = 10 OR t55 = 11 OR t55 = 12 OR t55 = 13 OR t55 = 32 OR t55 = 160 OR t55 = 5760 OR t55 = 8232 OR t55 = 8233 OR t55 = 8239 OR t55 = 8287 OR t55 = 12288 OR t55 = 65279 OR t55 >= 8192 AND t55 <= 8202.
          t53 = t53 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t63) = VALUE i( ).
      DATA(t64) = VALUE i( ).
      DATA(t65) = VALUE string( ).
      WHILE t54 > t53.
        t64 = t54 - 1.
        t65 = t44+t64(1).
        DATA t66 TYPE c LENGTH 1.
        CLEAR t66.
        DATA(t67) = VALUE xstring( ).
        DATA t68 TYPE x LENGTH 1.
        CLEAR t68.
        DATA t69 TYPE x LENGTH 1.
        CLEAR t69.
        DATA(t70) = VALUE i( ).
        t66 = t65.
        t63 = cl_abap_conv_out_ce=>uccpi( t66 ).
        IF t63 >= 255.
          IF zlnt_builtin_code_1429134fdf5d IS NOT BOUND.
            zlnt_builtin_code_1429134fdf5d = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_1429134fdf5d->convert( EXPORTING data = t65 IMPORTING buffer = t67 ).
          t68 = t67(1).
          t69 = t67+1(1).
          t63 = t68.
          t70 = t69.
          t63 = t63 + t70 * 256.
        ENDIF.
        IF t63 = 9 OR t63 = 10 OR t63 = 11 OR t63 = 12 OR t63 = 13 OR t63 = 32 OR t63 = 160 OR t63 = 5760 OR t63 = 8232 OR t63 = 8233 OR t63 = 8239 OR t63 = 8287 OR t63 = 12288 OR t63 = 65279 OR t63 >= 8192 AND t63 <= 8202.
          t54 = t54 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t54 > t53.
        t52 = t54 - t53.
        t50 = t44+t53(t52).
      ELSE.
        CLEAR t50.
      ENDIF.
      DATA(t71) = |*|.
      DATA(t72) = strlen( t50 ).
      DATA t73 TYPE i.
      DATA(t74) = VALUE i( ).
      DATA(t75) = VALUE string( ).
      t73 = strlen( t71 ).
      IF t73 = 0.
        t49 = abap_true.
      ELSEIF t73 <= t72.
        t74 = 0.
        t75 = t50+t74(t73).
        IF t75 = t71.
          t49 = abap_true.
        ENDIF.
      ENDIF.
      t48 = t49.
      IF t49 = abap_false.
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE string( ).
        DATA(t79) = strlen( t44 ).
        DATA t80 TYPE i.
        DATA t81 TYPE i.
        t80 = 0.
        t81 = t79.
        DATA(t82) = VALUE i( ).
        DATA(t83) = VALUE i( ).
        DATA(t84) = VALUE string( ).
        WHILE t80 < t81.
          t83 = t80.
          t84 = t44+t83(1).
          DATA t85 TYPE c LENGTH 1.
          CLEAR t85.
          DATA(t86) = VALUE xstring( ).
          DATA t87 TYPE x LENGTH 1.
          CLEAR t87.
          DATA t88 TYPE x LENGTH 1.
          CLEAR t88.
          DATA(t89) = VALUE i( ).
          t85 = t84.
          t82 = cl_abap_conv_out_ce=>uccpi( t85 ).
          IF t82 >= 255.
            IF zlnt_builtin_code_1429134fdf5d IS NOT BOUND.
              zlnt_builtin_code_1429134fdf5d = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_1429134fdf5d->convert( EXPORTING data = t84 IMPORTING buffer = t86 ).
            t87 = t86(1).
            t88 = t86+1(1).
            t82 = t87.
            t89 = t88.
            t82 = t82 + t89 * 256.
          ENDIF.
          IF t82 = 9 OR t82 = 10 OR t82 = 11 OR t82 = 12 OR t82 = 13 OR t82 = 32 OR t82 = 160 OR t82 = 5760 OR t82 = 8232 OR t82 = 8233 OR t82 = 8239 OR t82 = 8287 OR t82 = 12288 OR t82 = 65279 OR t82 >= 8192 AND t82 <= 8202.
            t80 = t80 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t90) = VALUE i( ).
        DATA(t91) = VALUE i( ).
        DATA(t92) = VALUE string( ).
        WHILE t81 > t80.
          t91 = t81 - 1.
          t92 = t44+t91(1).
          DATA t93 TYPE c LENGTH 1.
          CLEAR t93.
          DATA(t94) = VALUE xstring( ).
          DATA t95 TYPE x LENGTH 1.
          CLEAR t95.
          DATA t96 TYPE x LENGTH 1.
          CLEAR t96.
          DATA(t97) = VALUE i( ).
          t93 = t92.
          t90 = cl_abap_conv_out_ce=>uccpi( t93 ).
          IF t90 >= 255.
            IF zlnt_builtin_code_1429134fdf5d IS NOT BOUND.
              zlnt_builtin_code_1429134fdf5d = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_1429134fdf5d->convert( EXPORTING data = t92 IMPORTING buffer = t94 ).
            t95 = t94(1).
            t96 = t94+1(1).
            t90 = t95.
            t97 = t96.
            t90 = t90 + t97 * 256.
          ENDIF.
          IF t90 = 9 OR t90 = 10 OR t90 = 11 OR t90 = 12 OR t90 = 13 OR t90 = 32 OR t90 = 160 OR t90 = 5760 OR t90 = 8232 OR t90 = 8233 OR t90 = 8239 OR t90 = 8287 OR t90 = 12288 OR t90 = 65279 OR t90 >= 8192 AND t90 <= 8202.
            t81 = t81 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t81 > t80.
          t79 = t81 - t80.
          t77 = t44+t80(t79).
        ELSE.
          CLEAR t77.
        ENDIF.
        DATA(t98) = |"|.
        DATA(t99) = strlen( t77 ).
        DATA t100 TYPE i.
        DATA(t101) = VALUE i( ).
        DATA(t102) = VALUE string( ).
        t100 = strlen( t98 ).
        IF t100 = 0.
          t76 = abap_true.
        ELSEIF t100 <= t99.
          t101 = 0.
          t102 = t77+t101(t100).
          IF t102 = t98.
            t76 = abap_true.
          ENDIF.
        ENDIF.
        t48 = t76.
      ENDIF.
      IF t48 = abap_true.
        DATA t104 TYPE f.
        t104 = t38.
        t36->load( ).
        APPEND t104 TO t36->items.
        t36->save( ).
      ENDIF.
      DATA(t108) = 1.
      t38 = t38 + t108.
    ENDDO.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t109 = t1->statements.
    DATA t115 TYPE i.
    DATA t117 TYPE i.
    t109->load( ).
    t117 = lines( t109->items ).
    DATA(t119) = 1.
    t115 = t117 - t119.
    DO.
      IF xsdbool( t115 >= 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t123 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t123.
      DATA t124 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t124.
      DATA(t126) = t115.
      t126 = t126 + 1.
      DATA t127 TYPE REF TO object.
      CLEAR t127.
      t109->load( ).
      CLEAR t127.
      READ TABLE t109->items INDEX t126 INTO t127.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      CLEAR t124.
      IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t128 ?= t127.
        DATA t129 TYPE REF TO object.
        t129 = t128->as_ref( ).
        t124 ?= t129.
      ELSE.
        t124 ?= t127.
      ENDIF.
      t123 = t124.
      DATA t130 TYPE abap_bool.
      DATA t131 TYPE abap_bool.
      DATA t132 TYPE REF TO zif_lnt_statement.
      t132 = t123->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t131 = xsdbool( t132 IS BOUND AND t132 IS INSTANCE OF zcl_lnt_st_comment ).
      t130 = t131.
      IF t131 = abap_true.
        DATA t137 TYPE f.
        DATA t138 TYPE f.
        DATA t147 TYPE REF TO zcl_lnt_position.
        t147 = t123->get_first_token( )->start.
        t138 = t147->row.
        DATA(t151) = CONV f( 1 ).
        t137 = t138 - t151.
        t130 = xsdbool( t36->includes( p0 = t137 ) = abap_false ).
      ENDIF.
      IF t130 = abap_true.
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = VALUE abap_bool( ).
        DATA t154 TYPE string.
        t154 = t123->get_first_token( )->str.
        DATA(t160) = |"#EC|.
        DATA(t161) = strlen( t154 ).
        DATA t162 TYPE i.
        DATA(t163) = VALUE i( ).
        DATA(t164) = VALUE string( ).
        t162 = strlen( t160 ).
        IF t162 = 0.
          t153 = abap_true.
        ELSEIF t162 <= t161.
          t163 = 0.
          t164 = t154+t163(t162).
          IF t164 = t160.
            t153 = abap_true.
          ENDIF.
        ENDIF.
        t152 = t153.
        IF t153 = abap_false.
          DATA(t165) = VALUE abap_bool( ).
          DATA t166 TYPE string.
          t166 = t123->get_first_token( )->str.
          DATA(t172) = |"##|.
          DATA(t173) = strlen( t166 ).
          DATA t174 TYPE i.
          DATA(t175) = VALUE i( ).
          DATA(t176) = VALUE string( ).
          t174 = strlen( t172 ).
          IF t174 = 0.
            t165 = abap_true.
          ELSEIF t174 <= t173.
            t175 = 0.
            t176 = t166+t175(t174).
            IF t176 = t172.
              t165 = abap_true.
            ENDIF.
          ENDIF.
          t152 = t165.
        ENDIF.
        IF t152 = abap_true.
          DATA(t179) = 1.
          t115 = t115 - t179.
          CONTINUE.
        ENDIF.
        DATA t181 TYPE REF TO zcl_lnt_issue.
        CLEAR t181.
        DATA(t184) = VALUE string( ).
        IF xsdbool( 0 = 0 ) = abap_true.
          DATA(t188) = |Do not use end of line comments - move comment to previous r|.
          t188 = t188 && |ow instead|.
          t184 = t188.
        ELSE.
          t184 = ||.
        ENDIF.
        DATA(t190) = VALUE string( ).
        DATA t191 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        DATA(t201) = |\nDetects end of line comments. Comments starting with "#EC" |.
        t201 = t201 && |or "##" are ignored\n\nhttps://github.com/SAP/styleguides/blob|.
        t201 = t201 && |/main/clean-abap/CleanABAP.md#put-comments-before-the-statem|.
        t201 = t201 && |ent-they-relate-to|.
        DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t202->has = abap_true.
        t202->value = t201.
        t198 = t202.
        DATA t204 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t204.
        DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t208.
        t208->load( ).
        APPEND |Styleguide| TO t208->items.
        t208->save( ).
        t208->load( ).
        APPEND |SingleFile| TO t208->items.
        t208->save( ).
        t204 = t208.
        DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t216.
        DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t220->has = abap_true.
        t220->value = |WRITE 2. " descriptive comment|.
        t216 = t220.
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t222.
        DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t226->has = abap_true.
        t226->value = |" descriptive comment\nWRITE 2.|.
        t222 = t226.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        t191 = NEW zcl_lnt_irule_metadata( i_key = |check_comments| i_title = |Check Comments| i_short_description = |\nVarious checks for comment usage.| i_bad_example = t216 i_good_example = t222 i_extended_information = t198 i_tags = t204 i_pragma = t228 i_pseudo_comment = t230 ).
        CREATE OBJECT t191->zlnt_view_ownkeys_b0e8086400eb.
        t191->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t232 ).
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t233 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t234 ).
        ENDIF.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t235.
        IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t235 ).
        ENDIF.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t236 ).
        ENDIF.
        DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t237.
        IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t237 ).
        ENDIF.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t238 ).
        ENDIF.
        CREATE OBJECT t191->zlnt_json_ownkeys_70e5fd461788.
        t191->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t240 ).
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t242 ).
        ENDIF.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t244 ).
        ENDIF.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t246 ).
        ENDIF.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t248 ).
        ENDIF.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t250 ).
        ENDIF.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t252 ).
        ENDIF.
        t190 = t191->key.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t253 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t255 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t256.
        t181 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t123 i_message_26cb = t184 i_key = t190 i_severity = t253 i_fix = t255 i_alternative_fixes = t256 ).
        t2->load( ).
        APPEND t181 TO t2->items.
        t2->save( ).
        DATA t258 TYPE f.
        t2->load( ).
        t258 = lines( t2->items ).
        IF t16->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF xsdbool( t258 >= t16->value ) = abap_true.
          EXIT.
        ENDIF.
      ENDIF.
      DATA(t265) = 1.
      t115 = t115 - t265.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_check_comments_conf( me->gt_cn_in_sr_rl_ch_cm_ts_ch_cmm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_check_comments_conf( me->gt_cn_in_sr_rl_ch_cm_ts_ch_cmm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_check_comments_conf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_check_comments_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_cm_ts_ch_cmm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ch_cm_ts_ch_cmm( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1436_a954f677b322.
  ENDMETHOD.
ENDCLASS.
