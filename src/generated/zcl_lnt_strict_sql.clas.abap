* TS: src/rules/strict_sql.ts:15:1 StrictSQL
CLASS zcl_lnt_strict_sql DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_strict_sql_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_st_sq_ts_st_sql RETURNING VALUE(result) TYPE REF TO zcl_lnt_strict_sql_conf.
    METHODS st_cn_in_sr_rl_st_sq_ts_st_sql IMPORTING i_conf TYPE REF TO zcl_lnt_strict_sql_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_strict_sql IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_strict_sql_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t11 = t11 && |-US/abapinto_clause.html\n\nhttps://help.sap.com/doc/abapdocu_|.
    t11 = t11 && |latest_index_htm/latest/en-US/ABENABAP_SQL_STRICT_MODES.html|.
    t11 = t11 && |\n\nAlso see separate rule sql_escape_host_variables\n\nActivate|.
    t11 = t11 && |s from v750 and up|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Upport| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |SELECT * FROM ztabl INTO TABLE @rt_content WHERE type = @iv_|.
    t29 = t29 && |type ORDER BY PRIMARY KEY.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |SELECT * FROM ztabl WHERE type = @iv_type ORDER BY PRIMARY K|.
    t35 = t35 && |EY INTO TABLE @rt_content.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |strict_sql| i_title = |Strict SQL| i_short_description = |Strict SQL| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_st_sq_ts_st_sql.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_st_sq_ts_st_sql.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE string.
    t5 = t2->get_type( ).
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    t9 = xsdbool( t5 = |INTF| ).
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t5 = |TYPE| ).
    ENDIF.
    IF t8 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zcl_lnt_abap_release.
    t19 = me->reg->get_config( )->get_release( ).
    DATA t24 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd.
    t17 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t19 i_required = t24->get( p0 = |v750| ) ) = abap_false ).
    t16 = t17.
    IF t17 = abap_true.
      DATA t27 TYPE string.
      t27 = me->reg->get_config( )->get_language_version( ).
      t16 = xsdbool( t27 <> |Cloud| ).
    ENDIF.
    IF t16 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t32 = t1->statements.
    DATA t37 TYPE REF TO zcl_lnt_statement_node.
    DATA t38 TYPE REF TO object.
    DATA(t39) = VALUE i( ).
    DO.
      t32->load( ).
      IF t39 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t32->items INDEX t39 + 1 INTO t38.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t37.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t38.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      DATA t42 TYPE abap_bool.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE REF TO zif_lnt_statement.
      t44 = t37->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_st_statem_select ).
      t42 = t43.
      IF t43 = abap_false.
        DATA t47 TYPE REF TO zif_lnt_statement.
        t47 = t37->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t42 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_select_loop ).
      ENDIF.
      IF t42 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
        t49 = t37->find_direct_expression( i_type_9913 = t52 ).
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        t55 = t49.
        DATA t57 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t57.
        IF xsdbool( t55 IS INITIAL ) = abap_true.
          CLEAR t57.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          t62 = t55.
          DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
          t57 = t62->find_direct_expression( i_type_9913 = t64 ).
        ENDIF.
        t53 = t57.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        t67 = t49.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t69.
        IF xsdbool( t67 IS INITIAL ) = abap_true.
          CLEAR t69.
        ELSE.
          DATA t74 TYPE REF TO zcl_lnt_expression_node.
          t74 = t67.
          DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
          t69 = t74->find_direct_expression( i_type_9913 = t76 ).
        ENDIF.
        t65 = t69.
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t77.
        DATA t79 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t79.
        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t81.
        DATA t83 TYPE REF TO zcl_lnt_expression_node.
        t83 = t49.
        DATA t85 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t85.
        IF xsdbool( t83 IS INITIAL ) = abap_true.
          CLEAR t85.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_expression_node.
          t90 = t83.
          DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
          t85 = t90->find_direct_expression( i_type_9913 = t92 ).
        ENDIF.
        t81 = t85.
        DATA t93 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t93.
        IF xsdbool( t81 IS BOUND ) = abap_true.
          t93 = t81.
        ELSE.
          DATA t98 TYPE REF TO zcl_lnt_expression_node.
          t98 = t49.
          DATA t100 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t100.
          IF xsdbool( t98 IS INITIAL ) = abap_true.
            CLEAR t100.
          ELSE.
            DATA t105 TYPE REF TO zcl_lnt_expression_node.
            t105 = t98.
            DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
            t100 = t105->find_direct_expression( i_type_9913 = t107 ).
          ENDIF.
          t93 = t100.
        ENDIF.
        t79 = t93.
        DATA t108 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t108.
        IF xsdbool( t79 IS BOUND ) = abap_true.
          t108 = t79.
        ELSE.
          DATA t113 TYPE REF TO zcl_lnt_expression_node.
          t113 = t49.
          DATA t115 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t115.
          IF xsdbool( t113 IS INITIAL ) = abap_true.
            CLEAR t115.
          ELSE.
            DATA t120 TYPE REF TO zcl_lnt_expression_node.
            t120 = t113.
            DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
            t115 = t120->find_direct_expression( i_type_9913 = t122 ).
          ENDIF.
          t108 = t115.
        ENDIF.
        t77 = t108.
        DATA(t123) = VALUE abap_bool( ).
        DATA(t124) = VALUE abap_bool( ).
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        t124 = xsdbool( t77 IS INITIAL ).
        t123 = t124.
        IF t124 = abap_false.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          t123 = xsdbool( t53 IS INITIAL ).
        ENDIF.
        IF t123 = abap_true.
          CONTINUE.
        ELSE.
          DATA t139 TYPE REF TO zcl_lnt_position.
          t139 = t53->get_first_token( )->start.
          DATA t147 TYPE REF TO zcl_lnt_position.
          t147 = t77->get_first_token( )->start.
          DATA t155 TYPE abap_bool.
          DATA t156 TYPE abap_bool.
          t156 = xsdbool( t139->row < t147->row ).
          t155 = t156.
          IF t156 = abap_false.
            DATA t161 TYPE abap_bool.
            DATA t162 TYPE abap_bool.
            t162 = xsdbool( t139->row = t147->row ).
            t161 = t162.
            IF t162 = abap_true.
              DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t168 = t139->col.
              DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t170 = t147->col.
              t161 = zlnt_runtime_numb_290eb04a9758=>compare( left = t168 right = t170 op = `<` ).
            ENDIF.
            t155 = t161.
          ENDIF.
          IF t155 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t173 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t175 TYPE REF TO zcl_lnt_position.
        t175 = t77->get_first_token( )->start.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        t183 = t77->get_last_token( ).
        DATA t188 TYPE f.
        t188 = t183->start->row.
        DATA t195 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t195 = t183->start->col.
        DATA t201 TYPE f.
        t201 = strlen( t183->str ).
        DATA(t206) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t206->has = abap_true.
        t206->value = t201.
        t173 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t175 i_end = NEW zcl_lnt_position( i_row = t188 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t195 right = t206 op = `+` ) ) ).
        DATA t207 TYPE REF TO zcl_lnt_abstract_token.
        t207 = t53->get_last_token( ).
        DATA t211 TYPE abap_bool.
        DATA t212 TYPE abap_bool.
        t212 = xsdbool( t65 IS BOUND ).
        t211 = t212.
        IF t212 = abap_true.
          DATA t215 TYPE REF TO zcl_lnt_position.
          DATA t216 TYPE REF TO zcl_lnt_abstract_token.
          t216 = t65->get_last_token( ).
          DATA t221 TYPE f.
          t221 = t216->start->row.
          DATA t228 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t228 = t216->start->col.
          DATA t234 TYPE f.
          t234 = strlen( t216->str ).
          DATA(t239) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t239->has = abap_true.
          t239->value = t234.
          t215 = NEW zcl_lnt_position( i_row = t221 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t228 right = t239 op = `+` ) ).
          DATA t241 TYPE REF TO zcl_lnt_abstract_token.
          t241 = t207.
          DATA t244 TYPE f.
          t244 = t241->start->row.
          DATA t251 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t251 = t241->start->col.
          DATA t257 TYPE f.
          t257 = strlen( t241->str ).
          DATA(t262) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t262->has = abap_true.
          t262->value = t257.
          t211 = t215->is_after( i_p = NEW zcl_lnt_position( i_row = t244 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t251 right = t262 op = `+` ) ) ).
        ENDIF.
        IF t211 = abap_true.
          t207 = t65->get_last_token( ).
        ENDIF.
        DATA t269 TYPE REF TO zcl_lnt_position.
        DATA t270 TYPE REF TO zcl_lnt_abstract_token.
        t270 = t207.
        DATA t273 TYPE f.
        t273 = t270->start->row.
        DATA t280 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t280 = t270->start->col.
        DATA t286 TYPE f.
        t286 = strlen( t270->str ).
        DATA(t291) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t291->has = abap_true.
        t291->value = t286.
        t269 = NEW zcl_lnt_position( i_row = t273 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t280 right = t291 op = `+` ) ).
        DATA(t293) = | |.
        DATA t294 TYPE string.
        t294 = t77->concat_tokens( ).
        DATA(t297) = strlen( t293 ).
        DATA t299 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t299 = zcl_lnt_edit_helper=>merge( i_fix1 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t269 i_text = |{ t293 }{ t294 }| ) i_fix2 = t173 ).
        DATA t305 TYPE REF TO zcl_lnt_issue.
        CLEAR t305.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        t307 = t37->get_first_token( ).
        DATA(t310) = VALUE string( ).
        DATA t311 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t311.
        DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t318.
        DATA(t321) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
        t321 = t321 && |-US/abapinto_clause.html\n\nhttps://help.sap.com/doc/abapdocu_|.
        t321 = t321 && |latest_index_htm/latest/en-US/ABENABAP_SQL_STRICT_MODES.html|.
        t321 = t321 && |\n\nAlso see separate rule sql_escape_host_variables\n\nActivate|.
        t321 = t321 && |s from v750 and up|.
        DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t322->has = abap_true.
        t322->value = t321.
        t318 = t322.
        DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t324.
        DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t328.
        t328->load( ).
        APPEND |Upport| TO t328->items.
        t328->save( ).
        t328->load( ).
        APPEND |Quickfix| TO t328->items.
        t328->save( ).
        t324 = t328.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t336.
        DATA(t339) = |SELECT * FROM ztabl INTO TABLE @rt_content WHERE type = @iv_|.
        t339 = t339 && |type ORDER BY PRIMARY KEY.|.
        DATA(t340) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t340->has = abap_true.
        t340->value = t339.
        t336 = t340.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t342.
        DATA(t345) = |SELECT * FROM ztabl WHERE type = @iv_type ORDER BY PRIMARY K|.
        t345 = t345 && |EY INTO TABLE @rt_content.|.
        DATA(t346) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t346->has = abap_true.
        t346->value = t345.
        t342 = t346.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t350.
        t311 = NEW zcl_lnt_irule_metadata( i_key = |strict_sql| i_title = |Strict SQL| i_short_description = |Strict SQL| i_bad_example = t336 i_good_example = t342 i_extended_information = t318 i_tags = t324 i_pragma = t348 i_pseudo_comment = t350 ).
        CREATE OBJECT t311->zlnt_view_ownkeys_b0e8086400eb.
        t311->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t352 ).
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t353.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t353 ).
        ENDIF.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t354 ).
        ENDIF.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t355 ).
        ENDIF.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t356 ).
        ENDIF.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t357 ).
        ENDIF.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t358 ).
        ENDIF.
        CREATE OBJECT t311->zlnt_json_ownkeys_70e5fd461788.
        t311->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t360 ).
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t362 ).
        ENDIF.
        DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t364.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t364 ).
        ENDIF.
        DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t366.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t366 ).
        ENDIF.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t368 ).
        ENDIF.
        DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t370.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t370 ).
        ENDIF.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t372 ).
        ENDIF.
        t310 = t311->key.
        t305 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t307 i_message_26cb = |INTO/APPENDING must be last in strict SQL| i_key = t310 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t299 ).
        t3->load( ).
        APPEND t305 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_strict_sql_conf( me->gt_cn_in_sr_rl_st_sq_ts_st_sql( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_strict_sql_conf( me->gt_cn_in_sr_rl_st_sq_ts_st_sql( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_strict_sql_conf.
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
        t1 = NEW zcl_lnt_strict_sql_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_st_sq_ts_st_sql( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1718_b05ac790f903.
  ENDMETHOD.
ENDCLASS.
