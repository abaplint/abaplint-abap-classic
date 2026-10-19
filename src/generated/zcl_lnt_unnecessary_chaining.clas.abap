* TS: src/rules/unnecessary_chaining.ts:19:1 UnnecessaryChaining
CLASS zcl_lnt_unnecessary_chaining DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_ch_ts_un_chn RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS st_cn_in_sr_rl_un_ch_ts_un_chn IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_chaining IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_unncssry_chnng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = ||.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |WRITE: bar.|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |WRITE bar.|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |unnecessary_chaining| i_title = |Unnecessary Chaining| i_short_description = |Find unnecessary chaining, all statements are checked| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD gt_cn_in_sr_rl_un_ch_ts_un_chn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_ch_ts_un_chn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ) = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_class.
      DATA t10 TYPE REF TO zcl_lnt_class.
      t10 ?= t2.
      t9 = t10.
      DATA t13 TYPE REF TO zif_lnt_abap_file_information.
      DATA t15 TYPE REF TO zcl_lnt_abap_file.
      t15 = t9->get_main_abap_file( ).
      DATA t18 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t15 IS INITIAL ) = abap_true.
      ELSE.
        t18 = t15->info.
      ENDIF.
      t13 = t18.
      DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t13 IS INITIAL ) = abap_true.
      ELSE.
        DATA t33 TYPE REF TO zif_lnt_abap_file_information.
        t33 = t13.
        DATA t35 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_object.
        t36 = t9.
        t35 = t36->name.
        t28 = t33->get_class_definition_by_name( i_name = t35 ).
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_ddic.
      DATA(t42) = me->reg.
      t41 = NEW zcl_lnt_ddic( i_reg_f149 = t42 ).
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      t45 = me->conf->zlnt_view_read_sr_f1237ade84fb( ).
      t44 = xsdbool( t45 = abap_true ).
      t43 = t44.
      IF t44 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_class.
        t51 ?= t2.
        t43 = t41->is_exception( i_def = t28 i_obj_ac26 = t51 ).
      ENDIF.
      IF t43 = abap_true.
        result = t3.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t54 = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn( ) )->zlnt_view_read_sr_0513be74f25b( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = VALUE abap_bool( ).
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t59 = t54.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = VALUE abap_bool( ).
    IF t59 IS INITIAL.
      t63 = abap_true.
    ELSEIF t59->has = abap_false.
      t63 = abap_true.
    ENDIF.
    t58 = t63.
    t57 = t58.
    IF t58 = abap_false.
      DATA(t67) = t54.
      IF t67->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t57 = xsdbool( t67->value < CONV f( 1 ) ).
    ENDIF.
    IF t57 = abap_true.
      DATA(t72) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t72->has = abap_true.
      t72->value = CONV f( 10 ).
      t54 = t72.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t74 = t1->statements.
    DATA t80 TYPE i.
    t80 = 0.
    DO.
      t74->load( ).
      IF xsdbool( t80 < lines( t74->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t86.
      DATA t89 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t89.
      DATA(t91) = t80.
      t91 = t91 + 1.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      t74->load( ).
      CLEAR t92.
      READ TABLE t74->items INDEX t91 INTO t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      CLEAR t89.
      IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t93 ?= t92.
        DATA t94 TYPE REF TO object.
        t94 = t93->as_ref( ).
        t89 ?= t94.
      ELSE.
        t89 ?= t92.
      ENDIF.
      t86 = t89->colon.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      IF xsdbool( t86 IS INITIAL ) = abap_true.
        DATA(t106) = 1.
        t80 = t80 + t106.
        CONTINUE.
      ENDIF.
      DATA t107 TYPE f.
      t107 = CONV f( 1 ).
      DATA t109 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t110.
      DATA t112 TYPE i.
      DATA t114 TYPE i.
      t114 = t107.
      t112 = t80 + t114.
      t112 = t112 + 1.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      t74->load( ).
      CLEAR t116.
      READ TABLE t74->items INDEX t112 INTO t116.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      CLEAR t110.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t117 ?= t116.
        DATA t118 TYPE REF TO object.
        t118 = t117->as_ref( ).
        t110 ?= t118.
      ELSE.
        t110 ?= t116.
      ENDIF.
      t109 = t110.
      DO.
        DATA t120 TYPE REF TO zif_lnt_statement.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_statement_node.
        t121 = t109.
        DATA t123 TYPE REF TO zif_lnt_statement.
        CLEAR t123.
        IF xsdbool( t121 IS INITIAL ) = abap_true.
          CLEAR t123.
        ELSE.
          t123 = t121->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        ENDIF.
        t120 = t123.
        IF xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_st_comment ) = abap_false.
          EXIT.
        ENDIF.
        DATA(t131) = CONV f( 1 ).
        t107 = t107 + t131.
        DATA t132 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t132.
        DATA(t134) = VALUE i( ).
        DATA t135 TYPE f.
        DATA t136 TYPE f.
        t136 = t80.
        t135 = t136 + t107.
        IF t135 > range_i32_upper.
          t134 = range_i32_upper.
        ELSEIF t135 < range_i32_lower.
          t134 = range_i32_lower.
        ELSE.
          t134 = trunc( t135 ).
        ENDIF.
        t134 = t134 + 1.
        DATA t139 TYPE REF TO object.
        CLEAR t139.
        t74->load( ).
        CLEAR t139.
        READ TABLE t74->items INDEX t134 INTO t139.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        CLEAR t132.
        IF t139 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t140 ?= t139.
          DATA t141 TYPE REF TO object.
          t141 = t140->as_ref( ).
          t132 ?= t141.
        ELSE.
          t132 ?= t139.
        ENDIF.
        t109 = t132.
      ENDDO.
      t107 = CONV f( 1 ).
      DATA t143 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t143.
      DATA t146 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t146.
      DATA t148 TYPE i.
      DATA t150 TYPE i.
      t150 = t107.
      t148 = t80 - t150.
      t148 = t148 + 1.
      DATA t152 TYPE REF TO object.
      CLEAR t152.
      t74->load( ).
      CLEAR t152.
      READ TABLE t74->items INDEX t148 INTO t152.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      CLEAR t146.
      IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t153 ?= t152.
        DATA t154 TYPE REF TO object.
        t154 = t153->as_ref( ).
        t146 ?= t154.
      ELSE.
        t146 ?= t152.
      ENDIF.
      t143 = t146.
      DO.
        DATA t157 TYPE REF TO zif_lnt_statement.
        CLEAR t157.
        DATA t158 TYPE REF TO zcl_lnt_statement_node.
        t158 = t143.
        DATA t161 TYPE REF TO zif_lnt_statement.
        CLEAR t161.
        IF xsdbool( t158 IS INITIAL ) = abap_true.
          CLEAR t161.
        ELSE.
          t161 = t158->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        ENDIF.
        t157 = t161.
        IF xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_comment ) = abap_false.
          EXIT.
        ENDIF.
        DATA(t169) = CONV f( 1 ).
        t107 = t107 + t169.
        DATA t172 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t172.
        DATA(t174) = VALUE i( ).
        DATA t175 TYPE f.
        DATA t176 TYPE f.
        t176 = t80.
        t175 = t176 - t107.
        IF t175 > range_i32_upper.
          t174 = range_i32_upper.
        ELSEIF t175 < range_i32_lower.
          t174 = range_i32_lower.
        ELSE.
          t174 = trunc( t175 ).
        ENDIF.
        t174 = t174 + 1.
        DATA t179 TYPE REF TO object.
        CLEAR t179.
        t74->load( ).
        CLEAR t179.
        READ TABLE t74->items INDEX t174 INTO t179.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        CLEAR t172.
        IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t180 ?= t179.
          DATA t181 TYPE REF TO object.
          t181 = t180->as_ref( ).
          t172 ?= t181.
        ELSE.
          t172 ?= t179.
        ENDIF.
        t143 = t172.
      ENDDO.
      DATA t183 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t183.
      DATA t185 TYPE REF TO zcl_lnt_statement_node.
      t185 = t109.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t187.
      IF xsdbool( t185 IS INITIAL ) = abap_true.
        CLEAR t187.
      ELSE.
        t187 = t185->colon.
      ENDIF.
      t183 = t187.
      DATA t196 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t196.
      DATA t198 TYPE REF TO zcl_lnt_statement_node.
      t198 = t143.
      DATA t201 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t201.
      IF xsdbool( t198 IS INITIAL ) = abap_true.
        CLEAR t201.
      ELSE.
        t201 = t198->colon.
      ENDIF.
      t196 = t201.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = VALUE abap_bool( ).
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t214.
      t211 = xsdbool( xsdbool( t183 IS INITIAL ) = abap_false ).
      t210 = t211.
      IF t211 = abap_true.
        DATA t220 TYPE REF TO zcl_lnt_position.
        t220 = t86->start.
        DATA t226 TYPE REF TO zcl_lnt_position.
        t226 = t183->start.
        t210 = t220->equals( i_p = t226 ).
      ENDIF.
      IF t210 = abap_true.
        DATA(t234) = 1.
        t80 = t80 + t234.
        CONTINUE.
      ELSE.
        DATA(t235) = VALUE abap_bool( ).
        DATA(t236) = VALUE abap_bool( ).
        DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t239.
        t236 = xsdbool( xsdbool( t196 IS INITIAL ) = abap_false ).
        t235 = t236.
        IF t236 = abap_true.
          DATA t245 TYPE REF TO zcl_lnt_position.
          t245 = t86->start.
          DATA t251 TYPE REF TO zcl_lnt_position.
          t251 = t196->start.
          t235 = t245->equals( i_p = t251 ).
        ENDIF.
        IF t235 = abap_true.
          DATA(t259) = 1.
          t80 = t80 + t259.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t261 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t263 TYPE REF TO zcl_lnt_position.
      t263 = t86->start.
      DATA t270 TYPE REF TO zcl_lnt_abstract_token.
      t270 = t86.
      DATA t274 TYPE f.
      t274 = t270->start->row.
      DATA t281 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t281 = t270->start->col.
      DATA t287 TYPE f.
      t287 = strlen( t270->str ).
      DATA(t292) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t292->has = abap_true.
      t292->value = t287.
      t261 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t263 i_end = NEW zcl_lnt_position( i_row = t274 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t281 right = t292 op = `+` ) ) ).
      DATA t296 TYPE REF TO zcl_lnt_issue.
      CLEAR t296.
      DATA t298 TYPE REF TO zcl_lnt_abstract_token.
      t298 = t86.
      DATA(t301) = VALUE string( ).
      DATA t302 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t302.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t309.
      DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t313->has = abap_true.
      t313->value = ||.
      t309 = t313.
      DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t315.
      DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t319.
      t319->load( ).
      APPEND |SingleFile| TO t319->items.
      t319->save( ).
      t319->load( ).
      APPEND |Quickfix| TO t319->items.
      t319->save( ).
      t315 = t319.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t327.
      DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t331->has = abap_true.
      t331->value = |WRITE: bar.|.
      t327 = t331.
      DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t333.
      DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t337->has = abap_true.
      t337->value = |WRITE bar.|.
      t333 = t337.
      DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t339.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t341.
      t302 = NEW zcl_lnt_irule_metadata( i_key = |unnecessary_chaining| i_title = |Unnecessary Chaining| i_short_description = |Find unnecessary chaining, all statements are checked| i_bad_example = t327 i_good_example = t333 i_extended_information = t309 i_tags = t315 i_pragma = t339 i_pseudo_comment = t341 ).
      CREATE OBJECT t302->zlnt_view_ownkeys_b0e8086400eb.
      t302->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t343.
      t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t343 ).
      DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t344.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t344 ).
      ENDIF.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t345.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t345 ).
      ENDIF.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t346.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t346 ).
      ENDIF.
      DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t347.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t347 ).
      ENDIF.
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t348.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t348 ).
      ENDIF.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t349.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t349 ).
      ENDIF.
      CREATE OBJECT t302->zlnt_json_ownkeys_70e5fd461788.
      t302->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t351 ).
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t353 ).
      ENDIF.
      DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t355.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t355 ).
      ENDIF.
      DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t357.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t357 ).
      ENDIF.
      DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t359.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t359 ).
      ENDIF.
      DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t361.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t361 ).
      ENDIF.
      DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t363.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t363 ).
      ENDIF.
      t301 = t302->key.
      t296 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t298 i_message_26cb = |Unnecessary chaining| i_key = t301 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t261 ).
      t3->load( ).
      APPEND t296 TO t3->items.
      t3->save( ).
      DATA t373 TYPE f.
      t3->load( ).
      t373 = lines( t3->items ).
      IF t54->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF xsdbool( t373 >= t54->value ) = abap_true.
        EXIT.
      ENDIF.
      DATA(t380) = 1.
      t80 = t80 + t380.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_unncssry_chnng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_ch_ts_un_chn( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1742_357e9d8cda6c.
  ENDMETHOD.
ENDCLASS.
