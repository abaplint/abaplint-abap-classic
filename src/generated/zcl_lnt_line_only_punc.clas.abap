* TS: src/rules/line_only_punc.ts:17:1 LineOnlyPunc
CLASS zcl_lnt_line_only_punc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_ln_on_pn_ts_ln_on_pn RETURNING VALUE(result) TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS s_c_i_s_r_ln_on_pn_ts_ln_on_pn IMPORTING i_conf TYPE REF TO zcl_lnt_line_only_punc_conf.
    METHODS r_p_i_s_r_ln_on_pn_ts_ln_on_pn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_877e342751bc TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_line_only_punc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_line_only_punc_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#close-brackets-at-line-end\nhttps://docs.abapopenche|.
    t11 = t11 && |cks.org/checks/16/|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |zcl_class=>method(\n).|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |zcl_class=>method( ).|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |line_only_punc| i_title = |Line containing only punctuation| i_short_description = |Detects lines containing only punctuation.| i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |A line should not contain only "." or ")."|.

  ENDMETHOD.

  METHOD g_c_i_s_r_ln_on_pn_ts_ln_on_pn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ln_on_pn_ts_ln_on_pn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ln_on_pn_ts_ln_on_pn.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ) = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t12 TYPE REF TO zcl_lnt_class.
      DATA t13 TYPE REF TO zcl_lnt_class.
      DATA t15 TYPE REF TO object.
      t15 = t2.
      t13 ?= t15.
      t12 = t13.
      DATA t17 TYPE REF TO zif_lnt_abap_file_information.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      t19 = t12->get_main_abap_file( ).
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t19 IS INITIAL ) = abap_true.
      ELSE.
        t22 = t19->info.
      ENDIF.
      t17 = t22.
      DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t17 IS INITIAL ) = abap_true.
      ELSE.
        DATA t37 TYPE REF TO zif_lnt_abap_file_information.
        t37 = t17.
        DATA t39 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_abstract_object.
        t40 = t12.
        t39 = t40->name.
        t32 = t37->get_class_definition_by_name( i_name = t39 ).
      ENDIF.
      t10 = t32.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t10 IS INITIAL ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ELSE.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t54 = me->conf->zlnt_view_read_sr_d3b81107b8a5( ).
        IF t54 IS BOUND.
          IF t54->has = abap_true.
            t53 = xsdbool( t54->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t52 = t53.
        IF t53 = abap_true.
          DATA t58 TYPE REF TO zcl_lnt_info_class_definition.
          t58 = t10.
          DATA t63 TYPE REF TO zcl_lnt_class.
          DATA t65 TYPE REF TO object.
          t65 = t2.
          t63 ?= t65.
          t52 = t6->is_exception( i_def = t58 i_obj_ac26 = t63 ).
        ENDIF.
        IF t52 = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t67 = t1->file->get_raw_rows( ).
    DATA t74 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t75 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t77) = `^\)?\. *(\"[^`.
    t77 = t77 && |\n\r|.
    DATA t78 TYPE c LENGTH 1.
    t78 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t77 t78 INTO t77 RESPECTING BLANKS.
    DATA t79 TYPE c LENGTH 1.
    t79 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t77 t79 INTO t77 RESPECTING BLANKS.
    t77 = t77 && |]*)?$|.
    CREATE OBJECT t75 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t77 flags = ||.
    t75->source = `^\)?\. *(\".*)?$`.
    t74 = t75.
    DATA t81 TYPE i.
    t81 = 0.
    DO.
      t67->load( ).
      IF xsdbool( t81 < lines( t67->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t89) = VALUE string( ).
      DATA(t90) = VALUE string( ).
      DATA(t92) = t81.
      t92 = t92 + 1.
      IF t67->has( t92 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t67->load( ).
      READ TABLE t67->items INDEX t92 INTO t90.
      DATA(t93) = strlen( t90 ).
      DATA t94 TYPE i.
      DATA t95 TYPE i.
      t94 = 0.
      t95 = t93.
      DATA(t96) = VALUE i( ).
      DATA(t97) = VALUE i( ).
      DATA(t98) = VALUE string( ).
      WHILE t94 < t95.
        t97 = t94.
        t98 = t90+t97(1).
        DATA t99 TYPE c LENGTH 1.
        CLEAR t99.
        DATA(t100) = VALUE xstring( ).
        DATA t101 TYPE x LENGTH 1.
        CLEAR t101.
        DATA t102 TYPE x LENGTH 1.
        CLEAR t102.
        DATA(t103) = VALUE i( ).
        t99 = t98.
        t96 = cl_abap_conv_out_ce=>uccpi( t99 ).
        IF t96 >= 255.
          IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
            zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t98 IMPORTING buffer = t100 ).
          t101 = t100(1).
          t102 = t100+1(1).
          t96 = t101.
          t103 = t102.
          t96 = t96 + t103 * 256.
        ENDIF.
        IF t96 = 9 OR t96 = 10 OR t96 = 11 OR t96 = 12 OR t96 = 13 OR t96 = 32 OR t96 = 160 OR t96 = 5760 OR t96 = 8232 OR t96 = 8233 OR t96 = 8239 OR t96 = 8287 OR t96 = 12288 OR t96 = 65279 OR t96 >= 8192 AND t96 <= 8202.
          t94 = t94 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t104) = VALUE i( ).
      DATA(t105) = VALUE i( ).
      DATA(t106) = VALUE string( ).
      WHILE t95 > t94.
        t105 = t95 - 1.
        t106 = t90+t105(1).
        DATA t107 TYPE c LENGTH 1.
        CLEAR t107.
        DATA(t108) = VALUE xstring( ).
        DATA t109 TYPE x LENGTH 1.
        CLEAR t109.
        DATA t110 TYPE x LENGTH 1.
        CLEAR t110.
        DATA(t111) = VALUE i( ).
        t107 = t106.
        t104 = cl_abap_conv_out_ce=>uccpi( t107 ).
        IF t104 >= 255.
          IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
            zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t106 IMPORTING buffer = t108 ).
          t109 = t108(1).
          t110 = t108+1(1).
          t104 = t109.
          t111 = t110.
          t104 = t104 + t111 * 256.
        ENDIF.
        IF t104 = 9 OR t104 = 10 OR t104 = 11 OR t104 = 12 OR t104 = 13 OR t104 = 32 OR t104 = 160 OR t104 = 5760 OR t104 = 8232 OR t104 = 8233 OR t104 = 8239 OR t104 = 8287 OR t104 = 12288 OR t104 = 65279 OR t104 >= 8192 AND t104 <= 8202.
          t95 = t95 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t95 > t94.
        t93 = t95 - t94.
        t89 = t90+t94(t93).
      ELSE.
        CLEAR t89.
      ENDIF.
      IF t74->test( p0 = t89 ) = abap_true.
        DATA(t113) = VALUE i( ).
        DATA(t115) = VALUE i( ).
        DATA(t116) = VALUE string( ).
        DATA(t118) = t81.
        t118 = t118 + 1.
        IF t67->has( t118 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t67->load( ).
        READ TABLE t67->items INDEX t118 INTO t116.
        DATA(t119) = |)|.
        DATA(t120) = strlen( t116 ).
        IF t119 IS INITIAL.
          t115 = 0.
        ELSE.
          FIND t119 IN t116 MATCH OFFSET t115.
          IF sy-subrc <> 0.
            t115 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t115 >= 0 ) = abap_true.
          DATA(t123) = VALUE i( ).
          DATA(t124) = VALUE string( ).
          DATA(t126) = t81.
          t126 = t126 + 1.
          IF t67->has( t126 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t67->load( ).
          READ TABLE t67->items INDEX t126 INTO t124.
          DATA(t127) = |)|.
          DATA(t128) = strlen( t124 ).
          IF t127 IS INITIAL.
            t123 = 0.
          ELSE.
            FIND t127 IN t124 MATCH OFFSET t123.
            IF sy-subrc <> 0.
              t123 = -1.
            ENDIF.
          ENDIF.
          DATA(t129) = 1.
          t113 = t123 + t129.
        ELSE.
          DATA(t131) = VALUE i( ).
          DATA(t132) = VALUE string( ).
          DATA(t134) = t81.
          t134 = t134 + 1.
          IF t67->has( t134 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t67->load( ).
          READ TABLE t67->items INDEX t134 INTO t132.
          DATA(t135) = |.|.
          DATA(t136) = strlen( t132 ).
          IF t135 IS INITIAL.
            t131 = 0.
          ELSE.
            FIND t135 IN t132 MATCH OFFSET t131.
            IF sy-subrc <> 0.
              t131 = -1.
            ENDIF.
          ENDIF.
          DATA(t137) = 1.
          t113 = t131 + t137.
        ENDIF.
        DATA t139 TYPE REF TO zcl_lnt_position.
        DATA t140 TYPE f.
        DATA t141 TYPE i.
        DATA(t143) = 1.
        t141 = t81 + t143.
        t140 = t141.
        DATA t144 TYPE f.
        t144 = t113.
        DATA(t146) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t146->has = abap_true.
        t146->value = t144.
        t139 = NEW zcl_lnt_position( i_row = t140 i_col = t146 ).
        DATA(t147) = VALUE string( ).
        DATA(t148) = VALUE string( ).
        DATA(t149) = VALUE string( ).
        DATA(t151) = t81.
        t151 = t151 + 1.
        IF t67->has( t151 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t67->load( ).
        READ TABLE t67->items INDEX t151 INTO t149.
        DATA(t152) = strlen( t149 ).
        DATA t153 TYPE i.
        DATA t154 TYPE i.
        t153 = 0.
        t154 = t152.
        DATA(t155) = VALUE i( ).
        DATA(t156) = VALUE i( ).
        DATA(t157) = VALUE string( ).
        WHILE t153 < t154.
          t156 = t153.
          t157 = t149+t156(1).
          DATA t158 TYPE c LENGTH 1.
          CLEAR t158.
          DATA(t159) = VALUE xstring( ).
          DATA t160 TYPE x LENGTH 1.
          CLEAR t160.
          DATA t161 TYPE x LENGTH 1.
          CLEAR t161.
          DATA(t162) = VALUE i( ).
          t158 = t157.
          t155 = cl_abap_conv_out_ce=>uccpi( t158 ).
          IF t155 >= 255.
            IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
              zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t157 IMPORTING buffer = t159 ).
            t160 = t159(1).
            t161 = t159+1(1).
            t155 = t160.
            t162 = t161.
            t155 = t155 + t162 * 256.
          ENDIF.
          IF t155 = 9 OR t155 = 10 OR t155 = 11 OR t155 = 12 OR t155 = 13 OR t155 = 32 OR t155 = 160 OR t155 = 5760 OR t155 = 8232 OR t155 = 8233 OR t155 = 8239 OR t155 = 8287 OR t155 = 12288 OR t155 = 65279 OR t155 >= 8192 AND t155 <= 8202.
            t153 = t153 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t163) = VALUE i( ).
        DATA(t164) = VALUE i( ).
        DATA(t165) = VALUE string( ).
        WHILE t154 > t153.
          t164 = t154 - 1.
          t165 = t149+t164(1).
          DATA t166 TYPE c LENGTH 1.
          CLEAR t166.
          DATA(t167) = VALUE xstring( ).
          DATA t168 TYPE x LENGTH 1.
          CLEAR t168.
          DATA t169 TYPE x LENGTH 1.
          CLEAR t169.
          DATA(t170) = VALUE i( ).
          t166 = t165.
          t163 = cl_abap_conv_out_ce=>uccpi( t166 ).
          IF t163 >= 255.
            IF zlnt_builtin_code_877e342751bc IS NOT BOUND.
              zlnt_builtin_code_877e342751bc = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_877e342751bc->convert( EXPORTING data = t165 IMPORTING buffer = t167 ).
            t168 = t167(1).
            t169 = t167+1(1).
            t163 = t168.
            t170 = t169.
            t163 = t163 + t170 * 256.
          ENDIF.
          IF t163 = 9 OR t163 = 10 OR t163 = 11 OR t163 = 12 OR t163 = 13 OR t163 = 32 OR t163 = 160 OR t163 = 5760 OR t163 = 8232 OR t163 = 8233 OR t163 = 8239 OR t163 = 8287 OR t163 = 12288 OR t163 = 65279 OR t163 >= 8192 AND t163 <= 8202.
            t154 = t154 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t154 > t153.
          t152 = t154 - t153.
          t148 = t149+t153(t152).
        ELSE.
          CLEAR t148.
        ENDIF.
        t147 = t148.
        DATA(t171) = VALUE abap_bool( ).
        DATA t172 TYPE abap_bool.
        DATA t173 TYPE abap_bool.
        t173 = xsdbool( strlen( t147 ) > 1 ).
        t172 = t173.
        IF t173 = abap_true.
          DATA(t179) = VALUE abap_bool( ).
          DATA(t180) = VALUE string( ).
          DATA t182 TYPE i.
          DATA(t184) = 1.
          t182 = t81 - t184.
          t182 = t182 + 1.
          IF t67->has( t182 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t67->load( ).
          READ TABLE t67->items INDEX t182 INTO t180.
          DATA(t185) = | |.
          DATA(t186) = strlen( t180 ).
          DATA t187 TYPE i.
          DATA(t188) = VALUE i( ).
          DATA(t189) = VALUE string( ).
          t187 = strlen( t185 ).
          IF t187 = 0.
            t179 = abap_true.
          ELSEIF t187 <= t186.
            t188 = 0.
            t188 = t186 - t187.
            t189 = t180+t188(t187).
            IF t189 = t185.
              t179 = abap_true.
            ENDIF.
          ENDIF.
          t172 = xsdbool( t179 = abap_false ).
        ENDIF.
        t171 = t172.
        IF t172 = abap_true.
          DATA(t191) = VALUE abap_bool( ).
          DATA(t192) = VALUE string( ).
          DATA t194 TYPE i.
          DATA(t196) = 1.
          t194 = t81 - t196.
          t194 = t194 + 1.
          IF t67->has( t194 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t67->load( ).
          READ TABLE t67->items INDEX t194 INTO t192.
          DATA(t197) = | \r|.
          DATA(t198) = strlen( t192 ).
          DATA t199 TYPE i.
          DATA(t200) = VALUE i( ).
          DATA(t201) = VALUE string( ).
          t199 = strlen( t197 ).
          IF t199 = 0.
            t191 = abap_true.
          ELSEIF t199 <= t198.
            t200 = 0.
            t200 = t198 - t199.
            t201 = t192+t200(t199).
            IF t201 = t197.
              t191 = abap_true.
            ENDIF.
          ENDIF.
          t171 = xsdbool( t191 = abap_false ).
        ENDIF.
        IF t171 = abap_true.
          DATA(t203) = | |.
          DATA(t205) = strlen( t203 ).
          t147 = |{ t203 }{ t147 }|.
        ENDIF.
        DATA t206 TYPE i.
        t206 = 0.
        DATA(t208) = VALUE abap_bool( ).
        DATA t209 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t209.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t213 TYPE i.
        DATA(t215) = 1.
        t213 = t81 - t215.
        t210 = t67->get( p0 = t213 ).
        DATA t216 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t216.
        DATA(t217) = VALUE abap_bool( ).
        IF t210 IS INITIAL.
          t217 = abap_true.
        ELSEIF t210->has = abap_false.
          t217 = abap_true.
        ENDIF.
        IF t217 = abap_true.
          CLEAR t216.
        ELSE.
          DATA(t220) = VALUE abap_bool( ).
          DATA t221 TYPE string.
          t221 = t210->value.
          DATA(t223) = |\r|.
          DATA(t224) = strlen( t221 ).
          DATA t225 TYPE i.
          DATA(t226) = VALUE i( ).
          DATA(t227) = VALUE string( ).
          t225 = strlen( t223 ).
          IF t225 = 0.
            t220 = abap_true.
          ELSEIF t225 <= t224.
            t226 = 0.
            t226 = t224 - t225.
            t227 = t221+t226(t225).
            IF t227 = t223.
              t220 = abap_true.
            ENDIF.
          ENDIF.
          DATA(t228) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t228->has = abap_true.
          t228->value = t220.
          t216 = t228.
        ENDIF.
        t209 = t216.
        IF t209 IS BOUND.
          IF t209->has = abap_true.
            t208 = xsdbool( t209->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t208 = abap_true.
          t206 = -1.
        ENDIF.
        DATA t231 TYPE REF TO zcl_lnt_position.
        CLEAR t231.
        DATA t232 TYPE f.
        t232 = t81.
        DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t236.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t241 TYPE i.
        DATA(t243) = 1.
        t241 = t81 - t243.
        t238 = t67->get( p0 = t241 ).
        DATA t244 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t244.
        DATA(t245) = VALUE abap_bool( ).
        IF t238 IS INITIAL.
          t245 = abap_true.
        ELSEIF t238->has = abap_false.
          t245 = abap_true.
        ENDIF.
        IF t245 = abap_true.
          CLEAR t244.
        ELSE.
          DATA t248 TYPE f.
          t248 = strlen( t238->value ).
          DATA(t253) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t253->has = abap_true.
          t253->value = t248.
          t244 = t253.
        ENDIF.
        t236 = t244.
        DATA t257 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t257.
        DATA(t258) = VALUE abap_bool( ).
        IF t236 IS INITIAL.
          t258 = abap_true.
        ELSEIF t236->has = abap_false.
          t258 = abap_true.
        ENDIF.
        IF t258 = abap_true.
          t257 = zlnt_runtime_stri_248d3505915c=>float_optional( |NaN| ).
        ELSE.
          DATA(t262) = VALUE f( ).
          IF t236->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t262 = t236->value.
          DATA(t264) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t264->has = abap_true.
          t264->value = t262.
          t257 = t264.
        ENDIF.
        DATA t265 TYPE f.
        t265 = 1.
        DATA(t267) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t267->has = abap_true.
        t267->value = t265.
        t235 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t257 right = t267 op = `+` ).
        DATA t268 TYPE f.
        t268 = t206.
        DATA(t270) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t270->has = abap_true.
        t270->value = t268.
        t231 = NEW zcl_lnt_position( i_row = t232 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t235 right = t270 op = `+` ) ).
        DATA t272 TYPE REF TO zcl_lnt_position.
        CLEAR t272.
        DATA t273 TYPE f.
        DATA t274 TYPE i.
        DATA(t276) = 1.
        t274 = t81 + t276.
        t273 = t274.
        DATA(t277) = VALUE f( ).
        DATA(t278) = VALUE int8( ).
        DATA(t279) = VALUE int8( ).
        DATA(t281) = VALUE string( ).
        DATA(t283) = t81.
        t283 = t283 + 1.
        IF t67->has( t283 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t67->load( ).
        READ TABLE t67->items INDEX t283 INTO t281.
        t279 = strlen( t281 ).
        DATA(t285) = CONV int8( 1 ).
        t278 = t279 + t285.
        t277 = t278.
        DATA(t286) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t286->has = abap_true.
        t286->value = t277.
        t272 = NEW zcl_lnt_position( i_row = t273 i_col = t286 ).
        DATA t287 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t287.
        t287 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t231 i_end = t272 i_text = t147 ).
        DATA(t296) = VALUE abap_bool( ).
        DATA(t297) = VALUE abap_bool( ).
        DATA(t298) = VALUE abap_bool( ).
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t302 TYPE i.
        DATA(t304) = 1.
        t302 = t81 - t304.
        t299 = t67->get( p0 = t302 ).
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t305.
        DATA(t307) = VALUE abap_bool( ).
        IF t299 IS INITIAL.
          t307 = abap_true.
        ELSEIF t299->has = abap_false.
          t307 = abap_true.
        ENDIF.
        t298 = t307.
        t297 = t298.
        IF t298 = abap_false.
          DATA(t310) = VALUE i( ).
          DATA(t311) = VALUE string( ).
          DATA t313 TYPE i.
          DATA(t315) = 1.
          t313 = t81 - t315.
          t313 = t313 + 1.
          IF t67->has( t313 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t67->load( ).
          READ TABLE t67->items INDEX t313 INTO t311.
          DATA(t316) = |*|.
          DATA(t317) = strlen( t311 ).
          IF t316 IS INITIAL.
            t310 = 0.
          ELSE.
            FIND t316 IN t311 MATCH OFFSET t310.
            IF sy-subrc <> 0.
              t310 = -1.
            ENDIF.
          ENDIF.
          t297 = xsdbool( t310 = 0 ).
        ENDIF.
        t296 = t297.
        IF t297 = abap_false.
          DATA(t320) = VALUE i( ).
          DATA(t321) = VALUE string( ).
          DATA t323 TYPE i.
          DATA(t325) = 1.
          t323 = t81 - t325.
          t323 = t323 + 1.
          IF t67->has( t323 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t67->load( ).
          READ TABLE t67->items INDEX t323 INTO t321.
          DATA(t326) = |"|.
          DATA(t327) = strlen( t321 ).
          IF t326 IS INITIAL.
            t320 = 0.
          ELSE.
            FIND t326 IN t321 MATCH OFFSET t320.
            IF sy-subrc <> 0.
              t320 = -1.
            ENDIF.
          ENDIF.
          t296 = xsdbool( t320 >= 0 ).
        ENDIF.
        IF t296 = abap_true.
          CLEAR t287.
        ENDIF.
        DATA t331 TYPE REF TO zcl_lnt_issue.
        CLEAR t331.
        DATA(t335) = VALUE string( ).
        DATA t336 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t343.
        DATA(t346) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t346 = t346 && |nABAP.md#close-brackets-at-line-end\nhttps://docs.abapopenche|.
        t346 = t346 && |cks.org/checks/16/|.
        DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t347->has = abap_true.
        t347->value = t346.
        t343 = t347.
        DATA t349 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t349.
        DATA t353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t353.
        t353->load( ).
        APPEND |Styleguide| TO t353->items.
        t353->save( ).
        t353->load( ).
        APPEND |Quickfix| TO t353->items.
        t353->save( ).
        t353->load( ).
        APPEND |SingleFile| TO t353->items.
        t353->save( ).
        t349 = t353.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t367->has = abap_true.
        t367->value = |zcl_class=>method(\n).|.
        t363 = t367.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        DATA(t373) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t373->has = abap_true.
        t373->value = |zcl_class=>method( ).|.
        t369 = t373.
        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t375.
        DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t377.
        t336 = NEW zcl_lnt_irule_metadata( i_key = |line_only_punc| i_title = |Line containing only punctuation| i_short_description = |Detects lines containing only punctuation.| i_bad_example = t363 i_good_example = t369 i_extended_information = t343 i_tags = t349 i_pragma = t375 i_pseudo_comment = t377 ).
        CREATE OBJECT t336->zlnt_view_ownkeys_b0e8086400eb.
        t336->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t379.
        t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t379 ).
        DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t380.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t380 ).
        ENDIF.
        DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t381.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t381 ).
        ENDIF.
        DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t382.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t382 ).
        ENDIF.
        DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t383.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t383 ).
        ENDIF.
        DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t384.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t384 ).
        ENDIF.
        DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t385.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t385 ).
        ENDIF.
        CREATE OBJECT t336->zlnt_json_ownkeys_70e5fd461788.
        t336->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t387 ).
        DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t389.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t389 ).
        ENDIF.
        DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t391.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t391 ).
        ENDIF.
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t393 ).
        ENDIF.
        DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t395.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t395 ).
        ENDIF.
        DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t397.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t397 ).
        ENDIF.
        DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t399.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t399 ).
        ENDIF.
        t335 = t336->key.
        t331 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t139 i_message_26cb = |A line should not contain only "." or ")."| i_key = t335 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t287 ).
        t3->load( ).
        APPEND t331 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t407) = 1.
      t81 = t81 + t407.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_line_only_punc_conf( me->g_c_i_s_r_ln_on_pn_ts_ln_on_pn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_line_only_punc_conf( me->g_c_i_s_r_ln_on_pn_ts_ln_on_pn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_line_only_punc_conf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_line_only_punc_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ln_on_pn_ts_ln_on_pn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ln_on_pn_ts_ln_on_pn( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1565_9ceb87fdd6a5.
  ENDMETHOD.
ENDCLASS.
