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
    me->conf = NEW zcl_lnt_algn_psd_cmmnts_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |align_pseudo_comments|.
    DATA t4 TYPE string.
    t4 = |Align pseudo comments|.
    DATA t6 TYPE string.
    t6 = |Align code inspector pseudo comments in statements|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Whitespace|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    DATA(t19) = |Quickfix|.
    t12->load( ).
    APPEND t19 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = |WRITE 'sdf'. "#EC sdf|.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t25.
    t22 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |WRITE 'sdf'.                                                |.
    t31 = t31 && |"#EC sdf|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_al_ps_cm_ts_al_ps_cm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_al_ps_cm_ts_al_ps_cm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_al_ps_cm_ts_al_ps_cm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->statements.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA t12 TYPE REF TO object.
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
      t18 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_st_comment ).
      t16 = xsdbool( t17 = abap_false ).
      IF t16 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_abstract_token.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        t24 = t11->get_last_token( ).
        t23 = t24.
        DATA t26 TYPE REF TO zcl_lnt_position.
        DATA t27 TYPE f.
        DATA t29 TYPE REF TO zcl_lnt_position.
        t29 = t23->start.
        DATA t31 TYPE f.
        t31 = t29->row.
        t27 = t31.
        DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t36 TYPE REF TO zcl_lnt_position.
        t36 = t23->start.
        DATA t38 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t38 = t36->col.
        t34 = t38.
        DATA t40 TYPE f.
        DATA t42 TYPE string.
        t42 = t23->str.
        t40 = strlen( t42 ).
        DATA(t45) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t45->has = abap_true.
        t45->value = t40.
        t33 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t34 right = t45 op = `+` ).
        t26 = NEW zcl_lnt_position( i_row = t27 i_col = t33 ).
        t4 = t26.
        CONTINUE.
      ENDIF.
      DATA t47 TYPE i.
      DATA t49 TYPE string.
      t49 = t11->concat_tokens( ).
      t47 = strlen( t49 ).
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      t53 = t11->get_first_token( ).
      t52 = t53.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA t57 TYPE string.
      DATA t60 TYPE string.
      t60 = t52->str.
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
      t55 = xsdbool( t56 = abap_false ).
      IF t55 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t68) = VALUE abap_bool( ).
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        t68 = xsdbool( t4 IS INITIAL ).
        IF t68 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t75 TYPE i.
      t75 = 61.
      DATA t77 TYPE abap_bool.
      DATA(t79) = 10.
      t77 = xsdbool( t47 > t79 ).
      IF t77 = abap_true.
        DATA t80 TYPE i.
        DATA(t81) = 72.
        t80 = t81 - t47.
        t75 = t80.
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t89 TYPE REF TO zcl_lnt_position.
      t89 = t52->start.
      DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t91 = t89->col.
      t83 = t91.
      DATA t93 TYPE abap_bool.
      DATA t94 TYPE abap_bool.
      DATA t95 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t99 = t4->col.
      t95 = t99.
      DATA t101 TYPE f.
      t101 = t75.
      DATA(t103) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t103->has = abap_true.
      t103->value = t101.
      t94 = zlnt_runtime_numb_290eb04a9758=>compare( left = t95 right = t103 op = `<` ).
      t93 = t94.
      IF t94 = abap_true.
        DATA t104 TYPE abap_bool.
        DATA t106 TYPE f.
        t106 = t75.
        DATA(t108) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t108->has = abap_true.
        t108->value = t106.
        t104 = zlnt_runtime_numb_290eb04a9758=>compare( left = t83 right = t108 op = `!=` ).
        t93 = t104.
      ENDIF.
      IF t93 = abap_true.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t109.
        DATA t111 TYPE abap_bool.
        DATA t113 TYPE f.
        t113 = t75.
        DATA(t115) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t115->has = abap_true.
        t115->value = t113.
        t111 = zlnt_runtime_numb_290eb04a9758=>compare( left = t83 right = t115 op = `<` ).
        IF t111 = abap_true.
          DATA t118 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t118.
          DATA t120 TYPE REF TO zcl_lnt_position.
          DATA t123 TYPE REF TO zcl_lnt_position.
          t123 = t52->start.
          t120 = t123.
          DATA(t125) = VALUE string( ).
          DATA t126 TYPE string.
          t126 = | |.
          DATA(t128) = VALUE string( ).
          DATA t130 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t131 TYPE f.
          t131 = t75.
          DATA(t133) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t133->has = abap_true.
          t133->value = t131.
          t130 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t133 right = t83 op = `-` ).
          DATA(t135) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t130 ) ).
          DATA(t136) = strlen( t126 ).
          DATA(t137) = CONV f( trunc( t135 ) ).
          IF t137 < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          CLEAR t128.
          IF t126 IS NOT INITIAL.
            IF t137 > 2147483647 OR t137 * strlen( t126 ) > 2147483647.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t128 = repeat( val = t126 occ = CONV i( t137 ) ).
          ENDIF.
          t125 = t128.
          t118 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t120 i_text = t125 ).
          t109 = t118.
        ELSE.
          DATA t140 TYPE REF TO zcl_lnt_position.
          DATA t141 TYPE f.
          DATA t146 TYPE REF TO zcl_lnt_position.
          t146 = t52->start.
          DATA t148 TYPE f.
          t148 = t146->row.
          t141 = t148.
          DATA t150 TYPE f.
          t150 = t75.
          DATA(t152) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t152->has = abap_true.
          t152->value = t150.
          t140 = NEW zcl_lnt_position( i_row = t141 i_col = t152 ).
          DATA t155 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t158 TYPE REF TO zcl_lnt_position.
          DATA t161 TYPE REF TO zcl_lnt_position.
          t161 = t52->start.
          t158 = t161.
          t155 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t140 i_end = t158 ).
          t109 = t155.
        ENDIF.
        DATA t165 TYPE string.
        DATA(t166) = |Align pseudo comment to column |.
        DATA t167 TYPE string.
        t167 = |{ t75 }|.
        DATA(t169) = strlen( t166 ).
        t165 = |{ t166 }{ t167 }|.
        DATA t171 TYPE REF TO zcl_lnt_issue.
        CLEAR t171.
        DATA(t175) = VALUE string( ).
        DATA t176 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t176.
        DATA t177 TYPE string.
        t177 = |align_pseudo_comments|.
        DATA t179 TYPE string.
        t179 = |Align pseudo comments|.
        DATA t181 TYPE string.
        t181 = |Align code inspector pseudo comments in statements|.
        DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t183.
        DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t188.
        t187 = t188.
        DATA(t190) = |SingleFile|.
        t187->load( ).
        APPEND t190 TO t187->items.
        t187->save( ).
        DATA(t192) = |Whitespace|.
        t187->load( ).
        APPEND t192 TO t187->items.
        t187->save( ).
        DATA(t194) = |Quickfix|.
        t187->load( ).
        APPEND t194 TO t187->items.
        t187->save( ).
        t183 = t187.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        DATA(t200) = |WRITE 'sdf'. "#EC sdf|.
        DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t201->has = abap_true.
        t201->value = t200.
        t197 = t201.
        DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t203.
        DATA(t206) = |WRITE 'sdf'.                                                |.
        t206 = t206 && |"#EC sdf|.
        DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t207->has = abap_true.
        t207->value = t206.
        t203 = t207.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t209.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        t176 = NEW zcl_lnt_irule_metadata( i_key = t177 i_title = t179 i_short_description = t181 i_bad_example = t197 i_good_example = t203 i_extended_information = t209 i_tags = t183 i_pragma = t211 i_pseudo_comment = t213 ).
        CREATE OBJECT t176->zlnt_view_ownkeys_b0e8086400eb.
        t176->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t215.
        t176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t215 ).
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
        t176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
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
        t233 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t235 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t235.
        t235 = t109.
        DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t240.
        t171 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t11 i_message_26cb = t165 i_key = t175 i_severity = t233 i_fix = t235 i_alternative_fixes = t240 ).
        t2->load( ).
        APPEND t171 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_algn_psd_cmmnts_cnf( me->g_c_i_s_r_al_ps_cm_ts_al_ps_cm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_algn_psd_cmmnts_cnf( me->g_c_i_s_r_al_ps_cm_ts_al_ps_cm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_algn_psd_cmmnts_cnf.
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
        t1 = NEW zcl_lnt_algn_psd_cmmnts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_al_ps_cm_ts_al_ps_cm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_al_ps_cm_ts_al_ps_cm( i_file = i_file ) ).

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
