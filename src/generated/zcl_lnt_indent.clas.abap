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
    DATA(t2) = NEW zlnt_runtime_set__1827558fd4c7( ).
    me->global_classes = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalClasses`.
    DATA t3 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_iindentation_options.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t6.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t4.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_iindentation_options.
      DATA(t10) = t4.
      t9 = t10.
      t6 = t9.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_iindentation_options.
      DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t16 = t17.
      t11 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t12 i_slctn_scrn_blck_indnttn = t14 i_global_class_skip_first = t16 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t6 = t11.
    ENDIF.
    t3 = t6.
    me->options = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `options`.
  ENDMETHOD.

  METHOD execute.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_original.
    DATA(t2) = i_modified.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t10 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA(t11) = t1.
    t10 = me->get_expected_indents( i_file = t11 ).
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t14) = t2.
    DATA(t15) = |\n|.
    DATA(t16) = strlen( t14 ).
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
        t21 = t14+t17(1).
        APPEND t21 TO t13->items.
        t17 = t17 + 1.
      ENDWHILE.
    ELSE.
      WHILE t17 <= t16.
        FIND FIRST OCCURRENCE OF t15 IN SECTION OFFSET t17 OF t14 MATCH OFFSET t18.
        IF sy-subrc = 0.
          t19 = t18 - t17.
        ELSE.
          t18 = -1.
          t19 = t16 - t17.
        ENDIF.
        CLEAR t21.
        IF t19 > 0.
          t21 = t14+t17(t19).
        ENDIF.
        APPEND t21 TO t13->items.
        IF t18 < 0.
          EXIT.
        ENDIF.
        t17 = t18 + t20.
      ENDWHILE.
    ENDIF.
    t12 = t13.
    DATA(t22) = t3.
    DATA t23 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t22->load( ).
      IF t25 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t22->items INDEX t25 + 1 INTO t24.
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
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = t23.
      t31 = t32->get_first_token( ).
      t30 = t31.
      DATA t33 TYPE REF TO zcl_lnt_position.
      DATA(t34) = t30.
      t33 = t34->start.
      t29 = t33.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t28 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t37) = t9.
      t36 = t37->shift( ).
      t35 = t36.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t41) = t35.
      t40 = t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      t42 = t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t40.
      IF t45 IS INITIAL.
        t44 = abap_true.
      ELSEIF t45->has = abap_false.
        t44 = abap_true.
      ENDIF.
      t39 = t44.
      t38 = t39.
      IF t39 = abap_false.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE f( ).
        DATA(t48) = t35.
        IF t48->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t47 = t48->value.
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
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA t54 TYPE REF TO zcl_lnt_position.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t57) = t23.
      t56 = t57->get_first_token( ).
      t55 = t56.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA(t59) = t55.
      t58 = t59->start.
      t54 = t58.
      t53 = t54.
      DATA t60 TYPE f.
      DATA(t61) = t53.
      t60 = t61->row.
      t52 = t60.
      DATA(t62) = CONV f( 1 ).
      t51 = t52 - t62.
      t50 = t51.
      DATA(t63) = t12.
      DATA(t64) = VALUE i( ).
      DATA(t65) = t50.
      IF t65 > range_i32_upper.
        t64 = range_i32_upper.
      ELSEIF t65 < range_i32_lower.
        t64 = range_i32_lower.
      ELSE.
        t64 = trunc( t65 ).
      ENDIF.
      DATA(t66) = VALUE string( ).
      DATA(t67) = VALUE string( ).
      DATA(t68) = t12.
      DATA(t69) = VALUE i( ).
      DATA(t70) = t50.
      IF t70 > range_i32_upper.
        t69 = range_i32_upper.
      ELSEIF t70 < range_i32_lower.
        t69 = range_i32_lower.
      ELSE.
        t69 = trunc( t70 ).
      ENDIF.
      t69 = t69 + 1.
      IF t68->has( t69 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t68->load( ).
      CLEAR t67.
      READ TABLE t68->items INDEX t69 INTO t67.
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
      t63->put( p0 = t64 p1 = t66 ).
      DATA t90 TYPE f.
      DATA(t91) = CONV f( 1 ).
      t90 = t91.
      DO.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = t90.
        DATA(t94) = VALUE f( ).
        DATA(t95) = t35.
        IF t95->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t94 = t95->value.
        t92 = xsdbool( t93 < t94 ).
        IF t92 = abap_false.
          EXIT.
        ENDIF.
        DATA(t96) = t12.
        DATA(t97) = VALUE i( ).
        DATA(t98) = t50.
        IF t98 > range_i32_upper.
          t97 = range_i32_upper.
        ELSEIF t98 < range_i32_lower.
          t97 = range_i32_lower.
        ELSE.
          t97 = trunc( t98 ).
        ENDIF.
        DATA(t99) = VALUE string( ).
        DATA(t100) = | |.
        DATA(t101) = VALUE string( ).
        DATA(t102) = t12.
        DATA(t103) = VALUE i( ).
        DATA(t104) = t50.
        IF t104 > range_i32_upper.
          t103 = range_i32_upper.
        ELSEIF t104 < range_i32_lower.
          t103 = range_i32_lower.
        ELSE.
          t103 = trunc( t104 ).
        ENDIF.
        t103 = t103 + 1.
        IF t102->has( t103 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t102->load( ).
        CLEAR t101.
        READ TABLE t102->items INDEX t103 INTO t101.
        DATA(t105) = strlen( t100 ).
        t99 = |{ t100 }{ t101 }|.
        t96->put( p0 = t97 p1 = t99 ).
        DATA t106 TYPE f.
        DATA(t107) = t90.
        DATA(t108) = CONV f( 1 ).
        t106 = t107 + t108.
        t90 = t106.
      ENDDO.
    ENDDO.
    DATA t109 TYPE string.
    DATA(t110) = t12.
    DATA(t111) = |\n|.
    DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t112->has = abap_true.
    t112->value = t111.
    t109 = t110->join( p0 = t112 ).
    result = t109.

  ENDMETHOD.

  METHOD get_expected_indents.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t3 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE i.
    DATA(t5) = 1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_stack.
    DATA(t7) = NEW zcl_lnt_stack( ).
    t6 = t7.
    DATA t8 TYPE f.
    DATA t9 TYPE f.
    DATA(t10) = t4.
    t9 = t10.
    t8 = t9.
    DATA t11 TYPE abap_bool.
    DATA(t12) = abap_false.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zif_lnt_structure.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_structure_node.
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    DATA(t19) = t1.
    t18 = t19.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = t18.
    t20 = t21->structure.
    t17 = t20.
    t16 = t17.
    DATA t22 TYPE REF TO zif_lnt_structure.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t16.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_structure.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zif_lnt_structure.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      DATA(t28) = t16.
      t27 = t28.
      t26 = t27->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
      t22 = t26.
    ENDIF.
    t15 = t22.
    t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_dynpro_logic ).
    t13 = t14.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DATA t30 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t30.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zcl_lnt_abap_file.
    DATA(t33) = t1.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t35) = t32.
    t34 = t35->statements.
    t31 = t34.
    DATA t36 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
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
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t36.
      t44 = t45->get_first_token( ).
      t43 = t44.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA(t47) = t43.
      t46 = t47->start.
      t42 = t46.
      t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t48 TYPE REF TO zif_lnt_statement.
      DATA t49 TYPE REF TO zif_lnt_statement.
      DATA(t50) = t36.
      t49 = t50->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
      DATA(t71) = t48.
      t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_end_if ).
      t69 = t70.
      IF t70 = abap_false.
        DATA t72 TYPE abap_bool.
        DATA(t73) = t48.
        t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_end_while ).
        t69 = t72.
      ENDIF.
      t68 = t69.
      IF t69 = abap_false.
        DATA t74 TYPE abap_bool.
        DATA(t75) = t48.
        t74 = xsdbool( t75 IS BOUND AND t75 IS INSTANCE OF zcl_lnt_end_module ).
        t68 = t74.
      ENDIF.
      t67 = t68.
      IF t68 = abap_false.
        DATA t76 TYPE abap_bool.
        DATA(t77) = t48.
        t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_end_select ).
        t67 = t76.
      ENDIF.
      t66 = t67.
      IF t67 = abap_false.
        DATA t78 TYPE abap_bool.
        DATA(t79) = t48.
        t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_end_method ).
        t66 = t78.
      ENDIF.
      t65 = t66.
      IF t66 = abap_false.
        DATA t80 TYPE abap_bool.
        DATA(t81) = t48.
        t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_end_chain ).
        t65 = t80.
      ENDIF.
      t64 = t65.
      IF t65 = abap_false.
        DATA t82 TYPE abap_bool.
        DATA(t83) = t48.
        t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_end_at ).
        t64 = t82.
      ENDIF.
      t63 = t64.
      IF t64 = abap_false.
        DATA t84 TYPE abap_bool.
        DATA(t85) = t48.
        t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_st_else ).
        t63 = t84.
      ENDIF.
      t62 = t63.
      IF t63 = abap_false.
        DATA t86 TYPE abap_bool.
        DATA(t87) = t48.
        t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_end_exec ).
        t62 = t86.
      ENDIF.
      t61 = t62.
      IF t62 = abap_false.
        DATA t88 TYPE abap_bool.
        DATA(t89) = t48.
        t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_end_of_definition ).
        t61 = t88.
      ENDIF.
      t60 = t61.
      IF t61 = abap_false.
        DATA t90 TYPE abap_bool.
        DATA(t91) = t48.
        t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_end_loop ).
        t60 = t90.
      ENDIF.
      t59 = t60.
      IF t60 = abap_false.
        DATA t92 TYPE abap_bool.
        DATA(t93) = t48.
        t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_end_test_injection ).
        t59 = t92.
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        DATA t94 TYPE abap_bool.
        DATA(t95) = t48.
        t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_end_test_seam ).
        t58 = t94.
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        DATA t96 TYPE abap_bool.
        DATA(t97) = t48.
        t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_end_form ).
        t57 = t96.
      ENDIF.
      t56 = t57.
      IF t57 = abap_false.
        DATA t98 TYPE abap_bool.
        DATA(t99) = t48.
        t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_end_catch ).
        t56 = t98.
      ENDIF.
      t55 = t56.
      IF t56 = abap_false.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = VALUE abap_bool( ).
        DATA(t102) = VALUE abap_bool( ).
        DATA t103 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t104) = me->options.
        t103 = t104->slctn_scrn_blck_indnttn.
        DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t105.
        DATA(t106) = abap_true.
        IF t106 = abap_true.
          DATA(t107) = abap_true.
          DATA(t108) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t108->has = abap_true.
          t108->value = t107.
          t105 = t108.
        ELSE.
          DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t109.
          t105 = t109.
        ENDIF.
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
          DATA(t113) = t48.
          t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_st_selection_screen ).
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
          DATA(t120) = t36.
          t119 = t120->concat_tokens( ).
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
            DATA(t129) = t36.
            t128 = t129->concat_tokens( ).
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
            DATA(t138) = t36.
            t137 = t138->concat_tokens( ).
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
        DATA(t144) = t48.
        t143 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_st_else_if ).
        t54 = t143.
      ENDIF.
      t53 = t54.
      IF t54 = abap_false.
        DATA t145 TYPE abap_bool.
        DATA(t146) = t48.
        t145 = xsdbool( t146 IS BOUND AND t146 IS INSTANCE OF zcl_lnt_end_function ).
        t53 = t145.
      ENDIF.
      t52 = t53.
      IF t53 = abap_false.
        DATA t147 TYPE abap_bool.
        DATA(t148) = t48.
        t147 = xsdbool( t148 IS BOUND AND t148 IS INSTANCE OF zcl_lnt_end_interface ).
        t52 = t147.
      ENDIF.
      t51 = t52.
      IF t52 = abap_false.
        DATA t149 TYPE abap_bool.
        DATA(t150) = t48.
        t149 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_end_do ).
        t51 = t149.
      ENDIF.
      IF t51 = abap_true.
        DATA t151 TYPE f.
        DATA(t152) = t8.
        DATA(t153) = CONV f( 2 ).
        t151 = t152 - t153.
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
        DATA(t167) = t48.
        t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_start_of_selection ).
        t165 = t166.
        IF t166 = abap_false.
          DATA t168 TYPE abap_bool.
          DATA(t169) = t48.
          t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
          t165 = t168.
        ENDIF.
        t164 = t165.
        IF t165 = abap_false.
          DATA t170 TYPE abap_bool.
          DATA(t171) = t48.
          t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_at_line_selection ).
          t164 = t170.
        ENDIF.
        t163 = t164.
        IF t164 = abap_false.
          DATA t172 TYPE abap_bool.
          DATA(t173) = t48.
          t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_at_pf ).
          t163 = t172.
        ENDIF.
        t162 = t163.
        IF t163 = abap_false.
          DATA t174 TYPE abap_bool.
          DATA(t175) = t48.
          t174 = xsdbool( t175 IS BOUND AND t175 IS INSTANCE OF zcl_lnt_initialization ).
          t162 = t174.
        ENDIF.
        t161 = t162.
        IF t162 = abap_false.
          DATA t176 TYPE abap_bool.
          DATA(t177) = t48.
          t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_at_user_command ).
          t161 = t176.
        ENDIF.
        t160 = t161.
        IF t161 = abap_false.
          DATA t178 TYPE abap_bool.
          DATA(t179) = t48.
          t178 = xsdbool( t179 IS BOUND AND t179 IS INSTANCE OF zcl_lnt_st_process_after_input ).
          t160 = t178.
        ENDIF.
        t159 = t160.
        IF t160 = abap_false.
          DATA t180 TYPE abap_bool.
          DATA(t181) = t48.
          t180 = xsdbool( t181 IS BOUND AND t181 IS INSTANCE OF zcl_lnt_st_prcss_bfr_otpt ).
          t159 = t180.
        ENDIF.
        t158 = t159.
        IF t159 = abap_false.
          DATA t182 TYPE abap_bool.
          DATA(t183) = t48.
          t182 = xsdbool( t183 IS BOUND AND t183 IS INSTANCE OF zcl_lnt_st_prcss_on_vl_rqst ).
          t158 = t182.
        ENDIF.
        t157 = t158.
        IF t158 = abap_false.
          DATA t184 TYPE abap_bool.
          DATA(t185) = t48.
          t184 = xsdbool( t185 IS BOUND AND t185 IS INSTANCE OF zcl_lnt_top_of_page ).
          t157 = t184.
        ENDIF.
        t156 = t157.
        IF t157 = abap_false.
          DATA t186 TYPE abap_bool.
          DATA(t187) = t48.
          t186 = xsdbool( t187 IS BOUND AND t187 IS INSTANCE OF zcl_lnt_get ).
          t156 = t186.
        ENDIF.
        t155 = t156.
        IF t156 = abap_false.
          DATA t188 TYPE abap_bool.
          DATA(t189) = t48.
          t188 = xsdbool( t189 IS BOUND AND t189 IS INSTANCE OF zcl_lnt_end_of_selection ).
          t155 = t188.
        ENDIF.
        t154 = t155.
        IF t155 = abap_false.
          DATA t190 TYPE abap_bool.
          DATA(t191) = t48.
          t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_load_of_program ).
          t154 = t190.
        ENDIF.
        IF t154 = abap_true.
          DATA t192 TYPE f.
          DATA(t193) = t4.
          t192 = t193.
          t8 = t192.
          DATA(t194) = abap_true.
          t11 = t194.
        ELSE.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = VALUE abap_bool( ).
          DATA(t197) = VALUE abap_bool( ).
          DATA t198 TYPE abap_bool.
          DATA t199 TYPE abap_bool.
          DATA(t200) = t48.
          t199 = xsdbool( t200 IS BOUND AND t200 IS INSTANCE OF zcl_lnt_st_form ).
          t198 = t199.
          IF t199 = abap_false.
            DATA t201 TYPE abap_bool.
            DATA t202 TYPE abap_bool.
            DATA(t203) = t48.
            t202 = xsdbool( t203 IS BOUND AND t203 IS INSTANCE OF zcl_lnt_include ).
            t201 = t202.
            IF t202 = abap_true.
              DATA(t204) = t11.
              t201 = t204.
            ENDIF.
            t198 = t201.
          ENDIF.
          t197 = t198.
          IF t198 = abap_false.
            DATA t205 TYPE abap_bool.
            DATA t206 TYPE abap_bool.
            DATA(t207) = t48.
            t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_st_module ).
            t205 = t206.
            IF t206 = abap_true.
              DATA t208 TYPE abap_bool.
              DATA(t209) = t13.
              DATA(t210) = abap_false.
              t208 = xsdbool( t209 = t210 ).
              t205 = t208.
            ENDIF.
            t197 = t205.
          ENDIF.
          t196 = t197.
          IF t197 = abap_false.
            DATA t211 TYPE abap_bool.
            DATA(t212) = t48.
            t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
            t196 = t211.
          ENDIF.
          t195 = t196.
          IF t196 = abap_false.
            DATA t213 TYPE abap_bool.
            DATA(t214) = t48.
            t213 = xsdbool( t214 IS BOUND AND t214 IS INSTANCE OF zcl_lnt_st_class_definition ).
            t195 = t213.
          ENDIF.
          IF t195 = abap_true.
            DATA t215 TYPE f.
            DATA(t216) = t4.
            t215 = t216.
            t8 = t215.
            DATA(t217) = abap_false.
            t11 = t217.
          ELSE.
            DATA t218 TYPE abap_bool.
            DATA t219 TYPE abap_bool.
            DATA(t220) = t48.
            t219 = xsdbool( t220 IS BOUND AND t220 IS INSTANCE OF zcl_lnt_st_cleanup ).
            t218 = t219.
            IF t219 = abap_false.
              DATA t221 TYPE abap_bool.
              DATA(t222) = t48.
              t221 = xsdbool( t222 IS BOUND AND t222 IS INSTANCE OF zcl_lnt_st_catch ).
              t218 = t221.
            ENDIF.
            IF t218 = abap_true.
              DATA(t223) = VALUE f( ).
              DATA(t224) = VALUE f( ).
              DATA t225 TYPE REF TO zcl_lnt_stack.
              DATA(t226) = t6.
              t225 = t226.
              DATA(t227) = VALUE f( ).
              DATA t228 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
              DATA(t229) = t225.
              t228 = t229->items.
              DATA t230 TYPE i.
              DATA t231 TYPE i.
              DATA t232 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
              DATA(t233) = t225.
              t232 = t233->items.
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
              DATA(t242) = t48.
              t241 = xsdbool( t242 IS BOUND AND t242 IS INSTANCE OF zcl_lnt_public ).
              t240 = t241.
              IF t241 = abap_false.
                DATA t243 TYPE abap_bool.
                DATA(t244) = t48.
                t243 = xsdbool( t244 IS BOUND AND t244 IS INSTANCE OF zcl_lnt_protected ).
                t240 = t243.
              ENDIF.
              t239 = t240.
              IF t240 = abap_false.
                DATA t245 TYPE abap_bool.
                DATA(t246) = t48.
                t245 = xsdbool( t246 IS BOUND AND t246 IS INSTANCE OF zcl_lnt_private ).
                t239 = t245.
              ENDIF.
              t238 = t239.
              IF t239 = abap_false.
                DATA t247 TYPE abap_bool.
                DATA(t248) = t48.
                t247 = xsdbool( t248 IS BOUND AND t248 IS INSTANCE OF zcl_lnt_st_when_type ).
                t238 = t247.
              ENDIF.
              t237 = t238.
              IF t238 = abap_false.
                DATA t249 TYPE abap_bool.
                DATA(t250) = t48.
                t249 = xsdbool( t250 IS BOUND AND t250 IS INSTANCE OF zcl_lnt_when_others ).
                t237 = t249.
              ENDIF.
              t236 = t237.
              IF t237 = abap_false.
                DATA t251 TYPE abap_bool.
                DATA(t252) = t48.
                t251 = xsdbool( t252 IS BOUND AND t252 IS INSTANCE OF zcl_lnt_st_when ).
                t236 = t251.
              ENDIF.
              IF t236 = abap_true.
                DATA(t253) = VALUE f( ).
                DATA t254 TYPE REF TO zcl_lnt_stack.
                DATA(t255) = t6.
                t254 = t255.
                DATA(t256) = VALUE f( ).
                DATA t257 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                DATA(t258) = t254.
                t257 = t258->items.
                DATA t259 TYPE i.
                DATA t260 TYPE i.
                DATA t261 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                DATA(t262) = t254.
                t261 = t262->items.
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
                DATA(t265) = t48.
                t264 = xsdbool( t265 IS BOUND AND t265 IS INSTANCE OF zcl_lnt_end_try ).
                IF t264 = abap_true.
                  DATA(t266) = VALUE f( ).
                  DATA(t267) = VALUE f( ).
                  DATA t268 TYPE REF TO zcl_lnt_stack.
                  DATA(t269) = t6.
                  t268 = t269.
                  DATA(t270) = VALUE f( ).
                  DATA(t271) = VALUE f( ).
                  DATA(t272) = VALUE f( ).
                  DATA t273 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  DATA(t274) = t268.
                  t273 = t274->items.
                  DATA t275 TYPE i.
                  DATA t276 TYPE i.
                  DATA t277 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  DATA(t278) = t268.
                  t277 = t278->items.
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
                  DATA(t280) = t268.
                  DATA t281 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  DATA t282 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  DATA(t283) = t268.
                  t282 = t283->items.
                  DATA(t284) = 0.
                  DATA t285 TYPE i.
                  DATA t286 TYPE i.
                  DATA t287 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                  DATA(t288) = t268.
                  t287 = t288->items.
                  t287->load( ).
                  t286 = lines( t287->items ).
                  DATA(t289) = 1.
                  t285 = t286 - t289.
                  t281 = t282->slice2( p0 = t284 p1 = t285 ).
                  t280->items = t281.
                  DELETE t280->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
                  DATA(t290) = t271.
                  t270 = t290.
                  t267 = t270.
                  DATA(t291) = VALUE f( ).
                  DATA(t292) = VALUE i( ).
                  DATA(t293) = VALUE abap_bool( ).
                  DATA t294 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA(t295) = me->options.
                  t294 = t295->align_try_catch.
                  IF t294 IS BOUND.
                    IF t294->has = abap_true.
                      t293 = xsdbool( t294->value IS NOT INITIAL ).
                    ENDIF.
                  ENDIF.
                  IF t293 = abap_true.
                    DATA(t296) = 2.
                    t292 = t296.
                  ELSE.
                    DATA(t297) = 4.
                    t292 = t297.
                  ENDIF.
                  t291 = t292.
                  t266 = t267 - t291.
                  t8 = t266.
                ELSE.
                  DATA t298 TYPE abap_bool.
                  DATA t299 TYPE abap_bool.
                  DATA(t300) = t48.
                  t299 = xsdbool( t300 IS BOUND AND t300 IS INSTANCE OF zcl_lnt_end_class ).
                  t298 = t299.
                  IF t299 = abap_false.
                    DATA t301 TYPE abap_bool.
                    DATA(t302) = t48.
                    t301 = xsdbool( t302 IS BOUND AND t302 IS INSTANCE OF zcl_lnt_end_case ).
                    t298 = t301.
                  ENDIF.
                  IF t298 = abap_true.
                    DATA(t303) = VALUE f( ).
                    DATA(t304) = VALUE f( ).
                    DATA t305 TYPE REF TO zcl_lnt_stack.
                    DATA(t306) = t6.
                    t305 = t306.
                    DATA(t307) = VALUE f( ).
                    DATA(t308) = VALUE f( ).
                    DATA(t309) = VALUE f( ).
                    DATA t310 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    DATA(t311) = t305.
                    t310 = t311->items.
                    DATA t312 TYPE i.
                    DATA t313 TYPE i.
                    DATA t314 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    DATA(t315) = t305.
                    t314 = t315->items.
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
                    DATA(t317) = t305.
                    DATA t318 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    DATA t319 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    DATA(t320) = t305.
                    t319 = t320->items.
                    DATA(t321) = 0.
                    DATA t322 TYPE i.
                    DATA t323 TYPE i.
                    DATA t324 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
                    DATA(t325) = t305.
                    t324 = t325->items.
                    t324->load( ).
                    t323 = lines( t324->items ).
                    DATA(t326) = 1.
                    t322 = t323 - t326.
                    t318 = t319->slice2( p0 = t321 p1 = t322 ).
                    t317->items = t318.
                    DELETE t317->zlnt_record_delet_0597644d88b4 WHERE table_line = `items`.
                    DATA(t327) = t308.
                    t307 = t327.
                    t304 = t307.
                    DATA(t328) = CONV f( 2 ).
                    t303 = t304 - t328.
                    t8 = t303.
                    DATA t329 TYPE f.
                    DATA(t330) = t8.
                    DATA t331 TYPE f.
                    DATA(t332) = t4.
                    t331 = t332.
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
                    DATA(t337) = t48.
                    t336 = xsdbool( t337 IS BOUND AND t337 IS INSTANCE OF zcl_lnt_st_comment ).
                    t335 = t336.
                    IF t336 = abap_false.
                      DATA t338 TYPE abap_bool.
                      DATA(t339) = t48.
                      t338 = xsdbool( t339 IS BOUND AND t339 IS INSTANCE OF zcl_lnt_st_include_type ).
                      t335 = t338.
                    ENDIF.
                    t334 = t335.
                    IF t335 = abap_false.
                      DATA t340 TYPE abap_bool.
                      DATA(t341) = t48.
                      t340 = xsdbool( t341 IS BOUND AND t341 IS INSTANCE OF zcl_lnt_empty ).
                      t334 = t340.
                    ENDIF.
                    t333 = t334.
                    IF t334 = abap_false.
                      DATA t342 TYPE abap_bool.
                      DATA(t343) = t48.
                      t342 = xsdbool( t343 IS BOUND AND t343 IS INSTANCE OF zcl_lnt_macro_content ).
                      t333 = t342.
                    ENDIF.
                    IF t333 = abap_true.
                      DATA(t344) = t2.
                      DATA(t345) = CONV f( -1 ).
                      t344->load( ).
                      APPEND t345 TO t344->items.
                      t344->save( ).
                      DATA t346 TYPE REF TO zcl_lnt_statement_node.
                      CLEAR t346.
                      DATA(t347) = abap_true.
                      IF t347 = abap_true.
                        DATA(t348) = t36.
                        t346 = t348.
                      ELSE.
                        DATA t349 TYPE REF TO zcl_lnt_statement_node.
                        CLEAR t349.
                        t346 = t349.
                      ENDIF.
                      t29 = t346.
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
      DATA(t353) = t29.
      t352 = xsdbool( t353 IS BOUND ).
      t351 = t352.
      IF t352 = abap_true.
        DATA t354 TYPE abap_bool.
        DATA t355 TYPE abap_bool.
        DATA t356 TYPE REF TO zif_lnt_statement.
        DATA t357 TYPE REF TO zcl_lnt_statement_node.
        DATA(t358) = t29.
        t357 = t358.
        t356 = t357->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t355 = xsdbool( t356 IS BOUND AND t356 IS INSTANCE OF zcl_lnt_st_comment ).
        t354 = xsdbool( t355 = abap_false ).
        t351 = t354.
      ENDIF.
      t350 = t351.
      IF t351 = abap_true.
        DATA t359 TYPE abap_bool.
        DATA t360 TYPE f.
        DATA t361 TYPE REF TO zcl_lnt_position.
        DATA t362 TYPE REF TO zcl_lnt_position.
        DATA t363 TYPE REF TO zcl_lnt_abstract_token.
        DATA t364 TYPE REF TO zcl_lnt_abstract_token.
        DATA t365 TYPE REF TO zcl_lnt_statement_node.
        DATA(t366) = t29.
        t365 = t366.
        t364 = t365->get_last_token( ).
        t363 = t364.
        DATA t367 TYPE REF TO zcl_lnt_position.
        DATA t368 TYPE f.
        DATA t369 TYPE REF TO zcl_lnt_position.
        DATA t370 TYPE REF TO zcl_lnt_position.
        DATA(t371) = t363.
        t370 = t371->start.
        t369 = t370.
        DATA t372 TYPE f.
        DATA(t373) = t369.
        t372 = t373->row.
        t368 = t372.
        DATA t374 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t375 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t376 TYPE REF TO zcl_lnt_position.
        DATA t377 TYPE REF TO zcl_lnt_position.
        DATA(t378) = t363.
        t377 = t378->start.
        t376 = t377.
        DATA t379 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t380) = t376.
        t379 = t380->col.
        t375 = t379.
        DATA t381 TYPE f.
        DATA t382 TYPE i.
        DATA t383 TYPE string.
        DATA(t384) = t363.
        t383 = t384->str.
        DATA(t385) = strlen( t383 ).
        t382 = t385.
        t381 = t382.
        DATA(t386) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t386->has = abap_true.
        t386->value = t381.
        t374 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t375 right = t386 op = `+` ).
        t367 = NEW zcl_lnt_position( i_row = t368 i_col = t374 ).
        t362 = t367.
        t361 = t362.
        DATA t387 TYPE f.
        DATA(t388) = t361.
        t387 = t388->row.
        t360 = t387.
        DATA t389 TYPE f.
        DATA t390 TYPE REF TO zcl_lnt_position.
        DATA t391 TYPE REF TO zcl_lnt_position.
        DATA t392 TYPE REF TO zcl_lnt_abstract_token.
        DATA t393 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t394) = t36.
        t393 = t394->get_first_token( ).
        t392 = t393.
        DATA t395 TYPE REF TO zcl_lnt_position.
        DATA(t396) = t392.
        t395 = t396->start.
        t391 = t395.
        t390 = t391.
        DATA t397 TYPE f.
        DATA(t398) = t390.
        t397 = t398->row.
        t389 = t397.
        t359 = xsdbool( t360 = t389 ).
        t350 = t359.
      ENDIF.
      IF t350 = abap_true.
        DATA(t399) = t2.
        DATA(t400) = CONV f( -1 ).
        t399->load( ).
        APPEND t400 TO t399->items.
        t399->save( ).
        DATA t401 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t401.
        DATA(t402) = abap_true.
        IF t402 = abap_true.
          DATA(t403) = t36.
          t401 = t403.
        ELSE.
          DATA t404 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t404.
          t401 = t404.
        ENDIF.
        t29 = t401.
        CONTINUE.
      ENDIF.
      DATA(t405) = t2.
      DATA(t406) = t8.
      t405->load( ).
      APPEND t406 TO t405->items.
      t405->save( ).
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
      DATA(t450) = t48.
      t449 = xsdbool( t450 IS BOUND AND t450 IS INSTANCE OF zcl_lnt_st_if ).
      t448 = t449.
      IF t449 = abap_false.
        DATA t451 TYPE abap_bool.
        DATA(t452) = t48.
        t451 = xsdbool( t452 IS BOUND AND t452 IS INSTANCE OF zcl_lnt_st_while ).
        t448 = t451.
      ENDIF.
      t447 = t448.
      IF t448 = abap_false.
        DATA t453 TYPE abap_bool.
        DATA t454 TYPE abap_bool.
        DATA(t455) = t48.
        t454 = xsdbool( t455 IS BOUND AND t455 IS INSTANCE OF zcl_lnt_st_module ).
        t453 = t454.
        IF t454 = abap_true.
          DATA t456 TYPE abap_bool.
          DATA(t457) = t13.
          DATA(t458) = abap_false.
          t456 = xsdbool( t457 = t458 ).
          t453 = t456.
        ENDIF.
        t447 = t453.
      ENDIF.
      t446 = t447.
      IF t447 = abap_false.
        DATA t459 TYPE abap_bool.
        DATA(t460) = t48.
        t459 = xsdbool( t460 IS BOUND AND t460 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t446 = t459.
      ENDIF.
      t445 = t446.
      IF t446 = abap_false.
        DATA t461 TYPE abap_bool.
        DATA(t462) = t48.
        t461 = xsdbool( t462 IS BOUND AND t462 IS INSTANCE OF zcl_lnt_st_function_module ).
        t445 = t461.
      ENDIF.
      t444 = t445.
      IF t445 = abap_false.
        DATA t463 TYPE abap_bool.
        DATA(t464) = t48.
        t463 = xsdbool( t464 IS BOUND AND t464 IS INSTANCE OF zcl_lnt_st_interface ).
        t444 = t463.
      ENDIF.
      t443 = t444.
      IF t444 = abap_false.
        DATA t465 TYPE abap_bool.
        DATA(t466) = t48.
        t465 = xsdbool( t466 IS BOUND AND t466 IS INSTANCE OF zcl_lnt_st_do ).
        t443 = t465.
      ENDIF.
      t442 = t443.
      IF t443 = abap_false.
        DATA t467 TYPE abap_bool.
        DATA(t468) = t48.
        t467 = xsdbool( t468 IS BOUND AND t468 IS INSTANCE OF zcl_lnt_st_at ).
        t442 = t467.
      ENDIF.
      t441 = t442.
      IF t442 = abap_false.
        DATA t469 TYPE abap_bool.
        DATA(t470) = t48.
        t469 = xsdbool( t470 IS BOUND AND t470 IS INSTANCE OF zcl_lnt_st_at_first ).
        t441 = t469.
      ENDIF.
      t440 = t441.
      IF t441 = abap_false.
        DATA t471 TYPE abap_bool.
        DATA(t472) = t48.
        t471 = xsdbool( t472 IS BOUND AND t472 IS INSTANCE OF zcl_lnt_st_at_last ).
        t440 = t471.
      ENDIF.
      t439 = t440.
      IF t440 = abap_false.
        DATA t473 TYPE abap_bool.
        DATA(t474) = t48.
        t473 = xsdbool( t474 IS BOUND AND t474 IS INSTANCE OF zcl_lnt_st_exec_sql ).
        t439 = t473.
      ENDIF.
      t438 = t439.
      IF t439 = abap_false.
        DATA t475 TYPE abap_bool.
        DATA(t476) = t48.
        t475 = xsdbool( t476 IS BOUND AND t476 IS INSTANCE OF zcl_lnt_st_catch ).
        t438 = t475.
      ENDIF.
      t437 = t438.
      IF t438 = abap_false.
        DATA t477 TYPE abap_bool.
        DATA(t478) = t48.
        t477 = xsdbool( t478 IS BOUND AND t478 IS INSTANCE OF zcl_lnt_st_process_after_input ).
        t437 = t477.
      ENDIF.
      t436 = t437.
      IF t437 = abap_false.
        DATA t479 TYPE abap_bool.
        DATA(t480) = t48.
        t479 = xsdbool( t480 IS BOUND AND t480 IS INSTANCE OF zcl_lnt_st_prcss_bfr_otpt ).
        t436 = t479.
      ENDIF.
      t435 = t436.
      IF t436 = abap_false.
        DATA t481 TYPE abap_bool.
        DATA(t482) = t48.
        t481 = xsdbool( t482 IS BOUND AND t482 IS INSTANCE OF zcl_lnt_st_prcss_on_vl_rqst ).
        t435 = t481.
      ENDIF.
      t434 = t435.
      IF t435 = abap_false.
        DATA t483 TYPE abap_bool.
        DATA(t484) = t48.
        t483 = xsdbool( t484 IS BOUND AND t484 IS INSTANCE OF zcl_lnt_st_define ).
        t434 = t483.
      ENDIF.
      t433 = t434.
      IF t434 = abap_false.
        DATA t485 TYPE abap_bool.
        DATA(t486) = t48.
        t485 = xsdbool( t486 IS BOUND AND t486 IS INSTANCE OF zcl_lnt_st_when ).
        t433 = t485.
      ENDIF.
      t432 = t433.
      IF t433 = abap_false.
        DATA t487 TYPE abap_bool.
        DATA(t488) = t48.
        t487 = xsdbool( t488 IS BOUND AND t488 IS INSTANCE OF zcl_lnt_st_when_type ).
        t432 = t487.
      ENDIF.
      t431 = t432.
      IF t432 = abap_false.
        DATA t489 TYPE abap_bool.
        DATA(t490) = t48.
        t489 = xsdbool( t490 IS BOUND AND t490 IS INSTANCE OF zcl_lnt_when_others ).
        t431 = t489.
      ENDIF.
      t430 = t431.
      IF t431 = abap_false.
        DATA t491 TYPE abap_bool.
        DATA(t492) = t48.
        t491 = xsdbool( t492 IS BOUND AND t492 IS INSTANCE OF zcl_lnt_st_cleanup ).
        t430 = t491.
      ENDIF.
      t429 = t430.
      IF t430 = abap_false.
        DATA t493 TYPE abap_bool.
        DATA(t494) = t48.
        t493 = xsdbool( t494 IS BOUND AND t494 IS INSTANCE OF zcl_lnt_st_loop ).
        t429 = t493.
      ENDIF.
      t428 = t429.
      IF t429 = abap_false.
        DATA t495 TYPE abap_bool.
        DATA(t496) = t48.
        t495 = xsdbool( t496 IS BOUND AND t496 IS INSTANCE OF zcl_lnt_st_loop_at_screen ).
        t428 = t495.
      ENDIF.
      t427 = t428.
      IF t428 = abap_false.
        DATA t497 TYPE abap_bool.
        DATA(t498) = t48.
        t497 = xsdbool( t498 IS BOUND AND t498 IS INSTANCE OF zcl_lnt_st_ctch_systm_excptns ).
        t427 = t497.
      ENDIF.
      t426 = t427.
      IF t427 = abap_false.
        DATA t499 TYPE abap_bool.
        DATA(t500) = t48.
        t499 = xsdbool( t500 IS BOUND AND t500 IS INSTANCE OF zcl_lnt_st_form ).
        t426 = t499.
      ENDIF.
      t425 = t426.
      IF t426 = abap_false.
        DATA t501 TYPE abap_bool.
        DATA(t502) = t48.
        t501 = xsdbool( t502 IS BOUND AND t502 IS INSTANCE OF zcl_lnt_st_else ).
        t425 = t501.
      ENDIF.
      t424 = t425.
      IF t425 = abap_false.
        DATA t503 TYPE abap_bool.
        DATA(t504) = t48.
        t503 = xsdbool( t504 IS BOUND AND t504 IS INSTANCE OF zcl_lnt_st_else_if ).
        t424 = t503.
      ENDIF.
      t423 = t424.
      IF t424 = abap_false.
        DATA t505 TYPE abap_bool.
        DATA(t506) = t48.
        t505 = xsdbool( t506 IS BOUND AND t506 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        t423 = t505.
      ENDIF.
      t422 = t423.
      IF t423 = abap_false.
        DATA t507 TYPE abap_bool.
        DATA(t508) = t48.
        t507 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_st_chain ).
        t422 = t507.
      ENDIF.
      t421 = t422.
      IF t422 = abap_false.
        DATA t509 TYPE abap_bool.
        DATA(t510) = t48.
        t509 = xsdbool( t510 IS BOUND AND t510 IS INSTANCE OF zcl_lnt_st_test_injection ).
        t421 = t509.
      ENDIF.
      t420 = t421.
      IF t421 = abap_false.
        DATA t511 TYPE abap_bool.
        DATA(t512) = t48.
        t511 = xsdbool( t512 IS BOUND AND t512 IS INSTANCE OF zcl_lnt_st_test_seam ).
        t420 = t511.
      ENDIF.
      t419 = t420.
      IF t420 = abap_false.
        DATA(t513) = VALUE abap_bool( ).
        DATA(t514) = VALUE abap_bool( ).
        DATA(t515) = VALUE abap_bool( ).
        DATA t516 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t517) = me->options.
        t516 = t517->slctn_scrn_blck_indnttn.
        DATA t518 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t518.
        DATA(t519) = abap_true.
        IF t519 = abap_true.
          DATA(t520) = abap_true.
          DATA(t521) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t521->has = abap_true.
          t521->value = t520.
          t518 = t521.
        ELSE.
          DATA t522 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t522.
          t518 = t522.
        ENDIF.
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
          DATA(t526) = t48.
          t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_st_selection_screen ).
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
          DATA(t534) = t36.
          t533 = t534->concat_tokens( ).
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
            DATA(t543) = t36.
            t542 = t543->concat_tokens( ).
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
            DATA(t552) = t36.
            t551 = t552->concat_tokens( ).
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
            DATA(t561) = t36.
            t560 = t561->concat_tokens( ).
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
        DATA(t567) = t48.
        t566 = xsdbool( t567 IS BOUND AND t567 IS INSTANCE OF zcl_lnt_start_of_selection ).
        t418 = t566.
      ENDIF.
      t417 = t418.
      IF t418 = abap_false.
        DATA t568 TYPE abap_bool.
        DATA(t569) = t48.
        t568 = xsdbool( t569 IS BOUND AND t569 IS INSTANCE OF zcl_lnt_get ).
        t417 = t568.
      ENDIF.
      t416 = t417.
      IF t417 = abap_false.
        DATA t570 TYPE abap_bool.
        DATA(t571) = t48.
        t570 = xsdbool( t571 IS BOUND AND t571 IS INSTANCE OF zcl_lnt_st_at_selection_screen ).
        t416 = t570.
      ENDIF.
      t415 = t416.
      IF t416 = abap_false.
        DATA t572 TYPE abap_bool.
        DATA(t573) = t48.
        t572 = xsdbool( t573 IS BOUND AND t573 IS INSTANCE OF zcl_lnt_at_line_selection ).
        t415 = t572.
      ENDIF.
      t414 = t415.
      IF t415 = abap_false.
        DATA t574 TYPE abap_bool.
        DATA(t575) = t48.
        t574 = xsdbool( t575 IS BOUND AND t575 IS INSTANCE OF zcl_lnt_load_of_program ).
        t414 = t574.
      ENDIF.
      t413 = t414.
      IF t414 = abap_false.
        DATA t576 TYPE abap_bool.
        DATA(t577) = t48.
        t576 = xsdbool( t577 IS BOUND AND t577 IS INSTANCE OF zcl_lnt_initialization ).
        t413 = t576.
      ENDIF.
      t412 = t413.
      IF t413 = abap_false.
        DATA t578 TYPE abap_bool.
        DATA(t579) = t48.
        t578 = xsdbool( t579 IS BOUND AND t579 IS INSTANCE OF zcl_lnt_at_user_command ).
        t412 = t578.
      ENDIF.
      t411 = t412.
      IF t412 = abap_false.
        DATA t580 TYPE abap_bool.
        DATA(t581) = t48.
        t580 = xsdbool( t581 IS BOUND AND t581 IS INSTANCE OF zcl_lnt_top_of_page ).
        t411 = t580.
      ENDIF.
      t410 = t411.
      IF t411 = abap_false.
        DATA t582 TYPE abap_bool.
        DATA(t583) = t48.
        t582 = xsdbool( t583 IS BOUND AND t583 IS INSTANCE OF zcl_lnt_end_of_selection ).
        t410 = t582.
      ENDIF.
      t409 = t410.
      IF t410 = abap_false.
        DATA t584 TYPE abap_bool.
        DATA(t585) = t48.
        t584 = xsdbool( t585 IS BOUND AND t585 IS INSTANCE OF zcl_lnt_public ).
        t409 = t584.
      ENDIF.
      t408 = t409.
      IF t409 = abap_false.
        DATA t586 TYPE abap_bool.
        DATA(t587) = t48.
        t586 = xsdbool( t587 IS BOUND AND t587 IS INSTANCE OF zcl_lnt_protected ).
        t408 = t586.
      ENDIF.
      t407 = t408.
      IF t408 = abap_false.
        DATA t588 TYPE abap_bool.
        DATA(t589) = t48.
        t588 = xsdbool( t589 IS BOUND AND t589 IS INSTANCE OF zcl_lnt_private ).
        t407 = t588.
      ENDIF.
      IF t407 = abap_true.
        DATA t590 TYPE f.
        DATA(t591) = t8.
        DATA(t592) = CONV f( 2 ).
        t590 = t591 + t592.
        t8 = t590.
      ELSE.
        DATA t593 TYPE abap_bool.
        DATA(t594) = t48.
        t593 = xsdbool( t594 IS BOUND AND t594 IS INSTANCE OF zcl_lnt_st_try ).
        IF t593 = abap_true.
          DATA(t595) = VALUE f( ).
          DATA(t596) = t8.
          DATA(t597) = VALUE f( ).
          DATA(t598) = VALUE i( ).
          DATA(t599) = VALUE abap_bool( ).
          DATA t600 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t601) = me->options.
          t600 = t601->align_try_catch.
          IF t600 IS BOUND.
            IF t600->has = abap_true.
              t599 = xsdbool( t600->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t599 = abap_true.
            DATA(t602) = 2.
            t598 = t602.
          ELSE.
            DATA(t603) = 4.
            t598 = t603.
          ENDIF.
          t597 = t598.
          t595 = t596 + t597.
          t8 = t595.
          DATA t604 TYPE REF TO zcl_lnt_stack.
          DATA(t605) = t6.
          t604 = t605.
          DATA t606 TYPE f.
          DATA(t607) = t8.
          t606 = t607.
          DATA t608 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
          DATA(t609) = t604.
          t608 = t609->items.
          DATA(t610) = t606.
          t608->load( ).
          APPEND t610 TO t608->items.
          t608->save( ).
        ELSE.
          DATA(t611) = VALUE abap_bool( ).
          DATA(t612) = VALUE abap_bool( ).
          DATA t613 TYPE abap_bool.
          DATA t614 TYPE abap_bool.
          DATA(t615) = t48.
          t614 = xsdbool( t615 IS BOUND AND t615 IS INSTANCE OF zcl_lnt_st_class_definition ).
          t613 = t614.
          IF t614 = abap_false.
            DATA t616 TYPE abap_bool.
            DATA(t617) = t48.
            t616 = xsdbool( t617 IS BOUND AND t617 IS INSTANCE OF zcl_lnt_st_case ).
            t613 = t616.
          ENDIF.
          t612 = t613.
          IF t613 = abap_false.
            DATA t618 TYPE abap_bool.
            DATA(t619) = t48.
            t618 = xsdbool( t619 IS BOUND AND t619 IS INSTANCE OF zcl_lnt_st_case_type ).
            t612 = t618.
          ENDIF.
          t611 = t612.
          IF t612 = abap_false.
            DATA t620 TYPE abap_bool.
            DATA(t621) = t48.
            t620 = xsdbool( t621 IS BOUND AND t621 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
            t611 = t620.
          ENDIF.
          IF t611 = abap_true.
            DATA(t622) = VALUE f( ).
            DATA(t623) = t8.
            DATA(t624) = VALUE f( ).
            DATA(t625) = VALUE i( ).
            DATA t626 TYPE abap_bool.
            DATA(t627) = t36.
            t626 = me->skip_indent_for_global_class( i_statement = t627 ).
            IF t626 = abap_true.
              DATA(t628) = 0.
              t625 = t628.
            ELSE.
              DATA(t629) = 2.
              t625 = t629.
            ENDIF.
            t624 = t625.
            t622 = t623 + t624.
            t8 = t622.
            DATA t630 TYPE REF TO zcl_lnt_stack.
            DATA(t631) = t6.
            t630 = t631.
            DATA t632 TYPE f.
            DATA(t633) = t8.
            t632 = t633.
            DATA t634 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
            DATA(t635) = t630.
            t634 = t635->items.
            DATA(t636) = t632.
            t634->load( ).
            APPEND t636 TO t634->items.
            t634->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t637 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t637.
      DATA(t638) = abap_true.
      IF t638 = abap_true.
        DATA(t639) = t36.
        t637 = t639.
      ELSE.
        DATA t640 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t640.
        t637 = t640.
      ENDIF.
      t29 = t637.
    ENDDO.
    DATA(t641) = t2.
    result = t641.

  ENDMETHOD.

  METHOD skip_indent_for_global_class.
    DATA(t1) = i_statement.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t5) = me->options.
    t4 = t5->global_class_skip_first.
    IF t4 IS BOUND.
      IF t4->has = abap_true.
        t3 = xsdbool( t4->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA(t6) = abap_false.
      result = t6.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zif_lnt_statement.
    DATA t8 TYPE REF TO zif_lnt_statement.
    DATA(t9) = t1.
    t8 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t7 = t8.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_st_class_definition ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t1.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t13 = xsdbool( t14 IS BOUND ).
      t10 = t13.
    ENDIF.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = t1.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t18 = t19->find_first_expression( i_type_9913 = t20 ).
      t17 = t18.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t17.
      t21 = xsdbool( t22 IS BOUND ).
      IF t21 = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t23.
        DATA(t24) = me->global_classes.
        DATA t25 TYPE string.
        DATA t26 TYPE string.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        DATA(t30) = t17.
        t29 = t30.
        t28 = t29->get_first_token( ).
        t27 = t28.
        DATA t31 TYPE string.
        DATA(t32) = t27.
        t31 = t32->str.
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
      DATA(t34) = abap_true.
      result = t34.
      RETURN.
    ELSE.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t7.
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        DATA(t39) = t1.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
        t38 = t39->find_first_expression( i_type_9913 = t40 ).
        t37 = t38.
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE abap_bool.
        DATA(t43) = t37.
        t42 = xsdbool( t43 IS BOUND ).
        t41 = t42.
        IF t42 = abap_true.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = me->global_classes.
          DATA t46 TYPE string.
          DATA t47 TYPE string.
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA t50 TYPE REF TO zcl_lnt_expression_node.
          DATA(t51) = t37.
          t50 = t51.
          t49 = t50->get_first_token( ).
          t48 = t49.
          DATA t52 TYPE string.
          DATA(t53) = t48.
          t52 = t53->str.
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
          DATA(t55) = abap_true.
          result = t55.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t56) = abap_false.
    result = t56.

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
