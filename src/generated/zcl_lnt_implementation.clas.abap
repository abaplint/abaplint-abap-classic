* TS: src/lsp/implementation.ts:15:1 Implementation
CLASS zcl_lnt_implementation DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_method_implementations IMPORTING i_def TYPE REF TO zcl_lnt_method_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS search_references IMPORTING i_scope TYPE REF TO zif_lnt_spaghetti_scope_node i_id TYPE REF TO zcl_lnt_fi_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_implementation IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_text_document.
    DATA(t2) = i_position_a3fd.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = me->reg.
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t5 i_filename = t1->zlnt_view_read_no_0041136eb871( ) ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA(t18) = me->reg.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zcl_lnt_abstract_file.
    t20 = t3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE string.
    t26 = t20->base_name( ).
    DATA(t28) = |.|.
    DATA(t29) = strlen( t26 ).
    DATA t30 TYPE i.
    DATA(t31) = VALUE i( ).
    DATA(t32) = VALUE i( ).
    DATA t33 TYPE i.
    DATA(t34) = VALUE string( ).
    CREATE OBJECT t25.
    t33 = strlen( t28 ).
    t30 = 0.
    IF t33 = 0.
      WHILE t30 < t29.
        t34 = t26+t30(1).
        APPEND t34 TO t25->items.
        t30 = t30 + 1.
      ENDWHILE.
    ELSE.
      WHILE t30 <= t29.
        FIND FIRST OCCURRENCE OF t28 IN SECTION OFFSET t30 OF t26 MATCH OFFSET t31.
        IF sy-subrc = 0.
          t32 = t31 - t30.
        ELSE.
          t31 = -1.
          t32 = t29 - t30.
        ENDIF.
        CLEAR t34.
        IF t32 > 0.
          t34 = t26+t30(t32).
        ENDIF.
        APPEND t34 TO t25->items.
        IF t31 < 0.
          EXIT.
        ENDIF.
        t30 = t31 + t33.
      ENDWHILE.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t36 = t25->get( p0 = 1 ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t41) = VALUE abap_bool( ).
    IF t36 IS INITIAL.
      t41 = abap_true.
    ELSEIF t36->has = abap_false.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
    ELSE.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      t45 = t36->value.
      DATA(t47) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t44.
      t40 = t48.
    ENDIF.
    t19 = t40.
    DATA t52 TYPE REF TO zcl_lnt_abstract_file.
    t52 = t3.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t58 TYPE string.
    t58 = t52->base_name( ).
    DATA(t60) = |.|.
    DATA(t61) = strlen( t58 ).
    DATA t62 TYPE i.
    DATA(t63) = VALUE i( ).
    DATA(t64) = VALUE i( ).
    DATA t65 TYPE i.
    DATA(t66) = VALUE string( ).
    CREATE OBJECT t57.
    t65 = strlen( t60 ).
    t62 = 0.
    IF t65 = 0.
      WHILE t62 < t61.
        t66 = t58+t62(1).
        APPEND t66 TO t57->items.
        t62 = t62 + 1.
      ENDWHILE.
    ELSE.
      WHILE t62 <= t61.
        FIND FIRST OCCURRENCE OF t60 IN SECTION OFFSET t62 OF t58 MATCH OFFSET t63.
        IF sy-subrc = 0.
          t64 = t63 - t62.
        ELSE.
          t63 = -1.
          t64 = t61 - t62.
        ENDIF.
        CLEAR t66.
        IF t64 > 0.
          t66 = t58+t62(t64).
        ENDIF.
        APPEND t66 TO t57->items.
        IF t63 < 0.
          EXIT.
        ENDIF.
        t62 = t63 + t65.
      ENDWHILE.
    ENDIF.
    t56 = t57.
    DATA(t70) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t70.
    DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t72 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%23| flags = |g| checked = abap_true.
    DATA(t76) = strlen( t70 ).
    t56->put( p0 = 0 p1 = t72->replace( p0 = t70 p1 = |#| ) ).
    DATA(t80) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t80.
    DATA t82 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t82 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3e| flags = |g| checked = abap_true.
    DATA(t86) = strlen( t80 ).
    t56->put( p0 = 0 p1 = t82->replace( p0 = t80 p1 = |>| ) ).
    DATA(t90) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t90.
    DATA t92 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t92 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |%3c| flags = |g| checked = abap_true.
    DATA(t96) = strlen( t90 ).
    t56->put( p0 = 0 p1 = t92->replace( p0 = t90 p1 = |<| ) ).
    DATA(t100) = VALUE string( ).
    DATA(t101) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t101.
    DATA(t103) = strlen( t101 ).
    t100 = t101.
    IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t100 TO UPPER CASE.
    ELSE.
      t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t104 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
    DATA(t108) = strlen( t100 ).
    t56->put( p0 = 0 p1 = t104->replace( p0 = t100 p1 = |/| ) ).
    DATA(t111) = VALUE string( ).
    DATA(t112) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t112.
    DATA(t114) = |(|.
    DATA(t115) = |/|.
    DATA(t116) = strlen( t112 ).
    t111 = t112.
    REPLACE ALL OCCURRENCES OF t114 IN t111 WITH t115.
    t56->put( p0 = 0 p1 = t111 ).
    DATA(t119) = VALUE string( ).
    DATA(t120) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t120.
    DATA(t122) = |)|.
    DATA(t123) = |/|.
    DATA(t124) = strlen( t120 ).
    t119 = t120.
    REPLACE ALL OCCURRENCES OF t122 IN t119 WITH t123.
    t56->put( p0 = 0 p1 = t119 ).
    DATA(t125) = VALUE string( ).
    IF t56->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t56->load( ).
    READ TABLE t56->items INDEX 1 INTO t125.
    DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t127->has = abap_true.
    t127->value = t125.
    t16 = t18->get_object( i_type_9913 = t19 i_name = t127 ).
    IF xsdbool( xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t135) = me->reg.
    DATA t136 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    t136 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( i_text_document = t1 i_position_a3fd = t2 ).
    CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
    t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t141 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t142 ).
    ENDIF.
    CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
    t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t144 ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |position| p1 = t146 ).
    ENDIF.
    t133 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t135 i_pos = t136 ).
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t133 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t155 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t157 TYPE REF TO zcl_lnt_icursor_data.
    t157 = t133.
    DATA(t159) = me->reg.
    DATA t160 TYPE REF TO zcl_lnt_abap_object.
    t160 ?= t16.
    t155 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t157 i_reg_f149 = t159 i_obj_1ed0 = t160 ).
    DATA t164 TYPE REF TO zcl_lnt_location.
    DATA t165 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t165 = t155.
    DATA t167 TYPE REF TO zcl_lnt_location.
    IF xsdbool( t165 IS INITIAL ) = abap_true.
    ELSE.
      t167 = t165->implementation.
    ENDIF.
    t164 = t167.
    IF xsdbool( t164 IS BOUND ) = abap_true.
      DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t175.
      DATA t178 TYPE REF TO zcl_lnt_location.
      DATA t179 TYPE REF TO zcl_lnt_lsp_lookup_result.
      t179 = t155.
      DATA t183 TYPE REF TO zcl_lnt_location.
      IF xsdbool( t179 IS INITIAL ) = abap_true.
      ELSE.
        t183 = t179->implementation.
      ENDIF.
      t178 = t183.
      t175->load( ).
      APPEND t178 TO t175->items.
      t175->save( ).
      result = t175.
      RETURN.
    ENDIF.
    DATA t191 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t192 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t192 = t155.
    DATA t194 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t192 IS INITIAL ) = abap_true.
    ELSE.
      t194 = t192->definition_id.
    ENDIF.
    t191 = t194.
    IF xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_method_definition ) = abap_true.
      DATA t202 TYPE REF TO zcl_lnt_method_definition.
      t202 ?= t155->definition_id.
      result = me->find_method_implementations( i_def = t202 ).
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD find_method_implementations.
    DATA(t1) = i_def.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t4 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      t9 = t4->next( ).
      IF t9->done = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      t14 = t9->value.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      t20 = abap_false.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE abap_bool( ).
          t24 = me->reg->is_dependency( i_obj_1ed0 = t14 ).
          t23 = t24.
          IF t24 = abap_false.
            t23 = xsdbool( xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
          ENDIF.
          t19 = t23.
          t20 = abap_true.
        CATCH cx_root INTO t22.
          IF xsdbool( t20 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      IF xsdbool( t20 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      IF t19 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      t41 = abap_false.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA(t49) = me->reg.
          DATA t50 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t50.
          DATA t52 TYPE REF TO object.
          CLEAR t52.
          t52 = t14.
          t50 ?= t52.
          t40 = me->search_references( i_scope = NEW zcl_lnt_syntax_logic( i_reg_f149 = t49 i_object_19cd = t50 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) i_id = t1 ).
          t41 = abap_true.
        CATCH cx_root INTO t43.
          IF xsdbool( t41 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      IF xsdbool( t41 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      t38 = t40.
      DATA(t62) = VALUE f( ).
      DATA(t63) = VALUE f( ).
      DATA(t64) = VALUE abap_bool( ).
      t64 = abap_false.
      DATA t66 TYPE REF TO cx_root.
      CLEAR t66.
      TRY.
          DATA t69 TYPE REF TO zcl_lnt_location.
          CLEAR t69.
          DATA t70 TYPE REF TO object.
          CLEAR t70.
          DATA(t71) = VALUE i( ).
          DO.
            t38->load( ).
            IF t71 >= lines( t38->items ).
              EXIT.
            ENDIF.
            CLEAR t70.
            READ TABLE t38->items INDEX t71 + 1 INTO t70.
            t71 = t71 + 1.
            DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t72.
            CLEAR t69.
            IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t72 ?= t70.
              DATA t73 TYPE REF TO object.
              CLEAR t73.
              t73 = t72->as_ref( ).
              t69 ?= t73.
            ELSE.
              t69 ?= t70.
            ENDIF.
            t2->load( ).
            APPEND t69 TO t2->items.
            t2->save( ).
          ENDDO.
          DATA(t76) = VALUE f( ).
          t2->load( ).
          t76 = lines( t2->items ).
          t63 = t76.
          t64 = abap_true.
        CATCH cx_root INTO t66.
          IF xsdbool( t64 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t66.
      ENDTRY.
      IF xsdbool( t64 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      t62 = t63.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD search_references.
    DATA(t1) = i_scope.
    DATA(t2) = i_id.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->get_data( )->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
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
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      t16 = xsdbool( t8->reference_type = |Method Implementation| ).
      t15 = t16.
      IF t16 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        t21 = t8->resolved.
        t15 = xsdbool( t21 IS BOUND ).
      ENDIF.
      t14 = t15.
      IF t15 = abap_true.
        t14 = xsdbool( t8->resolved->filename = t2->filename ).
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_position.
        t37 = t8->resolved->token->start.
        DATA t55 TYPE REF TO zcl_lnt_position.
        t55 = t2->token->start.
        t13 = t37->equals( i_p = t55 ).
      ENDIF.
      IF t13 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_location.
        DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
        t59 = t8->position_7b94.
        t58 = zcl_lnt_lsp_utils=>identifer_to_location( i_identifier = t59 ).
        t3->load( ).
        APPEND t58 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t61 = t1->get_children( ).
    DATA t63 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t64 TYPE REF TO object.
    DATA(t65) = VALUE i( ).
    DO.
      t61->load( ).
      IF t65 >= lines( t61->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t61->items INDEX t65 + 1 INTO t64.
      t65 = t65 + 1.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t63.
      IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t64.
        DATA t67 TYPE REF TO object.
        t67 = t66->as_ref( ).
        t63 ?= t67.
      ELSE.
        t63 ?= t64.
      ENDIF.
      DATA(t68) = VALUE i( ).
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t69 = me->search_references( i_scope = t63 i_id = t2 ).
      DATA t72 TYPE REF TO zcl_lnt_location.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      DATA(t74) = VALUE i( ).
      DO.
        t69->load( ).
        IF t74 >= lines( t69->items ).
          EXIT.
        ENDIF.
        CLEAR t73.
        READ TABLE t69->items INDEX t74 + 1 INTO t73.
        t74 = t74 + 1.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        CLEAR t72.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t75 ?= t73.
          DATA t76 TYPE REF TO object.
          t76 = t75->as_ref( ).
          t72 ?= t76.
        ELSE.
          t72 ?= t73.
        ENDIF.
        t3->load( ).
        APPEND t72 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t68 = lines( t3->items ).
    ENDDO.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1171_a3120a45a39f.
  ENDMETHOD.
ENDCLASS.
