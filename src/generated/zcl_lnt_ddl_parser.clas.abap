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
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = zcl_lnt_cds_lexer=>run( i_file = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t2.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
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
      DATA(t16) = t9.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_lx_comment ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        DATA(t17) = t6.
        DATA(t18) = t9.
        t17->load( ).
        APPEND t18 TO t17->items.
        t17->save( ).
      ENDIF.
    ENDDO.
    DATA(t19) = t6.
    t5 = t19.
    t2 = t5.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA(t22) = NEW zcl_lnt_ddl_structure( ).
    DATA(t23) = t2.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t25.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t25 = zcl_lnt_version_module=>default_release.
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      CLEAR t26.
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
    CLEAR t28.
    t21 = zcl_lnt_combi=>run( i_runnable = t22 i_tokens = t23 i_version_or_release = t24 i_language_version_0e1d = t28 ).
    t20 = t21.
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA(t31) = t20.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t30.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t29 = t34.
    IF t29 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t36.
      DATA(t37) = NEW zcl_lnt_ddl_table( ).
      DATA(t38) = t2.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t40.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t40 = zcl_lnt_version_module=>default_release.
      CLEAR t39.
      IF t40 IS BOUND.
        DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t41.
        DATA t42 TYPE REF TO object.
        CLEAR t42.
        CLEAR t41.
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
      CLEAR t43.
      t36 = zcl_lnt_combi=>run( i_runnable = t37 i_tokens = t38 i_version_or_release = t39 i_language_version_0e1d = t43 ).
      t20 = t36.
    ENDIF.
    DATA(t44) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA(t46) = t20.
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    t47 = t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = t45.
    IF t50 IS INITIAL.
      t49 = abap_true.
    ENDIF.
    t44 = t49.
    IF t44 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t51.
      DATA(t52) = NEW zcl_lnt_ddl_aspect( ).
      DATA(t53) = t2.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t55.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t55 = zcl_lnt_version_module=>default_release.
      CLEAR t54.
      IF t55 IS BOUND.
        DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t56.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        CLEAR t56.
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
      CLEAR t58.
      t51 = zcl_lnt_combi=>run( i_runnable = t52 i_tokens = t53 i_version_or_release = t54 i_language_version_0e1d = t58 ).
      t20 = t51.
    ENDIF.
    DATA(t59) = VALUE abap_bool( ).
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA(t61) = t20.
    t60 = t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    t62 = t63.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = t60.
    IF t65 IS INITIAL.
      t64 = abap_true.
    ENDIF.
    t59 = t64.
    IF t59 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      DATA(t67) = NEW zcl_lnt_ddl_extend_type( ).
      DATA(t68) = t2.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      DATA t70 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t70.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t70 = zcl_lnt_version_module=>default_release.
      CLEAR t69.
      IF t70 IS BOUND.
        DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t71.
        DATA t72 TYPE REF TO object.
        CLEAR t72.
        CLEAR t71.
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
      CLEAR t73.
      t66 = zcl_lnt_combi=>run( i_runnable = t67 i_tokens = t68 i_version_or_release = t69 i_language_version_0e1d = t73 ).
      t20 = t66.
    ENDIF.
    DATA(t74) = VALUE abap_bool( ).
    DATA(t75) = VALUE abap_bool( ).
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA(t77) = t20.
    t76 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    t78 = t79.
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t76.
    IF t81 IS INITIAL.
      t80 = abap_true.
    ENDIF.
    t75 = t80.
    t74 = t75.
    IF t75 = abap_false.
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = VALUE abap_bool( ).
      DATA t84 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t84.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t85.
      DATA(t86) = t20.
      t85 = t86.
      DATA t87 TYPE REF TO object.
      CLEAR t87.
      t85->load( ).
      CLEAR t87.
      READ TABLE t85->items INDEX 1 INTO t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      CLEAR t84.
      IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t88 ?= t87.
        DATA t89 TYPE REF TO object.
        CLEAR t89.
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
      DATA t90 TYPE REF TO zcl_lnt_iddlparser_result.
      CLEAR t90.
      result = t90.
      RETURN.
    ENDIF.
    DATA t91 TYPE REF TO zcl_lnt_iddlparser_result.
    CLEAR t91.
    DATA(t92) = abap_true.
    IF t92 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_iddlparser_result.
      CLEAR t93.
      DATA t94 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t94.
      DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t96.
      DATA(t97) = t20.
      t96 = t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      t96->load( ).
      CLEAR t98.
      READ TABLE t96->items INDEX 1 INTO t98.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      CLEAR t95.
      IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t99 ?= t98.
        DATA t100 TYPE REF TO object.
        CLEAR t100.
        t100 = t99->as_ref( ).
        t95 ?= t100.
      ELSE.
        t95 ?= t98.
      ENDIF.
      DATA t101 TYPE REF TO object.
      CLEAR t101.
      t101 = t95.
      t94 ?= t101.
      t93 = me->parsed_to_result( i_node = t94 ).
      t91 = t93.
    ELSE.
      DATA t102 TYPE REF TO zcl_lnt_iddlparser_result.
      CLEAR t102.
      t91 = t102.
    ENDIF.
    result = t91.

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
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
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
      DATA(t17) = t10.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_expression_node ).
      t15 = xsdbool( t16 = abap_false ).
      IF t15 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_statement_runnable.
      DATA t19 TYPE REF TO zif_lnt_statement_runnable.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = t10.
      DATA t22 TYPE REF TO object.
      t22 = t21.
      t20 ?= t22.
      t19 = t20->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t18 = t19.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t18.
      t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_ddl_structure_field ).
      t26 = t27.
      IF t27 = abap_false.
        DATA t29 TYPE abap_bool.
        DATA(t30) = t18.
        t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_ddl_table_field ).
        t26 = t29.
      ENDIF.
      t25 = t26.
      IF t26 = abap_false.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t18.
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_ddl_include ).
        t25 = t31.
      ENDIF.
      t24 = t25.
      IF t25 = abap_false.
        DATA t33 TYPE abap_bool.
        DATA(t34) = t18.
        t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_ddl_named_include ).
        t24 = t33.
      ENDIF.
      t23 = t24.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t23.
      t35 = xsdbool( t36 = abap_false ).
      IF t35 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA(t40) = t10.
      DATA t41 TYPE REF TO object.
      t41 = t40.
      t39 ?= t41.
      t38 = me->has_key( i_node = t39 ).
      t37 = t38.
      DATA t42 TYPE abap_bool.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = t10.
      DATA t46 TYPE REF TO object.
      t46 = t45.
      t44 ?= t46.
      t43 = me->has_not_null( i_node = t44 ).
      t42 = t43.
      DATA t47 TYPE abap_bool.
      DATA(t48) = t18.
      t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_ddl_include ).
      IF t47 = abap_true.
        DATA(t49) = VALUE string( ).
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        DATA(t54) = t10.
        DATA t55 TYPE REF TO object.
        t55 = t54.
        t53 ?= t55.
        DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
        t52 = t53->find_direct_expression( i_type_9913 = t56 ).
        t51 = t52.
        DATA(t57) = VALUE string( ).
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE REF TO zcl_lnt_expression_node.
        DATA(t60) = t51.
        t59 = t60.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        t61 = t62.
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = t59.
        IF t64 IS INITIAL.
          t63 = abap_true.
        ENDIF.
        t58 = t63.
        IF t58 = abap_true.
          DATA(t65) = ||.
          t57 = t65.
        ELSE.
          DATA t66 TYPE string.
          DATA t67 TYPE string.
          DATA t68 TYPE REF TO zcl_lnt_expression_node.
          DATA(t69) = t51.
          t68 = t69.
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
        DATA(t75) = t2.
        DATA t76 TYPE REF TO zcl_lnt_iddlprsr_rslt_fld.
        DATA t77 TYPE string.
        DATA(t78) = |.INCLUDE|.
        t77 = t78.
        DATA t79 TYPE string.
        DATA(t80) = t49.
        t79 = t80.
        DATA t81 TYPE abap_bool.
        DATA(t82) = t37.
        t81 = t82.
        DATA t83 TYPE abap_bool.
        DATA(t84) = t42.
        t83 = t84.
        t76 = NEW zcl_lnt_iddlprsr_rslt_fld( i_key = t81 i_name = t77 i_type_9913 = t79 i_not_null = t83 ).
        CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
        t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t85 ).
        ENDIF.
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
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
        ENDIF.
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
        t75->load( ).
        APPEND t76 TO t75->items.
        t75->save( ).
      ELSE.
        DATA t97 TYPE abap_bool.
        DATA(t98) = t18.
        t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_ddl_named_include ).
        IF t97 = abap_true.
          DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t101 TYPE REF TO zcl_lnt_expression_node.
          DATA(t102) = t10.
          DATA t103 TYPE REF TO object.
          t103 = t102.
          t101 ?= t103.
          DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
          t100 = t101->find_direct_expressions( i_type_9913 = t104 ).
          t99 = t100.
          DATA(t105) = VALUE string( ).
          DATA(t106) = VALUE string( ).
          DATA t107 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t107.
          DATA t108 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t108.
          DATA(t109) = abap_true.
          IF t109 = abap_true.
            DATA t110 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t110.
            DATA(t111) = t99.
            DATA t112 TYPE REF TO object.
            CLEAR t112.
            t111->load( ).
            CLEAR t112.
            READ TABLE t111->items INDEX 1 INTO t112.
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
            t108 = t110.
          ELSE.
            DATA t115 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t115.
            t108 = t115.
          ENDIF.
          t107 = t108.
          DATA(t116) = VALUE string( ).
          DATA(t117) = VALUE abap_bool( ).
          DATA t118 TYPE REF TO zcl_lnt_expression_node.
          DATA(t119) = t107.
          t118 = t119.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          t120 = t121.
          DATA(t122) = VALUE abap_bool( ).
          DATA(t123) = t118.
          IF t123 IS INITIAL.
            t122 = abap_true.
          ENDIF.
          t117 = t122.
          IF t117 = abap_true.
            DATA(t124) = ||.
            t116 = t124.
          ELSE.
            DATA t125 TYPE string.
            DATA t126 TYPE string.
            DATA t127 TYPE REF TO zcl_lnt_expression_node.
            DATA(t128) = t107.
            t127 = t128.
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
          DATA t137 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t137.
          DATA(t138) = abap_true.
          IF t138 = abap_true.
            DATA t139 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t139.
            DATA(t140) = t99.
            DATA t141 TYPE REF TO object.
            CLEAR t141.
            t140->load( ).
            CLEAR t141.
            READ TABLE t140->items INDEX 2 INTO t141.
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
            t137 = t139.
          ELSE.
            DATA t144 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t144.
            t137 = t144.
          ENDIF.
          t136 = t137.
          DATA(t145) = VALUE string( ).
          DATA(t146) = VALUE abap_bool( ).
          DATA t147 TYPE REF TO zcl_lnt_expression_node.
          DATA(t148) = t136.
          t147 = t148.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          t149 = t150.
          DATA(t151) = VALUE abap_bool( ).
          DATA(t152) = t147.
          IF t152 IS INITIAL.
            t151 = abap_true.
          ENDIF.
          t146 = t151.
          IF t146 = abap_true.
            DATA(t153) = ||.
            t145 = t153.
          ELSE.
            DATA t154 TYPE string.
            DATA t155 TYPE string.
            DATA t156 TYPE REF TO zcl_lnt_expression_node.
            DATA(t157) = t136.
            t156 = t157.
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
          DATA(t163) = t2.
          DATA t164 TYPE REF TO zcl_lnt_iddlprsr_rslt_fld.
          DATA t165 TYPE string.
          DATA(t166) = t105.
          t165 = t166.
          DATA t167 TYPE string.
          DATA(t168) = t134.
          t167 = t168.
          DATA t169 TYPE abap_bool.
          DATA(t170) = t37.
          t169 = t170.
          DATA t171 TYPE abap_bool.
          DATA(t172) = t42.
          t171 = t172.
          t164 = NEW zcl_lnt_iddlprsr_rslt_fld( i_key = t169 i_name = t165 i_type_9913 = t167 i_not_null = t171 ).
          CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
          t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t173 ).
          ENDIF.
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
          IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
          ENDIF.
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
          t163->load( ).
          APPEND t164 TO t163->items.
          t163->save( ).
        ELSE.
          DATA(t185) = VALUE string( ).
          DATA(t186) = VALUE string( ).
          DATA t187 TYPE REF TO zcl_lnt_expression_node.
          DATA t188 TYPE REF TO zcl_lnt_expression_node.
          DATA t189 TYPE REF TO zcl_lnt_expression_node.
          DATA(t190) = t10.
          DATA t191 TYPE REF TO object.
          t191 = t190.
          t189 ?= t191.
          DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
          t188 = t189->find_direct_expression( i_type_9913 = t192 ).
          t187 = t188.
          DATA(t193) = VALUE string( ).
          DATA(t194) = VALUE abap_bool( ).
          DATA t195 TYPE REF TO zcl_lnt_expression_node.
          DATA(t196) = t187.
          t195 = t196.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          t197 = t198.
          DATA(t199) = VALUE abap_bool( ).
          DATA(t200) = t195.
          IF t200 IS INITIAL.
            t199 = abap_true.
          ENDIF.
          t194 = t199.
          IF t194 = abap_true.
            DATA(t201) = ||.
            t193 = t201.
          ELSE.
            DATA t202 TYPE string.
            DATA t203 TYPE string.
            DATA t204 TYPE REF TO zcl_lnt_expression_node.
            DATA(t205) = t187.
            t204 = t205.
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
          DATA(t216) = t10.
          DATA t217 TYPE REF TO object.
          t217 = t216.
          t215 ?= t217.
          DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1126_5825bd45ea27.
          t214 = t215->find_direct_expression( i_type_9913 = t218 ).
          t213 = t214.
          DATA(t219) = VALUE string( ).
          DATA(t220) = VALUE abap_bool( ).
          DATA t221 TYPE REF TO zcl_lnt_expression_node.
          DATA(t222) = t213.
          t221 = t222.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          t223 = t224.
          DATA(t225) = VALUE abap_bool( ).
          DATA(t226) = t221.
          IF t226 IS INITIAL.
            t225 = abap_true.
          ENDIF.
          t220 = t225.
          IF t220 = abap_true.
            DATA(t227) = ||.
            t219 = t227.
          ELSE.
            DATA t228 TYPE string.
            DATA t229 TYPE string.
            DATA t230 TYPE REF TO zcl_lnt_expression_node.
            DATA(t231) = t213.
            t230 = t231.
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
          DATA(t237) = t2.
          DATA t238 TYPE REF TO zcl_lnt_iddlprsr_rslt_fld.
          DATA t239 TYPE string.
          DATA(t240) = t185.
          t239 = t240.
          DATA t241 TYPE string.
          DATA(t242) = t211.
          t241 = t242.
          DATA t243 TYPE abap_bool.
          DATA(t244) = t37.
          t243 = t244.
          DATA t245 TYPE abap_bool.
          DATA(t246) = t42.
          t245 = t246.
          t238 = NEW zcl_lnt_iddlprsr_rslt_fld( i_key = t243 i_name = t239 i_type_9913 = t241 i_not_null = t245 ).
          CREATE OBJECT t238->zlnt_view_ownkeys_b0e8086400eb.
          t238->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t247.
          IF t238->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t238->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t247 ).
          ENDIF.
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
          IF t238->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t238->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
          ENDIF.
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
          t237->load( ).
          APPEND t238 TO t237->items.
          t237->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t259 TYPE REF TO zcl_lnt_iddlparser_result.
    CLEAR t259.
    DATA t260 TYPE REF TO zcl_lnt_iddlparser_result.
    CLEAR t260.
    DATA(t261) = VALUE string( ).
    DATA(t262) = VALUE string( ).
    DATA t263 TYPE REF TO zcl_lnt_expression_node.
    DATA t264 TYPE REF TO zcl_lnt_expression_node.
    DATA(t265) = t1.
    DATA(t266) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    t264 = t265->find_direct_expression( i_type_9913 = t266 ).
    t263 = t264.
    DATA(t267) = VALUE string( ).
    DATA(t268) = VALUE abap_bool( ).
    DATA t269 TYPE REF TO zcl_lnt_expression_node.
    DATA(t270) = t263.
    t269 = t270.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    t271 = t272.
    DATA(t273) = VALUE abap_bool( ).
    DATA(t274) = t269.
    IF t274 IS INITIAL.
      t273 = abap_true.
    ENDIF.
    t268 = t273.
    IF t268 = abap_true.
      DATA(t275) = ||.
      t267 = t275.
    ELSE.
      DATA t276 TYPE string.
      DATA t277 TYPE string.
      DATA t278 TYPE REF TO zcl_lnt_expression_node.
      DATA(t279) = t263.
      t278 = t279.
      t277 = t278->concat_tokens( ).
      DATA t280 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t280.
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
    DATA t287 TYPE REF TO zcl_lnt_expression_node.
    DATA(t288) = t1.
    t287 = t288.
    DATA(t289) = VALUE string( ).
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t292) = t287.
    t291 = t292->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t290 = t291.
    DATA(t293) = VALUE string( ).
    DATA t294 TYPE abap_bool.
    DATA(t295) = t290.
    t294 = xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_ddl_structure ).
    IF t294 = abap_true.
      DATA(t296) = |structure|.
      t293 = t296.
    ELSE.
      DATA(t297) = VALUE string( ).
      DATA t298 TYPE abap_bool.
      DATA(t299) = t290.
      t298 = xsdbool( t299 IS BOUND AND t299 IS INSTANCE OF zcl_lnt_ddl_aspect ).
      IF t298 = abap_true.
        DATA(t300) = |aspect|.
        t297 = t300.
      ELSE.
        DATA(t301) = VALUE string( ).
        DATA t302 TYPE abap_bool.
        DATA(t303) = t290.
        t302 = xsdbool( t303 IS BOUND AND t303 IS INSTANCE OF zcl_lnt_ddl_extend_type ).
        IF t302 = abap_true.
          DATA(t304) = |extend-type|.
          t301 = t304.
        ELSE.
          DATA(t305) = |table|.
          t301 = t305.
        ENDIF.
        t297 = t301.
      ENDIF.
      t293 = t297.
    ENDIF.
    t289 = t293.
    t286 = t289.
    t285 = t286.
    DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t307) = t2.
    t306 = t307.
    t260 = NEW zcl_lnt_iddlparser_result( i_name = t261 i_kind = t285 i_fields_62af = t306 ).
    CREATE OBJECT t260->zlnt_view_ownkeys_b0e8086400eb.
    t260->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t308 ).
    ENDIF.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t309 ).
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t310 ).
    ENDIF.
    CREATE OBJECT t260->zlnt_json_ownkeys_70e5fd461788.
    t260->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t311) = |name|.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t311 p1 = t312 ).
    ENDIF.
    DATA(t313) = |kind|.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t314.
    IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
    ENDIF.
    DATA(t315) = |fields|.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
    ENDIF.
    t259 = t260.
    DATA(t317) = t259.
    result = t317.

  ENDMETHOD.

  METHOD compact_tokens.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = ||.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = t1.
    t12 = t13.
    t11 = t12->concat_tokens( ).
    DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t14.
    DATA(t15) = `\s+`.
    DATA(t16) = |g|.
    CREATE OBJECT t14 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t15 flags = t16 checked = abap_true.
    DATA(t17) = ||.
    DATA(t18) = strlen( t11 ).
    t10 = t14->replace( p0 = t11 p1 = t17 ).
    result = t10.

  ENDMETHOD.

  METHOD has_key.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA(t7) = t4.
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t15.
      DATA(t16) = t8.
      t15 = t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t15.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        DATA t20 TYPE REF TO object.
        CLEAR t20.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        DATA(t22) = t15.
        t21 = t22->get_db65( ).
        t17 = t21.
      ENDIF.
      t14 = t17.
      t13 = t14.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      t28 = t13.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      t31 = t27.
      IF t31 IS INITIAL.
        t30 = abap_true.
      ENDIF.
      IF t30 = abap_true.
        DATA t32 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t32.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t33.
        DATA t34 TYPE REF TO object.
        CLEAR t34.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        t35 = t27.
        t34 = t35.
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
      t26 = t29.
      t25 = t26.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t25.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t37 = t40.
      ELSE.
        DATA(t41) = VALUE string( ).
        DATA t42 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t42.
        DATA(t43) = t25.
        t42 = t43.
        t41 = t42->name.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t41.
        t37 = t44.
      ENDIF.
      t24 = t37.
      t23 = t24.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = t23.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = |CDSAnnotation|.
        DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t50->has = abap_true.
        t50->value = t49.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        t47 = t51.
      ENDIF.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      IF t46 IS BOUND.
        t52 = t46->has.
      ENDIF.
      IF t47 IS BOUND.
        t53 = t47->has.
      ENDIF.
      IF t52 = t53.
        IF t52 = abap_false.
          t45 = abap_true.
        ELSEIF t46->value = t47->value.
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
      DATA(t58) = t8.
      t57 = t58->concat_tokens( ).
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
      DATA(t80) = t54.
      DATA(t81) = |KEY|.
      t79 = xsdbool( t80 = t81 ).
      IF t79 = abap_true.
        DATA(t82) = abap_true.
        result = t82.
        RETURN.
      ENDIF.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = t54.
      DATA(t85) = ||.
      t83 = xsdbool( t84 <> t85 ).
      IF t83 = abap_true.
        DATA(t86) = abap_false.
        result = t86.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t87) = abap_false.
    result = t87.

  ENDMETHOD.

  METHOD has_not_null.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      DATA(t15) = t2.
      t15->load( ).
      t14 = lines( t15->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t24.
      DATA(t25) = t2.
      DATA(t26) = t9.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      t25->load( ).
      CLEAR t27.
      READ TABLE t25->items INDEX t26 INTO t27.
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
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t23.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t30 = t33.
      ELSE.
        DATA t34 TYPE string.
        DATA(t35) = t23.
        t34 = t35->concat_tokens( ).
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t34.
        t30 = t36.
      ENDIF.
      t22 = t30.
      t21 = t22.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t21.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ELSEIF t39->has = abap_false.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t37 = t40.
      ELSE.
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        DATA(t43) = t21.
        t42 = t43->value.
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
      t20 = t37.
      t19 = t20.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t19.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ELSEIF t48->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE string.
        DATA(t52) = t19.
        t51 = t52->value.
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
      t18 = t46.
      t17 = t18.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t79.
      DATA t80 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t80.
      DATA(t81) = t2.
      DATA t82 TYPE i.
      DATA(t83) = t9.
      DATA(t84) = 1.
      t82 = t83 + t84.
      t82 = t82 + 1.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      t81->load( ).
      CLEAR t85.
      READ TABLE t81->items INDEX t82 INTO t85.
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
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t79.
      IF t90 IS INITIAL.
        t89 = abap_true.
      ENDIF.
      IF t89 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        t88 = t91.
      ELSE.
        DATA t92 TYPE string.
        DATA(t93) = t79.
        t92 = t93->concat_tokens( ).
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t92.
        t88 = t94.
      ENDIF.
      t78 = t88.
      t77 = t78.
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = t77.
      IF t97 IS INITIAL.
        t96 = abap_true.
      ELSEIF t97->has = abap_false.
        t96 = abap_true.
      ENDIF.
      IF t96 = abap_true.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t95 = t98.
      ELSE.
        DATA t99 TYPE string.
        DATA t100 TYPE string.
        DATA(t101) = t77.
        t100 = t101->value.
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
      t76 = t95.
      t75 = t76.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = t75.
      IF t106 IS INITIAL.
        t105 = abap_true.
      ELSEIF t106->has = abap_false.
        t105 = abap_true.
      ENDIF.
      IF t105 = abap_true.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        t104 = t107.
      ELSE.
        DATA(t108) = VALUE string( ).
        DATA t109 TYPE string.
        DATA(t110) = t75.
        t109 = t110->value.
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
      t74 = t104.
      t73 = t74.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = t17.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA(t135) = abap_true.
      IF t135 = abap_true.
        DATA(t136) = |NOT|.
        DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t137->has = abap_true.
        t137->value = t136.
        t134 = t137.
      ELSE.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        t134 = t138.
      ENDIF.
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = VALUE abap_bool( ).
      IF t133 IS BOUND.
        t139 = t133->has.
      ENDIF.
      IF t134 IS BOUND.
        t140 = t134->has.
      ENDIF.
      IF t139 = t140.
        IF t139 = abap_false.
          t132 = abap_true.
        ELSEIF t133->value = t134->value.
          t132 = abap_true.
        ENDIF.
      ENDIF.
      t131 = t132.
      IF t132 = abap_true.
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = t73.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA(t144) = abap_true.
        IF t144 = abap_true.
          DATA(t145) = |NULL|.
          DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t146->has = abap_true.
          t146->value = t145.
          t143 = t146.
        ELSE.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t143 = t147.
        ENDIF.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE abap_bool( ).
        IF t142 IS BOUND.
          t148 = t142->has.
        ENDIF.
        IF t143 IS BOUND.
          t149 = t143->has.
        ENDIF.
        IF t148 = t149.
          IF t148 = abap_false.
            t141 = abap_true.
          ELSEIF t142->value = t143->value.
            t141 = abap_true.
          ENDIF.
        ENDIF.
        t131 = t141.
      ENDIF.
      IF t131 = abap_true.
        DATA(t150) = abap_true.
        result = t150.
        RETURN.
      ENDIF.
      DATA t151 TYPE i.
      DATA(t152) = t9.
      DATA(t153) = 1.
      t151 = t152 + t153.
      t9 = t151.
    ENDDO.
    DATA(t154) = abap_false.
    result = t154.

  ENDMETHOD.

  METHOD kind_of.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = t1.
    t3 = t4->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t2.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ddl_structure ).
    IF t5 = abap_true.
      DATA(t7) = |structure|.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t2.
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ddl_aspect ).
    IF t8 = abap_true.
      DATA(t10) = |aspect|.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t2.
    t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_ddl_extend_type ).
    IF t11 = abap_true.
      DATA(t13) = |extend-type|.
      result = t13.
      RETURN.
    ENDIF.
    DATA(t14) = |table|.
    result = t14.

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
