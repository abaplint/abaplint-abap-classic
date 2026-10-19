* TS: src/rules/colon_missing_space.ts:13:1 ColonMissingSpace
CLASS zcl_lnt_colon_missing_space DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp RETURNING VALUE(result) TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
    METHODS s_c_i_s_r_cl_ms_sp_ts_cl_ms_sp IMPORTING i_conf TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
    METHODS r_p_i_s_r_cl_ms_sp_ts_cl_ms_sp IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_colon_missing_space IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_cln_mssng_spc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for missing spaces after colons in chained statements|.
    t7 = t7 && |.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Whitespace| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = |WRITE:hello, world.|.
    t22 = t26.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |WRITE: hello, world.|.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |colon_missing_space| i_title = |Colon missing space| i_short_description = t6 i_bad_example = t22 i_good_example = t32 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Missing space after the colon|.

  ENDMETHOD.

  METHOD g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cl_ms_sp_ts_cl_ms_sp.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_cl_ms_sp_ts_cl_ms_sp.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t9->colon.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t22 = xsdbool( t14 IS INITIAL ).
      t21 = t22.
      IF t22 = abap_false.
        DATA t30 TYPE REF TO zif_lnt_statement.
        t30 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t21 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_native_sql ).
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t33 TYPE REF TO zif_lnt_statement.
        t33 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t20 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_st_comment ).
      ENDIF.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      t35 = t38->concat( p0 = t9->get_tokens( ) ).
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      t46 = t14.
      t35->load( ).
      APPEND t46 TO t35->items.
      t35->save( ).
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t49 = t35.
      DATA t51 TYPE i.
      t51 = 1.
      DO.
        t49->load( ).
        IF xsdbool( t51 < lines( t49->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t57 TYPE i.
        t57 = t51.
        DO.
          IF xsdbool( t57 > 0 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t63.
          DATA t65 TYPE i.
          DATA(t67) = 1.
          t65 = t57 - t67.
          t65 = t65 + 1.
          DATA t68 TYPE REF TO object.
          CLEAR t68.
          t49->load( ).
          CLEAR t68.
          READ TABLE t49->items INDEX t65 INTO t68.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t69.
          CLEAR t63.
          IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t69 ?= t68.
            DATA t70 TYPE REF TO object.
            t70 = t69->as_ref( ).
            t63 ?= t70.
          ELSE.
            t63 ?= t68.
          ENDIF.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t72.
          DATA(t74) = t57.
          t74 = t74 + 1.
          DATA t75 TYPE REF TO object.
          CLEAR t75.
          t49->load( ).
          CLEAR t75.
          READ TABLE t49->items INDEX t74 INTO t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          CLEAR t72.
          IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t76 ?= t75.
            DATA t77 TYPE REF TO object.
            t77 = t76->as_ref( ).
            t72 ?= t77.
          ELSE.
            t72 ?= t75.
          ENDIF.
          DATA(t79) = VALUE i( ).
          DATA t81 TYPE REF TO zcl_lnt_position.
          t81 = t63->start.
          DATA t86 TYPE REF TO zcl_lnt_position.
          t86 = t72->start.
          IF t81->is_after( i_p = t86 ) = abap_true.
            t79 = 1.
          ELSE.
            t79 = -1.
          ENDIF.
          IF xsdbool( t79 > 0 ) = abap_true.
            DATA t95 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t95.
            DATA t97 TYPE i.
            DATA(t99) = 1.
            t97 = t57 - t99.
            t97 = t97 + 1.
            DATA t100 TYPE REF TO object.
            CLEAR t100.
            t49->load( ).
            CLEAR t100.
            READ TABLE t49->items INDEX t97 INTO t100.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            CLEAR t95.
            IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t101 ?= t100.
              DATA t102 TYPE REF TO object.
              t102 = t101->as_ref( ).
              t95 ?= t102.
            ELSE.
              t95 ?= t100.
            ENDIF.
            DATA t104 TYPE i.
            DATA(t106) = 1.
            t104 = t57 - t106.
            DATA t107 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t107.
            DATA(t109) = t57.
            t109 = t109 + 1.
            DATA t110 TYPE REF TO object.
            CLEAR t110.
            t49->load( ).
            CLEAR t110.
            READ TABLE t49->items INDEX t109 INTO t110.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            CLEAR t107.
            IF t110 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t111 ?= t110.
              DATA t112 TYPE REF TO object.
              t112 = t111->as_ref( ).
              t107 ?= t112.
            ELSE.
              t107 ?= t110.
            ENDIF.
            t49->put( p0 = t104 p1 = t107 ).
            t49->put( p0 = t57 p1 = t95 ).
            DATA(t118) = 1.
            t57 = t57 - t118.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t121) = 1.
        t51 = t51 + t121.
      ENDDO.
      t48 = t49.
      DATA t123 TYPE i.
      t123 = 0.
      DO.
        t35->load( ).
        IF xsdbool( t123 < lines( t35->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t129 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t129.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t130.
        DATA(t132) = t123.
        t132 = t132 + 1.
        DATA t133 TYPE REF TO object.
        CLEAR t133.
        t35->load( ).
        CLEAR t133.
        READ TABLE t35->items INDEX t132 INTO t133.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        CLEAR t130.
        IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t134 ?= t133.
          DATA t135 TYPE REF TO object.
          t135 = t134->as_ref( ).
          t130 ?= t135.
        ELSE.
          t130 ?= t133.
        ENDIF.
        t129 = t130.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE abap_bool.
        DATA t139 TYPE abap_bool.
        t139 = xsdbool( t129->str = |:| ).
        t138 = t139.
        IF t139 = abap_true.
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t148.
          DATA t150 TYPE i.
          DATA(t152) = 1.
          t150 = t123 + t152.
          t150 = t150 + 1.
          DATA t153 TYPE REF TO object.
          CLEAR t153.
          t35->load( ).
          CLEAR t153.
          READ TABLE t35->items INDEX t150 INTO t153.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          CLEAR t148.
          IF t153 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t154 ?= t153.
            DATA t155 TYPE REF TO object.
            t155 = t154->as_ref( ).
            t148 ?= t155.
          ELSE.
            t148 ?= t153.
          ENDIF.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          t138 = xsdbool( xsdbool( t148 IS INITIAL ) = abap_false ).
        ENDIF.
        t137 = t138.
        IF t138 = abap_true.
          DATA t164 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t164.
          DATA t166 TYPE i.
          DATA(t168) = 1.
          t166 = t123 + t168.
          t166 = t166 + 1.
          DATA t169 TYPE REF TO object.
          CLEAR t169.
          t35->load( ).
          CLEAR t169.
          READ TABLE t35->items INDEX t166 INTO t169.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          CLEAR t164.
          IF t169 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t170 ?= t169.
            DATA t171 TYPE REF TO object.
            t171 = t170->as_ref( ).
            t164 ?= t171.
          ELSE.
            t164 ?= t169.
          ENDIF.
          t137 = xsdbool( t164->start->row = t129->start->row ).
        ENDIF.
        t136 = t137.
        IF t137 = abap_true.
          DATA t188 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t188.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          DATA t192 TYPE i.
          DATA(t194) = 1.
          t192 = t123 + t194.
          t192 = t192 + 1.
          DATA t195 TYPE REF TO object.
          CLEAR t195.
          t35->load( ).
          CLEAR t195.
          READ TABLE t35->items INDEX t192 INTO t195.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          CLEAR t190.
          IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t196 ?= t195.
            DATA t197 TYPE REF TO object.
            t197 = t196->as_ref( ).
            t190 ?= t197.
          ELSE.
            t190 ?= t195.
          ENDIF.
          t188 = t190->start->col.
          DATA t205 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t205 = t129->start->col.
          DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t215->has = abap_true.
          t215->value = CONV f( 1 ).
          t136 = zlnt_runtime_numb_290eb04a9758=>compare( left = t188 right = zlnt_runtime_numb_290eb04a9758=>calculate( left = t205 right = t215 op = `+` ) op = `==` ).
        ENDIF.
        IF t136 = abap_true.
          DATA t216 TYPE REF TO zcl_lnt_position.
          t216 = t129->start.
          DATA t222 TYPE REF TO zcl_lnt_position.
          DATA t224 TYPE f.
          t224 = t216->row.
          DATA t230 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t230 = t216->col.
          DATA(t236) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t236->has = abap_true.
          t236->value = CONV f( 1 ).
          t222 = NEW zcl_lnt_position( i_row = t224 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t230 right = t236 op = `+` ) ).
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t238 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t222 i_text = | | ).
          DATA t243 TYPE REF TO zcl_lnt_issue.
          CLEAR t243.
          DATA(t248) = VALUE string( ).
          DATA t249 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t249.
          DATA t254 TYPE string.
          DATA(t255) = |Checks for missing spaces after colons in chained statements|.
          t255 = t255 && |.|.
          t254 = t255.
          DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t256.
          DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t260.
          t260->load( ).
          APPEND |Whitespace| TO t260->items.
          t260->save( ).
          t260->load( ).
          APPEND |Quickfix| TO t260->items.
          t260->save( ).
          t260->load( ).
          APPEND |SingleFile| TO t260->items.
          t260->save( ).
          t256 = t260.
          DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t270.
          DATA(t274) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t274->has = abap_true.
          t274->value = |WRITE:hello, world.|.
          t270 = t274.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t280->has = abap_true.
          t280->value = |WRITE: hello, world.|.
          t276 = t280.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t282.
          DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t284.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          t249 = NEW zcl_lnt_irule_metadata( i_key = |colon_missing_space| i_title = |Colon missing space| i_short_description = t254 i_bad_example = t270 i_good_example = t276 i_extended_information = t282 i_tags = t256 i_pragma = t284 i_pseudo_comment = t286 ).
          CREATE OBJECT t249->zlnt_view_ownkeys_b0e8086400eb.
          t249->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t288 ).
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t289 ).
          ENDIF.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t290 ).
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t291 ).
          ENDIF.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t292.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t292 ).
          ENDIF.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t293 ).
          ENDIF.
          CREATE OBJECT t249->zlnt_json_ownkeys_70e5fd461788.
          t249->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t295 ).
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t297 ).
          ENDIF.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t299 ).
          ENDIF.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t301 ).
          ENDIF.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t303 ).
          ENDIF.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t305 ).
          ENDIF.
          t248 = t249->key.
          DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t306 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t308 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t308.
          t308 = t238.
          DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t312.
          t243 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t216 i_end = t222 i_message_26cb = |Missing space after the colon| i_key = t248 i_severity = t306 i_fix = t308 i_alternative_fixes = t312 ).
          t2->load( ).
          APPEND t243 TO t2->items.
          t2->save( ).
        ENDIF.
        DATA(t317) = 1.
        t123 = t123 + t317.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cln_mssng_spc_cnf( me->g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_cln_mssng_spc_cnf( me->g_c_i_s_r_cl_ms_sp_ts_cl_ms_sp( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_cln_mssng_spc_cnf.
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
        t1 = NEW zcl_lnt_cln_mssng_spc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cl_ms_sp_ts_cl_ms_sp( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_cl_ms_sp_ts_cl_ms_sp( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1458_239f1ac51b63.
  ENDMETHOD.
ENDCLASS.
