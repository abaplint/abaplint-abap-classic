* TS: src/lsp/rename.ts:29:1 Rename
CLASS zcl_lnt_rename DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS prepare_rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_iprepare_result.
    METHODS rename IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    METHODS rename_variable IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    METHODS rename_method IMPORTING i_params_4c59 TYPE REF TO zcl_lnt_irename_params RETURNING VALUE(result) TYPE REF TO object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rename IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD prepare_rename.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    t2 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t1->zlnt_view_read_sr_ecd019429cea( )->zlnt_view_read_no_0041136eb871( ) ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA(t18) = me->reg.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zcl_lnt_abstract_file.
    t20 = t2.
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
    t52 = t2.
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
    t133 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t135 i_pos = t1 ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t133 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t145 TYPE REF TO zcl_lnt_range.
    DATA t147 TYPE REF TO zcl_lnt_abstract_token.
    t147 = t133->token.
    t145 = zcl_lnt_lsp_utils=>token_to_range( i_token = t147 ).
    DATA t150 TYPE string.
    t150 = t133->token->str.
    DATA(t158) = VALUE abap_bool( ).
    DATA(t159) = t150.
    DATA(t160) = |!|.
    DATA(t161) = strlen( t159 ).
    DATA t162 TYPE i.
    DATA(t163) = VALUE i( ).
    DATA(t164) = VALUE string( ).
    t162 = strlen( t160 ).
    IF t162 = 0.
      t158 = abap_true.
    ELSEIF t162 <= t161.
      t163 = 0.
      t164 = t159+t163(t162).
      IF t164 = t160.
        t158 = abap_true.
      ENDIF.
    ENDIF.
    IF t158 = abap_true.
      DATA t166 TYPE string.
      t166 = t150.
      DATA(t168) = VALUE string( ).
      DATA(t170) = 1.
      DATA t171 TYPE i.
      t171 = strlen( t166 ).
      DATA(t174) = strlen( t166 ).
      t170 = COND i( WHEN t170 < 0 THEN 0 WHEN t170 > t174 THEN t174 ELSE t170 ).
      t171 = COND i( WHEN t171 < 0 THEN 0 WHEN t171 > t174 THEN t174 ELSE t171 ).
      IF t170 > t171.
        t174 = t170.
        t170 = t171.
        t171 = t174.
      ENDIF.
      t174 = t171 - t170.
      t168 = t166+t170(t174).
      t150 = t168.
      DATA t175 TYPE REF TO zcl_lnt_no_position.
      t175 = t145->zlnt_view_read_no_afe0c94a5142( ).
      DATA t178 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t178 = t145->zlnt_view_read_no_afe0c94a5142( )->zlnt_view_read_no_a9574d1ec283( ).
      DATA(t182) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t182->has = abap_true.
      t182->value = CONV f( 1 ).
      t175->zlnt_view_write_n_cdbf194355d4( p0 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t178 right = t182 op = `+` ) ).
    ENDIF.
    DATA t183 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t185 TYPE REF TO zcl_lnt_icursor_data.
    t185 = t133.
    DATA(t187) = me->reg.
    DATA t188 TYPE REF TO zcl_lnt_abap_object.
    DATA t190 TYPE REF TO object.
    t190 = t16.
    t188 ?= t190.
    t183 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t185 i_reg_f149 = t187 i_obj_1ed0 = t188 ).
    DATA t192 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t193 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t193 = t183.
    DATA t195 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t193 IS INITIAL ) = abap_true.
    ELSE.
      t195 = t193->definition_id.
    ENDIF.
    t192 = t195.
    IF xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_typed_identifier ) = abap_true.
      DATA t204 TYPE REF TO zcl_lnt_iprepare_result.
      DATA t205 TYPE REF TO zcl_lnt_range.
      t205 = t145.
      DATA t207 TYPE string.
      t207 = t150.
      DATA t211 TYPE REF TO zif_lnt_file.
      t211 = t2.
      t204 = NEW zcl_lnt_iprepare_result( i_range = t205 i_placeholder = t207 i_type_9913 = CONV f( 2 ) i_file = t211 ).
      CREATE OBJECT t204->zlnt_view_ownkeys_b0e8086400eb.
      t204->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t214 ).
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t215 ).
      ENDIF.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t216 ).
      ENDIF.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t217 ).
      ENDIF.
      CREATE OBJECT t204->zlnt_json_ownkeys_70e5fd461788.
      t204->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t219 ).
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |placeholder| p1 = t221 ).
      ENDIF.
      DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t223 ).
      ENDIF.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t225 ).
      ENDIF.
      result = t204.
      RETURN.
    ELSE.
      DATA t228 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t229 TYPE REF TO zcl_lnt_lsp_lookup_result.
      t229 = t183.
      DATA t231 TYPE REF TO zcl_lnt_fi_identifier.
      IF xsdbool( t229 IS INITIAL ) = abap_true.
      ELSE.
        t231 = t229->definition_id.
      ENDIF.
      t228 = t231.
      IF xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_ty_class_definition ) = abap_true.
        DATA t240 TYPE REF TO zcl_lnt_iprepare_result.
        DATA t241 TYPE REF TO zcl_lnt_range.
        t241 = t145.
        DATA t243 TYPE string.
        t243 = t150.
        DATA t247 TYPE REF TO zif_lnt_file.
        t247 = t2.
        t240 = NEW zcl_lnt_iprepare_result( i_range = t241 i_placeholder = t243 i_type_9913 = CONV f( 1 ) i_file = t247 ).
        CREATE OBJECT t240->zlnt_view_ownkeys_b0e8086400eb.
        t240->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t250 ).
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t251 ).
        ENDIF.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t252 ).
        ENDIF.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t253 ).
        ENDIF.
        CREATE OBJECT t240->zlnt_json_ownkeys_70e5fd461788.
        t240->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t255 ).
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = |placeholder| p1 = t257 ).
        ENDIF.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t259 ).
        ENDIF.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t261 ).
        ENDIF.
        result = t240.
        RETURN.
      ELSE.
        DATA t264 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t265 TYPE REF TO zcl_lnt_lsp_lookup_result.
        t265 = t183.
        DATA t267 TYPE REF TO zcl_lnt_fi_identifier.
        IF xsdbool( t265 IS INITIAL ) = abap_true.
        ELSE.
          t267 = t265->definition_id.
        ENDIF.
        t264 = t267.
        IF xsdbool( t264 IS BOUND AND t264 IS INSTANCE OF zcl_lnt_interface_definition ) = abap_true.
          DATA t276 TYPE REF TO zcl_lnt_iprepare_result.
          DATA t277 TYPE REF TO zcl_lnt_range.
          t277 = t145.
          DATA t279 TYPE string.
          t279 = t150.
          DATA t283 TYPE REF TO zif_lnt_file.
          t283 = t2.
          t276 = NEW zcl_lnt_iprepare_result( i_range = t277 i_placeholder = t279 i_type_9913 = CONV f( 3 ) i_file = t283 ).
          CREATE OBJECT t276->zlnt_view_ownkeys_b0e8086400eb.
          t276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t286 ).
          DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t287 ).
          ENDIF.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t288 ).
          ENDIF.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t289 ).
          ENDIF.
          CREATE OBJECT t276->zlnt_json_ownkeys_70e5fd461788.
          t276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t291 ).
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |placeholder| p1 = t293 ).
          ENDIF.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t295 ).
          ENDIF.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t297 ).
          ENDIF.
          result = t276.
          RETURN.
        ELSE.
          DATA t300 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t301 TYPE REF TO zcl_lnt_lsp_lookup_result.
          t301 = t183.
          DATA t303 TYPE REF TO zcl_lnt_fi_identifier.
          IF xsdbool( t301 IS INITIAL ) = abap_true.
          ELSE.
            t303 = t301->definition_id.
          ENDIF.
          t300 = t303.
          IF xsdbool( t300 IS BOUND AND t300 IS INSTANCE OF zcl_lnt_method_definition ) = abap_true.
            DATA t312 TYPE REF TO zcl_lnt_iprepare_result.
            DATA t313 TYPE REF TO zcl_lnt_range.
            t313 = t145.
            DATA t315 TYPE string.
            t315 = t150.
            DATA t319 TYPE REF TO zif_lnt_file.
            t319 = t2.
            t312 = NEW zcl_lnt_iprepare_result( i_range = t313 i_placeholder = t315 i_type_9913 = CONV f( 4 ) i_file = t319 ).
            CREATE OBJECT t312->zlnt_view_ownkeys_b0e8086400eb.
            t312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t322 ).
            DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t323 ).
            ENDIF.
            DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t324 ).
            ENDIF.
            DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t325 ).
            ENDIF.
            CREATE OBJECT t312->zlnt_json_ownkeys_70e5fd461788.
            t312->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t327 ).
            DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |placeholder| p1 = t329 ).
            ENDIF.
            DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t331 ).
            ENDIF.
            DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t333 ).
            ENDIF.
            result = t312.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD rename.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_iprepare_result.
    DATA t4 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t1.
      TRY.
          t5 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t7 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t5 = t7->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t5 IS BOUND.
      IF t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t4 ?= t5->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t4 IS NOT BOUND.
        IF t5->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t5->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t9 ?= t5->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t9->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        DATA t10 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
        DATA t11 TYPE REF TO zcl_lnt_no_position.
        t4 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( view_source = t5 i_text_document = t10 i_position_a3fd = t11 ).
      ENDIF.
    ENDIF.
    t2 = me->prepare_rename( i_params_4c59 = t4 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t20) = VALUE f( ).
    t20 = t2->type_cba0.
    IF xsdbool( t20 = CONV f( 1 ) ) = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_shape_36bc2e57.
      DATA t28 TYPE REF TO object.
      DATA t29 TYPE REF TO zcl_lnt_renamer.
      DATA(t30) = me->reg.
      t29 = NEW zcl_lnt_renamer( i_reg_f149 = t30 ).
      DATA(t32) = VALUE string( ).
      t32 = t2->placeholder.
      DATA(t35) = VALUE string( ).
      t35 = t1->new_name.
      t28 = t29->build_edits( i_type_9913 = |CLAS| i_old_name = t32 i_new_name = t35 ).
      t27 ?= t28.
      result = t27.
      RETURN.
    ELSE.
      IF xsdbool( t20 = CONV f( 3 ) ) = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_shape_36bc2e57.
        DATA t41 TYPE REF TO object.
        DATA t42 TYPE REF TO zcl_lnt_renamer.
        DATA(t43) = me->reg.
        t42 = NEW zcl_lnt_renamer( i_reg_f149 = t43 ).
        DATA(t45) = VALUE string( ).
        t45 = t2->placeholder.
        DATA(t48) = VALUE string( ).
        t48 = t1->new_name.
        t41 = t42->build_edits( i_type_9913 = |INTF| i_old_name = t45 i_new_name = t48 ).
        t40 ?= t41.
        result = t40.
        RETURN.
      ELSE.
        IF xsdbool( t20 = CONV f( 2 ) ) = abap_true.
          DATA t53 TYPE REF TO zcl_lnt_shape_36bc2e57.
          DATA t54 TYPE REF TO object.
          t54 = me->rename_variable( i_params_4c59 = t1 ).
          t53 ?= t54.
          result = t53.
          RETURN.
        ELSE.
          IF xsdbool( t20 = CONV f( 4 ) ) = abap_true.
            DATA t59 TYPE REF TO zcl_lnt_shape_36bc2e57.
            DATA t60 TYPE REF TO object.
            t60 = me->rename_method( i_params_4c59 = t1 ).
            t59 ?= t60.
            result = t59.
            RETURN.
          ELSE.
            CLEAR result.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD rename_variable.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO object.
    DATA t3 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t9 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t11 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t3 = NEW zcl_lnt_shape_36bc2e57( i_changes = t9 i_document_changes = t4 i_change_annotations = t11 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t13 ).
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |documentChanges| p1 = t15 ).
    t2 = t3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zcl_lnt_references.
    DATA(t19) = me->reg.
    t18 = NEW zcl_lnt_references( i_reg_f149 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t1.
      TRY.
          t21 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t23 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t21 = t23->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t21 IS BOUND.
      IF t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t20 ?= t21->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t20 IS NOT BOUND.
        IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t25 ?= t21->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t25->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        DATA t26 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
        DATA t27 TYPE REF TO zcl_lnt_no_position.
        t20 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( view_source = t21 i_text_document = t26 i_position_a3fd = t27 ).
      ENDIF.
    ENDIF.
    t16 = t18->references( i_pos = t20 ).
    DATA t29 TYPE REF TO zcl_lnt_location.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t16->load( ).
      IF t31 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t16->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        CLEAR t33.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      CLEAR t35.
      DATA(t36) = VALUE string( ).
      t36 = t29->uri.
      t35 = NEW zcl_lnt_vrsnd_txt_dcmnt_idntfr( i_uri = t36 i_version = CONV f( 1 ) ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t41 ).
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t42 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t44 ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t46 ).
      ENDIF.
      t34 = t35.
      DATA t50 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      CLEAR t51.
      IF t34 IS BOUND.
        DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t53.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        CLEAR t53.
        t54 = t34.
        TRY.
            t51 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS NOT BOUND.
          TRY.
              t53 ?= t34.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t53 IS BOUND.
            t51 = t53->source( ).
          ENDIF.
          IF t51 IS NOT BOUND.
            CREATE OBJECT t51.
            t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t51->oval = t34.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t50.
      IF t51 IS BOUND.
        IF t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t50 ?= t51->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t50 IS NOT BOUND.
          IF t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t55.
            IF t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t55 ?= t51->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t55->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t56) = VALUE string( ).
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t57.
          t50 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( view_source = t51 i_uri = t56 i_version = t57 ).
        ENDIF.
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t61.
      CREATE OBJECT t61.
      t60 = t61.
      DATA t63 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t63.
      DATA t65 TYPE REF TO zcl_lnt_range.
      CLEAR t65.
      t65 = t29->range.
      DATA(t68) = VALUE string( ).
      t68 = t1->new_name.
      DATA t70 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t70.
      t70 = NEW zcl_lnt_text_edit( i_range = t65 i_new_text = t68 ).
      CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
      t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t75 ).
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t76 ).
      ENDIF.
      CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
      t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t78 ).
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t80 ).
      ENDIF.
      t63 = t70.
      t60->load( ).
      APPEND t63 TO t60->items.
      t60->save( ).
      DATA t82 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t82.
      t82 = NEW zcl_lnt_text_document_edit( i_text_document = t50 i_edits = t60 ).
      CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
      t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t87 ).
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
      t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t90 ).
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t92 ).
      ENDIF.
      DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t94.
      DATA t96 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      t97 = t2.
      t96 ?= t97.
      t94 = t96->document_changes.
      DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t98.
      IF xsdbool( t94 IS INITIAL ) = abap_true.
        CLEAR t98.
      ELSE.
        DATA(t102) = VALUE f( ).
        DATA(t103) = VALUE i( ).
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t104.
        t104 = t94.
        t104->load( ).
        APPEND t82 TO t104->items.
        t103 = lines( t104->items ).
        t104->save( ).
        t102 = t103.
        DATA(t107) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t107->has = abap_true.
        t107->value = t102.
        t98 = t107.
      ENDIF.
      t93 = t98.
    ENDDO.
    DATA t108 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t109 TYPE REF TO object.
    t109 = t2.
    t108 ?= t109.
    result = t108.

  ENDMETHOD.

  METHOD rename_method.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO object.
    DATA t3 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t9 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    DATA t11 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    t3 = NEW zcl_lnt_shape_36bc2e57( i_changes = t9 i_document_changes = t4 i_change_annotations = t11 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t13 ).
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |documentChanges| p1 = t15 ).
    t2 = t3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zcl_lnt_references.
    DATA(t19) = me->reg.
    t18 = NEW zcl_lnt_references( i_reg_f149 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t1.
      TRY.
          t21 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t23 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t21 = t23->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t21 IS BOUND.
      IF t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t20 ?= t21->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t20 IS NOT BOUND.
        IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t25 ?= t21->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t25->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        DATA t26 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
        DATA t27 TYPE REF TO zcl_lnt_no_position.
        t20 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( view_source = t21 i_text_document = t26 i_position_a3fd = t27 ).
      ENDIF.
    ENDIF.
    t16 = t18->references( i_pos = t20 ).
    DATA t29 TYPE REF TO zcl_lnt_location.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t16->load( ).
      IF t31 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t16->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        CLEAR t33.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      CLEAR t35.
      DATA(t36) = VALUE string( ).
      t36 = t29->uri.
      t35 = NEW zcl_lnt_vrsnd_txt_dcmnt_idntfr( i_uri = t36 i_version = CONV f( 1 ) ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t41 ).
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t42 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t44 ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t46 ).
      ENDIF.
      t34 = t35.
      DATA t50 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      CLEAR t51.
      IF t34 IS BOUND.
        DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t53.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        CLEAR t53.
        t54 = t34.
        TRY.
            t51 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS NOT BOUND.
          TRY.
              t53 ?= t34.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t53 IS BOUND.
            t51 = t53->source( ).
          ENDIF.
          IF t51 IS NOT BOUND.
            CREATE OBJECT t51.
            t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t51->oval = t34.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t50.
      IF t51 IS BOUND.
        IF t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t50 ?= t51->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t50 IS NOT BOUND.
          IF t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t55.
            IF t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t55 ?= t51->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t55->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t56) = VALUE string( ).
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t57.
          t50 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( view_source = t51 i_uri = t56 i_version = t57 ).
        ENDIF.
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t61.
      CREATE OBJECT t61.
      t60 = t61.
      DATA t63 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t63.
      DATA t65 TYPE REF TO zcl_lnt_range.
      CLEAR t65.
      t65 = t29->range.
      DATA(t68) = VALUE string( ).
      t68 = t1->new_name.
      DATA t70 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t70.
      t70 = NEW zcl_lnt_text_edit( i_range = t65 i_new_text = t68 ).
      CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
      t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t75 ).
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t76 ).
      ENDIF.
      CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
      t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t78 ).
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t80 ).
      ENDIF.
      t63 = t70.
      t60->load( ).
      APPEND t63 TO t60->items.
      t60->save( ).
      DATA t82 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t82.
      t82 = NEW zcl_lnt_text_document_edit( i_text_document = t50 i_edits = t60 ).
      CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
      t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t87 ).
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
      t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t90 ).
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t92 ).
      ENDIF.
      DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t94.
      DATA t96 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      t97 = t2.
      t96 ?= t97.
      t94 = t96->document_changes.
      DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t98.
      IF xsdbool( t94 IS INITIAL ) = abap_true.
        CLEAR t98.
      ELSE.
        DATA(t102) = VALUE f( ).
        DATA(t103) = VALUE i( ).
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t104.
        t104 = t94.
        t104->load( ).
        APPEND t82 TO t104->items.
        t103 = lines( t104->items ).
        t104->save( ).
        t102 = t103.
        DATA(t107) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t107->has = abap_true.
        t107->value = t102.
        t98 = t107.
      ENDIF.
      t93 = t98.
    ENDDO.
    DATA t108 TYPE REF TO zcl_lnt_location.
    DATA t110 TYPE REF TO zcl_lnt_definition.
    DATA(t111) = me->reg.
    t110 = NEW zcl_lnt_definition( i_reg_f149 = t111 ).
    DATA t112 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    t112 = t1->text_document.
    DATA t114 TYPE REF TO zcl_lnt_no_position.
    t114 = t1->position_7b94.
    t108 = t110->find_8f95( i_text_document = t112 i_position_a3fd = t114 ).
    IF xsdbool( t108 IS BOUND ) = abap_true.
      DATA t118 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      DATA t119 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      t119 = NEW zcl_lnt_vrsnd_txt_dcmnt_idntfr( i_uri = t1->text_document->zlnt_view_read_no_0041136eb871( ) i_version = CONV f( 1 ) ).
      CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
      t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t126 ).
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t127 ).
      ENDIF.
      CREATE OBJECT t119->zlnt_json_ownkeys_70e5fd461788.
      t119->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |uri| p1 = t129 ).
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |version| p1 = t131 ).
      ENDIF.
      t118 = t119.
      DATA t135 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t118 IS BOUND.
        DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t139 TYPE REF TO object.
        t139 = t118.
        TRY.
            t136 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS NOT BOUND.
          TRY.
              t138 ?= t118.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t138 IS BOUND.
            t136 = t138->source( ).
          ENDIF.
          IF t136 IS NOT BOUND.
            CREATE OBJECT t136.
            t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t136->oval = t118.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t136 IS BOUND.
        IF t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t135 ?= t136->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t135 IS NOT BOUND.
          IF t136->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
            IF t136->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t140 ?= t136->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t140->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t135 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( view_source = t136 i_uri = VALUE string( ) i_version = t142 ).
        ENDIF.
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t145.
      DATA t148 TYPE REF TO zcl_lnt_text_edit.
      DATA t151 TYPE REF TO zcl_lnt_location.
      t151 = t108.
      DATA t155 TYPE REF TO zcl_lnt_range.
      IF xsdbool( t151 IS INITIAL ) = abap_true.
      ELSE.
        t155 = t151->range.
      ENDIF.
      DATA(t162) = VALUE string( ).
      t162 = t1->new_name.
      DATA t164 TYPE REF TO zcl_lnt_text_edit.
      t164 = NEW zcl_lnt_text_edit( i_range = t155 i_new_text = t162 ).
      CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
      t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t169 ).
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t170 ).
      ENDIF.
      CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
      t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t172 ).
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t174 ).
      ENDIF.
      t148 = t164.
      t145->load( ).
      APPEND t148 TO t145->items.
      t145->save( ).
      DATA t176 TYPE REF TO zcl_lnt_text_document_edit.
      t176 = NEW zcl_lnt_text_document_edit( i_text_document = t135 i_edits = t145 ).
      CREATE OBJECT t176->zlnt_view_ownkeys_b0e8086400eb.
      t176->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t181 ).
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t182 ).
      ENDIF.
      CREATE OBJECT t176->zlnt_json_ownkeys_70e5fd461788.
      t176->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textDocument| p1 = t184 ).
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edits| p1 = t186 ).
      ENDIF.
      DATA t187 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t190 TYPE REF TO zcl_lnt_shape_36bc2e57.
      DATA t191 TYPE REF TO object.
      t191 = t2.
      t190 ?= t191.
      t188 = t190->document_changes.
      DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      IF xsdbool( t188 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t196) = VALUE f( ).
        DATA(t197) = VALUE i( ).
        DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t198 = t188.
        t198->load( ).
        APPEND t176 TO t198->items.
        t197 = lines( t198->items ).
        t198->save( ).
        t196 = t197.
        DATA(t201) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t201->has = abap_true.
        t201->value = t196.
        t192 = t201.
      ENDIF.
      t187 = t192.
    ENDIF.
    DATA t202 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t203 TYPE REF TO object.
    t203 = t2.
    t202 ?= t203.
    result = t202.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1176_98366aa089ea.
  ENDMETHOD.
ENDCLASS.
