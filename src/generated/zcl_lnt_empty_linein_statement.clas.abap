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
    DATA(t1) = NEW zcl_lnt_empty_lnn_sttmnt_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |empty_line_in_statement|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Find empty lines in statements|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that statements do not contain empty lines.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#dont-obsess-with-separating-blank-lines\n\nhttps://do|.
      t11 = t11 && |cs.abapopenchecks.org/checks/41/|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Quickfix|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Whitespace|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |SingleFile|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |Styleguide|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |WRITE\n\nhello.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |WRITE hello.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Remove empty line in statement|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_e_l_i_st_ts_em_ln_st.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_e_l_i_st_ts_em_ln_st.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_e_l_i_st_ts_em_ln_st.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t1.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t19.
    t21 = t22->statements.
    t18 = t21.
    DATA t23 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
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
      DATA(t31) = t23.
      t30 = t31->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_unknown ).
      t28 = t29.
      IF t29 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE REF TO zif_lnt_statement.
        DATA(t34) = t23.
        t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t39) = t1.
    DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t40.
    t38 = t39->get_tokens( i_with_pragmas = t40 ).
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
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
      DATA(t49) = t36.
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      t50 = t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t48.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ELSEIF t53->has = abap_false.
        t52 = abap_true.
      ENDIF.
      t47 = t52.
      t46 = t47.
      IF t47 = abap_true.
        DATA t54 TYPE abap_bool.
        DATA(t55) = t41.
        t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_lx_comment ).
        t46 = t54.
      ENDIF.
      IF t46 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t56) = VALUE abap_bool( ).
        DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t58) = t36.
        t57 = t58.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        t59 = t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t57.
        IF t62 IS INITIAL.
          t61 = abap_true.
        ELSEIF t62->has = abap_false.
          t61 = abap_true.
        ENDIF.
        t56 = t61.
        IF t56 = abap_true.
          DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t63.
          DATA(t64) = abap_true.
          IF t64 = abap_true.
            DATA t65 TYPE f.
            DATA t66 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t67) = t41.
            t66 = t67.
            DATA t68 TYPE f.
            DATA t69 TYPE REF TO zcl_lnt_position.
            DATA t70 TYPE REF TO zcl_lnt_position.
            DATA(t71) = t66.
            t70 = t71->start.
            t69 = t70.
            DATA t72 TYPE f.
            DATA(t73) = t69.
            t72 = t73->row.
            t68 = t72.
            t65 = t68.
            DATA(t74) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t74->has = abap_true.
            t74->value = t65.
            t63 = t74.
          ELSE.
            DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t75.
            t63 = t75.
          ENDIF.
          t36 = t63.
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
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t83) = t41.
        t82 = t83.
        DATA t84 TYPE f.
        DATA t85 TYPE REF TO zcl_lnt_position.
        DATA t86 TYPE REF TO zcl_lnt_position.
        DATA(t87) = t82.
        t86 = t87->start.
        t85 = t86.
        DATA t88 TYPE f.
        DATA(t89) = t85.
        t88 = t89->row.
        t84 = t88.
        t81 = t84.
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
        DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t93.
        DATA t94 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t94.
        DATA(t95) = t1.
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
        DATA t104 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t105) = t41.
        t104 = t105.
        DATA t106 TYPE REF TO zcl_lnt_position.
        DATA(t107) = t104.
        t106 = t107->start.
        t103 = t106.
        t94 = zcl_lnt_edit_helper=>delete_range( i_file = t95 i_start = t96 i_end = t103 ).
        t93 = t94.
        DATA t108 TYPE REF TO zcl_lnt_issue.
        CLEAR t108.
        DATA t109 TYPE REF TO zcl_lnt_issue.
        CLEAR t109.
        DATA(t110) = t1.
        DATA(t111) = t41.
        DATA(t112) = |Remove empty line in statement|.
        DATA(t113) = VALUE string( ).
        DATA t114 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t114.
        DATA t115 TYPE string.
        DATA(t116) = |empty_line_in_statement|.
        t115 = t116.
        DATA t117 TYPE string.
        DATA(t118) = |Find empty lines in statements|.
        t117 = t118.
        DATA t119 TYPE string.
        DATA(t120) = |Checks that statements do not contain empty lines.|.
        t119 = t120.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA(t123) = abap_true.
        IF t123 = abap_true.
          DATA(t124) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t124 = t124 && |nABAP.md#dont-obsess-with-separating-blank-lines\n\nhttps://do|.
          t124 = t124 && |cs.abapopenchecks.org/checks/41/|.
          DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t125->has = abap_true.
          t125->value = t124.
          t122 = t125.
        ELSE.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          t122 = t126.
        ENDIF.
        t121 = t122.
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t127.
        DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t132.
          t131 = t132.
          DATA(t133) = t131.
          DATA(t134) = |Quickfix|.
          t133->load( ).
          APPEND t134 TO t133->items.
          t133->save( ).
          DATA(t135) = t131.
          DATA(t136) = |Whitespace|.
          t135->load( ).
          APPEND t136 TO t135->items.
          t135->save( ).
          DATA(t137) = t131.
          DATA(t138) = |SingleFile|.
          t137->load( ).
          APPEND t138 TO t137->items.
          t137->save( ).
          DATA(t139) = t131.
          DATA(t140) = |Styleguide|.
          t139->load( ).
          APPEND t140 TO t139->items.
          t139->save( ).
          DATA(t141) = t131.
          t130 = t141.
          t128 = t130.
        ELSE.
          DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t142.
          t128 = t142.
        ENDIF.
        t127 = t128.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        DATA(t145) = abap_true.
        IF t145 = abap_true.
          DATA(t146) = |WRITE\n\nhello.|.
          DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t147->has = abap_true.
          t147->value = t146.
          t144 = t147.
        ELSE.
          DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t148.
          t144 = t148.
        ENDIF.
        t143 = t144.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA(t151) = abap_true.
        IF t151 = abap_true.
          DATA(t152) = |WRITE hello.|.
          DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t153->has = abap_true.
          t153->value = t152.
          t150 = t153.
        ELSE.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          t150 = t154.
        ENDIF.
        t149 = t150.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t157 = t158.
        t114 = NEW zcl_lnt_irule_metadata( i_key = t115 i_title = t117 i_short_description = t119 i_bad_example = t143 i_good_example = t149 i_extended_information = t121 i_tags = t127 i_pragma = t155 i_pseudo_comment = t157 ).
        CREATE OBJECT t114->zlnt_view_ownkeys_b0e8086400eb.
        t114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
        ENDIF.
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
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
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
        DATA(t181) = me->conf.
        t180 = t181->zlnt_view_read_sr_15c06369f827( ).
        DATA t182 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t182.
        DATA(t183) = abap_true.
        IF t183 = abap_true.
          DATA(t184) = t93.
          t182 = t184.
        ELSE.
          DATA t185 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t185.
          t182 = t185.
        ENDIF.
        t109 = zcl_lnt_issue=>at_token( i_file = t110 i_token = t111 i_message_26cb = t112 i_key = t113 i_severity = t180 i_fix = t182 ).
        t108 = t109.
        DATA(t186) = t2.
        DATA(t187) = t108.
        t186->load( ).
        APPEND t187 TO t186->items.
        t186->save( ).
      ENDIF.
      DATA t188 TYPE abap_bool.
      DATA t189 TYPE abap_bool.
      DATA(t190) = t41.
      t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_punctuation ).
      t188 = t189.
      IF t189 = abap_true.
        DATA t191 TYPE abap_bool.
        DATA t192 TYPE string.
        DATA t193 TYPE REF TO zcl_lnt_abstract_token.
        DATA t194 TYPE REF TO zcl_lnt_punctuation.
        DATA(t195) = t41.
        t194 ?= t195.
        t193 = t194.
        DATA t196 TYPE string.
        DATA(t197) = t193.
        t196 = t197->str.
        t192 = t196.
        DATA(t198) = |.|.
        t191 = xsdbool( t192 = t198 ).
        t188 = t191.
      ENDIF.
      IF t188 = abap_true.
        DATA t199 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t199.
        t36 = t199.
      ELSE.
        DATA(t200) = VALUE abap_bool( ).
        DATA t201 TYPE abap_bool.
        DATA t202 TYPE abap_bool.
        DATA t203 TYPE abap_bool.
        DATA(t204) = me->conf.
        t203 = t204->zlnt_view_read_sr_59fc08e254c6( ).
        DATA(t205) = abap_true.
        t202 = xsdbool( t203 = t205 ).
        t201 = t202.
        IF t202 = abap_true.
          DATA t206 TYPE abap_bool.
          DATA(t207) = t41.
          t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_punctuation ).
          t201 = t206.
        ENDIF.
        t200 = t201.
        IF t201 = abap_true.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE string.
          DATA t210 TYPE REF TO zcl_lnt_abstract_token.
          DATA t211 TYPE REF TO zcl_lnt_punctuation.
          DATA(t212) = t41.
          t211 ?= t212.
          t210 = t211.
          DATA t213 TYPE string.
          DATA(t214) = t210.
          t213 = t214->str.
          t209 = t213.
          DATA(t215) = |,|.
          t208 = xsdbool( t209 = t215 ).
          t200 = t208.
        ENDIF.
        IF t200 = abap_true.
          DATA t216 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t216.
          t36 = t216.
        ELSE.
          DATA t217 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t217.
          DATA(t218) = abap_true.
          IF t218 = abap_true.
            DATA t219 TYPE f.
            DATA t220 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t221) = t41.
            t220 = t221.
            DATA t222 TYPE f.
            DATA t223 TYPE REF TO zcl_lnt_position.
            DATA t224 TYPE REF TO zcl_lnt_position.
            DATA(t225) = t220.
            t224 = t225->start.
            t223 = t224.
            DATA t226 TYPE f.
            DATA(t227) = t223.
            t226 = t227->row.
            t222 = t226.
            t219 = t222.
            DATA(t228) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t228->has = abap_true.
            t228->value = t219.
            t217 = t228.
          ELSE.
            DATA t229 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t229.
            t217 = t229.
          ENDIF.
          t36 = t217.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t230) = t2.
    result = t230.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_empty_lnn_sttmnt_cnf( me->g_c_i_s_r_e_l_i_st_ts_em_ln_st( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_empty_lnn_sttmnt_cnf( me->g_c_i_s_r_e_l_i_st_ts_em_ln_st( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_lnn_sttmnt_cnf.
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
        t1 = NEW zcl_lnt_empty_lnn_sttmnt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_e_l_i_st_ts_em_ln_st( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_e_l_i_st_ts_em_ln_st( i_file = i_file ) ).
    result = t1.

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
