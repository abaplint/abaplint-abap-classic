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
    t1->load( ).
    IF xsdbool( lines( t1->items ) = 0 ) = abap_true.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_include_graph.
    DATA(t9) = me->reg.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t7 = NEW zcl_lnt_include_graph( i_reg_f149 = t9 i_severity = t10 i_allow_unused = t11 ).
    DATA t12 TYPE REF TO zif_lnt_configuration.
    t12 = me->reg->get_config( ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t17 = t12->get_syntax_setttings( )->zlnt_view_read_sr_94cd949ccfb3( ).
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t17 IS BOUND ) = abap_true.
      t21 = t17.
    ELSE.
      CREATE OBJECT t21.
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
      t33 = me->find_mains( i_graph = t7 i_prog = t28 ).
      IF xsdbool( t33->size( ) = 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_st_expand_macros.
      CLEAR t41.
      DATA t44 TYPE REF TO zcl_lnt_abap_release.
      t44 = t12->get_release( ).
      DATA t46 TYPE REF TO zif_lnt_registry.
      CLEAR t46.
      t46 = me->reg.
      DATA t52 TYPE string.
      t52 = t12->get_language_version( ).
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = t52.
      t41 = NEW zcl_lnt_st_expand_macros( i_global_macros_5535 = t15 i_release_7928 = t44 i_reg_f149 = t46 i_language_version_0e1d = t54 ).
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
        t63 = t58->parsed.
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
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t80 = t68->statements.
          t74 = t76->concat( p0 = t80 ).
          DATA(t90) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t90->has = abap_true.
          t90->value = abap_false.
          t41->find_8f95( i_statements = t74 i_file = t68 i_clear_b22e = t90 ).
        ENDDO.
      ENDDO.
      DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t92 = t41->macros->macros->keys( ).
      IF me->matches_unknown( i_prog = t28 i_macro_names = NEW zlnt_runtime_set__1827558fd4c7( )->fromarray( p0 = t92 ) ) = abap_true.
        t28->set_dirty( ).
        DATA t109 TYPE REF TO zcl_lnt_iparse_result.
        CLEAR t109.
        DATA t111 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t111.
        t111 = t12->get_release( ).
        DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t116.
        t116 = t92.
        DATA t120 TYPE REF TO zif_lnt_registry.
        CLEAR t120.
        t120 = me->reg.
        DATA t126 TYPE string.
        t126 = t12->get_language_version( ).
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t126.
        t109 = t28->parse( i_release_7928 = t111 i_global_macros_5535 = t116 i_reg_f149 = t120 i_language_version_0e1d = t128 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_candidates.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t3 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t8.
      t8 = t3->next( ).
      IF t8->done = abap_true.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      t13 = t8->value.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      t19 = abap_false.
      DATA t21 TYPE REF TO cx_root.
      CLEAR t21.
      TRY.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = VALUE abap_bool( ).
          t23 = xsdbool( xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ).
          t22 = t23.
          IF t23 = abap_false.
            DATA t28 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t28.
            DATA t29 TYPE REF TO zcl_lnt_ob_program.
            CLEAR t29.
            DATA t31 TYPE REF TO object.
            CLEAR t31.
            t31 = t13.
            t29 ?= t31.
            t28 = t29.
            t28->parse_xml( ).
            t22 = xsdbool( t28->parsed_xml->is_include = abap_false ).
          ENDIF.
          t18 = t22.
          t19 = abap_true.
        CATCH cx_root INTO t21.
          IF xsdbool( t19 = abap_false ) = abap_true.
            t3->close( ).
          ENDIF.
          RAISE EXCEPTION t21.
      ENDTRY.
      IF xsdbool( t19 = abap_false ) = abap_true.
        t3->close( ).
      ENDIF.
      IF t18 = abap_true.
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
          t48 = t53->parsed.
          t49 = abap_true.
        CATCH cx_root INTO t51.
          IF xsdbool( t49 = abap_false ) = abap_true.
            t3->close( ).
          ENDIF.
          RAISE EXCEPTION t51.
      ENDTRY.
      IF xsdbool( t49 = abap_false ) = abap_true.
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
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        t74 = abap_false.
        DATA t76 TYPE REF TO cx_root.
        CLEAR t76.
        TRY.
            DATA(t78) = VALUE abap_bool( ).
            t78 = abap_false.
            DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t80.
            t80 = t67->statements.
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
              DATA t91 TYPE REF TO zif_lnt_statement.
              CLEAR t91.
              t91 = t85->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              IF xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
                t78 = abap_true.
                EXIT.
              ENDIF.
            ENDDO.
            t73 = t78.
            t74 = abap_true.
          CATCH cx_root INTO t76.
            IF xsdbool( t74 = abap_false ) = abap_true.
              t3->close( ).
            ENDIF.
            RAISE EXCEPTION t76.
        ENDTRY.
        IF xsdbool( t74 = abap_false ) = abap_true.
          t3->close( ).
        ENDIF.
        IF t73 = abap_true.
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
              IF xsdbool( t105 = abap_false ) = abap_true.
                t3->close( ).
              ENDIF.
              RAISE EXCEPTION t107.
          ENDTRY.
          IF xsdbool( t105 = abap_false ) = abap_true.
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
    t7 = t2->get_main_abap_file( ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
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
      t26 = me->reg->get_file_by_name( i_filename = t24 ).
      DATA t30 TYPE REF TO zif_lnt_object.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_object.
      CLEAR t31.
      IF xsdbool( t26 IS BOUND ) = abap_true.
        t31 = me->reg->find_object_for_file( i_file = t26 ).
      ELSE.
        CLEAR t31.
      ENDIF.
      t30 = t31.
      IF xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
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
    t3 = t4->parsed.
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
      t13 = t8->statements.
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
        DATA t24 TYPE REF TO zif_lnt_statement.
        t24 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t26 = zcl_lnt_st_expand_macros=>find_name( i_tokens = t18->get_tokens( ) ).
          DATA(t30) = VALUE abap_bool( ).
          DATA(t31) = VALUE abap_bool( ).
          DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t32 = t26.
          DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t34.
          DATA(t37) = VALUE abap_bool( ).
          IF t32 IS INITIAL.
            t37 = abap_true.
          ELSEIF t32->has = abap_false.
            t37 = abap_true.
          ENDIF.
          t31 = xsdbool( t37 = abap_false ).
          t30 = t31.
          IF t31 = abap_true.
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
            t30 = t2->has( p0 = t41 ).
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
