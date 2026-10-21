* TS: src/lsp/hover.ts:11:1 Hover
CLASS zcl_lnt_hover DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS find_8f95 IMPORTING i_pos TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_d0b60cb0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_hover IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_pos.
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
    DATA(t145) = VALUE abap_bool( ).
    DATA(t146) = VALUE abap_bool( ).
    DATA t147 TYPE abap_bool.
    DATA t148 TYPE abap_bool.
    DATA t149 TYPE REF TO zcl_lnt_abstract_token.
    t149 = t133->token.
    t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_lx_string_template ).
    t147 = t148.
    IF t148 = abap_false.
      DATA t153 TYPE REF TO zcl_lnt_abstract_token.
      t153 = t133->token.
      t147 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_string_template_begin ).
    ENDIF.
    t146 = t147.
    IF t147 = abap_false.
      DATA t157 TYPE REF TO zcl_lnt_abstract_token.
      t157 = t133->token.
      t146 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_string_template_end ).
    ENDIF.
    t145 = t146.
    IF t146 = abap_false.
      DATA t161 TYPE REF TO zcl_lnt_abstract_token.
      t161 = t133->token.
      t145 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_string_template_middle ).
    ENDIF.
    IF t145 = abap_true.
      DATA t166 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      t166 = NEW zcl_lnt_shape_d0b60cb0( i_kind = |markdown| i_value = |String Template| ).
      CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
      t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t171 ).
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t172 ).
      ENDIF.
      CREATE OBJECT t166->zlnt_json_ownkeys_70e5fd461788.
      t166->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t174 ).
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t176 ).
      ENDIF.
      result = t166.
      RETURN.
    ENDIF.
    DATA t179 TYPE REF TO zif_lnt_statement.
    t179 = t133->snode->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( t179 IS BOUND AND t179 IS INSTANCE OF zcl_lnt_macro_call ) = abap_true.
      DATA t185 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      t185 = NEW zcl_lnt_shape_d0b60cb0( i_kind = |markdown| i_value = |Macro Call| ).
      CREATE OBJECT t185->zlnt_view_ownkeys_b0e8086400eb.
      t185->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t190 ).
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t191 ).
      ENDIF.
      CREATE OBJECT t185->zlnt_json_ownkeys_70e5fd461788.
      t185->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t193 ).
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t195 ).
      ENDIF.
      result = t185.
      RETURN.
    ENDIF.
    DATA t197 TYPE abap_bool.
    DATA t198 TYPE abap_bool.
    DATA t199 TYPE REF TO zif_lnt_statement.
    t199 = t133->snode->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t198 = xsdbool( t199 IS BOUND AND t199 IS INSTANCE OF zcl_lnt_st_define ).
    t197 = t198.
    IF t198 = abap_true.
      DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t205 = t133->stack.
      t205->load( ).
      t197 = xsdbool( lines( t205->items ) = 2 ).
    ENDIF.
    IF t197 = abap_true.
      DATA t211 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      t211 = NEW zcl_lnt_shape_d0b60cb0( i_kind = |markdown| i_value = |Macro Name| ).
      CREATE OBJECT t211->zlnt_view_ownkeys_b0e8086400eb.
      t211->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t216 ).
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t217 ).
      ENDIF.
      CREATE OBJECT t211->zlnt_json_ownkeys_70e5fd461788.
      t211->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t219 ).
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t221 ).
      ENDIF.
      result = t211.
      RETURN.
    ENDIF.
    DATA t224 TYPE REF TO zcl_lnt_abstract_token.
    t224 = t133->token.
    IF xsdbool( t224 IS BOUND AND t224 IS INSTANCE OF zcl_lnt_lx_comment ) = abap_true.
      DATA t227 TYPE string.
      t227 = |Comment|.
      DATA(t229) = VALUE abap_bool( ).
      DATA t230 TYPE string.
      DATA t231 TYPE REF TO zcl_lnt_abstract_token.
      DATA t232 TYPE REF TO zcl_lnt_lx_comment.
      t232 ?= t133->token.
      t231 = t232.
      t230 = t231->str.
      DATA(t238) = |"!|.
      DATA(t239) = strlen( t230 ).
      DATA t240 TYPE i.
      DATA(t241) = VALUE i( ).
      DATA(t242) = VALUE string( ).
      t240 = strlen( t238 ).
      IF t240 = 0.
        t229 = abap_true.
      ELSEIF t240 <= t239.
        t241 = 0.
        t242 = t230+t241(t240).
        IF t242 = t238.
          t229 = abap_true.
        ENDIF.
      ENDIF.
      IF t229 = abap_true.
        t227 = |ABAP Doc Comment|.
      ENDIF.
      DATA t246 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      t246 = NEW zcl_lnt_shape_d0b60cb0( i_kind = |markdown| i_value = t227 ).
      CREATE OBJECT t246->zlnt_view_ownkeys_b0e8086400eb.
      t246->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t251 ).
      DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t246->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t252 ).
      ENDIF.
      CREATE OBJECT t246->zlnt_json_ownkeys_70e5fd461788.
      t246->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t254 ).
      DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t256 ).
      ENDIF.
      result = t246.
      RETURN.
    ENDIF.




    DATA t258 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t260 TYPE REF TO zcl_lnt_icursor_data.
    t260 = t133.
    DATA(t262) = me->reg.
    DATA t263 TYPE REF TO zcl_lnt_abap_object.
    t263 ?= t16.
    t258 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t260 i_reg_f149 = t262 i_obj_1ed0 = t263 ).
    DATA(t266) = VALUE abap_bool( ).
    DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t268 TYPE REF TO zcl_lnt_lsp_lookup_result.
    t268 = t258.
    DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t268 IS INITIAL ) = abap_true.
    ELSE.
      t270 = t268->hover.
    ENDIF.
    t267 = t270.
    IF t267 IS BOUND.
      IF t267->has = abap_true.
        t266 = xsdbool( strlen( t267->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t266 = abap_true.
      DATA t279 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      DATA t282 TYPE string.
      t282 = t258->hover->value.
      t279 = NEW zcl_lnt_shape_d0b60cb0( i_kind = |markdown| i_value = t282 ).
      CREATE OBJECT t279->zlnt_view_ownkeys_b0e8086400eb.
      t279->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t287 ).
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t288 ).
      ENDIF.
      CREATE OBJECT t279->zlnt_json_ownkeys_70e5fd461788.
      t279->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t290 ).
      DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t292 ).
      ENDIF.
      result = t279.
      RETURN.
    ENDIF.
    DATA t295 TYPE REF TO zcl_lnt_abstract_token.
    t295 = t133->token.
    IF xsdbool( t295 IS BOUND AND t295 IS INSTANCE OF zcl_lnt_string_token ) = abap_true.
      DATA t300 TYPE REF TO zcl_lnt_shape_d0b60cb0.
      t300 = NEW zcl_lnt_shape_d0b60cb0( i_kind = |markdown| i_value = |String| ).
      CREATE OBJECT t300->zlnt_view_ownkeys_b0e8086400eb.
      t300->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t305 ).
      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t300->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t300->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `value` p1 = t306 ).
      ENDIF.
      CREATE OBJECT t300->zlnt_json_ownkeys_70e5fd461788.
      t300->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t300->zlnt_json_ownkeys_70e5fd461788->put( p0 = |kind| p1 = t308 ).
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t300->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t300->zlnt_json_ownkeys_70e5fd461788->put( p0 = |value| p1 = t310 ).
      ENDIF.
      result = t300.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1170_f750f8594593.
  ENDMETHOD.
ENDCLASS.
