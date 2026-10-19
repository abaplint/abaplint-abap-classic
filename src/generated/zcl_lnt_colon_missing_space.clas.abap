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
    DATA t2 TYPE string.
    t2 = |colon_missing_space|.
    DATA t4 TYPE string.
    t4 = |Colon missing space|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for missing spaces after colons in chained statements|.
    t7 = t7 && |.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Whitespace|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Quickfix|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    DATA(t19) = |SingleFile|.
    t12->load( ).
    APPEND t19 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = |WRITE:hello, world.|.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t25.
    t22 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |WRITE: hello, world.|.
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
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->statements.
    t4 = t7.
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
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      t18 = t9->colon.
      t14 = t18.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t22 = xsdbool( t14 IS INITIAL ).
      t21 = t22.
      IF t22 = abap_false.
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE REF TO zif_lnt_statement.
        t30 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_native_sql ).
        t21 = t29.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE REF TO zif_lnt_statement.
        t33 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_st_comment ).
        t20 = t32.
      ENDIF.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t42 = t9->get_tokens( ).
      t40 = t38->concat( p0 = t42 ).
      t35 = t40.
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
        DATA t53 TYPE abap_bool.
        DATA t55 TYPE i.
        t49->load( ).
        t55 = lines( t49->items ).
        t53 = xsdbool( t51 < t55 ).
        IF t53 = abap_false.
          EXIT.
        ENDIF.
        DATA t57 TYPE i.
        t57 = t51.
        DO.
          DATA t59 TYPE abap_bool.
          DATA(t61) = 0.
          t59 = xsdbool( t57 > t61 ).
          IF t59 = abap_false.
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
          DATA(t78) = VALUE abap_bool( ).
          DATA(t79) = VALUE i( ).
          DATA t80 TYPE abap_bool.
          DATA t81 TYPE REF TO zcl_lnt_position.
          DATA t84 TYPE REF TO zcl_lnt_position.
          t84 = t63->start.
          t81 = t84.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA t89 TYPE REF TO zcl_lnt_position.
          t89 = t72->start.
          t86 = t89.
          t80 = t81->is_after( i_p = t86 ).
          IF t80 = abap_true.
            t79 = 1.
          ELSE.
            t79 = -1.
          ENDIF.
          DATA(t93) = 0.
          t78 = xsdbool( t79 > t93 ).
          IF t78 = abap_true.
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
            DATA t116 TYPE i.
            DATA(t118) = 1.
            t116 = t57 - t118.
            t57 = t116.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA t119 TYPE i.
        DATA(t121) = 1.
        t119 = t51 + t121.
        t51 = t119.
      ENDDO.
      t48 = t49.
      DATA t123 TYPE i.
      t123 = 0.
      DO.
        DATA t125 TYPE abap_bool.
        DATA t127 TYPE i.
        t35->load( ).
        t127 = lines( t35->items ).
        t125 = xsdbool( t123 < t127 ).
        IF t125 = abap_false.
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
        DATA t140 TYPE string.
        DATA t143 TYPE string.
        t143 = t129->str.
        t140 = t143.
        DATA(t145) = |:|.
        t139 = xsdbool( t140 = t145 ).
        t138 = t139.
        IF t139 = abap_true.
          DATA(t146) = VALUE abap_bool( ).
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
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = xsdbool( t148 IS INITIAL ).
          t158 = xsdbool( t159 = abap_false ).
          t146 = t158.
          t138 = t146.
        ENDIF.
        t137 = t138.
        IF t138 = abap_true.
          DATA(t161) = VALUE abap_bool( ).
          DATA(t162) = VALUE f( ).
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
          DATA t174 TYPE REF TO zcl_lnt_position.
          t174 = t164->start.
          DATA t176 TYPE f.
          t176 = t174->row.
          t162 = t176.
          DATA t178 TYPE f.
          DATA t183 TYPE REF TO zcl_lnt_position.
          t183 = t129->start.
          DATA t185 TYPE f.
          t185 = t183->row.
          t178 = t185.
          t161 = xsdbool( t162 = t178 ).
          t137 = t161.
        ENDIF.
        t136 = t137.
        IF t137 = abap_true.
          DATA(t187) = VALUE abap_bool( ).
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
          DATA t200 TYPE REF TO zcl_lnt_position.
          t200 = t190->start.
          DATA t202 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t202 = t200->col.
          t188 = t202.
          DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t205 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t210 TYPE REF TO zcl_lnt_position.
          t210 = t129->start.
          DATA t212 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t212 = t210->col.
          t205 = t212.
          DATA(t214) = CONV f( 1 ).
          DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t215->has = abap_true.
          t215->value = t214.
          t204 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t205 right = t215 op = `+` ).
          t187 = zlnt_runtime_numb_290eb04a9758=>compare( left = t188 right = t204 op = `==` ).
          t136 = t187.
        ENDIF.
        IF t136 = abap_true.
          DATA t216 TYPE REF TO zcl_lnt_position.
          DATA t220 TYPE REF TO zcl_lnt_position.
          t220 = t129->start.
          t216 = t220.
          DATA t222 TYPE REF TO zcl_lnt_position.
          DATA t223 TYPE REF TO zcl_lnt_position.
          DATA t224 TYPE f.
          DATA t227 TYPE f.
          t227 = t216->row.
          t224 = t227.
          DATA t229 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t230 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t233 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t233 = t216->col.
          t230 = t233.
          DATA(t235) = CONV f( 1 ).
          DATA(t236) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t236->has = abap_true.
          t236->value = t235.
          t229 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t230 right = t236 op = `+` ).
          t223 = NEW zcl_lnt_position( i_row = t224 i_col = t229 ).
          t222 = t223.
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t241) = | |.
          t238 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t222 i_text = t241 ).
          DATA t243 TYPE REF TO zcl_lnt_issue.
          CLEAR t243.
          DATA(t247) = |Missing space after the colon|.
          DATA(t248) = VALUE string( ).
          DATA t249 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t249.
          DATA t250 TYPE string.
          t250 = |colon_missing_space|.
          DATA t252 TYPE string.
          t252 = |Colon missing space|.
          DATA t254 TYPE string.
          DATA(t255) = |Checks for missing spaces after colons in chained statements|.
          t255 = t255 && |.|.
          t254 = t255.
          DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t256.
          DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t261.
          t260 = t261.
          DATA(t263) = |Whitespace|.
          t260->load( ).
          APPEND t263 TO t260->items.
          t260->save( ).
          DATA(t265) = |Quickfix|.
          t260->load( ).
          APPEND t265 TO t260->items.
          t260->save( ).
          DATA(t267) = |SingleFile|.
          t260->load( ).
          APPEND t267 TO t260->items.
          t260->save( ).
          t256 = t260.
          DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t270.
          DATA(t273) = |WRITE:hello, world.|.
          DATA(t274) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t274->has = abap_true.
          t274->value = t273.
          t270 = t274.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          DATA(t279) = |WRITE: hello, world.|.
          DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t280->has = abap_true.
          t280->value = t279.
          t276 = t280.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t282.
          DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t284.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          t249 = NEW zcl_lnt_irule_metadata( i_key = t250 i_title = t252 i_short_description = t254 i_bad_example = t270 i_good_example = t276 i_extended_information = t282 i_tags = t256 i_pragma = t284 i_pseudo_comment = t286 ).
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
          DATA(t294) = |key|.
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
          DATA(t296) = |title|.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
          ENDIF.
          DATA(t298) = |shortDescription|.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t298 p1 = t299 ).
          ENDIF.
          DATA(t300) = |tags|.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t300 p1 = t301 ).
          ENDIF.
          DATA(t302) = |badExample|.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t302 p1 = t303 ).
          ENDIF.
          DATA(t304) = |goodExample|.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t304 p1 = t305 ).
          ENDIF.
          t248 = t249->key.
          DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t306 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t308 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t308.
          t308 = t238.
          DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t312.
          t243 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t216 i_end = t222 i_message_26cb = t247 i_key = t248 i_severity = t306 i_fix = t308 i_alternative_fixes = t312 ).
          t2->load( ).
          APPEND t243 TO t2->items.
          t2->save( ).
        ENDIF.
        DATA t315 TYPE i.
        DATA(t317) = 1.
        t315 = t123 + t317.
        t123 = t315.
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
