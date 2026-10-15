* TS: src/abap/cross_include_macros.ts:13:1 CrossIncludeMacros
CLASS zcl_lnt_cross_include_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS run.
    METHODS find_candidates RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_mains IMPORTING i_graph TYPE REF TO zcl_lnt_include_graph i_prog TYPE REF TO zcl_lnt_ob_program RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__569a685d95a8.
    METHODS matches_unknown IMPORTING i_prog TYPE REF TO zcl_lnt_ob_program i_macro_names TYPE REF TO zlnt_runtime_set__1827558fd4c7 RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cross_include_macros IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD run.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->find_candidates( ) ).
    t1 = t2.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE i.
    DATA(t5) = t1.
    t5->load( ).
    t4 = lines( t5->items ).
    DATA(t6) = 0.
    t3 = xsdbool( t4 = t6 ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_include_graph.
    DATA t8 TYPE REF TO zcl_lnt_include_graph.
    DATA(t9) = me->reg.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t11.
    t8 = NEW zcl_lnt_include_graph( i_reg_f149 = t9 i_severity = t10 i_allow_unused = t11 ).
    t7 = t8.
    DATA t12 TYPE REF TO zif_lnt_configuration.
    DATA t13 TYPE REF TO zif_lnt_configuration.
    DATA(t14) = me->reg.
    t13 = t14->get_config( ).
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t20) = t12.
    t19 = t20->get_syntax_setttings( ).
    t18 = t19->zlnt_view_read_sr_94cd949ccfb3( ).
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t17.
    t22 = xsdbool( t23 IS BOUND ).
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t25) = t17.
      t24 = t25.
      t21 = t24.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t21 = t26.
    ENDIF.
    t16 = t21.
    t15 = t16.
    DATA(t27) = t1.
    DATA t28 TYPE REF TO zcl_lnt_ob_program.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t27->load( ).
      IF t30 >= lines( t27->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t27->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_set__569a685d95a8.
      DATA t34 TYPE REF TO zlnt_runtime_set__569a685d95a8.
      DATA(t35) = t7.
      DATA(t36) = t28.
      t34 = me->find_mains( i_graph = t35 i_prog = t36 ).
      t33 = t34.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE i.
      DATA(t39) = t33.
      t38 = t39->size( ).
      DATA(t40) = 0.
      t37 = xsdbool( t38 = t40 ).
      IF t37 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_st_expand_macros.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_st_expand_macros.
      CLEAR t42.
      DATA(t43) = t15.
      DATA t44 TYPE REF TO zcl_lnt_abap_release.
      DATA(t45) = t12.
      t44 = t45->get_release( ).
      DATA t46 TYPE REF TO zif_lnt_registry.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = me->reg.
        t46 = t48.
      ELSE.
        DATA t49 TYPE REF TO zif_lnt_registry.
        CLEAR t49.
        t46 = t49.
      ENDIF.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA t52 TYPE string.
        DATA(t53) = t12.
        t52 = t53->get_language_version( ).
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t52.
        t50 = t54.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t50 = t55.
      ENDIF.
      t42 = NEW zcl_lnt_st_expand_macros( i_global_macros_5535 = t43 i_release_7928 = t44 i_reg_f149 = t46 i_language_version_0e1d = t50 ).
      t41 = t42.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t57) = t33.
      t56 = t57->values( ).
      DATA t58 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      DATA(t60) = VALUE i( ).
      DO.
        t56->load( ).
        IF t60 >= lines( t56->items ).
          EXIT.
        ENDIF.
        CLEAR t59.
        READ TABLE t56->items INDEX t60 + 1 INTO t59.
        t60 = t60 + 1.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        CLEAR t58.
        IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t61 ?= t59.
          DATA t62 TYPE REF TO object.
          t62 = t61->as_ref( ).
          t58 ?= t62.
        ELSE.
          t58 ?= t59.
        ENDIF.
        DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t64 TYPE REF TO zcl_lnt_abap_object.
        DATA(t65) = t58.
        t64 = t65.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t67) = t64.
        t66 = t67->parsed.
        t63 = t66.
        DATA t68 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t68.
        DATA t69 TYPE REF TO object.
        CLEAR t69.
        DATA(t70) = VALUE i( ).
        DO.
          t63->load( ).
          IF t70 >= lines( t63->items ).
            EXIT.
          ENDIF.
          CLEAR t69.
          READ TABLE t63->items INDEX t70 + 1 INTO t69.
          t70 = t70 + 1.
          DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t71.
          CLEAR t68.
          IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t71 ?= t69.
            DATA t72 TYPE REF TO object.
            t72 = t71->as_ref( ).
            t68 ?= t72.
          ELSE.
            t68 ?= t69.
          ENDIF.
          DATA(t73) = t41.
          DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t76.
          t75 = t76.
          DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t79) = t75.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t81 TYPE REF TO zcl_lnt_abap_file.
          DATA(t82) = t68.
          t81 = t82.
          DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t84) = t81.
          t83 = t84->statements.
          t80 = t83.
          t78 = t79->concat( p0 = t80 ).
          t77 = t78.
          DATA(t85) = t77.
          t74 = t85.
          DATA(t86) = t68.
          DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t87.
          DATA(t88) = abap_true.
          IF t88 = abap_true.
            DATA(t89) = abap_false.
            DATA(t90) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t90->has = abap_true.
            t90->value = t89.
            t87 = t90.
          ELSE.
            DATA t91 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t91.
            t87 = t91.
          ENDIF.
          t73->find_8f95( i_statements = t74 i_file = t86 i_clear_b22e = t87 ).
        ENDDO.
      ENDDO.
      DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t94 TYPE REF TO zcl_lnt_st_expand_macros.
      DATA(t95) = t41.
      t94 = t95.
      DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t97 TYPE REF TO zcl_lnt_macros.
      DATA t98 TYPE REF TO zcl_lnt_macros.
      DATA(t99) = t94.
      t98 = t99->macros.
      t97 = t98.
      DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t101 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
      DATA(t102) = t97.
      t101 = t102->macros.
      t100 = t101->keys( ).
      t96 = t100.
      t93 = t96.
      t92 = t93.
      DATA t103 TYPE abap_bool.
      DATA(t104) = t28.
      DATA t105 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t106) = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA(t107) = t92.
      t105 = t106->fromarray( p0 = t107 ).
      t103 = me->matches_unknown( i_prog = t104 i_macro_names = t105 ).
      IF t103 = abap_true.
        DATA(t108) = t28.
        t108->set_dirty( ).
        DATA t109 TYPE REF TO zcl_lnt_iparse_result.
        CLEAR t109.
        DATA(t110) = t28.
        DATA t111 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t111.
        DATA(t112) = abap_true.
        IF t112 = abap_true.
          DATA t113 TYPE REF TO zcl_lnt_abap_release.
          DATA(t114) = t12.
          t113 = t114->get_release( ).
          t111 = t113.
        ELSE.
          DATA t115 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t115.
          t111 = t115.
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t116.
        DATA(t117) = abap_true.
        IF t117 = abap_true.
          DATA(t118) = t92.
          t116 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t119.
          t116 = t119.
        ENDIF.
        DATA t120 TYPE REF TO zif_lnt_registry.
        CLEAR t120.
        DATA(t121) = abap_true.
        IF t121 = abap_true.
          DATA(t122) = me->reg.
          t120 = t122.
        ELSE.
          DATA t123 TYPE REF TO zif_lnt_registry.
          CLEAR t123.
          t120 = t123.
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA t126 TYPE string.
          DATA(t127) = t12.
          t126 = t127->get_language_version( ).
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = t126.
          t124 = t128.
        ELSE.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          t124 = t129.
        ENDIF.
        t109 = t110->parse( i_release_7928 = t111 i_global_macros_5535 = t116 i_reg_f149 = t120 i_language_version_0e1d = t124 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_candidates.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA(t6) = me->reg.
    t5 = t6->get_objects( ).
    t4 = t5->iterate( ).
    t3 = t4.
    DO.
      DATA(t7) = abap_true.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      DATA(t10) = t3.
      t9 = t10->next( ).
      t8 = t9.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t8.
      t11 = t12->done.
      IF t11 = abap_true.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA(t16) = t8.
      t15 = t16->value.
      t14 = t15.
      t13 = t14.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = abap_false.
      t19 = t20.
      DATA t21 TYPE REF TO cx_root.
      CLEAR t21.
      TRY.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE abap_bool( ).
          DATA(t25) = t13.
          t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_ob_program ).
          t23 = xsdbool( t24 = abap_false ).
          t22 = t23.
          IF t23 = abap_false.
            DATA(t26) = VALUE abap_bool( ).
            DATA(t27) = VALUE abap_bool( ).
            DATA t28 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t28.
            DATA t29 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t29.
            DATA(t30) = t13.
            DATA t31 TYPE REF TO object.
            CLEAR t31.
            t31 = t30.
            t29 ?= t31.
            t28 = t29.
            DATA(t32) = VALUE abap_bool( ).
            DATA(t33) = t28.
            t33->parse_xml( ).
            DATA(t34) = VALUE abap_bool( ).
            DATA t35 TYPE REF TO zcl_lnt_shape_d77da4ed.
            CLEAR t35.
            DATA t36 TYPE REF TO zcl_lnt_shape_d77da4ed.
            CLEAR t36.
            DATA(t37) = t28.
            t36 = t37->parsed_xml.
            t35 = t36.
            t34 = t35->is_include.
            t32 = t34.
            t27 = t32.
            DATA(t38) = abap_false.
            t26 = xsdbool( t27 = t38 ).
            t22 = t26.
          ENDIF.
          t18 = t22.
          DATA(t39) = abap_true.
          t19 = t39.
        CATCH cx_root INTO t21.
          DATA(t40) = VALUE abap_bool( ).
          DATA(t41) = t19.
          t40 = xsdbool( t41 = abap_false ).
          IF t40 = abap_true.
            DATA(t42) = t3.
            t42->close( ).
          ENDIF.
          RAISE EXCEPTION t21.
      ENDTRY.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = t19.
      t43 = xsdbool( t44 = abap_false ).
      IF t43 = abap_true.
        DATA(t45) = t3.
        t45->close( ).
      ENDIF.
      DATA(t46) = t18.
      t17 = t46.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = abap_false.
      t49 = t50.
      DATA t51 TYPE REF TO cx_root.
      CLEAR t51.
      TRY.
          DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t52.
          DATA t53 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_ob_program.
          CLEAR t54.
          DATA(t55) = t13.
          DATA t56 TYPE REF TO object.
          CLEAR t56.
          t56 = t55.
          t54 ?= t56.
          t53 = t54.
          DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t57.
          DATA(t58) = t53.
          t57 = t58->parsed.
          t52 = t57.
          t48 = t52.
          DATA(t59) = abap_true.
          t49 = t59.
        CATCH cx_root INTO t51.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = t49.
          t60 = xsdbool( t61 = abap_false ).
          IF t60 = abap_true.
            DATA(t62) = t3.
            t62->close( ).
          ENDIF.
          RAISE EXCEPTION t51.
      ENDTRY.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t49.
      t63 = xsdbool( t64 = abap_false ).
      IF t63 = abap_true.
        DATA(t65) = t3.
        t65->close( ).
      ENDIF.
      DATA(t66) = t48.
      t47 = t66.
      DATA t67 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      DATA(t69) = VALUE i( ).
      DO.
        t47->load( ).
        IF t69 >= lines( t47->items ).
          EXIT.
        ENDIF.
        CLEAR t68.
        READ TABLE t47->items INDEX t69 + 1 INTO t68.
        t69 = t69 + 1.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t67.
        IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t70 ?= t68.
          DATA t71 TYPE REF TO object.
          CLEAR t71.
          t71 = t70->as_ref( ).
          t67 ?= t71.
        ELSE.
          t67 ?= t68.
        ENDIF.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = abap_false.
        t74 = t75.
        DATA t76 TYPE REF TO cx_root.
        CLEAR t76.
        TRY.
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE abap_bool( ).
            DATA(t79) = abap_false.
            t78 = t79.
            DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t80.
            DATA t81 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t81.
            DATA(t82) = t67.
            t81 = t82.
            DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t83.
            DATA(t84) = t81.
            t83 = t84->statements.
            t80 = t83.
            DATA t85 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t85.
            DATA t86 TYPE REF TO object.
            CLEAR t86.
            DATA(t87) = VALUE i( ).
            DO.
              t80->load( ).
              IF t87 >= lines( t80->items ).
                EXIT.
              ENDIF.
              CLEAR t86.
              READ TABLE t80->items INDEX t87 + 1 INTO t86.
              t87 = t87 + 1.
              DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t88.
              CLEAR t85.
              IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t88 ?= t86.
                DATA t89 TYPE REF TO object.
                CLEAR t89.
                t89 = t88->as_ref( ).
                t85 ?= t89.
              ELSE.
                t85 ?= t86.
              ENDIF.
              DATA(t90) = VALUE abap_bool( ).
              DATA t91 TYPE REF TO zif_lnt_statement.
              CLEAR t91.
              DATA(t92) = t85.
              t91 = t92->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_unknown ).
              IF t90 = abap_true.
                DATA(t93) = abap_true.
                t78 = t93.
                EXIT.
              ENDIF.
            ENDDO.
            DATA(t94) = t78.
            t77 = t94.
            t73 = t77.
            DATA(t95) = abap_true.
            t74 = t95.
          CATCH cx_root INTO t76.
            DATA(t96) = VALUE abap_bool( ).
            DATA(t97) = t74.
            t96 = xsdbool( t97 = abap_false ).
            IF t96 = abap_true.
              DATA(t98) = t3.
              t98->close( ).
            ENDIF.
            RAISE EXCEPTION t76.
        ENDTRY.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = t74.
        t99 = xsdbool( t100 = abap_false ).
        IF t99 = abap_true.
          DATA(t101) = t3.
          t101->close( ).
        ENDIF.
        DATA(t102) = t73.
        t72 = t102.
        IF t72 = abap_true.
          DATA(t103) = VALUE f( ).
          DATA(t104) = VALUE f( ).
          DATA(t105) = VALUE abap_bool( ).
          DATA(t106) = abap_false.
          t105 = t106.
          DATA t107 TYPE REF TO cx_root.
          CLEAR t107.
          TRY.
              DATA(t108) = VALUE f( ).
              DATA(t109) = VALUE i( ).
              DATA(t110) = t1.
              DATA t111 TYPE REF TO zcl_lnt_ob_program.
              CLEAR t111.
              DATA(t112) = t13.
              DATA t113 TYPE REF TO object.
              CLEAR t113.
              t113 = t112.
              t111 ?= t113.
              t110->load( ).
              APPEND t111 TO t110->items.
              t109 = lines( t110->items ).
              t110->save( ).
              t108 = t109.
              t104 = t108.
              DATA(t114) = abap_true.
              t105 = t114.
            CATCH cx_root INTO t107.
              DATA(t115) = VALUE abap_bool( ).
              DATA(t116) = t105.
              t115 = xsdbool( t116 = abap_false ).
              IF t115 = abap_true.
                DATA(t117) = t3.
                t117->close( ).
              ENDIF.
              RAISE EXCEPTION t107.
          ENDTRY.
          DATA(t118) = VALUE abap_bool( ).
          DATA(t119) = t105.
          t118 = xsdbool( t119 = abap_false ).
          IF t118 = abap_true.
            DATA(t120) = t3.
            t120->close( ).
          ENDIF.
          DATA(t121) = t104.
          t103 = t121.
          EXIT.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t122) = t1.
    result = t122.

  ENDMETHOD.

  METHOD find_mains.
    DATA(t1) = i_graph.
    DATA(t2) = i_prog.
    DATA t3 TYPE REF TO zlnt_runtime_set__569a685d95a8.
    DATA(t4) = NEW zlnt_runtime_set__569a685d95a8( ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = t2.
    t8 = t9->get_main_abap_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zcl_lnt_abstract_file.
      DATA t16 TYPE REF TO zcl_lnt_abap_file.
      DATA(t17) = t7.
      t16 = t17.
      t15 = t16.
      DATA t18 TYPE string.
      DATA(t19) = t15.
      t18 = t19->filename.
      t14 = t18.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t14.
      t10 = t20.
    ENDIF.
    t6 = t10.
    t5 = t6.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t22) = t1.
    DATA(t23) = t5.
    t21 = t22->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t23 ).
    DATA(t24) = VALUE string( ).
    t21->dense( ).
    DATA(t25) = VALUE i( ).
    DO.
      t21->load( ).
      IF t25 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t21->items INDEX t25 + 1 INTO t24.
      IF t21->has( t25 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zif_lnt_file.
      DATA t27 TYPE REF TO zif_lnt_file.
      DATA(t28) = me->reg.
      DATA(t29) = t24.
      t27 = t28->get_file_by_name( i_filename = t29 ).
      t26 = t27.
      DATA t30 TYPE REF TO zif_lnt_object.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_object.
      CLEAR t31.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t26.
      t32 = xsdbool( t33 IS BOUND ).
      IF t32 = abap_true.
        DATA t34 TYPE REF TO zif_lnt_object.
        DATA(t35) = me->reg.
        DATA t36 TYPE REF TO zif_lnt_file.
        DATA(t37) = t26.
        t36 = t37.
        t34 = t35->find_object_for_file( i_file = t36 ).
        t31 = t34.
      ELSE.
        DATA t38 TYPE REF TO zif_lnt_object.
        CLEAR t38.
        t31 = t38.
      ENDIF.
      t30 = t31.
      DATA t39 TYPE abap_bool.
      DATA(t40) = t30.
      t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t39 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_set__569a685d95a8.
        DATA(t42) = t3.
        DATA t43 TYPE REF TO zcl_lnt_abap_object.
        DATA(t44) = t30.
        DATA t45 TYPE REF TO object.
        t45 = t44.
        t43 ?= t45.
        t41 = t42->add( p0 = t43 ).
      ENDIF.
    ENDDO.
    DATA(t46) = t3.
    result = t46.

  ENDMETHOD.

  METHOD matches_unknown.
    DATA(t1) = i_prog.
    DATA(t2) = i_macro_names.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abap_object.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->parsed.
    t3 = t6.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t3->load( ).
      IF t10 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t3->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_abap_file.
      DATA(t15) = t8.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = t14.
      t16 = t17->statements.
      t13 = t16.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      DATA(t20) = VALUE i( ).
      DO.
        t13->load( ).
        IF t20 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t19.
        READ TABLE t13->items INDEX t20 + 1 INTO t19.
        t20 = t20 + 1.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        CLEAR t18.
        IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t21 ?= t19.
          DATA t22 TYPE REF TO object.
          t22 = t21->as_ref( ).
          t18 ?= t22.
        ELSE.
          t18 ?= t19.
        ENDIF.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE REF TO zif_lnt_statement.
        DATA(t25) = t18.
        t24 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_unknown ).
        IF t23 = abap_true.
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t29) = t18.
          t28 = t29->get_tokens( ).
          t27 = zcl_lnt_st_expand_macros=>find_name( i_tokens = t28 ).
          t26 = t27.
          DATA(t30) = VALUE abap_bool( ).
          DATA(t31) = VALUE abap_bool( ).
          DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t33) = t26.
          t32 = t33.
          DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t35.
          t34 = t35.
          DATA(t36) = VALUE abap_bool( ).
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t32.
          IF t38 IS INITIAL.
            t37 = abap_true.
          ELSEIF t38->has = abap_false.
            t37 = abap_true.
          ENDIF.
          t36 = xsdbool( t37 = abap_false ).
          t31 = t36.
          t30 = t31.
          IF t31 = abap_true.
            DATA(t39) = VALUE abap_bool( ).
            DATA(t40) = t2.
            DATA t41 TYPE string.
            DATA t42 TYPE string.
            DATA(t43) = t26.
            t42 = t43->value.
            DATA(t44) = strlen( t42 ).
            t41 = t42.
            IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t41 TO UPPER CASE.
            ELSE.
              t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
            ENDIF.
            t39 = t40->has( p0 = t41 ).
            t30 = t39.
          ENDIF.
          IF t30 = abap_true.
            DATA(t45) = abap_true.
            result = t45.
            RETURN.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t46) = abap_false.
    result = t46.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1005_8ca9cc1845c0.
  ENDMETHOD.
ENDCLASS.
