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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD run.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t1 = CAST zlnt_runtime_arra_c22708faf2e3( me->find_candidates( ) ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE i.
    t1->load( ).
    t4 = lines( t1->items ).
    DATA(t6) = 0.
    t3 = xsdbool( t4 = t6 ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_include_graph.
    DATA t8 TYPE REF TO zcl_lnt_include_graph.
    DATA(t9) = me->reg.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t8 = NEW zcl_lnt_include_graph( i_reg_f149 = t9 i_severity = t10 i_allow_unused = t11 ).
    t7 = t8.
    DATA t12 TYPE REF TO zif_lnt_configuration.
    DATA t13 TYPE REF TO zif_lnt_configuration.
    t13 = me->reg->get_config( ).
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zcl_lnt_isyntax_settings.
    t19 = t12->get_syntax_setttings( ).
    t18 = t19->zlnt_view_read_sr_94cd949ccfb3( ).
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t22 TYPE abap_bool.
    t22 = xsdbool( t17 IS BOUND ).
    IF t22 = abap_true.
      t21 = t17.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t21 = t26.
    ENDIF.
    t15 = t21.
    DATA t28 TYPE REF TO zcl_lnt_ob_program.
    DATA t29 TYPE REF TO object.
    DATA(t30) = VALUE i( ).
    DO.
      t1->load( ).
      IF t30 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t1->items INDEX t30 + 1 INTO t29.
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
      t34 = me->find_mains( i_graph = t7 i_prog = t28 ).
      t33 = t34.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE i.
      t38 = t33->size( ).
      DATA(t40) = 0.
      t37 = xsdbool( t38 = t40 ).
      IF t37 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_st_expand_macros.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_st_expand_macros.
      CLEAR t42.
      DATA t44 TYPE REF TO zcl_lnt_abap_release.
      t44 = t12->get_release( ).
      DATA t46 TYPE REF TO zif_lnt_registry.
      CLEAR t46.
      t46 = me->reg.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA t52 TYPE string.
      t52 = t12->get_language_version( ).
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = t52.
      t50 = t54.
      t42 = NEW zcl_lnt_st_expand_macros( i_global_macros_5535 = t15 i_release_7928 = t44 i_reg_f149 = t46 i_language_version_0e1d = t50 ).
      t41 = t42.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t56 = t33->values( ).
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
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t66 = t58->parsed.
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
          DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t76.
          DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t83 = t68->statements.
          t80 = t83.
          t78 = t76->concat( p0 = t80 ).
          t74 = t78.
          DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t87.
          DATA(t90) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t90->has = abap_true.
          t90->value = abap_false.
          t87 = t90.
          t41->find_8f95( i_statements = t74 i_file = t68 i_clear_b22e = t87 ).
        ENDDO.
      ENDDO.
      DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t98 TYPE REF TO zcl_lnt_macros.
      t98 = t41->macros.
      DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t101 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
      t101 = t98->macros.
      t100 = t101->keys( ).
      t92 = t100.
      DATA t103 TYPE abap_bool.
      DATA t105 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t106) = NEW zlnt_runtime_set__1827558fd4c7( ).
      t105 = t106->fromarray( p0 = t92 ).
      t103 = me->matches_unknown( i_prog = t28 i_macro_names = t105 ).
      IF t103 = abap_true.
        t28->set_dirty( ).
        DATA t109 TYPE REF TO zcl_lnt_iparse_result.
        CLEAR t109.
        DATA t111 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t111.
        DATA t113 TYPE REF TO zcl_lnt_abap_release.
        t113 = t12->get_release( ).
        t111 = t113.
        DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t116.
        t116 = t92.
        DATA t120 TYPE REF TO zif_lnt_registry.
        CLEAR t120.
        t120 = me->reg.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        DATA t126 TYPE string.
        t126 = t12->get_language_version( ).
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t126.
        t124 = t128.
        t109 = t28->parse( i_release_7928 = t111 i_global_macros_5535 = t116 i_reg_f149 = t120 i_language_version_0e1d = t124 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_candidates.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t5 = me->reg->get_objects( ).
    t4 = t5->iterate( ).
    t3 = t4.
    DO.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      t9 = t3->next( ).
      t8 = t9.
      DATA(t11) = VALUE abap_bool( ).
      t11 = t8->done.
      IF t11 = abap_true.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      t15 = t8->value.
      t13 = t15.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      t19 = abap_false.
      DATA t21 TYPE REF TO cx_root.
      CLEAR t21.
      TRY.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE abap_bool( ).
          t24 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_ob_program ).
          t23 = xsdbool( t24 = abap_false ).
          t22 = t23.
          IF t23 = abap_false.
            DATA(t26) = VALUE abap_bool( ).
            DATA(t27) = VALUE abap_bool( ).
            DATA t28 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t28.
            DATA t29 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t29.
            DATA t31 TYPE REF TO object.
            CLEAR t31.
            t31 = t13.
            t29 ?= t31.
            t28 = t29.
            DATA(t32) = VALUE abap_bool( ).
            t28->parse_xml( ).
            DATA(t34) = VALUE abap_bool( ).
            DATA t35 TYPE REF TO zcl_lnt_shape_d77da4ed.
            CLEAR t35.
            DATA t36 TYPE REF TO zcl_lnt_shape_d77da4ed.
            CLEAR t36.
            t36 = t28->parsed_xml.
            t35 = t36.
            t34 = t35->is_include.
            t32 = t34.
            t27 = t32.
            t26 = xsdbool( t27 = abap_false ).
            t22 = t26.
          ENDIF.
          t18 = t22.
          t19 = abap_true.
        CATCH cx_root INTO t21.
          DATA(t40) = VALUE abap_bool( ).
          t40 = xsdbool( t19 = abap_false ).
          IF t40 = abap_true.
            t3->close( ).
          ENDIF.
          RAISE EXCEPTION t21.
      ENDTRY.
      DATA(t43) = VALUE abap_bool( ).
      t43 = xsdbool( t19 = abap_false ).
      IF t43 = abap_true.
        t3->close( ).
      ENDIF.
      t17 = t18.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      t49 = abap_false.
      DATA t51 TYPE REF TO cx_root.
      CLEAR t51.
      TRY.
          DATA t53 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_ob_program.
          CLEAR t54.
          DATA t56 TYPE REF TO object.
          CLEAR t56.
          t56 = t13.
          t54 ?= t56.
          t53 = t54.
          DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t57.
          t57 = t53->parsed.
          t48 = t57.
          t49 = abap_true.
        CATCH cx_root INTO t51.
          DATA(t60) = VALUE abap_bool( ).
          t60 = xsdbool( t49 = abap_false ).
          IF t60 = abap_true.
            t3->close( ).
          ENDIF.
          RAISE EXCEPTION t51.
      ENDTRY.
      DATA(t63) = VALUE abap_bool( ).
      t63 = xsdbool( t49 = abap_false ).
      IF t63 = abap_true.
        t3->close( ).
      ENDIF.
      t47 = t48.
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
        t74 = abap_false.
        DATA t76 TYPE REF TO cx_root.
        CLEAR t76.
        TRY.
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE abap_bool( ).
            t78 = abap_false.
            DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t80.
            DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t83.
            t83 = t67->statements.
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
              t91 = t85->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_unknown ).
              IF t90 = abap_true.
                t78 = abap_true.
                EXIT.
              ENDIF.
            ENDDO.
            t77 = t78.
            t73 = t77.
            t74 = abap_true.
          CATCH cx_root INTO t76.
            DATA(t96) = VALUE abap_bool( ).
            t96 = xsdbool( t74 = abap_false ).
            IF t96 = abap_true.
              t3->close( ).
            ENDIF.
            RAISE EXCEPTION t76.
        ENDTRY.
        DATA(t99) = VALUE abap_bool( ).
        t99 = xsdbool( t74 = abap_false ).
        IF t99 = abap_true.
          t3->close( ).
        ENDIF.
        t72 = t73.
        IF t72 = abap_true.
          DATA(t103) = VALUE f( ).
          DATA(t104) = VALUE f( ).
          DATA(t105) = VALUE abap_bool( ).
          t105 = abap_false.
          DATA t107 TYPE REF TO cx_root.
          CLEAR t107.
          TRY.
              DATA(t108) = VALUE f( ).
              DATA(t109) = VALUE i( ).
              DATA t111 TYPE REF TO zcl_lnt_ob_program.
              CLEAR t111.
              DATA t113 TYPE REF TO object.
              CLEAR t113.
              t113 = t13.
              t111 ?= t113.
              t1->load( ).
              APPEND t111 TO t1->items.
              t109 = lines( t1->items ).
              t1->save( ).
              t108 = t109.
              t104 = t108.
              t105 = abap_true.
            CATCH cx_root INTO t107.
              DATA(t115) = VALUE abap_bool( ).
              t115 = xsdbool( t105 = abap_false ).
              IF t115 = abap_true.
                t3->close( ).
              ENDIF.
              RAISE EXCEPTION t107.
          ENDTRY.
          DATA(t118) = VALUE abap_bool( ).
          t118 = xsdbool( t105 = abap_false ).
          IF t118 = abap_true.
            t3->close( ).
          ENDIF.
          t103 = t104.
          EXIT.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD find_mains.
    DATA(t1) = i_graph.
    DATA(t2) = i_prog.
    DATA t3 TYPE REF TO zlnt_runtime_set__569a685d95a8.
    t3 = NEW zlnt_runtime_set__569a685d95a8( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    t8 = t2->get_main_abap_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = xsdbool( t7 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_abstract_file.
      t15 = t7.
      DATA t18 TYPE string.
      t18 = t15->filename.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t18.
      t10 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t21 = t1->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t10 ).
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
      t27 = me->reg->get_file_by_name( i_filename = t24 ).
      t26 = t27.
      DATA t30 TYPE REF TO zif_lnt_object.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_object.
      CLEAR t31.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t26 IS BOUND ).
      IF t32 = abap_true.
        DATA t34 TYPE REF TO zif_lnt_object.
        DATA t36 TYPE REF TO zif_lnt_file.
        t36 = t26.
        t34 = me->reg->find_object_for_file( i_file = t36 ).
        t31 = t34.
      ELSE.
        CLEAR t31.
      ENDIF.
      t30 = t31.
      DATA t39 TYPE abap_bool.
      t39 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t39 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_set__569a685d95a8.
        DATA t43 TYPE REF TO zcl_lnt_abap_object.
        DATA t45 TYPE REF TO object.
        t45 = t30.
        t43 ?= t45.
        t41 = t3->add( p0 = t43 ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD matches_unknown.
    DATA(t2) = i_macro_names.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abap_object.
    t4 = i_prog.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t4->parsed.
    t3 = t6.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA t9 TYPE REF TO object.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t16 = t8->statements.
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
        t24 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_unknown ).
        IF t23 = abap_true.
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t28 = t18->get_tokens( ).
          t27 = zcl_lnt_st_expand_macros=>find_name( i_tokens = t28 ).
          t26 = t27.
          DATA(t30) = VALUE abap_bool( ).
          DATA(t31) = VALUE abap_bool( ).
          DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t32 = t26.
          DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t34.
          DATA(t36) = VALUE abap_bool( ).
          DATA(t37) = VALUE abap_bool( ).
          IF t32 IS INITIAL.
            t37 = abap_true.
          ELSEIF t32->has = abap_false.
            t37 = abap_true.
          ENDIF.
          t36 = xsdbool( t37 = abap_false ).
          t31 = t36.
          t30 = t31.
          IF t31 = abap_true.
            DATA(t39) = VALUE abap_bool( ).
            DATA t41 TYPE string.
            DATA t42 TYPE string.
            t42 = t26->value.
            DATA(t44) = strlen( t42 ).
            t41 = t42.
            IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t41 TO UPPER CASE.
            ELSE.
              t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
            ENDIF.
            t39 = t2->has( p0 = t41 ).
            t30 = t39.
          ENDIF.
          IF t30 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = abap_false.

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
