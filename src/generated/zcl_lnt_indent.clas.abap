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
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t4 IS BOUND ).
    IF t7 = abap_true.
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
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->statements.
    t3 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t10 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    t10 = me->get_expected_indents( i_file = t1 ).
    t9 = t10.
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
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      t31 = t23->get_first_token( ).
      DATA t33 TYPE REF TO zcl_lnt_position.
      t33 = t31->start.
      t29 = t33.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t28 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t36 = t9->shift( ).
      t35 = t36.
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
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE f( ).
        IF t35->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t47 = t35->value.
        DATA(t49) = CONV f( 0 ).
        t46 = xsdbool( t47 < t49 ).
        t38 = t46.
      ENDIF.
      IF t38 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t50 TYPE f.
      DATA t51 TYPE f.
      DATA t52 TYPE f.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      t56 = t23->get_first_token( ).
      DATA t58 TYPE REF TO zcl_lnt_position.
      t58 = t56->start.
      DATA t60 TYPE f.
      t60 = t58->row.
      t52 = t60.
      DATA(t62) = CONV f( 1 ).
      t51 = t52 - t62.
      t50 = t51.
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
      CLEAR t67.
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
      DATA(t91) = CONV f( 1 ).
      t90 = t91.
      DO.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t94) = VALUE f( ).
        IF t35->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t94 = t35->value.
        t92 = xsdbool( t90 < t94 ).
        IF t92 = abap_false.
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
        DATA(t99) = VALUE string( ).
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
        CLEAR t101.
        READ TABLE t12->items INDEX t103 INTO t101.
        DATA(t105) = strlen( t100 ).
        t99 = |{ t100 }{ t101 }|.
        t12->put( p0 = t97 p1 = t99 ).
        DATA t106 TYPE f.
        DATA(t108) = CONV f( 1 ).
        t106 = t90 + t108.
        t90 = t106.
      ENDDO.
    ENDDO.
    DATA t109 TYPE string.
    DATA(t111) = |\n|.
    DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t112->has = abap_true.
    t112->value = t111.
    t109 = t12->join( p0 = t112 ).
    result = t109.

  ENDMETHOD.

  METHOD get_expected_indents.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t3 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t3.
    t2 = t3.
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
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zif_lnt_structure.
    DATA t16 TYPE REF TO zcl_lnt_structure_node.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t1->structure.
    t16 = t20.
    DATA t22 TYPE REF TO zif_lnt_structure.
    DATA(t23) = xsdbool( t16 IS INITIAL ).
    IF t23 = abap_true.
    ELSE.
      DATA t26 TYPE REF TO zif_lnt_structure.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      t27 = t16.
      t26 = t27->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
      t22 = t26.
    ENDIF.
    t15 = t22.
    t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_dynpro_logic ).
    t13 = t14.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = t1->statements.
    t31 = t34.
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
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      t44 = t36->get_first_token( ).
      DATA t46 TYPE REF TO zcl_lnt_position.
      t46 = t44->start.
      t42 = t46.
      t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t48 TYPE REF TO zif_lnt_statement.
      DATA t49 TYPE REF TO zif_lnt_statement.
      t49 = t36->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t48 = t49.
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
        DATA t72 TYPE abap_bool.
        t72 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_while ).
        t69 = t72.
      ENDIF.
      t68 = t69.
      IF t69 = abap_false.
        DATA t74 TYPE abap_bool.
        t74 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_module ).
        t68 = t74.
      ENDIF.
      t67 = t68.
      IF t68 = abap_false.
        DATA t76 TYPE abap_bool.
        t76 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_select ).
        t67 = t76.
      ENDIF.
      t66 = t67.
      IF t67 = abap_false.
        DATA t78 TYPE abap_bool.
        t78 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_method ).
        t66 = t78.
      ENDIF.
      t65 = t66.
      IF t66 = abap_false.
        DATA t80 TYPE abap_bool.
        t80 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_chain ).
        t65 = t80.
      ENDIF.
      t64 = t65.
      IF t65 = abap_false.
        DATA t82 TYPE abap_bool.
        t82 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_at ).
        t64 = t82.
      ENDIF.
      t63 = t64.
      IF t64 = abap_false.
        DATA t84 TYPE abap_bool.
        t84 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else ).
        t63 = t84.
      ENDIF.
      t62 = t63.
      IF t63 = abap_false.
        DATA t86 TYPE abap_bool.
        t86 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_exec ).
        t62 = t86.
      ENDIF.
      t61 = t62.
      IF t62 = abap_false.
        DATA t88 TYPE abap_bool.
        t88 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_of_definition ).
        t61 = t88.
      ENDIF.
      t60 = t61.
      IF t61 = abap_false.
        DATA t90 TYPE abap_bool.
        t90 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_loop ).
        t60 = t90.
      ENDIF.
      t59 = t60.
      IF t60 = abap_false.
        DATA t92 TYPE abap_bool.
        t92 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_test_injection ).
        t59 = t92.
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        DATA t94 TYPE abap_bool.
        t94 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_test_seam ).
        t58 = t94.
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        DATA t96 TYPE abap_bool.
        t96 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_form ).
        t57 = t96.
      ENDIF.
      t56 = t57.
      IF t57 = abap_false.
        DATA t98 TYPE abap_bool.
        t98 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_catch ).
        t56 = t98.
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
          DATA t112 TYPE abap_bool.
          t112 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_selection_screen ).
          t101 = t112.
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
          DATA(t124) = 0.
          t116 = xsdbool( t117 >= t124 ).
          t115 = t116.
          IF t116 = abap_false.
            DATA(t125) = VALUE abap_bool( ).
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
            DATA(t133) = 0.
            t125 = xsdbool( t126 >= t133 ).
            t115 = t125.
          ENDIF.
          t114 = t115.
          IF t115 = abap_false.
            DATA(t134) = VALUE abap_bool( ).
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
            DATA(t142) = 0.
            t134 = xsdbool( t135 >= t142 ).
            t114 = t134.
          ENDIF.
          t100 = t114.
        ENDIF.
        t55 = t100.
      ENDIF.
      t54 = t55.
      IF t55 = abap_false.
        DATA t143 TYPE abap_bool.
        t143 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else_if ).
        t54 = t143.
      ENDIF.
      t53 = t54.
      IF t54 = abap_false.
        DATA t145 TYPE abap_bool.
        t145 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_function ).
        t53 = t145.
      ENDIF.
      t52 = t53.
      IF t53 = abap_false.
        DATA t147 TYPE abap_bool.
        t147 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_interface ).
        t52 = t147.
      ENDIF.
      t51 = t52.
      IF t52 = abap_false.
        DATA t149 TYPE abap_bool.
        t149 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_do ).
        t51 = t149.
      ENDIF.
      IF t51 = abap_true.
        DATA t151 TYPE f.
        DATA(t153) = CONV f( 2 ).
        t151 = t8 - t153.
        t8 = t151.
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
          DATA t168 TYPE abap_bool.
          t168 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
          t165 = t168.
        ENDIF.
        t164 = t165.
        IF t165 = abap_false.
          DATA t170 TYPE abap_bool.
          t170 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_line_selection ).
          t164 = t170.
        ENDIF.
        t163 = t164.
        IF t164 = abap_false.
          DATA t172 TYPE abap_bool.
          t172 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_pf ).
          t163 = t172.
        ENDIF.
        t162 = t163.
        IF t163 = abap_false.
          DATA t174 TYPE abap_bool.
          t174 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_initialization ).
          t162 = t174.
        ENDIF.
        t161 = t162.
        IF t162 = abap_false.
          DATA t176 TYPE abap_bool.
          t176 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_user_command ).
          t161 = t176.
        ENDIF.
        t160 = t161.
        IF t161 = abap_false.
          DATA t178 TYPE abap_bool.
          t178 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_process_after_input ).
          t160 = t178.
        ENDIF.
        t159 = t160.
        IF t160 = abap_false.
          DATA t180 TYPE abap_bool.
          t180 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_bfr_otpt ).
          t159 = t180.
        ENDIF.
        t158 = t159.
        IF t159 = abap_false.
          DATA t182 TYPE abap_bool.
          t182 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_on_vl_rqst ).
          t158 = t182.
        ENDIF.
        t157 = t158.
        IF t158 = abap_false.
          DATA t184 TYPE abap_bool.
          t184 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_top_of_page ).
          t157 = t184.
        ENDIF.
        t156 = t157.
        IF t157 = abap_false.
          DATA t186 TYPE abap_bool.
          t186 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_get ).
          t156 = t186.
        ENDIF.
        t155 = t156.
        IF t156 = abap_false.
          DATA t188 TYPE abap_bool.
          t188 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_of_selection ).
          t155 = t188.
        ENDIF.
        t154 = t155.
        IF t155 = abap_false.
          DATA t190 TYPE abap_bool.
          t190 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_load_of_program ).
          t154 = t190.
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
              DATA t208 TYPE abap_bool.
              t208 = xsdbool( t13 = abap_false ).
              t205 = t208.
            ENDIF.
            t197 = t205.
          ENDIF.
          t196 = t197.
          IF t197 = abap_false.
            DATA t211 TYPE abap_bool.
            t211 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
            t196 = t211.
          ENDIF.
          t195 = t196.
          IF t196 = abap_false.
            DATA t213 TYPE abap_bool.
            t213 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_class_definition ).
            t195 = t213.
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
              DATA t221 TYPE abap_bool.
              t221 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_catch ).
              t218 = t221.
            ENDIF.
            IF t218 = abap_true.
              DATA(t223) = VALUE f( ).
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
              CLEAR t227.
              READ TABLE t228->items INDEX t230 INTO t227.
              t224 = t227.
              DATA(t235) = CONV f( 2 ).
              t223 = t224 - t235.
              t8 = t223.
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
                DATA t243 TYPE abap_bool.
                t243 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_protected ).
                t240 = t243.
              ENDIF.
              t239 = t240.
              IF t240 = abap_false.
                DATA t245 TYPE abap_bool.
                t245 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_private ).
                t239 = t245.
              ENDIF.
              t238 = t239.
              IF t239 = abap_false.
                DATA t247 TYPE abap_bool.
                t247 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when_type ).
                t238 = t247.
              ENDIF.
              t237 = t238.
              IF t238 = abap_false.
                DATA t249 TYPE abap_bool.
                t249 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_when_others ).
                t237 = t249.
              ENDIF.
              t236 = t237.
              IF t237 = abap_false.
                DATA t251 TYPE abap_bool.
                t251 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when ).
                t236 = t251.
              ENDIF.
              IF t236 = abap_true.
                DATA(t253) = VALUE f( ).
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
                CLEAR t256.
                READ TABLE t257->items INDEX t259 INTO t256.
                t253 = t256.
                t8 = t253.
              ELSE.
                DATA t264 TYPE abap_bool.
                t264 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_try ).
                IF t264 = abap_true.
                  DATA(t266) = VALUE f( ).
                  DATA(t267) = VALUE f( ).
                  DATA t268 TYPE REF TO zcl_lnt_stack.
                  t268 = t6.
                  DATA(t270) = VALUE f( ).
                  DATA(t271) = VALUE f( ).
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
                  CLEAR t272.
                  READ TABLE t273->items INDEX t275 INTO t272.
                  t271 = t272.
                  DATA t281 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  DATA t282 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  t282 = t268->items.
                  DATA(t284) = 0.
                  DATA t285 TYPE i.
                  DATA t286 TYPE i.
                  DATA t287 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  t287 = t268->items.
                  t287->load( ).
                  t286 = lines( t287->items ).
                  DATA(t289) = 1.
                  t285 = t286 - t289.
                  t281 = t282->slice2( p0 = t284 p1 = t285 ).
                  t268->items = t281.
                  DELETE t268->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
                  t270 = t271.
                  t267 = t270.
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
                  t266 = t267 - t291.
                  t8 = t266.
                ELSE.
                  DATA t298 TYPE abap_bool.
                  DATA t299 TYPE abap_bool.
                  t299 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_class ).
                  t298 = t299.
                  IF t299 = abap_false.
                    DATA t301 TYPE abap_bool.
                    t301 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_case ).
                    t298 = t301.
                  ENDIF.
                  IF t298 = abap_true.
                    DATA(t303) = VALUE f( ).
                    DATA(t304) = VALUE f( ).
                    DATA t305 TYPE REF TO zcl_lnt_stack.
                    t305 = t6.
                    DATA(t307) = VALUE f( ).
                    DATA(t308) = VALUE f( ).
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
                    CLEAR t309.
                    READ TABLE t310->items INDEX t312 INTO t309.
                    t308 = t309.
                    DATA t318 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    DATA t319 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    t319 = t305->items.
                    DATA(t321) = 0.
                    DATA t322 TYPE i.
                    DATA t323 TYPE i.
                    DATA t324 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    t324 = t305->items.
                    t324->load( ).
                    t323 = lines( t324->items ).
                    DATA(t326) = 1.
                    t322 = t323 - t326.
                    t318 = t319->slice2( p0 = t321 p1 = t322 ).
                    t305->items = t318.
                    DELETE t305->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
                    t307 = t308.
                    t304 = t307.
                    DATA(t328) = CONV f( 2 ).
                    t303 = t304 - t328.
                    t8 = t303.
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
                      DATA t338 TYPE abap_bool.
                      t338 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_include_type ).
                      t335 = t338.
                    ENDIF.
                    t334 = t335.
                    IF t335 = abap_false.
                      DATA t340 TYPE abap_bool.
                      t340 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_empty ).
                      t334 = t340.
                    ENDIF.
                    t333 = t334.
                    IF t334 = abap_false.
                      DATA t342 TYPE abap_bool.
                      t342 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_macro_content ).
                      t333 = t342.
                    ENDIF.
                    IF t333 = abap_true.
                      DATA(t345) = CONV f( -1 ).
                      t2->load( ).
                      APPEND t345 TO t2->items.
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
        DATA t354 TYPE abap_bool.
        DATA t355 TYPE abap_bool.
        DATA t356 TYPE REF TO zif_lnt_statement.
        DATA t357 TYPE REF TO zcl_lnt_statement_node.
        t357 = t29.
        t356 = t357->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t355 = xsdbool( t356 IS BOUND AND t356 IS INSTANCE OF zcl_lnt_st_comment ).
        t354 = xsdbool( t355 = abap_false ).
        t351 = t354.
      ENDIF.
      t350 = t351.
      IF t351 = abap_true.
        DATA t359 TYPE abap_bool.
        DATA t360 TYPE f.
        DATA t363 TYPE REF TO zcl_lnt_abstract_token.
        DATA t364 TYPE REF TO zcl_lnt_abstract_token.
        DATA t365 TYPE REF TO zcl_lnt_statement_node.
        t365 = t29.
        t364 = t365->get_last_token( ).
        t363 = t364.
        DATA t367 TYPE REF TO zcl_lnt_position.
        DATA t368 TYPE f.
        DATA t370 TYPE REF TO zcl_lnt_position.
        t370 = t363->start.
        DATA t372 TYPE f.
        t372 = t370->row.
        t368 = t372.
        DATA t374 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t375 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t377 TYPE REF TO zcl_lnt_position.
        t377 = t363->start.
        DATA t379 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t379 = t377->col.
        t375 = t379.
        DATA t381 TYPE f.
        DATA t383 TYPE string.
        t383 = t363->str.
        t381 = strlen( t383 ).
        DATA(t386) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t386->has = abap_true.
        t386->value = t381.
        t374 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t375 right = t386 op = `+` ).
        t367 = NEW zcl_lnt_position( i_row = t368 i_col = t374 ).
        DATA t387 TYPE f.
        t387 = t367->row.
        t360 = t387.
        DATA t389 TYPE f.
        DATA t393 TYPE REF TO zcl_lnt_abstract_token.
        t393 = t36->get_first_token( ).
        DATA t395 TYPE REF TO zcl_lnt_position.
        t395 = t393->start.
        DATA t397 TYPE f.
        t397 = t395->row.
        t389 = t397.
        t359 = xsdbool( t360 = t389 ).
        t350 = t359.
      ENDIF.
      IF t350 = abap_true.
        DATA(t400) = CONV f( -1 ).
        t2->load( ).
        APPEND t400 TO t2->items.
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
        DATA t451 TYPE abap_bool.
        t451 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_while ).
        t448 = t451.
      ENDIF.
      t447 = t448.
      IF t448 = abap_false.
        DATA t453 TYPE abap_bool.
        DATA t454 TYPE abap_bool.
        t454 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_module ).
        t453 = t454.
        IF t454 = abap_true.
          DATA t456 TYPE abap_bool.
          t456 = xsdbool( t13 = abap_false ).
          t453 = t456.
        ENDIF.
        t447 = t453.
      ENDIF.
      t446 = t447.
      IF t447 = abap_false.
        DATA t459 TYPE abap_bool.
        t459 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t446 = t459.
      ENDIF.
      t445 = t446.
      IF t446 = abap_false.
        DATA t461 TYPE abap_bool.
        t461 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_function_module ).
        t445 = t461.
      ENDIF.
      t444 = t445.
      IF t445 = abap_false.
        DATA t463 TYPE abap_bool.
        t463 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_interface ).
        t444 = t463.
      ENDIF.
      t443 = t444.
      IF t444 = abap_false.
        DATA t465 TYPE abap_bool.
        t465 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_do ).
        t443 = t465.
      ENDIF.
      t442 = t443.
      IF t443 = abap_false.
        DATA t467 TYPE abap_bool.
        t467 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at ).
        t442 = t467.
      ENDIF.
      t441 = t442.
      IF t442 = abap_false.
        DATA t469 TYPE abap_bool.
        t469 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_first ).
        t441 = t469.
      ENDIF.
      t440 = t441.
      IF t441 = abap_false.
        DATA t471 TYPE abap_bool.
        t471 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_last ).
        t440 = t471.
      ENDIF.
      t439 = t440.
      IF t440 = abap_false.
        DATA t473 TYPE abap_bool.
        t473 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_exec_sql ).
        t439 = t473.
      ENDIF.
      t438 = t439.
      IF t439 = abap_false.
        DATA t475 TYPE abap_bool.
        t475 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_catch ).
        t438 = t475.
      ENDIF.
      t437 = t438.
      IF t438 = abap_false.
        DATA t477 TYPE abap_bool.
        t477 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_process_after_input ).
        t437 = t477.
      ENDIF.
      t436 = t437.
      IF t437 = abap_false.
        DATA t479 TYPE abap_bool.
        t479 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_bfr_otpt ).
        t436 = t479.
      ENDIF.
      t435 = t436.
      IF t436 = abap_false.
        DATA t481 TYPE abap_bool.
        t481 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_prcss_on_vl_rqst ).
        t435 = t481.
      ENDIF.
      t434 = t435.
      IF t435 = abap_false.
        DATA t483 TYPE abap_bool.
        t483 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_define ).
        t434 = t483.
      ENDIF.
      t433 = t434.
      IF t434 = abap_false.
        DATA t485 TYPE abap_bool.
        t485 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when ).
        t433 = t485.
      ENDIF.
      t432 = t433.
      IF t433 = abap_false.
        DATA t487 TYPE abap_bool.
        t487 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_when_type ).
        t432 = t487.
      ENDIF.
      t431 = t432.
      IF t432 = abap_false.
        DATA t489 TYPE abap_bool.
        t489 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_when_others ).
        t431 = t489.
      ENDIF.
      t430 = t431.
      IF t431 = abap_false.
        DATA t491 TYPE abap_bool.
        t491 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_cleanup ).
        t430 = t491.
      ENDIF.
      t429 = t430.
      IF t430 = abap_false.
        DATA t493 TYPE abap_bool.
        t493 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_loop ).
        t429 = t493.
      ENDIF.
      t428 = t429.
      IF t429 = abap_false.
        DATA t495 TYPE abap_bool.
        t495 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_loop_at_screen ).
        t428 = t495.
      ENDIF.
      t427 = t428.
      IF t428 = abap_false.
        DATA t497 TYPE abap_bool.
        t497 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_ctch_systm_excptns ).
        t427 = t497.
      ENDIF.
      t426 = t427.
      IF t427 = abap_false.
        DATA t499 TYPE abap_bool.
        t499 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_form ).
        t426 = t499.
      ENDIF.
      t425 = t426.
      IF t426 = abap_false.
        DATA t501 TYPE abap_bool.
        t501 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else ).
        t425 = t501.
      ENDIF.
      t424 = t425.
      IF t425 = abap_false.
        DATA t503 TYPE abap_bool.
        t503 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_else_if ).
        t424 = t503.
      ENDIF.
      t423 = t424.
      IF t424 = abap_false.
        DATA t505 TYPE abap_bool.
        t505 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        t423 = t505.
      ENDIF.
      t422 = t423.
      IF t423 = abap_false.
        DATA t507 TYPE abap_bool.
        t507 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_chain ).
        t422 = t507.
      ENDIF.
      t421 = t422.
      IF t422 = abap_false.
        DATA t509 TYPE abap_bool.
        t509 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_test_injection ).
        t421 = t509.
      ENDIF.
      t420 = t421.
      IF t421 = abap_false.
        DATA t511 TYPE abap_bool.
        t511 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_test_seam ).
        t420 = t511.
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
          DATA t525 TYPE abap_bool.
          t525 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_selection_screen ).
          t514 = t525.
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
          DATA(t538) = 0.
          t530 = xsdbool( t531 >= t538 ).
          t529 = t530.
          IF t530 = abap_false.
            DATA(t539) = VALUE abap_bool( ).
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
            DATA(t547) = 0.
            t539 = xsdbool( t540 >= t547 ).
            t529 = t539.
          ENDIF.
          t528 = t529.
          IF t529 = abap_false.
            DATA(t548) = VALUE abap_bool( ).
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
            DATA(t556) = 0.
            t548 = xsdbool( t549 >= t556 ).
            t528 = t548.
          ENDIF.
          t527 = t528.
          IF t528 = abap_false.
            DATA(t557) = VALUE abap_bool( ).
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
            DATA(t565) = 0.
            t557 = xsdbool( t558 >= t565 ).
            t527 = t557.
          ENDIF.
          t513 = t527.
        ENDIF.
        t419 = t513.
      ENDIF.
      t418 = t419.
      IF t419 = abap_false.
        DATA t566 TYPE abap_bool.
        t566 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_start_of_selection ).
        t418 = t566.
      ENDIF.
      t417 = t418.
      IF t418 = abap_false.
        DATA t568 TYPE abap_bool.
        t568 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_get ).
        t417 = t568.
      ENDIF.
      t416 = t417.
      IF t417 = abap_false.
        DATA t570 TYPE abap_bool.
        t570 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
        t416 = t570.
      ENDIF.
      t415 = t416.
      IF t416 = abap_false.
        DATA t572 TYPE abap_bool.
        t572 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_line_selection ).
        t415 = t572.
      ENDIF.
      t414 = t415.
      IF t415 = abap_false.
        DATA t574 TYPE abap_bool.
        t574 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_load_of_program ).
        t414 = t574.
      ENDIF.
      t413 = t414.
      IF t414 = abap_false.
        DATA t576 TYPE abap_bool.
        t576 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_initialization ).
        t413 = t576.
      ENDIF.
      t412 = t413.
      IF t413 = abap_false.
        DATA t578 TYPE abap_bool.
        t578 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_at_user_command ).
        t412 = t578.
      ENDIF.
      t411 = t412.
      IF t412 = abap_false.
        DATA t580 TYPE abap_bool.
        t580 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_top_of_page ).
        t411 = t580.
      ENDIF.
      t410 = t411.
      IF t411 = abap_false.
        DATA t582 TYPE abap_bool.
        t582 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_end_of_selection ).
        t410 = t582.
      ENDIF.
      t409 = t410.
      IF t410 = abap_false.
        DATA t584 TYPE abap_bool.
        t584 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_public ).
        t409 = t584.
      ENDIF.
      t408 = t409.
      IF t409 = abap_false.
        DATA t586 TYPE abap_bool.
        t586 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_protected ).
        t408 = t586.
      ENDIF.
      t407 = t408.
      IF t408 = abap_false.
        DATA t588 TYPE abap_bool.
        t588 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_private ).
        t407 = t588.
      ENDIF.
      IF t407 = abap_true.
        DATA t590 TYPE f.
        DATA(t592) = CONV f( 2 ).
        t590 = t8 + t592.
        t8 = t590.
      ELSE.
        DATA t593 TYPE abap_bool.
        t593 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_try ).
        IF t593 = abap_true.
          DATA(t595) = VALUE f( ).
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
          t595 = t8 + t597.
          t8 = t595.
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
            DATA t616 TYPE abap_bool.
            t616 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_case ).
            t613 = t616.
          ENDIF.
          t612 = t613.
          IF t613 = abap_false.
            DATA t618 TYPE abap_bool.
            t618 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_case_type ).
            t612 = t618.
          ENDIF.
          t611 = t612.
          IF t612 = abap_false.
            DATA t620 TYPE abap_bool.
            t620 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
            t611 = t620.
          ENDIF.
          IF t611 = abap_true.
            DATA(t622) = VALUE f( ).
            DATA(t624) = VALUE f( ).
            DATA(t625) = VALUE i( ).
            DATA t626 TYPE abap_bool.
            t626 = me->skip_indent_for_global_class( i_statement = t36 ).
            IF t626 = abap_true.
              t625 = 0.
            ELSE.
              t625 = 2.
            ENDIF.
            t624 = t625.
            t622 = t8 + t624.
            t8 = t622.
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
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t4 = me->options->global_class_skip_first.
    IF t4 IS BOUND.
      IF t4->has = abap_true.
        t3 = xsdbool( t4->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zif_lnt_statement.
    DATA t8 TYPE REF TO zif_lnt_statement.
    t8 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t7 = t8.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    t11 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_st_class_definition ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
      t14 = t1->find_first_expression( i_type_9913 = t16 ).
      t13 = xsdbool( t14 IS BOUND ).
      t10 = t13.
    ENDIF.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t18 = t1->find_first_expression( i_type_9913 = t20 ).
      t17 = t18.
      DATA t21 TYPE abap_bool.
      t21 = xsdbool( t17 IS BOUND ).
      IF t21 = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t24) = me->global_classes.
        DATA t25 TYPE string.
        DATA t26 TYPE string.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        t29 = t17.
        t28 = t29->get_first_token( ).
        DATA t31 TYPE string.
        t31 = t28->str.
        t26 = t31.
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
      DATA t35 TYPE abap_bool.
      t35 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
        t38 = t1->find_first_expression( i_type_9913 = t40 ).
        t37 = t38.
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE abap_bool.
        t42 = xsdbool( t37 IS BOUND ).
        t41 = t42.
        IF t42 = abap_true.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = me->global_classes.
          DATA t46 TYPE string.
          DATA t47 TYPE string.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA t50 TYPE REF TO zcl_lnt_expression_node.
          t50 = t37.
          t49 = t50->get_first_token( ).
          DATA t52 TYPE string.
          t52 = t49->str.
          t47 = t52.
          DATA(t54) = strlen( t47 ).
          t46 = t47.
          IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t46 TO UPPER CASE.
          ELSE.
            t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
          ENDIF.
          t44 = t45->has( p0 = t46 ).
          t41 = t44.
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
