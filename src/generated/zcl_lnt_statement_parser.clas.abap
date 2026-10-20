* TS: src/abap/2_statements/statement_parser.ts:94:1 StatementParser
CLASS zcl_lnt_statement_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA map TYPE REF TO zcl_lnt_statement_map.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA language_version TYPE string.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release i_reg_f149 TYPE REF TO zif_lnt_registry OPTIONAL i_language_version_0e1d TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS run IMPORTING i_input_967e TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS tokens_to_nodes IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS lazy_unknown IMPORTING i_wa TYPE REF TO zcl_lnt_st_work_area.
    METHODS build_splits IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS native_sql IMPORTING i_wa TYPE REF TO zcl_lnt_st_work_area.
    METHODS categorize IMPORTING i_wa TYPE REF TO zcl_lnt_st_work_area.
    METHODS categorize_statement IMPORTING i_input_967e TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    METHODS remove_pragma IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    METHODS match IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    METHODS process IMPORTING i_wa TYPE REF TO zcl_lnt_st_work_area.
    METHODS native_after IMPORTING i_native TYPE abap_bool i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_colon TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE abap_bool.
    METHODS tokens_to_nodes_one IMPORTING i_x TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_statement_parser IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_release_7928.
    DATA(t2) = i_reg_f149.
    DATA(t3) = i_language_version_0e1d.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t3.
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = |Normal|.
      t3 = t9.
    ENDIF.
    IF xsdbool( xsdbool( zcl_lnt_statement_parser=>map IS BOUND ) = abap_false ) = abap_true.
      zcl_lnt_statement_parser=>map = NEW zcl_lnt_statement_map( ).
    ENDIF.
    me->release_3664 = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
    me->language_version = t3->value.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_st_expand_macros.
    DATA(t5) = i_global_macros_5535.
    DATA(t6) = me->release_3664.
    DATA(t7) = me->reg.
    DATA(t10) = CONV string( me->language_version ).
    DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t11->has = abap_true.
    t11->value = t10.
    t3 = NEW zcl_lnt_st_expand_macros( i_global_macros_5535 = t5 i_release_7928 = t6 i_reg_f149 = t7 i_language_version_0e1d = t11 ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA t18 TYPE REF TO zcl_lnt_iabaplexer_result.
    DATA t19 TYPE REF TO object.
    DATA(t20) = VALUE i( ).
    DO.
      t1->load( ).
      IF t20 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t1->items INDEX t20 + 1 INTO t19.
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
      DATA t24 TYPE REF TO zcl_lnt_st_work_area.
      DATA t25 TYPE REF TO zif_lnt_file.
      t25 = t18->file.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t27 = t18->tokens.
      t24 = NEW zcl_lnt_st_work_area( i_file = t25 i_tokens = t27 ).
      t15->load( ).
      APPEND t24 TO t15->items.
      t15->save( ).
    ENDDO.
    t13 = t15.
    DATA t31 TYPE REF TO zcl_lnt_st_work_area.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t13->load( ).
      IF t33 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t13->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      me->process( i_wa = t31 ).
      me->categorize( i_wa = t31 ).
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t39 = t31->statements.
      DATA t41 TYPE REF TO zif_lnt_file.
      t41 = t31->file.
      DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t43.
      t3->find_8f95( i_statements = t39 i_file = t41 i_clear_b22e = t43 ).
    ENDDO.
    DATA t45 TYPE REF TO zcl_lnt_st_work_area.
    DATA t46 TYPE REF TO object.
    DATA(t47) = VALUE i( ).
    DO.
      t13->load( ).
      IF t47 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t46.
      READ TABLE t13->items INDEX t47 + 1 INTO t46.
      t47 = t47 + 1.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      CLEAR t45.
      IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t48 ?= t46.
        DATA t49 TYPE REF TO object.
        t49 = t48->as_ref( ).
        t45 ?= t49.
      ELSE.
        t45 ?= t46.
      ENDIF.
      DATA t50 TYPE REF TO zcl_lnt_shape_df3d0820.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t53 = t45->statements.
      DATA t55 TYPE REF TO zif_lnt_file.
      t55 = t45->file.
      DATA t57 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t57.
      t50 = t3->handle_macros( i_statements = t53 i_file = t55 i_seen = t57 ).
      t45->statements = t50->statements.
      DELETE t45->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
      IF xsdbool( t50->contains_unknown = abap_true ) = abap_true.
        me->lazy_unknown( i_wa = t45 ).
      ENDIF.
      me->native_sql( i_wa = t45 ).
    ENDDO.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    DATA t71 TYPE REF TO zcl_lnt_st_work_area.
    DATA t72 TYPE REF TO object.
    DATA(t73) = VALUE i( ).
    DO.
      t13->load( ).
      IF t73 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t72.
      READ TABLE t13->items INDEX t73 + 1 INTO t72.
      t73 = t73 + 1.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      CLEAR t71.
      IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t74 ?= t72.
        DATA t75 TYPE REF TO object.
        t75 = t74->as_ref( ).
        t71 ?= t75.
      ELSE.
        t71 ?= t72.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_istatement_result.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_st_work_area.
      t78 = t71.
      DATA t80 TYPE REF TO zcl_lnt_istatement_result.
      DATA t81 TYPE REF TO zif_lnt_file.
      t81 = t78->file.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t84 = t78->tokens.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t88 = t78->statements.
      t80 = NEW zcl_lnt_istatement_result( i_file = t81 i_tokens = t84 i_statements = t88 ).
      CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
      t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t90 ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t91 ).
      ENDIF.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t92 ).
      ENDIF.
      CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
      t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t94 ).
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokens| p1 = t96 ).
      ENDIF.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |statements| p1 = t98 ).
      ENDIF.
      t77 = t80.
      t68->load( ).
      APPEND t77 TO t68->items.
      t68->save( ).
    ENDDO.
    result = t68.

  ENDMETHOD.

  METHOD tokens_to_nodes.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_token_node.
      t11 = NEW zcl_lnt_token_node( i_token = t5 ).
      t2->load( ).
      APPEND t11 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD lazy_unknown.
    DATA(t1) = i_wa.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t4->load( ).
      IF t8 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t4->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t12 TYPE REF TO zif_lnt_statement.
      t12 = t6->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
        DATA(t14) = VALUE string( ).
        DATA t15 TYPE string.
        DATA t16 TYPE string.
        t16 = t6->concat_tokens( ).
        DATA(t18) = strlen( t16 ).
        t15 = t16.
        IF t15 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t15 TO UPPER CASE.
        ELSE.
          t15 = zlnt_runtime_uppe_91169605024d=>full( t15 ).
        ENDIF.
        t14 = t15.
        DATA(t19) = VALUE abap_bool( ).
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = VALUE abap_bool( ).
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = VALUE abap_bool( ).
        DATA(t27) = |CALL METHOD |.
        DATA(t28) = strlen( t14 ).
        DATA t29 TYPE i.
        DATA(t30) = VALUE i( ).
        DATA(t31) = VALUE string( ).
        t29 = strlen( t27 ).
        IF t29 = 0.
          t25 = abap_true.
        ELSEIF t29 <= t28.
          t30 = 0.
          t31 = t14+t30(t29).
          IF t31 = t27.
            t25 = abap_true.
          ENDIF.
        ENDIF.
        t24 = xsdbool( t25 = abap_false ).
        t23 = t24.
        IF t24 = abap_true.
          DATA(t34) = VALUE abap_bool( ).
          DATA(t36) = |RAISE EXCEPTION TYPE |.
          DATA(t37) = strlen( t14 ).
          DATA t38 TYPE i.
          DATA(t39) = VALUE i( ).
          DATA(t40) = VALUE string( ).
          t38 = strlen( t36 ).
          IF t38 = 0.
            t34 = abap_true.
          ELSEIF t38 <= t37.
            t39 = 0.
            t40 = t14+t39(t38).
            IF t40 = t36.
              t34 = abap_true.
            ENDIF.
          ENDIF.
          t23 = xsdbool( t34 = abap_false ).
        ENDIF.
        t22 = t23.
        IF t23 = abap_true.
          DATA(t43) = VALUE abap_bool( ).
          DATA(t45) = |READ TABLE |.
          DATA(t46) = strlen( t14 ).
          DATA t47 TYPE i.
          DATA(t48) = VALUE i( ).
          DATA(t49) = VALUE string( ).
          t47 = strlen( t45 ).
          IF t47 = 0.
            t43 = abap_true.
          ELSEIF t47 <= t46.
            t48 = 0.
            t49 = t14+t48(t47).
            IF t49 = t45.
              t43 = abap_true.
            ENDIF.
          ENDIF.
          t22 = xsdbool( t43 = abap_false ).
        ENDIF.
        t21 = t22.
        IF t22 = abap_true.
          DATA(t52) = VALUE abap_bool( ).
          DATA(t54) = |LOOP AT |.
          DATA(t55) = strlen( t14 ).
          DATA t56 TYPE i.
          DATA(t57) = VALUE i( ).
          DATA(t58) = VALUE string( ).
          t56 = strlen( t54 ).
          IF t56 = 0.
            t52 = abap_true.
          ELSEIF t56 <= t55.
            t57 = 0.
            t58 = t14+t57(t56).
            IF t58 = t54.
              t52 = abap_true.
            ENDIF.
          ENDIF.
          t21 = xsdbool( t52 = abap_false ).
        ENDIF.
        t20 = t21.
        IF t21 = abap_true.
          DATA(t61) = VALUE abap_bool( ).
          DATA(t63) = |SELECT SINGLE |.
          DATA(t64) = strlen( t14 ).
          DATA t65 TYPE i.
          DATA(t66) = VALUE i( ).
          DATA(t67) = VALUE string( ).
          t65 = strlen( t63 ).
          IF t65 = 0.
            t61 = abap_true.
          ELSEIF t65 <= t64.
            t66 = 0.
            t67 = t14+t66(t65).
            IF t67 = t63.
              t61 = abap_true.
            ENDIF.
          ENDIF.
          t20 = xsdbool( t61 = abap_false ).
        ENDIF.
        t19 = t20.
        IF t20 = abap_true.
          DATA(t70) = VALUE abap_bool( ).
          DATA(t72) = |CALL FUNCTION |.
          DATA(t73) = strlen( t14 ).
          DATA t74 TYPE i.
          DATA(t75) = VALUE i( ).
          DATA(t76) = VALUE string( ).
          t74 = strlen( t72 ).
          IF t74 = 0.
            t70 = abap_true.
          ELSEIF t74 <= t73.
            t75 = 0.
            t76 = t14+t75(t74).
            IF t76 = t72.
              t70 = abap_true.
            ENDIF.
          ENDIF.
          t19 = xsdbool( t70 = abap_false ).
        ENDIF.
        IF t19 = abap_true.
          DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t78 = me->build_splits( i_tokens = t6->get_tokens( ) ).
          DATA t81 TYPE REF TO zcl_lnt_shape_63d6a181.
          CLEAR t81.
          DATA t82 TYPE REF TO object.
          CLEAR t82.
          DATA(t83) = VALUE i( ).
          DO.
            t78->load( ).
            IF t83 >= lines( t78->items ).
              EXIT.
            ENDIF.
            CLEAR t82.
            READ TABLE t78->items INDEX t83 + 1 INTO t82.
            t83 = t83 + 1.
            DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t84.
            CLEAR t81.
            IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t84 ?= t82.
              DATA t85 TYPE REF TO object.
              t85 = t84->as_ref( ).
              t81 ?= t85.
            ELSE.
              t81 ?= t82.
            ENDIF.
            DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t87 = t81->first.
            DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t89 = t81->second.
            t89->load( ).
            IF xsdbool( lines( t89->items ) = 1 ) = abap_true.
              CONTINUE.
            ENDIF.
            DATA t96 TYPE REF TO zcl_lnt_statement_node.
            DATA(t100) = NEW zcl_lnt_unknown( ).
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t101.
            DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t102.
            t96 = me->categorize_statement( i_input_967e = NEW zcl_lnt_statement_node( i_statement = t100 i_colon = t101 i_pragmas = t102 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t89 ) ) ).
            DATA t105 TYPE abap_bool.
            DATA t106 TYPE abap_bool.
            DATA t108 TYPE REF TO zif_lnt_statement.
            t108 = t96->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t106 = xsdbool( xsdbool( t108 IS BOUND AND t108 IS INSTANCE OF zcl_lnt_unknown ) = abap_false ).
            t105 = t106.
            IF t106 = abap_true.
              DATA t112 TYPE REF TO zif_lnt_statement.
              t112 = t96->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t105 = xsdbool( xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_empty ) = abap_false ).
            ENDIF.
            IF t105 = abap_true.
              DATA t115 TYPE REF TO zcl_lnt_statement_node.
              DATA(t117) = NEW zcl_lnt_unknown( ).
              DATA t118 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t118.
              DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t119.
              t115 = NEW zcl_lnt_statement_node( i_statement = t117 i_colon = t118 i_pragmas = t119 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t87 ) ).
              t2->load( ).
              APPEND t115 TO t2->items.
              t2->save( ).
              t6 = t96.
              EXIT.
            ENDIF.
          ENDDO.
        ENDIF.
      ENDIF.
      t2->load( ).
      APPEND t6 TO t2->items.
      t2->save( ).
    ENDDO.
    t1->statements = t2.
    DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
  ENDMETHOD.

  METHOD build_splits.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA(t6) = VALUE f( ).
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO object.
    t1->load( ).
    READ TABLE t1->items INDEX 1 INTO t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t12 ?= t11.
      DATA t13 TYPE REF TO object.
      t13 = t12->as_ref( ).
      t9 ?= t13.
    ELSE.
      t9 ?= t11.
    ENDIF.
    t6 = t9->start->row.
    DATA t20 TYPE i.
    t20 = 0.
    DO.
      t1->load( ).
      IF xsdbool( t20 < lines( t1->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA(t31) = t20.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      t1->load( ).
      CLEAR t32.
      READ TABLE t1->items INDEX t31 INTO t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t29.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t32.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t29 ?= t34.
      ELSE.
        t29 ?= t32.
      ENDIF.
      IF xsdbool( t29->start->row <> t6 ) = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_shape_63d6a181.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t44.
        DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t49.
        t44 = t49->concat( p0 = t4 ).
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t62.
        t43 = NEW zcl_lnt_shape_63d6a181( i_first = t44 i_second = t62->concat( p0 = t1 )->splice1( p0 = t20 ) ).
        CREATE OBJECT t43->zlnt_view_ownkeys_b0e8086400eb.
        t43->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `first` p1 = t70 ).
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `second` p1 = t71 ).
        ENDIF.
        CREATE OBJECT t43->zlnt_json_ownkeys_70e5fd461788.
        t43->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |first| p1 = t73 ).
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |second| p1 = t75 ).
        ENDIF.
        t2->load( ).
        APPEND t43 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t78.
      DATA(t80) = t20.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      t1->load( ).
      CLEAR t81.
      READ TABLE t1->items INDEX t80 INTO t81.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      CLEAR t78.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t82 ?= t81.
        DATA t83 TYPE REF TO object.
        t83 = t82->as_ref( ).
        t78 ?= t83.
      ELSE.
        t78 ?= t81.
      ENDIF.
      t6 = t78->start->row.
      DATA t91 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t91.
      DATA(t93) = t20.
      t93 = t93 + 1.
      DATA t94 TYPE REF TO object.
      CLEAR t94.
      t1->load( ).
      CLEAR t94.
      READ TABLE t1->items INDEX t93 INTO t94.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      CLEAR t91.
      IF t94 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t95 ?= t94.
        DATA t96 TYPE REF TO object.
        t96 = t95->as_ref( ).
        t91 ?= t96.
      ELSE.
        t91 ?= t94.
      ENDIF.
      t4->load( ).
      APPEND t91 TO t4->items.
      t4->save( ).
      DATA(t99) = 1.
      t20 = t20 + t99.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD native_sql.
    DATA(t1) = i_wa.
    DATA t2 TYPE abap_bool.
    t2 = abap_false.
    DATA t4 TYPE i.
    t4 = 0.
    DO.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t9 = t1->statements.
      t9->load( ).
      IF xsdbool( t4 < lines( t9->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t13 = t1->statements.
      DATA(t15) = t4.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      t13->load( ).
      CLEAR t16.
      READ TABLE t13->items INDEX t15 INTO t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t12.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t16.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t12 ?= t18.
      ELSE.
        t12 ?= t16.
      ENDIF.
      t11 = t12.
      DATA t19 TYPE REF TO zif_lnt_statement.
      t19 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      t23 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_exec_sql ).
      t22 = t23.
      IF t23 = abap_false.
        DATA t25 TYPE abap_bool.
        DATA t26 TYPE abap_bool.
        t26 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        t25 = t26.
        IF t26 = abap_true.
          DATA t29 TYPE REF TO zcl_lnt_expression_node.
          DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
          t29 = t11->find_direct_expression( i_type_9913 = t31 ).
          t25 = xsdbool( t29 IS BOUND ).
        ENDIF.
        t22 = t25.
      ENDIF.
      IF t22 = abap_true.
        t2 = abap_true.
      ELSE.
        IF xsdbool( t2 = abap_true ) = abap_true.
          DATA t36 TYPE abap_bool.
          DATA t37 TYPE abap_bool.
          t37 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_end_exec ).
          t36 = t37.
          IF t37 = abap_false.
            t36 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_end_method ).
          ENDIF.
          IF t36 = abap_true.
            t2 = abap_false.
          ELSE.
            DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t42 = t1->statements.
            DATA(t47) = NEW zcl_lnt_native_sql( ).
            DATA t48 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t48.
            DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t49.
            t42->put( p0 = t4 p1 = NEW zcl_lnt_statement_node( i_statement = t47 i_colon = t48 i_pragmas = t49 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t11->get_tokens( ) ) ) ).
            DATA(t53) = VALUE abap_bool( ).
            DATA t54 TYPE string.
            DATA t55 TYPE string.
            t55 = t11->concat_tokens( ).
            DATA(t57) = strlen( t55 ).
            t54 = t55.
            IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t54 TO UPPER CASE.
            ELSE.
              t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
            ENDIF.
            DATA(t58) = |ENDMETHOD.|.
            DATA(t59) = strlen( t54 ).
            DATA t60 TYPE i.
            DATA(t61) = VALUE i( ).
            DATA(t62) = VALUE string( ).
            t60 = strlen( t58 ).
            IF t60 = 0.
              t53 = abap_true.
            ELSEIF t60 <= t59.
              t61 = 0.
              t61 = t59 - t60.
              t62 = t54+t61(t60).
              IF t62 = t58.
                t53 = abap_true.
              ENDIF.
            ENDIF.
            IF t53 = abap_true.
              DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t63 = t11->get_tokens( ).
              DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t70 TYPE i.
              DATA t71 TYPE i.
              t63->load( ).
              t71 = lines( t63->items ).
              DATA(t73) = 2.
              t70 = t71 - t73.
              t63->load( ).
              t67 = me->tokens_to_nodes( i_tokens = t63->slice2( p0 = t70 p1 = lines( t63->items ) ) ).
              DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t81 TYPE i.
              DATA t82 TYPE i.
              t63->load( ).
              t82 = lines( t63->items ).
              DATA(t84) = 2.
              t81 = t82 - t84.
              t77 = me->tokens_to_nodes( i_tokens = t63->slice2( p0 = 0 p1 = t81 ) ).
              DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t85 = t1->statements.
              DATA(t90) = NEW zcl_lnt_native_sql( ).
              DATA t91 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t91.
              DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t92.
              t85->put( p0 = t4 p1 = NEW zcl_lnt_statement_node( i_statement = t90 i_colon = t91 i_pragmas = t92 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t77 ) ).
              DATA t95 TYPE REF TO zcl_lnt_statement_node.
              DATA(t97) = NEW zcl_lnt_end_method( ).
              DATA t98 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t98.
              DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t99.
              t95 = NEW zcl_lnt_statement_node( i_statement = t97 i_colon = t98 i_pragmas = t99 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t67 ).
              DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t102 = t1->statements.
              DATA t104 TYPE i.
              DATA(t106) = 1.
              t104 = t4 + t106.
              t101 = t102->splice3( p0 = t104 p1 = 0 p2 = t95 ).
              t2 = abap_false.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t112) = 1.
      t4 = t4 + t112.
    ENDDO.
  ENDMETHOD.

  METHOD categorize.
    DATA(t1) = i_wa.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t4->load( ).
      IF t8 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t4->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      t12 = me->categorize_statement( i_input_967e = t6 ).
      t2->load( ).
      APPEND t12 TO t2->items.
      t2->save( ).
    ENDDO.
    t1->statements = t2.
    DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
  ENDMETHOD.

  METHOD categorize_statement.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_statement_node.
    t2 = t1.
    DATA t4 TYPE i.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    t8 = t1.
    t7 = t8->children.
    t6 ?= t7.
    t6->load( ).
    t4 = lines( t6->items ).
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    t12 = t1->get_last_token( ).
    DATA t15 TYPE abap_bool.
    t15 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_punctuation ).
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    t19 = xsdbool( t4 = 1 ).
    t18 = t19.
    IF t19 = abap_true.
      t18 = t15.
    ENDIF.
    IF t18 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t24 = t2->get_tokens( ).
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t2 = NEW zcl_lnt_statement_node( i_statement = NEW zcl_lnt_empty( ) i_colon = t29 i_pragmas = t30 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t24 ) ).
    ELSE.
      DATA t34 TYPE REF TO zif_lnt_statement.
      t34 = t2->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
        IF t15 = abap_true.
          t2 = me->match( i_statement = t2 ).
        ELSE.
          DATA(t41) = CONV i( zcl_lnt_sttmnt_prsr_mdl=>statement_max_tokens ).
          IF xsdbool( t4 > t41 ) = abap_true.
            t2 = t1.
          ELSE.
            DATA t43 TYPE abap_bool.
            DATA t44 TYPE abap_bool.
            t44 = xsdbool( t4 = 1 ).
            t43 = t44.
            IF t44 = abap_true.
              t43 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_pragma ).
            ENDIF.
            IF t43 = abap_true.
              DATA t50 TYPE REF TO zcl_lnt_statement_node.
              DATA(t51) = NEW zcl_lnt_empty( ).
              DATA t52 TYPE REF TO zcl_lnt_abstract_token.
              DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t56.
              DATA t59 TYPE REF TO zcl_lnt_pragma.
              t59 ?= t12.
              t56->load( ).
              APPEND t59 TO t56->items.
              t56->save( ).
              t50 = NEW zcl_lnt_statement_node( i_statement = t51 i_colon = t52 i_pragmas = t56 ).
              DATA t64 TYPE REF TO zcl_lnt_abstract_token.
              DATA t65 TYPE REF TO zcl_lnt_pragma.
              t65 ?= t12.
              t64 = t65.
              DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t68.
              DATA t74 TYPE REF TO zcl_lnt_token_node.
              t74 = NEW zcl_lnt_token_node( i_token = t64 ).
              t68->load( ).
              APPEND t74 TO t68->items.
              t68->save( ).
              t2 = t50->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t68 ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD remove_pragma.
    DATA(t1) = i_tokens.
    DATA t2 TYPE abap_bool.
    t2 = abap_false.
    DATA t4 TYPE i.
    t4 = 0.
    DO.
      DATA t8 TYPE i.
      DATA t9 TYPE i.
      t1->load( ).
      t9 = lines( t1->items ).
      DATA(t11) = 1.
      t8 = t9 - t11.
      IF xsdbool( t4 < t8 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA(t15) = t4.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      t1->load( ).
      CLEAR t16.
      READ TABLE t1->items INDEX t15 INTO t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t13.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t16.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t13 ?= t18.
      ELSE.
        t13 ?= t16.
      ENDIF.
      IF xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_pragma ) = abap_true.
        t2 = abap_true.
        EXIT.
      ENDIF.
      DATA(t22) = 1.
      t4 = t4 + t22.
    ENDDO.
    IF xsdbool( t2 = abap_false ) = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE i.
      DATA t34 TYPE i.
      t1->load( ).
      t34 = lines( t1->items ).
      DATA(t36) = 1.
      t33 = t34 - t36.
      t27 = t1->slice2( p0 = 0 p1 = t33 ).
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_sttmnt_prsr_mdl=>zlnt_builtin_init_4c34c2d2f43a = abap_false.
        zcl_lnt_sttmnt_prsr_mdl=>zlnt_builtin_init_2474d5032360( ).
      ENDIF.
      t41 = zcl_lnt_sttmnt_prsr_mdl=>empty_pragmas.
      t26 = NEW zcl_lnt_shape_c7bfd3d6( i_tokens = t27 i_pragmas = t41 ).
      CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
      t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t43 ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragmas` p1 = t44 ).
      ENDIF.
      CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
      t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokens| p1 = t46 ).
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragmas| p1 = t48 ).
      ENDIF.
      result = t26.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t53 TYPE i.
    t53 = 0.
    DO.
      DATA t57 TYPE i.
      DATA t58 TYPE i.
      t1->load( ).
      t58 = lines( t1->items ).
      DATA(t60) = 1.
      t57 = t58 - t60.
      IF xsdbool( t53 < t57 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t62.
      DATA(t64) = t53.
      t64 = t64 + 1.
      DATA t65 TYPE REF TO object.
      CLEAR t65.
      t1->load( ).
      CLEAR t65.
      READ TABLE t1->items INDEX t64 INTO t65.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t62.
      IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t65.
        DATA t67 TYPE REF TO object.
        t67 = t66->as_ref( ).
        t62 ?= t67.
      ELSE.
        t62 ?= t65.
      ENDIF.
      t61 = t62.
      IF xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_pragma ) = abap_true.
        DATA t71 TYPE REF TO zcl_lnt_pragma.
        t71 ?= t61.
        t51->load( ).
        APPEND t71 TO t51->items.
        t51->save( ).
      ELSE.
        t49->load( ).
        APPEND t61 TO t49->items.
        t49->save( ).
      ENDIF.
      DATA(t77) = 1.
      t53 = t53 + t77.
    ENDDO.
    DATA t78 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    t78 = NEW zcl_lnt_shape_c7bfd3d6( i_tokens = t49 i_pragmas = t51 ).
    CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
    t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragmas` p1 = t90 ).
    ENDIF.
    CREATE OBJECT t78->zlnt_json_ownkeys_70e5fd461788.
    t78->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokens| p1 = t92 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragmas| p1 = t94 ).
    ENDIF.
    result = t78.

  ENDMETHOD.

  METHOD match.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1->get_tokens( ).
    DATA t5 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    t5 = me->remove_pragma( i_tokens = t2 ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t5->tokens.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t11 = t5->pragmas.
    t8->load( ).
    IF xsdbool( lines( t8->items ) = 0 ) = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      result = NEW zcl_lnt_statement_node( i_statement = NEW zcl_lnt_empty( ) i_colon = t21 i_pragmas = t22 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t2 ) ).
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = zcl_lnt_statement_parser=>map.
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    DATA t31 TYPE REF TO object.
    t8->load( ).
    READ TABLE t8->items INDEX 1 INTO t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t32 ?= t31.
      DATA t33 TYPE REF TO object.
      t33 = t32->as_ref( ).
      t29 ?= t33.
    ELSE.
      t29 ?= t31.
    ENDIF.
    DATA(t34) = VALUE string( ).
    t34 = t29->str.
    t25 = t26->lookup( i_str = t34 ).
    DATA t36 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t25->load( ).
      IF t38 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t25->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA t43 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t43.
      t43 = t36->matcher.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      DATA(t48) = me->release_3664.
      CLEAR t47.
      IF t48 IS BOUND.
        DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t49.
        DATA t50 TYPE REF TO object.
        CLEAR t49.
        t50 = t48.
        TRY.
            t47 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS NOT BOUND.
          TRY.
              t49 ?= t48.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t49 IS BOUND.
            t47 = t49->source( ).
          ENDIF.
          IF t47 IS NOT BOUND.
            CREATE OBJECT t47.
            t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t47->oval = t48.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t53) = CONV string( me->language_version ).
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = t53.
      t41 = zcl_lnt_combi=>run( i_runnable = t43 i_tokens = t8 i_version_or_release = t47 i_language_version_0e1d = t54 ).
      IF xsdbool( t41 IS BOUND ) = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t59.
        DATA(t61) = VALUE i( ).
        DATA(t62) = VALUE i( ).
        t2->load( ).
        t62 = lines( t2->items ).
        DATA(t64) = 1.
        t61 = t62 - t64.
        t61 = t61 + 1.
        DATA t65 TYPE REF TO object.
        CLEAR t65.
        t2->load( ).
        CLEAR t65.
        READ TABLE t2->items INDEX t61 INTO t65.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        CLEAR t59.
        IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t66 ?= t65.
          DATA t67 TYPE REF TO object.
          t67 = t66->as_ref( ).
          t59 ?= t67.
        ELSE.
          t59 ?= t65.
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t68 = t41.
        DATA t70 TYPE REF TO zcl_lnt_token_node.
        t70 = NEW zcl_lnt_token_node( i_token = t59 ).
        t68->load( ).
        APPEND t70 TO t68->items.
        t68->save( ).
        DATA t73 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t73.
        DATA t75 TYPE REF TO zif_lnt_statement.
        CLEAR t75.
        t75 = t36->statement.
        DATA t77 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t77.
        t77 = t1->colon.
        t73 = NEW zcl_lnt_statement_node( i_statement = t75 i_colon = t77 i_pragmas = t11 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t41 ).
        DATA t90 TYPE REF TO zif_lnt_statement.
        CLEAR t90.
        t90 = t36->statement.
        result = zcl_lnt_slct_rclssfy_mdl=>reclassify_select( i_node = t73 i_stmt = t90 i_pragmas = t11 ).
        RETURN.
      ENDIF.
    ENDDO.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t93 = zcl_lnt_statement_parser=>map->lookup( i_str = || ).
    DATA t96 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    DATA t97 TYPE REF TO object.
    DATA(t98) = VALUE i( ).
    DO.
      t93->load( ).
      IF t98 >= lines( t93->items ).
        EXIT.
      ENDIF.
      CLEAR t97.
      READ TABLE t93->items INDEX t98 + 1 INTO t97.
      t98 = t98 + 1.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      CLEAR t96.
      IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t99 ?= t97.
        DATA t100 TYPE REF TO object.
        t100 = t99->as_ref( ).
        t96 ?= t100.
      ELSE.
        t96 ?= t97.
      ENDIF.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t101.
      DATA t103 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t103.
      t103 = t96->matcher.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      DATA(t108) = me->release_3664.
      CLEAR t107.
      IF t108 IS BOUND.
        DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t109.
        DATA t110 TYPE REF TO object.
        CLEAR t109.
        t110 = t108.
        TRY.
            t107 ?= t110.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS NOT BOUND.
          TRY.
              t109 ?= t108.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t109 IS BOUND.
            t107 = t109->source( ).
          ENDIF.
          IF t107 IS NOT BOUND.
            CREATE OBJECT t107.
            t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t107->oval = t108.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t113) = CONV string( me->language_version ).
      DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t114->has = abap_true.
      t114->value = t113.
      t101 = zcl_lnt_combi=>run( i_runnable = t103 i_tokens = t8 i_version_or_release = t107 i_language_version_0e1d = t114 ).
      IF xsdbool( t101 IS BOUND ) = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t119.
        DATA(t121) = VALUE i( ).
        DATA(t122) = VALUE i( ).
        t2->load( ).
        t122 = lines( t2->items ).
        DATA(t124) = 1.
        t121 = t122 - t124.
        t121 = t121 + 1.
        DATA t125 TYPE REF TO object.
        CLEAR t125.
        t2->load( ).
        CLEAR t125.
        READ TABLE t2->items INDEX t121 INTO t125.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        CLEAR t119.
        IF t125 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t126 ?= t125.
          DATA t127 TYPE REF TO object.
          t127 = t126->as_ref( ).
          t119 ?= t127.
        ELSE.
          t119 ?= t125.
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t128 = t101.
        DATA t130 TYPE REF TO zcl_lnt_token_node.
        t130 = NEW zcl_lnt_token_node( i_token = t119 ).
        t128->load( ).
        APPEND t130 TO t128->items.
        t128->save( ).
        DATA t133 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t133.
        DATA t135 TYPE REF TO zif_lnt_statement.
        CLEAR t135.
        t135 = t96->statement.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        t137 = t1->colon.
        t133 = NEW zcl_lnt_statement_node( i_statement = t135 i_colon = t137 i_pragmas = t11 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t101 ).
        DATA t150 TYPE REF TO zif_lnt_statement.
        CLEAR t150.
        t150 = t96->statement.
        result = zcl_lnt_slct_rclssfy_mdl=>reclassify_select( i_node = t133 i_stmt = t150 i_pragmas = t11 ).
        RETURN.
      ENDIF.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD process.
    DATA(t1) = i_wa.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE abap_bool.
    t8 = abap_false.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t1->tokens.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t10->load( ).
      IF t14 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t10->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_lx_comment ) = abap_true.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t19 = t1->statements.
        DATA t21 TYPE REF TO zcl_lnt_statement_node.
        DATA t22 TYPE REF TO zcl_lnt_statement_node.
        DATA(t23) = NEW zcl_lnt_st_comment( ).
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t24.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t25.
        t22 = NEW zcl_lnt_statement_node( i_statement = t23 i_colon = t24 i_pragmas = t25 ).
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zcl_lnt_lx_comment.
        t28 ?= t12.
        t27 = t28.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t31.
        DATA t37 TYPE REF TO zcl_lnt_token_node.
        t37 = NEW zcl_lnt_token_node( i_token = t27 ).
        t31->load( ).
        APPEND t37 TO t31->items.
        t31->save( ).
        t21 = t22->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t31 ).
        t19->load( ).
        APPEND t21 TO t19->items.
        t19->save( ).
        CONTINUE.
      ENDIF.
      DATA(t40) = t2.
      t40->load( ).
      APPEND t12 TO t40->items.
      t40->save( ).
      DATA t42 TYPE string.
      t42 = t12->str.
      IF xsdbool( strlen( t42 ) = 1 ) = abap_true.
        IF xsdbool( t42 = |.| ) = abap_true.
          t8 = me->native_after( i_native = t8 i_tokens = t2 i_colon = t6 ).
          DATA t60 TYPE REF TO zcl_lnt_st_work_area.
          t60 = t1.
          DATA t68 TYPE REF TO zcl_lnt_statement_node.
          DATA(t70) = NEW zcl_lnt_unknown( ).
          DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t72.
          t68 = NEW zcl_lnt_statement_node( i_statement = t70 i_colon = t6 i_pragmas = t72 ).
          DATA t73 TYPE REF TO zcl_lnt_statement_node.
          t73 = t68->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t60->tokens_to_nodes( i_tokens1 = t4 i_tokens2 = t2 ) ).
          DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t79 = t60->statements.
          t79->load( ).
          APPEND t68 TO t79->items.
          t79->save( ).
          CREATE OBJECT t2.
          CREATE OBJECT t4.
          CLEAR t6.
        ELSE.
          DATA t85 TYPE abap_bool.
          DATA t86 TYPE abap_bool.
          t86 = xsdbool( t42 = |,| ).
          t85 = t86.
          IF t86 = abap_true.
            t4->load( ).
            t85 = xsdbool( lines( t4->items ) > 0 ).
          ENDIF.
          IF t85 = abap_true.
            DATA t93 TYPE REF TO zcl_lnt_st_work_area.
            t93 = t1.
            DATA t101 TYPE REF TO zcl_lnt_statement_node.
            DATA(t103) = NEW zcl_lnt_unknown( ).
            DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t105.
            t101 = NEW zcl_lnt_statement_node( i_statement = t103 i_colon = t6 i_pragmas = t105 ).
            DATA t106 TYPE REF TO zcl_lnt_statement_node.
            t106 = t101->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t93->tokens_to_nodes( i_tokens1 = t4 i_tokens2 = t2 ) ).
            DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t112 = t93->statements.
            t112->load( ).
            APPEND t101 TO t112->items.
            t112->save( ).
            CREATE OBJECT t2.
          ELSE.
            DATA(t116) = VALUE abap_bool( ).
            DATA t117 TYPE abap_bool.
            DATA t118 TYPE abap_bool.
            t118 = xsdbool( t42 = |:| ).
            t117 = t118.
            IF t118 = abap_true.
              DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t124.
              t117 = xsdbool( t6 IS INITIAL ).
            ENDIF.
            t116 = t117.
            IF t117 = abap_true.
              t116 = xsdbool( t8 = abap_false ).
            ENDIF.
            IF t116 = abap_true.
              t6 = t12.
              DATA t135 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t135.
              DATA t137 TYPE REF TO object.
              t137 = t2->pop( ).
              DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t138.
              CLEAR t135.
              IF t137 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t138 ?= t137.
                DATA t139 TYPE REF TO object.
                t139 = t138->as_ref( ).
                t135 ?= t139.
              ELSE.
                t135 ?= t137.
              ENDIF.
              DATA(t140) = VALUE i( ).
              DATA(t141) = t2.
              DATA t142 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t142.
              DATA t143 TYPE REF TO object.
              CLEAR t143.
              DATA(t144) = VALUE i( ).
              DO.
                t141->load( ).
                IF t144 >= lines( t141->items ).
                  EXIT.
                ENDIF.
                CLEAR t143.
                READ TABLE t141->items INDEX t144 + 1 INTO t143.
                t144 = t144 + 1.
                DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t145.
                CLEAR t142.
                IF t143 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t145 ?= t143.
                  DATA t146 TYPE REF TO object.
                  t146 = t145->as_ref( ).
                  t142 ?= t146.
                ELSE.
                  t142 ?= t143.
                ENDIF.
                t4->load( ).
                APPEND t142 TO t4->items.
                t4->save( ).
              ENDDO.
              t4->load( ).
              t140 = lines( t4->items ).
              CREATE OBJECT t2.
            ELSE.
              DATA t152 TYPE abap_bool.
              DATA t153 TYPE abap_bool.
              t153 = xsdbool( t42 = |:| ).
              t152 = t153.
              IF t153 = abap_true.
                t152 = xsdbool( t8 = abap_false ).
              ENDIF.
              IF t152 = abap_true.
                DATA t159 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t159.
                DATA t161 TYPE REF TO object.
                t161 = t2->pop( ).
                DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t162.
                CLEAR t159.
                IF t161 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t162 ?= t161.
                  DATA t163 TYPE REF TO object.
                  t163 = t162->as_ref( ).
                  t159 ?= t163.
                ELSE.
                  t159 ?= t161.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    t2->load( ).
    IF xsdbool( lines( t2->items ) > 0 ) = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_st_work_area.
      t168 = t1.
      DATA t176 TYPE REF TO zcl_lnt_statement_node.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t176 = NEW zcl_lnt_statement_node( i_statement = NEW zcl_lnt_unknown( ) i_colon = t6 i_pragmas = t180 ).
      DATA t181 TYPE REF TO zcl_lnt_statement_node.
      t181 = t176->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t168->tokens_to_nodes( i_tokens1 = t4 i_tokens2 = t2 ) ).
      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t187 = t168->statements.
      t187->load( ).
      APPEND t176 TO t187->items.
      t187->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD native_after.
    DATA(t1) = i_native.
    DATA(t2) = i_tokens.
    DATA(t3) = i_colon.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t2->load( ).
      IF t14 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t2->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      IF xsdbool( xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_pragma ) = abap_false ) = abap_true.
        t9->load( ).
        APPEND t12 TO t9->items.
        t9->save( ).
      ENDIF.
    ENDDO.
    t8 = t9.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO object.
    DATA(t25) = VALUE i( ).
    DO.
      t8->load( ).
      IF t25 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t8->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      t30 = t23->str.
      DATA(t35) = strlen( t30 ).
      t29 = t30.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      t6->load( ).
      APPEND t29 TO t6->items.
      t6->save( ).
    ENDDO.
    t4 = t6.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE i.
    DATA t42 TYPE i.
    t4->load( ).
    t42 = lines( t4->items ).
    DATA(t44) = 2.
    t41 = t42 - t44.
    t39 = t4->get( p0 = t41 ).
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t48->has = abap_true.
    t48->value = |ENDEXEC|.
    t45 = t48.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = VALUE abap_bool( ).
    IF t39 IS BOUND.
      t50 = t39->has.
    ENDIF.
    IF t45 IS BOUND.
      t51 = t45->has.
    ENDIF.
    IF t50 = t51.
      IF t50 = abap_false.
        t38 = abap_true.
      ELSEIF t39->value = t45->value.
        t38 = abap_true.
      ENDIF.
    ENDIF.
    t37 = t38.
    IF t38 = abap_false.
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE i.
      DATA t56 TYPE i.
      t4->load( ).
      t56 = lines( t4->items ).
      DATA(t58) = 2.
      t55 = t56 - t58.
      t53 = t4->get( p0 = t55 ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t62->has = abap_true.
      t62->value = |ENDMETHOD|.
      t59 = t62.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      IF t53 IS BOUND.
        t64 = t53->has.
      ENDIF.
      IF t59 IS BOUND.
        t65 = t59->has.
      ENDIF.
      IF t64 = t65.
        IF t64 = abap_false.
          t52 = abap_true.
        ELSEIF t53->value = t59->value.
          t52 = abap_true.
        ENDIF.
      ENDIF.
      t37 = t52.
    ENDIF.
    IF t37 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t3 IS INITIAL ) = abap_false ) = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA(t76) = VALUE abap_bool( ).
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t78 = t4->get( p0 = 0 ).
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t84->has = abap_true.
    t84->value = |EXEC|.
    t81 = t84.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = VALUE abap_bool( ).
    IF t78 IS BOUND.
      t86 = t78->has.
    ENDIF.
    IF t81 IS BOUND.
      t87 = t81->has.
    ENDIF.
    IF t86 = t87.
      IF t86 = abap_false.
        t77 = abap_true.
      ELSEIF t78->value = t81->value.
        t77 = abap_true.
      ENDIF.
    ENDIF.
    t76 = t77.
    IF t77 = abap_true.
      DATA(t88) = VALUE abap_bool( ).
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t89 = t4->get( p0 = 1 ).
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t95->has = abap_true.
      t95->value = |SQL|.
      t92 = t95.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = VALUE abap_bool( ).
      IF t89 IS BOUND.
        t97 = t89->has.
      ENDIF.
      IF t92 IS BOUND.
        t98 = t92->has.
      ENDIF.
      IF t97 = t98.
        IF t97 = abap_false.
          t88 = abap_true.
        ELSEIF t89->value = t92->value.
          t88 = abap_true.
        ENDIF.
      ENDIF.
      t76 = t88.
    ENDIF.
    IF t76 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = VALUE abap_bool( ).
    DATA(t103) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t104 = t4->get( p0 = 0 ).
    DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t110->has = abap_true.
    t110->value = |METHOD|.
    t107 = t110.
    DATA(t112) = VALUE abap_bool( ).
    DATA(t113) = VALUE abap_bool( ).
    IF t104 IS BOUND.
      t112 = t104->has.
    ENDIF.
    IF t107 IS BOUND.
      t113 = t107->has.
    ENDIF.
    IF t112 = t113.
      IF t112 = abap_false.
        t103 = abap_true.
      ELSEIF t104->value = t107->value.
        t103 = abap_true.
      ENDIF.
    ENDIF.
    t102 = t103.
    IF t103 = abap_true.
      t102 = t4->includes( p0 = |BY| ).
    ENDIF.
    t101 = t102.
    IF t102 = abap_true.
      t101 = t4->includes( p0 = |DATABASE| ).
    ENDIF.
    t100 = t101.
    IF t101 = abap_true.
      t100 = t4->includes( p0 = |LANGUAGE| ).
    ENDIF.
    IF t100 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD tokens_to_nodes_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t7 TYPE REF TO zcl_lnt_token_node.
    t7 = NEW zcl_lnt_token_node( i_token = t1 ).
    t2->load( ).
    APPEND t7 TO t2->items.
    t2->save( ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d361_cd2f2a0b981c.
  ENDMETHOD.
ENDCLASS.
