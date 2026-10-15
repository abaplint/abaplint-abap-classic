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
      DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = |Normal|.
        DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    DATA(t13) = zcl_lnt_statement_parser=>map.
    t12 = xsdbool( t13 IS BOUND ).
    t11 = xsdbool( t12 = abap_false ).
    IF t11 = abap_true.
      DATA(t14) = NEW zcl_lnt_statement_map( ).
      zcl_lnt_statement_parser=>map = t14.
    ENDIF.
    DATA(t15) = t1.
    me->release_3664 = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
    DATA t16 TYPE string.
    DATA(t17) = t3.
    t16 = t17->value.
    me->language_version = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
    DATA(t18) = t2.
    me->reg = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_global_macros_5535.
    DATA t3 TYPE REF TO zcl_lnt_st_expand_macros.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_st_expand_macros.
    CLEAR t4.
    DATA(t5) = t2.
    DATA(t6) = me->release_3664.
    DATA(t7) = me->reg.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA(t10) = CONV string( me->language_version ).
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t10.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t8 = t12.
    ENDIF.
    t4 = NEW zcl_lnt_st_expand_macros( i_global_macros_5535 = t5 i_release_7928 = t6 i_reg_f149 = t7 i_language_version_0e1d = t8 ).
    t3 = t4.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
    DATA(t17) = t1.
    DATA t18 TYPE REF TO zcl_lnt_iabaplexer_result.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    DO.
      t17->load( ).
      IF t20 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t17->items INDEX t20 + 1 INTO t19.
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
      DATA(t23) = t15.
      DATA t24 TYPE REF TO zcl_lnt_st_work_area.
      DATA t25 TYPE REF TO zif_lnt_file.
      DATA(t26) = t18.
      t25 = t26->file.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t28) = t18.
      t27 = t28->tokens.
      t24 = NEW zcl_lnt_st_work_area( i_file = t25 i_tokens = t27 ).
      t23->load( ).
      APPEND t24 TO t23->items.
      t23->save( ).
    ENDDO.
    DATA(t29) = t15.
    t14 = t29.
    t13 = t14.
    DATA(t30) = t13.
    DATA t31 TYPE REF TO zcl_lnt_st_work_area.
    CLEAR t31.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
    DATA(t33) = VALUE i( ).
    DO.
      t30->load( ).
      IF t33 >= lines( t30->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t30->items INDEX t33 + 1 INTO t32.
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
      DATA(t36) = t31.
      me->process( i_wa = t36 ).
      DATA(t37) = t31.
      me->categorize( i_wa = t37 ).
      DATA(t38) = t3.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t40) = t31.
      t39 = t40->statements.
      DATA t41 TYPE REF TO zif_lnt_file.
      DATA(t42) = t31.
      t41 = t42->file.
      DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t43.
      t38->find_8f95( i_statements = t39 i_file = t41 i_clear_b22e = t43 ).
    ENDDO.
    DATA(t44) = t13.
    DATA t45 TYPE REF TO zcl_lnt_st_work_area.
    CLEAR t45.
    DATA t46 TYPE REF TO object.
    CLEAR t46.
    DATA(t47) = VALUE i( ).
    DO.
      t44->load( ).
      IF t47 >= lines( t44->items ).
        EXIT.
      ENDIF.
      CLEAR t46.
      READ TABLE t44->items INDEX t47 + 1 INTO t46.
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
      DATA t51 TYPE REF TO zcl_lnt_shape_df3d0820.
      DATA(t52) = t3.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t54) = t45.
      t53 = t54->statements.
      DATA t55 TYPE REF TO zif_lnt_file.
      DATA(t56) = t45.
      t55 = t56->file.
      DATA t57 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t57.
      t51 = t52->handle_macros( i_statements = t53 i_file = t55 i_seen = t57 ).
      t50 = t51.
      DATA(t58) = t45.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t60) = t50.
      t59 = t60->statements.
      t58->statements = t59.
      DELETE t58->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
      DATA t61 TYPE abap_bool.
      DATA t62 TYPE abap_bool.
      DATA(t63) = t50.
      t62 = t63->contains_unknown.
      DATA(t64) = abap_true.
      t61 = xsdbool( t62 = t64 ).
      IF t61 = abap_true.
        DATA(t65) = t45.
        me->lazy_unknown( i_wa = t65 ).
      ENDIF.
      DATA(t66) = t45.
      me->native_sql( i_wa = t66 ).
    ENDDO.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t68 = t69.
    DATA(t70) = t13.
    DATA t71 TYPE REF TO zcl_lnt_st_work_area.
    CLEAR t71.
    DATA t72 TYPE REF TO object.
    CLEAR t72.
    DATA(t73) = VALUE i( ).
    DO.
      t70->load( ).
      IF t73 >= lines( t70->items ).
        EXIT.
      ENDIF.
      CLEAR t72.
      READ TABLE t70->items INDEX t73 + 1 INTO t72.
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
      DATA(t76) = t68.
      DATA t77 TYPE REF TO zcl_lnt_istatement_result.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_st_work_area.
      DATA(t79) = t71.
      t78 = t79.
      DATA t80 TYPE REF TO zcl_lnt_istatement_result.
      DATA t81 TYPE REF TO zif_lnt_file.
      DATA t82 TYPE REF TO zif_lnt_file.
      DATA(t83) = t78.
      t82 = t83->file.
      t81 = t82.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t86) = t78.
      t85 = t86->tokens.
      t84 = t85.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t89) = t78.
      t88 = t89->statements.
      t87 = t88.
      t80 = NEW zcl_lnt_istatement_result( i_file = t81 i_tokens = t84 i_statements = t87 ).
      CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
      t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t90 ).
      ENDIF.
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
      DATA(t93) = |file|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      ENDIF.
      DATA(t95) = |tokens|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      DATA(t97) = |statements|.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
      ENDIF.
      t77 = t80.
      t76->load( ).
      APPEND t77 TO t76->items.
      t76->save( ).
    ENDDO.
    DATA(t99) = t68.
    t67 = t99.
    result = t67.

  ENDMETHOD.

  METHOD tokens_to_nodes.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
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
      DATA(t10) = t2.
      DATA t11 TYPE REF TO zcl_lnt_token_node.
      DATA(t12) = t5.
      t11 = NEW zcl_lnt_token_node( i_token = t12 ).
      t10->load( ).
      APPEND t11 TO t10->items.
      t10->save( ).
    ENDDO.
    DATA(t13) = t2.
    result = t13.

  ENDMETHOD.

  METHOD lazy_unknown.
    DATA(t1) = i_wa.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->statements.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE REF TO zif_lnt_statement.
      DATA(t13) = t6.
      t12 = t13->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_unknown ).
      IF t11 = abap_true.
        DATA(t14) = VALUE string( ).
        DATA t15 TYPE string.
        DATA t16 TYPE string.
        DATA(t17) = t6.
        t16 = t17->concat_tokens( ).
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
        DATA(t26) = t14.
        DATA(t27) = |CALL METHOD |.
        DATA(t28) = strlen( t26 ).
        DATA t29 TYPE i.
        DATA(t30) = VALUE i( ).
        DATA(t31) = VALUE string( ).
        t29 = strlen( t27 ).
        IF t29 = 0.
          t25 = abap_true.
        ELSEIF t29 <= t28.
          t30 = 0.
          t31 = t26+t30(t29).
          IF t31 = t27.
            t25 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t32) = abap_false.
        t24 = xsdbool( t25 = t32 ).
        t23 = t24.
        IF t24 = abap_true.
          DATA(t33) = VALUE abap_bool( ).
          DATA(t34) = VALUE abap_bool( ).
          DATA(t35) = t14.
          DATA(t36) = |RAISE EXCEPTION TYPE |.
          DATA(t37) = strlen( t35 ).
          DATA t38 TYPE i.
          DATA(t39) = VALUE i( ).
          DATA(t40) = VALUE string( ).
          t38 = strlen( t36 ).
          IF t38 = 0.
            t34 = abap_true.
          ELSEIF t38 <= t37.
            t39 = 0.
            t40 = t35+t39(t38).
            IF t40 = t36.
              t34 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t41) = abap_false.
          t33 = xsdbool( t34 = t41 ).
          t23 = t33.
        ENDIF.
        t22 = t23.
        IF t23 = abap_true.
          DATA(t42) = VALUE abap_bool( ).
          DATA(t43) = VALUE abap_bool( ).
          DATA(t44) = t14.
          DATA(t45) = |READ TABLE |.
          DATA(t46) = strlen( t44 ).
          DATA t47 TYPE i.
          DATA(t48) = VALUE i( ).
          DATA(t49) = VALUE string( ).
          t47 = strlen( t45 ).
          IF t47 = 0.
            t43 = abap_true.
          ELSEIF t47 <= t46.
            t48 = 0.
            t49 = t44+t48(t47).
            IF t49 = t45.
              t43 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t50) = abap_false.
          t42 = xsdbool( t43 = t50 ).
          t22 = t42.
        ENDIF.
        t21 = t22.
        IF t22 = abap_true.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = t14.
          DATA(t54) = |LOOP AT |.
          DATA(t55) = strlen( t53 ).
          DATA t56 TYPE i.
          DATA(t57) = VALUE i( ).
          DATA(t58) = VALUE string( ).
          t56 = strlen( t54 ).
          IF t56 = 0.
            t52 = abap_true.
          ELSEIF t56 <= t55.
            t57 = 0.
            t58 = t53+t57(t56).
            IF t58 = t54.
              t52 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t59) = abap_false.
          t51 = xsdbool( t52 = t59 ).
          t21 = t51.
        ENDIF.
        t20 = t21.
        IF t21 = abap_true.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = t14.
          DATA(t63) = |SELECT SINGLE |.
          DATA(t64) = strlen( t62 ).
          DATA t65 TYPE i.
          DATA(t66) = VALUE i( ).
          DATA(t67) = VALUE string( ).
          t65 = strlen( t63 ).
          IF t65 = 0.
            t61 = abap_true.
          ELSEIF t65 <= t64.
            t66 = 0.
            t67 = t62+t66(t65).
            IF t67 = t63.
              t61 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t68) = abap_false.
          t60 = xsdbool( t61 = t68 ).
          t20 = t60.
        ENDIF.
        t19 = t20.
        IF t20 = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = t14.
          DATA(t72) = |CALL FUNCTION |.
          DATA(t73) = strlen( t71 ).
          DATA t74 TYPE i.
          DATA(t75) = VALUE i( ).
          DATA(t76) = VALUE string( ).
          t74 = strlen( t72 ).
          IF t74 = 0.
            t70 = abap_true.
          ELSEIF t74 <= t73.
            t75 = 0.
            t76 = t71+t75(t74).
            IF t76 = t72.
              t70 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t77) = abap_false.
          t69 = xsdbool( t70 = t77 ).
          t19 = t69.
        ENDIF.
        IF t19 = abap_true.
          DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t80) = t6.
          t79 = t80->get_tokens( ).
          t78 = me->build_splits( i_tokens = t79 ).
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
            DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t88) = t81.
            t87 = t88->first.
            t86 = t87.
            DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t91) = t81.
            t90 = t91->second.
            t89 = t90.
            DATA t92 TYPE abap_bool.
            DATA t93 TYPE i.
            DATA(t94) = t89.
            t94->load( ).
            t93 = lines( t94->items ).
            DATA(t95) = 1.
            t92 = xsdbool( t93 = t95 ).
            IF t92 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t96 TYPE REF TO zcl_lnt_statement_node.
            DATA t97 TYPE REF TO zcl_lnt_statement_node.
            DATA t98 TYPE REF TO zcl_lnt_statement_node.
            DATA t99 TYPE REF TO zcl_lnt_statement_node.
            DATA(t100) = NEW zcl_lnt_unknown( ).
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t101.
            DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t102.
            t99 = NEW zcl_lnt_statement_node( i_statement = t100 i_colon = t101 i_pragmas = t102 ).
            DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t104) = t89.
            t103 = me->tokens_to_nodes( i_tokens = t104 ).
            t98 = t99->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t103 ).
            t97 = me->categorize_statement( i_input_967e = t98 ).
            t96 = t97.
            DATA t105 TYPE abap_bool.
            DATA t106 TYPE abap_bool.
            DATA t107 TYPE abap_bool.
            DATA t108 TYPE REF TO zif_lnt_statement.
            DATA(t109) = t96.
            t108 = t109->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t107 = xsdbool( t108 IS BOUND AND t108 IS INSTANCE OF zcl_lnt_unknown ).
            t106 = xsdbool( t107 = abap_false ).
            t105 = t106.
            IF t106 = abap_true.
              DATA t110 TYPE abap_bool.
              DATA t111 TYPE abap_bool.
              DATA t112 TYPE REF TO zif_lnt_statement.
              DATA(t113) = t96.
              t112 = t113->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_empty ).
              t110 = xsdbool( t111 = abap_false ).
              t105 = t110.
            ENDIF.
            IF t105 = abap_true.
              DATA(t114) = t2.
              DATA t115 TYPE REF TO zcl_lnt_statement_node.
              DATA t116 TYPE REF TO zcl_lnt_statement_node.
              DATA(t117) = NEW zcl_lnt_unknown( ).
              DATA t118 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t118.
              DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t119.
              t116 = NEW zcl_lnt_statement_node( i_statement = t117 i_colon = t118 i_pragmas = t119 ).
              DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t121) = t86.
              t120 = me->tokens_to_nodes( i_tokens = t121 ).
              t115 = t116->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t120 ).
              t114->load( ).
              APPEND t115 TO t114->items.
              t114->save( ).
              DATA(t122) = t96.
              t6 = t122.
              EXIT.
            ENDIF.
          ENDDO.
        ENDIF.
      ENDIF.
      DATA(t123) = t2.
      DATA(t124) = t6.
      t123->load( ).
      APPEND t124 TO t123->items.
      t123->save( ).
    ENDDO.
    DATA(t125) = t1.
    DATA(t126) = t2.
    t125->statements = t126.
    DELETE t125->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
  ENDMETHOD.

  METHOD build_splits.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = VALUE f( ).
    DATA(t7) = VALUE f( ).
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = t1.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    t10->load( ).
    CLEAR t11.
    READ TABLE t10->items INDEX 1 INTO t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    CLEAR t9.
    IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t12 ?= t11.
      DATA t13 TYPE REF TO object.
      t13 = t12->as_ref( ).
      t9 ?= t13.
    ELSE.
      t9 ?= t11.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE f.
    DATA t15 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA(t17) = t8.
    t16 = t17->start.
    t15 = t16.
    DATA t18 TYPE f.
    DATA(t19) = t15.
    t18 = t19->row.
    t14 = t18.
    t7 = t14.
    t6 = t7.
    DATA t20 TYPE i.
    DATA(t21) = 0.
    t20 = t21.
    DO.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t20.
      DATA t24 TYPE i.
      DATA(t25) = t1.
      t25->load( ).
      t24 = lines( t25->items ).
      t22 = xsdbool( t23 < t24 ).
      IF t22 = abap_false.
        EXIT.
      ENDIF.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE f( ).
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA(t30) = t1.
      DATA(t31) = t20.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      t30->load( ).
      CLEAR t32.
      READ TABLE t30->items INDEX t31 INTO t32.
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
      t28 = t29.
      DATA t35 TYPE f.
      DATA t36 TYPE REF TO zcl_lnt_position.
      DATA t37 TYPE REF TO zcl_lnt_position.
      DATA(t38) = t28.
      t37 = t38->start.
      t36 = t37.
      DATA t39 TYPE f.
      DATA(t40) = t36.
      t39 = t40->row.
      t35 = t39.
      t27 = t35.
      DATA(t41) = t6.
      t26 = xsdbool( t27 <> t41 ).
      IF t26 = abap_true.
        DATA(t42) = t2.
        DATA t43 TYPE REF TO zcl_lnt_shape_63d6a181.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t45.
        DATA(t46) = abap_true.
        IF t46 = abap_true.
          DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t49.
          t48 = t49.
          DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t52) = t48.
          DATA(t53) = t4.
          t51 = t52->concat( p0 = t53 ).
          t50 = t51.
          DATA(t54) = t50.
          t47 = t54.
          t45 = t47.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t55.
          t45 = t55.
        ENDIF.
        t44 = t45.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t56.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t57.
        DATA(t58) = abap_true.
        IF t58 = abap_true.
          DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t62.
          t61 = t62.
          DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t65) = t61.
          DATA(t66) = t1.
          t64 = t65->concat( p0 = t66 ).
          t63 = t64.
          DATA(t67) = t63.
          t60 = t67.
          DATA(t68) = t20.
          t59 = t60->splice1( p0 = t68 ).
          t57 = t59.
        ELSE.
          DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t69.
          t57 = t69.
        ENDIF.
        t56 = t57.
        t43 = NEW zcl_lnt_shape_63d6a181( i_first = t44 i_second = t56 ).
        CREATE OBJECT t43->zlnt_view_ownkeys_b0e8086400eb.
        t43->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `first` p1 = t70 ).
        ENDIF.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `second` p1 = t71 ).
        ENDIF.
        CREATE OBJECT t43->zlnt_json_ownkeys_70e5fd461788.
        t43->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t72) = |first|.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
        ENDIF.
        DATA(t74) = |second|.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
        ENDIF.
        t42->load( ).
        APPEND t43 TO t42->items.
        t42->save( ).
      ENDIF.
      DATA(t76) = VALUE f( ).
      DATA t77 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t78.
      DATA(t79) = t1.
      DATA(t80) = t20.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      t79->load( ).
      CLEAR t81.
      READ TABLE t79->items INDEX t80 INTO t81.
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
      t77 = t78.
      DATA t84 TYPE f.
      DATA t85 TYPE REF TO zcl_lnt_position.
      DATA t86 TYPE REF TO zcl_lnt_position.
      DATA(t87) = t77.
      t86 = t87->start.
      t85 = t86.
      DATA t88 TYPE f.
      DATA(t89) = t85.
      t88 = t89->row.
      t84 = t88.
      t76 = t84.
      t6 = t76.
      DATA(t90) = t4.
      DATA t91 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t91.
      DATA(t92) = t1.
      DATA(t93) = t20.
      t93 = t93 + 1.
      DATA t94 TYPE REF TO object.
      CLEAR t94.
      t92->load( ).
      CLEAR t94.
      READ TABLE t92->items INDEX t93 INTO t94.
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
      t90->load( ).
      APPEND t91 TO t90->items.
      t90->save( ).
      DATA t97 TYPE i.
      DATA(t98) = t20.
      DATA(t99) = 1.
      t97 = t98 + t99.
      t20 = t97.
    ENDDO.
    DATA(t100) = t2.
    result = t100.

  ENDMETHOD.

  METHOD native_sql.
    DATA(t1) = i_wa.
    DATA t2 TYPE abap_bool.
    DATA(t3) = abap_false.
    t2 = t3.
    DATA t4 TYPE i.
    DATA(t5) = 0.
    t4 = t5.
    DO.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t4.
      DATA t8 TYPE i.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t10) = t1.
      t9 = t10->statements.
      t9->load( ).
      t8 = lines( t9->items ).
      t6 = xsdbool( t7 < t8 ).
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = t1.
      t13 = t14->statements.
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
      DATA t20 TYPE REF TO zif_lnt_statement.
      DATA(t21) = t11.
      t20 = t21->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t19 = t20.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      DATA(t24) = t19.
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_exec_sql ).
      t22 = t23.
      IF t23 = abap_false.
        DATA t25 TYPE abap_bool.
        DATA t26 TYPE abap_bool.
        DATA(t27) = t19.
        t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        t25 = t26.
        IF t26 = abap_true.
          DATA t28 TYPE abap_bool.
          DATA t29 TYPE REF TO zcl_lnt_expression_node.
          DATA(t30) = t11.
          DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74.
          t29 = t30->find_direct_expression( i_type_9913 = t31 ).
          t28 = xsdbool( t29 IS BOUND ).
          t25 = t28.
        ENDIF.
        t22 = t25.
      ENDIF.
      IF t22 = abap_true.
        DATA(t32) = abap_true.
        t2 = t32.
      ELSE.
        DATA t33 TYPE abap_bool.
        DATA(t34) = t2.
        DATA(t35) = abap_true.
        t33 = xsdbool( t34 = t35 ).
        IF t33 = abap_true.
          DATA t36 TYPE abap_bool.
          DATA t37 TYPE abap_bool.
          DATA(t38) = t19.
          t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_end_exec ).
          t36 = t37.
          IF t37 = abap_false.
            DATA t39 TYPE abap_bool.
            DATA(t40) = t19.
            t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_end_method ).
            t36 = t39.
          ENDIF.
          IF t36 = abap_true.
            DATA(t41) = abap_false.
            t2 = t41.
          ELSE.
            DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t43) = t1.
            t42 = t43->statements.
            DATA(t44) = t4.
            DATA t45 TYPE REF TO zcl_lnt_statement_node.
            DATA t46 TYPE REF TO zcl_lnt_statement_node.
            DATA(t47) = NEW zcl_lnt_native_sql( ).
            DATA t48 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t48.
            DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t49.
            t46 = NEW zcl_lnt_statement_node( i_statement = t47 i_colon = t48 i_pragmas = t49 ).
            DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t52) = t11.
            t51 = t52->get_tokens( ).
            t50 = me->tokens_to_nodes( i_tokens = t51 ).
            t45 = t46->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t50 ).
            t42->put( p0 = t44 p1 = t45 ).
            DATA(t53) = VALUE abap_bool( ).
            DATA t54 TYPE string.
            DATA t55 TYPE string.
            DATA(t56) = t11.
            t55 = t56->concat_tokens( ).
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
              DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t65) = t11.
              t64 = t65->get_tokens( ).
              t63 = t64.
              DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t69) = t63.
              DATA t70 TYPE i.
              DATA t71 TYPE i.
              DATA(t72) = t63.
              t72->load( ).
              t71 = lines( t72->items ).
              DATA(t73) = 2.
              t70 = t71 - t73.
              DATA t74 TYPE i.
              DATA(t75) = t63.
              t75->load( ).
              t74 = lines( t75->items ).
              t68 = t69->slice2( p0 = t70 p1 = t74 ).
              t67 = me->tokens_to_nodes( i_tokens = t68 ).
              t66 = t67.
              DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t79) = t63.
              DATA(t80) = 0.
              DATA t81 TYPE i.
              DATA t82 TYPE i.
              DATA(t83) = t63.
              t83->load( ).
              t82 = lines( t83->items ).
              DATA(t84) = 2.
              t81 = t82 - t84.
              t78 = t79->slice2( p0 = t80 p1 = t81 ).
              t77 = me->tokens_to_nodes( i_tokens = t78 ).
              t76 = t77.
              DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t86) = t1.
              t85 = t86->statements.
              DATA(t87) = t4.
              DATA t88 TYPE REF TO zcl_lnt_statement_node.
              DATA t89 TYPE REF TO zcl_lnt_statement_node.
              DATA(t90) = NEW zcl_lnt_native_sql( ).
              DATA t91 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t91.
              DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t92.
              t89 = NEW zcl_lnt_statement_node( i_statement = t90 i_colon = t91 i_pragmas = t92 ).
              DATA(t93) = t76.
              t88 = t89->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t93 ).
              t85->put( p0 = t87 p1 = t88 ).
              DATA t94 TYPE REF TO zcl_lnt_statement_node.
              DATA t95 TYPE REF TO zcl_lnt_statement_node.
              DATA t96 TYPE REF TO zcl_lnt_statement_node.
              DATA(t97) = NEW zcl_lnt_end_method( ).
              DATA t98 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t98.
              DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t99.
              t96 = NEW zcl_lnt_statement_node( i_statement = t97 i_colon = t98 i_pragmas = t99 ).
              DATA(t100) = t66.
              t95 = t96->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t100 ).
              t94 = t95.
              DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t103) = t1.
              t102 = t103->statements.
              DATA t104 TYPE i.
              DATA(t105) = t4.
              DATA(t106) = 1.
              t104 = t105 + t106.
              DATA(t107) = 0.
              DATA(t108) = t94.
              t101 = t102->splice3( p0 = t104 p1 = t107 p2 = t108 ).
              DATA(t109) = abap_false.
              t2 = t109.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t110 TYPE i.
      DATA(t111) = t4.
      DATA(t112) = 1.
      t110 = t111 + t112.
      t4 = t110.
    ENDDO.
  ENDMETHOD.

  METHOD categorize.
    DATA(t1) = i_wa.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->statements.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA(t11) = t2.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      DATA(t13) = t6.
      t12 = me->categorize_statement( i_input_967e = t13 ).
      t11->load( ).
      APPEND t12 TO t11->items.
      t11->save( ).
    ENDDO.
    DATA(t14) = t1.
    DATA(t15) = t2.
    t14->statements = t15.
    DELETE t14->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
  ENDMETHOD.

  METHOD categorize_statement.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_statement_node.
    DATA(t3) = t1.
    t2 = t3.
    DATA t4 TYPE i.
    DATA t5 TYPE i.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t8.
    t10 = t11->children.
    t7 = t10.
    t6 ?= t7.
    t6->load( ).
    t5 = lines( t6->items ).
    t4 = t5.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = t1.
    t13 = t14->get_last_token( ).
    t12 = t13.
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE abap_bool.
    DATA(t17) = t12.
    t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_punctuation ).
    t15 = t16.
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t4.
    DATA(t21) = 1.
    t19 = xsdbool( t20 = t21 ).
    t18 = t19.
    IF t19 = abap_true.
      DATA(t22) = t15.
      t18 = t22.
    ENDIF.
    IF t18 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = t2.
      t24 = t25->get_tokens( ).
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_statement_node.
      DATA t27 TYPE REF TO zcl_lnt_statement_node.
      DATA(t28) = NEW zcl_lnt_empty( ).
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t30.
      t27 = NEW zcl_lnt_statement_node( i_statement = t28 i_colon = t29 i_pragmas = t30 ).
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t23.
      t31 = me->tokens_to_nodes( i_tokens = t32 ).
      t26 = t27->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t31 ).
      t2 = t26.
    ELSE.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE REF TO zif_lnt_statement.
      DATA(t35) = t2.
      t34 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_unknown ).
      IF t33 = abap_true.
        DATA(t36) = t15.
        IF t36 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_statement_node.
          DATA(t38) = t2.
          t37 = me->match( i_statement = t38 ).
          t2 = t37.
        ELSE.
          DATA t39 TYPE abap_bool.
          DATA(t40) = t4.
          DATA(t41) = CONV i( zcl_lnt_sttmnt_prsr_mdl=>statement_max_tokens ).
          t39 = xsdbool( t40 > t41 ).
          IF t39 = abap_true.
            DATA(t42) = t1.
            t2 = t42.
          ELSE.
            DATA t43 TYPE abap_bool.
            DATA t44 TYPE abap_bool.
            DATA(t45) = t4.
            DATA(t46) = 1.
            t44 = xsdbool( t45 = t46 ).
            t43 = t44.
            IF t44 = abap_true.
              DATA t47 TYPE abap_bool.
              DATA(t48) = t12.
              t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_pragma ).
              t43 = t47.
            ENDIF.
            IF t43 = abap_true.
              DATA t49 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t49.
              DATA t50 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t50.
              DATA(t51) = NEW zcl_lnt_empty( ).
              DATA t52 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t52.
              DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t53.
              DATA(t54) = abap_true.
              IF t54 = abap_true.
                DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CREATE OBJECT t57.
                t56 = t57.
                DATA(t58) = t56.
                DATA t59 TYPE REF TO zcl_lnt_pragma.
                DATA(t60) = t12.
                t59 ?= t60.
                t58->load( ).
                APPEND t59 TO t58->items.
                t58->save( ).
                DATA(t61) = t56.
                t55 = t61.
                t53 = t55.
              ELSE.
                DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t62.
                t53 = t62.
              ENDIF.
              t50 = NEW zcl_lnt_statement_node( i_statement = t51 i_colon = t52 i_pragmas = t53 ).
              DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t64 TYPE REF TO zcl_lnt_abstract_token.
              DATA t65 TYPE REF TO zcl_lnt_pragma.
              DATA(t66) = t12.
              t65 ?= t66.
              t64 = t65.
              DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t69.
              t68 = t69.
              DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t71 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t72) = t64.
              t71 = t72.
              DATA(t73) = t68.
              DATA t74 TYPE REF TO zcl_lnt_token_node.
              DATA(t75) = t71.
              t74 = NEW zcl_lnt_token_node( i_token = t75 ).
              t73->load( ).
              APPEND t74 TO t73->items.
              t73->save( ).
              DATA(t76) = t68.
              t70 = t76.
              t67 = t70.
              t63 = t67.
              t49 = t50->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t63 ).
              t2 = t49.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t77) = t2.
    result = t77.

  ENDMETHOD.

  METHOD remove_pragma.
    DATA(t1) = i_tokens.
    DATA t2 TYPE abap_bool.
    DATA(t3) = abap_false.
    t2 = t3.
    DATA t4 TYPE i.
    DATA(t5) = 0.
    t4 = t5.
    DO.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t4.
      DATA t8 TYPE i.
      DATA t9 TYPE i.
      DATA(t10) = t1.
      t10->load( ).
      t9 = lines( t10->items ).
      DATA(t11) = 1.
      t8 = t9 - t11.
      t6 = xsdbool( t7 < t8 ).
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA(t14) = t1.
      DATA(t15) = t4.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      t14->load( ).
      CLEAR t16.
      READ TABLE t14->items INDEX t15 INTO t16.
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
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_pragma ).
      IF t12 = abap_true.
        DATA(t19) = abap_true.
        t2 = t19.
        EXIT.
      ENDIF.
      DATA t20 TYPE i.
      DATA(t21) = t4.
      DATA(t22) = 1.
      t20 = t21 + t22.
      t4 = t20.
    ENDDO.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t2.
    DATA(t25) = abap_false.
    t23 = xsdbool( t24 = t25 ).
    IF t23 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t31) = t1.
        DATA(t32) = 0.
        DATA t33 TYPE i.
        DATA t34 TYPE i.
        DATA(t35) = t1.
        t35->load( ).
        t34 = lines( t35->items ).
        DATA(t36) = 1.
        t33 = t34 - t36.
        t30 = t31->slice2( p0 = t32 p1 = t33 ).
        t28 = t30.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t37.
        t28 = t37.
      ENDIF.
      t27 = t28.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t41.
        IF zcl_lnt_sttmnt_prsr_mdl=>zlnt_builtin_init_4c34c2d2f43a = abap_false.
          zcl_lnt_sttmnt_prsr_mdl=>zlnt_builtin_init_2474d5032360( ).
        ENDIF.
        t41 = zcl_lnt_sttmnt_prsr_mdl=>empty_pragmas.
        t39 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t42.
        t39 = t42.
      ENDIF.
      t38 = t39.
      t26 = NEW zcl_lnt_shape_c7bfd3d6( i_tokens = t27 i_pragmas = t38 ).
      CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
      t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t43 ).
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragmas` p1 = t44 ).
      ENDIF.
      CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
      t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t45) = |tokens|.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
      ENDIF.
      DATA(t47) = |pragmas|.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
      ENDIF.
      result = t26.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t53 TYPE i.
    DATA(t54) = 0.
    t53 = t54.
    DO.
      DATA t55 TYPE abap_bool.
      DATA(t56) = t53.
      DATA t57 TYPE i.
      DATA t58 TYPE i.
      DATA(t59) = t1.
      t59->load( ).
      t58 = lines( t59->items ).
      DATA(t60) = 1.
      t57 = t58 - t60.
      t55 = xsdbool( t56 < t57 ).
      IF t55 = abap_false.
        EXIT.
      ENDIF.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t62.
      DATA(t63) = t1.
      DATA(t64) = t53.
      t64 = t64 + 1.
      DATA t65 TYPE REF TO object.
      CLEAR t65.
      t63->load( ).
      CLEAR t65.
      READ TABLE t63->items INDEX t64 INTO t65.
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
      DATA t68 TYPE abap_bool.
      DATA(t69) = t61.
      t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_pragma ).
      IF t68 = abap_true.
        DATA(t70) = t51.
        DATA t71 TYPE REF TO zcl_lnt_pragma.
        DATA(t72) = t61.
        t71 ?= t72.
        t70->load( ).
        APPEND t71 TO t70->items.
        t70->save( ).
      ELSE.
        DATA(t73) = t49.
        DATA(t74) = t61.
        t73->load( ).
        APPEND t74 TO t73->items.
        t73->save( ).
      ENDIF.
      DATA t75 TYPE i.
      DATA(t76) = t53.
      DATA(t77) = 1.
      t75 = t76 + t77.
      t53 = t75.
    ENDDO.
    DATA t78 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    DATA(t81) = abap_true.
    IF t81 = abap_true.
      DATA(t82) = t49.
      t80 = t82.
    ELSE.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t83.
      t80 = t83.
    ENDIF.
    t79 = t80.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA(t86) = abap_true.
    IF t86 = abap_true.
      DATA(t87) = t51.
      t85 = t87.
    ELSE.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t88.
      t85 = t88.
    ENDIF.
    t84 = t85.
    t78 = NEW zcl_lnt_shape_c7bfd3d6( i_tokens = t79 i_pragmas = t84 ).
    CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
    t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t89 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    IF t78->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragmas` p1 = t90 ).
    ENDIF.
    CREATE OBJECT t78->zlnt_json_ownkeys_70e5fd461788.
    t78->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t91) = |tokens|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
    ENDIF.
    DATA(t93) = |pragmas|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t78->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
    ENDIF.
    result = t78.

  ENDMETHOD.

  METHOD match.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4->get_tokens( ).
    t2 = t3.
    DATA t5 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    CLEAR t6.
    DATA(t7) = t2.
    t6 = me->remove_pragma( i_tokens = t7 ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = t5.
    t9 = t10->tokens.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA(t13) = t5.
    t12 = t13->pragmas.
    t11 = t12.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE i( ).
    DATA(t16) = t8.
    t16->load( ).
    t15 = lines( t16->items ).
    DATA(t17) = 0.
    t14 = xsdbool( t15 = t17 ).
    IF t14 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t19.
      DATA(t20) = NEW zcl_lnt_empty( ).
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      t19 = NEW zcl_lnt_statement_node( i_statement = t20 i_colon = t21 i_pragmas = t22 ).
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      DATA(t24) = t2.
      t23 = me->tokens_to_nodes( i_tokens = t24 ).
      t18 = t19->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t23 ).
      result = t18.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA(t26) = zcl_lnt_statement_parser=>map.
    DATA(t27) = VALUE string( ).
    DATA t28 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t29.
    DATA(t30) = t8.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    t30->load( ).
    CLEAR t31.
    READ TABLE t30->items INDEX 1 INTO t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    CLEAR t29.
    IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t32 ?= t31.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      t33 = t32->as_ref( ).
      t29 ?= t33.
    ELSE.
      t29 ?= t31.
    ENDIF.
    t28 = t29.
    DATA(t34) = VALUE string( ).
    DATA(t35) = t28.
    t34 = t35->str.
    t27 = t34.
    t25 = t26->lookup( i_str = t27 ).
    DATA t36 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
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
        CLEAR t40.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t42.
      DATA t43 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t43.
      DATA t44 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t44.
      DATA(t45) = t36.
      t44 = t45->matcher.
      t43 = t44.
      DATA(t46) = t8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      DATA(t48) = me->release_3664.
      CLEAR t47.
      IF t48 IS BOUND.
        DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t49.
        DATA t50 TYPE REF TO object.
        CLEAR t50.
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
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = abap_true.
      IF t52 = abap_true.
        DATA(t53) = CONV string( me->language_version ).
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t53.
        t51 = t54.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t51 = t55.
      ENDIF.
      t42 = zcl_lnt_combi=>run( i_runnable = t43 i_tokens = t46 i_version_or_release = t47 i_language_version_0e1d = t51 ).
      t41 = t42.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t41.
      t56 = xsdbool( t57 IS BOUND ).
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t59.
        DATA(t60) = t2.
        DATA(t61) = VALUE i( ).
        DATA(t62) = VALUE i( ).
        DATA(t63) = t2.
        t63->load( ).
        t62 = lines( t63->items ).
        DATA(t64) = 1.
        t61 = t62 - t64.
        t61 = t61 + 1.
        DATA t65 TYPE REF TO object.
        CLEAR t65.
        t60->load( ).
        CLEAR t65.
        READ TABLE t60->items INDEX t61 INTO t65.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        CLEAR t59.
        IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t66 ?= t65.
          DATA t67 TYPE REF TO object.
          CLEAR t67.
          t67 = t66->as_ref( ).
          t59 ?= t67.
        ELSE.
          t59 ?= t65.
        ENDIF.
        t58 = t59.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t68.
        DATA(t69) = t41.
        t68 = t69.
        DATA t70 TYPE REF TO zcl_lnt_token_node.
        CLEAR t70.
        DATA(t71) = t58.
        t70 = NEW zcl_lnt_token_node( i_token = t71 ).
        t68->load( ).
        APPEND t70 TO t68->items.
        t68->save( ).
        DATA t72 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t73.
        DATA t74 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t74.
        DATA t75 TYPE REF TO zif_lnt_statement.
        CLEAR t75.
        DATA(t76) = t36.
        t75 = t76->statement.
        DATA t77 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t78.
        DATA(t79) = t1.
        t78 = t79.
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t80.
        DATA(t81) = t78.
        t80 = t81->colon.
        t77 = t80.
        DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t82.
        DATA(t83) = abap_true.
        IF t83 = abap_true.
          DATA(t84) = t11.
          t82 = t84.
        ELSE.
          DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t85.
          t82 = t85.
        ENDIF.
        t74 = NEW zcl_lnt_statement_node( i_statement = t75 i_colon = t77 i_pragmas = t82 ).
        DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t86.
        DATA(t87) = t41.
        t86 = t87.
        t73 = t74->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t86 ).
        t72 = t73.
        DATA t88 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t88.
        DATA(t89) = t72.
        DATA t90 TYPE REF TO zif_lnt_statement.
        CLEAR t90.
        DATA(t91) = t36.
        t90 = t91->statement.
        DATA(t92) = t11.
        t88 = zcl_lnt_slct_rclssfy_mdl=>reclassify_select( i_node = t89 i_stmt = t90 i_pragmas = t92 ).
        result = t88.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    DATA(t94) = zcl_lnt_statement_parser=>map.
    DATA(t95) = ||.
    t93 = t94->lookup( i_str = t95 ).
    DATA t96 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    CLEAR t96.
    DATA t97 TYPE REF TO object.
    CLEAR t97.
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
        CLEAR t100.
        t100 = t99->as_ref( ).
        t96 ?= t100.
      ELSE.
        t96 ?= t97.
      ENDIF.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t101.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t102.
      DATA t103 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t103.
      DATA t104 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t104.
      DATA(t105) = t96.
      t104 = t105->matcher.
      t103 = t104.
      DATA(t106) = t8.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      DATA(t108) = me->release_3664.
      CLEAR t107.
      IF t108 IS BOUND.
        DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t109.
        DATA t110 TYPE REF TO object.
        CLEAR t110.
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
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA(t113) = CONV string( me->language_version ).
        DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t114->has = abap_true.
        t114->value = t113.
        t111 = t114.
      ELSE.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t111 = t115.
      ENDIF.
      t102 = zcl_lnt_combi=>run( i_runnable = t103 i_tokens = t106 i_version_or_release = t107 i_language_version_0e1d = t111 ).
      t101 = t102.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = t101.
      t116 = xsdbool( t117 IS BOUND ).
      IF t116 = abap_true.
        DATA t118 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t118.
        DATA t119 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t119.
        DATA(t120) = t2.
        DATA(t121) = VALUE i( ).
        DATA(t122) = VALUE i( ).
        DATA(t123) = t2.
        t123->load( ).
        t122 = lines( t123->items ).
        DATA(t124) = 1.
        t121 = t122 - t124.
        t121 = t121 + 1.
        DATA t125 TYPE REF TO object.
        CLEAR t125.
        t120->load( ).
        CLEAR t125.
        READ TABLE t120->items INDEX t121 INTO t125.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        CLEAR t119.
        IF t125 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t126 ?= t125.
          DATA t127 TYPE REF TO object.
          CLEAR t127.
          t127 = t126->as_ref( ).
          t119 ?= t127.
        ELSE.
          t119 ?= t125.
        ENDIF.
        t118 = t119.
        DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t128.
        DATA(t129) = t101.
        t128 = t129.
        DATA t130 TYPE REF TO zcl_lnt_token_node.
        CLEAR t130.
        DATA(t131) = t118.
        t130 = NEW zcl_lnt_token_node( i_token = t131 ).
        t128->load( ).
        APPEND t130 TO t128->items.
        t128->save( ).
        DATA t132 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t132.
        DATA t133 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t133.
        DATA t134 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t134.
        DATA t135 TYPE REF TO zif_lnt_statement.
        CLEAR t135.
        DATA(t136) = t96.
        t135 = t136->statement.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t137.
        DATA t138 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t138.
        DATA(t139) = t1.
        t138 = t139.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t140.
        DATA(t141) = t138.
        t140 = t141->colon.
        t137 = t140.
        DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t142.
        DATA(t143) = abap_true.
        IF t143 = abap_true.
          DATA(t144) = t11.
          t142 = t144.
        ELSE.
          DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t145.
          t142 = t145.
        ENDIF.
        t134 = NEW zcl_lnt_statement_node( i_statement = t135 i_colon = t137 i_pragmas = t142 ).
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t146.
        DATA(t147) = t101.
        t146 = t147.
        t133 = t134->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t146 ).
        t132 = t133.
        DATA t148 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t148.
        DATA(t149) = t132.
        DATA t150 TYPE REF TO zif_lnt_statement.
        CLEAR t150.
        DATA(t151) = t96.
        t150 = t151->statement.
        DATA(t152) = t11.
        t148 = zcl_lnt_slct_rclssfy_mdl=>reclassify_select( i_node = t149 i_stmt = t150 i_pragmas = t152 ).
        result = t148.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t153) = t1.
    result = t153.

  ENDMETHOD.

  METHOD process.
    DATA(t1) = i_wa.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    t6 = t7.
    DATA t8 TYPE abap_bool.
    DATA(t9) = abap_false.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t1.
    t10 = t11->tokens.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
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
      DATA t17 TYPE abap_bool.
      DATA(t18) = t12.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_lx_comment ).
      IF t17 = abap_true.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t20) = t1.
        t19 = t20->statements.
        DATA t21 TYPE REF TO zcl_lnt_statement_node.
        DATA t22 TYPE REF TO zcl_lnt_statement_node.
        DATA(t23) = NEW zcl_lnt_st_comment( ).
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t24.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t25.
        t22 = NEW zcl_lnt_statement_node( i_statement = t23 i_colon = t24 i_pragmas = t25 ).
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zcl_lnt_lx_comment.
        DATA(t29) = t12.
        t28 ?= t29.
        t27 = t28.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t32.
        t31 = t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t35) = t27.
        t34 = t35.
        DATA(t36) = t31.
        DATA t37 TYPE REF TO zcl_lnt_token_node.
        DATA(t38) = t34.
        t37 = NEW zcl_lnt_token_node( i_token = t38 ).
        t36->load( ).
        APPEND t37 TO t36->items.
        t36->save( ).
        DATA(t39) = t31.
        t33 = t39.
        t30 = t33.
        t26 = t30.
        t21 = t22->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t26 ).
        t19->load( ).
        APPEND t21 TO t19->items.
        t19->save( ).
        CONTINUE.
      ENDIF.
      DATA(t40) = t2.
      DATA(t41) = t12.
      t40->load( ).
      APPEND t41 TO t40->items.
      t40->save( ).
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t12.
      t44 = t45.
      DATA t46 TYPE string.
      DATA(t47) = t44.
      t46 = t47->str.
      t43 = t46.
      t42 = t43.
      DATA t48 TYPE abap_bool.
      DATA t49 TYPE i.
      DATA(t50) = t42.
      DATA(t51) = strlen( t50 ).
      t49 = t51.
      DATA(t52) = 1.
      t48 = xsdbool( t49 = t52 ).
      IF t48 = abap_true.
        DATA t53 TYPE abap_bool.
        DATA(t54) = t42.
        DATA(t55) = |.|.
        t53 = xsdbool( t54 = t55 ).
        IF t53 = abap_true.
          DATA t56 TYPE abap_bool.
          DATA(t57) = t8.
          DATA(t58) = t2.
          DATA(t59) = t6.
          t56 = me->native_after( i_native = t57 i_tokens = t58 i_colon = t59 ).
          t8 = t56.
          DATA t60 TYPE REF TO zcl_lnt_st_work_area.
          DATA(t61) = t1.
          t60 = t61.
          DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t63) = t4.
          t62 = t63.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t65) = t2.
          t64 = t65.
          DATA t66 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t67) = t6.
          t66 = t67.
          DATA t68 TYPE REF TO zcl_lnt_statement_node.
          DATA t69 TYPE REF TO zcl_lnt_statement_node.
          DATA(t70) = NEW zcl_lnt_unknown( ).
          DATA(t71) = t66.
          DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t72.
          t69 = NEW zcl_lnt_statement_node( i_statement = t70 i_colon = t71 i_pragmas = t72 ).
          t68 = t69.
          DATA t73 TYPE REF TO zcl_lnt_statement_node.
          DATA(t74) = t68.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t76) = t60.
          DATA(t77) = t62.
          DATA(t78) = t64.
          t75 = t76->tokens_to_nodes( i_tokens1 = t77 i_tokens2 = t78 ).
          t73 = t74->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t75 ).
          DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t80) = t60.
          t79 = t80->statements.
          DATA(t81) = t68.
          t79->load( ).
          APPEND t81 TO t79->items.
          t79->save( ).
          DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t82.
          t2 = t82.
          DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t83.
          t4 = t83.
          DATA t84 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t84.
          t6 = t84.
        ELSE.
          DATA t85 TYPE abap_bool.
          DATA t86 TYPE abap_bool.
          DATA(t87) = t42.
          DATA(t88) = |,|.
          t86 = xsdbool( t87 = t88 ).
          t85 = t86.
          IF t86 = abap_true.
            DATA t89 TYPE abap_bool.
            DATA t90 TYPE i.
            DATA(t91) = t4.
            t91->load( ).
            t90 = lines( t91->items ).
            DATA(t92) = 0.
            t89 = xsdbool( t90 > t92 ).
            t85 = t89.
          ENDIF.
          IF t85 = abap_true.
            DATA t93 TYPE REF TO zcl_lnt_st_work_area.
            DATA(t94) = t1.
            t93 = t94.
            DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t96) = t4.
            t95 = t96.
            DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t98) = t2.
            t97 = t98.
            DATA t99 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t100) = t6.
            t99 = t100.
            DATA t101 TYPE REF TO zcl_lnt_statement_node.
            DATA t102 TYPE REF TO zcl_lnt_statement_node.
            DATA(t103) = NEW zcl_lnt_unknown( ).
            DATA(t104) = t99.
            DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t105.
            t102 = NEW zcl_lnt_statement_node( i_statement = t103 i_colon = t104 i_pragmas = t105 ).
            t101 = t102.
            DATA t106 TYPE REF TO zcl_lnt_statement_node.
            DATA(t107) = t101.
            DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t109) = t93.
            DATA(t110) = t95.
            DATA(t111) = t97.
            t108 = t109->tokens_to_nodes( i_tokens1 = t110 i_tokens2 = t111 ).
            t106 = t107->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t108 ).
            DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t113) = t93.
            t112 = t113->statements.
            DATA(t114) = t101.
            t112->load( ).
            APPEND t114 TO t112->items.
            t112->save( ).
            DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t115.
            t2 = t115.
          ELSE.
            DATA(t116) = VALUE abap_bool( ).
            DATA t117 TYPE abap_bool.
            DATA t118 TYPE abap_bool.
            DATA(t119) = t42.
            DATA(t120) = |:|.
            t118 = xsdbool( t119 = t120 ).
            t117 = t118.
            IF t118 = abap_true.
              DATA(t121) = VALUE abap_bool( ).
              DATA t122 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t123) = t6.
              t122 = t123.
              DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t125.
              t124 = t125.
              DATA(t126) = VALUE abap_bool( ).
              DATA(t127) = t122.
              IF t127 IS INITIAL.
                t126 = abap_true.
              ENDIF.
              t121 = t126.
              t117 = t121.
            ENDIF.
            t116 = t117.
            IF t117 = abap_true.
              DATA t128 TYPE abap_bool.
              DATA(t129) = t8.
              DATA(t130) = abap_false.
              t128 = xsdbool( t129 = t130 ).
              t116 = t128.
            ENDIF.
            IF t116 = abap_true.
              DATA t131 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t131.
              DATA(t132) = abap_true.
              IF t132 = abap_true.
                DATA(t133) = t12.
                t131 = t133.
              ELSE.
                DATA t134 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t134.
                t131 = t134.
              ENDIF.
              t6 = t131.
              DATA t135 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t135.
              DATA(t136) = t2.
              DATA t137 TYPE REF TO object.
              t137 = t136->pop( ).
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
                DATA(t147) = t4.
                DATA(t148) = t142.
                t147->load( ).
                APPEND t148 TO t147->items.
                t147->save( ).
              ENDDO.
              DATA t149 TYPE i.
              DATA(t150) = t4.
              t150->load( ).
              t149 = lines( t150->items ).
              t140 = t149.
              DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t151.
              t2 = t151.
            ELSE.
              DATA t152 TYPE abap_bool.
              DATA t153 TYPE abap_bool.
              DATA(t154) = t42.
              DATA(t155) = |:|.
              t153 = xsdbool( t154 = t155 ).
              t152 = t153.
              IF t153 = abap_true.
                DATA t156 TYPE abap_bool.
                DATA(t157) = t8.
                DATA(t158) = abap_false.
                t156 = xsdbool( t157 = t158 ).
                t152 = t156.
              ENDIF.
              IF t152 = abap_true.
                DATA t159 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t159.
                DATA(t160) = t2.
                DATA t161 TYPE REF TO object.
                t161 = t160->pop( ).
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
    DATA t164 TYPE abap_bool.
    DATA t165 TYPE i.
    DATA(t166) = t2.
    t166->load( ).
    t165 = lines( t166->items ).
    DATA(t167) = 0.
    t164 = xsdbool( t165 > t167 ).
    IF t164 = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_st_work_area.
      DATA(t169) = t1.
      t168 = t169.
      DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t171) = t4.
      t170 = t171.
      DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t173) = t2.
      t172 = t173.
      DATA t174 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t175) = t6.
      t174 = t175.
      DATA t176 TYPE REF TO zcl_lnt_statement_node.
      DATA t177 TYPE REF TO zcl_lnt_statement_node.
      DATA(t178) = NEW zcl_lnt_unknown( ).
      DATA(t179) = t174.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t180.
      t177 = NEW zcl_lnt_statement_node( i_statement = t178 i_colon = t179 i_pragmas = t180 ).
      t176 = t177.
      DATA t181 TYPE REF TO zcl_lnt_statement_node.
      DATA(t182) = t176.
      DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t184) = t168.
      DATA(t185) = t170.
      DATA(t186) = t172.
      t183 = t184->tokens_to_nodes( i_tokens1 = t185 i_tokens2 = t186 ).
      t181 = t182->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t183 ).
      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t188) = t168.
      t187 = t188->statements.
      DATA(t189) = t176.
      t187->load( ).
      APPEND t189 TO t187->items.
      t187->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD native_after.
    DATA(t1) = i_native.
    DATA(t2) = i_tokens.
    DATA(t3) = i_colon.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t2.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
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
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t12.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_pragma ).
      t17 = xsdbool( t18 = abap_false ).
      IF t17 = abap_true.
        DATA(t20) = t9.
        DATA(t21) = t12.
        t20->load( ).
        APPEND t21 TO t20->items.
        t20->save( ).
      ENDIF.
    ENDDO.
    DATA(t22) = t9.
    t8 = t22.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
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
      DATA(t28) = t6.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = t23.
      t31 = t32.
      DATA t33 TYPE string.
      DATA(t34) = t31.
      t33 = t34->str.
      t30 = t33.
      DATA(t35) = strlen( t30 ).
      t29 = t30.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      t28->load( ).
      APPEND t29 TO t28->items.
      t28->save( ).
    ENDDO.
    DATA(t36) = t6.
    t5 = t36.
    t4 = t5.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t40) = t4.
    DATA t41 TYPE i.
    DATA t42 TYPE i.
    DATA(t43) = t4.
    t43->load( ).
    t42 = lines( t43->items ).
    DATA(t44) = 2.
    t41 = t42 - t44.
    t39 = t40->get( p0 = t41 ).
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    DATA(t46) = abap_true.
    IF t46 = abap_true.
      DATA(t47) = |ENDEXEC|.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t47.
      t45 = t48.
    ELSE.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      t45 = t49.
    ENDIF.
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
      DATA(t54) = t4.
      DATA t55 TYPE i.
      DATA t56 TYPE i.
      DATA(t57) = t4.
      t57->load( ).
      t56 = lines( t57->items ).
      DATA(t58) = 2.
      t55 = t56 - t58.
      t53 = t54->get( p0 = t55 ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA(t60) = abap_true.
      IF t60 = abap_true.
        DATA(t61) = |ENDMETHOD|.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t61.
        t59 = t62.
      ELSE.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        t59 = t63.
      ENDIF.
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
      DATA(t66) = abap_false.
      result = t66.
      RETURN.
    ENDIF.
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t69) = t3.
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    t70 = t71.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = t68.
    IF t74 IS INITIAL.
      t73 = abap_true.
    ENDIF.
    t72 = xsdbool( t73 = abap_false ).
    t67 = t72.
    IF t67 = abap_true.
      DATA(t75) = t1.
      result = t75.
      RETURN.
    ENDIF.
    DATA(t76) = VALUE abap_bool( ).
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t79) = t4.
    DATA(t80) = 0.
    t78 = t79->get( p0 = t80 ).
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    DATA(t82) = abap_true.
    IF t82 = abap_true.
      DATA(t83) = |EXEC|.
      DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t84->has = abap_true.
      t84->value = t83.
      t81 = t84.
    ELSE.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      t81 = t85.
    ENDIF.
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
      DATA(t90) = t4.
      DATA(t91) = 1.
      t89 = t90->get( p0 = t91 ).
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA(t93) = abap_true.
      IF t93 = abap_true.
        DATA(t94) = |SQL|.
        DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t95->has = abap_true.
        t95->value = t94.
        t92 = t95.
      ELSE.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t92 = t96.
      ENDIF.
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
      DATA(t99) = abap_true.
      result = t99.
      RETURN.
    ENDIF.
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = VALUE abap_bool( ).
    DATA(t103) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t105) = t4.
    DATA(t106) = 0.
    t104 = t105->get( p0 = t106 ).
    DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t107.
    DATA(t108) = abap_true.
    IF t108 = abap_true.
      DATA(t109) = |METHOD|.
      DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t110->has = abap_true.
      t110->value = t109.
      t107 = t110.
    ELSE.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      t107 = t111.
    ENDIF.
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
      DATA t114 TYPE abap_bool.
      DATA(t115) = t4.
      DATA(t116) = |BY|.
      t114 = t115->includes( p0 = t116 ).
      t102 = t114.
    ENDIF.
    t101 = t102.
    IF t102 = abap_true.
      DATA t117 TYPE abap_bool.
      DATA(t118) = t4.
      DATA(t119) = |DATABASE|.
      t117 = t118->includes( p0 = t119 ).
      t101 = t117.
    ENDIF.
    t100 = t101.
    IF t101 = abap_true.
      DATA t120 TYPE abap_bool.
      DATA(t121) = t4.
      DATA(t122) = |LANGUAGE|.
      t120 = t121->includes( p0 = t122 ).
      t100 = t120.
    ENDIF.
    IF t100 = abap_true.
      DATA(t123) = abap_true.
      result = t123.
      RETURN.
    ENDIF.
    DATA(t124) = t1.
    result = t124.

  ENDMETHOD.

  METHOD tokens_to_nodes_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = t1.
    t4 = t5.
    DATA(t6) = t2.
    DATA t7 TYPE REF TO zcl_lnt_token_node.
    DATA(t8) = t4.
    t7 = NEW zcl_lnt_token_node( i_token = t8 ).
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t9) = t2.
    result = t9.

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
