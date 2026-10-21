* TS: src/rules/exit_or_check.ts:15:1 ExitOrCheck
CLASS zcl_lnt_exit_or_check DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_exit_or_check_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_ex_or_ch_ts_ex_or_ch RETURNING VALUE(result) TYPE REF TO zcl_lnt_exit_or_check_conf.
    METHODS s_c_i_s_r_ex_or_ch_ts_ex_or_ch IMPORTING i_conf TYPE REF TO zcl_lnt_exit_or_check_conf.
    METHODS r_p_i_s_r_ex_or_ch_ts_ex_or_ch IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_438f0e5e4132 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_exit_or_check IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_exit_or_check_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Detects usages of EXIT or CHECK statements outside of loops.|.
    t7 = t7 && |\nUse RETURN to leave procesing blocks instead.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t11 = t11 && |-US/abenleave_processing_blocks.html\nhttps://help.sap.com/do|.
    t11 = t11 && |c/abapdocu_latest_index_htm/latest/en-US/abapcheck_processin|.
    t11 = t11 && |g_blocks.html\nhttps://github.com/SAP/styleguides/blob/main/c|.
    t11 = t11 && |lean-abap/CleanABAP.md#check-vs-return|.
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
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |CHECK is_valid = abap_true.\ndo_something( ).|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |IF is_valid = abap_false.\n  RETURN.\nENDIF.\ndo_something( ).|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |exit_or_check| i_title = |Find EXIT or CHECK outside loops| i_short_description = t6 i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_ex_or_ch_ts_ex_or_ch.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ex_or_ch_ts_ex_or_ch.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ex_or_ch_ts_ex_or_ch.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->statements.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA t12 TYPE REF TO object.
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
      t16 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      t23 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_loop ).
      t22 = t23.
      IF t23 = abap_false.
        t22 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_while ).
      ENDIF.
      t21 = t22.
      IF t22 = abap_false.
        t21 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_loop_at_screen ).
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        t20 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_select_loop ).
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        t19 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_do ).
      ENDIF.
      IF t19 = abap_true.
        t4->load( ).
        APPEND t11 TO t4->items.
        t4->save( ).
      ELSE.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE abap_bool.
        t38 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_loop ).
        t37 = t38.
        IF t38 = abap_false.
          t37 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_while ).
        ENDIF.
        t36 = t37.
        IF t37 = abap_false.
          t36 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_select ).
        ENDIF.
        t35 = t36.
        IF t36 = abap_false.
          t35 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_do ).
        ENDIF.
        IF t35 = abap_true.
          DATA t46 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t46.
          DATA t48 TYPE REF TO object.
          t48 = t4->pop( ).
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          CLEAR t46.
          IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t49 ?= t48.
            DATA t50 TYPE REF TO object.
            t50 = t49->as_ref( ).
            t46 ?= t50.
          ELSE.
            t46 ?= t48.
          ENDIF.
        ELSE.
          DATA(t51) = VALUE abap_bool( ).
          DATA t52 TYPE abap_bool.
          DATA t53 TYPE abap_bool.
          DATA t54 TYPE abap_bool.
          t54 = me->conf->zlnt_view_read_sr_265ef3eb9a19( ).
          t53 = xsdbool( t54 = abap_false ).
          t52 = t53.
          IF t53 = abap_true.
            t52 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_check ).
          ENDIF.
          t51 = t52.
          IF t52 = abap_true.
            t4->load( ).
            t51 = xsdbool( lines( t4->items ) = 0 ).
          ENDIF.
          IF t51 = abap_true.
            DATA t65 TYPE string.
            t65 = t11->concat_tokens( ).
            DATA(t69) = t65.
            DATA t70 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CREATE OBJECT t70 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^check | flags = |i|.
            DATA(t74) = strlen( t69 ).
            t65 = t70->replace( p0 = t69 p1 = |CHECK | ).
            DATA(t75) = VALUE string( ).
            DATA(t76) = VALUE string( ).
            DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t78) = t65.
            DATA(t79) = |CHECK|.
            DATA(t80) = strlen( t78 ).
            DATA t81 TYPE i.
            DATA(t82) = VALUE i( ).
            DATA(t83) = VALUE i( ).
            DATA t84 TYPE i.
            DATA(t85) = VALUE string( ).
            CREATE OBJECT t77.
            t84 = strlen( t79 ).
            t81 = 0.
            IF t84 = 0.
              WHILE t81 < t80.
                t85 = t78+t81(1).
                APPEND t85 TO t77->items.
                t81 = t81 + 1.
              ENDWHILE.
            ELSE.
              WHILE t81 <= t80.
                FIND FIRST OCCURRENCE OF t79 IN SECTION OFFSET t81 OF t78 MATCH OFFSET t82.
                IF sy-subrc = 0.
                  t83 = t82 - t81.
                ELSE.
                  t82 = -1.
                  t83 = t80 - t81.
                ENDIF.
                CLEAR t85.
                IF t83 > 0.
                  t85 = t78+t81(t83).
                ENDIF.
                APPEND t85 TO t77->items.
                IF t82 < 0.
                  EXIT.
                ENDIF.
                t81 = t82 + t84.
              ENDWHILE.
            ENDIF.
            IF t77->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t77->load( ).
            READ TABLE t77->items INDEX 2 INTO t76.
            DATA(t86) = strlen( t76 ).
            DATA t87 TYPE i.
            DATA t88 TYPE i.
            t87 = 0.
            t88 = t86.
            DATA(t89) = VALUE i( ).
            DATA(t90) = VALUE i( ).
            DATA(t91) = VALUE string( ).
            WHILE t87 < t88.
              t90 = t87.
              t91 = t76+t90(1).
              DATA t92 TYPE c LENGTH 1.
              CLEAR t92.
              DATA(t93) = VALUE xstring( ).
              DATA t94 TYPE x LENGTH 1.
              CLEAR t94.
              DATA t95 TYPE x LENGTH 1.
              CLEAR t95.
              DATA(t96) = VALUE i( ).
              t92 = t91.
              t89 = cl_abap_conv_out_ce=>uccpi( t92 ).
              IF t89 >= 255.
                IF zlnt_builtin_code_438f0e5e4132 IS NOT BOUND.
                  zlnt_builtin_code_438f0e5e4132 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                ENDIF.
                zlnt_builtin_code_438f0e5e4132->convert( EXPORTING data = t91 IMPORTING buffer = t93 ).
                t94 = t93(1).
                t95 = t93+1(1).
                t89 = t94.
                t96 = t95.
                t89 = t89 + t96 * 256.
              ENDIF.
              IF t89 = 9 OR t89 = 10 OR t89 = 11 OR t89 = 12 OR t89 = 13 OR t89 = 32 OR t89 = 160 OR t89 = 5760 OR t89 = 8232 OR t89 = 8233 OR t89 = 8239 OR t89 = 8287 OR t89 = 12288 OR t89 = 65279 OR t89 >= 8192 AND t89 <= 8202.
                t87 = t87 + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            DATA(t97) = VALUE i( ).
            DATA(t98) = VALUE i( ).
            DATA(t99) = VALUE string( ).
            WHILE t88 > t87.
              t98 = t88 - 1.
              t99 = t76+t98(1).
              DATA t100 TYPE c LENGTH 1.
              CLEAR t100.
              DATA(t101) = VALUE xstring( ).
              DATA t102 TYPE x LENGTH 1.
              CLEAR t102.
              DATA t103 TYPE x LENGTH 1.
              CLEAR t103.
              DATA(t104) = VALUE i( ).
              t100 = t99.
              t97 = cl_abap_conv_out_ce=>uccpi( t100 ).
              IF t97 >= 255.
                IF zlnt_builtin_code_438f0e5e4132 IS NOT BOUND.
                  zlnt_builtin_code_438f0e5e4132 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                ENDIF.
                zlnt_builtin_code_438f0e5e4132->convert( EXPORTING data = t99 IMPORTING buffer = t101 ).
                t102 = t101(1).
                t103 = t101+1(1).
                t97 = t102.
                t104 = t103.
                t97 = t97 + t104 * 256.
              ENDIF.
              IF t97 = 9 OR t97 = 10 OR t97 = 11 OR t97 = 12 OR t97 = 13 OR t97 = 32 OR t97 = 160 OR t97 = 5760 OR t97 = 8232 OR t97 = 8233 OR t97 = 8239 OR t97 = 8287 OR t97 = 12288 OR t97 = 65279 OR t97 >= 8192 AND t97 <= 8202.
                t88 = t88 - 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            IF t88 > t87.
              t86 = t88 - t87.
              t75 = t76+t87(t86).
            ELSE.
              CLEAR t75.
            ENDIF.
            t65 = t75.
            DATA t106 TYPE string.
            DATA t107 TYPE string.
            DATA(t108) = |IF NOT |.
            DATA(t110) = strlen( t108 ).
            t107 = |{ t108 }{ t65 }|.
            DATA(t112) = strlen( t107 ).
            t106 = |{ t107 }{ |\n  RETURN.\nENDIF.| }|.
            DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t116 TYPE REF TO zcl_lnt_position.
            t116 = t11->get_first_token( )->start.
            DATA t123 TYPE REF TO zcl_lnt_abstract_token.
            t123 = t11->get_last_token( ).
            DATA t127 TYPE f.
            t127 = t123->start->row.
            DATA t134 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t134 = t123->start->col.
            DATA t140 TYPE f.
            t140 = strlen( t123->str ).
            DATA(t145) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t145->has = abap_true.
            t145->value = t140.
            t114 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t116 i_end = NEW zcl_lnt_position( i_row = t127 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t134 right = t145 op = `+` ) ) i_text = t106 ).
            DATA t148 TYPE REF TO zcl_lnt_issue.
            CLEAR t148.
            DATA(t152) = VALUE string( ).
            DATA t153 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t158 TYPE string.
            DATA(t159) = |Detects usages of EXIT or CHECK statements outside of loops.|.
            t159 = t159 && |\nUse RETURN to leave procesing blocks instead.|.
            t158 = t159.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            DATA(t163) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
            t163 = t163 && |-US/abenleave_processing_blocks.html\nhttps://help.sap.com/do|.
            t163 = t163 && |c/abapdocu_latest_index_htm/latest/en-US/abapcheck_processin|.
            t163 = t163 && |g_blocks.html\nhttps://github.com/SAP/styleguides/blob/main/c|.
            t163 = t163 && |lean-abap/CleanABAP.md#check-vs-return|.
            DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t164->has = abap_true.
            t164->value = t163.
            t160 = t164.
            DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t166.
            DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t170.
            t170->load( ).
            APPEND |Styleguide| TO t170->items.
            t170->save( ).
            t170->load( ).
            APPEND |SingleFile| TO t170->items.
            t170->save( ).
            t170->load( ).
            APPEND |Quickfix| TO t170->items.
            t170->save( ).
            t166 = t170.
            DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t180.
            DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t184->has = abap_true.
            t184->value = |CHECK is_valid = abap_true.\ndo_something( ).|.
            t180 = t184.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t190->has = abap_true.
            t190->value = |IF is_valid = abap_false.\n  RETURN.\nENDIF.\ndo_something( ).|.
            t186 = t190.
            DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t192.
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t194.
            t153 = NEW zcl_lnt_irule_metadata( i_key = |exit_or_check| i_title = |Find EXIT or CHECK outside loops| i_short_description = t158 i_bad_example = t180 i_good_example = t186 i_extended_information = t160 i_tags = t166 i_pragma = t192 i_pseudo_comment = t194 ).
            CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
            t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t196.
            t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t196 ).
            DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t197.
            IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t197 ).
            ENDIF.
            DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t198.
            IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t198 ).
            ENDIF.
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t199 ).
            ENDIF.
            DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t200.
            IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t200 ).
            ENDIF.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t201 ).
            ENDIF.
            DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t202.
            IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t202 ).
            ENDIF.
            CREATE OBJECT t153->zlnt_json_ownkeys_70e5fd461788.
            t153->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t204 ).
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t206 ).
            ENDIF.
            DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t208.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t208 ).
            ENDIF.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t210 ).
            ENDIF.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t212 ).
            ENDIF.
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t214.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t214 ).
            ENDIF.
            DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t216.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t216 ).
            ENDIF.
            t152 = t153->key.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t217 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t219 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t219.
            t219 = t114.
            DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t223.
            t148 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t11 i_message_26cb = |CHECK is not allowed outside of loops| i_key = t152 i_severity = t217 i_fix = t219 i_alternative_fixes = t223 ).
            t2->load( ).
            APPEND t148 TO t2->items.
            t2->save( ).
          ELSE.
            DATA(t226) = VALUE abap_bool( ).
            DATA t227 TYPE abap_bool.
            DATA t228 TYPE abap_bool.
            DATA t229 TYPE abap_bool.
            t229 = me->conf->zlnt_view_read_sr_969b304ae6d2( ).
            t228 = xsdbool( t229 = abap_false ).
            t227 = t228.
            IF t228 = abap_true.
              t227 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_exit ).
            ENDIF.
            t226 = t227.
            IF t227 = abap_true.
              t4->load( ).
              t226 = xsdbool( lines( t4->items ) = 0 ).
            ENDIF.
            IF t226 = abap_true.
              DATA t241 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t241 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t11->get_first_token( ) i_text = |RETURN| ).
              DATA t247 TYPE REF TO zcl_lnt_issue.
              CLEAR t247.
              DATA(t251) = VALUE string( ).
              DATA t252 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t257 TYPE string.
              DATA(t258) = |Detects usages of EXIT or CHECK statements outside of loops.|.
              t258 = t258 && |\nUse RETURN to leave procesing blocks instead.|.
              t257 = t258.
              DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t259.
              DATA(t262) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
              t262 = t262 && |-US/abenleave_processing_blocks.html\nhttps://help.sap.com/do|.
              t262 = t262 && |c/abapdocu_latest_index_htm/latest/en-US/abapcheck_processin|.
              t262 = t262 && |g_blocks.html\nhttps://github.com/SAP/styleguides/blob/main/c|.
              t262 = t262 && |lean-abap/CleanABAP.md#check-vs-return|.
              DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t263->has = abap_true.
              t263->value = t262.
              t259 = t263.
              DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t265.
              DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t269.
              t269->load( ).
              APPEND |Styleguide| TO t269->items.
              t269->save( ).
              t269->load( ).
              APPEND |SingleFile| TO t269->items.
              t269->save( ).
              t269->load( ).
              APPEND |Quickfix| TO t269->items.
              t269->save( ).
              t265 = t269.
              DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t279.
              DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t283->has = abap_true.
              t283->value = |CHECK is_valid = abap_true.\ndo_something( ).|.
              t279 = t283.
              DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t285.
              DATA(t289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t289->has = abap_true.
              t289->value = |IF is_valid = abap_false.\n  RETURN.\nENDIF.\ndo_something( ).|.
              t285 = t289.
              DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t291.
              DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t293.
              t252 = NEW zcl_lnt_irule_metadata( i_key = |exit_or_check| i_title = |Find EXIT or CHECK outside loops| i_short_description = t257 i_bad_example = t279 i_good_example = t285 i_extended_information = t259 i_tags = t265 i_pragma = t291 i_pseudo_comment = t293 ).
              CREATE OBJECT t252->zlnt_view_ownkeys_b0e8086400eb.
              t252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t295.
              t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t295 ).
              DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t296.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t296 ).
              ENDIF.
              DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t297.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t297 ).
              ENDIF.
              DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t298.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t298 ).
              ENDIF.
              DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t299.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t299 ).
              ENDIF.
              DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t300.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t300 ).
              ENDIF.
              DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t301.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t301 ).
              ENDIF.
              CREATE OBJECT t252->zlnt_json_ownkeys_70e5fd461788.
              t252->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t303.
              t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t303 ).
              DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t305.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t305 ).
              ENDIF.
              DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t307.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t307 ).
              ENDIF.
              DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t309.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t309 ).
              ENDIF.
              DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t311.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t311 ).
              ENDIF.
              DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t313.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t313 ).
              ENDIF.
              DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t315.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t315 ).
              ENDIF.
              t251 = t252->key.
              DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t316 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t318.
              t318 = t241.
              DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t322.
              t247 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t11 i_message_26cb = |EXIT is not allowed outside of loops| i_key = t251 i_severity = t316 i_fix = t318 i_alternative_fixes = t322 ).
              t2->load( ).
              APPEND t247 TO t2->items.
              t2->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_exit_or_check_conf( me->g_c_i_s_r_ex_or_ch_ts_ex_or_ch( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_exit_or_check_conf( me->g_c_i_s_r_ex_or_ch_ts_ex_or_ch( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_exit_or_check_conf.
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
        t1 = NEW zcl_lnt_exit_or_check_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ex_or_ch_ts_ex_or_ch( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ex_or_ch_ts_ex_or_ch( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1498_9572af21b869.
  ENDMETHOD.
ENDCLASS.
