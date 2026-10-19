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
    DATA t2 TYPE string.
    t2 = |unnecessary_chaining|.
    DATA t4 TYPE string.
    t4 = |Unnecessary Chaining|.
    DATA t6 TYPE string.
    t6 = |Find unnecessary chaining, all statements are checked|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = ||.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |WRITE: bar.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |WRITE bar.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
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
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_class.
      DATA t10 TYPE REF TO zcl_lnt_class.
      t10 ?= t2.
      t9 = t10.
      DATA t13 TYPE REF TO zif_lnt_abap_file_information.
      DATA t15 TYPE REF TO zcl_lnt_abap_file.
      DATA t16 TYPE REF TO zcl_lnt_abap_file.
      t16 = t9->get_main_abap_file( ).
      t15 = t16.
      DATA t18 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t19) = xsdbool( t15 IS INITIAL ).
      IF t19 = abap_true.
      ELSE.
        DATA t26 TYPE REF TO zif_lnt_abap_file_information.
        t26 = t15->info.
        t18 = t26.
      ENDIF.
      t13 = t18.
      DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t29) = xsdbool( t13 IS INITIAL ).
      IF t29 = abap_true.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t33 TYPE REF TO zif_lnt_abap_file_information.
        t33 = t13.
        DATA t35 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_object.
        t36 = t9.
        DATA t38 TYPE string.
        t38 = t36->name.
        t35 = t38.
        t32 = t33->get_class_definition_by_name( i_name = t35 ).
        t28 = t32.
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
        DATA t48 TYPE abap_bool.
        DATA t51 TYPE REF TO zcl_lnt_class.
        t51 ?= t2.
        t48 = t41->is_exception( i_def = t28 i_obj_ac26 = t51 ).
        t43 = t48.
      ENDIF.
      IF t43 = abap_true.
        result = t3.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t56) = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn( ) ).
    t55 = t56->zlnt_view_read_sr_0513be74f25b( ).
    t54 = t55.
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
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE f( ).
      DATA(t67) = t54.
      IF t67->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t66 = t67->value.
      DATA(t68) = CONV f( 1 ).
      t65 = xsdbool( t66 < t68 ).
      t57 = t65.
    ENDIF.
    IF t57 = abap_true.
      DATA(t71) = CONV f( 10 ).
      DATA(t72) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t72->has = abap_true.
      t72->value = t71.
      t54 = t72.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t78 = t1->statements.
    t74 = t78.
    DATA t80 TYPE i.
    t80 = 0.
    DO.
      DATA t82 TYPE abap_bool.
      DATA t84 TYPE i.
      t74->load( ).
      t84 = lines( t74->items ).
      t82 = xsdbool( t80 < t84 ).
      IF t82 = abap_false.
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
      DATA t95 TYPE REF TO zcl_lnt_abstract_token.
      t95 = t89->colon.
      t86 = t95.
      DATA(t97) = VALUE abap_bool( ).
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      t97 = xsdbool( t86 IS INITIAL ).
      IF t97 = abap_true.
        DATA t104 TYPE i.
        DATA(t106) = 1.
        t104 = t80 + t106.
        t80 = t104.
        CONTINUE.
      ENDIF.
      DATA t107 TYPE f.
      DATA(t108) = CONV f( 1 ).
      t107 = t108.
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
        DATA(t119) = VALUE abap_bool( ).
        DATA t120 TYPE REF TO zif_lnt_statement.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_statement_node.
        t121 = t109.
        DATA t123 TYPE REF TO zif_lnt_statement.
        CLEAR t123.
        DATA(t124) = xsdbool( t121 IS INITIAL ).
        IF t124 = abap_true.
          CLEAR t123.
        ELSE.
          DATA t127 TYPE REF TO zif_lnt_statement.
          t127 = t121->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t123 = t127.
        ENDIF.
        t120 = t123.
        t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t119 = abap_false.
          EXIT.
        ENDIF.
        DATA t129 TYPE f.
        DATA(t131) = CONV f( 1 ).
        t129 = t107 + t131.
        t107 = t129.
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
      DATA(t142) = CONV f( 1 ).
      t107 = t142.
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
        DATA(t156) = VALUE abap_bool( ).
        DATA t157 TYPE REF TO zif_lnt_statement.
        CLEAR t157.
        DATA t158 TYPE REF TO zcl_lnt_statement_node.
        t158 = t143.
        DATA t161 TYPE REF TO zif_lnt_statement.
        CLEAR t161.
        DATA(t162) = xsdbool( t158 IS INITIAL ).
        IF t162 = abap_true.
          CLEAR t161.
        ELSE.
          DATA t165 TYPE REF TO zif_lnt_statement.
          t165 = t158->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t161 = t165.
        ENDIF.
        t157 = t161.
        t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t156 = abap_false.
          EXIT.
        ENDIF.
        DATA t167 TYPE f.
        DATA(t169) = CONV f( 1 ).
        t167 = t107 + t169.
        t107 = t167.
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
      DATA(t188) = xsdbool( t185 IS INITIAL ).
      IF t188 = abap_true.
        CLEAR t187.
      ELSE.
        DATA t194 TYPE REF TO zcl_lnt_abstract_token.
        t194 = t185->colon.
        t187 = t194.
      ENDIF.
      t183 = t187.
      DATA t196 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t196.
      DATA t198 TYPE REF TO zcl_lnt_statement_node.
      t198 = t143.
      DATA t201 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t201.
      DATA(t202) = xsdbool( t198 IS INITIAL ).
      IF t202 = abap_true.
        CLEAR t201.
      ELSE.
        DATA t208 TYPE REF TO zcl_lnt_abstract_token.
        t208 = t198->colon.
        t201 = t208.
      ENDIF.
      t196 = t201.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = VALUE abap_bool( ).
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t214.
      DATA(t216) = VALUE abap_bool( ).
      DATA(t217) = xsdbool( t183 IS INITIAL ).
      t216 = xsdbool( t217 = abap_false ).
      t211 = t216.
      t210 = t211.
      IF t211 = abap_true.
        DATA t219 TYPE abap_bool.
        DATA t220 TYPE REF TO zcl_lnt_position.
        DATA t224 TYPE REF TO zcl_lnt_position.
        t224 = t86->start.
        t220 = t224.
        DATA t226 TYPE REF TO zcl_lnt_position.
        DATA t230 TYPE REF TO zcl_lnt_position.
        t230 = t183->start.
        t226 = t230.
        t219 = t220->equals( i_p = t226 ).
        t210 = t219.
      ENDIF.
      IF t210 = abap_true.
        DATA t232 TYPE i.
        DATA(t234) = 1.
        t232 = t80 + t234.
        t80 = t232.
        CONTINUE.
      ELSE.
        DATA(t235) = VALUE abap_bool( ).
        DATA(t236) = VALUE abap_bool( ).
        DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t239.
        DATA(t241) = VALUE abap_bool( ).
        DATA(t242) = xsdbool( t196 IS INITIAL ).
        t241 = xsdbool( t242 = abap_false ).
        t236 = t241.
        t235 = t236.
        IF t236 = abap_true.
          DATA t244 TYPE abap_bool.
          DATA t245 TYPE REF TO zcl_lnt_position.
          DATA t249 TYPE REF TO zcl_lnt_position.
          t249 = t86->start.
          t245 = t249.
          DATA t251 TYPE REF TO zcl_lnt_position.
          DATA t255 TYPE REF TO zcl_lnt_position.
          t255 = t196->start.
          t251 = t255.
          t244 = t245->equals( i_p = t251 ).
          t235 = t244.
        ENDIF.
        IF t235 = abap_true.
          DATA t257 TYPE i.
          DATA(t259) = 1.
          t257 = t80 + t259.
          t80 = t257.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t261 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t263 TYPE REF TO zcl_lnt_position.
      DATA t267 TYPE REF TO zcl_lnt_position.
      t267 = t86->start.
      t263 = t267.
      DATA t269 TYPE REF TO zcl_lnt_position.
      DATA t270 TYPE REF TO zcl_lnt_abstract_token.
      t270 = t86.
      DATA t273 TYPE REF TO zcl_lnt_position.
      DATA t274 TYPE f.
      DATA t276 TYPE REF TO zcl_lnt_position.
      t276 = t270->start.
      DATA t278 TYPE f.
      t278 = t276->row.
      t274 = t278.
      DATA t280 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t281 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t283 TYPE REF TO zcl_lnt_position.
      t283 = t270->start.
      DATA t285 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t285 = t283->col.
      t281 = t285.
      DATA t287 TYPE f.
      DATA t289 TYPE string.
      t289 = t270->str.
      t287 = strlen( t289 ).
      DATA(t292) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t292->has = abap_true.
      t292->value = t287.
      t280 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t281 right = t292 op = `+` ).
      t273 = NEW zcl_lnt_position( i_row = t274 i_col = t280 ).
      t269 = t273.
      t261 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t263 i_end = t269 ).
      DATA(t294) = |Unnecessary chaining|.
      DATA t296 TYPE REF TO zcl_lnt_issue.
      CLEAR t296.
      DATA t298 TYPE REF TO zcl_lnt_abstract_token.
      t298 = t86.
      DATA(t301) = VALUE string( ).
      DATA t302 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t302.
      DATA t303 TYPE string.
      t303 = |unnecessary_chaining|.
      DATA t305 TYPE string.
      t305 = |Unnecessary Chaining|.
      DATA t307 TYPE string.
      t307 = |Find unnecessary chaining, all statements are checked|.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t309.
      DATA(t312) = ||.
      DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t313->has = abap_true.
      t313->value = t312.
      t309 = t313.
      DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t315.
      DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t320.
      t319 = t320.
      DATA(t322) = |SingleFile|.
      t319->load( ).
      APPEND t322 TO t319->items.
      t319->save( ).
      DATA(t324) = |Quickfix|.
      t319->load( ).
      APPEND t324 TO t319->items.
      t319->save( ).
      t315 = t319.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t327.
      DATA(t330) = |WRITE: bar.|.
      DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t331->has = abap_true.
      t331->value = t330.
      t327 = t331.
      DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t333.
      DATA(t336) = |WRITE bar.|.
      DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t337->has = abap_true.
      t337->value = t336.
      t333 = t337.
      DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t339.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t341.
      t302 = NEW zcl_lnt_irule_metadata( i_key = t303 i_title = t305 i_short_description = t307 i_bad_example = t327 i_good_example = t333 i_extended_information = t309 i_tags = t315 i_pragma = t339 i_pseudo_comment = t341 ).
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
      DATA(t350) = |key|.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
      DATA(t352) = |title|.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
      ENDIF.
      DATA(t354) = |shortDescription|.
      DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t355.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
      ENDIF.
      DATA(t356) = |extendedInformation|.
      DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t357.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
      ENDIF.
      DATA(t358) = |tags|.
      DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t359.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
      ENDIF.
      DATA(t360) = |badExample|.
      DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t361.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t360 p1 = t361 ).
      ENDIF.
      DATA(t362) = |goodExample|.
      DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t363.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t362 p1 = t363 ).
      ENDIF.
      t301 = t302->key.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t364 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t366 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t366.
      t366 = t261.
      t296 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t298 i_message_26cb = t294 i_key = t301 i_severity = t364 i_fix = t366 ).
      t3->load( ).
      APPEND t296 TO t3->items.
      t3->save( ).
      DATA(t372) = VALUE abap_bool( ).
      DATA t373 TYPE f.
      DATA t374 TYPE i.
      t3->load( ).
      t374 = lines( t3->items ).
      t373 = t374.
      DATA(t376) = VALUE f( ).
      IF t54->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t376 = t54->value.
      t372 = xsdbool( t373 >= t376 ).
      IF t372 = abap_true.
        EXIT.
      ENDIF.
      DATA t378 TYPE i.
      DATA(t380) = 1.
      t378 = t80 + t380.
      t80 = t378.
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
