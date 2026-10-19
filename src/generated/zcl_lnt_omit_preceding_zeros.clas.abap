* TS: src/rules/omit_preceding_zeros.ts:13:1 OmitPrecedingZeros
CLASS zcl_lnt_omit_preceding_zeros DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_om_pr_zr_ts_om_pr_zr RETURNING VALUE(result) TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
    METHODS s_c_i_s_r_om_pr_zr_ts_om_pr_zr IMPORTING i_conf TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
    METHODS r_p_i_s_r_om_pr_zr_ts_om_pr_zr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_omit_preceding_zeros IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_omt_prcdng_zrs_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |int = -001.|.
    t20 = t24.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |int = -1.|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |omit_preceding_zeros| i_title = |Omit preceding zeros| i_short_description = |Omit preceding zeros from integer constants| i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_om_pr_zr_ts_om_pr_zr.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_om_pr_zr_ts_om_pr_zr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_om_pr_zr_ts_om_pr_zr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE string.
    t4 = |Omit preceding zeros|.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->statements.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
      t16 = t11->find_all_expressions( i_type_9913 = t18 ).
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      DATA(t21) = VALUE i( ).
      DO.
        t16->load( ).
        IF t21 >= lines( t16->items ).
          EXIT.
        ENDIF.
        CLEAR t20.
        READ TABLE t16->items INDEX t21 + 1 INTO t20.
        t21 = t21 + 1.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        CLEAR t19.
        IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t22 ?= t20.
          DATA t23 TYPE REF TO object.
          t23 = t22->as_ref( ).
          t19 ?= t23.
        ELSE.
          t19 ?= t20.
        ENDIF.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        t24 = t19->get_last_token( ).
        DATA t27 TYPE string.
        t27 = t24->str.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE abap_bool.
        t34 = xsdbool( strlen( t27 ) > 1 ).
        t33 = t34.
        IF t34 = abap_true.
          DATA(t39) = VALUE abap_bool( ).
          DATA(t41) = |0|.
          DATA(t42) = strlen( t27 ).
          DATA t43 TYPE i.
          DATA(t44) = VALUE i( ).
          DATA(t45) = VALUE string( ).
          t43 = strlen( t41 ).
          IF t43 = 0.
            t39 = abap_true.
          ELSEIF t43 <= t42.
            t44 = 0.
            t45 = t27+t44(t43).
            IF t45 = t41.
              t39 = abap_true.
            ENDIF.
          ENDIF.
          t33 = t39.
        ENDIF.
        IF t33 = abap_true.
          DATA t46 TYPE abap_bool.
          DATA t47 TYPE abap_bool.
          DATA t48 TYPE REF TO zif_lnt_statement.
          t48 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_call_screen ).
          t46 = t47.
          IF t47 = abap_false.
            DATA t51 TYPE REF TO zif_lnt_statement.
            t51 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t46 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_set_screen ).
          ENDIF.
          IF t46 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t54 TYPE string.
          DATA t56 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t56.
          CREATE OBJECT t56 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^0+| flags = ||.
          DATA(t60) = strlen( t27 ).
          t54 = t56->replace( p0 = t27 p1 = || ).
          DATA t62 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t64 TYPE REF TO zcl_lnt_position.
          t64 = t24->start.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          t70 = t24.
          DATA t73 TYPE f.
          t73 = t70->start->row.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t80 = t70->start->col.
          DATA t86 TYPE f.
          t86 = strlen( t70->str ).
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t86.
          t62 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t64 i_end = NEW zcl_lnt_position( i_row = t73 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t80 right = t91 op = `+` ) ) i_text = t54 ).
          DATA t94 TYPE REF TO zcl_lnt_issue.
          CLEAR t94.
          DATA(t98) = VALUE string( ).
          DATA t99 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t99.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t106.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t110.
          t110->load( ).
          APPEND |SingleFile| TO t110->items.
          t110->save( ).
          t110->load( ).
          APPEND |Quickfix| TO t110->items.
          t110->save( ).
          t106 = t110.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t122->has = abap_true.
          t122->value = |int = -001.|.
          t118 = t122.
          DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t124.
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = |int = -1.|.
          t124 = t128.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t99 = NEW zcl_lnt_irule_metadata( i_key = |omit_preceding_zeros| i_title = |Omit preceding zeros| i_short_description = |Omit preceding zeros from integer constants| i_bad_example = t118 i_good_example = t124 i_extended_information = t130 i_tags = t106 i_pragma = t132 i_pseudo_comment = t134 ).
          CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
          t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t136 ).
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t137 ).
          ENDIF.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t138 ).
          ENDIF.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t139 ).
          ENDIF.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t140 ).
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t141 ).
          ENDIF.
          CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
          t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t143 ).
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t145 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t147 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t149 ).
          ENDIF.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t151 ).
          ENDIF.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t153 ).
          ENDIF.
          t98 = t99->key.
          t94 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t24 i_message_26cb = t4 i_key = t98 i_severity = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t62 ).
          t2->load( ).
          APPEND t94 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
      t162 = t11->find_all_expressions( i_type_9913 = t164 ).
      DATA t165 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t165.
      DATA t166 TYPE REF TO object.
      CLEAR t166.
      DATA(t167) = VALUE i( ).
      DO.
        t162->load( ).
        IF t167 >= lines( t162->items ).
          EXIT.
        ENDIF.
        CLEAR t166.
        READ TABLE t162->items INDEX t167 + 1 INTO t166.
        t167 = t167 + 1.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        CLEAR t165.
        IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t168 ?= t166.
          DATA t169 TYPE REF TO object.
          t169 = t168->as_ref( ).
          t165 ?= t169.
        ELSE.
          t165 ?= t166.
        ENDIF.
        DATA t170 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t170.
        DATA t172 TYPE REF TO zcl_lnt_expression_node.
        DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
        t172 = t165->find_direct_expression( i_type_9913 = t175 ).
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t176.
        IF xsdbool( t172 IS INITIAL ) = abap_true.
          CLEAR t176.
        ELSE.
          t176 = t172->get_first_token( ).
        ENDIF.
        t170 = t176.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        DATA t185 TYPE REF TO zcl_lnt_abstract_token.
        t185 = t170.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        IF xsdbool( t185 IS INITIAL ) = abap_true.
          CLEAR t187.
        ELSE.
          DATA t195 TYPE string.
          t195 = t185->str.
          DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t197->has = abap_true.
          t197->value = t195.
          t187 = t197.
        ENDIF.
        t183 = t187.
        DATA(t198) = VALUE abap_bool( ).
        DATA(t199) = VALUE abap_bool( ).
        DATA t200 TYPE abap_bool.
        DATA t201 TYPE abap_bool.
        t201 = xsdbool( t170 IS BOUND ).
        t200 = t201.
        IF t201 = abap_true.
          DATA(t203) = VALUE abap_bool( ).
          IF t183 IS BOUND.
            IF t183->has = abap_true.
              t203 = xsdbool( strlen( t183->value ) > 0 ).
            ENDIF.
          ENDIF.
          t200 = t203.
        ENDIF.
        t199 = t200.
        IF t200 = abap_true.
          t199 = xsdbool( strlen( t183->value ) > 1 ).
        ENDIF.
        t198 = t199.
        IF t199 = abap_true.
          DATA(t211) = VALUE abap_bool( ).
          DATA t212 TYPE string.
          t212 = t183->value.
          DATA(t214) = |0|.
          DATA(t215) = strlen( t212 ).
          DATA t216 TYPE i.
          DATA(t217) = VALUE i( ).
          DATA(t218) = VALUE string( ).
          t216 = strlen( t214 ).
          IF t216 = 0.
            t211 = abap_true.
          ELSEIF t216 <= t215.
            t217 = 0.
            t218 = t212+t217(t216).
            IF t218 = t214.
              t211 = abap_true.
            ENDIF.
          ENDIF.
          t198 = t211.
        ENDIF.
        IF t198 = abap_true.
          DATA t220 TYPE string.
          DATA t221 TYPE string.
          t221 = t183->value.
          DATA t223 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t223.
          CREATE OBJECT t223 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^0+| flags = ||.
          DATA(t227) = strlen( t221 ).
          t220 = t223->replace( p0 = t221 p1 = || ).
          DATA t229 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t231 TYPE REF TO zcl_lnt_position.
          t231 = t170->start.
          DATA t238 TYPE REF TO zcl_lnt_abstract_token.
          t238 = t170.
          DATA t242 TYPE f.
          t242 = t238->start->row.
          DATA t249 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t249 = t238->start->col.
          DATA t255 TYPE f.
          t255 = strlen( t238->str ).
          DATA(t260) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t260->has = abap_true.
          t260->value = t255.
          t229 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t231 i_end = NEW zcl_lnt_position( i_row = t242 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t249 right = t260 op = `+` ) ) i_text = t220 ).
          DATA t263 TYPE REF TO zcl_lnt_issue.
          CLEAR t263.
          DATA t265 TYPE REF TO zcl_lnt_abstract_token.
          t265 = t170.
          DATA(t268) = VALUE string( ).
          DATA t269 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t269.
          DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t276.
          DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t280.
          t280->load( ).
          APPEND |SingleFile| TO t280->items.
          t280->save( ).
          t280->load( ).
          APPEND |Quickfix| TO t280->items.
          t280->save( ).
          t276 = t280.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t288.
          DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t292->has = abap_true.
          t292->value = |int = -001.|.
          t288 = t292.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t298->has = abap_true.
          t298->value = |int = -1.|.
          t294 = t298.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t302.
          DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t304.
          t269 = NEW zcl_lnt_irule_metadata( i_key = |omit_preceding_zeros| i_title = |Omit preceding zeros| i_short_description = |Omit preceding zeros from integer constants| i_bad_example = t288 i_good_example = t294 i_extended_information = t300 i_tags = t276 i_pragma = t302 i_pseudo_comment = t304 ).
          CREATE OBJECT t269->zlnt_view_ownkeys_b0e8086400eb.
          t269->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t306 ).
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t307.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t307 ).
          ENDIF.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t308 ).
          ENDIF.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t309.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t309 ).
          ENDIF.
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t310 ).
          ENDIF.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          IF t269->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t269->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t311 ).
          ENDIF.
          CREATE OBJECT t269->zlnt_json_ownkeys_70e5fd461788.
          t269->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t313 ).
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t315 ).
          ENDIF.
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t317 ).
          ENDIF.
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t319 ).
          ENDIF.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t321.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t321 ).
          ENDIF.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          IF t269->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t269->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t323 ).
          ENDIF.
          t268 = t269->key.
          t263 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t265 i_message_26cb = t4 i_key = t268 i_severity = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t229 ).
          t2->load( ).
          APPEND t263 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_omt_prcdng_zrs_cnf( me->g_c_i_s_r_om_pr_zr_ts_om_pr_zr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_omt_prcdng_zrs_cnf.
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
        t1 = NEW zcl_lnt_omt_prcdng_zrs_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_om_pr_zr_ts_om_pr_zr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_om_pr_zr_ts_om_pr_zr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1637_da3b12514065.
  ENDMETHOD.
ENDCLASS.
