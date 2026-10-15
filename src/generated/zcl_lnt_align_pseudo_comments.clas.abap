* TS: src/rules/align_pseudo_comments.ts:13:1 AlignPseudoComments
CLASS zcl_lnt_align_pseudo_comments DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_algn_psd_cmmnts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_al_ps_cm_ts_al_ps_cm RETURNING VALUE(result) TYPE REF TO zcl_lnt_algn_psd_cmmnts_cnf.
    METHODS s_c_i_s_r_al_ps_cm_ts_al_ps_cm IMPORTING i_conf TYPE REF TO zcl_lnt_algn_psd_cmmnts_cnf.
    METHODS r_p_i_s_r_al_ps_cm_ts_al_ps_cm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_align_pseudo_comments IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_algn_psd_cmmnts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |align_pseudo_comments|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Align pseudo comments|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Align code inspector pseudo comments in statements|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Whitespace|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |Quickfix|.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t12.
      t11 = t20.
      t9 = t11.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t8 = t9.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |WRITE 'sdf'. "#EC sdf|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    t22 = t23.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |WRITE 'sdf'.                                                |.
      t31 = t31 && |"#EC sdf|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_al_ps_cm_ts_al_ps_cm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_al_ps_cm_ts_al_ps_cm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_al_ps_cm_ts_al_ps_cm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_position.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t7.
    t9 = t10->statements.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE REF TO zif_lnt_statement.
      DATA(t19) = t11.
      t18 = t19->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_st_comment ).
      t16 = xsdbool( t17 = abap_false ).
      IF t16 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_position.
        CLEAR t20.
        DATA(t21) = abap_true.
        IF t21 = abap_true.
          DATA t22 TYPE REF TO zcl_lnt_position.
          DATA t23 TYPE REF TO zcl_lnt_abstract_token.
          DATA t24 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t25) = t11.
          t24 = t25->get_last_token( ).
          t23 = t24.
          DATA t26 TYPE REF TO zcl_lnt_position.
          DATA t27 TYPE f.
          DATA t28 TYPE REF TO zcl_lnt_position.
          DATA t29 TYPE REF TO zcl_lnt_position.
          DATA(t30) = t23.
          t29 = t30->start.
          t28 = t29.
          DATA t31 TYPE f.
          DATA(t32) = t28.
          t31 = t32->row.
          t27 = t31.
          DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t35 TYPE REF TO zcl_lnt_position.
          DATA t36 TYPE REF TO zcl_lnt_position.
          DATA(t37) = t23.
          t36 = t37->start.
          t35 = t36.
          DATA t38 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t39) = t35.
          t38 = t39->col.
          t34 = t38.
          DATA t40 TYPE f.
          DATA t41 TYPE i.
          DATA t42 TYPE string.
          DATA(t43) = t23.
          t42 = t43->str.
          DATA(t44) = strlen( t42 ).
          t41 = t44.
          t40 = t41.
          DATA(t45) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t45->has = abap_true.
          t45->value = t40.
          t33 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t34 right = t45 op = `+` ).
          t26 = NEW zcl_lnt_position( i_row = t27 i_col = t33 ).
          t22 = t26.
          t20 = t22.
        ELSE.
          DATA t46 TYPE REF TO zcl_lnt_position.
          CLEAR t46.
          t20 = t46.
        ENDIF.
        t4 = t20.
        CONTINUE.
      ENDIF.
      DATA t47 TYPE i.
      DATA t48 TYPE i.
      DATA t49 TYPE string.
      DATA(t50) = t11.
      t49 = t50->concat_tokens( ).
      DATA(t51) = strlen( t49 ).
      t48 = t51.
      t47 = t48.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t54) = t11.
      t53 = t54->get_first_token( ).
      t52 = t53.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA t57 TYPE string.
      DATA t58 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t59) = t52.
      t58 = t59.
      DATA t60 TYPE string.
      DATA(t61) = t58.
      t60 = t61->str.
      t57 = t60.
      DATA(t62) = |"#|.
      DATA(t63) = strlen( t57 ).
      DATA t64 TYPE i.
      DATA(t65) = VALUE i( ).
      DATA(t66) = VALUE string( ).
      t64 = strlen( t62 ).
      IF t64 = 0.
        t56 = abap_true.
      ELSEIF t64 <= t63.
        t65 = 0.
        t66 = t57+t65(t64).
        IF t66 = t62.
          t56 = abap_true.
        ENDIF.
      ENDIF.
      DATA(t67) = abap_false.
      t55 = xsdbool( t56 = t67 ).
      IF t55 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE REF TO zcl_lnt_position.
        DATA(t70) = t4.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        t71 = t72.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t69.
        IF t74 IS INITIAL.
          t73 = abap_true.
        ENDIF.
        t68 = t73.
        IF t68 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t75 TYPE i.
      DATA(t76) = 61.
      t75 = t76.
      DATA t77 TYPE abap_bool.
      DATA(t78) = t47.
      DATA(t79) = 10.
      t77 = xsdbool( t78 > t79 ).
      IF t77 = abap_true.
        DATA t80 TYPE i.
        DATA(t81) = 72.
        DATA(t82) = t47.
        t80 = t81 - t82.
        t75 = t80.
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t85 TYPE REF TO zcl_lnt_position.
      DATA t86 TYPE REF TO zcl_lnt_position.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t88) = t52.
      t87 = t88.
      DATA t89 TYPE REF TO zcl_lnt_position.
      DATA(t90) = t87.
      t89 = t90->start.
      t86 = t89.
      t85 = t86.
      DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t92) = t85.
      t91 = t92->col.
      t84 = t91.
      t83 = t84.
      DATA t93 TYPE abap_bool.
      DATA t94 TYPE abap_bool.
      DATA t95 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t96 TYPE REF TO zcl_lnt_position.
      DATA t97 TYPE REF TO zcl_lnt_position.
      DATA(t98) = t4.
      t97 = t98.
      t96 = t97.
      DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t100) = t96.
      t99 = t100->col.
      t95 = t99.
      DATA t101 TYPE f.
      DATA(t102) = t75.
      t101 = t102.
      DATA(t103) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t103->has = abap_true.
      t103->value = t101.
      t94 = zlnt_runtime_numb_290eb04a9758=>compare( left = t95 right = t103 op = `<` ).
      t93 = t94.
      IF t94 = abap_true.
        DATA t104 TYPE abap_bool.
        DATA(t105) = t83.
        DATA t106 TYPE f.
        DATA(t107) = t75.
        t106 = t107.
        DATA(t108) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t108->has = abap_true.
        t108->value = t106.
        t104 = zlnt_runtime_numb_290eb04a9758=>compare( left = t105 right = t108 op = `!=` ).
        t93 = t104.
      ENDIF.
      IF t93 = abap_true.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t110.
        t109 = t110.
        DATA t111 TYPE abap_bool.
        DATA(t112) = t83.
        DATA t113 TYPE f.
        DATA(t114) = t75.
        t113 = t114.
        DATA(t115) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t115->has = abap_true.
        t115->value = t113.
        t111 = zlnt_runtime_numb_290eb04a9758=>compare( left = t112 right = t115 op = `<` ).
        IF t111 = abap_true.
          DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA t118 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t118.
            DATA(t119) = t1.
            DATA t120 TYPE REF TO zcl_lnt_position.
            DATA t121 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t122) = t52.
            t121 = t122.
            DATA t123 TYPE REF TO zcl_lnt_position.
            DATA(t124) = t121.
            t123 = t124->start.
            t120 = t123.
            DATA(t125) = VALUE string( ).
            DATA t126 TYPE string.
            DATA(t127) = | |.
            t126 = t127.
            DATA(t128) = VALUE string( ).
            DATA(t129) = t126.
            DATA t130 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t131 TYPE f.
            DATA(t132) = t75.
            t131 = t132.
            DATA(t133) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t133->has = abap_true.
            t133->value = t131.
            DATA(t134) = t83.
            t130 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t133 right = t134 op = `-` ).
            DATA(t135) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t130 ) ).
            DATA(t136) = strlen( t129 ).
            DATA(t137) = CONV f( trunc( t135 ) ).
            IF t137 < 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            CLEAR t128.
            IF t129 IS NOT INITIAL.
              IF t137 > 2147483647 OR t137 * strlen( t129 ) > 2147483647.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t128 = repeat( val = t129 occ = CONV i( t137 ) ).
            ENDIF.
            t125 = t128.
            t118 = zcl_lnt_edit_helper=>insert_at( i_file = t119 i_pos = t120 i_text = t125 ).
            t116 = t118.
          ELSE.
            DATA t138 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t138.
            t116 = t138.
          ENDIF.
          t109 = t116.
        ELSE.
          DATA t139 TYPE REF TO zcl_lnt_position.
          DATA t140 TYPE REF TO zcl_lnt_position.
          DATA t141 TYPE f.
          DATA t142 TYPE REF TO zcl_lnt_position.
          DATA t143 TYPE REF TO zcl_lnt_position.
          DATA t144 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t145) = t52.
          t144 = t145.
          DATA t146 TYPE REF TO zcl_lnt_position.
          DATA(t147) = t144.
          t146 = t147->start.
          t143 = t146.
          t142 = t143.
          DATA t148 TYPE f.
          DATA(t149) = t142.
          t148 = t149->row.
          t141 = t148.
          DATA t150 TYPE f.
          DATA(t151) = t75.
          t150 = t151.
          DATA(t152) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t152->has = abap_true.
          t152->value = t150.
          t140 = NEW zcl_lnt_position( i_row = t141 i_col = t152 ).
          t139 = t140.
          DATA t153 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t153.
          DATA(t154) = abap_true.
          IF t154 = abap_true.
            DATA t155 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t156) = t1.
            DATA(t157) = t139.
            DATA t158 TYPE REF TO zcl_lnt_position.
            DATA t159 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t160) = t52.
            t159 = t160.
            DATA t161 TYPE REF TO zcl_lnt_position.
            DATA(t162) = t159.
            t161 = t162->start.
            t158 = t161.
            t155 = zcl_lnt_edit_helper=>delete_range( i_file = t156 i_start = t157 i_end = t158 ).
            t153 = t155.
          ELSE.
            DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t163.
            t153 = t163.
          ENDIF.
          t109 = t153.
        ENDIF.
        DATA t164 TYPE string.
        DATA t165 TYPE string.
        DATA(t166) = |Align pseudo comment to column |.
        DATA t167 TYPE string.
        DATA(t168) = t75.
        t167 = |{ t168 }|.
        DATA(t169) = strlen( t166 ).
        t165 = |{ t166 }{ t167 }|.
        t164 = t165.
        DATA(t170) = t2.
        DATA t171 TYPE REF TO zcl_lnt_issue.
        CLEAR t171.
        DATA(t172) = t1.
        DATA(t173) = t11.
        DATA(t174) = t164.
        DATA(t175) = VALUE string( ).
        DATA t176 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t176.
        DATA t177 TYPE string.
        DATA(t178) = |align_pseudo_comments|.
        t177 = t178.
        DATA t179 TYPE string.
        DATA(t180) = |Align pseudo comments|.
        t179 = t180.
        DATA t181 TYPE string.
        DATA(t182) = |Align code inspector pseudo comments in statements|.
        t181 = t182.
        DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t183.
        DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t184.
        DATA(t185) = abap_true.
        IF t185 = abap_true.
          DATA t186 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t188.
          t187 = t188.
          DATA(t189) = t187.
          DATA(t190) = |SingleFile|.
          t189->load( ).
          APPEND t190 TO t189->items.
          t189->save( ).
          DATA(t191) = t187.
          DATA(t192) = |Whitespace|.
          t191->load( ).
          APPEND t192 TO t191->items.
          t191->save( ).
          DATA(t193) = t187.
          DATA(t194) = |Quickfix|.
          t193->load( ).
          APPEND t194 TO t193->items.
          t193->save( ).
          DATA(t195) = t187.
          t186 = t195.
          t184 = t186.
        ELSE.
          DATA t196 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t196.
          t184 = t196.
        ENDIF.
        t183 = t184.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        DATA(t199) = abap_true.
        IF t199 = abap_true.
          DATA(t200) = |WRITE 'sdf'. "#EC sdf|.
          DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t201->has = abap_true.
          t201->value = t200.
          t198 = t201.
        ELSE.
          DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t202.
          t198 = t202.
        ENDIF.
        t197 = t198.
        DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t203.
        DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t204.
        DATA(t205) = abap_true.
        IF t205 = abap_true.
          DATA(t206) = |WRITE 'sdf'.                                                |.
          t206 = t206 && |"#EC sdf|.
          DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t207->has = abap_true.
          t207->value = t206.
          t204 = t207.
        ELSE.
          DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t208.
          t204 = t208.
        ENDIF.
        t203 = t204.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t210.
        t209 = t210.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        t211 = t212.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t214.
        t213 = t214.
        t176 = NEW zcl_lnt_irule_metadata( i_key = t177 i_title = t179 i_short_description = t181 i_bad_example = t197 i_good_example = t203 i_extended_information = t209 i_tags = t183 i_pragma = t211 i_pseudo_comment = t213 ).
        CREATE OBJECT t176->zlnt_view_ownkeys_b0e8086400eb.
        t176->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t215 ).
        ENDIF.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t216 ).
        ENDIF.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t217 ).
        ENDIF.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t218 ).
        ENDIF.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t219 ).
        ENDIF.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        IF t176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t220 ).
        ENDIF.
        CREATE OBJECT t176->zlnt_json_ownkeys_70e5fd461788.
        t176->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t221) = |key|.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
        ENDIF.
        DATA(t223) = |title|.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
        ENDIF.
        DATA(t225) = |shortDescription|.
        DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t226.
        IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
        ENDIF.
        DATA(t227) = |tags|.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
        ENDIF.
        DATA(t229) = |badExample|.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
        ENDIF.
        DATA(t231) = |goodExample|.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
        ENDIF.
        t175 = t176->key.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t234) = me->conf.
        t233 = t234->zlnt_view_read_sr_15c06369f827( ).
        DATA t235 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t235.
        DATA(t236) = abap_true.
        IF t236 = abap_true.
          DATA t237 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t238) = t109.
          t237 = t238.
          t235 = t237.
        ELSE.
          DATA t239 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t239.
          t235 = t239.
        ENDIF.
        DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t240.
        t171 = zcl_lnt_issue=>at_statement( i_file = t172 i_statement = t173 i_message_26cb = t174 i_key = t175 i_severity = t233 i_fix = t235 i_alternative_fixes = t240 ).
        t170->load( ).
        APPEND t171 TO t170->items.
        t170->save( ).
      ENDIF.
    ENDDO.
    DATA(t241) = t2.
    result = t241.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_algn_psd_cmmnts_cnf( me->g_c_i_s_r_al_ps_cm_ts_al_ps_cm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_algn_psd_cmmnts_cnf( me->g_c_i_s_r_al_ps_cm_ts_al_ps_cm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_algn_psd_cmmnts_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
        t1 = NEW zcl_lnt_algn_psd_cmmnts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_al_ps_cm_ts_al_ps_cm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_al_ps_cm_ts_al_ps_cm( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1396_4e2c6377e586.
  ENDMETHOD.
ENDCLASS.
