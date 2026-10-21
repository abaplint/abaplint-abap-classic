* TS: src/lsp/highlight.ts:8:1 Highlight
CLASS zcl_lnt_highlight DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS list_definition_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_read_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS run_syntax IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zif_lnt_spaghetti_scope.
    METHODS find_object IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_highlight IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list_definition_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = me->reg.
    t12 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t14 i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
    ELSE.
      DATA t27 TYPE REF TO zif_lnt_object.
      DATA(t29) = me->reg.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zcl_lnt_abstract_file.
      t31 = t12.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE string.
      t37 = t31->base_name( ).
      DATA(t39) = |.|.
      DATA(t40) = strlen( t37 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t36.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t37+t41(1).
          APPEND t45 TO t36->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t37 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t37+t41(t43).
          ENDIF.
          APPEND t45 TO t36->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t47 = t36->get( p0 = 1 ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t52) = VALUE abap_bool( ).
      IF t47 IS INITIAL.
        t52 = abap_true.
      ELSEIF t47->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        t56 = t47->value.
        DATA(t58) = strlen( t56 ).
        t55 = t56.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t55.
        t51 = t59.
      ENDIF.
      t30 = t51.
      DATA t63 TYPE REF TO zcl_lnt_abstract_file.
      t63 = t12.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t69 TYPE string.
      t69 = t63->base_name( ).
      DATA(t71) = |.|.
      DATA(t72) = strlen( t69 ).
      DATA t73 TYPE i.
      DATA(t74) = VALUE i( ).
      DATA(t75) = VALUE i( ).
      DATA t76 TYPE i.
      DATA(t77) = VALUE string( ).
      CREATE OBJECT t68.
      t76 = strlen( t71 ).
      t73 = 0.
      IF t76 = 0.
        WHILE t73 < t72.
          t77 = t69+t73(1).
          APPEND t77 TO t68->items.
          t73 = t73 + 1.
        ENDWHILE.
      ELSE.
        WHILE t73 <= t72.
          FIND FIRST OCCURRENCE OF t71 IN SECTION OFFSET t73 OF t69 MATCH OFFSET t74.
          IF sy-subrc = 0.
            t75 = t74 - t73.
          ELSE.
            t74 = -1.
            t75 = t72 - t73.
          ENDIF.
          CLEAR t77.
          IF t75 > 0.
            t77 = t69+t73(t75).
          ENDIF.
          APPEND t77 TO t68->items.
          IF t74 < 0.
            EXIT.
          ENDIF.
          t73 = t74 + t76.
        ENDWHILE.
      ENDIF.
      t67 = t68.
      DATA(t81) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t81.
      DATA t83 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t83 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
      DATA(t87) = strlen( t81 ).
      t67->put( p0 = 0 p1 = t83->replace( p0 = t81 p1 = |#| ) ).
      DATA(t91) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t91.
      DATA t93 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t93 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
      DATA(t97) = strlen( t91 ).
      t67->put( p0 = 0 p1 = t93->replace( p0 = t91 p1 = |>| ) ).
      DATA(t101) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t101.
      DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
      DATA(t107) = strlen( t101 ).
      t67->put( p0 = 0 p1 = t103->replace( p0 = t101 p1 = |<| ) ).
      DATA(t111) = VALUE string( ).
      DATA(t112) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t112.
      DATA(t114) = strlen( t112 ).
      t111 = t112.
      IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t111 TO UPPER CASE.
      ELSE.
        t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t115 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
      DATA(t119) = strlen( t111 ).
      t67->put( p0 = 0 p1 = t115->replace( p0 = t111 p1 = |/| ) ).
      DATA(t122) = VALUE string( ).
      DATA(t123) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t123.
      DATA(t125) = |(|.
      DATA(t126) = |/|.
      DATA(t127) = strlen( t123 ).
      t122 = t123.
      REPLACE ALL OCCURRENCES OF t125 IN t122 WITH t126.
      t67->put( p0 = 0 p1 = t122 ).
      DATA(t130) = VALUE string( ).
      DATA(t131) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t131.
      DATA(t133) = |)|.
      DATA(t134) = |/|.
      DATA(t135) = strlen( t131 ).
      t130 = t131.
      REPLACE ALL OCCURRENCES OF t133 IN t130 WITH t134.
      t67->put( p0 = 0 p1 = t130 ).
      DATA(t136) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t136.
      DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t138->has = abap_true.
      t138->value = t136.
      t27 = t29->get_object( i_type_9913 = t30 i_name = t138 ).
      DATA t140 TYPE REF TO zcl_lnt_abap_object.
      IF xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
        DATA t145 TYPE REF TO zcl_lnt_abap_object.
        t145 ?= t27.
        t140 = t145.
      ELSE.
        CLEAR t140.
      ENDIF.
      t17 = t140.
    ENDIF.
    t7 = t17.
    DATA t150 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t164) = me->reg.
      t150 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t164 i_object_19cd = t7 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
    ENDIF.
    t2 = t150.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t176 = t2->list_definitions( i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    DATA t185 TYPE REF TO zcl_lnt_iscope_variable.
    DATA t186 TYPE REF TO object.
    DATA(t187) = VALUE i( ).
    DO.
      t176->load( ).
      IF t187 >= lines( t176->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t176->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA t191 TYPE REF TO zcl_lnt_range.
      DATA t193 TYPE REF TO zcl_lnt_fi_identifier.
      t193 = t185->identifier.
      DATA t196 TYPE REF TO zcl_lnt_abstract_token.
      t196 = t193->token.
      t191 = zcl_lnt_lsp_utils=>token_to_range( i_token = t196 ).
      t182->load( ).
      APPEND t191 TO t182->items.
      t182->save( ).
    ENDDO.
    result = t182.

  ENDMETHOD.

  METHOD list_read_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = me->reg.
    t12 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t14 i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
    ELSE.
      DATA t27 TYPE REF TO zif_lnt_object.
      DATA(t29) = me->reg.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zcl_lnt_abstract_file.
      t31 = t12.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE string.
      t37 = t31->base_name( ).
      DATA(t39) = |.|.
      DATA(t40) = strlen( t37 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t36.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t37+t41(1).
          APPEND t45 TO t36->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t37 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t37+t41(t43).
          ENDIF.
          APPEND t45 TO t36->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t47 = t36->get( p0 = 1 ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t52) = VALUE abap_bool( ).
      IF t47 IS INITIAL.
        t52 = abap_true.
      ELSEIF t47->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        t56 = t47->value.
        DATA(t58) = strlen( t56 ).
        t55 = t56.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t55.
        t51 = t59.
      ENDIF.
      t30 = t51.
      DATA t63 TYPE REF TO zcl_lnt_abstract_file.
      t63 = t12.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t69 TYPE string.
      t69 = t63->base_name( ).
      DATA(t71) = |.|.
      DATA(t72) = strlen( t69 ).
      DATA t73 TYPE i.
      DATA(t74) = VALUE i( ).
      DATA(t75) = VALUE i( ).
      DATA t76 TYPE i.
      DATA(t77) = VALUE string( ).
      CREATE OBJECT t68.
      t76 = strlen( t71 ).
      t73 = 0.
      IF t76 = 0.
        WHILE t73 < t72.
          t77 = t69+t73(1).
          APPEND t77 TO t68->items.
          t73 = t73 + 1.
        ENDWHILE.
      ELSE.
        WHILE t73 <= t72.
          FIND FIRST OCCURRENCE OF t71 IN SECTION OFFSET t73 OF t69 MATCH OFFSET t74.
          IF sy-subrc = 0.
            t75 = t74 - t73.
          ELSE.
            t74 = -1.
            t75 = t72 - t73.
          ENDIF.
          CLEAR t77.
          IF t75 > 0.
            t77 = t69+t73(t75).
          ENDIF.
          APPEND t77 TO t68->items.
          IF t74 < 0.
            EXIT.
          ENDIF.
          t73 = t74 + t76.
        ENDWHILE.
      ENDIF.
      t67 = t68.
      DATA(t81) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t81.
      DATA t83 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t83 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
      DATA(t87) = strlen( t81 ).
      t67->put( p0 = 0 p1 = t83->replace( p0 = t81 p1 = |#| ) ).
      DATA(t91) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t91.
      DATA t93 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t93 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
      DATA(t97) = strlen( t91 ).
      t67->put( p0 = 0 p1 = t93->replace( p0 = t91 p1 = |>| ) ).
      DATA(t101) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t101.
      DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
      DATA(t107) = strlen( t101 ).
      t67->put( p0 = 0 p1 = t103->replace( p0 = t101 p1 = |<| ) ).
      DATA(t111) = VALUE string( ).
      DATA(t112) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t112.
      DATA(t114) = strlen( t112 ).
      t111 = t112.
      IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t111 TO UPPER CASE.
      ELSE.
        t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t115 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
      DATA(t119) = strlen( t111 ).
      t67->put( p0 = 0 p1 = t115->replace( p0 = t111 p1 = |/| ) ).
      DATA(t122) = VALUE string( ).
      DATA(t123) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t123.
      DATA(t125) = |(|.
      DATA(t126) = |/|.
      DATA(t127) = strlen( t123 ).
      t122 = t123.
      REPLACE ALL OCCURRENCES OF t125 IN t122 WITH t126.
      t67->put( p0 = 0 p1 = t122 ).
      DATA(t130) = VALUE string( ).
      DATA(t131) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t131.
      DATA(t133) = |)|.
      DATA(t134) = |/|.
      DATA(t135) = strlen( t131 ).
      t130 = t131.
      REPLACE ALL OCCURRENCES OF t133 IN t130 WITH t134.
      t67->put( p0 = 0 p1 = t130 ).
      DATA(t136) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t136.
      DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t138->has = abap_true.
      t138->value = t136.
      t27 = t29->get_object( i_type_9913 = t30 i_name = t138 ).
      DATA t140 TYPE REF TO zcl_lnt_abap_object.
      IF xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
        DATA t145 TYPE REF TO zcl_lnt_abap_object.
        t145 ?= t27.
        t140 = t145.
      ELSE.
        CLEAR t140.
      ENDIF.
      t17 = t140.
    ENDIF.
    t7 = t17.
    DATA t150 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t164) = me->reg.
      t150 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t164 i_object_19cd = t7 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
    ENDIF.
    t2 = t150.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t176 = t2->list_read_positions( i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t186 TYPE REF TO object.
    DATA(t187) = VALUE i( ).
    DO.
      t176->load( ).
      IF t187 >= lines( t176->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t176->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA t191 TYPE REF TO zcl_lnt_range.
      DATA t195 TYPE REF TO zcl_lnt_abstract_token.
      t195 = t185->token.
      t191 = zcl_lnt_lsp_utils=>token_to_range( i_token = t195 ).
      t182->load( ).
      APPEND t191 TO t182->items.
      t182->save( ).
    ENDDO.
    result = t182.

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_text_document.
    DATA t2 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = me->reg.
    t12 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t14 i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
    ELSE.
      DATA t27 TYPE REF TO zif_lnt_object.
      DATA(t29) = me->reg.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zcl_lnt_abstract_file.
      t31 = t12.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE string.
      t37 = t31->base_name( ).
      DATA(t39) = |.|.
      DATA(t40) = strlen( t37 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t36.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t37+t41(1).
          APPEND t45 TO t36->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t37 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t37+t41(t43).
          ENDIF.
          APPEND t45 TO t36->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t47 = t36->get( p0 = 1 ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t52) = VALUE abap_bool( ).
      IF t47 IS INITIAL.
        t52 = abap_true.
      ELSEIF t47->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
      ELSE.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        t56 = t47->value.
        DATA(t58) = strlen( t56 ).
        t55 = t56.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t55.
        t51 = t59.
      ENDIF.
      t30 = t51.
      DATA t63 TYPE REF TO zcl_lnt_abstract_file.
      t63 = t12.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t69 TYPE string.
      t69 = t63->base_name( ).
      DATA(t71) = |.|.
      DATA(t72) = strlen( t69 ).
      DATA t73 TYPE i.
      DATA(t74) = VALUE i( ).
      DATA(t75) = VALUE i( ).
      DATA t76 TYPE i.
      DATA(t77) = VALUE string( ).
      CREATE OBJECT t68.
      t76 = strlen( t71 ).
      t73 = 0.
      IF t76 = 0.
        WHILE t73 < t72.
          t77 = t69+t73(1).
          APPEND t77 TO t68->items.
          t73 = t73 + 1.
        ENDWHILE.
      ELSE.
        WHILE t73 <= t72.
          FIND FIRST OCCURRENCE OF t71 IN SECTION OFFSET t73 OF t69 MATCH OFFSET t74.
          IF sy-subrc = 0.
            t75 = t74 - t73.
          ELSE.
            t74 = -1.
            t75 = t72 - t73.
          ENDIF.
          CLEAR t77.
          IF t75 > 0.
            t77 = t69+t73(t75).
          ENDIF.
          APPEND t77 TO t68->items.
          IF t74 < 0.
            EXIT.
          ENDIF.
          t73 = t74 + t76.
        ENDWHILE.
      ENDIF.
      t67 = t68.
      DATA(t81) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t81.
      DATA t83 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t83 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
      DATA(t87) = strlen( t81 ).
      t67->put( p0 = 0 p1 = t83->replace( p0 = t81 p1 = |#| ) ).
      DATA(t91) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t91.
      DATA t93 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t93 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
      DATA(t97) = strlen( t91 ).
      t67->put( p0 = 0 p1 = t93->replace( p0 = t91 p1 = |>| ) ).
      DATA(t101) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t101.
      DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
      DATA(t107) = strlen( t101 ).
      t67->put( p0 = 0 p1 = t103->replace( p0 = t101 p1 = |<| ) ).
      DATA(t111) = VALUE string( ).
      DATA(t112) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t112.
      DATA(t114) = strlen( t112 ).
      t111 = t112.
      IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t111 TO UPPER CASE.
      ELSE.
        t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t115 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
      DATA(t119) = strlen( t111 ).
      t67->put( p0 = 0 p1 = t115->replace( p0 = t111 p1 = |/| ) ).
      DATA(t122) = VALUE string( ).
      DATA(t123) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t123.
      DATA(t125) = |(|.
      DATA(t126) = |/|.
      DATA(t127) = strlen( t123 ).
      t122 = t123.
      REPLACE ALL OCCURRENCES OF t125 IN t122 WITH t126.
      t67->put( p0 = 0 p1 = t122 ).
      DATA(t130) = VALUE string( ).
      DATA(t131) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t131.
      DATA(t133) = |)|.
      DATA(t134) = |/|.
      DATA(t135) = strlen( t131 ).
      t130 = t131.
      REPLACE ALL OCCURRENCES OF t133 IN t130 WITH t134.
      t67->put( p0 = 0 p1 = t130 ).
      DATA(t136) = VALUE string( ).
      IF t67->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX 1 INTO t136.
      DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t138->has = abap_true.
      t138->value = t136.
      t27 = t29->get_object( i_type_9913 = t30 i_name = t138 ).
      DATA t140 TYPE REF TO zcl_lnt_abap_object.
      IF xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
        DATA t145 TYPE REF TO zcl_lnt_abap_object.
        t145 ?= t27.
        t140 = t145.
      ELSE.
        CLEAR t140.
      ENDIF.
      t17 = t140.
    ENDIF.
    t7 = t17.
    DATA t150 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t164) = me->reg.
      t150 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t164 i_object_19cd = t7 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
    ENDIF.
    t2 = t150.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t176 = t2->list_write_positions( i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t182.
    DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t186 TYPE REF TO object.
    DATA(t187) = VALUE i( ).
    DO.
      t176->load( ).
      IF t187 >= lines( t176->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t176->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA t191 TYPE REF TO zcl_lnt_range.
      DATA t195 TYPE REF TO zcl_lnt_abstract_token.
      t195 = t185->token.
      t191 = zcl_lnt_lsp_utils=>token_to_range( i_token = t195 ).
      t182->load( ).
      APPEND t191 TO t182->items.
      t182->save( ).
    ENDDO.
    result = t182.

  ENDMETHOD.

  METHOD run_syntax.
    DATA t2 TYPE REF TO zcl_lnt_abap_object.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = me->reg.
    t7 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t9 i_filename = i_text_document->zlnt_view_read_no_0041136eb871( ) ).
    DATA t12 TYPE REF TO zcl_lnt_abap_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA t22 TYPE REF TO zif_lnt_object.
      DATA(t24) = me->reg.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t26 TYPE REF TO zcl_lnt_abstract_file.
      t26 = t7.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE string.
      t32 = t26->base_name( ).
      DATA(t34) = |.|.
      DATA(t35) = strlen( t32 ).
      DATA t36 TYPE i.
      DATA(t37) = VALUE i( ).
      DATA(t38) = VALUE i( ).
      DATA t39 TYPE i.
      DATA(t40) = VALUE string( ).
      CREATE OBJECT t31.
      t39 = strlen( t34 ).
      t36 = 0.
      IF t39 = 0.
        WHILE t36 < t35.
          t40 = t32+t36(1).
          APPEND t40 TO t31->items.
          t36 = t36 + 1.
        ENDWHILE.
      ELSE.
        WHILE t36 <= t35.
          FIND FIRST OCCURRENCE OF t34 IN SECTION OFFSET t36 OF t32 MATCH OFFSET t37.
          IF sy-subrc = 0.
            t38 = t37 - t36.
          ELSE.
            t37 = -1.
            t38 = t35 - t36.
          ENDIF.
          CLEAR t40.
          IF t38 > 0.
            t40 = t32+t36(t38).
          ENDIF.
          APPEND t40 TO t31->items.
          IF t37 < 0.
            EXIT.
          ENDIF.
          t36 = t37 + t39.
        ENDWHILE.
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t42 = t31->get( p0 = 1 ).
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t47) = VALUE abap_bool( ).
      IF t42 IS INITIAL.
        t47 = abap_true.
      ELSEIF t42->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
      ELSE.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        t51 = t42->value.
        DATA(t53) = strlen( t51 ).
        t50 = t51.
        IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t50 TO UPPER CASE.
        ELSE.
          t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
        ENDIF.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t50.
        t46 = t54.
      ENDIF.
      t25 = t46.
      DATA t58 TYPE REF TO zcl_lnt_abstract_file.
      t58 = t7.
      DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t64 TYPE string.
      t64 = t58->base_name( ).
      DATA(t66) = |.|.
      DATA(t67) = strlen( t64 ).
      DATA t68 TYPE i.
      DATA(t69) = VALUE i( ).
      DATA(t70) = VALUE i( ).
      DATA t71 TYPE i.
      DATA(t72) = VALUE string( ).
      CREATE OBJECT t63.
      t71 = strlen( t66 ).
      t68 = 0.
      IF t71 = 0.
        WHILE t68 < t67.
          t72 = t64+t68(1).
          APPEND t72 TO t63->items.
          t68 = t68 + 1.
        ENDWHILE.
      ELSE.
        WHILE t68 <= t67.
          FIND FIRST OCCURRENCE OF t66 IN SECTION OFFSET t68 OF t64 MATCH OFFSET t69.
          IF sy-subrc = 0.
            t70 = t69 - t68.
          ELSE.
            t69 = -1.
            t70 = t67 - t68.
          ENDIF.
          CLEAR t72.
          IF t70 > 0.
            t72 = t64+t68(t70).
          ENDIF.
          APPEND t72 TO t63->items.
          IF t69 < 0.
            EXIT.
          ENDIF.
          t68 = t69 + t71.
        ENDWHILE.
      ENDIF.
      t62 = t63.
      DATA(t76) = VALUE string( ).
      IF t62->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t62->load( ).
      READ TABLE t62->items INDEX 1 INTO t76.
      DATA t78 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t78 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
      DATA(t82) = strlen( t76 ).
      t62->put( p0 = 0 p1 = t78->replace( p0 = t76 p1 = |#| ) ).
      DATA(t86) = VALUE string( ).
      IF t62->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t62->load( ).
      READ TABLE t62->items INDEX 1 INTO t86.
      DATA t88 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t88 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
      DATA(t92) = strlen( t86 ).
      t62->put( p0 = 0 p1 = t88->replace( p0 = t86 p1 = |>| ) ).
      DATA(t96) = VALUE string( ).
      IF t62->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t62->load( ).
      READ TABLE t62->items INDEX 1 INTO t96.
      DATA t98 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t98 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
      DATA(t102) = strlen( t96 ).
      t62->put( p0 = 0 p1 = t98->replace( p0 = t96 p1 = |<| ) ).
      DATA(t106) = VALUE string( ).
      DATA(t107) = VALUE string( ).
      IF t62->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t62->load( ).
      READ TABLE t62->items INDEX 1 INTO t107.
      DATA(t109) = strlen( t107 ).
      t106 = t107.
      IF t106 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t106 TO UPPER CASE.
      ELSE.
        t106 = zlnt_runtime_uppe_91169605024d=>full( t106 ).
      ENDIF.
      DATA t110 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t110 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
      DATA(t114) = strlen( t106 ).
      t62->put( p0 = 0 p1 = t110->replace( p0 = t106 p1 = |/| ) ).
      DATA(t117) = VALUE string( ).
      DATA(t118) = VALUE string( ).
      IF t62->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t62->load( ).
      READ TABLE t62->items INDEX 1 INTO t118.
      DATA(t120) = |(|.
      DATA(t121) = |/|.
      DATA(t122) = strlen( t118 ).
      t117 = t118.
      REPLACE ALL OCCURRENCES OF t120 IN t117 WITH t121.
      t62->put( p0 = 0 p1 = t117 ).
      DATA(t125) = VALUE string( ).
      DATA(t126) = VALUE string( ).
      IF t62->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t62->load( ).
      READ TABLE t62->items INDEX 1 INTO t126.
      DATA(t128) = |)|.
      DATA(t129) = |/|.
      DATA(t130) = strlen( t126 ).
      t125 = t126.
      REPLACE ALL OCCURRENCES OF t128 IN t125 WITH t129.
      t62->put( p0 = 0 p1 = t125 ).
      DATA(t131) = VALUE string( ).
      IF t62->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t62->load( ).
      READ TABLE t62->items INDEX 1 INTO t131.
      DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t133->has = abap_true.
      t133->value = t131.
      t22 = t24->get_object( i_type_9913 = t25 i_name = t133 ).
      DATA t135 TYPE REF TO zcl_lnt_abap_object.
      IF xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
        DATA t140 TYPE REF TO zcl_lnt_abap_object.
        t140 ?= t22.
        t135 = t140.
      ELSE.
        CLEAR t135.
      ENDIF.
      t12 = t135.
    ENDIF.
    t2 = t12.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t158) = me->reg.
    result = NEW zcl_lnt_syntax_logic( i_reg_f149 = t158 i_object_19cd = t2 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).

  ENDMETHOD.

  METHOD find_object.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    t2 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = i_text_document->zlnt_view_read_no_0041136eb871( ) ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
    DATA(t17) = me->reg.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zcl_lnt_abstract_file.
    t19 = t2.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t25 TYPE string.
    t25 = t19->base_name( ).
    DATA(t27) = |.|.
    DATA(t28) = strlen( t25 ).
    DATA t29 TYPE i.
    DATA(t30) = VALUE i( ).
    DATA(t31) = VALUE i( ).
    DATA t32 TYPE i.
    DATA(t33) = VALUE string( ).
    CREATE OBJECT t24.
    t32 = strlen( t27 ).
    t29 = 0.
    IF t32 = 0.
      WHILE t29 < t28.
        t33 = t25+t29(1).
        APPEND t33 TO t24->items.
        t29 = t29 + 1.
      ENDWHILE.
    ELSE.
      WHILE t29 <= t28.
        FIND FIRST OCCURRENCE OF t27 IN SECTION OFFSET t29 OF t25 MATCH OFFSET t30.
        IF sy-subrc = 0.
          t31 = t30 - t29.
        ELSE.
          t30 = -1.
          t31 = t28 - t29.
        ENDIF.
        CLEAR t33.
        IF t31 > 0.
          t33 = t25+t29(t31).
        ENDIF.
        APPEND t33 TO t24->items.
        IF t30 < 0.
          EXIT.
        ENDIF.
        t29 = t30 + t32.
      ENDWHILE.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t35 = t24->get( p0 = 1 ).
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t40) = VALUE abap_bool( ).
    IF t35 IS INITIAL.
      t40 = abap_true.
    ELSEIF t35->has = abap_false.
      t40 = abap_true.
    ENDIF.
    IF t40 = abap_true.
    ELSE.
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      t44 = t35->value.
      DATA(t46) = strlen( t44 ).
      t43 = t44.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t43.
      t39 = t47.
    ENDIF.
    t18 = t39.
    DATA t51 TYPE REF TO zcl_lnt_abstract_file.
    t51 = t2.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t57 TYPE string.
    t57 = t51->base_name( ).
    DATA(t59) = |.|.
    DATA(t60) = strlen( t57 ).
    DATA t61 TYPE i.
    DATA(t62) = VALUE i( ).
    DATA(t63) = VALUE i( ).
    DATA t64 TYPE i.
    DATA(t65) = VALUE string( ).
    CREATE OBJECT t56.
    t64 = strlen( t59 ).
    t61 = 0.
    IF t64 = 0.
      WHILE t61 < t60.
        t65 = t57+t61(1).
        APPEND t65 TO t56->items.
        t61 = t61 + 1.
      ENDWHILE.
    ELSE.
      WHILE t61 <= t60.
        FIND FIRST OCCURRENCE OF t59 IN SECTION OFFSET t61 OF t57 MATCH OFFSET t62.
        IF sy-subrc = 0.
          t63 = t62 - t61.
        ELSE.
          t62 = -1.
          t63 = t60 - t61.
        ENDIF.
        CLEAR t65.
        IF t63 > 0.
          t65 = t57+t61(t63).
        ENDIF.
        APPEND t65 TO t56->items.
        IF t62 < 0.
          EXIT.
        ENDIF.
        t61 = t62 + t64.
      ENDWHILE.
    ENDIF.
    t55 = t56.
    DATA(t69) = VALUE string( ).
    IF t55->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55->load( ).
    READ TABLE t55->items INDEX 1 INTO t69.
    DATA t71 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t71 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
    DATA(t75) = strlen( t69 ).
    t55->put( p0 = 0 p1 = t71->replace( p0 = t69 p1 = |#| ) ).
    DATA(t79) = VALUE string( ).
    IF t55->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55->load( ).
    READ TABLE t55->items INDEX 1 INTO t79.
    DATA t81 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t81 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
    DATA(t85) = strlen( t79 ).
    t55->put( p0 = 0 p1 = t81->replace( p0 = t79 p1 = |>| ) ).
    DATA(t89) = VALUE string( ).
    IF t55->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55->load( ).
    READ TABLE t55->items INDEX 1 INTO t89.
    DATA t91 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t91 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
    DATA(t95) = strlen( t89 ).
    t55->put( p0 = 0 p1 = t91->replace( p0 = t89 p1 = |<| ) ).
    DATA(t99) = VALUE string( ).
    DATA(t100) = VALUE string( ).
    IF t55->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55->load( ).
    READ TABLE t55->items INDEX 1 INTO t100.
    DATA(t102) = strlen( t100 ).
    t99 = t100.
    IF t99 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t99 TO UPPER CASE.
    ELSE.
      t99 = zlnt_runtime_uppe_91169605024d=>full( t99 ).
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t103 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
    DATA(t107) = strlen( t99 ).
    t55->put( p0 = 0 p1 = t103->replace( p0 = t99 p1 = |/| ) ).
    DATA(t110) = VALUE string( ).
    DATA(t111) = VALUE string( ).
    IF t55->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55->load( ).
    READ TABLE t55->items INDEX 1 INTO t111.
    DATA(t113) = |(|.
    DATA(t114) = |/|.
    DATA(t115) = strlen( t111 ).
    t110 = t111.
    REPLACE ALL OCCURRENCES OF t113 IN t110 WITH t114.
    t55->put( p0 = 0 p1 = t110 ).
    DATA(t118) = VALUE string( ).
    DATA(t119) = VALUE string( ).
    IF t55->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55->load( ).
    READ TABLE t55->items INDEX 1 INTO t119.
    DATA(t121) = |)|.
    DATA(t122) = |/|.
    DATA(t123) = strlen( t119 ).
    t118 = t119.
    REPLACE ALL OCCURRENCES OF t121 IN t118 WITH t122.
    t55->put( p0 = 0 p1 = t118 ).
    DATA(t124) = VALUE string( ).
    IF t55->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t55->load( ).
    READ TABLE t55->items INDEX 1 INTO t124.
    DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t126->has = abap_true.
    t126->value = t124.
    t15 = t17->get_object( i_type_9913 = t18 i_name = t126 ).
    IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
      DATA t132 TYPE REF TO zcl_lnt_abap_object.
      t132 ?= t15.
      result = t132.
      RETURN.
    ENDIF.
    CLEAR result.


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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1169_66efdac3028a.
  ENDMETHOD.
ENDCLASS.
