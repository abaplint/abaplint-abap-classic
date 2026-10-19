* TS: src/ddl/ddl_parser.ts:29:1 DDLParser
CLASS zcl_lnt_ddl_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS parse IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_iddlparser_result.
    METHODS parsed_to_result IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_iddlparser_result.
    METHODS compact_tokens IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE string.
    METHODS has_key IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS has_not_null IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS kind_of IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_d17ed1b76574 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_ddl_parser IMPLEMENTATION.
  METHOD parse.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = i_file.
    t3 = zcl_lnt_cds_lexer=>run( i_file = t4 ).
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t2.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        CLEAR t13.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      t15 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_lx_comment ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        t6->load( ).
        APPEND t9 TO t6->items.
        t6->save( ).
      ENDIF.
    ENDDO.
    t2 = t6.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = NEW zcl_lnt_ddl_structure( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t25 = zcl_lnt_version_module=>default_release.
    IF t25 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t25.
      TRY.
          t24 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t26 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t24 = t26->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = zcl_lnt_combi=>run( i_runnable = t22 i_tokens = t2 i_version_or_release = t24 i_language_version_0e1d = t28 ).
    t20 = t21.
    DATA(t29) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = xsdbool( t20 IS INITIAL ).
    IF t29 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t37) = NEW zcl_lnt_ddl_table( ).
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t40 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t40 = zcl_lnt_version_module=>default_release.
      IF t40 IS BOUND.
        DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t42 TYPE REF TO object.
        t42 = t40.
        TRY.
            t39 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS NOT BOUND.
          TRY.
              t41 ?= t40.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t41 IS BOUND.
            t39 = t41->source( ).
          ENDIF.
          IF t39 IS NOT BOUND.
            CREATE OBJECT t39.
            t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t39->oval = t40.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t36 = zcl_lnt_combi=>run( i_runnable = t37 i_tokens = t2 i_version_or_release = t39 i_language_version_0e1d = t43 ).
      t20 = t36.
    ENDIF.
    DATA(t44) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t44 = xsdbool( t20 IS INITIAL ).
    IF t44 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = NEW zcl_lnt_ddl_aspect( ).
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t55 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t55 = zcl_lnt_version_module=>default_release.
      IF t55 IS BOUND.
        DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t57 TYPE REF TO object.
        t57 = t55.
        TRY.
            t54 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS NOT BOUND.
          TRY.
              t56 ?= t55.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t56 IS BOUND.
            t54 = t56->source( ).
          ENDIF.
          IF t54 IS NOT BOUND.
            CREATE OBJECT t54.
            t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t54->oval = t55.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t51 = zcl_lnt_combi=>run( i_runnable = t52 i_tokens = t2 i_version_or_release = t54 i_language_version_0e1d = t58 ).
      t20 = t51.
    ENDIF.
    DATA(t59) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t59 = xsdbool( t20 IS INITIAL ).
    IF t59 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t67) = NEW zcl_lnt_ddl_extend_type( ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t70 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t70 = zcl_lnt_version_module=>default_release.
      IF t70 IS BOUND.
        DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t72 TYPE REF TO object.
        t72 = t70.
        TRY.
            t69 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS NOT BOUND.
          TRY.
              t71 ?= t70.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t71 IS BOUND.
            t69 = t71->source( ).
          ENDIF.
          IF t69 IS NOT BOUND.
            CREATE OBJECT t69.
            t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t69->oval = t70.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t66 = zcl_lnt_combi=>run( i_runnable = t67 i_tokens = t2 i_version_or_release = t69 i_language_version_0e1d = t73 ).
      t20 = t66.
    ENDIF.
    DATA(t74) = VALUE abap_bool( ).
    DATA(t75) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t75 = xsdbool( t20 IS INITIAL ).
    t74 = t75.
    IF t75 = abap_false.
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = VALUE abap_bool( ).
      DATA t84 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t85 = t20.
      DATA t87 TYPE REF TO object.
      t85->load( ).
      READ TABLE t85->items INDEX 1 INTO t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t88 ?= t87.
        DATA t89 TYPE REF TO object.
        t89 = t88->as_ref( ).
        t84 ?= t89.
      ELSE.
        t84 ?= t87.
      ENDIF.
      t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_expression_node ).
      t82 = xsdbool( t83 = abap_false ).
      t74 = t82.
    ENDIF.
    IF t74 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t93 TYPE REF TO zcl_lnt_iddlparser_result.
    DATA t94 TYPE REF TO zcl_lnt_expression_node.
    DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t96 = t20.
    DATA t98 TYPE REF TO object.
    t96->load( ).
    READ TABLE t96->items INDEX 1 INTO t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t99 ?= t98.
      DATA t100 TYPE REF TO object.
      t100 = t99->as_ref( ).
      t95 ?= t100.
    ELSE.
      t95 ?= t98.
    ENDIF.
    DATA t101 TYPE REF TO object.
    t101 = t95.
    t94 ?= t101.
    t93 = me->parsed_to_result( i_node = t94 ).
    result = t93.

  ENDMETHOD.

  METHOD parsed_to_result.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = t1.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      t16 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_expression_node ).
      t15 = xsdbool( t16 = abap_false ).
      IF t15 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_statement_runnable.
      DATA t19 TYPE REF TO zif_lnt_statement_runnable.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO object.
      t22 = t10.
      t20 ?= t22.
      t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t18 = t19.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      t27 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ddl_structure_field ).
      t26 = t27.
      IF t27 = abap_false.
        DATA t29 TYPE abap_bool.
        t29 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ddl_table_field ).
        t26 = t29.
      ENDIF.
      t25 = t26.
      IF t26 = abap_false.
        DATA t31 TYPE abap_bool.
        t31 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ddl_include ).
        t25 = t31.
      ENDIF.
      t24 = t25.
      IF t25 = abap_false.
        DATA t33 TYPE abap_bool.
        t33 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ddl_named_include ).
        t24 = t33.
      ENDIF.
      t23 = t24.
      DATA t35 TYPE abap_bool.
      t35 = xsdbool( t23 = abap_false ).
      IF t35 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA t41 TYPE REF TO object.
      t41 = t10.
      t39 ?= t41.
      t38 = me->has_key( i_node = t39 ).
      t37 = t38.
      DATA t42 TYPE abap_bool.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      DATA t46 TYPE REF TO object.
      t46 = t10.
      t44 ?= t46.
      t43 = me->has_not_null( i_node = t44 ).
      t42 = t43.
      DATA t47 TYPE abap_bool.
      t47 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ddl_include ).
      IF t47 = abap_true.
        DATA(t49) = VALUE string( ).
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        DATA t55 TYPE REF TO object.
        t55 = t10.
        t53 ?= t55.
        DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
        t52 = t53->find_direct_expression( i_type_9913 = t56 ).
        t51 = t52.
        DATA(t57) = VALUE string( ).
        DATA(t58) = VALUE abap_bool( ).
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        t58 = xsdbool( t51 IS INITIAL ).
        IF t58 = abap_true.
          t57 = ||.
        ELSE.
          DATA t66 TYPE string.
          DATA t67 TYPE string.
          DATA t68 TYPE REF TO zcl_lnt_expression_node.
          t68 = t51.
          t67 = t68->concat_tokens( ).
          DATA t70 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t70.
          DATA(t71) = `\s+`.
          DATA(t72) = |g|.
          CREATE OBJECT t70 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t71 flags = t72 checked = abap_true.
          DATA(t73) = ||.
          DATA(t74) = strlen( t67 ).
          t66 = t70->replace( p0 = t67 p1 = t73 ).
          t57 = t66.
        ENDIF.
        t50 = t57.
        t49 = t50.
        DATA t76 TYPE REF TO zcl_lnt_iddlprsr_rslt_fld.
        DATA t77 TYPE string.
        t77 = |.INCLUDE|.
        DATA t79 TYPE string.
        t79 = t49.
        DATA t81 TYPE abap_bool.
        t81 = t37.
        DATA t83 TYPE abap_bool.
        t83 = t42.
        t76 = NEW zcl_lnt_iddlprsr_rslt_fld( i_key = t81 i_name = t77 i_type_9913 = t79 i_not_null = t83 ).
        CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
        t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t85 ).
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t86 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `notNull` p1 = t88 ).
        ENDIF.
        CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
        t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t89) = |name|.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
        DATA(t91) = |type|.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
        ENDIF.
        DATA(t93) = |key|.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
        ENDIF.
        DATA(t95) = |notNull|.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
        ENDIF.
        t2->load( ).
        APPEND t76 TO t2->items.
        t2->save( ).
      ELSE.
        DATA t97 TYPE abap_bool.
        t97 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_ddl_named_include ).
        IF t97 = abap_true.
          DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t101 TYPE REF TO zcl_lnt_expression_node.
          DATA t103 TYPE REF TO object.
          t103 = t10.
          t101 ?= t103.
          DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
          t100 = t101->find_direct_expressions( i_type_9913 = t104 ).
          t99 = t100.
          DATA(t105) = VALUE string( ).
          DATA(t106) = VALUE string( ).
          DATA t107 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t107.
          DATA t110 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t110.
          DATA t112 TYPE REF TO object.
          CLEAR t112.
          t99->load( ).
          CLEAR t112.
          READ TABLE t99->items INDEX 1 INTO t112.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          CLEAR t110.
          IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t113 ?= t112.
            DATA t114 TYPE REF TO object.
            t114 = t113->as_ref( ).
            t110 ?= t114.
          ELSE.
            t110 ?= t112.
          ENDIF.
          t107 = t110.
          DATA(t116) = VALUE string( ).
          DATA(t117) = VALUE abap_bool( ).
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          t117 = xsdbool( t107 IS INITIAL ).
          IF t117 = abap_true.
            t116 = ||.
          ELSE.
            DATA t125 TYPE string.
            DATA t126 TYPE string.
            DATA t127 TYPE REF TO zcl_lnt_expression_node.
            t127 = t107.
            t126 = t127->concat_tokens( ).
            DATA t129 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t129.
            DATA(t130) = `\s+`.
            DATA(t131) = |g|.
            CREATE OBJECT t129 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t130 flags = t131 checked = abap_true.
            DATA(t132) = ||.
            DATA(t133) = strlen( t126 ).
            t125 = t129->replace( p0 = t126 p1 = t132 ).
            t116 = t125.
          ENDIF.
          t106 = t116.
          t105 = t106.
          DATA(t134) = VALUE string( ).
          DATA(t135) = VALUE string( ).
          DATA t136 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t136.
          DATA t139 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t139.
          DATA t141 TYPE REF TO object.
          CLEAR t141.
          t99->load( ).
          CLEAR t141.
          READ TABLE t99->items INDEX 2 INTO t141.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          CLEAR t139.
          IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t142 ?= t141.
            DATA t143 TYPE REF TO object.
            t143 = t142->as_ref( ).
            t139 ?= t143.
          ELSE.
            t139 ?= t141.
          ENDIF.
          t136 = t139.
          DATA(t145) = VALUE string( ).
          DATA(t146) = VALUE abap_bool( ).
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          t146 = xsdbool( t136 IS INITIAL ).
          IF t146 = abap_true.
            t145 = ||.
          ELSE.
            DATA t154 TYPE string.
            DATA t155 TYPE string.
            DATA t156 TYPE REF TO zcl_lnt_expression_node.
            t156 = t136.
            t155 = t156->concat_tokens( ).
            DATA t158 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t158.
            DATA(t159) = `\s+`.
            DATA(t160) = |g|.
            CREATE OBJECT t158 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t159 flags = t160 checked = abap_true.
            DATA(t161) = ||.
            DATA(t162) = strlen( t155 ).
            t154 = t158->replace( p0 = t155 p1 = t161 ).
            t145 = t154.
          ENDIF.
          t135 = t145.
          t134 = t135.
          DATA t164 TYPE REF TO zcl_lnt_iddlprsr_rslt_fld.
          DATA t165 TYPE string.
          t165 = t105.
          DATA t167 TYPE string.
          t167 = t134.
          DATA t169 TYPE abap_bool.
          t169 = t37.
          DATA t171 TYPE abap_bool.
          t171 = t42.
          t164 = NEW zcl_lnt_iddlprsr_rslt_fld( i_key = t169 i_name = t165 i_type_9913 = t167 i_not_null = t171 ).
          CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
          t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t173 ).
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t174 ).
          ENDIF.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t175 ).
          ENDIF.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `notNull` p1 = t176 ).
          ENDIF.
          CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
          t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t177) = |name|.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
          DATA(t179) = |type|.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
          ENDIF.
          DATA(t181) = |key|.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
          ENDIF.
          DATA(t183) = |notNull|.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
          ENDIF.
          t2->load( ).
          APPEND t164 TO t2->items.
          t2->save( ).
        ELSE.
          DATA(t185) = VALUE string( ).
          DATA(t186) = VALUE string( ).
          DATA t187 TYPE REF TO zcl_lnt_expression_node.
          DATA t188 TYPE REF TO zcl_lnt_expression_node.
          DATA t189 TYPE REF TO zcl_lnt_expression_node.
          DATA t191 TYPE REF TO object.
          t191 = t10.
          t189 ?= t191.
          DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
          t188 = t189->find_direct_expression( i_type_9913 = t192 ).
          t187 = t188.
          DATA(t193) = VALUE string( ).
          DATA(t194) = VALUE abap_bool( ).
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          t194 = xsdbool( t187 IS INITIAL ).
          IF t194 = abap_true.
            t193 = ||.
          ELSE.
            DATA t202 TYPE string.
            DATA t203 TYPE string.
            DATA t204 TYPE REF TO zcl_lnt_expression_node.
            t204 = t187.
            t203 = t204->concat_tokens( ).
            DATA t206 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t206.
            DATA(t207) = `\s+`.
            DATA(t208) = |g|.
            CREATE OBJECT t206 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t207 flags = t208 checked = abap_true.
            DATA(t209) = ||.
            DATA(t210) = strlen( t203 ).
            t202 = t206->replace( p0 = t203 p1 = t209 ).
            t193 = t202.
          ENDIF.
          t186 = t193.
          t185 = t186.
          DATA(t211) = VALUE string( ).
          DATA(t212) = VALUE string( ).
          DATA t213 TYPE REF TO zcl_lnt_expression_node.
          DATA t214 TYPE REF TO zcl_lnt_expression_node.
          DATA t215 TYPE REF TO zcl_lnt_expression_node.
          DATA t217 TYPE REF TO object.
          t217 = t10.
          t215 ?= t217.
          DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1126_5825bd45ea27.
          t214 = t215->find_direct_expression( i_type_9913 = t218 ).
          t213 = t214.
          DATA(t219) = VALUE string( ).
          DATA(t220) = VALUE abap_bool( ).
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          t220 = xsdbool( t213 IS INITIAL ).
          IF t220 = abap_true.
            t219 = ||.
          ELSE.
            DATA t228 TYPE string.
            DATA t229 TYPE string.
            DATA t230 TYPE REF TO zcl_lnt_expression_node.
            t230 = t213.
            t229 = t230->concat_tokens( ).
            DATA t232 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t232.
            DATA(t233) = `\s+`.
            DATA(t234) = |g|.
            CREATE OBJECT t232 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t233 flags = t234 checked = abap_true.
            DATA(t235) = ||.
            DATA(t236) = strlen( t229 ).
            t228 = t232->replace( p0 = t229 p1 = t235 ).
            t219 = t228.
          ENDIF.
          t212 = t219.
          t211 = t212.
          DATA t238 TYPE REF TO zcl_lnt_iddlprsr_rslt_fld.
          DATA t239 TYPE string.
          t239 = t185.
          DATA t241 TYPE string.
          t241 = t211.
          DATA t243 TYPE abap_bool.
          t243 = t37.
          DATA t245 TYPE abap_bool.
          t245 = t42.
          t238 = NEW zcl_lnt_iddlprsr_rslt_fld( i_key = t243 i_name = t239 i_type_9913 = t241 i_not_null = t245 ).
          CREATE OBJECT t238->zlnt_view_ownkeys_b0e8086400eb.
          t238->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t247.
          t238->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t247 ).
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t238->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t238->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t248 ).
          ENDIF.
          DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t249.
          IF t238->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t238->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t249 ).
          ENDIF.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t238->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t238->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `notNull` p1 = t250 ).
          ENDIF.
          CREATE OBJECT t238->zlnt_json_ownkeys_70e5fd461788.
          t238->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t251) = |name|.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          t238->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
          DATA(t253) = |type|.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t238->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t238->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
          ENDIF.
          DATA(t255) = |key|.
          DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t256.
          IF t238->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t238->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
          ENDIF.
          DATA(t257) = |notNull|.
          DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t258.
          IF t238->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t238->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
          ENDIF.
          t2->load( ).
          APPEND t238 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t260 TYPE REF TO zcl_lnt_iddlparser_result.
    DATA(t261) = VALUE string( ).
    DATA(t262) = VALUE string( ).
    DATA t263 TYPE REF TO zcl_lnt_expression_node.
    DATA t264 TYPE REF TO zcl_lnt_expression_node.
    DATA(t266) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    t264 = t1->find_direct_expression( i_type_9913 = t266 ).
    t263 = t264.
    DATA(t267) = VALUE string( ).
    DATA(t268) = VALUE abap_bool( ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t268 = xsdbool( t263 IS INITIAL ).
    IF t268 = abap_true.
      t267 = ||.
    ELSE.
      DATA t276 TYPE string.
      DATA t277 TYPE string.
      DATA t278 TYPE REF TO zcl_lnt_expression_node.
      t278 = t263.
      t277 = t278->concat_tokens( ).
      DATA t280 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t281) = `\s+`.
      DATA(t282) = |g|.
      CREATE OBJECT t280 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t281 flags = t282 checked = abap_true.
      DATA(t283) = ||.
      DATA(t284) = strlen( t277 ).
      t276 = t280->replace( p0 = t277 p1 = t283 ).
      t267 = t276.
    ENDIF.
    t262 = t267.
    t261 = t262.
    DATA(t285) = VALUE string( ).
    DATA(t286) = VALUE string( ).
    DATA(t289) = VALUE string( ).
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    t291 = t1->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t290 = t291.
    DATA(t293) = VALUE string( ).
    DATA t294 TYPE abap_bool.
    t294 = xsdbool( t290 IS BOUND AND t290 IS INSTANCE OF zcl_lnt_ddl_structure ).
    IF t294 = abap_true.
      t293 = |structure|.
    ELSE.
      DATA(t297) = VALUE string( ).
      DATA t298 TYPE abap_bool.
      t298 = xsdbool( t290 IS BOUND AND t290 IS INSTANCE OF zcl_lnt_ddl_aspect ).
      IF t298 = abap_true.
        t297 = |aspect|.
      ELSE.
        DATA(t301) = VALUE string( ).
        DATA t302 TYPE abap_bool.
        t302 = xsdbool( t290 IS BOUND AND t290 IS INSTANCE OF zcl_lnt_ddl_extend_type ).
        IF t302 = abap_true.
          t301 = |extend-type|.
        ELSE.
          t301 = |table|.
        ENDIF.
        t297 = t301.
      ENDIF.
      t293 = t297.
    ENDIF.
    t289 = t293.
    t286 = t289.
    t285 = t286.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t306 = t2.
    t260 = NEW zcl_lnt_iddlparser_result( i_name = t261 i_kind = t285 i_fields_62af = t306 ).
    CREATE OBJECT t260->zlnt_view_ownkeys_b0e8086400eb.
    t260->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t308 ).
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t309 ).
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t310 ).
    ENDIF.
    CREATE OBJECT t260->zlnt_json_ownkeys_70e5fd461788.
    t260->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t311) = |name|.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t311 p1 = t312 ).
    DATA(t313) = |kind|.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
    ENDIF.
    DATA(t315) = |fields|.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
    ENDIF.
    result = t260.

  ENDMETHOD.

  METHOD compact_tokens.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      result = ||.
      RETURN.
    ENDIF.
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    t12 = t1.
    t11 = t12->concat_tokens( ).
    DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t15) = `\s+`.
    DATA(t16) = |g|.
    CREATE OBJECT t14 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t15 flags = t16 checked = abap_true.
    DATA(t17) = ||.
    DATA(t18) = strlen( t11 ).
    t10 = t14->replace( p0 = t11 p1 = t17 ).
    result = t10.

  ENDMETHOD.

  METHOD has_key.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = i_node.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t4->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        CLEAR t12.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t15.
      t15 = t8.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      DATA(t18) = xsdbool( t15 IS INITIAL ).
      IF t18 = abap_true.
        CLEAR t17.
      ELSE.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        t21 = t15->get_db65( ).
        t17 = t21.
      ENDIF.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t25 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t25.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      t27 = t17.
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t29.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      t31 = t27.
      DATA(t30) = xsdbool( t31 IS INITIAL ).
      IF t30 = abap_true.
        CLEAR t29.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t33.
        DATA t34 TYPE REF TO object.
        CLEAR t34.
        t34 = t27.
        DATA t36 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
        CLEAR t36.
        IF t34 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
        ENDIF.
        TRY.
            t36 ?= t34.
          CATCH cx_sy_move_cast_error.
            RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
        ENDTRY.
        t33 = t36->zlnt_builtin_nati_72359f490bf2( ).
        t29 = t33.
      ENDIF.
      t25 = t29.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = xsdbool( t25 IS INITIAL ).
      IF t38 = abap_true.
        CLEAR t37.
      ELSE.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t42.
        t42 = t25.
        t41 = t42->name.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t41.
        t37 = t44.
      ENDIF.
      t23 = t37.
      DATA(t45) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t49) = |CDSAnnotation|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t47 = t50.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      IF t23 IS BOUND.
        t52 = t23->has.
      ENDIF.
      IF t47 IS BOUND.
        t53 = t47->has.
      ENDIF.
      IF t52 = t53.
        IF t52 = abap_false.
          t45 = abap_true.
        ELSEIF t23->value = t47->value.
          t45 = abap_true.
        ENDIF.
      ENDIF.
      IF t45 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t54) = VALUE string( ).
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE string( ).
      DATA(t57) = VALUE string( ).
      t57 = t8->concat_tokens( ).
      DATA(t59) = strlen( t57 ).
      t56 = t57.
      IF t56 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t56 TO UPPER CASE.
      ELSE.
        t56 = zlnt_runtime_uppe_91169605024d=>full( t56 ).
      ENDIF.
      DATA(t60) = strlen( t56 ).
      DATA(t61) = VALUE i( ).
      DATA(t62) = VALUE i( ).
      t61 = 0.
      t62 = t60.
      DATA(t63) = VALUE i( ).
      DATA(t64) = VALUE i( ).
      DATA(t65) = VALUE string( ).
      WHILE t61 < t62.
        t64 = t61.
        t65 = t56+t64(1).
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
          IF zlnt_builtin_code_d17ed1b76574 IS NOT BOUND.
            zlnt_builtin_code_d17ed1b76574 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_d17ed1b76574->convert( EXPORTING data = t65 IMPORTING buffer = t67 ).
          t68 = t67(1).
          t69 = t67+1(1).
          t63 = t68.
          t70 = t69.
          t63 = t63 + t70 * 256.
        ENDIF.
        IF t63 = 9 OR t63 = 10 OR t63 = 11 OR t63 = 12 OR t63 = 13 OR t63 = 32 OR t63 = 160 OR t63 = 5760 OR t63 = 8232 OR t63 = 8233 OR t63 = 8239 OR t63 = 8287 OR t63 = 12288 OR t63 = 65279 OR t63 >= 8192 AND t63 <= 8202.
          t61 = t61 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t71) = VALUE i( ).
      DATA(t72) = VALUE i( ).
      DATA(t73) = VALUE string( ).
      WHILE t62 > t61.
        t72 = t62 - 1.
        t73 = t56+t72(1).
        DATA t74 TYPE c LENGTH 1.
        CLEAR t74.
        DATA(t75) = VALUE xstring( ).
        DATA t76 TYPE x LENGTH 1.
        CLEAR t76.
        DATA t77 TYPE x LENGTH 1.
        CLEAR t77.
        DATA(t78) = VALUE i( ).
        t74 = t73.
        t71 = cl_abap_conv_out_ce=>uccpi( t74 ).
        IF t71 >= 255.
          IF zlnt_builtin_code_d17ed1b76574 IS NOT BOUND.
            zlnt_builtin_code_d17ed1b76574 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_d17ed1b76574->convert( EXPORTING data = t73 IMPORTING buffer = t75 ).
          t76 = t75(1).
          t77 = t75+1(1).
          t71 = t76.
          t78 = t77.
          t71 = t71 + t78 * 256.
        ENDIF.
        IF t71 = 9 OR t71 = 10 OR t71 = 11 OR t71 = 12 OR t71 = 13 OR t71 = 32 OR t71 = 160 OR t71 = 5760 OR t71 = 8232 OR t71 = 8233 OR t71 = 8239 OR t71 = 8287 OR t71 = 12288 OR t71 = 65279 OR t71 >= 8192 AND t71 <= 8202.
          t62 = t62 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t62 > t61.
        t60 = t62 - t61.
        t55 = t56+t61(t60).
      ELSE.
        CLEAR t55.
      ENDIF.
      t54 = t55.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t81) = |KEY|.
      t79 = xsdbool( t54 = t81 ).
      IF t79 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t85) = ||.
      t83 = xsdbool( t54 <> t85 ).
      IF t83 = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD has_not_null.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_node.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      DATA t11 TYPE abap_bool.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      t2->load( ).
      t14 = lines( t2->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t9 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t23 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t24.
      DATA(t26) = t9.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      t2->load( ).
      CLEAR t27.
      READ TABLE t2->items INDEX t26 INTO t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t24.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t27.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t24 ?= t29.
      ELSE.
        t24 ?= t27.
      ENDIF.
      t23 = t24.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = xsdbool( t23 IS INITIAL ).
      IF t31 = abap_true.
        CLEAR t30.
      ELSE.
        DATA t34 TYPE string.
        t34 = t23->concat_tokens( ).
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t34.
        t30 = t36.
      ENDIF.
      t21 = t30.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      IF t21 IS INITIAL.
        t38 = abap_true.
      ELSEIF t21->has = abap_false.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        CLEAR t37.
      ELSE.
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        t42 = t21->value.
        DATA(t44) = strlen( t42 ).
        t41 = t42.
        IF t41 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t41 TO UPPER CASE.
        ELSE.
          t41 = zlnt_runtime_uppe_91169605024d=>full( t41 ).
        ENDIF.
        DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t45->has = abap_true.
        t45->value = t41.
        t37 = t45.
      ENDIF.
      t19 = t37.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      IF t19 IS INITIAL.
        t47 = abap_true.
      ELSEIF t19->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        CLEAR t46.
      ELSE.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE string.
        t51 = t19->value.
        DATA(t53) = strlen( t51 ).
        DATA t54 TYPE i.
        DATA t55 TYPE i.
        t54 = 0.
        t55 = t53.
        DATA(t56) = VALUE i( ).
        DATA(t57) = VALUE i( ).
        DATA(t58) = VALUE string( ).
        WHILE t54 < t55.
          t57 = t54.
          t58 = t51+t57(1).
          DATA t59 TYPE c LENGTH 1.
          CLEAR t59.
          DATA(t60) = VALUE xstring( ).
          DATA t61 TYPE x LENGTH 1.
          CLEAR t61.
          DATA t62 TYPE x LENGTH 1.
          CLEAR t62.
          DATA(t63) = VALUE i( ).
          t59 = t58.
          t56 = cl_abap_conv_out_ce=>uccpi( t59 ).
          IF t56 >= 255.
            IF zlnt_builtin_code_d17ed1b76574 IS NOT BOUND.
              zlnt_builtin_code_d17ed1b76574 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_d17ed1b76574->convert( EXPORTING data = t58 IMPORTING buffer = t60 ).
            t61 = t60(1).
            t62 = t60+1(1).
            t56 = t61.
            t63 = t62.
            t56 = t56 + t63 * 256.
          ENDIF.
          IF t56 = 9 OR t56 = 10 OR t56 = 11 OR t56 = 12 OR t56 = 13 OR t56 = 32 OR t56 = 160 OR t56 = 5760 OR t56 = 8232 OR t56 = 8233 OR t56 = 8239 OR t56 = 8287 OR t56 = 12288 OR t56 = 65279 OR t56 >= 8192 AND t56 <= 8202.
            t54 = t54 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t64) = VALUE i( ).
        DATA(t65) = VALUE i( ).
        DATA(t66) = VALUE string( ).
        WHILE t55 > t54.
          t65 = t55 - 1.
          t66 = t51+t65(1).
          DATA t67 TYPE c LENGTH 1.
          CLEAR t67.
          DATA(t68) = VALUE xstring( ).
          DATA t69 TYPE x LENGTH 1.
          CLEAR t69.
          DATA t70 TYPE x LENGTH 1.
          CLEAR t70.
          DATA(t71) = VALUE i( ).
          t67 = t66.
          t64 = cl_abap_conv_out_ce=>uccpi( t67 ).
          IF t64 >= 255.
            IF zlnt_builtin_code_d17ed1b76574 IS NOT BOUND.
              zlnt_builtin_code_d17ed1b76574 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_d17ed1b76574->convert( EXPORTING data = t66 IMPORTING buffer = t68 ).
            t69 = t68(1).
            t70 = t68+1(1).
            t64 = t69.
            t71 = t70.
            t64 = t64 + t71 * 256.
          ENDIF.
          IF t64 = 9 OR t64 = 10 OR t64 = 11 OR t64 = 12 OR t64 = 13 OR t64 = 32 OR t64 = 160 OR t64 = 5760 OR t64 = 8232 OR t64 = 8233 OR t64 = 8239 OR t64 = 8287 OR t64 = 12288 OR t64 = 65279 OR t64 >= 8192 AND t64 <= 8202.
            t55 = t55 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t55 > t54.
          t53 = t55 - t54.
          t50 = t51+t54(t53).
        ELSE.
          CLEAR t50.
        ENDIF.
        DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t72->has = abap_true.
        t72->value = t50.
        t46 = t72.
      ENDIF.
      t17 = t46.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t79.
      DATA t80 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t80.
      DATA t82 TYPE i.
      DATA(t84) = 1.
      t82 = t9 + t84.
      t82 = t82 + 1.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      t2->load( ).
      CLEAR t85.
      READ TABLE t2->items INDEX t82 INTO t85.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      CLEAR t80.
      IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t86 ?= t85.
        DATA t87 TYPE REF TO object.
        t87 = t86->as_ref( ).
        t80 ?= t87.
      ELSE.
        t80 ?= t85.
      ENDIF.
      t79 = t80.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA(t89) = xsdbool( t79 IS INITIAL ).
      IF t89 = abap_true.
        CLEAR t88.
      ELSE.
        DATA t92 TYPE string.
        t92 = t79->concat_tokens( ).
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t92.
        t88 = t94.
      ENDIF.
      t77 = t88.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      DATA(t96) = VALUE abap_bool( ).
      IF t77 IS INITIAL.
        t96 = abap_true.
      ELSEIF t77->has = abap_false.
        t96 = abap_true.
      ENDIF.
      IF t96 = abap_true.
        CLEAR t95.
      ELSE.
        DATA t99 TYPE string.
        DATA t100 TYPE string.
        t100 = t77->value.
        DATA(t102) = strlen( t100 ).
        t99 = t100.
        IF t99 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t99 TO UPPER CASE.
        ELSE.
          t99 = zlnt_runtime_uppe_91169605024d=>full( t99 ).
        ENDIF.
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t99.
        t95 = t103.
      ENDIF.
      t75 = t95.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      DATA(t105) = VALUE abap_bool( ).
      IF t75 IS INITIAL.
        t105 = abap_true.
      ELSEIF t75->has = abap_false.
        t105 = abap_true.
      ENDIF.
      IF t105 = abap_true.
        CLEAR t104.
      ELSE.
        DATA(t108) = VALUE string( ).
        DATA t109 TYPE string.
        t109 = t75->value.
        DATA(t111) = strlen( t109 ).
        DATA t112 TYPE i.
        DATA t113 TYPE i.
        t112 = 0.
        t113 = t111.
        DATA(t114) = VALUE i( ).
        DATA(t115) = VALUE i( ).
        DATA(t116) = VALUE string( ).
        WHILE t112 < t113.
          t115 = t112.
          t116 = t109+t115(1).
          DATA t117 TYPE c LENGTH 1.
          CLEAR t117.
          DATA(t118) = VALUE xstring( ).
          DATA t119 TYPE x LENGTH 1.
          CLEAR t119.
          DATA t120 TYPE x LENGTH 1.
          CLEAR t120.
          DATA(t121) = VALUE i( ).
          t117 = t116.
          t114 = cl_abap_conv_out_ce=>uccpi( t117 ).
          IF t114 >= 255.
            IF zlnt_builtin_code_d17ed1b76574 IS NOT BOUND.
              zlnt_builtin_code_d17ed1b76574 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_d17ed1b76574->convert( EXPORTING data = t116 IMPORTING buffer = t118 ).
            t119 = t118(1).
            t120 = t118+1(1).
            t114 = t119.
            t121 = t120.
            t114 = t114 + t121 * 256.
          ENDIF.
          IF t114 = 9 OR t114 = 10 OR t114 = 11 OR t114 = 12 OR t114 = 13 OR t114 = 32 OR t114 = 160 OR t114 = 5760 OR t114 = 8232 OR t114 = 8233 OR t114 = 8239 OR t114 = 8287 OR t114 = 12288 OR t114 = 65279 OR t114 >= 8192 AND t114 <= 8202.
            t112 = t112 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t122) = VALUE i( ).
        DATA(t123) = VALUE i( ).
        DATA(t124) = VALUE string( ).
        WHILE t113 > t112.
          t123 = t113 - 1.
          t124 = t109+t123(1).
          DATA t125 TYPE c LENGTH 1.
          CLEAR t125.
          DATA(t126) = VALUE xstring( ).
          DATA t127 TYPE x LENGTH 1.
          CLEAR t127.
          DATA t128 TYPE x LENGTH 1.
          CLEAR t128.
          DATA(t129) = VALUE i( ).
          t125 = t124.
          t122 = cl_abap_conv_out_ce=>uccpi( t125 ).
          IF t122 >= 255.
            IF zlnt_builtin_code_d17ed1b76574 IS NOT BOUND.
              zlnt_builtin_code_d17ed1b76574 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_d17ed1b76574->convert( EXPORTING data = t124 IMPORTING buffer = t126 ).
            t127 = t126(1).
            t128 = t126+1(1).
            t122 = t127.
            t129 = t128.
            t122 = t122 + t129 * 256.
          ENDIF.
          IF t122 = 9 OR t122 = 10 OR t122 = 11 OR t122 = 12 OR t122 = 13 OR t122 = 32 OR t122 = 160 OR t122 = 5760 OR t122 = 8232 OR t122 = 8233 OR t122 = 8239 OR t122 = 8287 OR t122 = 12288 OR t122 = 65279 OR t122 >= 8192 AND t122 <= 8202.
            t113 = t113 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t113 > t112.
          t111 = t113 - t112.
          t108 = t109+t112(t111).
        ELSE.
          CLEAR t108.
        ENDIF.
        DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t130->has = abap_true.
        t130->value = t108.
        t104 = t130.
      ENDIF.
      t73 = t104.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = VALUE abap_bool( ).
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA(t136) = |NOT|.
      DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t137->has = abap_true.
      t137->value = t136.
      t134 = t137.
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = VALUE abap_bool( ).
      IF t17 IS BOUND.
        t139 = t17->has.
      ENDIF.
      IF t134 IS BOUND.
        t140 = t134->has.
      ENDIF.
      IF t139 = t140.
        IF t139 = abap_false.
          t132 = abap_true.
        ELSEIF t17->value = t134->value.
          t132 = abap_true.
        ENDIF.
      ENDIF.
      t131 = t132.
      IF t132 = abap_true.
        DATA(t141) = VALUE abap_bool( ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA(t145) = |NULL|.
        DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t146->has = abap_true.
        t146->value = t145.
        t143 = t146.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE abap_bool( ).
        IF t73 IS BOUND.
          t148 = t73->has.
        ENDIF.
        IF t143 IS BOUND.
          t149 = t143->has.
        ENDIF.
        IF t148 = t149.
          IF t148 = abap_false.
            t141 = abap_true.
          ELSEIF t73->value = t143->value.
            t141 = abap_true.
          ENDIF.
        ENDIF.
        t131 = t141.
      ENDIF.
      IF t131 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t151 TYPE i.
      DATA(t153) = 1.
      t151 = t9 + t153.
      t9 = t151.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD kind_of.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    t3 = i_node->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ddl_structure ).
    IF t5 = abap_true.
      result = |structure|.
      RETURN.
    ENDIF.
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ddl_aspect ).
    IF t8 = abap_true.
      result = |aspect|.
      RETURN.
    ENDIF.
    DATA t11 TYPE abap_bool.
    t11 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ddl_extend_type ).
    IF t11 = abap_true.
      result = |extend-type|.
      RETURN.
    ENDIF.
    result = |table|.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1127_d248b0ff662a.
  ENDMETHOD.
ENDCLASS.
