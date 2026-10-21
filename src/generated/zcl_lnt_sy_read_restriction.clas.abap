* TS: src/rules/sy_read_restriction.ts:45:1 SyReadRestriction
CLASS zcl_lnt_sy_read_restriction DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs RETURNING VALUE(result) TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs IMPORTING i_conf TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_ac26 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_read_restriction IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_sy_rd_rstrctn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Finds reads of SY fields not allowed in the current language|.
    t7 = t7 && | version|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA(t14) = |In ABAP Cloud, only 17 system fields may be read; reads of o|.
    t14 = t14 && |ther fields produce a warning.\n|.
    DATA(t16) = strlen( t14 ).
    t13 = |{ t14 }{ |In ABAP for Key Users, only 5 system fields may be read:\n| }|.
    DATA(t18) = strlen( t13 ).
    t12 = |{ t13 }{ |SY-DBCNT, SY-FDPOS, SY-INDEX, SY-SUBRC, SY-TABIX.\n| }|.
    DATA(t19) = |https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/A|.
    t19 = t19 && |BENSYSTEM_FIELDS.html|.
    DATA(t20) = strlen( t12 ).
    t11 = |{ t12 }{ t19 }|.
    DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t21->has = abap_true.
    t21->value = t11.
    t8 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t27.
    t27->load( ).
    APPEND |SingleFile| TO t27->items.
    t27->save( ).
    t23 = t27.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t37->has = abap_true.
    t37->value = |lv = sy-uname.|.
    t33 = t37.
    DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t43->has = abap_true.
    t43->value = |IF sy-subrc = 0. ENDIF.|.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |sy_read_restriction| i_title = |SY field read restriction| i_short_description = t6 i_bad_example = t33 i_good_example = t43 i_extended_information = t8 i_tags = t23 i_pragma = t45 i_pseudo_comment = t47 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t55 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t57 ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t59 ).
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t61 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t63 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t65 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t67 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t69 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_ac26.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE string.
    t5 = me->reg->get_config( )->get_language_version( ).
    IF xsdbool( t5 = |Normal| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA t14 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    IF xsdbool( t5 = |KeyUser| ) = abap_true.
      IF zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_56bea28f17d9 = abap_false.
        zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_d81bf6eacb03( ).
      ENDIF.
      t14 = zcl_lnt_sy_rd_rstrctn_mdl=>keyuser_allowed.
    ELSE.
      IF zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_56bea28f17d9 = abap_false.
        zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_d81bf6eacb03( ).
      ENDIF.
      t14 = zcl_lnt_sy_rd_rstrctn_mdl=>cloud_allowed.
    ENDIF.
    t13 = t14.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t5 = |KeyUser| ) = abap_true.
      t21 = me->conf->zlnt_view_read_sr_15c06369f827( ).
    ELSE.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = |Warning|.
      t21 = t30.
    ENDIF.
    t20 = t21.
    DATA t32 TYPE REF TO zlnt_runtime_set__5db31b54602e.
    t32 = NEW zlnt_runtime_set__5db31b54602e( ).
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zcl_lnt_structure_node.
    t37 = t1->structure.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t37 IS INITIAL ) = abap_true.
    ELSE.
      DATA t48 TYPE REF TO zcl_lnt_structure_node.
      t48 = t37.
      DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t43 = t48->find_all_expressions_recursive( i_type_9913 = t50 ).
    ENDIF.
    t35 = t43.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t35 IS BOUND ) = abap_true.
      t51 = t35.
    ELSE.
      CREATE OBJECT t51.
    ENDIF.
    t34 = t51.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    DATA t58 TYPE REF TO object.
    DATA(t59) = VALUE i( ).
    DO.
      t34->load( ).
      IF t59 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t58.
      READ TABLE t34->items INDEX t59 + 1 INTO t58.
      t59 = t59 + 1.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      CLEAR t57.
      IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t60 ?= t58.
        DATA t61 TYPE REF TO object.
        t61 = t60->as_ref( ).
        t57 ?= t61.
      ELSE.
        t57 ?= t58.
      ENDIF.
      DATA(t62) = VALUE string( ).
      DATA t63 TYPE string.
      DATA t64 TYPE string.
      t64 = t57->concat_tokens( ).
      DATA(t66) = strlen( t64 ).
      t63 = t64.
      IF t63 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t63 TO UPPER CASE.
      ELSE.
        t63 = zlnt_runtime_uppe_91169605024d=>full( t63 ).
      ENDIF.
      t62 = t63.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t70) = |SY-|.
      DATA(t71) = strlen( t62 ).
      DATA t72 TYPE i.
      DATA(t73) = VALUE i( ).
      DATA(t74) = VALUE string( ).
      t72 = strlen( t70 ).
      IF t72 = 0.
        t68 = abap_true.
      ELSEIF t72 <= t71.
        t73 = 0.
        t74 = t62+t73(t72).
        IF t74 = t70.
          t68 = abap_true.
        ENDIF.
      ENDIF.
      IF xsdbool( t68 = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t75 TYPE REF TO zlnt_runtime_set__5db31b54602e.
      t75 = t32->add( p0 = t57->get_first_token( ) ).
    ENDDO.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t79 = t1->get_tokens( i_with_pragmas = t82 ).
    DATA t83 TYPE f.
    t83 = CONV f( 0 ).
    DO.
      DATA t86 TYPE f.
      DATA(t88) = CONV f( 2 ).
      t86 = t83 + t88.
      DATA t89 TYPE f.
      t79->load( ).
      t89 = lines( t79->items ).
      IF xsdbool( t86 < t89 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t93.
      DATA(t95) = VALUE i( ).
      DATA(t96) = t83.
      IF t96 > range_i32_upper.
        t95 = range_i32_upper.
      ELSEIF t96 < range_i32_lower.
        t95 = range_i32_lower.
      ELSE.
        t95 = trunc( t96 ).
      ENDIF.
      t95 = t95 + 1.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      t79->load( ).
      CLEAR t97.
      READ TABLE t79->items INDEX t95 INTO t97.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      CLEAR t93.
      IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t98 ?= t97.
        DATA t99 TYPE REF TO object.
        t99 = t98->as_ref( ).
        t93 ?= t99.
      ELSE.
        t93 ?= t97.
      ENDIF.
      t92 = t93.
      DATA t100 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t101.
      DATA(t103) = VALUE i( ).
      DATA t104 TYPE f.
      DATA(t106) = CONV f( 1 ).
      t104 = t83 + t106.
      IF t104 > range_i32_upper.
        t103 = range_i32_upper.
      ELSEIF t104 < range_i32_lower.
        t103 = range_i32_lower.
      ELSE.
        t103 = trunc( t104 ).
      ENDIF.
      t103 = t103 + 1.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      t79->load( ).
      CLEAR t107.
      READ TABLE t79->items INDEX t103 INTO t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      CLEAR t101.
      IF t107 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t108 ?= t107.
        DATA t109 TYPE REF TO object.
        t109 = t108->as_ref( ).
        t101 ?= t109.
      ELSE.
        t101 ?= t107.
      ENDIF.
      t100 = t101.
      DATA t110 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t110.
      DATA t111 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t111.
      DATA(t113) = VALUE i( ).
      DATA t114 TYPE f.
      DATA(t116) = CONV f( 2 ).
      t114 = t83 + t116.
      IF t114 > range_i32_upper.
        t113 = range_i32_upper.
      ELSEIF t114 < range_i32_lower.
        t113 = range_i32_lower.
      ELSE.
        t113 = trunc( t114 ).
      ENDIF.
      t113 = t113 + 1.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      t79->load( ).
      CLEAR t117.
      READ TABLE t79->items INDEX t113 INTO t117.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t111.
      IF t117 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t117.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t111 ?= t119.
      ELSE.
        t111 ?= t117.
      ENDIF.
      t110 = t111.
      DATA t121 TYPE string.
      DATA t122 TYPE string.
      t122 = t92->str.
      DATA(t127) = strlen( t122 ).
      t121 = t122.
      IF t121 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t121 TO UPPER CASE.
      ELSE.
        t121 = zlnt_runtime_uppe_91169605024d=>full( t121 ).
      ENDIF.
      IF xsdbool( t121 <> |SY| ) = abap_true.
        DATA(t131) = CONV f( 1 ).
        t83 = t83 + t131.
        CONTINUE.
      ENDIF.
      IF xsdbool( t100->str <> |-| ) = abap_true.
        DATA(t141) = CONV f( 1 ).
        t83 = t83 + t141.
        CONTINUE.
      ENDIF.
      DATA(t142) = VALUE abap_bool( ).
      DATA(t143) = VALUE abap_bool( ).
      DATA t144 TYPE abap_bool.
      DATA t145 TYPE abap_bool.
      DATA t146 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      t149 = t92.
      DATA t152 TYPE f.
      t152 = t149->start->row.
      DATA t159 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t159 = t149->start->col.
      DATA t165 TYPE f.
      t165 = strlen( t149->str ).
      DATA(t170) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t170->has = abap_true.
      t170->value = t165.
      t146 = NEW zcl_lnt_position( i_row = t152 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t159 right = t170 op = `+` ) )->col.
      DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t180 = t100->start->col.
      t145 = zlnt_runtime_numb_290eb04a9758=>compare( left = t146 right = t180 op = `!=` ).
      t144 = t145.
      IF t145 = abap_false.
        DATA t183 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t186 TYPE REF TO zcl_lnt_abstract_token.
        t186 = t100.
        DATA t189 TYPE f.
        t189 = t186->start->row.
        DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t196 = t186->start->col.
        DATA t202 TYPE f.
        t202 = strlen( t186->str ).
        DATA(t207) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t207->has = abap_true.
        t207->value = t202.
        t183 = NEW zcl_lnt_position( i_row = t189 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t196 right = t207 op = `+` ) )->col.
        DATA t217 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t217 = t110->start->col.
        t144 = zlnt_runtime_numb_290eb04a9758=>compare( left = t183 right = t217 op = `!=` ).
      ENDIF.
      t143 = t144.
      IF t144 = abap_false.
        t143 = xsdbool( t92->start->row <> t100->start->row ).
      ENDIF.
      t142 = t143.
      IF t143 = abap_false.
        t142 = xsdbool( t100->start->row <> t110->start->row ).
      ENDIF.
      IF t142 = abap_true.
        DATA(t259) = CONV f( 1 ).
        t83 = t83 + t259.
        CONTINUE.
      ENDIF.
      IF t32->has( p0 = t92 ) = abap_true.
        DATA(t265) = CONV f( 1 ).
        t83 = t83 + t265.
        CONTINUE.
      ENDIF.
      DATA(t266) = VALUE string( ).
      DATA(t268) = |SY-|.
      DATA t269 TYPE string.
      DATA t270 TYPE string.
      t270 = t110->str.
      DATA(t275) = strlen( t270 ).
      t269 = t270.
      IF t269 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t269 TO UPPER CASE.
      ELSE.
        t269 = zlnt_runtime_uppe_91169605024d=>full( t269 ).
      ENDIF.
      DATA(t276) = strlen( t268 ).
      t266 = |{ t268 }{ t269 }|.
      IF xsdbool( t13->has( p0 = t266 ) = abap_false ) = abap_true.
        DATA t282 TYPE string.
        DATA t283 TYPE string.
        DATA t284 TYPE string.
        DATA t285 TYPE string.
        DATA(t286) = |SY field "|.
        DATA(t288) = strlen( t286 ).
        t285 = |{ t286 }{ t266 }|.
        DATA(t290) = strlen( t285 ).
        t284 = |{ t285 }{ |" cannot be read in language version | }|.
        DATA(t292) = strlen( t284 ).
        t283 = |{ t284 }{ t5 }|.
        DATA(t294) = strlen( t283 ).
        t282 = |{ t283 }{ || }|.
        DATA t296 TYPE REF TO zcl_lnt_issue.
        CLEAR t296.
        DATA(t300) = VALUE string( ).
        DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t306 TYPE string.
        DATA(t307) = |Finds reads of SY fields not allowed in the current language|.
        t307 = t307 && | version|.
        t306 = t307.
        DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t308.
        DATA t311 TYPE string.
        DATA t312 TYPE string.
        DATA t313 TYPE string.
        DATA(t314) = |In ABAP Cloud, only 17 system fields may be read; reads of o|.
        t314 = t314 && |ther fields produce a warning.\n|.
        DATA(t316) = strlen( t314 ).
        t313 = |{ t314 }{ |In ABAP for Key Users, only 5 system fields may be read:\n| }|.
        DATA(t318) = strlen( t313 ).
        t312 = |{ t313 }{ |SY-DBCNT, SY-FDPOS, SY-INDEX, SY-SUBRC, SY-TABIX.\n| }|.
        DATA(t319) = |https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/A|.
        t319 = t319 && |BENSYSTEM_FIELDS.html|.
        DATA(t320) = strlen( t312 ).
        t311 = |{ t312 }{ t319 }|.
        DATA(t321) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t321->has = abap_true.
        t321->value = t311.
        t308 = t321.
        DATA t323 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t323.
        DATA t327 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t327.
        t327->load( ).
        APPEND |SingleFile| TO t327->items.
        t327->save( ).
        t323 = t327.
        DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t333.
        DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t337->has = abap_true.
        t337->value = |lv = sy-uname.|.
        t333 = t337.
        DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t339.
        DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t343->has = abap_true.
        t343->value = |IF sy-subrc = 0. ENDIF.|.
        t339 = t343.
        DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t345.
        DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t347.
        t301 = NEW zcl_lnt_irule_metadata( i_key = |sy_read_restriction| i_title = |SY field read restriction| i_short_description = t306 i_bad_example = t333 i_good_example = t339 i_extended_information = t308 i_tags = t323 i_pragma = t345 i_pseudo_comment = t347 ).
        CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
        t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t349 ).
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t350 ).
        ENDIF.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t351 ).
        ENDIF.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t352 ).
        ENDIF.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t353.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t353 ).
        ENDIF.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t354 ).
        ENDIF.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t355 ).
        ENDIF.
        CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
        t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t357 ).
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t359 ).
        ENDIF.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t361.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t361 ).
        ENDIF.
        DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t363.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t363 ).
        ENDIF.
        DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t365.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t365 ).
        ENDIF.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t367 ).
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t369 ).
        ENDIF.
        t300 = t301->key.
        DATA t371 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t371.
        t296 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t92 i_message_26cb = t282 i_key = t300 i_severity = t20 i_fix = t371 ).
        t3->load( ).
        APPEND t296 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t374) = CONV f( 1 ).
      t83 = t83 + t374.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_sy_rd_rstrctn_cnf( me->g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_sy_rd_rstrctn_cnf( me->g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
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
        t1 = NEW zcl_lnt_sy_rd_rstrctn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1726_219608ca0d7a.
  ENDMETHOD.
ENDCLASS.
