* TS: src/rules/begin_single_include.ts:12:1 BeginSingleInclude
CLASS zcl_lnt_begin_single_include DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_bg_sn_in_ts_bg_sn_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS s_c_i_s_r_bg_sn_in_ts_bg_sn_in IMPORTING i_conf TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS r_p_i_s_r_bg_sn_in_ts_bg_sn_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_begin_single_include IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_bgn_sngl_incld_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |begin_single_include|.
    DATA t4 TYPE string.
    t4 = |BEGIN contains single INCLUDE|.
    DATA t6 TYPE string.
    DATA(t7) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
    t7 = t7 && |ingle INCLUDE STRUCTURE|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
    t21 = t21 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
    t21 = t21 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
    t21 = t21 && |ICS END OF bar.|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
    t27 = t27 && |dselc.\nDATA END OF foo.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_bg_sn_in_ts_bg_sn_in.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_bg_sn_in_ts_bg_sn_in.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_bg_sn_in_ts_bg_sn_in.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t18 = t19->find_all_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE i.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t31 TYPE REF TO zcl_lnt_abstract_node.
      t31 = t22.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t33 = t31->children.
      t30 = t33.
      t29 ?= t30.
      t29->load( ).
      t28 = lines( t29->items ).
      DATA(t35) = 3.
      t27 = xsdbool( t28 <> t35 ).
      IF t27 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE REF TO zcl_lnt_statement_node.
      DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t37 = t22->find_first_statement( i_type_9913 = t39 ).
      t36 = xsdbool( t37 IS BOUND ).
      IF t36 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        t41 = t22->get_first_token( ).
        DATA(t44) = |TYPE BEGIN with single INCLUDE|.
        DATA t46 TYPE REF TO zcl_lnt_issue.
        CLEAR t46.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t51.
        DATA t52 TYPE string.
        t52 = |begin_single_include|.
        DATA t54 TYPE string.
        t54 = |BEGIN contains single INCLUDE|.
        DATA t56 TYPE string.
        DATA(t57) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
        t57 = t57 && |ingle INCLUDE STRUCTURE|.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t63.
        t62 = t63.
        DATA(t65) = |SingleFile|.
        t62->load( ).
        APPEND t65 TO t62->items.
        t62->save( ).
        t58 = t62.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t71) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
        t71 = t71 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
        t71 = t71 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
        t71 = t71 && |ICS END OF bar.|.
        DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t72->has = abap_true.
        t72->value = t71.
        t68 = t72.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t77) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
        t77 = t77 && |dselc.\nDATA END OF foo.|.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = t77.
        t74 = t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t51 = NEW zcl_lnt_irule_metadata( i_key = t52 i_title = t54 i_short_description = t56 i_bad_example = t68 i_good_example = t74 i_extended_information = t80 i_tags = t58 i_pragma = t82 i_pseudo_comment = t84 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t86 ).
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t88 ).
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
        t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t92) = |key|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        DATA(t94) = |title|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        DATA(t96) = |shortDescription|.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
        ENDIF.
        DATA(t98) = |tags|.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
        ENDIF.
        DATA(t100) = |badExample|.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
        ENDIF.
        DATA(t102) = |goodExample|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        t50 = t51->key.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t104 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t106.
        t46 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t41 i_message_26cb = t44 i_key = t50 i_severity = t104 i_fix = t106 ).
        t2->load( ).
        APPEND t46 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t110 TYPE REF TO zcl_lnt_structure_node.
    t110 = t4.
    DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t109 = t110->find_all_structures( i_type_9913 = t112 ).
    DATA t113 TYPE REF TO zcl_lnt_structure_node.
    DATA t114 TYPE REF TO object.
    DATA(t115) = VALUE i( ).
    DO.
      t109->load( ).
      IF t115 >= lines( t109->items ).
        EXIT.
      ENDIF.
      CLEAR t114.
      READ TABLE t109->items INDEX t115 + 1 INTO t114.
      t115 = t115 + 1.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      CLEAR t113.
      IF t114 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t116 ?= t114.
        DATA t117 TYPE REF TO object.
        t117 = t116->as_ref( ).
        t113 ?= t117.
      ELSE.
        t113 ?= t114.
      ENDIF.
      DATA t118 TYPE abap_bool.
      DATA t119 TYPE i.
      DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t122 TYPE REF TO zcl_lnt_abstract_node.
      t122 = t113.
      DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t124 = t122->children.
      t121 = t124.
      t120 ?= t121.
      t120->load( ).
      t119 = lines( t120->items ).
      DATA(t126) = 3.
      t118 = xsdbool( t119 <> t126 ).
      IF t118 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t128 TYPE REF TO zcl_lnt_statement_node.
      DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
      t128 = t113->find_first_statement( i_type_9913 = t130 ).
      DATA(t131) = VALUE abap_bool( ).
      DATA t132 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t132.
      DATA t133 TYPE REF TO zcl_lnt_statement_node.
      t133 = t128.
      DATA t135 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t135.
      DATA(t136) = xsdbool( t133 IS INITIAL ).
      IF t136 = abap_true.
        CLEAR t135.
      ELSE.
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        DATA t140 TYPE REF TO zcl_lnt_statement_node.
        t140 = t133.
        DATA(t142) = |OCCURS|.
        t139 = t140->find_direct_token_by_text( i_text = t142 ).
        t135 = t139.
      ENDIF.
      t132 = t135.
      t131 = xsdbool( t132 IS BOUND ).
      IF t131 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE REF TO zcl_lnt_statement_node.
      DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t144 = t113->find_first_statement( i_type_9913 = t146 ).
      t143 = xsdbool( t144 IS BOUND ).
      IF t143 = abap_true.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        t148 = t113->get_first_token( ).
        DATA(t151) = |DATA BEGIN with single INCLUDE|.
        DATA t153 TYPE REF TO zcl_lnt_issue.
        CLEAR t153.
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t158.
        DATA t159 TYPE string.
        t159 = |begin_single_include|.
        DATA t161 TYPE string.
        t161 = |BEGIN contains single INCLUDE|.
        DATA t163 TYPE string.
        DATA(t164) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
        t164 = t164 && |ingle INCLUDE STRUCTURE|.
        t163 = t164.
        DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t165.
        DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t170.
        t169 = t170.
        DATA(t172) = |SingleFile|.
        t169->load( ).
        APPEND t172 TO t169->items.
        t169->save( ).
        t165 = t169.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        DATA(t178) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
        t178 = t178 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
        t178 = t178 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
        t178 = t178 && |ICS END OF bar.|.
        DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t179->has = abap_true.
        t179->value = t178.
        t175 = t179.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA(t184) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
        t184 = t184 && |dselc.\nDATA END OF foo.|.
        DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t185->has = abap_true.
        t185->value = t184.
        t181 = t185.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        t158 = NEW zcl_lnt_irule_metadata( i_key = t159 i_title = t161 i_short_description = t163 i_bad_example = t175 i_good_example = t181 i_extended_information = t187 i_tags = t165 i_pragma = t189 i_pseudo_comment = t191 ).
        CREATE OBJECT t158->zlnt_view_ownkeys_b0e8086400eb.
        t158->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t193 ).
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t194 ).
        ENDIF.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t195 ).
        ENDIF.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t196 ).
        ENDIF.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
        ENDIF.
        CREATE OBJECT t158->zlnt_json_ownkeys_70e5fd461788.
        t158->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t199) = |key|.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
        DATA(t201) = |title|.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
        ENDIF.
        DATA(t203) = |shortDescription|.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
        ENDIF.
        DATA(t205) = |tags|.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
        ENDIF.
        DATA(t207) = |badExample|.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
        ENDIF.
        DATA(t209) = |goodExample|.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
        ENDIF.
        t157 = t158->key.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t211 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t213.
        t153 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t148 i_message_26cb = t151 i_key = t157 i_severity = t211 i_fix = t213 ).
        t2->load( ).
        APPEND t153 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t217 TYPE REF TO zcl_lnt_structure_node.
    t217 = t4.
    DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d750_2d45c5b37c94.
    t216 = t217->find_all_structures( i_type_9913 = t219 ).
    DATA t220 TYPE REF TO zcl_lnt_structure_node.
    DATA t221 TYPE REF TO object.
    DATA(t222) = VALUE i( ).
    DO.
      t216->load( ).
      IF t222 >= lines( t216->items ).
        EXIT.
      ENDIF.
      CLEAR t221.
      READ TABLE t216->items INDEX t222 + 1 INTO t221.
      t222 = t222 + 1.
      DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t223.
      CLEAR t220.
      IF t221 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t223 ?= t221.
        DATA t224 TYPE REF TO object.
        t224 = t223->as_ref( ).
        t220 ?= t224.
      ELSE.
        t220 ?= t221.
      ENDIF.
      DATA t225 TYPE abap_bool.
      DATA t226 TYPE i.
      DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t229 TYPE REF TO zcl_lnt_abstract_node.
      t229 = t220.
      DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t231 = t229->children.
      t228 = t231.
      t227 ?= t228.
      t227->load( ).
      t226 = lines( t227->items ).
      DATA(t233) = 3.
      t225 = xsdbool( t226 <> t233 ).
      IF t225 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t234 TYPE abap_bool.
      DATA t235 TYPE REF TO zcl_lnt_statement_node.
      DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t235 = t220->find_first_statement( i_type_9913 = t237 ).
      t234 = xsdbool( t235 IS BOUND ).
      IF t234 = abap_true.
        DATA t239 TYPE REF TO zcl_lnt_abstract_token.
        t239 = t220->get_first_token( ).
        DATA(t242) = |STATICS BEGIN with single INCLUDE|.
        DATA t244 TYPE REF TO zcl_lnt_issue.
        CLEAR t244.
        DATA(t248) = VALUE string( ).
        DATA t249 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t249.
        DATA t250 TYPE string.
        t250 = |begin_single_include|.
        DATA t252 TYPE string.
        t252 = |BEGIN contains single INCLUDE|.
        DATA t254 TYPE string.
        DATA(t255) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
        t255 = t255 && |ingle INCLUDE STRUCTURE|.
        t254 = t255.
        DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t256.
        DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t261.
        t260 = t261.
        DATA(t263) = |SingleFile|.
        t260->load( ).
        APPEND t263 TO t260->items.
        t260->save( ).
        t256 = t260.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        DATA(t269) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
        t269 = t269 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
        t269 = t269 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
        t269 = t269 && |ICS END OF bar.|.
        DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t270->has = abap_true.
        t270->value = t269.
        t266 = t270.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA(t275) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
        t275 = t275 && |dselc.\nDATA END OF foo.|.
        DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t276->has = abap_true.
        t276->value = t275.
        t272 = t276.
        DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t278.
        DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t280.
        DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t282.
        t249 = NEW zcl_lnt_irule_metadata( i_key = t250 i_title = t252 i_short_description = t254 i_bad_example = t266 i_good_example = t272 i_extended_information = t278 i_tags = t256 i_pragma = t280 i_pseudo_comment = t282 ).
        CREATE OBJECT t249->zlnt_view_ownkeys_b0e8086400eb.
        t249->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t284 ).
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t285 ).
        ENDIF.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t286 ).
        ENDIF.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t287 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t288 ).
        ENDIF.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t289 ).
        ENDIF.
        CREATE OBJECT t249->zlnt_json_ownkeys_70e5fd461788.
        t249->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t290) = |key|.
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
        DATA(t292) = |title|.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
        ENDIF.
        DATA(t294) = |shortDescription|.
        DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t295.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
        ENDIF.
        DATA(t296) = |tags|.
        DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t297.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
        ENDIF.
        DATA(t298) = |badExample|.
        DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t299.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t298 p1 = t299 ).
        ENDIF.
        DATA(t300) = |goodExample|.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t301.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t300 p1 = t301 ).
        ENDIF.
        t248 = t249->key.
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t302 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t304 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t304.
        t244 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t239 i_message_26cb = t242 i_key = t248 i_severity = t302 i_fix = t304 ).
        t2->load( ).
        APPEND t244 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_bgn_sngl_incld_cnf( me->g_c_i_s_r_bg_sn_in_ts_bg_sn_in( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_bgn_sngl_incld_cnf( me->g_c_i_s_r_bg_sn_in_ts_bg_sn_in( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
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
        t1 = NEW zcl_lnt_bgn_sngl_incld_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_bg_sn_in_ts_bg_sn_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_bg_sn_in_ts_bg_sn_in( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1410_14fefc162dda.
  ENDMETHOD.
ENDCLASS.
