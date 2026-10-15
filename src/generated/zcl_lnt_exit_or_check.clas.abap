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
    DATA(t1) = NEW zcl_lnt_exit_or_check_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |exit_or_check|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Find EXIT or CHECK outside loops|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects usages of EXIT or CHECK statements outside of loops.|.
    t7 = t7 && |\nUse RETURN to leave procesing blocks instead.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t11 = t11 && |-US/abenleave_processing_blocks.html\nhttps://help.sap.com/do|.
      t11 = t11 && |c/abapdocu_latest_index_htm/latest/en-US/abapcheck_processin|.
      t11 = t11 && |g_blocks.html\nhttps://github.com/SAP/styleguides/blob/main/c|.
      t11 = t11 && |lean-abap/CleanABAP.md#check-vs-return|.
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
      DATA(t25) = |Quickfix|.
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
      DATA(t31) = |CHECK is_valid = abap_true.\ndo_something( ).|.
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
      DATA(t37) = |IF is_valid = abap_false.\n  RETURN.\nENDIF.\ndo_something( ).|.
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

  METHOD g_c_i_s_r_ex_or_ch_ts_ex_or_ch.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_ex_or_ch_ts_ex_or_ch.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ex_or_ch_ts_ex_or_ch.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
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
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      DATA(t24) = t16.
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_loop ).
      t22 = t23.
      IF t23 = abap_false.
        DATA t25 TYPE abap_bool.
        DATA(t26) = t16.
        t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_while ).
        t22 = t25.
      ENDIF.
      t21 = t22.
      IF t22 = abap_false.
        DATA t27 TYPE abap_bool.
        DATA(t28) = t16.
        t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_loop_at_screen ).
        t21 = t27.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t29 TYPE abap_bool.
        DATA(t30) = t16.
        t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t20 = t29.
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t16.
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_do ).
        t19 = t31.
      ENDIF.
      IF t19 = abap_true.
        DATA(t33) = t4.
        DATA(t34) = t11.
        t33->load( ).
        APPEND t34 TO t33->items.
        t33->save( ).
      ELSE.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE abap_bool.
        DATA(t39) = t16.
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_end_loop ).
        t37 = t38.
        IF t38 = abap_false.
          DATA t40 TYPE abap_bool.
          DATA(t41) = t16.
          t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_end_while ).
          t37 = t40.
        ENDIF.
        t36 = t37.
        IF t37 = abap_false.
          DATA t42 TYPE abap_bool.
          DATA(t43) = t16.
          t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_end_select ).
          t36 = t42.
        ENDIF.
        t35 = t36.
        IF t36 = abap_false.
          DATA t44 TYPE abap_bool.
          DATA(t45) = t16.
          t44 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_end_do ).
          t35 = t44.
        ENDIF.
        IF t35 = abap_true.
          DATA t46 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t46.
          DATA(t47) = t4.
          DATA t48 TYPE REF TO object.
          t48 = t47->pop( ).
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
          DATA(t55) = me->conf.
          t54 = t55->zlnt_view_read_sr_265ef3eb9a19( ).
          DATA(t56) = abap_false.
          t53 = xsdbool( t54 = t56 ).
          t52 = t53.
          IF t53 = abap_true.
            DATA t57 TYPE abap_bool.
            DATA(t58) = t16.
            t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_st_check ).
            t52 = t57.
          ENDIF.
          t51 = t52.
          IF t52 = abap_true.
            DATA t59 TYPE abap_bool.
            DATA t60 TYPE i.
            DATA(t61) = t4.
            t61->load( ).
            t60 = lines( t61->items ).
            DATA(t62) = 0.
            t59 = xsdbool( t60 = t62 ).
            t51 = t59.
          ENDIF.
          IF t51 = abap_true.
            DATA t63 TYPE string.
            DATA(t64) = |CHECK is not allowed outside of loops|.
            t63 = t64.
            DATA t65 TYPE string.
            DATA t66 TYPE string.
            DATA(t67) = t11.
            t66 = t67->concat_tokens( ).
            t65 = t66.
            DATA t68 TYPE string.
            DATA(t69) = t65.
            DATA t70 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t70.
            DATA(t71) = |^check |.
            DATA(t72) = |i|.
            CREATE OBJECT t70 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t71 flags = t72.
            DATA(t73) = |CHECK |.
            DATA(t74) = strlen( t69 ).
            t68 = t70->replace( p0 = t69 p1 = t73 ).
            t65 = t68.
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
            CLEAR t76.
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
            DATA t105 TYPE string.
            DATA t106 TYPE string.
            DATA t107 TYPE string.
            DATA(t108) = |IF NOT |.
            DATA(t109) = t65.
            DATA(t110) = strlen( t108 ).
            t107 = |{ t108 }{ t109 }|.
            DATA(t111) = |\n  RETURN.\nENDIF.|.
            DATA(t112) = strlen( t107 ).
            t106 = |{ t107 }{ t111 }|.
            t105 = t106.
            DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t115) = t1.
            DATA t116 TYPE REF TO zcl_lnt_position.
            DATA t117 TYPE REF TO zcl_lnt_abstract_token.
            DATA t118 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t119) = t11.
            t118 = t119->get_first_token( ).
            t117 = t118.
            DATA t120 TYPE REF TO zcl_lnt_position.
            DATA(t121) = t117.
            t120 = t121->start.
            t116 = t120.
            DATA t122 TYPE REF TO zcl_lnt_position.
            DATA t123 TYPE REF TO zcl_lnt_abstract_token.
            DATA t124 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t125) = t11.
            t124 = t125->get_last_token( ).
            t123 = t124.
            DATA t126 TYPE REF TO zcl_lnt_position.
            DATA t127 TYPE f.
            DATA t128 TYPE REF TO zcl_lnt_position.
            DATA t129 TYPE REF TO zcl_lnt_position.
            DATA(t130) = t123.
            t129 = t130->start.
            t128 = t129.
            DATA t131 TYPE f.
            DATA(t132) = t128.
            t131 = t132->row.
            t127 = t131.
            DATA t133 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t134 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t135 TYPE REF TO zcl_lnt_position.
            DATA t136 TYPE REF TO zcl_lnt_position.
            DATA(t137) = t123.
            t136 = t137->start.
            t135 = t136.
            DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t139) = t135.
            t138 = t139->col.
            t134 = t138.
            DATA t140 TYPE f.
            DATA t141 TYPE i.
            DATA t142 TYPE string.
            DATA(t143) = t123.
            t142 = t143->str.
            DATA(t144) = strlen( t142 ).
            t141 = t144.
            t140 = t141.
            DATA(t145) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t145->has = abap_true.
            t145->value = t140.
            t133 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t134 right = t145 op = `+` ).
            t126 = NEW zcl_lnt_position( i_row = t127 i_col = t133 ).
            t122 = t126.
            DATA(t146) = t105.
            t114 = zcl_lnt_edit_helper=>replace_range( i_file = t115 i_start = t116 i_end = t122 i_text = t146 ).
            t113 = t114.
            DATA t147 TYPE REF TO zcl_lnt_issue.
            CLEAR t147.
            DATA t148 TYPE REF TO zcl_lnt_issue.
            CLEAR t148.
            DATA(t149) = t1.
            DATA(t150) = t11.
            DATA(t151) = t63.
            DATA(t152) = VALUE string( ).
            DATA t153 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t153.
            DATA t154 TYPE string.
            DATA(t155) = |exit_or_check|.
            t154 = t155.
            DATA t156 TYPE string.
            DATA(t157) = |Find EXIT or CHECK outside loops|.
            t156 = t157.
            DATA t158 TYPE string.
            DATA(t159) = |Detects usages of EXIT or CHECK statements outside of loops.|.
            t159 = t159 && |\nUse RETURN to leave procesing blocks instead.|.
            t158 = t159.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t161.
            DATA(t162) = abap_true.
            IF t162 = abap_true.
              DATA(t163) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
              t163 = t163 && |-US/abenleave_processing_blocks.html\nhttps://help.sap.com/do|.
              t163 = t163 && |c/abapdocu_latest_index_htm/latest/en-US/abapcheck_processin|.
              t163 = t163 && |g_blocks.html\nhttps://github.com/SAP/styleguides/blob/main/c|.
              t163 = t163 && |lean-abap/CleanABAP.md#check-vs-return|.
              DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t164->has = abap_true.
              t164->value = t163.
              t161 = t164.
            ELSE.
              DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t165.
              t161 = t165.
            ENDIF.
            t160 = t161.
            DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t166.
            DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t167.
            DATA(t168) = abap_true.
            IF t168 = abap_true.
              DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t171.
              t170 = t171.
              DATA(t172) = t170.
              DATA(t173) = |Styleguide|.
              t172->load( ).
              APPEND t173 TO t172->items.
              t172->save( ).
              DATA(t174) = t170.
              DATA(t175) = |SingleFile|.
              t174->load( ).
              APPEND t175 TO t174->items.
              t174->save( ).
              DATA(t176) = t170.
              DATA(t177) = |Quickfix|.
              t176->load( ).
              APPEND t177 TO t176->items.
              t176->save( ).
              DATA(t178) = t170.
              t169 = t178.
              t167 = t169.
            ELSE.
              DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t179.
              t167 = t179.
            ENDIF.
            t166 = t167.
            DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t180.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t181.
            DATA(t182) = abap_true.
            IF t182 = abap_true.
              DATA(t183) = |CHECK is_valid = abap_true.\ndo_something( ).|.
              DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t184->has = abap_true.
              t184->value = t183.
              t181 = t184.
            ELSE.
              DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t185.
              t181 = t185.
            ENDIF.
            t180 = t181.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t186.
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t187.
            DATA(t188) = abap_true.
            IF t188 = abap_true.
              DATA(t189) = |IF is_valid = abap_false.\n  RETURN.\nENDIF.\ndo_something( ).|.
              DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t190->has = abap_true.
              t190->value = t189.
              t187 = t190.
            ELSE.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              t187 = t191.
            ENDIF.
            t186 = t187.
            DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t193.
            t192 = t193.
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t195.
            t194 = t195.
            t153 = NEW zcl_lnt_irule_metadata( i_key = t154 i_title = t156 i_short_description = t158 i_bad_example = t180 i_good_example = t186 i_extended_information = t160 i_tags = t166 i_pragma = t192 i_pseudo_comment = t194 ).
            CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
            t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t196.
            IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t196 ).
            ENDIF.
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
            DATA(t203) = |key|.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
            ENDIF.
            DATA(t205) = |title|.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
            ENDIF.
            DATA(t207) = |shortDescription|.
            DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t208.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
            ENDIF.
            DATA(t209) = |extendedInformation|.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
            ENDIF.
            DATA(t211) = |tags|.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
            ENDIF.
            DATA(t213) = |badExample|.
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t214.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t213 p1 = t214 ).
            ENDIF.
            DATA(t215) = |goodExample|.
            DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t216.
            IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
            ENDIF.
            t152 = t153->key.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t218) = me->conf.
            t217 = t218->zlnt_view_read_sr_15c06369f827( ).
            DATA t219 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t219.
            DATA(t220) = abap_true.
            IF t220 = abap_true.
              DATA(t221) = t113.
              t219 = t221.
            ELSE.
              DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t222.
              t219 = t222.
            ENDIF.
            DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t223.
            t148 = zcl_lnt_issue=>at_statement( i_file = t149 i_statement = t150 i_message_26cb = t151 i_key = t152 i_severity = t217 i_fix = t219 i_alternative_fixes = t223 ).
            t147 = t148.
            DATA(t224) = t2.
            DATA(t225) = t147.
            t224->load( ).
            APPEND t225 TO t224->items.
            t224->save( ).
          ELSE.
            DATA(t226) = VALUE abap_bool( ).
            DATA t227 TYPE abap_bool.
            DATA t228 TYPE abap_bool.
            DATA t229 TYPE abap_bool.
            DATA(t230) = me->conf.
            t229 = t230->zlnt_view_read_sr_969b304ae6d2( ).
            DATA(t231) = abap_false.
            t228 = xsdbool( t229 = t231 ).
            t227 = t228.
            IF t228 = abap_true.
              DATA t232 TYPE abap_bool.
              DATA(t233) = t16.
              t232 = xsdbool( t233 IS BOUND AND t233 IS INSTANCE OF zcl_lnt_exit ).
              t227 = t232.
            ENDIF.
            t226 = t227.
            IF t227 = abap_true.
              DATA t234 TYPE abap_bool.
              DATA t235 TYPE i.
              DATA(t236) = t4.
              t236->load( ).
              t235 = lines( t236->items ).
              DATA(t237) = 0.
              t234 = xsdbool( t235 = t237 ).
              t226 = t234.
            ENDIF.
            IF t226 = abap_true.
              DATA t238 TYPE string.
              DATA(t239) = |EXIT is not allowed outside of loops|.
              t238 = t239.
              DATA t240 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              DATA t241 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              DATA(t242) = t1.
              DATA t243 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t244) = t11.
              t243 = t244->get_first_token( ).
              DATA(t245) = |RETURN|.
              t241 = zcl_lnt_edit_helper=>replace_token( i_file = t242 i_token = t243 i_text = t245 ).
              t240 = t241.
              DATA t246 TYPE REF TO zcl_lnt_issue.
              CLEAR t246.
              DATA t247 TYPE REF TO zcl_lnt_issue.
              CLEAR t247.
              DATA(t248) = t1.
              DATA(t249) = t11.
              DATA(t250) = t238.
              DATA(t251) = VALUE string( ).
              DATA t252 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t252.
              DATA t253 TYPE string.
              DATA(t254) = |exit_or_check|.
              t253 = t254.
              DATA t255 TYPE string.
              DATA(t256) = |Find EXIT or CHECK outside loops|.
              t255 = t256.
              DATA t257 TYPE string.
              DATA(t258) = |Detects usages of EXIT or CHECK statements outside of loops.|.
              t258 = t258 && |\nUse RETURN to leave procesing blocks instead.|.
              t257 = t258.
              DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t259.
              DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t260.
              DATA(t261) = abap_true.
              IF t261 = abap_true.
                DATA(t262) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
                t262 = t262 && |-US/abenleave_processing_blocks.html\nhttps://help.sap.com/do|.
                t262 = t262 && |c/abapdocu_latest_index_htm/latest/en-US/abapcheck_processin|.
                t262 = t262 && |g_blocks.html\nhttps://github.com/SAP/styleguides/blob/main/c|.
                t262 = t262 && |lean-abap/CleanABAP.md#check-vs-return|.
                DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t263->has = abap_true.
                t263->value = t262.
                t260 = t263.
              ELSE.
                DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t264.
                t260 = t264.
              ENDIF.
              t259 = t260.
              DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t265.
              DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t266.
              DATA(t267) = abap_true.
              IF t267 = abap_true.
                DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t270 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t270.
                t269 = t270.
                DATA(t271) = t269.
                DATA(t272) = |Styleguide|.
                t271->load( ).
                APPEND t272 TO t271->items.
                t271->save( ).
                DATA(t273) = t269.
                DATA(t274) = |SingleFile|.
                t273->load( ).
                APPEND t274 TO t273->items.
                t273->save( ).
                DATA(t275) = t269.
                DATA(t276) = |Quickfix|.
                t275->load( ).
                APPEND t276 TO t275->items.
                t275->save( ).
                DATA(t277) = t269.
                t268 = t277.
                t266 = t268.
              ELSE.
                DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t278.
                t266 = t278.
              ENDIF.
              t265 = t266.
              DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t279.
              DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t280.
              DATA(t281) = abap_true.
              IF t281 = abap_true.
                DATA(t282) = |CHECK is_valid = abap_true.\ndo_something( ).|.
                DATA(t283) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t283->has = abap_true.
                t283->value = t282.
                t280 = t283.
              ELSE.
                DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t284.
                t280 = t284.
              ENDIF.
              t279 = t280.
              DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t285.
              DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t286.
              DATA(t287) = abap_true.
              IF t287 = abap_true.
                DATA(t288) = |IF is_valid = abap_false.\n  RETURN.\nENDIF.\ndo_something( ).|.
                DATA(t289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t289->has = abap_true.
                t289->value = t288.
                t286 = t289.
              ELSE.
                DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t290.
                t286 = t290.
              ENDIF.
              t285 = t286.
              DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t292.
              t291 = t292.
              DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t294.
              t293 = t294.
              t252 = NEW zcl_lnt_irule_metadata( i_key = t253 i_title = t255 i_short_description = t257 i_bad_example = t279 i_good_example = t285 i_extended_information = t259 i_tags = t265 i_pragma = t291 i_pseudo_comment = t293 ).
              CREATE OBJECT t252->zlnt_view_ownkeys_b0e8086400eb.
              t252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t295.
              IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t295 ).
              ENDIF.
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
              DATA(t302) = |key|.
              DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t303.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t302 p1 = t303 ).
              ENDIF.
              DATA(t304) = |title|.
              DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t305.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t304 p1 = t305 ).
              ENDIF.
              DATA(t306) = |shortDescription|.
              DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t307.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t306 p1 = t307 ).
              ENDIF.
              DATA(t308) = |extendedInformation|.
              DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t309.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t308 p1 = t309 ).
              ENDIF.
              DATA(t310) = |tags|.
              DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t311.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
              ENDIF.
              DATA(t312) = |badExample|.
              DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t313.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
              ENDIF.
              DATA(t314) = |goodExample|.
              DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t315.
              IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t314 p1 = t315 ).
              ENDIF.
              t251 = t252->key.
              DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t317) = me->conf.
              t316 = t317->zlnt_view_read_sr_15c06369f827( ).
              DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t318.
              DATA(t319) = abap_true.
              IF t319 = abap_true.
                DATA(t320) = t240.
                t318 = t320.
              ELSE.
                DATA t321 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t321.
                t318 = t321.
              ENDIF.
              DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t322.
              t247 = zcl_lnt_issue=>at_statement( i_file = t248 i_statement = t249 i_message_26cb = t250 i_key = t251 i_severity = t316 i_fix = t318 i_alternative_fixes = t322 ).
              t246 = t247.
              DATA(t323) = t2.
              DATA(t324) = t246.
              t323->load( ).
              APPEND t324 TO t323->items.
              t323->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t325) = t2.
    result = t325.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_exit_or_check_conf( me->g_c_i_s_r_ex_or_ch_ts_ex_or_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_exit_or_check_conf( me->g_c_i_s_r_ex_or_ch_ts_ex_or_ch( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_exit_or_check_conf.
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
        t1 = NEW zcl_lnt_exit_or_check_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ex_or_ch_ts_ex_or_ch( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ex_or_ch_ts_ex_or_ch( i_file = i_file ) ).
    result = t1.

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
