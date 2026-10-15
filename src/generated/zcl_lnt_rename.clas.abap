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
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD prepare_rename.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_abap_file.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = me->reg.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    DATA(t7) = t1.
    t6 = t7->zlnt_view_read_sr_ecd019429cea( ).
    t5 = t6->zlnt_view_read_no_0041136eb871( ).
    t3 = zcl_lnt_lsp_utils=>get_abap_file( i_reg_f149 = t4 i_filename = t5 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_iprepare_result.
      CLEAR t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zif_lnt_object.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_object.
    CLEAR t17.
    DATA(t18) = me->reg.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abstract_file.
    DATA t21 TYPE REF TO zcl_lnt_abap_file.
    DATA(t22) = t2.
    t21 = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE string.
    DATA(t27) = t20.
    t26 = t27->base_name( ).
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
    t24 = t25.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t38) = t24.
    DATA(t39) = 1.
    t37 = t38->get( p0 = t39 ).
    t36 = t37.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t36.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ELSEIF t42->has = abap_false.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      t40 = t43.
    ELSE.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA(t46) = t36.
      t45 = t46->value.
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
    t35 = t40.
    t23 = t35.
    t19 = t23.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA(t51) = VALUE string( ).
      DATA t52 TYPE REF TO zcl_lnt_abstract_file.
      DATA t53 TYPE REF TO zcl_lnt_abap_file.
      DATA(t54) = t2.
      t53 = t54.
      t52 = t53.
      DATA(t55) = VALUE string( ).
      DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t58 TYPE string.
      DATA(t59) = t52.
      t58 = t59->base_name( ).
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
      DATA(t67) = t56.
      DATA(t68) = 0.
      DATA(t69) = VALUE string( ).
      DATA(t70) = VALUE string( ).
      DATA(t71) = t56.
      IF t71->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t71->load( ).
      CLEAR t70.
      READ TABLE t71->items INDEX 1 INTO t70.
      DATA t72 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t72.
      DATA(t73) = |%23|.
      DATA(t74) = |g|.
      CREATE OBJECT t72 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t73 flags = t74 checked = abap_true.
      DATA(t75) = |#|.
      DATA(t76) = strlen( t70 ).
      t69 = t72->replace( p0 = t70 p1 = t75 ).
      t67->put( p0 = t68 p1 = t69 ).
      DATA(t77) = t56.
      DATA(t78) = 0.
      DATA(t79) = VALUE string( ).
      DATA(t80) = VALUE string( ).
      DATA(t81) = t56.
      IF t81->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t81->load( ).
      CLEAR t80.
      READ TABLE t81->items INDEX 1 INTO t80.
      DATA t82 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t82.
      DATA(t83) = |%3e|.
      DATA(t84) = |g|.
      CREATE OBJECT t82 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t83 flags = t84 checked = abap_true.
      DATA(t85) = |>|.
      DATA(t86) = strlen( t80 ).
      t79 = t82->replace( p0 = t80 p1 = t85 ).
      t77->put( p0 = t78 p1 = t79 ).
      DATA(t87) = t56.
      DATA(t88) = 0.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE string( ).
      DATA(t91) = t56.
      IF t91->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t91->load( ).
      CLEAR t90.
      READ TABLE t91->items INDEX 1 INTO t90.
      DATA t92 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t92.
      DATA(t93) = |%3c|.
      DATA(t94) = |g|.
      CREATE OBJECT t92 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t93 flags = t94 checked = abap_true.
      DATA(t95) = |<|.
      DATA(t96) = strlen( t90 ).
      t89 = t92->replace( p0 = t90 p1 = t95 ).
      t87->put( p0 = t88 p1 = t89 ).
      DATA(t97) = t56.
      DATA(t98) = 0.
      DATA(t99) = VALUE string( ).
      DATA(t100) = VALUE string( ).
      DATA(t101) = VALUE string( ).
      DATA(t102) = t56.
      IF t102->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t102->load( ).
      CLEAR t101.
      READ TABLE t102->items INDEX 1 INTO t101.
      DATA(t103) = strlen( t101 ).
      t100 = t101.
      IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t100 TO UPPER CASE.
      ELSE.
        t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t104.
      DATA(t105) = |#|.
      DATA(t106) = |g|.
      CREATE OBJECT t104 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t105 flags = t106 checked = abap_true.
      DATA(t107) = |/|.
      DATA(t108) = strlen( t100 ).
      t99 = t104->replace( p0 = t100 p1 = t107 ).
      t97->put( p0 = t98 p1 = t99 ).
      DATA(t109) = t56.
      DATA(t110) = 0.
      DATA(t111) = VALUE string( ).
      DATA(t112) = VALUE string( ).
      DATA(t113) = t56.
      IF t113->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t113->load( ).
      CLEAR t112.
      READ TABLE t113->items INDEX 1 INTO t112.
      DATA(t114) = |(|.
      DATA(t115) = |/|.
      DATA(t116) = strlen( t112 ).
      t111 = t112.
      REPLACE ALL OCCURRENCES OF t114 IN t111 WITH t115.
      t109->put( p0 = t110 p1 = t111 ).
      DATA(t117) = t56.
      DATA(t118) = 0.
      DATA(t119) = VALUE string( ).
      DATA(t120) = VALUE string( ).
      DATA(t121) = t56.
      IF t121->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t121->load( ).
      CLEAR t120.
      READ TABLE t121->items INDEX 1 INTO t120.
      DATA(t122) = |)|.
      DATA(t123) = |/|.
      DATA(t124) = strlen( t120 ).
      t119 = t120.
      REPLACE ALL OCCURRENCES OF t122 IN t119 WITH t123.
      t117->put( p0 = t118 p1 = t119 ).
      DATA(t125) = VALUE string( ).
      DATA(t126) = t56.
      IF t126->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t126->load( ).
      CLEAR t125.
      READ TABLE t126->items INDEX 1 INTO t125.
      t55 = t125.
      t51 = t55.
      DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t127->has = abap_true.
      t127->value = t51.
      t49 = t127.
    ELSE.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      t49 = t128.
    ENDIF.
    t17 = t18->get_object( i_type_9913 = t19 i_name = t49 ).
    t16 = t17.
    DATA t129 TYPE abap_bool.
    DATA t130 TYPE abap_bool.
    DATA(t131) = t16.
    t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_abap_object ).
    t129 = xsdbool( t130 = abap_false ).
    IF t129 = abap_true.
      DATA t132 TYPE REF TO zcl_lnt_iprepare_result.
      CLEAR t132.
      result = t132.
      RETURN.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_icursor_data.
    DATA t134 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t135) = me->reg.
    DATA(t136) = t1.
    t134 = zcl_lnt_lsp_utils=>find_cursor( i_reg_f149 = t135 i_pos = t136 ).
    t133 = t134.
    DATA(t137) = VALUE abap_bool( ).
    DATA t138 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t139) = t133.
    t138 = t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    t140 = t141.
    DATA(t142) = VALUE abap_bool( ).
    DATA(t143) = t138.
    IF t143 IS INITIAL.
      t142 = abap_true.
    ENDIF.
    t137 = t142.
    IF t137 = abap_true.
      DATA t144 TYPE REF TO zcl_lnt_iprepare_result.
      CLEAR t144.
      result = t144.
      RETURN.
    ENDIF.
    DATA t145 TYPE REF TO zcl_lnt_range.
    DATA t146 TYPE REF TO zcl_lnt_range.
    DATA t147 TYPE REF TO zcl_lnt_abstract_token.
    DATA t148 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t149) = t133.
    t148 = t149.
    t147 = t148->token.
    t146 = zcl_lnt_lsp_utils=>token_to_range( i_token = t147 ).
    t145 = t146.
    DATA t150 TYPE string.
    DATA t151 TYPE string.
    DATA t152 TYPE REF TO zcl_lnt_abstract_token.
    DATA t153 TYPE REF TO zcl_lnt_abstract_token.
    DATA t154 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t155) = t133.
    t154 = t155.
    t153 = t154->token.
    t152 = t153.
    DATA t156 TYPE string.
    DATA(t157) = t152.
    t156 = t157->str.
    t151 = t156.
    t150 = t151.
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
      DATA(t165) = VALUE string( ).
      DATA t166 TYPE string.
      DATA(t167) = t150.
      t166 = t167.
      DATA(t168) = VALUE string( ).
      DATA(t169) = t166.
      DATA(t170) = 1.
      DATA t171 TYPE i.
      DATA(t172) = t166.
      DATA(t173) = strlen( t172 ).
      t171 = t173.
      DATA(t174) = strlen( t169 ).
      t170 = COND i( WHEN t170 < 0 THEN 0 WHEN t170 > t174 THEN t174 ELSE t170 ).
      t171 = COND i( WHEN t171 < 0 THEN 0 WHEN t171 > t174 THEN t174 ELSE t171 ).
      IF t170 > t171.
        t174 = t170.
        t170 = t171.
        t171 = t174.
      ENDIF.
      t174 = t171 - t170.
      t168 = t169+t170(t174).
      t165 = t168.
      t150 = t165.
      DATA t175 TYPE REF TO zcl_lnt_no_position.
      DATA(t176) = t145.
      t175 = t176->zlnt_view_read_no_afe0c94a5142( ).
      DATA t177 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t178 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t179 TYPE REF TO zcl_lnt_no_position.
      DATA(t180) = t145.
      t179 = t180->zlnt_view_read_no_afe0c94a5142( ).
      t178 = t179->zlnt_view_read_no_a9574d1ec283( ).
      DATA(t181) = CONV f( 1 ).
      DATA(t182) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t182->has = abap_true.
      t182->value = t181.
      t177 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t178 right = t182 op = `+` ).
      t175->zlnt_view_write_n_cdbf194355d4( p0 = t177 ).
    ENDIF.
    DATA t183 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t184 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA t185 TYPE REF TO zcl_lnt_icursor_data.
    DATA(t186) = t133.
    t185 = t186.
    DATA(t187) = me->reg.
    DATA t188 TYPE REF TO zcl_lnt_abap_object.
    DATA(t189) = t16.
    DATA t190 TYPE REF TO object.
    t190 = t189.
    t188 ?= t190.
    t184 = zcl_lnt_lsp_lookup=>lookup( i_cursor = t185 i_reg_f149 = t187 i_obj_1ed0 = t188 ).
    t183 = t184.
    DATA(t191) = VALUE abap_bool( ).
    DATA t192 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t192.
    DATA t193 TYPE REF TO zcl_lnt_lsp_lookup_result.
    DATA(t194) = t183.
    t193 = t194.
    DATA t195 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t195.
    DATA(t196) = VALUE abap_bool( ).
    DATA(t197) = t193.
    IF t197 IS INITIAL.
      t196 = abap_true.
    ENDIF.
    IF t196 = abap_true.
      DATA t198 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t198.
      t195 = t198.
    ELSE.
      DATA t199 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t200 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t201) = t193.
      t200 = t201.
      t199 = t200->definition_id.
      t195 = t199.
    ENDIF.
    t192 = t195.
    t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_typed_identifier ).
    IF t191 = abap_true.
      DATA t202 TYPE REF TO zcl_lnt_iprepare_result.
      CLEAR t202.
      DATA(t203) = abap_true.
      IF t203 = abap_true.
        DATA t204 TYPE REF TO zcl_lnt_iprepare_result.
        DATA t205 TYPE REF TO zcl_lnt_range.
        DATA(t206) = t145.
        t205 = t206.
        DATA t207 TYPE string.
        DATA(t208) = t150.
        t207 = t208.
        DATA t209 TYPE f.
        DATA(t210) = CONV f( 2 ).
        t209 = t210.
        DATA t211 TYPE REF TO zif_lnt_file.
        DATA t212 TYPE REF TO zcl_lnt_abap_file.
        DATA(t213) = t2.
        t212 = t213.
        t211 = t212.
        t204 = NEW zcl_lnt_iprepare_result( i_range = t205 i_placeholder = t207 i_type_9913 = t209 i_file = t211 ).
        CREATE OBJECT t204->zlnt_view_ownkeys_b0e8086400eb.
        t204->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t214.
        IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t214 ).
        ENDIF.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t215 ).
        ENDIF.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t216 ).
        ENDIF.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t217 ).
        ENDIF.
        CREATE OBJECT t204->zlnt_json_ownkeys_70e5fd461788.
        t204->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t218) = |range|.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
        ENDIF.
        DATA(t220) = |placeholder|.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
        ENDIF.
        DATA(t222) = |type|.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
        ENDIF.
        DATA(t224) = |file|.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
        ENDIF.
        t202 = t204.
      ELSE.
        DATA t226 TYPE REF TO zcl_lnt_iprepare_result.
        CLEAR t226.
        t202 = t226.
      ENDIF.
      result = t202.
      RETURN.
    ELSE.
      DATA(t227) = VALUE abap_bool( ).
      DATA t228 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t228.
      DATA t229 TYPE REF TO zcl_lnt_lsp_lookup_result.
      DATA(t230) = t183.
      t229 = t230.
      DATA t231 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t231.
      DATA(t232) = VALUE abap_bool( ).
      DATA(t233) = t229.
      IF t233 IS INITIAL.
        t232 = abap_true.
      ENDIF.
      IF t232 = abap_true.
        DATA t234 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t234.
        t231 = t234.
      ELSE.
        DATA t235 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t236 TYPE REF TO zcl_lnt_lsp_lookup_result.
        DATA(t237) = t229.
        t236 = t237.
        t235 = t236->definition_id.
        t231 = t235.
      ENDIF.
      t228 = t231.
      t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      IF t227 = abap_true.
        DATA t238 TYPE REF TO zcl_lnt_iprepare_result.
        CLEAR t238.
        DATA(t239) = abap_true.
        IF t239 = abap_true.
          DATA t240 TYPE REF TO zcl_lnt_iprepare_result.
          DATA t241 TYPE REF TO zcl_lnt_range.
          DATA(t242) = t145.
          t241 = t242.
          DATA t243 TYPE string.
          DATA(t244) = t150.
          t243 = t244.
          DATA t245 TYPE f.
          DATA(t246) = CONV f( 1 ).
          t245 = t246.
          DATA t247 TYPE REF TO zif_lnt_file.
          DATA t248 TYPE REF TO zcl_lnt_abap_file.
          DATA(t249) = t2.
          t248 = t249.
          t247 = t248.
          t240 = NEW zcl_lnt_iprepare_result( i_range = t241 i_placeholder = t243 i_type_9913 = t245 i_file = t247 ).
          CREATE OBJECT t240->zlnt_view_ownkeys_b0e8086400eb.
          t240->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t250 ).
          ENDIF.
          DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t251.
          IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t251 ).
          ENDIF.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t252 ).
          ENDIF.
          DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t253.
          IF t240->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t240->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t253 ).
          ENDIF.
          CREATE OBJECT t240->zlnt_json_ownkeys_70e5fd461788.
          t240->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t254) = |range|.
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t255.
          IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
          ENDIF.
          DATA(t256) = |placeholder|.
          DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t257.
          IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
          ENDIF.
          DATA(t258) = |type|.
          DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t259.
          IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
          ENDIF.
          DATA(t260) = |file|.
          DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t261.
          IF t240->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t240->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
          ENDIF.
          t238 = t240.
        ELSE.
          DATA t262 TYPE REF TO zcl_lnt_iprepare_result.
          CLEAR t262.
          t238 = t262.
        ENDIF.
        result = t238.
        RETURN.
      ELSE.
        DATA(t263) = VALUE abap_bool( ).
        DATA t264 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t264.
        DATA t265 TYPE REF TO zcl_lnt_lsp_lookup_result.
        DATA(t266) = t183.
        t265 = t266.
        DATA t267 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t267.
        DATA(t268) = VALUE abap_bool( ).
        DATA(t269) = t265.
        IF t269 IS INITIAL.
          t268 = abap_true.
        ENDIF.
        IF t268 = abap_true.
          DATA t270 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t270.
          t267 = t270.
        ELSE.
          DATA t271 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t272 TYPE REF TO zcl_lnt_lsp_lookup_result.
          DATA(t273) = t265.
          t272 = t273.
          t271 = t272->definition_id.
          t267 = t271.
        ENDIF.
        t264 = t267.
        t263 = xsdbool( t264 IS BOUND AND t264 IS INSTANCE OF zcl_lnt_interface_definition ).
        IF t263 = abap_true.
          DATA t274 TYPE REF TO zcl_lnt_iprepare_result.
          CLEAR t274.
          DATA(t275) = abap_true.
          IF t275 = abap_true.
            DATA t276 TYPE REF TO zcl_lnt_iprepare_result.
            DATA t277 TYPE REF TO zcl_lnt_range.
            DATA(t278) = t145.
            t277 = t278.
            DATA t279 TYPE string.
            DATA(t280) = t150.
            t279 = t280.
            DATA t281 TYPE f.
            DATA(t282) = CONV f( 3 ).
            t281 = t282.
            DATA t283 TYPE REF TO zif_lnt_file.
            DATA t284 TYPE REF TO zcl_lnt_abap_file.
            DATA(t285) = t2.
            t284 = t285.
            t283 = t284.
            t276 = NEW zcl_lnt_iprepare_result( i_range = t277 i_placeholder = t279 i_type_9913 = t281 i_file = t283 ).
            CREATE OBJECT t276->zlnt_view_ownkeys_b0e8086400eb.
            t276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t286 ).
            ENDIF.
            DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t287.
            IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t287 ).
            ENDIF.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t288 ).
            ENDIF.
            DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t289.
            IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t289 ).
            ENDIF.
            CREATE OBJECT t276->zlnt_json_ownkeys_70e5fd461788.
            t276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t290) = |range|.
            DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t291.
            IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
            ENDIF.
            DATA(t292) = |placeholder|.
            DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t293.
            IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
            ENDIF.
            DATA(t294) = |type|.
            DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t295.
            IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
            ENDIF.
            DATA(t296) = |file|.
            DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t297.
            IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
            ENDIF.
            t274 = t276.
          ELSE.
            DATA t298 TYPE REF TO zcl_lnt_iprepare_result.
            CLEAR t298.
            t274 = t298.
          ENDIF.
          result = t274.
          RETURN.
        ELSE.
          DATA(t299) = VALUE abap_bool( ).
          DATA t300 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t300.
          DATA t301 TYPE REF TO zcl_lnt_lsp_lookup_result.
          DATA(t302) = t183.
          t301 = t302.
          DATA t303 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t303.
          DATA(t304) = VALUE abap_bool( ).
          DATA(t305) = t301.
          IF t305 IS INITIAL.
            t304 = abap_true.
          ENDIF.
          IF t304 = abap_true.
            DATA t306 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t306.
            t303 = t306.
          ELSE.
            DATA t307 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t308 TYPE REF TO zcl_lnt_lsp_lookup_result.
            DATA(t309) = t301.
            t308 = t309.
            t307 = t308->definition_id.
            t303 = t307.
          ENDIF.
          t300 = t303.
          t299 = xsdbool( t300 IS BOUND AND t300 IS INSTANCE OF zcl_lnt_method_definition ).
          IF t299 = abap_true.
            DATA t310 TYPE REF TO zcl_lnt_iprepare_result.
            CLEAR t310.
            DATA(t311) = abap_true.
            IF t311 = abap_true.
              DATA t312 TYPE REF TO zcl_lnt_iprepare_result.
              DATA t313 TYPE REF TO zcl_lnt_range.
              DATA(t314) = t145.
              t313 = t314.
              DATA t315 TYPE string.
              DATA(t316) = t150.
              t315 = t316.
              DATA t317 TYPE f.
              DATA(t318) = CONV f( 4 ).
              t317 = t318.
              DATA t319 TYPE REF TO zif_lnt_file.
              DATA t320 TYPE REF TO zcl_lnt_abap_file.
              DATA(t321) = t2.
              t320 = t321.
              t319 = t320.
              t312 = NEW zcl_lnt_iprepare_result( i_range = t313 i_placeholder = t315 i_type_9913 = t317 i_file = t319 ).
              CREATE OBJECT t312->zlnt_view_ownkeys_b0e8086400eb.
              t312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t322.
              IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t322 ).
              ENDIF.
              DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t323.
              IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `placeholder` p1 = t323 ).
              ENDIF.
              DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t324.
              IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t324 ).
              ENDIF.
              DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t325.
              IF t312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t325 ).
              ENDIF.
              CREATE OBJECT t312->zlnt_json_ownkeys_70e5fd461788.
              t312->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t326) = |range|.
              DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t327.
              IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
              ENDIF.
              DATA(t328) = |placeholder|.
              DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t329.
              IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
              ENDIF.
              DATA(t330) = |type|.
              DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t331.
              IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
              ENDIF.
              DATA(t332) = |file|.
              DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t333.
              IF t312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
              ENDIF.
              t310 = t312.
            ELSE.
              DATA t334 TYPE REF TO zcl_lnt_iprepare_result.
              CLEAR t334.
              t310 = t334.
            ENDIF.
            result = t310.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t335 TYPE REF TO zcl_lnt_iprepare_result.
    CLEAR t335.
    result = t335.

  ENDMETHOD.

  METHOD rename.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO zcl_lnt_iprepare_result.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_iprepare_result.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA(t6) = t1.
    CLEAR t5.
    IF t6 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
      t8 = t6.
      TRY.
          t5 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t7 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t5 = t7->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t4.
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
          CLEAR t9.
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
        CLEAR t10.
        DATA t11 TYPE REF TO zcl_lnt_no_position.
        CLEAR t11.
        t4 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( view_source = t5 i_text_document = t10 i_position_a3fd = t11 ).
      ENDIF.
    ENDIF.
    t3 = me->prepare_rename( i_params_4c59 = t4 ).
    t2 = t3.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_iprepare_result.
    CLEAR t13.
    DATA(t14) = t2.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    IF t12 = abap_true.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA(t20) = VALUE f( ).
    DATA(t21) = VALUE f( ).
    DATA t22 TYPE REF TO zcl_lnt_iprepare_result.
    CLEAR t22.
    DATA(t23) = t2.
    t22 = t23.
    t21 = t22->type_cba0.
    t20 = t21.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    DATA(t26) = CONV f( 1 ).
    t24 = xsdbool( t25 = t26 ).
    IF t24 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_renamer.
      CLEAR t29.
      DATA(t30) = me->reg.
      t29 = NEW zcl_lnt_renamer( i_reg_f149 = t30 ).
      DATA(t31) = |CLAS|.
      DATA(t32) = VALUE string( ).
      DATA t33 TYPE REF TO zcl_lnt_iprepare_result.
      CLEAR t33.
      DATA(t34) = t2.
      t33 = t34.
      t32 = t33->placeholder.
      DATA(t35) = VALUE string( ).
      DATA(t36) = t1.
      t35 = t36->new_name.
      t28 = t29->build_edits( i_type_9913 = t31 i_old_name = t32 i_new_name = t35 ).
      t27 ?= t28.
      result = t27.
      RETURN.
    ELSE.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t20.
      DATA(t39) = CONV f( 3 ).
      t37 = xsdbool( t38 = t39 ).
      IF t37 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_shape_36bc2e57.
        CLEAR t40.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_renamer.
        CLEAR t42.
        DATA(t43) = me->reg.
        t42 = NEW zcl_lnt_renamer( i_reg_f149 = t43 ).
        DATA(t44) = |INTF|.
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_iprepare_result.
        CLEAR t46.
        DATA(t47) = t2.
        t46 = t47.
        t45 = t46->placeholder.
        DATA(t48) = VALUE string( ).
        DATA(t49) = t1.
        t48 = t49->new_name.
        t41 = t42->build_edits( i_type_9913 = t44 i_old_name = t45 i_new_name = t48 ).
        t40 ?= t41.
        result = t40.
        RETURN.
      ELSE.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = t20.
        DATA(t52) = CONV f( 2 ).
        t50 = xsdbool( t51 = t52 ).
        IF t50 = abap_true.
          DATA t53 TYPE REF TO zcl_lnt_shape_36bc2e57.
          CLEAR t53.
          DATA t54 TYPE REF TO object.
          CLEAR t54.
          DATA(t55) = t1.
          t54 = me->rename_variable( i_params_4c59 = t55 ).
          t53 ?= t54.
          result = t53.
          RETURN.
        ELSE.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = t20.
          DATA(t58) = CONV f( 4 ).
          t56 = xsdbool( t57 = t58 ).
          IF t56 = abap_true.
            DATA t59 TYPE REF TO zcl_lnt_shape_36bc2e57.
            CLEAR t59.
            DATA t60 TYPE REF TO object.
            CLEAR t60.
            DATA(t61) = t1.
            t60 = me->rename_method( i_params_4c59 = t61 ).
            t59 ?= t60.
            result = t59.
            RETURN.
          ELSE.
            DATA t62 TYPE REF TO object.
            CLEAR t62.
            result = t62.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD rename_variable.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t7.
      CREATE OBJECT t7.
      t5 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t10.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t12.
    t11 = t12.
    t3 = NEW zcl_lnt_shape_36bc2e57( i_changes = t9 i_document_changes = t4 i_change_annotations = t11 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t13 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t14) = |documentChanges|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    t2 = t3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_references.
    CLEAR t18.
    DATA(t19) = me->reg.
    t18 = NEW zcl_lnt_references( i_reg_f149 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = t1.
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      CLEAR t23.
      t24 = t22.
      TRY.
          t21 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t23 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t21 = t23->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t20.
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
          CLEAR t25.
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
        CLEAR t26.
        DATA t27 TYPE REF TO zcl_lnt_no_position.
        CLEAR t27.
        t20 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( view_source = t21 i_text_document = t26 i_position_a3fd = t27 ).
      ENDIF.
    ENDIF.
    t17 = t18->references( i_pos = t20 ).
    t16 = t17.
    DATA(t28) = t16.
    DATA t29 TYPE REF TO zcl_lnt_location.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t28->load( ).
      IF t31 >= lines( t28->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t28->items INDEX t31 + 1 INTO t30.
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
      DATA(t37) = VALUE string( ).
      DATA(t38) = t29.
      t37 = t38->uri.
      t36 = t37.
      DATA(t39) = VALUE f( ).
      DATA(t40) = CONV f( 1 ).
      t39 = t40.
      t35 = NEW zcl_lnt_vrsnd_txt_dcmnt_idntfr( i_uri = t36 i_version = t39 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t41 ).
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t42 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t43) = |uri|.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
      ENDIF.
      DATA(t45) = |version|.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
      ENDIF.
      t34 = t35.
      DATA t47 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      DATA(t52) = t34.
      CLEAR t51.
      IF t52 IS BOUND.
        DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t53.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        CLEAR t53.
        t54 = t52.
        TRY.
            t51 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS NOT BOUND.
          TRY.
              t53 ?= t52.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t53 IS BOUND.
            t51 = t53->source( ).
          ENDIF.
          IF t51 IS NOT BOUND.
            CREATE OBJECT t51.
            t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t51->oval = t52.
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
      t49 = t50.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t61.
      CREATE OBJECT t61.
      t60 = t61.
      DATA(t62) = t60.
      DATA t63 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t63.
      DATA t64 TYPE REF TO zcl_lnt_range.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_range.
      CLEAR t65.
      DATA(t66) = t29.
      t65 = t66->range.
      t64 = t65.
      DATA(t67) = VALUE string( ).
      DATA(t68) = VALUE string( ).
      DATA(t69) = t1.
      t68 = t69->new_name.
      t67 = t68.
      DATA t70 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_range.
      CLEAR t71.
      DATA(t72) = t64.
      t71 = t72.
      DATA(t73) = VALUE string( ).
      DATA(t74) = t67.
      t73 = t74.
      t70 = NEW zcl_lnt_text_edit( i_range = t71 i_new_text = t73 ).
      CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
      t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t75 ).
      ENDIF.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t76 ).
      ENDIF.
      CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
      t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t77) = |range|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      DATA(t79) = |newText|.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
      ENDIF.
      t63 = t70.
      t62->load( ).
      APPEND t63 TO t62->items.
      t62->save( ).
      DATA(t81) = t60.
      t59 = t81.
      t58 = t59.
      DATA t82 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t82.
      DATA t83 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t83.
      DATA(t84) = t49.
      t83 = t84.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t85.
      DATA(t86) = t58.
      t85 = t86.
      t82 = NEW zcl_lnt_text_document_edit( i_text_document = t83 i_edits = t85 ).
      CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
      t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t87 ).
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
      t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t89) = |textDocument|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      ENDIF.
      DATA(t91) = |edits|.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
      ENDIF.
      t48 = t82.
      t47 = t48.
      DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t95.
      DATA t96 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      t97 = t2.
      t96 ?= t97.
      t95 = t96->document_changes.
      t94 = t95.
      DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t98.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = t94.
      IF t100 IS INITIAL.
        t99 = abap_true.
      ENDIF.
      IF t99 = abap_true.
        DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t101.
        t98 = t101.
      ELSE.
        DATA(t102) = VALUE f( ).
        DATA(t103) = VALUE i( ).
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t104.
        DATA(t105) = t94.
        t104 = t105.
        DATA(t106) = t47.
        t104->load( ).
        APPEND t106 TO t104->items.
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
    CLEAR t108.
    DATA t109 TYPE REF TO object.
    CLEAR t109.
    t109 = t2.
    t108 ?= t109.
    result = t108.

  ENDMETHOD.

  METHOD rename_method.
    DATA(t1) = i_params_4c59.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_36bc2e57.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t7.
      CREATE OBJECT t7.
      t5 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    CLEAR t10.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    CLEAR t12.
    t11 = t12.
    t3 = NEW zcl_lnt_shape_36bc2e57( i_changes = t9 i_document_changes = t4 i_change_annotations = t11 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `documentChanges` p1 = t13 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t14) = |documentChanges|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    t2 = t3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_references.
    CLEAR t18.
    DATA(t19) = me->reg.
    t18 = NEW zcl_lnt_references( i_reg_f149 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_itxt_dcmnt_pstn_prms.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = t1.
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      CLEAR t23.
      t24 = t22.
      TRY.
          t21 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t23 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t21 = t23->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t20.
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
          CLEAR t25.
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
        CLEAR t26.
        DATA t27 TYPE REF TO zcl_lnt_no_position.
        CLEAR t27.
        t20 = NEW zcl_lnt_itxt_dcmnt_pstn_prms( view_source = t21 i_text_document = t26 i_position_a3fd = t27 ).
      ENDIF.
    ENDIF.
    t17 = t18->references( i_pos = t20 ).
    t16 = t17.
    DATA(t28) = t16.
    DATA t29 TYPE REF TO zcl_lnt_location.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t28->load( ).
      IF t31 >= lines( t28->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t28->items INDEX t31 + 1 INTO t30.
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
      DATA(t37) = VALUE string( ).
      DATA(t38) = t29.
      t37 = t38->uri.
      t36 = t37.
      DATA(t39) = VALUE f( ).
      DATA(t40) = CONV f( 1 ).
      t39 = t40.
      t35 = NEW zcl_lnt_vrsnd_txt_dcmnt_idntfr( i_uri = t36 i_version = t39 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t41 ).
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t42 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t43) = |uri|.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
      ENDIF.
      DATA(t45) = |version|.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
      ENDIF.
      t34 = t35.
      DATA t47 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      DATA(t52) = t34.
      CLEAR t51.
      IF t52 IS BOUND.
        DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t53.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        CLEAR t53.
        t54 = t52.
        TRY.
            t51 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS NOT BOUND.
          TRY.
              t53 ?= t52.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t53 IS BOUND.
            t51 = t53->source( ).
          ENDIF.
          IF t51 IS NOT BOUND.
            CREATE OBJECT t51.
            t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t51->oval = t52.
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
      t49 = t50.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t61.
      CREATE OBJECT t61.
      t60 = t61.
      DATA(t62) = t60.
      DATA t63 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t63.
      DATA t64 TYPE REF TO zcl_lnt_range.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_range.
      CLEAR t65.
      DATA(t66) = t29.
      t65 = t66->range.
      t64 = t65.
      DATA(t67) = VALUE string( ).
      DATA(t68) = VALUE string( ).
      DATA(t69) = t1.
      t68 = t69->new_name.
      t67 = t68.
      DATA t70 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t70.
      DATA t71 TYPE REF TO zcl_lnt_range.
      CLEAR t71.
      DATA(t72) = t64.
      t71 = t72.
      DATA(t73) = VALUE string( ).
      DATA(t74) = t67.
      t73 = t74.
      t70 = NEW zcl_lnt_text_edit( i_range = t71 i_new_text = t73 ).
      CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
      t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t75 ).
      ENDIF.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t76 ).
      ENDIF.
      CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
      t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t77) = |range|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      DATA(t79) = |newText|.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
      ENDIF.
      t63 = t70.
      t62->load( ).
      APPEND t63 TO t62->items.
      t62->save( ).
      DATA(t81) = t60.
      t59 = t81.
      t58 = t59.
      DATA t82 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t82.
      DATA t83 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t83.
      DATA(t84) = t49.
      t83 = t84.
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t85.
      DATA(t86) = t58.
      t85 = t86.
      t82 = NEW zcl_lnt_text_document_edit( i_text_document = t83 i_edits = t85 ).
      CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
      t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t87 ).
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
      t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t89) = |textDocument|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      ENDIF.
      DATA(t91) = |edits|.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
      ENDIF.
      t48 = t82.
      t47 = t48.
      DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t95.
      DATA t96 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      t97 = t2.
      t96 ?= t97.
      t95 = t96->document_changes.
      t94 = t95.
      DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t98.
      DATA(t99) = VALUE abap_bool( ).
      DATA(t100) = t94.
      IF t100 IS INITIAL.
        t99 = abap_true.
      ENDIF.
      IF t99 = abap_true.
        DATA t101 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t101.
        t98 = t101.
      ELSE.
        DATA(t102) = VALUE f( ).
        DATA(t103) = VALUE i( ).
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t104.
        DATA(t105) = t94.
        t104 = t105.
        DATA(t106) = t47.
        t104->load( ).
        APPEND t106 TO t104->items.
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
    CLEAR t108.
    DATA t109 TYPE REF TO zcl_lnt_location.
    CLEAR t109.
    DATA t110 TYPE REF TO zcl_lnt_definition.
    CLEAR t110.
    DATA(t111) = me->reg.
    t110 = NEW zcl_lnt_definition( i_reg_f149 = t111 ).
    DATA t112 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
    CLEAR t112.
    DATA(t113) = t1.
    t112 = t113->text_document.
    DATA t114 TYPE REF TO zcl_lnt_no_position.
    CLEAR t114.
    DATA(t115) = t1.
    t114 = t115->position_7b94.
    t109 = t110->find_8f95( i_text_document = t112 i_position_a3fd = t114 ).
    t108 = t109.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = t108.
    t116 = xsdbool( t117 IS BOUND ).
    IF t116 = abap_true.
      DATA t118 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      CLEAR t118.
      DATA t119 TYPE REF TO zcl_lnt_vrsnd_txt_dcmnt_idntfr.
      CLEAR t119.
      DATA(t120) = VALUE string( ).
      DATA(t121) = VALUE string( ).
      DATA t122 TYPE REF TO zcl_lnt_txt_dcmnt_idntfr.
      CLEAR t122.
      DATA(t123) = t1.
      t122 = t123->text_document.
      t121 = t122->zlnt_view_read_no_0041136eb871( ).
      t120 = t121.
      DATA(t124) = VALUE f( ).
      DATA(t125) = CONV f( 1 ).
      t124 = t125.
      t119 = NEW zcl_lnt_vrsnd_txt_dcmnt_idntfr( i_uri = t120 i_version = t124 ).
      CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
      t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `uri` p1 = t126 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t127 ).
      ENDIF.
      CREATE OBJECT t119->zlnt_json_ownkeys_70e5fd461788.
      t119->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t128) = |uri|.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
      ENDIF.
      DATA(t130) = |version|.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
      ENDIF.
      t118 = t119.
      DATA t132 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t132.
      DATA t133 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t133.
      DATA t134 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t134.
      DATA t135 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t135.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      DATA(t137) = t118.
      CLEAR t136.
      IF t137 IS BOUND.
        DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t138.
        DATA t139 TYPE REF TO object.
        CLEAR t139.
        CLEAR t138.
        t139 = t137.
        TRY.
            t136 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS NOT BOUND.
          TRY.
              t138 ?= t137.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t138 IS BOUND.
            t136 = t138->source( ).
          ENDIF.
          IF t136 IS NOT BOUND.
            CREATE OBJECT t136.
            t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t136->oval = t137.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t135.
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
            CLEAR t140.
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
          DATA(t141) = VALUE string( ).
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          t135 = NEW zcl_lnt_opt_vrsn_txt_dcmn_idnt( view_source = t136 i_uri = t141 i_version = t142 ).
        ENDIF.
      ENDIF.
      t134 = t135.
      DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t144.
      DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t145.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t146.
      CREATE OBJECT t146.
      t145 = t146.
      DATA(t147) = t145.
      DATA t148 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t148.
      DATA t149 TYPE REF TO zcl_lnt_range.
      CLEAR t149.
      DATA t150 TYPE REF TO zcl_lnt_range.
      CLEAR t150.
      DATA t151 TYPE REF TO zcl_lnt_location.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_location.
      CLEAR t152.
      DATA(t153) = t108.
      t152 = t153.
      t151 = t152.
      DATA t154 TYPE REF TO zcl_lnt_range.
      CLEAR t154.
      DATA t155 TYPE REF TO zcl_lnt_range.
      CLEAR t155.
      DATA(t156) = VALUE abap_bool( ).
      DATA(t157) = t151.
      IF t157 IS INITIAL.
        t156 = abap_true.
      ENDIF.
      IF t156 = abap_true.
        DATA t158 TYPE REF TO zcl_lnt_range.
        CLEAR t158.
        t155 = t158.
      ELSE.
        DATA t159 TYPE REF TO zcl_lnt_range.
        CLEAR t159.
        DATA(t160) = t151.
        t159 = t160->range.
        t155 = t159.
      ENDIF.
      t154 = t155.
      t150 = t154.
      t149 = t150.
      DATA(t161) = VALUE string( ).
      DATA(t162) = VALUE string( ).
      DATA(t163) = t1.
      t162 = t163->new_name.
      t161 = t162.
      DATA t164 TYPE REF TO zcl_lnt_text_edit.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_range.
      CLEAR t165.
      DATA(t166) = t149.
      t165 = t166.
      DATA(t167) = VALUE string( ).
      DATA(t168) = t161.
      t167 = t168.
      t164 = NEW zcl_lnt_text_edit( i_range = t165 i_new_text = t167 ).
      CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
      t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t169 ).
      ENDIF.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t170 ).
      ENDIF.
      CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
      t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t171) = |range|.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t172.
      IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
      ENDIF.
      DATA(t173) = |newText|.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
      ENDIF.
      t148 = t164.
      t147->load( ).
      APPEND t148 TO t147->items.
      t147->save( ).
      DATA(t175) = t145.
      t144 = t175.
      t143 = t144.
      DATA t176 TYPE REF TO zcl_lnt_text_document_edit.
      CLEAR t176.
      DATA t177 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
      CLEAR t177.
      DATA(t178) = t134.
      t177 = t178.
      DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t179.
      DATA(t180) = t143.
      t179 = t180.
      t176 = NEW zcl_lnt_text_document_edit( i_text_document = t177 i_edits = t179 ).
      CREATE OBJECT t176->zlnt_view_ownkeys_b0e8086400eb.
      t176->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textDocument` p1 = t181 ).
      ENDIF.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edits` p1 = t182 ).
      ENDIF.
      CREATE OBJECT t176->zlnt_json_ownkeys_70e5fd461788.
      t176->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t183) = |textDocument|.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
      ENDIF.
      DATA(t185) = |edits|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      ENDIF.
      t133 = t176.
      t132 = t133.
      DATA t187 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t187.
      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t188.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t189.
      DATA t190 TYPE REF TO zcl_lnt_shape_36bc2e57.
      CLEAR t190.
      DATA t191 TYPE REF TO object.
      CLEAR t191.
      t191 = t2.
      t190 ?= t191.
      t189 = t190->document_changes.
      t188 = t189.
      DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t192.
      DATA(t193) = VALUE abap_bool( ).
      DATA(t194) = t188.
      IF t194 IS INITIAL.
        t193 = abap_true.
      ENDIF.
      IF t193 = abap_true.
        DATA t195 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t195.
        t192 = t195.
      ELSE.
        DATA(t196) = VALUE f( ).
        DATA(t197) = VALUE i( ).
        DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t198.
        DATA(t199) = t188.
        t198 = t199.
        DATA(t200) = t132.
        t198->load( ).
        APPEND t200 TO t198->items.
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
    CLEAR t202.
    DATA t203 TYPE REF TO object.
    CLEAR t203.
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
