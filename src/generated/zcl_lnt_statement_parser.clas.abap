* TS: src/abap/2_statements/statement_parser.ts:94:1 StatementParser
CLASS zcl_lnt_statement_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_statement_parser IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abap_release( i_release_7928 ).
    DATA(t2) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_language_version_0e1d ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA(t13) = CAST zcl_lnt_statement_map( zcl_lnt_statement_parser=>map ).
    t12 = xsdbool( t13 IS BOUND ).
    t11 = xsdbool( t12 = abap_false ).
    IF t11 = abap_true.
      DATA(t14) = NEW zcl_lnt_statement_map(  ).
      zcl_lnt_statement_parser=>map = t14.
    ENDIF.
    DATA(t15) = CAST zcl_lnt_abap_release( t1 ).
    me->release_3664 = t15.
    DATA t16 TYPE string.
    DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    t16 = t17->value.
    me->language_version = t16.
    DATA(t18) = CAST zif_lnt_registry( t2 ).
    me->reg = t18.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_input_967e ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_macros_5535 ).
    DATA t3 TYPE REF TO zcl_lnt_st_expand_macros.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_st_expand_macros.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t6) = CAST zcl_lnt_abap_release( me->release_3664 ).
    DATA(t7) = CAST zif_lnt_registry( me->reg ).
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
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t18 TYPE REF TO zcl_lnt_iabaplexer_result.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    LOOP AT t17->items INTO t19.
      t18 ?= t19.
      DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
      DATA t21 TYPE REF TO zcl_lnt_st_work_area.
      DATA t22 TYPE REF TO zif_lnt_file.
      DATA(t23) = CAST zcl_lnt_iabaplexer_result( t18 ).
      t22 = t23->file.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = CAST zcl_lnt_iabaplexer_result( t18 ).
      t24 = t25->tokens.
      t21 = NEW zcl_lnt_st_work_area( i_file = t22 i_tokens = t24 ).
      APPEND t21 TO t20->items.
    ENDLOOP.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    t14 = t26.
    t13 = t14.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t28 TYPE REF TO zcl_lnt_st_work_area.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    LOOP AT t27->items INTO t29.
      t28 ?= t29.
      DATA(t30) = CAST zcl_lnt_st_work_area( t28 ).
      me->process( i_wa = t30 ).
      DATA(t31) = CAST zcl_lnt_st_work_area( t28 ).
      me->categorize( i_wa = t31 ).
      DATA(t32) = CAST zcl_lnt_st_expand_macros( t3 ).
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = CAST zcl_lnt_st_work_area( t28 ).
      t33 = t34->statements.
      DATA t35 TYPE REF TO zif_lnt_file.
      DATA(t36) = CAST zcl_lnt_st_work_area( t28 ).
      t35 = t36->file.
      DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t37.
      t32->find_8f95( i_statements = t33 i_file = t35 i_clear_b22e = t37 ).
    ENDLOOP.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t39 TYPE REF TO zcl_lnt_st_work_area.
    CLEAR t39.
    DATA t40 TYPE REF TO object.
    CLEAR t40.
    LOOP AT t38->items INTO t40.
      t39 ?= t40.
      DATA t41 TYPE REF TO zcl_lnt_shape_df3d0820.
      DATA t42 TYPE REF TO zcl_lnt_shape_df3d0820.
      DATA(t43) = CAST zcl_lnt_st_expand_macros( t3 ).
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t45) = CAST zcl_lnt_st_work_area( t39 ).
      t44 = t45->statements.
      DATA t46 TYPE REF TO zif_lnt_file.
      DATA(t47) = CAST zcl_lnt_st_work_area( t39 ).
      t46 = t47->file.
      DATA t48 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t48.
      t42 = t43->handle_macros( i_statements = t44 i_file = t46 i_seen = t48 ).
      t41 = t42.
      DATA(t49) = CAST zcl_lnt_st_work_area( t39 ).
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t51) = CAST zcl_lnt_shape_df3d0820( t41 ).
      t50 = t51->statements.
      t49->statements = t50.
      DATA t52 TYPE abap_bool.
      DATA t53 TYPE abap_bool.
      DATA(t54) = CAST zcl_lnt_shape_df3d0820( t41 ).
      t53 = t54->contains_unknown.
      DATA(t55) = abap_true.
      t52 = xsdbool( t53 = t55 ).
      IF t52 = abap_true.
        DATA(t56) = CAST zcl_lnt_st_work_area( t39 ).
        me->lazy_unknown( i_wa = t56 ).
      ENDIF.
      DATA(t57) = CAST zcl_lnt_st_work_area( t39 ).
      me->native_sql( i_wa = t57 ).
    ENDLOOP.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    t59 = t60.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    DATA t62 TYPE REF TO zcl_lnt_st_work_area.
    CLEAR t62.
    DATA t63 TYPE REF TO object.
    CLEAR t63.
    LOOP AT t61->items INTO t63.
      t62 ?= t63.
      DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
      DATA t65 TYPE REF TO zcl_lnt_istatement_result.
      DATA t66 TYPE REF TO zcl_lnt_st_work_area.
      DATA(t67) = CAST zcl_lnt_st_work_area( t62 ).
      t66 = t67.
      DATA t68 TYPE REF TO zcl_lnt_istatement_result.
      DATA t69 TYPE REF TO zif_lnt_file.
      DATA(t70) = CAST zcl_lnt_st_work_area( t66 ).
      t69 = t70->file.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t72) = CAST zcl_lnt_st_work_area( t66 ).
      t71 = t72->tokens.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t74) = CAST zcl_lnt_st_work_area( t66 ).
      t73 = t74->statements.
      t68 = NEW zcl_lnt_istatement_result( i_file = t69 i_tokens = t71 i_statements = t73 ).
      t65 = t68.
      APPEND t65 TO t64->items.
    ENDLOOP.
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    t58 = t75.
    result = t58.

  ENDMETHOD.
  METHOD tokens_to_nodes.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t8 TYPE REF TO zcl_lnt_token_node.
      DATA(t9) = CAST zcl_lnt_abstract_token( t5 ).
      t8 = NEW zcl_lnt_token_node( i_token = t9 ).
      APPEND t8 TO t7->items.
    ENDLOOP.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t10.

  ENDMETHOD.
  METHOD lazy_unknown.
    DATA(t1) = CAST zcl_lnt_st_work_area( i_wa ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zcl_lnt_st_work_area( t1 ).
    t4 = t5->statements.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t4->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE REF TO zif_lnt_statement.
      DATA(t10) = CAST zcl_lnt_statement_node( t6 ).
      t9 = t10->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_unknown ).
      IF t8 = abap_true.
        DATA(t11) = VALUE string( ).
        DATA t12 TYPE string.
        DATA t13 TYPE string.
        DATA(t14) = CAST zcl_lnt_statement_node( t6 ).
        t13 = t14->concat_tokens(  ).
        DATA(t15) = strlen( t13 ).
        t12 = t13.
        IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t12 TO UPPER CASE.
        ELSE.
          t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
        ENDIF.
        t11 = t12.
        DATA(t16) = VALUE abap_bool( ).
        DATA(t17) = VALUE abap_bool( ).
        DATA(t18) = VALUE abap_bool( ).
        DATA(t19) = VALUE abap_bool( ).
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = VALUE abap_bool( ).
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = t11.
        DATA(t24) = |CALL METHOD |.
        DATA(t25) = strlen( t23 ).
        DATA t26 TYPE i.
        DATA(t27) = VALUE i( ).
        DATA(t28) = VALUE string( ).
        t26 = strlen( t24 ).
        IF t26 = 0.
          t22 = abap_true.
        ELSEIF t26 <= t25.
          t27 = 0.
          t28 = t23+t27(t26).
          IF t28 = t24.
            t22 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t29) = abap_false.
        t21 = xsdbool( t22 = t29 ).
        t20 = t21.
        IF t21 = abap_true.
          DATA(t30) = VALUE abap_bool( ).
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = t11.
          DATA(t33) = |RAISE EXCEPTION TYPE |.
          DATA(t34) = strlen( t32 ).
          DATA t35 TYPE i.
          DATA(t36) = VALUE i( ).
          DATA(t37) = VALUE string( ).
          t35 = strlen( t33 ).
          IF t35 = 0.
            t31 = abap_true.
          ELSEIF t35 <= t34.
            t36 = 0.
            t37 = t32+t36(t35).
            IF t37 = t33.
              t31 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t38) = abap_false.
          t30 = xsdbool( t31 = t38 ).
          t20 = t30.
        ENDIF.
        t19 = t20.
        IF t20 = abap_true.
          DATA(t39) = VALUE abap_bool( ).
          DATA(t40) = VALUE abap_bool( ).
          DATA(t41) = t11.
          DATA(t42) = |READ TABLE |.
          DATA(t43) = strlen( t41 ).
          DATA t44 TYPE i.
          DATA(t45) = VALUE i( ).
          DATA(t46) = VALUE string( ).
          t44 = strlen( t42 ).
          IF t44 = 0.
            t40 = abap_true.
          ELSEIF t44 <= t43.
            t45 = 0.
            t46 = t41+t45(t44).
            IF t46 = t42.
              t40 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t47) = abap_false.
          t39 = xsdbool( t40 = t47 ).
          t19 = t39.
        ENDIF.
        t18 = t19.
        IF t19 = abap_true.
          DATA(t48) = VALUE abap_bool( ).
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = t11.
          DATA(t51) = |LOOP AT |.
          DATA(t52) = strlen( t50 ).
          DATA t53 TYPE i.
          DATA(t54) = VALUE i( ).
          DATA(t55) = VALUE string( ).
          t53 = strlen( t51 ).
          IF t53 = 0.
            t49 = abap_true.
          ELSEIF t53 <= t52.
            t54 = 0.
            t55 = t50+t54(t53).
            IF t55 = t51.
              t49 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t56) = abap_false.
          t48 = xsdbool( t49 = t56 ).
          t18 = t48.
        ENDIF.
        t17 = t18.
        IF t18 = abap_true.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = t11.
          DATA(t60) = |SELECT SINGLE |.
          DATA(t61) = strlen( t59 ).
          DATA t62 TYPE i.
          DATA(t63) = VALUE i( ).
          DATA(t64) = VALUE string( ).
          t62 = strlen( t60 ).
          IF t62 = 0.
            t58 = abap_true.
          ELSEIF t62 <= t61.
            t63 = 0.
            t64 = t59+t63(t62).
            IF t64 = t60.
              t58 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t65) = abap_false.
          t57 = xsdbool( t58 = t65 ).
          t17 = t57.
        ENDIF.
        t16 = t17.
        IF t17 = abap_true.
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = t11.
          DATA(t69) = |CALL FUNCTION |.
          DATA(t70) = strlen( t68 ).
          DATA t71 TYPE i.
          DATA(t72) = VALUE i( ).
          DATA(t73) = VALUE string( ).
          t71 = strlen( t69 ).
          IF t71 = 0.
            t67 = abap_true.
          ELSEIF t71 <= t70.
            t72 = 0.
            t73 = t68+t72(t71).
            IF t73 = t69.
              t67 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t74) = abap_false.
          t66 = xsdbool( t67 = t74 ).
          t16 = t66.
        ENDIF.
        IF t16 = abap_true.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t77) = CAST zcl_lnt_statement_node( t6 ).
          t76 = t77->get_tokens(  ).
          t75 = me->build_splits( i_tokens = t76 ).
          DATA t78 TYPE REF TO zcl_lnt_shape_63d6a181.
          CLEAR t78.
          DATA t79 TYPE REF TO object.
          CLEAR t79.
          LOOP AT t75->items INTO t79.
            t78 ?= t79.
            DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t82) = CAST zcl_lnt_shape_63d6a181( t78 ).
            t81 = t82->first.
            t80 = t81.
            DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t85) = CAST zcl_lnt_shape_63d6a181( t78 ).
            t84 = t85->second.
            t83 = t84.
            DATA t86 TYPE abap_bool.
            DATA t87 TYPE i.
            DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t83 ).
            t87 = lines( t88->items ).
            DATA(t89) = 1.
            t86 = xsdbool( t87 = t89 ).
            IF t86 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t90 TYPE REF TO zcl_lnt_statement_node.
            DATA t91 TYPE REF TO zcl_lnt_statement_node.
            DATA t92 TYPE REF TO zcl_lnt_statement_node.
            DATA t93 TYPE REF TO zcl_lnt_statement_node.
            DATA(t94) = NEW zcl_lnt_unknown(  ).
            DATA t95 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t95.
            DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t96.
            t93 = NEW zcl_lnt_statement_node( i_statement = t94 i_colon = t95 i_pragmas = t96 ).
            DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t83 ).
            t97 = me->tokens_to_nodes( i_tokens = t98 ).
            t92 = t93->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t97 ).
            t91 = me->categorize_statement( i_input_967e = t92 ).
            t90 = t91.
            DATA t99 TYPE abap_bool.
            DATA t100 TYPE abap_bool.
            DATA t101 TYPE abap_bool.
            DATA t102 TYPE REF TO zif_lnt_statement.
            DATA(t103) = CAST zcl_lnt_statement_node( t90 ).
            t102 = t103->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
            t101 = xsdbool( t102 IS BOUND AND t102 IS INSTANCE OF zcl_lnt_unknown ).
            t100 = xsdbool( t101 = abap_false ).
            t99 = t100.
            IF t100 = abap_true.
              DATA t104 TYPE abap_bool.
              DATA t105 TYPE abap_bool.
              DATA t106 TYPE REF TO zif_lnt_statement.
              DATA(t107) = CAST zcl_lnt_statement_node( t90 ).
              t106 = t107->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
              t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_empty ).
              t104 = xsdbool( t105 = abap_false ).
              t99 = t104.
            ENDIF.
            IF t99 = abap_true.
              DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
              DATA t109 TYPE REF TO zcl_lnt_statement_node.
              DATA t110 TYPE REF TO zcl_lnt_statement_node.
              DATA(t111) = NEW zcl_lnt_unknown(  ).
              DATA t112 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t112.
              DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t113.
              t110 = NEW zcl_lnt_statement_node( i_statement = t111 i_colon = t112 i_pragmas = t113 ).
              DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
              t114 = me->tokens_to_nodes( i_tokens = t115 ).
              t109 = t110->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t114 ).
              APPEND t109 TO t108->items.
              DATA(t116) = CAST zcl_lnt_statement_node( t90 ).
              t6 = t116.
              EXIT.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDIF.
      DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t118) = CAST zcl_lnt_statement_node( t6 ).
      APPEND t118 TO t117->items.
    ENDLOOP.
    DATA(t119) = CAST zcl_lnt_st_work_area( t1 ).
    DATA(t120) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t119->statements = t120.
  ENDMETHOD.
  METHOD build_splits.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE int8.
    DATA t7 TYPE int8.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    READ TABLE t10->items INDEX 1 INTO t11.
    t9 ?= t11.
    t8 = t9.
    DATA t12 TYPE int8.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = CAST zcl_lnt_abstract_token( t8 ).
    t14 = t15->start.
    t13 = t14.
    DATA t16 TYPE int8.
    DATA(t17) = CAST zcl_lnt_position( t13 ).
    t16 = t17->row.
    t12 = t16.
    t7 = t12.
    t6 = t7.
    DATA t18 TYPE i.
    DATA(t19) = 0.
    t18 = t19.
    DO.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t18.
      DATA t22 TYPE i.
      DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t22 = lines( t23->items ).
      t20 = xsdbool( t21 < t22 ).
      IF t20 = abap_false.
        EXIT.
      ENDIF.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE int8.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t29) = t18.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      READ TABLE t28->items INDEX t29 INTO t30.
      t27 ?= t30.
      t26 = t27.
      DATA t31 TYPE int8.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA t33 TYPE REF TO zcl_lnt_position.
      DATA(t34) = CAST zcl_lnt_abstract_token( t26 ).
      t33 = t34->start.
      t32 = t33.
      DATA t35 TYPE int8.
      DATA(t36) = CAST zcl_lnt_position( t32 ).
      t35 = t36->row.
      t31 = t35.
      t25 = t31.
      DATA(t37) = t6.
      t24 = xsdbool( t25 <> t37 ).
      IF t24 = abap_true.
        DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t39 TYPE REF TO zcl_lnt_shape_63d6a181.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t44.
          t43 = t44.
          DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
          DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
          t46 = t47->concat( p0 = t48 ).
          t45 = t46.
          DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t45 ).
          t42 = t49.
          t40 = t42.
        ELSE.
          DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t50.
          t40 = t50.
        ENDIF.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        DATA(t52) = abap_true.
        IF t52 = abap_true.
          DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t56.
          t55 = t56.
          DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
          DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
          t58 = t59->concat( p0 = t60 ).
          t57 = t58.
          DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
          t54 = t61.
          DATA(t62) = t18.
          t53 = t54->splice1( p0 = t62 ).
          t51 = t53.
        ELSE.
          DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t63.
          t51 = t63.
        ENDIF.
        t39 = NEW zcl_lnt_shape_63d6a181( i_first = t40 i_second = t51 ).
        APPEND t39 TO t38->items.
      ENDIF.
      DATA t64 TYPE int8.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t68) = t18.
      t68 = t68 + 1.
      DATA t69 TYPE REF TO object.
      CLEAR t69.
      READ TABLE t67->items INDEX t68 INTO t69.
      t66 ?= t69.
      t65 = t66.
      DATA t70 TYPE int8.
      DATA t71 TYPE REF TO zcl_lnt_position.
      DATA t72 TYPE REF TO zcl_lnt_position.
      DATA(t73) = CAST zcl_lnt_abstract_token( t65 ).
      t72 = t73->start.
      t71 = t72.
      DATA t74 TYPE int8.
      DATA(t75) = CAST zcl_lnt_position( t71 ).
      t74 = t75->row.
      t70 = t74.
      t64 = t70.
      t6 = t64.
      DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      DATA t77 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t79) = t18.
      t79 = t79 + 1.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      READ TABLE t78->items INDEX t79 INTO t80.
      t77 ?= t80.
      APPEND t77 TO t76->items.
      DATA t81 TYPE i.
      DATA(t82) = t18.
      DATA(t83) = 1.
      t81 = t82 + t83.
      t18 = t81.
    ENDDO.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t84.

  ENDMETHOD.
  METHOD native_sql.
    DATA(t1) = CAST zcl_lnt_st_work_area( i_wa ).
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
      DATA(t10) = CAST zcl_lnt_st_work_area( t1 ).
      t9 = t10->statements.
      t8 = lines( t9->items ).
      t6 = xsdbool( t7 < t8 ).
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_statement_node.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = CAST zcl_lnt_st_work_area( t1 ).
      t13 = t14->statements.
      DATA(t15) = t4.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      READ TABLE t13->items INDEX t15 INTO t16.
      t12 ?= t16.
      t11 = t12.
      DATA t17 TYPE REF TO zif_lnt_statement.
      DATA t18 TYPE REF TO zif_lnt_statement.
      DATA(t19) = CAST zcl_lnt_statement_node( t11 ).
      t18 = t19->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
      t17 = t18.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE abap_bool.
      DATA(t22) = CAST zif_lnt_statement( t17 ).
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_st_exec_sql ).
      t20 = t21.
      IF t21 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE abap_bool.
        DATA(t25) = CAST zif_lnt_statement( t17 ).
        t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        t23 = t24.
        IF t24 = abap_true.
          DATA t26 TYPE abap_bool.
          DATA t27 TYPE REF TO zcl_lnt_expression_node.
          DATA(t28) = CAST zcl_lnt_statement_node( t11 ).
          DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0 ).
          t27 = t28->find_direct_expression( i_type_9913 = t29 ).
          t26 = xsdbool( t27 IS BOUND ).
          t23 = t26.
        ENDIF.
        t20 = t23.
      ENDIF.
      IF t20 = abap_true.
        DATA(t30) = abap_true.
        t2 = t30.
      ELSE.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t2.
        DATA(t33) = abap_true.
        t31 = xsdbool( t32 = t33 ).
        IF t31 = abap_true.
          DATA t34 TYPE abap_bool.
          DATA t35 TYPE abap_bool.
          DATA(t36) = CAST zif_lnt_statement( t17 ).
          t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_end_exec ).
          t34 = t35.
          IF t35 = abap_false.
            DATA t37 TYPE abap_bool.
            DATA(t38) = CAST zif_lnt_statement( t17 ).
            t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_end_method ).
            t34 = t37.
          ENDIF.
          IF t34 = abap_true.
            DATA(t39) = abap_false.
            t2 = t39.
          ELSE.
            DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t41) = CAST zcl_lnt_st_work_area( t1 ).
            t40 = t41->statements.
            DATA(t42) = t4.
            DATA t43 TYPE REF TO zcl_lnt_statement_node.
            DATA t44 TYPE REF TO zcl_lnt_statement_node.
            DATA(t45) = NEW zcl_lnt_native_sql(  ).
            DATA t46 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t46.
            DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t47.
            t44 = NEW zcl_lnt_statement_node( i_statement = t45 i_colon = t46 i_pragmas = t47 ).
            DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t50) = CAST zcl_lnt_statement_node( t11 ).
            t49 = t50->get_tokens(  ).
            t48 = me->tokens_to_nodes( i_tokens = t49 ).
            t43 = t44->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t48 ).
            t42 = t42 + 1.
            DATA t51 TYPE REF TO object.
            CLEAR t51.
            CLEAR t51.
            WHILE lines( t40->items ) < t42.
              APPEND t51 TO t40->items.
            ENDWHILE.
            MODIFY t40->items FROM t43 INDEX t42.
            DATA(t52) = VALUE abap_bool( ).
            DATA t53 TYPE string.
            DATA t54 TYPE string.
            DATA(t55) = CAST zcl_lnt_statement_node( t11 ).
            t54 = t55->concat_tokens(  ).
            DATA(t56) = strlen( t54 ).
            t53 = t54.
            IF t53 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t53 TO UPPER CASE.
            ELSE.
              t53 = zlnt_runtime_uppe_91169605024d=>full( t53 ).
            ENDIF.
            DATA(t57) = |ENDMETHOD.|.
            DATA(t58) = strlen( t53 ).
            DATA t59 TYPE i.
            DATA(t60) = VALUE i( ).
            DATA(t61) = VALUE string( ).
            t59 = strlen( t57 ).
            IF t59 = 0.
              t52 = abap_true.
            ELSEIF t59 <= t58.
              t60 = 0.
              t60 = t58 - t59.
              t61 = t53+t60(t59).
              IF t61 = t57.
                t52 = abap_true.
              ENDIF.
            ENDIF.
            IF t52 = abap_true.
              DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t64) = CAST zcl_lnt_statement_node( t11 ).
              t63 = t64->get_tokens(  ).
              t62 = t63.
              DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
              DATA t69 TYPE i.
              DATA t70 TYPE i.
              DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
              t70 = lines( t71->items ).
              DATA(t72) = 2.
              t69 = t70 - t72.
              DATA t73 TYPE i.
              DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
              t73 = lines( t74->items ).
              t67 = t68->slice2( p0 = t69 p1 = t73 ).
              t66 = me->tokens_to_nodes( i_tokens = t67 ).
              t65 = t66.
              DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
              DATA(t79) = 0.
              DATA t80 TYPE i.
              DATA t81 TYPE i.
              DATA(t82) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
              t81 = lines( t82->items ).
              DATA(t83) = 2.
              t80 = t81 - t83.
              t77 = t78->slice2( p0 = t79 p1 = t80 ).
              t76 = me->tokens_to_nodes( i_tokens = t77 ).
              t75 = t76.
              DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t85) = CAST zcl_lnt_st_work_area( t1 ).
              t84 = t85->statements.
              DATA(t86) = t4.
              DATA t87 TYPE REF TO zcl_lnt_statement_node.
              DATA t88 TYPE REF TO zcl_lnt_statement_node.
              DATA(t89) = NEW zcl_lnt_native_sql(  ).
              DATA t90 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t90.
              DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t91.
              t88 = NEW zcl_lnt_statement_node( i_statement = t89 i_colon = t90 i_pragmas = t91 ).
              DATA(t92) = CAST zlnt_runtime_arra_c22708faf2e3( t75 ).
              t87 = t88->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t92 ).
              t86 = t86 + 1.
              DATA t93 TYPE REF TO object.
              CLEAR t93.
              CLEAR t93.
              WHILE lines( t84->items ) < t86.
                APPEND t93 TO t84->items.
              ENDWHILE.
              MODIFY t84->items FROM t87 INDEX t86.
              DATA t94 TYPE REF TO zcl_lnt_statement_node.
              DATA t95 TYPE REF TO zcl_lnt_statement_node.
              DATA t96 TYPE REF TO zcl_lnt_statement_node.
              DATA(t97) = NEW zcl_lnt_end_method(  ).
              DATA t98 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t98.
              DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t99.
              t96 = NEW zcl_lnt_statement_node( i_statement = t97 i_colon = t98 i_pragmas = t99 ).
              DATA(t100) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
              t95 = t96->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t100 ).
              t94 = t95.
              DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t103) = CAST zcl_lnt_st_work_area( t1 ).
              t102 = t103->statements.
              DATA t104 TYPE i.
              DATA(t105) = t4.
              DATA(t106) = 1.
              t104 = t105 + t106.
              DATA(t107) = 0.
              DATA(t108) = CAST zcl_lnt_statement_node( t94 ).
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
    DATA(t1) = CAST zcl_lnt_st_work_area( i_wa ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zcl_lnt_st_work_area( t1 ).
    t4 = t5->statements.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t4->items INTO t7.
      t6 ?= t7.
      DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t9 TYPE REF TO zcl_lnt_statement_node.
      DATA(t10) = CAST zcl_lnt_statement_node( t6 ).
      t9 = me->categorize_statement( i_input_967e = t10 ).
      APPEND t9 TO t8->items.
    ENDLOOP.
    DATA(t11) = CAST zcl_lnt_st_work_area( t1 ).
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t11->statements = t12.
  ENDMETHOD.
  METHOD categorize_statement.
    DATA(t1) = CAST zcl_lnt_statement_node( i_input_967e ).
    DATA t2 TYPE REF TO zcl_lnt_statement_node.
    DATA(t3) = CAST zcl_lnt_statement_node( t1 ).
    t2 = t3.
    DATA t4 TYPE i.
    DATA t5 TYPE i.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t9) = CAST zcl_lnt_statement_node( t1 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = CAST zcl_lnt_abstract_node( t8 ).
    t10 = t11->children.
    t7 = t10.
    t6 ?= t7.
    t5 = lines( t6->items ).
    t4 = t5.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = CAST zcl_lnt_statement_node( t1 ).
    t13 = t14->get_last_token(  ).
    t12 = t13.
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE abap_bool.
    DATA(t17) = CAST zcl_lnt_abstract_token( t12 ).
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
      DATA(t25) = CAST zcl_lnt_statement_node( t2 ).
      t24 = t25->get_tokens(  ).
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_statement_node.
      DATA t27 TYPE REF TO zcl_lnt_statement_node.
      DATA(t28) = NEW zcl_lnt_empty(  ).
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t30.
      t27 = NEW zcl_lnt_statement_node( i_statement = t28 i_colon = t29 i_pragmas = t30 ).
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
      t31 = me->tokens_to_nodes( i_tokens = t32 ).
      t26 = t27->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t31 ).
      t2 = t26.
    ELSE.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE REF TO zif_lnt_statement.
      DATA(t35) = CAST zcl_lnt_statement_node( t2 ).
      t34 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_unknown ).
      IF t33 = abap_true.
        DATA(t36) = t15.
        IF t36 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_statement_node.
          DATA(t38) = CAST zcl_lnt_statement_node( t2 ).
          t37 = me->match( i_statement = t38 ).
          t2 = t37.
        ELSE.
          DATA t39 TYPE abap_bool.
          DATA(t40) = t4.
          DATA(t41) = CONV i( zcl_lnt_sttmnt_prsr_mdl=>statement_max_tokens ).
          t39 = xsdbool( t40 > t41 ).
          IF t39 = abap_true.
            DATA(t42) = CAST zcl_lnt_statement_node( t1 ).
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
              DATA(t48) = CAST zcl_lnt_abstract_token( t12 ).
              t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_pragma ).
              t43 = t47.
            ENDIF.
            IF t43 = abap_true.
              DATA t49 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t49.
              DATA t50 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t50.
              DATA(t51) = NEW zcl_lnt_empty(  ).
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
                DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
                DATA t59 TYPE REF TO zcl_lnt_pragma.
                DATA(t60) = CAST zcl_lnt_abstract_token( t12 ).
                t59 ?= t60.
                APPEND t59 TO t58->items.
                DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
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
              DATA(t66) = CAST zcl_lnt_abstract_token( t12 ).
              t65 ?= t66.
              t64 = t65.
              DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t69.
              t68 = t69.
              DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t71 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t72) = CAST zcl_lnt_abstract_token( t64 ).
              t71 = t72.
              DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
              DATA t74 TYPE REF TO zcl_lnt_token_node.
              DATA(t75) = CAST zcl_lnt_abstract_token( t71 ).
              t74 = NEW zcl_lnt_token_node( i_token = t75 ).
              APPEND t74 TO t73->items.
              DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
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
    DATA(t77) = CAST zcl_lnt_statement_node( t2 ).
    result = t77.

  ENDMETHOD.
  METHOD remove_pragma.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
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
      DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t9 = lines( t10->items ).
      DATA(t11) = 1.
      t8 = t9 - t11.
      t6 = xsdbool( t7 < t8 ).
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t15) = t4.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      READ TABLE t14->items INDEX t15 INTO t16.
      t13 ?= t16.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_pragma ).
      IF t12 = abap_true.
        DATA(t17) = abap_true.
        t2 = t17.
        EXIT.
      ENDIF.
      DATA t18 TYPE i.
      DATA(t19) = t4.
      DATA(t20) = 1.
      t18 = t19 + t20.
      t4 = t18.
    ENDDO.
    DATA t21 TYPE abap_bool.
    DATA(t22) = t2.
    DATA(t23) = abap_false.
    t21 = xsdbool( t22 = t23 ).
    IF t21 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA(t29) = 0.
        DATA t30 TYPE i.
        DATA t31 TYPE i.
        DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        t31 = lines( t32->items ).
        DATA(t33) = 1.
        t30 = t31 - t33.
        t27 = t28->slice2( p0 = t29 p1 = t30 ).
        t25 = t27.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t34.
        t25 = t34.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t37.
        IF zcl_lnt_sttmnt_prsr_mdl=>zlnt_builtin_init_4c34c2d2f43a = abap_false.
          zcl_lnt_sttmnt_prsr_mdl=>zlnt_builtin_init_2474d5032360( ).
        ENDIF.
        t37 = zcl_lnt_sttmnt_prsr_mdl=>empty_pragmas.
        t35 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t38.
        t35 = t38.
      ENDIF.
      t24 = NEW zcl_lnt_shape_c7bfd3d6( i_tokens = t25 i_pragmas = t35 ).
      result = t24.
      RETURN.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t41 = t42.
    DATA t43 TYPE i.
    DATA(t44) = 0.
    t43 = t44.
    DO.
      DATA t45 TYPE abap_bool.
      DATA(t46) = t43.
      DATA t47 TYPE i.
      DATA t48 TYPE i.
      DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t48 = lines( t49->items ).
      DATA(t50) = 1.
      t47 = t48 - t50.
      t45 = xsdbool( t46 < t47 ).
      IF t45 = abap_false.
        EXIT.
      ENDIF.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t54) = t43.
      t54 = t54 + 1.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      READ TABLE t53->items INDEX t54 INTO t55.
      t52 ?= t55.
      t51 = t52.
      DATA t56 TYPE abap_bool.
      DATA(t57) = CAST zcl_lnt_abstract_token( t51 ).
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_pragma ).
      IF t56 = abap_true.
        DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
        DATA t59 TYPE REF TO zcl_lnt_pragma.
        DATA(t60) = CAST zcl_lnt_abstract_token( t51 ).
        t59 ?= t60.
        APPEND t59 TO t58->items.
      ELSE.
        DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
        DATA(t62) = CAST zcl_lnt_abstract_token( t51 ).
        APPEND t62 TO t61->items.
      ENDIF.
      DATA t63 TYPE i.
      DATA(t64) = t43.
      DATA(t65) = 1.
      t63 = t64 + t65.
      t43 = t63.
    ENDDO.
    DATA t66 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA(t68) = abap_true.
    IF t68 = abap_true.
      DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
      t67 = t69.
    ELSE.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t70.
      t67 = t70.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    DATA(t72) = abap_true.
    IF t72 = abap_true.
      DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
      t71 = t73.
    ELSE.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t74.
      t71 = t74.
    ENDIF.
    t66 = NEW zcl_lnt_shape_c7bfd3d6( i_tokens = t67 i_pragmas = t71 ).
    result = t66.

  ENDMETHOD.
  METHOD match.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    t3 = t4->get_tokens(  ).
    t2 = t3.
    DATA t5 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    DATA t6 TYPE REF TO zcl_lnt_shape_c7bfd3d6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t6 = me->remove_pragma( i_tokens = t7 ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = CAST zcl_lnt_shape_c7bfd3d6( t5 ).
    t9 = t10->tokens.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = CAST zcl_lnt_shape_c7bfd3d6( t5 ).
    t12 = t13->pragmas.
    t11 = t12.
    DATA t14 TYPE abap_bool.
    DATA t15 TYPE i.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t15 = lines( t16->items ).
    DATA(t17) = 0.
    t14 = xsdbool( t15 = t17 ).
    IF t14 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      DATA t19 TYPE REF TO zcl_lnt_statement_node.
      DATA(t20) = NEW zcl_lnt_empty(  ).
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      t19 = NEW zcl_lnt_statement_node( i_statement = t20 i_colon = t21 i_pragmas = t22 ).
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t23 = me->tokens_to_nodes( i_tokens = t24 ).
      t18 = t19->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t23 ).
      result = t18.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = CAST zcl_lnt_statement_map( zcl_lnt_statement_parser=>map ).
    DATA t27 TYPE string.
    DATA t28 TYPE REF TO zcl_lnt_abstract_token.
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    READ TABLE t30->items INDEX 1 INTO t31.
    t29 ?= t31.
    t28 = t29.
    DATA t32 TYPE string.
    DATA(t33) = CAST zcl_lnt_abstract_token( t28 ).
    t32 = t33->str.
    t27 = t32.
    t25 = t26->lookup( i_str = t27 ).
    DATA t34 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    CLEAR t34.
    DATA t35 TYPE REF TO object.
    CLEAR t35.
    LOOP AT t25->items INTO t35.
      t34 ?= t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_statement_runnable.
      DATA t39 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t40) = CAST zcl_lnt_shape_1adc9d0c( t34 ).
      t39 = t40->matcher.
      t38 = t39.
      DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA(t43) = CAST zcl_lnt_abap_release( me->release_3664 ).
      IF t43 IS BOUND.
        CREATE OBJECT t42.
        t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t44 TYPE REF TO object.
        t44 = t43.
        t42->oval = t44.
      ENDIF.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t45.
      DATA(t46) = abap_true.
      IF t46 = abap_true.
        DATA(t47) = CONV string( me->language_version ).
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t47.
        t45 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t45 = t49.
      ENDIF.
      t37 = zcl_lnt_combi=>run( i_runnable = t38 i_tokens = t41 i_version_or_release = t42 i_language_version_0e1d = t45 ).
      t36 = t37.
      DATA t50 TYPE abap_bool.
      DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
      t50 = xsdbool( t51 IS BOUND ).
      IF t50 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t55 TYPE i.
        DATA t56 TYPE i.
        DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t56 = lines( t57->items ).
        DATA(t58) = 1.
        t55 = t56 - t58.
        t55 = t55 + 1.
        DATA t59 TYPE REF TO object.
        CLEAR t59.
        READ TABLE t54->items INDEX t55 INTO t59.
        t53 ?= t59.
        t52 = t53.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
        t60 = t61.
        DATA t62 TYPE REF TO zcl_lnt_token_node.
        DATA(t63) = CAST zcl_lnt_abstract_token( t52 ).
        t62 = NEW zcl_lnt_token_node( i_token = t63 ).
        APPEND t62 TO t60->items.
        DATA t64 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t66.
        DATA t67 TYPE REF TO zif_lnt_statement.
        DATA(t68) = CAST zcl_lnt_shape_1adc9d0c( t34 ).
        t67 = t68->statement.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        DATA t70 TYPE REF TO zcl_lnt_statement_node.
        DATA(t71) = CAST zcl_lnt_statement_node( t1 ).
        t70 = t71.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t73) = CAST zcl_lnt_statement_node( t70 ).
        t72 = t73->colon.
        t69 = t72.
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
          t74 = t76.
        ELSE.
          DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t77.
          t74 = t77.
        ENDIF.
        t66 = NEW zcl_lnt_statement_node( i_statement = t67 i_colon = t69 i_pragmas = t74 ).
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
        t78 = t79.
        t65 = t66->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t78 ).
        t64 = t65.
        DATA t80 TYPE REF TO zcl_lnt_statement_node.
        DATA(t81) = CAST zcl_lnt_statement_node( t64 ).
        DATA t82 TYPE REF TO zif_lnt_statement.
        DATA(t83) = CAST zcl_lnt_shape_1adc9d0c( t34 ).
        t82 = t83->statement.
        DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
        t80 = zcl_lnt_slct_rclssfy_mdl=>reclassify_select( i_node = t81 i_stmt = t82 i_pragmas = t84 ).
        result = t80.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t86) = CAST zcl_lnt_statement_map( zcl_lnt_statement_parser=>map ).
    DATA(t87) = ||.
    t85 = t86->lookup( i_str = t87 ).
    DATA t88 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    CLEAR t88.
    DATA t89 TYPE REF TO object.
    CLEAR t89.
    LOOP AT t85->items INTO t89.
      t88 ?= t89.
      DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t91.
      DATA t92 TYPE REF TO zif_lnt_statement_runnable.
      DATA t93 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t94) = CAST zcl_lnt_shape_1adc9d0c( t88 ).
      t93 = t94->matcher.
      t92 = t93.
      DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      DATA(t97) = CAST zcl_lnt_abap_release( me->release_3664 ).
      IF t97 IS BOUND.
        CREATE OBJECT t96.
        t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t98 TYPE REF TO object.
        t98 = t97.
        t96->oval = t98.
      ENDIF.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA(t100) = abap_true.
      IF t100 = abap_true.
        DATA(t101) = CONV string( me->language_version ).
        DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t102->has = abap_true.
        t102->value = t101.
        t99 = t102.
      ELSE.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t103.
        t99 = t103.
      ENDIF.
      t91 = zcl_lnt_combi=>run( i_runnable = t92 i_tokens = t95 i_version_or_release = t96 i_language_version_0e1d = t99 ).
      t90 = t91.
      DATA t104 TYPE abap_bool.
      DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
      t104 = xsdbool( t105 IS BOUND ).
      IF t104 = abap_true.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t109 TYPE i.
        DATA t110 TYPE i.
        DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t110 = lines( t111->items ).
        DATA(t112) = 1.
        t109 = t110 - t112.
        t109 = t109 + 1.
        DATA t113 TYPE REF TO object.
        CLEAR t113.
        READ TABLE t108->items INDEX t109 INTO t113.
        t107 ?= t113.
        t106 = t107.
        DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
        t114 = t115.
        DATA t116 TYPE REF TO zcl_lnt_token_node.
        DATA(t117) = CAST zcl_lnt_abstract_token( t106 ).
        t116 = NEW zcl_lnt_token_node( i_token = t117 ).
        APPEND t116 TO t114->items.
        DATA t118 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t118.
        DATA t119 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t120.
        DATA t121 TYPE REF TO zif_lnt_statement.
        DATA(t122) = CAST zcl_lnt_shape_1adc9d0c( t88 ).
        t121 = t122->statement.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        DATA t124 TYPE REF TO zcl_lnt_statement_node.
        DATA(t125) = CAST zcl_lnt_statement_node( t1 ).
        t124 = t125.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t127) = CAST zcl_lnt_statement_node( t124 ).
        t126 = t127->colon.
        t123 = t126.
        DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
          t128 = t130.
        ELSE.
          DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t131.
          t128 = t131.
        ENDIF.
        t120 = NEW zcl_lnt_statement_node( i_statement = t121 i_colon = t123 i_pragmas = t128 ).
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t90 ).
        t132 = t133.
        t119 = t120->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t132 ).
        t118 = t119.
        DATA t134 TYPE REF TO zcl_lnt_statement_node.
        DATA(t135) = CAST zcl_lnt_statement_node( t118 ).
        DATA t136 TYPE REF TO zif_lnt_statement.
        DATA(t137) = CAST zcl_lnt_shape_1adc9d0c( t88 ).
        t136 = t137->statement.
        DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
        t134 = zcl_lnt_slct_rclssfy_mdl=>reclassify_select( i_node = t135 i_stmt = t136 i_pragmas = t138 ).
        result = t134.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t139) = CAST zcl_lnt_statement_node( t1 ).
    result = t139.

  ENDMETHOD.
  METHOD process.
    DATA(t1) = CAST zcl_lnt_st_work_area( i_wa ).
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
    DATA(t11) = CAST zcl_lnt_st_work_area( t1 ).
    t10 = t11->tokens.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    LOOP AT t10->items INTO t13.
      t12 ?= t13.
      DATA t14 TYPE abap_bool.
      DATA(t15) = CAST zcl_lnt_abstract_token( t12 ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_lx_comment ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t17) = CAST zcl_lnt_st_work_area( t1 ).
        t16 = t17->statements.
        DATA t18 TYPE REF TO zcl_lnt_statement_node.
        DATA t19 TYPE REF TO zcl_lnt_statement_node.
        DATA(t20) = NEW zcl_lnt_st_comment(  ).
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t22.
        t19 = NEW zcl_lnt_statement_node( i_statement = t20 i_colon = t21 i_pragmas = t22 ).
        DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_lx_comment.
        DATA(t26) = CAST zcl_lnt_abstract_token( t12 ).
        t25 ?= t26.
        t24 = t25.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t29.
        t28 = t29.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t32) = CAST zcl_lnt_abstract_token( t24 ).
        t31 = t32.
        DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
        DATA t34 TYPE REF TO zcl_lnt_token_node.
        DATA(t35) = CAST zcl_lnt_abstract_token( t31 ).
        t34 = NEW zcl_lnt_token_node( i_token = t35 ).
        APPEND t34 TO t33->items.
        DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
        t30 = t36.
        t27 = t30.
        t23 = t27.
        t18 = t19->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t23 ).
        APPEND t18 TO t16->items.
        CONTINUE.
      ENDIF.
      DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t38) = CAST zcl_lnt_abstract_token( t12 ).
      APPEND t38 TO t37->items.
      DATA t39 TYPE string.
      DATA t40 TYPE string.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = CAST zcl_lnt_abstract_token( t12 ).
      t41 = t42.
      DATA t43 TYPE string.
      DATA(t44) = CAST zcl_lnt_abstract_token( t41 ).
      t43 = t44->str.
      t40 = t43.
      t39 = t40.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE i.
      DATA(t47) = t39.
      DATA(t48) = strlen( t47 ).
      t46 = t48.
      DATA(t49) = 1.
      t45 = xsdbool( t46 = t49 ).
      IF t45 = abap_true.
        DATA t50 TYPE abap_bool.
        DATA(t51) = t39.
        DATA(t52) = |.|.
        t50 = xsdbool( t51 = t52 ).
        IF t50 = abap_true.
          DATA t53 TYPE abap_bool.
          DATA(t54) = t8.
          DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t56) = CAST zcl_lnt_abstract_token( t6 ).
          t53 = me->native_after( i_native = t54 i_tokens = t55 i_colon = t56 ).
          t8 = t53.
          DATA t57 TYPE REF TO zcl_lnt_st_work_area.
          DATA(t58) = CAST zcl_lnt_st_work_area( t1 ).
          t57 = t58.
          DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
          t59 = t60.
          DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          t61 = t62.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t64) = CAST zcl_lnt_abstract_token( t6 ).
          t63 = t64.
          DATA t65 TYPE REF TO zcl_lnt_statement_node.
          DATA t66 TYPE REF TO zcl_lnt_statement_node.
          DATA(t67) = NEW zcl_lnt_unknown(  ).
          DATA(t68) = CAST zcl_lnt_abstract_token( t63 ).
          DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t69.
          t66 = NEW zcl_lnt_statement_node( i_statement = t67 i_colon = t68 i_pragmas = t69 ).
          t65 = t66.
          DATA t70 TYPE REF TO zcl_lnt_statement_node.
          DATA(t71) = CAST zcl_lnt_statement_node( t65 ).
          DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t73) = CAST zcl_lnt_st_work_area( t57 ).
          DATA(t74) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
          DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t61 ).
          t72 = t73->tokens_to_nodes( i_tokens1 = t74 i_tokens2 = t75 ).
          t70 = t71->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t72 ).
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t77) = CAST zcl_lnt_st_work_area( t57 ).
          t76 = t77->statements.
          DATA(t78) = CAST zcl_lnt_statement_node( t65 ).
          APPEND t78 TO t76->items.
          DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t79.
          t2 = t79.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t80.
          t4 = t80.
          DATA t81 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t81.
          t6 = t81.
        ELSE.
          DATA t82 TYPE abap_bool.
          DATA t83 TYPE abap_bool.
          DATA(t84) = t39.
          DATA(t85) = |,|.
          t83 = xsdbool( t84 = t85 ).
          t82 = t83.
          IF t83 = abap_true.
            DATA t86 TYPE abap_bool.
            DATA t87 TYPE i.
            DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
            t87 = lines( t88->items ).
            DATA(t89) = 0.
            t86 = xsdbool( t87 > t89 ).
            t82 = t86.
          ENDIF.
          IF t82 = abap_true.
            DATA t90 TYPE REF TO zcl_lnt_st_work_area.
            DATA(t91) = CAST zcl_lnt_st_work_area( t1 ).
            t90 = t91.
            DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t93) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
            t92 = t93.
            DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            t94 = t95.
            DATA t96 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t97) = CAST zcl_lnt_abstract_token( t6 ).
            t96 = t97.
            DATA t98 TYPE REF TO zcl_lnt_statement_node.
            DATA t99 TYPE REF TO zcl_lnt_statement_node.
            DATA(t100) = NEW zcl_lnt_unknown(  ).
            DATA(t101) = CAST zcl_lnt_abstract_token( t96 ).
            DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t102.
            t99 = NEW zcl_lnt_statement_node( i_statement = t100 i_colon = t101 i_pragmas = t102 ).
            t98 = t99.
            DATA t103 TYPE REF TO zcl_lnt_statement_node.
            DATA(t104) = CAST zcl_lnt_statement_node( t98 ).
            DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t106) = CAST zcl_lnt_st_work_area( t90 ).
            DATA(t107) = CAST zlnt_runtime_arra_c22708faf2e3( t92 ).
            DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t94 ).
            t105 = t106->tokens_to_nodes( i_tokens1 = t107 i_tokens2 = t108 ).
            t103 = t104->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t105 ).
            DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t110) = CAST zcl_lnt_st_work_area( t90 ).
            t109 = t110->statements.
            DATA(t111) = CAST zcl_lnt_statement_node( t98 ).
            APPEND t111 TO t109->items.
            DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t112.
            t2 = t112.
          ELSE.
            DATA(t113) = VALUE abap_bool( ).
            DATA t114 TYPE abap_bool.
            DATA t115 TYPE abap_bool.
            DATA(t116) = t39.
            DATA(t117) = |:|.
            t115 = xsdbool( t116 = t117 ).
            t114 = t115.
            IF t115 = abap_true.
              DATA(t118) = VALUE abap_bool( ).
              DATA t119 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t120) = CAST zcl_lnt_abstract_token( t6 ).
              t119 = t120.
              DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t122.
              t121 = t122.
              DATA(t123) = VALUE abap_bool( ).
              DATA(t124) = CAST zcl_lnt_abstract_token( t119 ).
              IF t124 IS INITIAL.
                t123 = abap_true.
              ENDIF.
              t118 = t123.
              t114 = t118.
            ENDIF.
            t113 = t114.
            IF t114 = abap_true.
              DATA t125 TYPE abap_bool.
              DATA(t126) = t8.
              DATA(t127) = abap_false.
              t125 = xsdbool( t126 = t127 ).
              t113 = t125.
            ENDIF.
            IF t113 = abap_true.
              DATA t128 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t128.
              DATA(t129) = abap_true.
              IF t129 = abap_true.
                DATA(t130) = CAST zcl_lnt_abstract_token( t12 ).
                t128 = t130.
              ELSE.
                DATA t131 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t131.
                t128 = t131.
              ENDIF.
              t6 = t128.
              DATA t132 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
              DATA t134 TYPE REF TO object.
              t134 = t133->pop(  ).
              t132 ?= t134.
              DATA(t135) = VALUE i( ).
              DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
              DATA t137 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t137.
              DATA t138 TYPE REF TO object.
              CLEAR t138.
              LOOP AT t136->items INTO t138.
                t137 ?= t138.
                DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
                DATA(t140) = CAST zcl_lnt_abstract_token( t137 ).
                APPEND t140 TO t139->items.
              ENDLOOP.
              DATA t141 TYPE i.
              DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
              t141 = lines( t142->items ).
              t135 = t141.
              DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t143.
              t2 = t143.
            ELSE.
              DATA t144 TYPE abap_bool.
              DATA t145 TYPE abap_bool.
              DATA(t146) = t39.
              DATA(t147) = |:|.
              t145 = xsdbool( t146 = t147 ).
              t144 = t145.
              IF t145 = abap_true.
                DATA t148 TYPE abap_bool.
                DATA(t149) = t8.
                DATA(t150) = abap_false.
                t148 = xsdbool( t149 = t150 ).
                t144 = t148.
              ENDIF.
              IF t144 = abap_true.
                DATA t151 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
                DATA t153 TYPE REF TO object.
                t153 = t152->pop(  ).
                t151 ?= t153.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t154 TYPE abap_bool.
    DATA t155 TYPE i.
    DATA(t156) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t155 = lines( t156->items ).
    DATA(t157) = 0.
    t154 = xsdbool( t155 > t157 ).
    IF t154 = abap_true.
      DATA t158 TYPE REF TO zcl_lnt_st_work_area.
      DATA(t159) = CAST zcl_lnt_st_work_area( t1 ).
      t158 = t159.
      DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t161) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      t160 = t161.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t162 = t163.
      DATA t164 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t165) = CAST zcl_lnt_abstract_token( t6 ).
      t164 = t165.
      DATA t166 TYPE REF TO zcl_lnt_statement_node.
      DATA t167 TYPE REF TO zcl_lnt_statement_node.
      DATA(t168) = NEW zcl_lnt_unknown(  ).
      DATA(t169) = CAST zcl_lnt_abstract_token( t164 ).
      DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t170.
      t167 = NEW zcl_lnt_statement_node( i_statement = t168 i_colon = t169 i_pragmas = t170 ).
      t166 = t167.
      DATA t171 TYPE REF TO zcl_lnt_statement_node.
      DATA(t172) = CAST zcl_lnt_statement_node( t166 ).
      DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t174) = CAST zcl_lnt_st_work_area( t158 ).
      DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t160 ).
      DATA(t176) = CAST zlnt_runtime_arra_c22708faf2e3( t162 ).
      t173 = t174->tokens_to_nodes( i_tokens1 = t175 i_tokens2 = t176 ).
      t171 = t172->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = t173 ).
      DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t178) = CAST zcl_lnt_st_work_area( t158 ).
      t177 = t178->statements.
      DATA(t179) = CAST zcl_lnt_statement_node( t166 ).
      APPEND t179 TO t177->items.
    ENDIF.
  ENDMETHOD.
  METHOD native_after.
    DATA(t1) = i_native.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t3) = CAST zcl_lnt_abstract_token( i_colon ).
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
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    LOOP AT t11->items INTO t13.
      t12 ?= t13.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zcl_lnt_abstract_token( t12 ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_pragma ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
        DATA(t18) = CAST zcl_lnt_abstract_token( t12 ).
        APPEND t18 TO t17->items.
      ENDIF.
    ENDLOOP.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t8 = t19.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t8->items INTO t21.
      t20 ?= t21.
      DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t6 ).
      DATA t23 TYPE string.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t26) = CAST zcl_lnt_abstract_token( t20 ).
      t25 = t26.
      DATA t27 TYPE string.
      DATA(t28) = CAST zcl_lnt_abstract_token( t25 ).
      t27 = t28->str.
      t24 = t27.
      DATA(t29) = strlen( t24 ).
      t23 = t24.
      IF t23 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t23 TO UPPER CASE.
      ELSE.
        t23 = zlnt_runtime_uppe_91169605024d=>full( t23 ).
      ENDIF.
      APPEND t23 TO t22->items.
    ENDLOOP.
    DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t6 ).
    t5 = t30.
    t4 = t5.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    DATA(t33) = VALUE string( ).
    DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    DATA t35 TYPE i.
    DATA t36 TYPE i.
    DATA(t37) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    t36 = lines( t37->items ).
    DATA(t38) = 2.
    t35 = t36 - t38.
    t35 = t35 + 1.
    READ TABLE t34->items INDEX t35 INTO t33.
    DATA(t39) = |ENDEXEC|.
    t32 = xsdbool( t33 = t39 ).
    t31 = t32.
    IF t32 = abap_false.
      DATA t40 TYPE abap_bool.
      DATA(t41) = VALUE string( ).
      DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      DATA t43 TYPE i.
      DATA t44 TYPE i.
      DATA(t45) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      t44 = lines( t45->items ).
      DATA(t46) = 2.
      t43 = t44 - t46.
      t43 = t43 + 1.
      READ TABLE t42->items INDEX t43 INTO t41.
      DATA(t47) = |ENDMETHOD|.
      t40 = xsdbool( t41 = t47 ).
      t31 = t40.
    ENDIF.
    IF t31 = abap_true.
      DATA(t48) = abap_false.
      result = t48.
      RETURN.
    ENDIF.
    DATA(t49) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t51) = CAST zcl_lnt_abstract_token( t3 ).
    t50 = t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    t52 = t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = CAST zcl_lnt_abstract_token( t50 ).
    IF t56 IS INITIAL.
      t55 = abap_true.
    ENDIF.
    t54 = xsdbool( t55 = abap_false ).
    t49 = t54.
    IF t49 = abap_true.
      DATA(t57) = t1.
      result = t57.
      RETURN.
    ENDIF.
    DATA t58 TYPE abap_bool.
    DATA t59 TYPE abap_bool.
    DATA(t60) = VALUE string( ).
    DATA(t61) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    READ TABLE t61->items INDEX 1 INTO t60.
    DATA(t62) = |EXEC|.
    t59 = xsdbool( t60 = t62 ).
    t58 = t59.
    IF t59 = abap_true.
      DATA t63 TYPE abap_bool.
      DATA(t64) = VALUE string( ).
      DATA(t65) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      READ TABLE t65->items INDEX 2 INTO t64.
      DATA(t66) = |SQL|.
      t63 = xsdbool( t64 = t66 ).
      t58 = t63.
    ENDIF.
    IF t58 = abap_true.
      DATA(t67) = abap_true.
      result = t67.
      RETURN.
    ENDIF.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = VALUE abap_bool( ).
    DATA t70 TYPE abap_bool.
    DATA t71 TYPE abap_bool.
    DATA(t72) = VALUE string( ).
    DATA(t73) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
    READ TABLE t73->items INDEX 1 INTO t72.
    DATA(t74) = |METHOD|.
    t71 = xsdbool( t72 = t74 ).
    t70 = t71.
    IF t71 = abap_true.
      DATA t75 TYPE abap_bool.
      DATA(t76) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      DATA(t77) = |BY|.
      t75 = t76->includes( p0 = t77 ).
      t70 = t75.
    ENDIF.
    t69 = t70.
    IF t70 = abap_true.
      DATA t78 TYPE abap_bool.
      DATA(t79) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      DATA(t80) = |DATABASE|.
      t78 = t79->includes( p0 = t80 ).
      t69 = t78.
    ENDIF.
    t68 = t69.
    IF t69 = abap_true.
      DATA t81 TYPE abap_bool.
      DATA(t82) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      DATA(t83) = |LANGUAGE|.
      t81 = t82->includes( p0 = t83 ).
      t68 = t81.
    ENDIF.
    IF t68 = abap_true.
      DATA(t84) = abap_true.
      result = t84.
      RETURN.
    ENDIF.
    DATA(t85) = t1.
    result = t85.

  ENDMETHOD.
  METHOD tokens_to_nodes_one.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = CAST zcl_lnt_abstract_token( t1 ).
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t7 TYPE REF TO zcl_lnt_token_node.
    DATA(t8) = CAST zcl_lnt_abstract_token( t4 ).
    t7 = NEW zcl_lnt_token_node( i_token = t8 ).
    APPEND t7 TO t6->items.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t9.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d344_e2f9d6730e5a.
  ENDMETHOD.
ENDCLASS.
