* TS: src/lsp/definition.ts:8:1 Definition
CLASS zcl_lnt_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_text_document TYPE REF TO zcl_lnt_txt_dcmnt_idntfr i_position_a3fd TYPE REF TO zcl_lnt_no_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_location.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_definition IMPLEMENTATION.
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
      CLEAR result.
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
      CLEAR result.
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
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t156 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t158 TYPE REF TO zcl_lnt_icursor_data.
    t158 = t133.
    DATA(t160) = me->reg.
    DATA t161 TYPE REF TO zcl_lnt_abap_object.
    DATA t163 TYPE REF TO object.
    t163 = t16.
    t161 ?= t163.
    t156 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t158 i_reg_f149 = t160 i_obj_1ed0 = t161 ).
    DATA t164 TYPE REF TO zcl_lnt_location.
    IF xsdbool( t156 IS INITIAL ) = abap_true.
    ELSE.
      t164 = t156->definition_ef89.
    ENDIF.
    result = t164.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1165_2ea52dcec9d6.
  ENDMETHOD.
ENDCLASS.
