* TS: src/rules/empty_line_in_statement.ts:16:1 EmptyLineinStatement
CLASS zcl_lnt_empty_linein_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_e_l_i_st_ts_em_ln_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
    METHODS s_c_i_s_r_e_l_i_st_ts_em_ln_st IMPORTING i_conf TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
    METHODS r_p_i_s_r_e_l_i_st_ts_em_ln_st IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_linein_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_empty_lnn_sttmnt_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |empty_line_in_statement|.
    DATA t4 TYPE string.
    t4 = |Find empty lines in statements|.
    DATA t6 TYPE string.
    t6 = |Checks that statements do not contain empty lines.|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#dont-obsess-with-separating-blank-lines\n\nhttps://do|.
    t11 = t11 && |cs.abapopenchecks.org/checks/41/|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Quickfix|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Whitespace|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |SingleFile|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    DATA(t27) = |Styleguide|.
    t18->load( ).
    APPEND t27 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |WRITE\n\nhello.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = |WRITE hello.|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    t36 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Remove empty line in statement|.

  ENDMETHOD.

  METHOD g_c_i_s_r_e_l_i_st_ts_em_ln_st.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_e_l_i_st_ts_em_ln_st.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_e_l_i_st_ts_em_ln_st.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t8 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t1->statements.
    t18 = t21.
    DATA t23 TYPE REF TO zcl_lnt_statement_node.
    DATA t24 TYPE REF TO object.
    DATA(t25) = VALUE i( ).
    DO.
      t18->load( ).
      IF t25 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t18->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE REF TO zif_lnt_statement.
      t30 = t23->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_unknown ).
      t28 = t29.
      IF t29 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE REF TO zif_lnt_statement.
        t33 = t23->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_native_sql ).
        t28 = t32.
      ENDIF.
      IF t28 = abap_true.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t35.
        result = t35.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t38 = t1->get_tokens( i_with_pragmas = t40 ).
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    DATA t42 TYPE REF TO object.
    DATA(t43) = VALUE i( ).
    DO.
      t38->load( ).
      IF t43 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t42.
      READ TABLE t38->items INDEX t43 + 1 INTO t42.
      t43 = t43 + 1.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t41.
      IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t44 ?= t42.
        DATA t45 TYPE REF TO object.
        t45 = t44->as_ref( ).
        t41 ?= t45.
      ELSE.
        t41 ?= t42.
      ENDIF.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t48 = t36.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      DATA(t52) = VALUE abap_bool( ).
      IF t48 IS INITIAL.
        t52 = abap_true.
      ELSEIF t48->has = abap_false.
        t52 = abap_true.
      ENDIF.
      t47 = t52.
      t46 = t47.
      IF t47 = abap_true.
        DATA t54 TYPE abap_bool.
        t54 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_lx_comment ).
        t46 = t54.
      ENDIF.
      IF t46 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t56) = VALUE abap_bool( ).
        DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t57 = t36.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        DATA(t61) = VALUE abap_bool( ).
        IF t57 IS INITIAL.
          t61 = abap_true.
        ELSEIF t57->has = abap_false.
          t61 = abap_true.
        ENDIF.
        t56 = t61.
        IF t56 = abap_true.
          DATA t70 TYPE REF TO zcl_lnt_position.
          t70 = t41->start.
          DATA t72 TYPE f.
          t72 = t70->row.
          DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t74->has = abap_true.
          t74->value = t72.
          t36 = t74.
        ENDIF.
      ENDIF.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t36.
      IF t78 IS BOUND.
        IF t78->has = abap_true.
          IF t78->number_special <> 0.
            t77 = xsdbool( t78->number_special <> 1 ).
          ELSE.
            t77 = xsdbool( t78->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
      ENDIF.
      t76 = t77.
      IF t77 = abap_true.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = VALUE f( ).
        DATA t81 TYPE f.
        DATA t86 TYPE REF TO zcl_lnt_position.
        t86 = t41->start.
        DATA t88 TYPE f.
        t88 = t86->row.
        t81 = t88.
        DATA(t90) = VALUE f( ).
        DATA(t91) = t36.
        IF t91->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t90 = t91->value.
        t80 = t81 - t90.
        DATA(t92) = CONV f( 2 ).
        t79 = xsdbool( t80 >= t92 ).
        t76 = t79.
      ENDIF.
      IF t76 = abap_true.
        DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t94.
        DATA t96 TYPE REF TO zcl_lnt_position.
        CLEAR t96.
        DATA(t97) = VALUE f( ).
        DATA(t98) = VALUE f( ).
        DATA(t99) = t36.
        IF t99->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t98 = t99->value.
        DATA(t100) = CONV f( 1 ).
        t97 = t98 + t100.
        DATA(t101) = CONV f( 1 ).
        DATA(t102) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t102->has = abap_true.
        t102->value = t101.
        t96 = NEW zcl_lnt_position( i_row = t97 i_col = t102 ).
        DATA t103 TYPE REF TO zcl_lnt_position.
        DATA t106 TYPE REF TO zcl_lnt_position.
        t106 = t41->start.
        t103 = t106.
        t94 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t96 i_end = t103 ).
        DATA t109 TYPE REF TO zcl_lnt_issue.
        CLEAR t109.
        DATA(t112) = |Remove empty line in statement|.
        DATA(t113) = VALUE string( ).
        DATA t114 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t114.
        DATA t115 TYPE string.
        t115 = |empty_line_in_statement|.
        DATA t117 TYPE string.
        t117 = |Find empty lines in statements|.
        DATA t119 TYPE string.
        t119 = |Checks that statements do not contain empty lines.|.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA(t124) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t124 = t124 && |nABAP.md#dont-obsess-with-separating-blank-lines\n\nhttps://do|.
        t124 = t124 && |cs.abapopenchecks.org/checks/41/|.
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t124.
        t121 = t125.
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t127.
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t132.
        t131 = t132.
        DATA(t134) = |Quickfix|.
        t131->load( ).
        APPEND t134 TO t131->items.
        t131->save( ).
        DATA(t136) = |Whitespace|.
        t131->load( ).
        APPEND t136 TO t131->items.
        t131->save( ).
        DATA(t138) = |SingleFile|.
        t131->load( ).
        APPEND t138 TO t131->items.
        t131->save( ).
        DATA(t140) = |Styleguide|.
        t131->load( ).
        APPEND t140 TO t131->items.
        t131->save( ).
        t127 = t131.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA(t146) = |WRITE\n\nhello.|.
        DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t147->has = abap_true.
        t147->value = t146.
        t143 = t147.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA(t152) = |WRITE hello.|.
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t152.
        t149 = t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        t114 = NEW zcl_lnt_irule_metadata( i_key = t115 i_title = t117 i_short_description = t119 i_bad_example = t143 i_good_example = t149 i_extended_information = t121 i_tags = t127 i_pragma = t155 i_pseudo_comment = t157 ).
        CREATE OBJECT t114->zlnt_view_ownkeys_b0e8086400eb.
        t114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t165 ).
        ENDIF.
        CREATE OBJECT t114->zlnt_json_ownkeys_70e5fd461788.
        t114->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t166) = |key|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        DATA(t168) = |title|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        DATA(t170) = |shortDescription|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |extendedInformation|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |tags|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        DATA(t176) = |badExample|.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
        ENDIF.
        DATA(t178) = |goodExample|.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
        ENDIF.
        t113 = t114->key.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t180 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t182 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t182.
        t182 = t94.
        t109 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t41 i_message_26cb = t112 i_key = t113 i_severity = t180 i_fix = t182 ).
        t2->load( ).
        APPEND t109 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t188 TYPE abap_bool.
      DATA t189 TYPE abap_bool.
      t189 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_punctuation ).
      t188 = t189.
      IF t189 = abap_true.
        DATA t191 TYPE abap_bool.
        DATA t192 TYPE string.
        DATA t193 TYPE REF TO zcl_lnt_abstract_token.
        DATA t194 TYPE REF TO zcl_lnt_punctuation.
        t194 ?= t41.
        t193 = t194.
        DATA t196 TYPE string.
        t196 = t193->str.
        t192 = t196.
        DATA(t198) = |.|.
        t191 = xsdbool( t192 = t198 ).
        t188 = t191.
      ENDIF.
      IF t188 = abap_true.
        CLEAR t36.
      ELSE.
        DATA(t200) = VALUE abap_bool( ).
        DATA t201 TYPE abap_bool.
        DATA t202 TYPE abap_bool.
        DATA t203 TYPE abap_bool.
        t203 = me->conf->zlnt_view_read_sr_59fc08e254c6( ).
        t202 = xsdbool( t203 = abap_true ).
        t201 = t202.
        IF t202 = abap_true.
          DATA t206 TYPE abap_bool.
          t206 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_punctuation ).
          t201 = t206.
        ENDIF.
        t200 = t201.
        IF t201 = abap_true.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE string.
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          DATA t211 TYPE REF TO zcl_lnt_punctuation.
          t211 ?= t41.
          t210 = t211.
          DATA t213 TYPE string.
          t213 = t210->str.
          t209 = t213.
          DATA(t215) = |,|.
          t208 = xsdbool( t209 = t215 ).
          t200 = t208.
        ENDIF.
        IF t200 = abap_true.
          CLEAR t36.
        ELSE.
          DATA t224 TYPE REF TO zcl_lnt_position.
          t224 = t41->start.
          DATA t226 TYPE f.
          t226 = t224->row.
          DATA(t228) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t228->has = abap_true.
          t228->value = t226.
          t36 = t228.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_empty_lnn_sttmnt_cnf( me->g_c_i_s_r_e_l_i_st_ts_em_ln_st( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_empty_lnn_sttmnt_cnf( me->g_c_i_s_r_e_l_i_st_ts_em_ln_st( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
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
        t1 = NEW zcl_lnt_empty_lnn_sttmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_e_l_i_st_ts_em_ln_st( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_e_l_i_st_ts_em_ln_st( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1492_e57f10806755.
  ENDMETHOD.
ENDCLASS.
