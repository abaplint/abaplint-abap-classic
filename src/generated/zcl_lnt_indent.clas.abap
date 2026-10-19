* TS: src/pretty_printer/indent.ts:11:1 Indent
CLASS zcl_lnt_indent DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA options TYPE REF TO zcl_lnt_iindentation_options.
    DATA global_classes TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    METHODS constructor IMPORTING i_options TYPE REF TO zcl_lnt_iindentation_options OPTIONAL.
    METHODS execute IMPORTING i_original TYPE REF TO zcl_lnt_abap_file i_modified TYPE string RETURNING VALUE(result) TYPE string.
    METHODS get_expected_indents IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    METHODS skip_indent_for_global_class IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_18659c022673 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_indent IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_options.
    me->global_classes = NEW zlnt_runtime_set__1827558fd4c7( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalClasses`.
    DATA t4 TYPE REF TO zcl_lnt_iindentation_options.
    t4 = t1.
    DATA t6 TYPE REF TO zcl_lnt_iindentation_options.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t6 = t4.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_iindentation_options.
      DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t11 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t12 i_slctn_scrn_blck_indnttn = t14 i_global_class_skip_first = t16 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t6 = t11.
    ENDIF.
    me->options = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `options`.
  ENDMETHOD.

  METHOD execute.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_original.
    DATA(t2) = i_modified.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1->statements.
    DATA t9 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    t9 = me->get_expected_indents( i_file = t1 ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t15) = |\n|.
    DATA(t16) = strlen( t2 ).
    DATA t17 TYPE i.
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE i( ).
    DATA t20 TYPE i.
    DATA(t21) = VALUE string( ).
    CREATE OBJECT t13.
    t20 = strlen( t15 ).
    t17 = 0.
    IF t20 = 0.
      WHILE t17 < t16.
        t21 = t2+t17(1).
        APPEND t21 TO t13->items.
        t17 = t17 + 1.
      ENDWHILE.
    ELSE.
      WHILE t17 <= t16.
        FIND FIRST OCCURRENCE OF t15 IN SECTION OFFSET t17 OF t2 MATCH OFFSET t18.
        IF sy-subrc = 0.
          t19 = t18 - t17.
        ELSE.
          t18 = -1.
          t19 = t16 - t17.
        ENDIF.
        CLEAR t21.
        IF t19 > 0.
          t21 = t2+t17(t19).
        ENDIF.
        APPEND t21 TO t13->items.
        IF t18 < 0.
          EXIT.
        ENDIF.
        t17 = t18 + t20.
      ENDWHILE.
    ENDIF.
    t12 = t13.
    DATA t23 TYPE REF TO zcl_lnt_statement_node.
    DATA t24 TYPE REF TO object.
    DATA(t25) = VALUE i( ).
    DO.
      t3->load( ).
      IF t25 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t3->items INDEX t25 + 1 INTO t24.
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
      DATA t29 TYPE REF TO zcl_lnt_position.
      t29 = t23->get_first_token( )->start.
      IF xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t35 = t9->shift( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t40 = t35.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA(t44) = VALUE abap_bool( ).
      IF t40 IS INITIAL.
        t44 = abap_true.
      ELSEIF t40->has = abap_false.
        t44 = abap_true.
      ENDIF.
      t39 = t44.
      t38 = t39.
      IF t39 = abap_false.
        IF t35->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t38 = xsdbool( t35->value < CONV f( 0 ) ).
      ENDIF.
      IF t38 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t50 TYPE f.
      DATA t52 TYPE f.
      DATA t58 TYPE REF TO zcl_lnt_position.
      t58 = t23->get_first_token( )->start.
      t52 = t58->row.
      DATA(t62) = CONV f( 1 ).
      t50 = t52 - t62.
      DATA(t64) = VALUE i( ).
      IF t50 > range_i32_upper.
        t64 = range_i32_upper.
      ELSEIF t50 < range_i32_lower.
        t64 = range_i32_lower.
      ELSE.
        t64 = trunc( t50 ).
      ENDIF.
      DATA(t66) = VALUE string( ).
      DATA(t67) = VALUE string( ).
      DATA(t69) = VALUE i( ).
      IF t50 > range_i32_upper.
        t69 = range_i32_upper.
      ELSEIF t50 < range_i32_lower.
        t69 = range_i32_lower.
      ELSE.
        t69 = trunc( t50 ).
      ENDIF.
      t69 = t69 + 1.
      IF t12->has( t69 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t12->load( ).
      READ TABLE t12->items INDEX t69 INTO t67.
      DATA(t71) = strlen( t67 ).
      DATA t72 TYPE i.
      DATA t73 TYPE i.
      t72 = 0.
      t73 = t71.
      DATA(t74) = VALUE i( ).
      DATA(t75) = VALUE i( ).
      DATA(t76) = VALUE string( ).
      WHILE t72 < t73.
        t75 = t72.
        t76 = t67+t75(1).
        DATA t77 TYPE c LENGTH 1.
        CLEAR t77.
        DATA(t78) = VALUE xstring( ).
        DATA t79 TYPE x LENGTH 1.
        CLEAR t79.
        DATA t80 TYPE x LENGTH 1.
        CLEAR t80.
        DATA(t81) = VALUE i( ).
        t77 = t76.
        t74 = cl_abap_conv_out_ce=>uccpi( t77 ).
        IF t74 >= 255.
          IF zlnt_builtin_code_18659c022673 IS NOT BOUND.
            zlnt_builtin_code_18659c022673 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_18659c022673->convert( EXPORTING data = t76 IMPORTING buffer = t78 ).
          t79 = t78(1).
          t80 = t78+1(1).
          t74 = t79.
          t81 = t80.
          t74 = t74 + t81 * 256.
        ENDIF.
        IF t74 = 9 OR t74 = 10 OR t74 = 11 OR t74 = 12 OR t74 = 13 OR t74 = 32 OR t74 = 160 OR t74 = 5760 OR t74 = 8232 OR t74 = 8233 OR t74 = 8239 OR t74 = 8287 OR t74 = 12288 OR t74 = 65279 OR t74 >= 8192 AND t74 <= 8202.
          t72 = t72 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t82) = VALUE i( ).
      DATA(t83) = VALUE i( ).
      DATA(t84) = VALUE string( ).
      WHILE t73 > t72.
        t83 = t73 - 1.
        t84 = t67+t83(1).
        DATA t85 TYPE c LENGTH 1.
        CLEAR t85.
        DATA(t86) = VALUE xstring( ).
        DATA t87 TYPE x LENGTH 1.
        CLEAR t87.
        DATA t88 TYPE x LENGTH 1.
        CLEAR t88.
        DATA(t89) = VALUE i( ).
        t85 = t84.
        t82 = cl_abap_conv_out_ce=>uccpi( t85 ).
        IF t82 >= 255.
          IF zlnt_builtin_code_18659c022673 IS NOT BOUND.
            zlnt_builtin_code_18659c022673 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_18659c022673->convert( EXPORTING data = t84 IMPORTING buffer = t86 ).
          t87 = t86(1).
          t88 = t86+1(1).
          t82 = t87.
          t89 = t88.
          t82 = t82 + t89 * 256.
        ENDIF.
        IF t82 = 9 OR t82 = 10 OR t82 = 11 OR t82 = 12 OR t82 = 13 OR t82 = 32 OR t82 = 160 OR t82 = 5760 OR t82 = 8232 OR t82 = 8233 OR t82 = 8239 OR t82 = 8287 OR t82 = 12288 OR t82 = 65279 OR t82 >= 8192 AND t82 <= 8202.
          t73 = t73 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t73 > t72.
        t71 = t73 - t72.
        t66 = t67+t72(t71).
      ELSE.
        CLEAR t66.
      ENDIF.
      t12->put( p0 = t64 p1 = t66 ).
      DATA t90 TYPE f.
      t90 = CONV f( 1 ).
      DO.
        IF t35->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF xsdbool( t90 < t35->value ) = abap_false.
          EXIT.
        ENDIF.
        DATA(t97) = VALUE i( ).
        IF t50 > range_i32_upper.
          t97 = range_i32_upper.
        ELSEIF t50 < range_i32_lower.
          t97 = range_i32_lower.
        ELSE.
          t97 = trunc( t50 ).
        ENDIF.
        DATA(t100) = | |.
        DATA(t101) = VALUE string( ).
        DATA(t103) = VALUE i( ).
        IF t50 > range_i32_upper.
          t103 = range_i32_upper.
        ELSEIF t50 < range_i32_lower.
          t103 = range_i32_lower.
        ELSE.
          t103 = trunc( t50 ).
        ENDIF.
        t103 = t103 + 1.
        IF t12->has( t103 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t12->load( ).
        READ TABLE t12->items INDEX t103 INTO t101.
        DATA(t105) = strlen( t100 ).
        t12->put( p0 = t97 p1 = |{ t100 }{ t101 }| ).
        DATA(t108) = CONV f( 1 ).
        t90 = t90 + t108.
      ENDDO.
    ENDDO.
    DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t112->has = abap_true.
    t112->value = |\n|.
    result = t12->join( p0 = t112 ).

  ENDMETHOD.

  METHOD get_expected_indents.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t2.
    DATA t4 TYPE i.
    t4 = 1.
    DATA t6 TYPE REF TO zcl_lnt_stack.
    t6 = NEW zcl_lnt_stack( ).
    DATA t8 TYPE f.
    DATA t9 TYPE f.
    t9 = t4.
    t8 = t9.
    DATA t11 TYPE abap_bool.
    t11 = abap_false.
    DATA(t13) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zif_lnt_structure.
    DATA t16 TYPE REF TO zcl_lnt_structure_node.
    t16 = t1->structure.
    DATA t22 TYPE REF TO zif_lnt_structure.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
    ELSE.
      t22 = t16->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    ENDIF.
    t15 = t22.
    t13 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_dynpro_logic ).
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t31 = t1->statements.
    DATA t36 TYPE REF TO zcl_lnt_statement_node.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t31->load( ).
      IF t38 >= lines( t31->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t31->items INDEX t38 + 1 INTO t37.
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
      DATA t42 TYPE REF TO zcl_lnt_position.
      t42 = t36->get_first_token( )->start.
      IF xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t48 TYPE REF TO zif_lnt_statement.
      t48 = t36->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE abap_bool.
      t70 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_if ).
      t69 = t70.
      IF t70 = abap_false.
        t69 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_while ).
      ENDIF.
      t68 = t69.
      IF t69 = abap_false.
        t68 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_module ).
      ENDIF.
      t67 = t68.
      IF t68 = abap_false.
        t67 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_select ).
      ENDIF.
      t66 = t67.
      IF t67 = abap_false.
        t66 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_method ).
      ENDIF.
      t65 = t66.
      IF t66 = abap_false.
        t65 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_chain ).
      ENDIF.
      t64 = t65.
      IF t65 = abap_false.
        t64 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_at ).
      ENDIF.
      t63 = t64.
      IF t64 = abap_false.
        t63 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else ).
      ENDIF.
      t62 = t63.
      IF t63 = abap_false.
        t62 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_exec ).
      ENDIF.
      t61 = t62.
      IF t62 = abap_false.
        t61 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_of_definition ).
      ENDIF.
      t60 = t61.
      IF t61 = abap_false.
        t60 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_loop ).
      ENDIF.
      t59 = t60.
      IF t60 = abap_false.
        t59 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_test_injection ).
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        t58 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_test_seam ).
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        t57 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_form ).
      ENDIF.
      t56 = t57.
      IF t57 = abap_false.
        t56 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_catch ).
      ENDIF.
      t55 = t56.
      IF t56 = abap_false.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = VALUE abap_bool( ).
        DATA(t102) = VALUE abap_bool( ).
        DATA t103 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t103 = me->options->slctn_scrn_blck_indnttn.
        DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t105.
        DATA(t108) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t108->has = abap_true.
        t108->value = abap_true.
        t105 = t108.
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = VALUE abap_bool( ).
        IF t103 IS BOUND.
          t110 = t103->has.
        ENDIF.
        IF t105 IS BOUND.
          t111 = t105->has.
        ENDIF.
        IF t110 = t111.
          IF t110 = abap_false.
            t102 = abap_true.
          ELSEIF t103->value = t105->value.
            t102 = abap_true.
          ENDIF.
        ENDIF.
        t101 = t102.
        IF t102 = abap_true.
          t101 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_selection_screen ).
        ENDIF.
        t100 = t101.
        IF t101 = abap_true.
          DATA(t114) = VALUE abap_bool( ).
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = VALUE abap_bool( ).
          DATA(t117) = VALUE i( ).
          DATA t118 TYPE string.
          DATA t119 TYPE string.
          t119 = t36->concat_tokens( ).
          DATA(t121) = strlen( t119 ).
          t118 = t119.
          IF t118 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t118 TO UPPER CASE.
          ELSE.
            t118 = zlnt_runtime_uppe_91169605024d=>full( t118 ).
          ENDIF.
          DATA(t122) = |END OF SCREEN|.
          DATA(t123) = strlen( t118 ).
          IF t122 IS INITIAL.
            t117 = 0.
          ELSE.
            FIND t122 IN t118 MATCH OFFSET t117.
            IF sy-subrc <> 0.
              t117 = -1.
            ENDIF.
          ENDIF.
          t116 = xsdbool( t117 >= 0 ).
          t115 = t116.
          IF t116 = abap_false.
            DATA(t126) = VALUE i( ).
            DATA t127 TYPE string.
            DATA t128 TYPE string.
            t128 = t36->concat_tokens( ).
            DATA(t130) = strlen( t128 ).
            t127 = t128.
            IF t127 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t127 TO UPPER CASE.
            ELSE.
              t127 = zlnt_runtime_uppe_91169605024d=>full( t127 ).
            ENDIF.
            DATA(t131) = |END OF BLOCK|.
            DATA(t132) = strlen( t127 ).
            IF t131 IS INITIAL.
              t126 = 0.
            ELSE.
              FIND t131 IN t127 MATCH OFFSET t126.
              IF sy-subrc <> 0.
                t126 = -1.
              ENDIF.
            ENDIF.
            t115 = xsdbool( t126 >= 0 ).
          ENDIF.
          t114 = t115.
          IF t115 = abap_false.
            DATA(t135) = VALUE i( ).
            DATA t136 TYPE string.
            DATA t137 TYPE string.
            t137 = t36->concat_tokens( ).
            DATA(t139) = strlen( t137 ).
            t136 = t137.
            IF t136 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t136 TO UPPER CASE.
            ELSE.
              t136 = zlnt_runtime_uppe_91169605024d=>full( t136 ).
            ENDIF.
            DATA(t140) = |END OF LINE|.
            DATA(t141) = strlen( t136 ).
            IF t140 IS INITIAL.
              t135 = 0.
            ELSE.
              FIND t140 IN t136 MATCH OFFSET t135.
              IF sy-subrc <> 0.
                t135 = -1.
              ENDIF.
            ENDIF.
            t114 = xsdbool( t135 >= 0 ).
          ENDIF.
          t100 = t114.
        ENDIF.
        t55 = t100.
      ENDIF.
      t54 = t55.
      IF t55 = abap_false.
        t54 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else_if ).
      ENDIF.
      t53 = t54.
      IF t54 = abap_false.
        t53 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_function ).
      ENDIF.
      t52 = t53.
      IF t53 = abap_false.
        t52 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_interface ).
      ENDIF.
      t51 = t52.
      IF t52 = abap_false.
        t51 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_do ).
      ENDIF.
      IF t51 = abap_true.
        DATA(t153) = CONV f( 2 ).
        t8 = t8 - t153.
      ELSE.
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = VALUE abap_bool( ).
        DATA(t156) = VALUE abap_bool( ).
        DATA(t157) = VALUE abap_bool( ).
        DATA(t158) = VALUE abap_bool( ).
        DATA(t159) = VALUE abap_bool( ).
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = VALUE abap_bool( ).
        DATA(t163) = VALUE abap_bool( ).
        DATA(t164) = VALUE abap_bool( ).
        DATA t165 TYPE abap_bool.
        DATA t166 TYPE abap_bool.
        t166 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_start_of_selection ).
        t165 = t166.
        IF t166 = abap_false.
          t165 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
        ENDIF.
        t164 = t165.
        IF t165 = abap_false.
          t164 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_line_selection ).
        ENDIF.
        t163 = t164.
        IF t164 = abap_false.
          t163 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_pf ).
        ENDIF.
        t162 = t163.
        IF t163 = abap_false.
          t162 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_initialization ).
        ENDIF.
        t161 = t162.
        IF t162 = abap_false.
          t161 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_user_command ).
        ENDIF.
        t160 = t161.
        IF t161 = abap_false.
          t160 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_process_after_input ).
        ENDIF.
        t159 = t160.
        IF t160 = abap_false.
          t159 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_bfr_otpt ).
        ENDIF.
        t158 = t159.
        IF t159 = abap_false.
          t158 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_on_vl_rqst ).
        ENDIF.
        t157 = t158.
        IF t158 = abap_false.
          t157 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_top_of_page ).
        ENDIF.
        t156 = t157.
        IF t157 = abap_false.
          t156 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_get ).
        ENDIF.
        t155 = t156.
        IF t156 = abap_false.
          t155 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_of_selection ).
        ENDIF.
        t154 = t155.
        IF t155 = abap_false.
          t154 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_load_of_program ).
        ENDIF.
        IF t154 = abap_true.
          DATA t192 TYPE f.
          t192 = t4.
          t8 = t192.
          t11 = abap_true.
        ELSE.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = VALUE abap_bool( ).
          DATA(t197) = VALUE abap_bool( ).
          DATA t198 TYPE abap_bool.
          DATA t199 TYPE abap_bool.
          t199 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_form ).
          t198 = t199.
          IF t199 = abap_false.
            DATA t201 TYPE abap_bool.
            DATA t202 TYPE abap_bool.
            t202 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_include ).
            t201 = t202.
            IF t202 = abap_true.
              t201 = t11.
            ENDIF.
            t198 = t201.
          ENDIF.
          t197 = t198.
          IF t198 = abap_false.
            DATA t205 TYPE abap_bool.
            DATA t206 TYPE abap_bool.
            t206 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_module ).
            t205 = t206.
            IF t206 = abap_true.
              t205 = xsdbool( t13 = abap_false ).
            ENDIF.
            t197 = t205.
          ENDIF.
          t196 = t197.
          IF t197 = abap_false.
            t196 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
          ENDIF.
          t195 = t196.
          IF t196 = abap_false.
            t195 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_class_definition ).
          ENDIF.
          IF t195 = abap_true.
            DATA t215 TYPE f.
            t215 = t4.
            t8 = t215.
            t11 = abap_false.
          ELSE.
            DATA t218 TYPE abap_bool.
            DATA t219 TYPE abap_bool.
            t219 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_cleanup ).
            t218 = t219.
            IF t219 = abap_false.
              t218 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_catch ).
            ENDIF.
            IF t218 = abap_true.
              DATA(t224) = VALUE f( ).
              DATA t225 TYPE REF TO zcl_lnt_stack.
              t225 = t6.
              DATA(t227) = VALUE f( ).
              DATA t228 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
              t228 = t225->items.
              DATA t230 TYPE i.
              DATA t231 TYPE i.
              DATA t232 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
              t232 = t225->items.
              t232->load( ).
              t231 = lines( t232->items ).
              DATA(t234) = 1.
              t230 = t231 - t234.
              t230 = t230 + 1.
              IF t228->has( t230 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t228->load( ).
              READ TABLE t228->items INDEX t230 INTO t227.
              t224 = t227.
              DATA(t235) = CONV f( 2 ).
              t8 = t224 - t235.
            ELSE.
              DATA(t236) = VALUE abap_bool( ).
              DATA(t237) = VALUE abap_bool( ).
              DATA(t238) = VALUE abap_bool( ).
              DATA(t239) = VALUE abap_bool( ).
              DATA t240 TYPE abap_bool.
              DATA t241 TYPE abap_bool.
              t241 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_public ).
              t240 = t241.
              IF t241 = abap_false.
                t240 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_protected ).
              ENDIF.
              t239 = t240.
              IF t240 = abap_false.
                t239 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_private ).
              ENDIF.
              t238 = t239.
              IF t239 = abap_false.
                t238 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when_type ).
              ENDIF.
              t237 = t238.
              IF t238 = abap_false.
                t237 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_when_others ).
              ENDIF.
              t236 = t237.
              IF t237 = abap_false.
                t236 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when ).
              ENDIF.
              IF t236 = abap_true.
                DATA t254 TYPE REF TO zcl_lnt_stack.
                t254 = t6.
                DATA(t256) = VALUE f( ).
                DATA t257 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                t257 = t254->items.
                DATA t259 TYPE i.
                DATA t260 TYPE i.
                DATA t261 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                t261 = t254->items.
                t261->load( ).
                t260 = lines( t261->items ).
                DATA(t263) = 1.
                t259 = t260 - t263.
                t259 = t259 + 1.
                IF t257->has( t259 - 1 ) = abap_false.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                t257->load( ).
                READ TABLE t257->items INDEX t259 INTO t256.
                t8 = t256.
              ELSE.
                IF xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_try ) = abap_true.
                  DATA(t267) = VALUE f( ).
                  DATA t268 TYPE REF TO zcl_lnt_stack.
                  t268 = t6.
                  DATA(t272) = VALUE f( ).
                  DATA t273 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  t273 = t268->items.
                  DATA t275 TYPE i.
                  DATA t276 TYPE i.
                  DATA t277 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  t277 = t268->items.
                  t277->load( ).
                  t276 = lines( t277->items ).
                  DATA(t279) = 1.
                  t275 = t276 - t279.
                  t275 = t275 + 1.
                  IF t273->has( t275 - 1 ) = abap_false.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  t273->load( ).
                  READ TABLE t273->items INDEX t275 INTO t272.
                  DATA t282 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  t282 = t268->items.
                  DATA t285 TYPE i.
                  DATA t286 TYPE i.
                  DATA t287 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  t287 = t268->items.
                  t287->load( ).
                  t286 = lines( t287->items ).
                  DATA(t289) = 1.
                  t285 = t286 - t289.
                  t268->items = t282->slice2( p0 = 0 p1 = t285 ).
                  DELETE t268->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
                  t267 = t272.
                  DATA(t291) = VALUE f( ).
                  DATA(t292) = VALUE i( ).
                  DATA(t293) = VALUE abap_bool( ).
                  DATA t294 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  t294 = me->options->align_try_catch.
                  IF t294 IS BOUND.
                    IF t294->has = abap_true.
                      t293 = xsdbool( t294->value IS NOT INITIAL ).
                    ENDIF.
                  ENDIF.
                  IF t293 = abap_true.
                    t292 = 2.
                  ELSE.
                    t292 = 4.
                  ENDIF.
                  t291 = t292.
                  t8 = t267 - t291.
                ELSE.
                  DATA t298 TYPE abap_bool.
                  DATA t299 TYPE abap_bool.
                  t299 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_class ).
                  t298 = t299.
                  IF t299 = abap_false.
                    t298 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_case ).
                  ENDIF.
                  IF t298 = abap_true.
                    DATA(t304) = VALUE f( ).
                    DATA t305 TYPE REF TO zcl_lnt_stack.
                    t305 = t6.
                    DATA(t309) = VALUE f( ).
                    DATA t310 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    t310 = t305->items.
                    DATA t312 TYPE i.
                    DATA t313 TYPE i.
                    DATA t314 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    t314 = t305->items.
                    t314->load( ).
                    t313 = lines( t314->items ).
                    DATA(t316) = 1.
                    t312 = t313 - t316.
                    t312 = t312 + 1.
                    IF t310->has( t312 - 1 ) = abap_false.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    t310->load( ).
                    READ TABLE t310->items INDEX t312 INTO t309.
                    DATA t319 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    t319 = t305->items.
                    DATA t322 TYPE i.
                    DATA t323 TYPE i.
                    DATA t324 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    t324 = t305->items.
                    t324->load( ).
                    t323 = lines( t324->items ).
                    DATA(t326) = 1.
                    t322 = t323 - t326.
                    t305->items = t319->slice2( p0 = 0 p1 = t322 ).
                    DELETE t305->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
                    t304 = t309.
                    DATA(t328) = CONV f( 2 ).
                    t8 = t304 - t328.
                    DATA t329 TYPE f.
                    DATA(t330) = t8.
                    DATA t331 TYPE f.
                    t331 = t4.
                    t329 = t331.
                    IF t329 = 0 AND t330 = 0.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    IF t330 > t329.
                      t329 = t330.
                    ENDIF.
                    t8 = t329.
                  ELSE.
                    DATA(t333) = VALUE abap_bool( ).
                    DATA(t334) = VALUE abap_bool( ).
                    DATA t335 TYPE abap_bool.
                    DATA t336 TYPE abap_bool.
                    t336 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_comment ).
                    t335 = t336.
                    IF t336 = abap_false.
                      t335 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_include_type ).
                    ENDIF.
                    t334 = t335.
                    IF t335 = abap_false.
                      t334 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_empty ).
                    ENDIF.
                    t333 = t334.
                    IF t334 = abap_false.
                      t333 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_macro_content ).
                    ENDIF.
                    IF t333 = abap_true.
                      t2->load( ).
                      APPEND CONV f( -1 ) TO t2->items.
                      t2->save( ).
                      t29 = t36.
                      CONTINUE.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t350) = VALUE abap_bool( ).
      DATA t351 TYPE abap_bool.
      DATA t352 TYPE abap_bool.
      t352 = xsdbool( t29 IS BOUND ).
      t351 = t352.
      IF t352 = abap_true.
        DATA t356 TYPE REF TO zif_lnt_statement.
        t356 = t29->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t351 = xsdbool( xsdbool( t356 IS BOUND AND t356 IS INSTANCE OF zcl_lnt_st_comment ) = abap_false ).
      ENDIF.
      t350 = t351.
      IF t351 = abap_true.
        DATA t360 TYPE f.
        DATA t363 TYPE REF TO zcl_lnt_abstract_token.
        t363 = t29->get_last_token( ).
        DATA t368 TYPE f.
        t368 = t363->start->row.
        DATA t375 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t375 = t363->start->col.
        DATA t381 TYPE f.
        t381 = strlen( t363->str ).
        DATA(t386) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t386->has = abap_true.
        t386->value = t381.
        t360 = NEW zcl_lnt_position( i_row = t368 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t375 right = t386 op = `+` ) )->row.
        DATA t395 TYPE REF TO zcl_lnt_position.
        t395 = t36->get_first_token( )->start.
        t350 = xsdbool( t360 = t395->row ).
      ENDIF.
      IF t350 = abap_true.
        t2->load( ).
        APPEND CONV f( -1 ) TO t2->items.
        t2->save( ).
        t29 = t36.
        CONTINUE.
      ENDIF.
      t2->load( ).
      APPEND t8 TO t2->items.
      t2->save( ).
      DATA(t407) = VALUE abap_bool( ).
      DATA(t408) = VALUE abap_bool( ).
      DATA(t409) = VALUE abap_bool( ).
      DATA(t410) = VALUE abap_bool( ).
      DATA(t411) = VALUE abap_bool( ).
      DATA(t412) = VALUE abap_bool( ).
      DATA(t413) = VALUE abap_bool( ).
      DATA(t414) = VALUE abap_bool( ).
      DATA(t415) = VALUE abap_bool( ).
      DATA(t416) = VALUE abap_bool( ).
      DATA(t417) = VALUE abap_bool( ).
      DATA(t418) = VALUE abap_bool( ).
      DATA(t419) = VALUE abap_bool( ).
      DATA(t420) = VALUE abap_bool( ).
      DATA(t421) = VALUE abap_bool( ).
      DATA(t422) = VALUE abap_bool( ).
      DATA(t423) = VALUE abap_bool( ).
      DATA(t424) = VALUE abap_bool( ).
      DATA(t425) = VALUE abap_bool( ).
      DATA(t426) = VALUE abap_bool( ).
      DATA(t427) = VALUE abap_bool( ).
      DATA(t428) = VALUE abap_bool( ).
      DATA(t429) = VALUE abap_bool( ).
      DATA(t430) = VALUE abap_bool( ).
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = VALUE abap_bool( ).
      DATA(t433) = VALUE abap_bool( ).
      DATA(t434) = VALUE abap_bool( ).
      DATA(t435) = VALUE abap_bool( ).
      DATA(t436) = VALUE abap_bool( ).
      DATA(t437) = VALUE abap_bool( ).
      DATA(t438) = VALUE abap_bool( ).
      DATA(t439) = VALUE abap_bool( ).
      DATA(t440) = VALUE abap_bool( ).
      DATA(t441) = VALUE abap_bool( ).
      DATA(t442) = VALUE abap_bool( ).
      DATA(t443) = VALUE abap_bool( ).
      DATA(t444) = VALUE abap_bool( ).
      DATA(t445) = VALUE abap_bool( ).
      DATA(t446) = VALUE abap_bool( ).
      DATA(t447) = VALUE abap_bool( ).
      DATA t448 TYPE abap_bool.
      DATA t449 TYPE abap_bool.
      t449 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_if ).
      t448 = t449.
      IF t449 = abap_false.
        t448 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_while ).
      ENDIF.
      t447 = t448.
      IF t448 = abap_false.
        DATA t453 TYPE abap_bool.
        DATA t454 TYPE abap_bool.
        t454 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_module ).
        t453 = t454.
        IF t454 = abap_true.
          t453 = xsdbool( t13 = abap_false ).
        ENDIF.
        t447 = t453.
      ENDIF.
      t446 = t447.
      IF t447 = abap_false.
        t446 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_select_loop ).
      ENDIF.
      t445 = t446.
      IF t446 = abap_false.
        t445 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_function_module ).
      ENDIF.
      t444 = t445.
      IF t445 = abap_false.
        t444 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_interface ).
      ENDIF.
      t443 = t444.
      IF t444 = abap_false.
        t443 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_do ).
      ENDIF.
      t442 = t443.
      IF t443 = abap_false.
        t442 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at ).
      ENDIF.
      t441 = t442.
      IF t442 = abap_false.
        t441 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_first ).
      ENDIF.
      t440 = t441.
      IF t441 = abap_false.
        t440 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_last ).
      ENDIF.
      t439 = t440.
      IF t440 = abap_false.
        t439 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_exec_sql ).
      ENDIF.
      t438 = t439.
      IF t439 = abap_false.
        t438 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_catch ).
      ENDIF.
      t437 = t438.
      IF t438 = abap_false.
        t437 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_process_after_input ).
      ENDIF.
      t436 = t437.
      IF t437 = abap_false.
        t436 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_bfr_otpt ).
      ENDIF.
      t435 = t436.
      IF t436 = abap_false.
        t435 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_on_vl_rqst ).
      ENDIF.
      t434 = t435.
      IF t435 = abap_false.
        t434 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_define ).
      ENDIF.
      t433 = t434.
      IF t434 = abap_false.
        t433 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when ).
      ENDIF.
      t432 = t433.
      IF t433 = abap_false.
        t432 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when_type ).
      ENDIF.
      t431 = t432.
      IF t432 = abap_false.
        t431 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_when_others ).
      ENDIF.
      t430 = t431.
      IF t431 = abap_false.
        t430 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_cleanup ).
      ENDIF.
      t429 = t430.
      IF t430 = abap_false.
        t429 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_loop ).
      ENDIF.
      t428 = t429.
      IF t429 = abap_false.
        t428 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_loop_at_screen ).
      ENDIF.
      t427 = t428.
      IF t428 = abap_false.
        t427 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_ctch_systm_excptns ).
      ENDIF.
      t426 = t427.
      IF t427 = abap_false.
        t426 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_form ).
      ENDIF.
      t425 = t426.
      IF t426 = abap_false.
        t425 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else ).
      ENDIF.
      t424 = t425.
      IF t425 = abap_false.
        t424 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else_if ).
      ENDIF.
      t423 = t424.
      IF t424 = abap_false.
        t423 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
      ENDIF.
      t422 = t423.
      IF t423 = abap_false.
        t422 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_chain ).
      ENDIF.
      t421 = t422.
      IF t422 = abap_false.
        t421 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_test_injection ).
      ENDIF.
      t420 = t421.
      IF t421 = abap_false.
        t420 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_test_seam ).
      ENDIF.
      t419 = t420.
      IF t420 = abap_false.
        DATA(t513) = VALUE abap_bool( ).
        DATA(t514) = VALUE abap_bool( ).
        DATA(t515) = VALUE abap_bool( ).
        DATA t516 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t516 = me->options->slctn_scrn_blck_indnttn.
        DATA t518 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t518.
        DATA(t521) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t521->has = abap_true.
        t521->value = abap_true.
        t518 = t521.
        DATA(t523) = VALUE abap_bool( ).
        DATA(t524) = VALUE abap_bool( ).
        IF t516 IS BOUND.
          t523 = t516->has.
        ENDIF.
        IF t518 IS BOUND.
          t524 = t518->has.
        ENDIF.
        IF t523 = t524.
          IF t523 = abap_false.
            t515 = abap_true.
          ELSEIF t516->value = t518->value.
            t515 = abap_true.
          ENDIF.
        ENDIF.
        t514 = t515.
        IF t515 = abap_true.
          t514 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_selection_screen ).
        ENDIF.
        t513 = t514.
        IF t514 = abap_true.
          DATA(t527) = VALUE abap_bool( ).
          DATA(t528) = VALUE abap_bool( ).
          DATA(t529) = VALUE abap_bool( ).
          DATA(t530) = VALUE abap_bool( ).
          DATA(t531) = VALUE i( ).
          DATA t532 TYPE string.
          DATA t533 TYPE string.
          t533 = t36->concat_tokens( ).
          DATA(t535) = strlen( t533 ).
          t532 = t533.
          IF t532 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t532 TO UPPER CASE.
          ELSE.
            t532 = zlnt_runtime_uppe_91169605024d=>full( t532 ).
          ENDIF.
          DATA(t536) = |BEGIN OF SCREEN|.
          DATA(t537) = strlen( t532 ).
          IF t536 IS INITIAL.
            t531 = 0.
          ELSE.
            FIND t536 IN t532 MATCH OFFSET t531.
            IF sy-subrc <> 0.
              t531 = -1.
            ENDIF.
          ENDIF.
          t530 = xsdbool( t531 >= 0 ).
          t529 = t530.
          IF t530 = abap_false.
            DATA(t540) = VALUE i( ).
            DATA t541 TYPE string.
            DATA t542 TYPE string.
            t542 = t36->concat_tokens( ).
            DATA(t544) = strlen( t542 ).
            t541 = t542.
            IF t541 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t541 TO UPPER CASE.
            ELSE.
              t541 = zlnt_runtime_uppe_91169605024d=>full( t541 ).
            ENDIF.
            DATA(t545) = |BEGIN OF TABBED BLOCK|.
            DATA(t546) = strlen( t541 ).
            IF t545 IS INITIAL.
              t540 = 0.
            ELSE.
              FIND t545 IN t541 MATCH OFFSET t540.
              IF sy-subrc <> 0.
                t540 = -1.
              ENDIF.
            ENDIF.
            t529 = xsdbool( t540 >= 0 ).
          ENDIF.
          t528 = t529.
          IF t529 = abap_false.
            DATA(t549) = VALUE i( ).
            DATA t550 TYPE string.
            DATA t551 TYPE string.
            t551 = t36->concat_tokens( ).
            DATA(t553) = strlen( t551 ).
            t550 = t551.
            IF t550 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t550 TO UPPER CASE.
            ELSE.
              t550 = zlnt_runtime_uppe_91169605024d=>full( t550 ).
            ENDIF.
            DATA(t554) = |BEGIN OF BLOCK|.
            DATA(t555) = strlen( t550 ).
            IF t554 IS INITIAL.
              t549 = 0.
            ELSE.
              FIND t554 IN t550 MATCH OFFSET t549.
              IF sy-subrc <> 0.
                t549 = -1.
              ENDIF.
            ENDIF.
            t528 = xsdbool( t549 >= 0 ).
          ENDIF.
          t527 = t528.
          IF t528 = abap_false.
            DATA(t558) = VALUE i( ).
            DATA t559 TYPE string.
            DATA t560 TYPE string.
            t560 = t36->concat_tokens( ).
            DATA(t562) = strlen( t560 ).
            t559 = t560.
            IF t559 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t559 TO UPPER CASE.
            ELSE.
              t559 = zlnt_runtime_uppe_91169605024d=>full( t559 ).
            ENDIF.
            DATA(t563) = |BEGIN OF LINE|.
            DATA(t564) = strlen( t559 ).
            IF t563 IS INITIAL.
              t558 = 0.
            ELSE.
              FIND t563 IN t559 MATCH OFFSET t558.
              IF sy-subrc <> 0.
                t558 = -1.
              ENDIF.
            ENDIF.
            t527 = xsdbool( t558 >= 0 ).
          ENDIF.
          t513 = t527.
        ENDIF.
        t419 = t513.
      ENDIF.
      t418 = t419.
      IF t419 = abap_false.
        t418 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_start_of_selection ).
      ENDIF.
      t417 = t418.
      IF t418 = abap_false.
        t417 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_get ).
      ENDIF.
      t416 = t417.
      IF t417 = abap_false.
        t416 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
      ENDIF.
      t415 = t416.
      IF t416 = abap_false.
        t415 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_line_selection ).
      ENDIF.
      t414 = t415.
      IF t415 = abap_false.
        t414 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_load_of_program ).
      ENDIF.
      t413 = t414.
      IF t414 = abap_false.
        t413 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_initialization ).
      ENDIF.
      t412 = t413.
      IF t413 = abap_false.
        t412 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_user_command ).
      ENDIF.
      t411 = t412.
      IF t412 = abap_false.
        t411 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_top_of_page ).
      ENDIF.
      t410 = t411.
      IF t411 = abap_false.
        t410 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_of_selection ).
      ENDIF.
      t409 = t410.
      IF t410 = abap_false.
        t409 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_public ).
      ENDIF.
      t408 = t409.
      IF t409 = abap_false.
        t408 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_protected ).
      ENDIF.
      t407 = t408.
      IF t408 = abap_false.
        t407 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_private ).
      ENDIF.
      IF t407 = abap_true.
        DATA(t592) = CONV f( 2 ).
        t8 = t8 + t592.
      ELSE.
        IF xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_try ) = abap_true.
          DATA(t597) = VALUE f( ).
          DATA(t598) = VALUE i( ).
          DATA(t599) = VALUE abap_bool( ).
          DATA t600 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t600 = me->options->align_try_catch.
          IF t600 IS BOUND.
            IF t600->has = abap_true.
              t599 = xsdbool( t600->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t599 = abap_true.
            t598 = 2.
          ELSE.
            t598 = 4.
          ENDIF.
          t597 = t598.
          t8 = t8 + t597.
          DATA t608 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
          t608 = t6->items.
          t608->load( ).
          APPEND t8 TO t608->items.
          t608->save( ).
        ELSE.
          DATA(t611) = VALUE abap_bool( ).
          DATA(t612) = VALUE abap_bool( ).
          DATA t613 TYPE abap_bool.
          DATA t614 TYPE abap_bool.
          t614 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_class_definition ).
          t613 = t614.
          IF t614 = abap_false.
            t613 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_case ).
          ENDIF.
          t612 = t613.
          IF t613 = abap_false.
            t612 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_case_type ).
          ENDIF.
          t611 = t612.
          IF t612 = abap_false.
            t611 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
          ENDIF.
          IF t611 = abap_true.
            DATA(t624) = VALUE f( ).
            DATA(t625) = VALUE i( ).
            IF me->skip_indent_for_global_class( i_statement = t36 ) = abap_true.
              t625 = 0.
            ELSE.
              t625 = 2.
            ENDIF.
            t624 = t625.
            t8 = t8 + t624.
            DATA t634 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
            t634 = t6->items.
            t634->load( ).
            APPEND t8 TO t634->items.
            t634->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
      t29 = t36.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD skip_indent_for_global_class.
    DATA(t1) = i_statement.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t4 = me->options->global_class_skip_first.
    IF t4 IS BOUND.
      IF t4->has = abap_true.
        t3 = xsdbool( t4->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF xsdbool( t3 = abap_false ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zif_lnt_statement.
    t7 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    t11 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_st_class_definition ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
      t14 = t1->find_first_expression( i_type_9913 = t16 ).
      t10 = xsdbool( t14 IS BOUND ).
    ENDIF.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t17 = t1->find_first_expression( i_type_9913 = t20 ).
      IF xsdbool( t17 IS BOUND ) = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t24) = me->global_classes.
        DATA t25 TYPE string.
        DATA t26 TYPE string.
        t26 = t17->get_first_token( )->str.
        DATA(t33) = strlen( t26 ).
        t25 = t26.
        IF t25 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t25 TO UPPER CASE.
        ELSE.
          t25 = zlnt_runtime_uppe_91169605024d=>full( t25 ).
        ENDIF.
        t23 = t24->add( p0 = t25 ).
      ENDIF.
      result = abap_true.
      RETURN.
    ELSE.
      IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ) = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
        t37 = t1->find_first_expression( i_type_9913 = t40 ).
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE abap_bool.
        t42 = xsdbool( t37 IS BOUND ).
        t41 = t42.
        IF t42 = abap_true.
          DATA(t45) = me->global_classes.
          DATA t46 TYPE string.
          DATA t47 TYPE string.
          t47 = t37->get_first_token( )->str.
          DATA(t54) = strlen( t47 ).
          t46 = t47.
          IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t46 TO UPPER CASE.
          ELSE.
            t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
          ENDIF.
          t41 = t45->has( p0 = t46 ).
        ENDIF.
        IF t41 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1373_0b8abd610250.
  ENDMETHOD.
ENDCLASS.
